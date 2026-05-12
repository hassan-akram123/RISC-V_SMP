`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name :  L1_Icache
// Description : 32KB 8-way set-associative instruction cache
//               64 sets × 8 ways × 64B lines = 32KB
//               Single-port BRAM per way, 1-cycle BRAM latency (pipelined read)
//
// IMPORTANT SINGLE-PORT RULE (to avoid read/write address clobbering):
//   - This cache assumes the controller will NOT assert i_lookup_en and i_fill_en
//     in the same cycle.  
//   - Additionally, this module *prioritizes fill* over lookup if both are asserted
//     (lookup will be effectively suppressed that cycle).
//   - The controller can monitor o_lookup_stalled to detect when a lookup was suppressed.  
//////////////////////////////////////////////////////////////////////////////////

`define TAG_BITS         31:12
`define SET_BITS         11:6
`define BYTE_OFFSET_BITS 5:0

module L1_Icache #(
    parameter int ADDR_WIDTH           = 32,
    parameter int TAG_BITS_LEN         = 20,   // [31:12]
    parameter int SET_BITS_LEN         = 6,    // 64 sets
    parameter int BYTE_OFFSET_BITS_LEN = 6,    // 64B line
    parameter int NO_OF_WAYS           = 8,
    parameter int CORE_INST_WIDTH      = 64,   // 64-bit instruction fetch
    parameter int BYTE_SIZE            = 8,
    parameter int BRAM_WE_WIDTH        = 64    // Write enable width (byte-enables for 512-bit data)
)(
    input  logic                       clk,
    input  logic                       rst_n,  // active-low reset

    // ---------------- Lookup interface (from I$ controller) ----------------
    input  logic                       i_lookup_en,
    input  logic [ADDR_WIDTH-1:0]      i_lookup_addr,

    // ---------------- Fill interface (from controller) ----------------
    input  logic                       i_fill_en,
    input  logic [ADDR_WIDTH-1:0]      i_fill_addr,     // line address being filled
    input  logic [2:0]                 i_fill_way,      // victim way
    input  logic [511:0]               i_fill_line,     // 64B line

    // ---------------- Outputs ----------------
    output logic [CORE_INST_WIDTH-1:0]  i_rdata,
    output logic                        i_hit,
    output logic                        i_rvalid,
    output logic [2:0]                  i_hit_way,
    output logic                        o_lookup_stalled  // asserted when lookup suppressed by fill
);

    // ---------------- LOCAL PARAMETERS ----------------
    localparam int LINE_BYTES = 1 << BYTE_OFFSET_BITS_LEN;      // 64
    localparam int LINE_BITS  = BYTE_SIZE * LINE_BYTES;         // 512
    localparam int NUM_SETS   = 1 << SET_BITS_LEN;              // 64

    // ---------------- Address fields (lookup side) ----------------
    logic [TAG_BITS_LEN-1:0]         tag;
    logic [SET_BITS_LEN-1:0]         set_index;
    logic [BYTE_OFFSET_BITS_LEN-1:0] byte_offset;
    logic [2:0]                      word_index;

    assign tag         = i_lookup_addr[`TAG_BITS];
    assign set_index   = i_lookup_addr[`SET_BITS];
    assign byte_offset = i_lookup_addr[`BYTE_OFFSET_BITS];
    assign word_index  = byte_offset[5:3];  // which 64-bit word in 64B line

    // ---------------- Address fields (fill side) ---------------

 
  

    // ---------------- Pipeline registers (Cycle 0 -> 1) ----------------
    // Align with 1-cycle BRAM read latency
    // ONLY LATCH ON lookup_fire (valid lookup not suppressed by fill)
    logic [TAG_BITS_LEN-1:0] tag_r;
    logic [SET_BITS_LEN-1:0] set_index_r;
    logic [2:0]              word_index_r;
    logic                    lookup_en_r;

    // If fill is asserted, we suppress lookup capture this cycle (single-port safety)
    wire lookup_fire = i_lookup_en & ~i_fill_en;
    
    // Inform controller when lookup is stalled due to fill
    assign o_lookup_stalled = i_lookup_en & i_fill_en;

    always_ff @(posedge clk or negedge rst_n) begin
        if (! rst_n) begin
            tag_r        <= '0;
            set_index_r  <= '0;
            word_index_r <= '0;
            lookup_en_r  <= 1'b0;
            

        end else if (lookup_fire) begin
            // Only latch new lookup request when it fires (not suppressed by fill)
            tag_r        <= tag;
            set_index_r  <= set_index;
            word_index_r <= word_index;
            lookup_en_r  <= 1'b1;
           
            
        end else begin
            // Clear lookup_en_r when no valid lookup is happening
            lookup_en_r  <= 1'b0;
            // tag_r, set_index_r, word_index_r hold their previous values
        end
    end

    // ---------------- TAG + VALID ARRAYS ----------------
    logic [TAG_BITS_LEN-1:0] tag_array   [0:NUM_SETS-1][0:NO_OF_WAYS-1];
    logic                    valid_array [0:NUM_SETS-1][0:NO_OF_WAYS-1];

    // ---------------- DATA FROM EACH WAY (BRAM OUTPUTS) ----------------
    logic [LINE_BITS-1:0] way_data [0:NO_OF_WAYS-1];

    // ---------------- BRAM CONTROL (single-port per way) ----------------
    logic [SET_BITS_LEN-1:0] bram_addr;
    logic                    bram_en [0:NO_OF_WAYS-1];
    logic                    bram_we [0:NO_OF_WAYS-1];

    // Address mux:  during fill, address = fill_set; otherwise = lookup set
    assign bram_addr = (i_fill_en) ? i_fill_addr[`SET_BITS] : set_index;

    // Enable policy: 
    // - On lookup (and not fill): enable ALL ways (parallel read)
    // - On fill: enable ONLY i_fill_way for write; (lookup suppressed by lookup_fire)
    always_comb begin
        for (int i = 0; i < NO_OF_WAYS; i++) begin
            bram_en[i] = (lookup_fire) |
                         (i_fill_en && (i_fill_way == i[2:0]));
            bram_we[i] = i_fill_en && (i_fill_way == i[2:0]);
        end
    end

    // ---------------- INSTANTIATE BRAMs (ONE PER WAY) ----------------
    // NOTE: This instantiation assumes blk_mem_gen_0 is SINGLE-PORT:  
    //   clka, ena, wea, addra, dina, douta
    //   WEA width = BRAM_WE_WIDTH (typically 64 for byte-enable on 512-bit data)
    genvar w;
    generate
        for (w = 0; w < NO_OF_WAYS; w++) begin :  WAY_BRAM
            (* dont_touch = "true" *) blk_mem_gen_0 u_bram_way (
                .clka  (clk),
                .ena   (bram_en[w]),
                .wea   ({BRAM_WE_WIDTH{bram_we[w]}}), 
                .addra (bram_addr),
                .dina  (i_fill_line),
                .douta (way_data[w])
            );
        end
    endgenerate

    // ---------------- TAG + VALID UPDATE (ON FILL) ----------------
       always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (int si = 0; si < NUM_SETS; si++) begin  // Changed to int
                for (int wi = 0; wi < NO_OF_WAYS; wi++) begin
                    valid_array[si][wi] <= 1'b0;
                    tag_array[si][wi]   <= '0;  // This WILL update now
                end
            end
        end else if (i_fill_en) begin
            valid_array[i_fill_addr[`SET_BITS]][i_fill_way] <= 1'b1;
            tag_array[i_fill_addr[`SET_BITS]][i_fill_way]   <= i_fill_addr[`TAG_BITS];  // This updates correctly
        end
    end
    // ---------------- PARALLEL TAG COMPARE (Cycle 1, aligned to lookup_en_r) ----------------
    logic [NO_OF_WAYS-1:0] hit_vector;
    logic                  hit_detected;
    logic [2:0]            hit_way_detected;
    
    always_comb begin
                     
        hit_vector       = '0;
        hit_detected     = 1'b0;
        hit_way_detected = '0;
    
        // Only compare when lookup is valid ?
        if (lookup_en_r) begin
            for (int k = 0; k < NO_OF_WAYS; k++) begin
                if (valid_array[set_index_r][k] &&
                    (tag_array[set_index_r][k] == tag_r)) begin
                    hit_vector[k]    = 1'b1;
                    hit_detected     = 1'b1;
                    hit_way_detected = k[2:0];
                end
            end
        end
    end

    // Only output hit signals when lookup is valid
    assign i_hit     = hit_detected;      // Already gated by lookup_en_r
    assign i_hit_way = hit_way_detected;
    // ---------------- OUTPUT VALID ----------------
    assign i_rvalid = lookup_en_r & hit_detected;

    // ---------------- READ DATA FROM HIT WAY (Cycle 1) ----------------
    logic [LINE_BITS-1:0] line_data;
    logic [8:0]           bit_index_r;  // Range: 0, 64, 128, .. ., 448 (max 9 bits needed)

    assign bit_index_r = {word_index_r, 6'b0}; // word_index * 64

    always_comb begin
        line_data = '0;
        if (hit_detected) begin
            line_data = way_data[hit_way_detected];
        end
    end

    // Only output data when lookup is valid and hit
    always_comb begin
        i_rdata = '0;
        if (lookup_en_r && hit_detected) begin
            i_rdata = line_data[bit_index_r +: CORE_INST_WIDTH];
        end
    end

`ifndef SYNTHESIS
    // ---------------- SIMULATION CHECKS ----------------
    
    // 1. Warn about single-port safety contract violation
    always_ff @(posedge clk) begin
        if (rst_n) begin
            if (i_lookup_en && i_fill_en) begin
                $warning("L1_Icache: i_lookup_en and i_fill_en asserted together.  Lookup is suppressed (single-port safety).");
            end
        end
    end
    
    // 2. Check for multiple-way hits (indicates cache corruption)
    always_ff @(posedge clk) begin
        if (rst_n && lookup_en_r) begin
            if ($countones(hit_vector) > 1) begin
                $error("L1_Icache:  Multiple ways hit for set=0x%0h, tag=0x%0h!  hit_vector=0b%08b", 
                       set_index_r, tag_r, hit_vector);
            end
        end
    end
    
    // 3. Check for fill to invalid way index
    always_ff @(posedge clk) begin
        if (rst_n && i_fill_en) begin
            if (i_fill_way >= NO_OF_WAYS) begin
                $error("L1_Icache: Fill way index %0d >= NO_OF_WAYS (%0d)", i_fill_way, NO_OF_WAYS);
            end
        end
    end
`endif

endmodule