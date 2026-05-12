`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name :        L1_Dcache  
// Description :  32KB 8-way set-associative L1 Data Cache (storage module)
//               64 sets � 8 ways � 64B lines = 32KB
//               Single-port BRAM per way, 1-cycle BRAM read latency (pipelined)
//
// [Previous header comments unchanged...]
//
//////////////////////////////////////////////////////////////////////////////////

`define TAG_BITS         31:12
`define SET_BITS         11:6
`define BYTE_OFFSET_BITS 5:0

module L1_Dcache #(
    parameter int ADDR_WIDTH           = 32,
    parameter int TAG_BITS_LEN         = 20,
    parameter int SET_BITS_LEN         = 6,
    parameter int BYTE_OFFSET_BITS_LEN = 6,
    parameter int NO_OF_WAYS           = 8,
    parameter int CORE_DATA_WIDTH      = 64,
    parameter int BYTE_SIZE            = 8,
    parameter int BRAM_WE_WIDTH        = 64
)(
    input  logic                       clk,
    input  logic                       rst_n,

    // [All port declarations unchanged...]
    // Lookup interface
    input  logic                       d_lookup_en,
    input  logic [ADDR_WIDTH-1:0]      d_lookup_addr,
    input  logic                       d_lookup_is_store,
    output logic                       d_lookup_stall,

    // Store interface
    input  logic                       d_store_en,
    input  logic [CORE_DATA_WIDTH-1:0] d_store_wdata,
    input  logic [7:0]                 d_store_wstrb,

    // Fill interface
    input  logic                       d_fill_en,
    input  logic [ADDR_WIDTH-1:0]      d_fill_addr,
    input  logic [2:0]                 d_fill_way,
    input  logic [511:0]               d_fill_line,
    input  logic [1:0]                 d_fill_mesi,

    // MESI state update interface
    input  logic                       d_set_state_en,
    input  logic [ADDR_WIDTH-1:0]      d_set_state_addr,
    input  logic [2:0]                 d_set_state_way,
    input  logic [1:0]                 d_set_state_val,

    // Full line read interface
    input  logic                       d_line_rd_en,
    input  logic [ADDR_WIDTH-1:0]      d_line_rd_addr,
    output logic [511:0]               d_line_rd_data,
    output logic                       d_line_rd_valid,

    // Victim metadata peek interface
    input  logic                       d_vmeta_en,
    input  logic [SET_BITS_LEN-1:0]    d_vmeta_set,
    input  logic [2:0]                 d_vmeta_way,
    output logic                       d_vmeta_valid,
    output logic [TAG_BITS_LEN-1:0]    d_vmeta_tag,
    output logic                       d_vmeta_line_valid,
    output logic [1:0]                 d_vmeta_mesi,
    output logic                       d_vmeta_dirty,

    // Victim line read interface
    input  logic                       d_vline_rd_en,
    input  logic [SET_BITS_LEN-1:0]    d_vline_rd_set,
    input  logic [2:0]                 d_vline_rd_way,
    output logic                       d_vline_rd_valid,
    output logic [511:0]               d_vline_rd_data,
    output logic [TAG_BITS_LEN-1:0]    d_vline_rd_tag,
    output logic                       d_vline_rd_entry_valid,
    output logic [1:0]                 d_vline_rd_mesi,
    output logic                       d_vline_rd_dirty,

    // Outputs
    output logic [CORE_DATA_WIDTH-1:0] d_rdata,
    output logic                       d_hit,
    output logic                       d_rvalid,
    output logic [2:0]                 d_hit_way,
    output logic [1:0]                 d_mesi_state,
    output logic                       d_dirty,
    output logic                       d_lookup_valid
);

    // [Local parameters and address fields unchanged...]
    localparam int LINE_BYTES = 1 << BYTE_OFFSET_BITS_LEN;
    localparam int LINE_BITS  = BYTE_SIZE * LINE_BYTES;
    localparam int NUM_SETS   = 1 << SET_BITS_LEN;

    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;

    logic [TAG_BITS_LEN-1:0]         lookup_tag;
    logic [SET_BITS_LEN-1:0]         lookup_set;
    logic [BYTE_OFFSET_BITS_LEN-1:0] lookup_offset;
    logic [2:0]                      lookup_word;

    assign lookup_tag    = d_lookup_addr[`TAG_BITS];
    assign lookup_set    = d_lookup_addr[`SET_BITS];
    assign lookup_offset = d_lookup_addr[`BYTE_OFFSET_BITS];
    assign lookup_word   = lookup_offset[5:3];

    logic [TAG_BITS_LEN-1:0]         line_rd_tag;
    logic [SET_BITS_LEN-1:0]         line_rd_set;

    assign line_rd_tag = d_line_rd_addr[`TAG_BITS];
    assign line_rd_set = d_line_rd_addr[`SET_BITS];

    // Pipeline registers
    logic [TAG_BITS_LEN-1:0] tag_r;
    logic [SET_BITS_LEN-1:0] set_index_r;
    logic [2:0]              word_index_r;
    logic                    op_en_r;
    logic                    op_is_line_r;
    logic                    op_is_vline_r;
    logic                    op_was_store_r;
    logic                    d_store_en_r;
    logic [2:0]              vline_way_r;
    logic [SET_BITS_LEN-1:0] vline_set_r;

    // Store context locking
    logic last_hit_locked;
    logic last_hit_valid;
    logic [SET_BITS_LEN-1:0]  last_hit_set;
    logic [2:0]               last_hit_way;
    logic [2:0]               last_hit_word;

    assign d_lookup_stall = last_hit_locked & d_lookup_is_store;

    // Operation firing logic
    wire lookup_fire  =
        d_lookup_en &
        ~d_fill_en & ~d_store_en & ~d_vline_rd_en &
        ~(last_hit_locked & d_lookup_is_store);

    wire line_rd_fire = d_line_rd_en & ~d_fill_en & ~d_store_en & ~d_vline_rd_en;
    wire vline_rd_fire = d_vline_rd_en & ~d_fill_en & ~d_store_en;
    wire read_op_fire = lookup_fire | line_rd_fire | vline_rd_fire;

    logic vline_fire_r;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            vline_fire_r <= 1'b0;
            d_store_en_r <= 1'b0;
            
       end else begin
            vline_fire_r <= vline_rd_fire;
             d_store_en_r <= d_store_en;
    end
    end

    // [Pipeline stage - unchanged...]
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
                    tag_r         <= '0;
                    set_index_r   <= d_vline_rd_set;
                    word_index_r  <= '0;
                    op_en_r       <= 1'b1;
                    op_is_line_r  <= 1'b0;
                    op_is_vline_r <= 1'b1;
                    op_was_store_r <= 1'b0;
                    vline_way_r   <= d_vline_rd_way;
                    vline_set_r   <= d_vline_rd_set;
                end else if (line_rd_fire) begin
                    tag_r         <= line_rd_tag;
                    set_index_r   <= line_rd_set;
                    word_index_r  <= '0;
                    op_en_r       <= 1'b1;
                    op_is_line_r  <= 1'b1;
                    op_is_vline_r <= 1'b0;
                    op_was_store_r <= 1'b0;
                    vline_way_r   <= '0;
                    vline_set_r   <= '0;
                end else begin
                    tag_r         <= lookup_tag;
                    set_index_r   <= lookup_set;
                    word_index_r  <= lookup_word;
                    op_en_r       <= 1'b1;
                    op_is_line_r  <= 1'b0;
                    op_is_vline_r <= 1'b0;
                    op_was_store_r <= d_lookup_is_store;
                    vline_way_r   <= '0;
                    vline_set_r   <= '0;
                end
            end else begin
                op_en_r        <= 1'b0;
                op_is_line_r   <= 1'b0;
                op_is_vline_r  <= 1'b0;
                op_was_store_r <= 1'b0;
            end
        end
    end

    // TAG + VALID + MESI + DIRTY ARRAYS
    logic [TAG_BITS_LEN-1:0] tag_array   [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    logic                    valid_array [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    logic [1:0]              mesi_array  [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    logic                    dirty_array [0:NUM_SETS-1][0:NO_OF_WAYS-1];

    logic [LINE_BITS-1:0] way_data [0:NO_OF_WAYS-1];

    logic [SET_BITS_LEN-1:0]  bram_addr;
    logic                     bram_en  [0:NO_OF_WAYS-1];
    logic [BRAM_WE_WIDTH-1:0] bram_wea [0:NO_OF_WAYS-1];
    logic [LINE_BITS-1:0]     bram_din;

    // ================================================================
    // Victim Metadata Peek (1-cycle latency, fully registered)
    // ================================================================
    logic                       vmeta_en_r;
    logic [SET_BITS_LEN-1:0]    vmeta_set_r;
    logic [2:0]                 vmeta_way_r;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            vmeta_en_r  <= 1'b0;
            vmeta_set_r <= '0;
            vmeta_way_r <= '0;
        end else begin
            vmeta_en_r  <= d_vmeta_en;
            vmeta_set_r <= d_vmeta_set;
            vmeta_way_r <= d_vmeta_way;
        end
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            d_vmeta_valid      <= 1'b0;
            d_vmeta_tag        <= '0;
            d_vmeta_line_valid <= 1'b0;
            d_vmeta_mesi       <= MESI_I;
            d_vmeta_dirty      <= 1'b0;
        end else begin
            d_vmeta_valid <= vmeta_en_r;
            if (vmeta_en_r) begin
                d_vmeta_tag        <= tag_array[vmeta_set_r][vmeta_way_r];
                d_vmeta_line_valid <= valid_array[vmeta_set_r][vmeta_way_r];
                d_vmeta_mesi       <= mesi_array[vmeta_set_r][vmeta_way_r];
                d_vmeta_dirty      <= dirty_array[vmeta_set_r][vmeta_way_r];
            end
        end
    end

 
    assign d_vline_rd_tag         = (op_is_vline_r) ? tag_array[set_index_r][vline_way_r]   : '0;
    assign d_vline_rd_entry_valid = (op_is_vline_r) ? valid_array[set_index_r][vline_way_r] : 1'b0;
    assign d_vline_rd_mesi        = (op_is_vline_r) ? mesi_array[set_index_r][vline_way_r]  : MESI_I;
    assign d_vline_rd_dirty       = (op_is_vline_r) ? dirty_array[set_index_r][vline_way_r] : 1'b0;

    
   always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            last_hit_valid  <= 1'b0;
            last_hit_locked <= 1'b0;
            last_hit_set    <= '0;
            last_hit_way    <= '0;
            last_hit_word   <= '0;
        end else begin  // ? ADD THIS!
            // UNLOCK CONDITION (higher priority)
            if ((d_store_en_r ) && last_hit_valid) begin
                last_hit_locked <= 1'b0;
                last_hit_valid  <= 1'b0;
            // LOCK CONDITION (only if not unlocking)
            end else if (op_en_r && d_hit && !op_is_line_r && !op_is_vline_r && 
                         op_was_store_r && !last_hit_locked) begin
                last_hit_valid  <= 1'b1;
                last_hit_set    <= set_index_r;
                last_hit_way    <= d_hit_way;
                last_hit_word   <= word_index_r;
                last_hit_locked <= 1'b1;
            end
        end
    end

    logic [BRAM_WE_WIDTH-1:0] store_we_mask;
    logic [LINE_BITS-1:0]     store_din;

    always_comb begin
        store_we_mask = '0;
        store_din     = '0;
        if (d_store_en && last_hit_valid) begin
            int lane_base;
            lane_base = last_hit_word * 8;
            store_din[(last_hit_word*CORE_DATA_WIDTH) +: CORE_DATA_WIDTH] = d_store_wdata;
            for (int b = 0; b < 8; b++)
                store_we_mask[lane_base + b] = d_store_wstrb[b];
        end
    end

    always_comb begin
        bram_addr = lookup_set;
        bram_din  = '0;
        for (int w = 0; w < NO_OF_WAYS; w++) begin
            bram_en[w]  = 1'b0;
            bram_wea[w] = '0;
        end

        if (d_fill_en) begin
            bram_addr = d_fill_addr[`SET_BITS];
            bram_din  = d_fill_line;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = (d_fill_way == w[2:0]);
                bram_wea[w] = (d_fill_way == w[2:0]) ? {BRAM_WE_WIDTH{1'b1}} : '0;
            end
        end else if (d_store_en && last_hit_valid) begin
            bram_addr = last_hit_set;
            bram_din  = store_din;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = (last_hit_way == w[2:0]);
                bram_wea[w] = (last_hit_way == w[2:0]) ? store_we_mask : '0;
            end
        end else if (vline_rd_fire) begin
            bram_addr = d_vline_rd_set;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = (d_vline_rd_way == w[2:0]);
                bram_wea[w] = '0;
            end
        end else if (lookup_fire || line_rd_fire) begin
            bram_addr = line_rd_fire ?   line_rd_set : lookup_set;
            for (int w = 0; w < NO_OF_WAYS; w++) begin
                bram_en[w]  = 1'b1;
                bram_wea[w] = '0;
            end
        end
    end

    genvar gw;
    generate
        for (gw = 0; gw < NO_OF_WAYS; gw++) begin : WAY_BRAM
            (* dont_touch = "true" *) blk_mem_gen_0 u_bram_way (
                .clka  (clk),
                .ena   (bram_en[gw]),
                .wea   (bram_wea[gw]),
                .addra (bram_addr),
                .dina  (bram_din),
                .douta (way_data[gw])
            );
        end
    endgenerate

    integer si, wi;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (si = 0; si < NUM_SETS; si++) begin
                for (wi = 0; wi < NO_OF_WAYS; wi++) begin
                    valid_array[si][wi] <= 1'b0;
                    mesi_array[si][wi]  <= MESI_I;
                    dirty_array[si][wi] <= 1'b0;
                    tag_array[si][wi]   <= '0;
                end
            end
        end else begin
            if (d_fill_en) begin
            
                valid_array[d_fill_addr[`SET_BITS]][d_fill_way] <= 1'b1;
                tag_array[d_fill_addr[`SET_BITS]][d_fill_way]   <= d_fill_addr[`TAG_BITS];
                mesi_array[d_fill_addr[`SET_BITS]][d_fill_way]  <= d_fill_mesi;
                dirty_array[d_fill_addr[`SET_BITS]][d_fill_way] <= (d_fill_mesi == MESI_M);
                
            end  if (d_store_en && last_hit_valid) begin
            
                dirty_array[last_hit_set][last_hit_way] <= 1'b1;
                
            end  if (d_set_state_en) begin
            
                mesi_array[d_set_state_addr[`SET_BITS]][d_set_state_way] <= d_set_state_val;
                
                case (d_set_state_val)
                
                    MESI_I: begin
                        valid_array[d_set_state_addr[`SET_BITS]][d_set_state_way] <= 1'b0;
                        dirty_array[d_set_state_addr[`SET_BITS]][d_set_state_way] <= 1'b0;
                    end
                    MESI_M: begin
                        dirty_array[d_set_state_addr[`SET_BITS]][d_set_state_way] <= 1'b1;
                    end
                    
                    MESI_S, MESI_E: begin
                        dirty_array[d_set_state_addr[`SET_BITS]][d_set_state_way] <= 1'b0;
                    end
                    
                    default: begin
                        dirty_array[d_set_state_addr[`SET_BITS]][d_set_state_way] <= 1'b0;
                    end
                endcase
            end
        end
    end

    logic [NO_OF_WAYS-1:0] hit_vector;
    logic                  hit_detected;
    logic [2:0]            hit_way_detected;

    always_comb begin
    
        hit_vector       = '0;
        hit_detected     = 1'b0;
        hit_way_detected = '0;
        
        if (op_en_r && !  op_is_vline_r) begin
            for (int k = 0; k < NO_OF_WAYS; k++) begin
                if (valid_array[set_index_r][k] && (tag_array[set_index_r][k] == tag_r)) begin
                    hit_vector[k]    = 1'b1;
                    hit_detected     = 1'b1;
                    hit_way_detected = k[2:0];
                end
            end
        end
    end

    assign d_hit     = hit_detected;
    assign d_hit_way = hit_way_detected;
    assign d_lookup_valid = op_en_r & ~op_is_line_r & ~op_is_vline_r;
     assign d_rvalid = d_lookup_valid & d_hit; 
    assign d_line_rd_valid = op_en_r & hit_detected & op_is_line_r;
    assign d_vline_rd_valid = vline_fire_r;

    logic [LINE_BITS-1:0] line_data;
    logic [8:0]           bit_index_r;
    assign bit_index_r = {word_index_r, 6'b0};

    always_comb begin
    
        line_data = '0;
        if (op_is_vline_r)
            line_data = way_data[vline_way_r];
        else if (hit_detected)
            line_data = way_data[hit_way_detected];
    end

    always_comb begin
        d_rdata = '0;
        if (op_en_r && hit_detected && ! op_is_line_r && !  op_is_vline_r)
            d_rdata = line_data[bit_index_r +:     CORE_DATA_WIDTH];
    end

    always_comb begin
        d_line_rd_data = '0;
        if (op_en_r && op_is_line_r && hit_detected)
            d_line_rd_data = line_data;
    end

    always_comb begin
        d_vline_rd_data = '0;
        if (op_en_r && op_is_vline_r)
            d_vline_rd_data = line_data;
    end

    always_comb begin
        d_mesi_state = MESI_I;
        d_dirty      = 1'b0;
        if (hit_detected && !    op_is_vline_r) begin
            d_mesi_state = mesi_array[set_index_r][hit_way_detected];
            d_dirty      = dirty_array[set_index_r][hit_way_detected];
        end
    end


endmodule