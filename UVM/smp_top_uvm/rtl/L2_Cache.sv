`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name :        L2_Cache
// Description :  1MB 8-way set-associative unified L2 Cache (storage module)
//                2048 sets  8 ways  64B lines = 1MB
//                Single-port BRAM per way, 1-cycle BRAM read latency (pipelined)
//
// Geometry (default):
//   - Line size  : 64B  (512-bit)
//   - Ways       : 8
//   - Sets       : 2048 (SET_BITS_LEN=11)
//   - Capacity   : 2048 * 8 * 64B = 1MB
//
// OPTIMIZATION NOTES:
//   - Metadata arrays (tag/valid/MESI/dirty) use ASYNC reset or rely on
//     power-on state (valid=0) to avoid massive reset fanout.
//   - Use an initialization counter for controlled reset if needed.
//////////////////////////////////////////////////////////////////////////////////

`define TAG_BITS         31:17
`define SET_BITS         16:6
`define BYTE_OFFSET_BITS 5:0

module L2_Cache #(
    parameter int ADDR_WIDTH           = 32,
    parameter int TAG_BITS_LEN         = 15,  // 32 - 11(set) - 6(offset) = 15
    parameter int SET_BITS_LEN         = 11,  // 2048 sets
    parameter int BYTE_OFFSET_BITS_LEN = 6,   // 64B lines
    parameter int NO_OF_WAYS           = 8,
    parameter int CORE_DATA_WIDTH      = 64,
    parameter int BYTE_SIZE            = 8,
    parameter int BRAM_WE_WIDTH        = 64   // 1 bit per byte in 64B line
)(
    input  logic                       clk,
    input  logic                       rst_n,

    // ---------------------------
    // Lookup interface
    // ---------------------------
    input  logic                       l2_lookup_en,
    input  logic [ADDR_WIDTH-1:0]      l2_lookup_addr,
    input  logic                       l2_lookup_is_store,
    output logic                       l2_lookup_stall,

    // ---------------------------
    // Store (sub-line write) interface
    // ---------------------------
    input  logic                       l2_store_en,
    input  logic [CORE_DATA_WIDTH-1:0] l2_store_wdata,
    input  logic [7:0]                 l2_store_wstrb,

    // ---------------------------
    // Fill (whole line write) interface
    // ---------------------------
    input  logic                       l2_fill_en,
    input  logic [ADDR_WIDTH-1:0]      l2_fill_addr,
    input  logic [2:0]                 l2_fill_way,
    input  logic [511:0]               l2_fill_line,
    input  logic [1:0]                 l2_fill_mesi,

    // ---------------------------
    // MESI state update interface
    // ---------------------------
    input  logic                       l2_set_state_en,
    input  logic [ADDR_WIDTH-1:0]      l2_set_state_addr,
    input  logic [2:0]                 l2_set_state_way,
    input  logic [1:0]                 l2_set_state_val,

    // ---------------------------
    // Full line read interface (by address tag+set)
    // ---------------------------
    input  logic                       l2_line_rd_en,
    input  logic [ADDR_WIDTH-1:0]      l2_line_rd_addr,
    output logic [511:0]               l2_line_rd_data,
    output logic                       l2_line_rd_valid,

    // ---------------------------
    // Victim metadata peek interface (by set+way)
    // ---------------------------
    input  logic                       l2_vmeta_en,
    input  logic [SET_BITS_LEN-1:0]    l2_vmeta_set,
    input  logic [2:0]                 l2_vmeta_way,
    output logic                       l2_vmeta_valid,
    output logic [TAG_BITS_LEN-1:0]    l2_vmeta_tag,
    output logic                       l2_vmeta_line_valid,
    output logic [1:0]                 l2_vmeta_mesi,
    output logic                       l2_vmeta_dirty,

    // ---------------------------
    // Victim line read interface (by set+way)
    // ---------------------------
    input  logic                       l2_vline_rd_en,
    input  logic [SET_BITS_LEN-1:0]    l2_vline_rd_set,
    input  logic [2:0]                 l2_vline_rd_way,
    output logic                       l2_vline_rd_valid,
    output logic [511:0]               l2_vline_rd_data,
    output logic [TAG_BITS_LEN-1:0]    l2_vline_rd_tag,
    output logic                       l2_vline_rd_entry_valid,
    output logic [1:0]                 l2_vline_rd_mesi,
    output logic                       l2_vline_rd_dirty,

    // ---------------------------
    // Lookup outputs
    // ---------------------------
    output logic [CORE_DATA_WIDTH-1:0] l2_rdata,
    output logic                       l2_hit,
    output logic                       l2_rvalid,
    output logic [2:0]                 l2_hit_way,
    output logic [1:0]                 l2_mesi_state,
    output logic                       l2_dirty,
    output logic                       l2_lookup_valid
);

    // ------------------------------------------------------------
    // Local parameters
    // ------------------------------------------------------------
    localparam int LINE_BYTES = 1 << BYTE_OFFSET_BITS_LEN; // 64
    localparam int LINE_BITS  = BYTE_SIZE * LINE_BYTES;    // 512
    localparam int NUM_SETS   = 1 << SET_BITS_LEN;         // 2048

    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;

    // ------------------------------------------------------------
    // Address fields using macros
    // ------------------------------------------------------------
    wire [TAG_BITS_LEN-1:0]         lookup_tag    = l2_lookup_addr[`TAG_BITS];
    wire [SET_BITS_LEN-1:0]         lookup_set    = l2_lookup_addr[`SET_BITS];
    wire [BYTE_OFFSET_BITS_LEN-1:0] lookup_offset = l2_lookup_addr[`BYTE_OFFSET_BITS];
    wire [2:0]                      lookup_word   = lookup_offset[5:3]; // 864b words/line

    wire [TAG_BITS_LEN-1:0] line_rd_tag = l2_line_rd_addr[`TAG_BITS];
    wire [SET_BITS_LEN-1:0] line_rd_set = l2_line_rd_addr[`SET_BITS];

    // ------------------------------------------------------------
    // Pipeline registers (1-cycle read latency)
    // ------------------------------------------------------------
    logic [TAG_BITS_LEN-1:0] tag_r;
    logic [SET_BITS_LEN-1:0] set_index_r;
    logic [2:0]              word_index_r;
    logic                    op_en_r;
    logic                    op_is_line_r;
    logic                    op_is_vline_r;
    logic                    op_was_store_r;
    logic                    l2_store_en_r;
    logic                    vline_fire_r;
    logic [2:0]              vline_way_r;
    logic [SET_BITS_LEN-1:0] vline_set_r;

    // Store context locking (same concept as your L1_Dcache)
    logic                    last_hit_locked;
    logic                    last_hit_valid;
    logic [SET_BITS_LEN-1:0] last_hit_set;
    logic [2:0]              last_hit_way;
    logic [2:0]              last_hit_word;

    // Stall lookups that are stores while a prior store hit is waiting to commit
    assign l2_lookup_stall = last_hit_locked & l2_lookup_is_store;

    // ------------------------------------------------------------
    // Operation firing logic (single-port: read conflicts with fill/store/vline)
    // ------------------------------------------------------------
    wire lookup_fire = 
        l2_lookup_en & 
        ~l2_fill_en & ~l2_store_en & ~l2_vline_rd_en &
        ~(last_hit_locked & l2_lookup_is_store);

    wire line_rd_fire  = l2_line_rd_en & ~l2_fill_en & ~l2_store_en & ~l2_vline_rd_en;
    wire vline_rd_fire = l2_vline_rd_en & ~l2_fill_en & ~l2_store_en;
    wire read_op_fire  = lookup_fire | line_rd_fire | vline_rd_fire;

    // Register vline valid for output timing
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            vline_fire_r  <= 1'b0;
            l2_store_en_r <= 1'b0;
        end else begin
            vline_fire_r  <= vline_rd_fire;
            l2_store_en_r <= l2_store_en;
        end
    end

    // Pipeline stage capture
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tag_r          <= '0;
            set_index_r    <= '0;
            word_index_r   <= '0;
            op_en_r        <= 1'b0;
            op_is_line_r   <= 1'b0;
            op_is_vline_r  <= 1'b0;
            op_was_store_r <= 1'b0;
            vline_way_r    <= '0;
            vline_set_r    <= '0;
        end else begin
            if (read_op_fire) begin
                if (vline_rd_fire) begin
                    tag_r           <= '0;
                    set_index_r     <= l2_vline_rd_set;
                    word_index_r    <= '0;
                    op_en_r         <= 1'b1;
                    op_is_line_r    <= 1'b0;
                    op_is_vline_r   <= 1'b1;
                    op_was_store_r  <= 1'b0;
                    vline_way_r     <= l2_vline_rd_way;
                    vline_set_r     <= l2_vline_rd_set;
                end else if (line_rd_fire) begin
                    tag_r           <= line_rd_tag;
                    set_index_r     <= line_rd_set;
                    word_index_r    <= '0;
                    op_en_r         <= 1'b1;
                    op_is_line_r    <= 1'b1;
                    op_is_vline_r   <= 1'b0;
                    op_was_store_r  <= 1'b0;
                    vline_way_r     <= '0;
                    vline_set_r     <= '0;
                end else begin
                    tag_r           <= lookup_tag;
                    set_index_r     <= lookup_set;
                    word_index_r    <= lookup_word;
                    op_en_r         <= 1'b1;
                    op_is_line_r    <= 1'b0;
                    op_is_vline_r   <= 1'b0;
                    op_was_store_r  <= l2_lookup_is_store;
                    vline_way_r     <= '0;
                    vline_set_r     <= '0;
                end
            end else begin
                op_en_r        <= 1'b0;
                op_is_line_r   <= 1'b0;
                op_is_vline_r  <= 1'b0;
                op_was_store_r <= 1'b0;
            end
        end
    end

    // ------------------------------------------------------------
    // TAG + VALID + MESI + DIRTY ARRAYS (NO RESET to speed synthesis)
    // Valid bits default to 0, which means all entries are invalid on power-up
    // ------------------------------------------------------------
    (* ram_style = "distributed" *) logic [TAG_BITS_LEN-1:0] tag_array   [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    (* ram_style = "distributed" *) logic                    valid_array [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    (* ram_style = "distributed" *) logic [1:0]              mesi_array  [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    (* ram_style = "distributed" *) logic                    dirty_array [0:NUM_SETS-1][0:NO_OF_WAYS-1];


initial begin
    for (int s = 0; s < NUM_SETS; s++) begin
        for (int w = 0; w < NO_OF_WAYS; w++) begin
            valid_array[s][w] = 1'b0;      // All invalid on startup
            dirty_array[s][w] = 1'b0;      // All clean
            mesi_array[s][w]  = MESI_I;    // All Invalid
            tag_array[s][w]   = '0;        // Don't care, but clear anyway
        end
    end
end
    // BRAM outputs (one per way)
    logic [LINE_BITS-1:0] way_data [0:NO_OF_WAYS-1];

    // BRAM control signals
    logic [SET_BITS_LEN-1:0]  bram_addr;
    logic                     bram_en  [0:NO_OF_WAYS-1];
    logic [BRAM_WE_WIDTH-1:0] bram_wea [0:NO_OF_WAYS-1];
    logic [LINE_BITS-1:0]     bram_din;

    // ------------------------------------------------------------
    // Victim Metadata Peek (1-cycle latency, registered)
    // ------------------------------------------------------------
    logic                    vmeta_en_r;
    logic [SET_BITS_LEN-1:0] vmeta_set_r;
    logic [2:0]              vmeta_way_r;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            vmeta_en_r  <= 1'b0;
            vmeta_set_r <= '0;
            vmeta_way_r <= '0;
        end else begin
            vmeta_en_r  <= l2_vmeta_en;
            vmeta_set_r <= l2_vmeta_set;
            vmeta_way_r <= l2_vmeta_way;
        end
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            l2_vmeta_valid      <= 1'b0;
            l2_vmeta_tag        <= '0;
            l2_vmeta_line_valid <= 1'b0;
            l2_vmeta_mesi       <= MESI_I;
            l2_vmeta_dirty      <= 1'b0;
        end else begin
            l2_vmeta_valid <= vmeta_en_r;
            if (vmeta_en_r) begin
                l2_vmeta_tag        <= tag_array[vmeta_set_r][vmeta_way_r];
                l2_vmeta_line_valid <= valid_array[vmeta_set_r][vmeta_way_r];
                l2_vmeta_mesi       <= mesi_array[vmeta_set_r][vmeta_way_r];
                l2_vmeta_dirty      <= dirty_array[vmeta_set_r][vmeta_way_r];
            end
        end
    end

    // Victim line metadata (combinational from arrays, aligned with vline pipe)
    assign l2_vline_rd_tag         = (op_is_vline_r) ? tag_array[set_index_r][vline_way_r]   : '0;
    assign l2_vline_rd_entry_valid = (op_is_vline_r) ? valid_array[set_index_r][vline_way_r] : 1'b0;
    assign l2_vline_rd_mesi        = (op_is_vline_r) ? mesi_array[set_index_r][vline_way_r]  : MESI_I;
    assign l2_vline_rd_dirty       = (op_is_vline_r) ? dirty_array[set_index_r][vline_way_r] : 1'b0;

    // ------------------------------------------------------------
    // Store context locking 
    // ------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            last_hit_valid  <= 1'b0;
            last_hit_locked <= 1'b0;
            last_hit_set    <= '0;
            last_hit_way    <= '0;
            last_hit_word   <= '0;
        end else begin
            // UNLOCK: when store actually fires
            if (l2_store_en_r && last_hit_valid) begin
                last_hit_locked <= 1'b0;
                last_hit_valid  <= 1'b0;
            end
            // LOCK: store-hit lookup
            else if (op_en_r && l2_hit && !op_is_line_r && !op_is_vline_r &&
                     op_was_store_r && !last_hit_locked) begin
                last_hit_valid  <= 1'b1;
                last_hit_set    <= set_index_r;
                last_hit_way    <= l2_hit_way;
                last_hit_word   <= word_index_r;
                last_hit_locked <= 1'b1;
            end
        end
    end

    // ------------------------------------------------------------
    // Store write mask / data placement (64-bit subline into 512-bit line)
    // ------------------------------------------------------------
    logic [BRAM_WE_WIDTH-1:0] store_we_mask;
    logic [LINE_BITS-1:0]     store_din;

    always_comb begin
        int lane_base;  // Moved inside always_comb
        store_we_mask = '0;
        store_din     = '0;

        if (l2_store_en && last_hit_valid) begin
            lane_base = last_hit_word * 8; // byte lanes
            store_din[(last_hit_word*CORE_DATA_WIDTH) +: CORE_DATA_WIDTH] = l2_store_wdata;
            for (int b = 0; b < 8; b++) begin
                store_we_mask[lane_base + b] = l2_store_wstrb[b];
            end
        end
    end

    // ------------------------------------------------------------
    // BRAM port muxing (single-port per way)
    // Priority: fill > store > vline_rd > lookup/line_rd
    // ------------------------------------------------------------
    always_comb begin
        bram_addr = lookup_set;
        bram_din  = '0;

        for (int w = 0; w < NO_OF_WAYS; w++) begin
            bram_en[w]  = 1'b0;
            bram_wea[w] = '0;
        end

        if (l2_fill_en) begin
            bram_addr = l2_fill_addr[`SET_BITS];
            bram_din  = l2_fill_line;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = (l2_fill_way == w[2:0]);
                bram_wea[w] = (l2_fill_way == w[2:0]) ? {BRAM_WE_WIDTH{1'b1}} : '0;
            end
        end else if (l2_store_en && last_hit_valid) begin
            bram_addr = last_hit_set;
            bram_din  = store_din;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = (last_hit_way == w[2:0]);
                bram_wea[w] = (last_hit_way == w[2:0]) ? store_we_mask : '0;
            end
        end else if (vline_rd_fire) begin
            bram_addr = l2_vline_rd_set;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = (l2_vline_rd_way == w[2:0]);
                bram_wea[w] = '0;
            end
        end else if (lookup_fire || line_rd_fire) begin
            bram_addr = line_rd_fire ? line_rd_set : lookup_set;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = 1'b1;
                bram_wea[w] = '0;
            end
        end
    end

    // ------------------------------------------------------------
    // BRAM instantiation per way (same style as L1_Dcache)
    // IMPORTANT: Your blk_mem_gen_1 must be configured for:
    //   - Write width: 512
    //   - Read width : 512
    //   - Depth      : 2048 (11-bit address)
    //   - Byte write enable: 64 bits (one per byte)
    // ------------------------------------------------------------
    genvar gw;
    generate
        for (gw = 0; gw < NO_OF_WAYS; gw++) begin : WAY_BRAM
            (* dont_touch = "true" *) blk_mem_gen_1 u_bram_way2 (
                .clka  (clk),
                .ena   (bram_en[gw]),
                .wea   (bram_wea[gw]),
                .addra (bram_addr),
                .dina  (bram_din),
                .douta (way_data[gw])
            );
        end
    endgenerate

    // ------------------------------------------------------------
    // Metadata updates (WRITE-ONLY, no reset)
    // FPGA power-on state ensures valid bits are 0
    // ------------------------------------------------------------
    // Questa treats the initialization block above as a separate writer, so keep
    // metadata array updates in a plain clocked always block instead of always_ff.
    always @(posedge clk) begin
        if (l2_fill_en) begin
            valid_array[l2_fill_addr[`SET_BITS]][l2_fill_way] <= 1'b1;
            tag_array[l2_fill_addr[`SET_BITS]][l2_fill_way]   <= l2_fill_addr[`TAG_BITS];
            mesi_array[l2_fill_addr[`SET_BITS]][l2_fill_way]  <= l2_fill_mesi;
            dirty_array[l2_fill_addr[`SET_BITS]][l2_fill_way] <= (l2_fill_mesi == MESI_M);
        end

        if (l2_store_en && last_hit_valid) begin
            dirty_array[last_hit_set][last_hit_way] <= 1'b1;
        end

        if (l2_set_state_en) begin
            mesi_array[l2_set_state_addr[`SET_BITS]][l2_set_state_way] <= l2_set_state_val;

            unique case (l2_set_state_val)
                MESI_I: begin
                    valid_array[l2_set_state_addr[`SET_BITS]][l2_set_state_way] <= 1'b0;
                    dirty_array[l2_set_state_addr[`SET_BITS]][l2_set_state_way] <= 1'b0;
                end
                MESI_M: begin
                    dirty_array[l2_set_state_addr[`SET_BITS]][l2_set_state_way] <= 1'b1;
                end
                MESI_S, MESI_E: begin
                    dirty_array[l2_set_state_addr[`SET_BITS]][l2_set_state_way] <= 1'b0;
                end
                default: begin
                    dirty_array[l2_set_state_addr[`SET_BITS]][l2_set_state_way] <= 1'b0;
                end
            endcase
        end
    end

    // ------------------------------------------------------------
    // Hit detection (tag compare over ways)
    // ------------------------------------------------------------
    logic [NO_OF_WAYS-1:0] hit_vector;
    logic                  hit_detected;
    logic [2:0]            hit_way_detected;

    always_comb begin
        hit_vector       = '0;
        hit_detected     = 1'b0;
        hit_way_detected = '0;

        // For line reads and normal lookup: use tag compare
        if (op_en_r && !op_is_vline_r) begin
            for (int k = 0; k < NO_OF_WAYS; k++) begin
                if (valid_array[set_index_r][k] && (tag_array[set_index_r][k] == tag_r)) begin
                    hit_vector[k]    = 1'b1;
                    hit_detected     = 1'b1;
                    hit_way_detected = k[2:0];
                end
            end
        end
    end

    assign l2_hit     = hit_detected;
    assign l2_hit_way = hit_way_detected;

    // lookup completion even on miss (like your L1's d_lookup_valid)
    assign l2_lookup_valid = op_en_r & ~op_is_line_r & ~op_is_vline_r;

    // rvalid only when lookup hit (mirrors your L1 behavior)
    assign l2_rvalid = l2_lookup_valid & l2_hit;

    assign l2_line_rd_valid  = op_en_r & hit_detected & op_is_line_r;
    assign l2_vline_rd_valid = vline_fire_r;

    // ------------------------------------------------------------
    // Data select and outputs
    // ------------------------------------------------------------
    logic [LINE_BITS-1:0] line_data;
    logic [8:0]           bit_index_r; // 0..448 step 64
    assign bit_index_r = {word_index_r, 6'b0};

    always_comb begin
        line_data = '0;

        if (op_is_vline_r)
            line_data = way_data[vline_way_r];
        else if (hit_detected)
            line_data = way_data[hit_way_detected];
    end

    always_comb begin
        l2_rdata = '0;
        if (op_en_r && hit_detected && !op_is_line_r && !op_is_vline_r)
            l2_rdata = line_data[bit_index_r +: CORE_DATA_WIDTH];
    end

    always_comb begin
        l2_line_rd_data = '0;
        if (op_en_r && op_is_line_r && hit_detected)
            l2_line_rd_data = line_data;
    end

    always_comb begin
        l2_vline_rd_data = '0;
        if (op_en_r && op_is_vline_r)
            l2_vline_rd_data = line_data;
    end

    always_comb begin
        l2_mesi_state = MESI_I;
        l2_dirty      = 1'b0;
        if (hit_detected && !op_is_vline_r) begin
            l2_mesi_state = mesi_array[set_index_r][hit_way_detected];
            l2_dirty      = dirty_array[set_index_r][hit_way_detected];
        end
    end

endmodule