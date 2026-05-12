`timescale 1ns/1ps

module L1_Icache_Controller_tb;

    // ================================================================
    // Signals
    // ================================================================
    logic        clk;
    logic        rst_n;
    
    // CPU interface
    logic        if_req_valid;
    logic [31:0] if_req_addr;
    logic        if_req_ready;
    logic        if_resp_valid;
    logic [63:0] if_resp_data;
    
    // Controller ? Cache
    logic        i_lookup_en;
    logic [31:0] i_lookup_addr;
    logic        i_fill_en;
    logic [31:0] i_fill_addr;
    logic [2:0]  i_fill_way;
    logic [511:0] i_fill_line;
    logic        i_rvalid;
    logic [63:0] i_rdata;
    logic        i_hit;
    logic [2:0]  i_hit_way;
    logic        o_lookup_stalled;
    
    // Controller ? Arbiter
    logic        i_req_valid;
    logic        i_req_ready;
    logic [2:0]  i_req_cmd;
    logic [31:0] i_req_addr;
    logic [1:0]  i_req_src;
    logic        bus_dat_valid;
    logic [63:0] bus_dat_data;
    logic [2:0]  bus_dat_beat;
    logic        bus_dat_last;
    logic [1:0]  bus_dat_dst;
    logic [31:0] bus_dat_addr;
    logic        bus_gnt_valid;
    logic        bus_gnt_ok;

    // ================================================================
    // Clock Generation
    // ================================================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // ================================================================
    // DUT Instantiation:  Cache
    // ================================================================
    L1_Icache u_cache (
        .clk(clk),
        .rst_n(rst_n),
        .i_lookup_en(i_lookup_en),
        .i_lookup_addr(i_lookup_addr),
        .i_fill_en(i_fill_en),
        .i_fill_addr(i_fill_addr),
        .i_fill_way(i_fill_way),
        .i_fill_line(i_fill_line),
        .i_rdata(i_rdata),
        .i_hit(i_hit),
        .i_rvalid(i_rvalid),
        .i_hit_way(i_hit_way),
        .o_lookup_stalled(o_lookup_stalled)
    );

    // ================================================================
    // DUT Instantiation: Controller
    // ================================================================
    L1_Icache_Controller #(
        .ADDR_WIDTH(32),
        . CORE_DATA_WIDTH(64),
        .LINE_BYTES(64),
        .NUM_BEATS(8),
        .SET_BITS_LEN(6),
        .NO_OF_WAYS(8),
        .SRC_ID_WIDTH(2),
        .I_SRC_ID(2'd0),
        .USE_BUS_DAT_DST(1),
        .USE_BUS_DAT_ADDR(1)
    ) u_controller (
        .clk(clk),
        .rst_n(rst_n),
        // CPU
        .if_req_valid(if_req_valid),
        .if_req_addr(if_req_addr),
        .if_req_ready(if_req_ready),
        .if_resp_valid(if_resp_valid),
        .if_resp_data(if_resp_data),
        // Cache
        .i_lookup_en(i_lookup_en),
        .i_lookup_addr(i_lookup_addr),
        .i_fill_en(i_fill_en),
        .i_fill_addr(i_fill_addr),
        .i_fill_way(i_fill_way),
        .i_fill_line(i_fill_line),
        .i_rvalid(i_rvalid),
        .i_rdata(i_rdata),
        .i_hit(i_hit),
        .i_hit_way(i_hit_way),
        .o_lookup_stalled(o_lookup_stalled),
        // Arbiter
        .i_req_valid(i_req_valid),
        .i_req_ready(i_req_ready),
        .i_req_cmd(i_req_cmd),
        .i_req_addr(i_req_addr),
        .i_req_src(i_req_src),
        .bus_dat_valid(bus_dat_valid),
        .bus_dat_data(bus_dat_data),
        .bus_dat_beat(bus_dat_beat),
        .bus_dat_last(bus_dat_last),
        .bus_dat_dst(bus_dat_dst),
        .bus_dat_addr(bus_dat_addr),
        .bus_gnt_valid(bus_gnt_valid),
        .bus_gnt_ok(bus_gnt_ok)
    );

    // ================================================================
    // Simple Arbiter Model
    // ================================================================
    logic [31:0] arb_pending_addr;
    logic        arb_pending;
    int          arb_beat_count;
    logic        send_nack;  // Test control flag
   
    always_ff @(posedge clk or negedge rst_n ) begin
        if (!rst_n) begin
            i_req_ready   <= 0;
            bus_dat_valid <= 0;
            bus_dat_data  <= 0;
            bus_dat_beat  <= 0;
            bus_dat_last  <= 0;
            bus_dat_dst   <= 0;
            bus_dat_addr  <= 0;
            bus_gnt_valid <= 0;
            bus_gnt_ok    <= 0;
            arb_pending   <= 0;
            arb_pending_addr <= 0;
            arb_beat_count <= 0;
        end else begin
            // Default:  ready to accept requests
            i_req_ready <= ! arb_pending;
            
            // Accept request
            if (i_req_valid && i_req_ready) begin
                arb_pending      <= 1;
                arb_pending_addr <= i_req_addr;
                arb_beat_count   <= 0;
             
            end
            
            // Send beats
            bus_dat_valid <= 0;
            bus_gnt_valid <= 0;
            
            if (arb_pending) begin
                 // Small delay before beats start
                
                // Send 8 beats
                bus_dat_valid <= 1;
                bus_dat_dst   <= 2'd0;  // Match I_SRC_ID
                bus_dat_addr  <= arb_pending_addr;
                bus_dat_beat  <= arb_beat_count;
                bus_dat_data  <= 64'hAAAA_0000_0000_0000 + arb_beat_count;  // Dummy data
                bus_dat_last  <= (arb_beat_count == 7);
                
                
                
                if (arb_beat_count == 7) begin
                    // Send grant with last beat
                   
                    bus_gnt_valid <= 1;
                    bus_gnt_ok    <= ! send_nack;
                    arb_pending   <= 0;
                    
                    if (send_nack) begin
                        
                        
                    end else begin
                       
                    end
                end else begin
                    arb_beat_count <= arb_beat_count + 1;
                end
            end
        end
    end

    // ================================================================
    // Test Stimulus
    // ================================================================
    initial begin
        // Initialize
        rst_n        = 0;
        if_req_valid = 0;
        if_req_addr  = 0;
        send_nack    = 0;
        
        // Reset
        repeat(5) @(posedge clk);
        rst_n = 1;
        repeat(3) @(posedge clk);
        
        // ============================================================
        // TEST 1: Cache MISS (cold start)
        // ============================================================
      
        @(posedge clk);
        if_req_valid = 1;
        if_req_addr  = 32'h0000_1000;
        
        wait(if_req_ready);
        @(posedge clk);
        if_req_valid = 0;
        
        wait(if_resp_valid);
        @(posedge clk);
      
        
        repeat(10) @(posedge clk);
        
        // ============================================================
        // TEST 2: Cache HIT (same address)
        // ============================================================
      
        @(posedge clk);
        if_req_valid = 1;
        if_req_addr  = 32'h0000_1000;
        
        wait(if_req_ready);
        @(posedge clk);
        if_req_valid = 0;
        
        wait(if_resp_valid);
        @(posedge clk);
      
        
        repeat(10) @(posedge clk);
        
        // ============================================================
        // TEST 3: Different address MISS
        // ============================================================
       
        @(posedge clk);
        if_req_valid = 1;
        if_req_addr  = 32'h0000_2000;
        
        wait(if_req_ready);
        @(posedge clk);
        if_req_valid = 0;
        
        wait(if_resp_valid);
        @(posedge clk);
   
        
        repeat(10) @(posedge clk);
        
        // ============================================================
        // TEST 4: MISS with NACK (retry scenario)
        // ============================================================

        send_nack = 1;  // Next request will be NACK'd
        
        @(posedge clk);
        if_req_valid = 1;
        if_req_addr  = 32'h0000_3000;
        
        wait(if_req_ready);
        @(posedge clk);
        if_req_valid = 0;
        
        wait(if_resp_valid);
        @(posedge clk);
       
        
        repeat(20) @(posedge clk);
        
        // ============================================================
        // End of test
        // ============================================================

        $finish;
    end

    

endmodule