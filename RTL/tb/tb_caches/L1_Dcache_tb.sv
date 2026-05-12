`timescale 1ns / 1ps

module L1_Dcache_tb;

    // ================================================================
    // Testbench Signals
    // ================================================================
    logic        clk;
    logic        rst_n;

    // Lookup interface
    logic        d_lookup_en;
    logic [31:0] d_lookup_addr;
    logic        d_lookup_is_store;
    logic        d_lookup_stall;

    // Store interface
    logic        d_store_en;
    logic [63:0] d_store_wdata;
    logic [7:0]  d_store_wstrb;

    // Fill interface
    logic        d_fill_en;
    logic [31:0] d_fill_addr;
    logic [2:0]  d_fill_way;
    logic [511:0] d_fill_line;
    logic [1:0]  d_fill_mesi;

    // MESI state update interface
    logic        d_set_state_en;
    logic [31:0] d_set_state_addr;
    logic [2:0]  d_set_state_way;
    logic [1:0]  d_set_state_val;

    // Line read interface
    logic        d_line_rd_en;
    logic [31:0] d_line_rd_addr;
    logic [511:0] d_line_rd_data;
    logic        d_line_rd_valid;

    // Victim metadata peek interface
    logic        d_vmeta_en;
    logic [5:0]  d_vmeta_set;
    logic [2:0]  d_vmeta_way;
    logic        d_vmeta_valid;
    logic [19:0] d_vmeta_tag;
    logic        d_vmeta_line_valid;
    logic [1:0]  d_vmeta_mesi;
    logic        d_vmeta_dirty;

    // Victim line read interface
    logic        d_vline_rd_en;
    logic [5:0]  d_vline_rd_set;
    logic [2:0]  d_vline_rd_way;
    logic        d_vline_rd_valid;
    logic [511:0] d_vline_rd_data;
    logic [19:0] d_vline_rd_tag;
    logic        d_vline_rd_entry_valid;
    logic [1:0]  d_vline_rd_mesi;
    logic        d_vline_rd_dirty;

    // Outputs
    logic [63:0] d_rdata;
    logic        d_hit;
    logic        d_rvalid;
    logic [2:0]  d_hit_way;
    logic [1:0]  d_mesi_state;
    logic        d_dirty;

    // MESI state encodings
    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;

    // ================================================================
    // Clock Generation
    // ================================================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 100MHz clock (10ns period)
    end

    // ================================================================
    // DUT Instantiation
    // ================================================================
    L1_Dcache dut (
        .clk(clk),
        .rst_n(rst_n),
        
        // Lookup
        .d_lookup_en(d_lookup_en),
        .d_lookup_addr(d_lookup_addr),
        .d_lookup_is_store(d_lookup_is_store),
        .d_lookup_stall(d_lookup_stall),
        
        // Store
        .d_store_en(d_store_en),
        .d_store_wdata(d_store_wdata),
        .d_store_wstrb(d_store_wstrb),
        
        // Fill
        .d_fill_en(d_fill_en),
        .d_fill_addr(d_fill_addr),
        .d_fill_way(d_fill_way),
        .d_fill_line(d_fill_line),
        .d_fill_mesi(d_fill_mesi),
        
        // MESI state update
        .d_set_state_en(d_set_state_en),
        .d_set_state_addr(d_set_state_addr),
        .d_set_state_way(d_set_state_way),
        .d_set_state_val(d_set_state_val),
        
        // Line read
        .d_line_rd_en(d_line_rd_en),
        .d_line_rd_addr(d_line_rd_addr),
        .d_line_rd_data(d_line_rd_data),
        .d_line_rd_valid(d_line_rd_valid),
        
        // Victim metadata peek
        .d_vmeta_en(d_vmeta_en),
        .d_vmeta_set(d_vmeta_set),
        .d_vmeta_way(d_vmeta_way),
        .d_vmeta_valid(d_vmeta_valid),
        .d_vmeta_tag(d_vmeta_tag),
        .d_vmeta_line_valid(d_vmeta_line_valid),
        .d_vmeta_mesi(d_vmeta_mesi),
        .d_vmeta_dirty(d_vmeta_dirty),
        
        // Victim line read
        .d_vline_rd_en(d_vline_rd_en),
        .d_vline_rd_set(d_vline_rd_set),
        .d_vline_rd_way(d_vline_rd_way),
        .d_vline_rd_valid(d_vline_rd_valid),
        .d_vline_rd_data(d_vline_rd_data),
        .d_vline_rd_tag(d_vline_rd_tag),
        .d_vline_rd_entry_valid(d_vline_rd_entry_valid),
        .d_vline_rd_mesi(d_vline_rd_mesi),
        .d_vline_rd_dirty(d_vline_rd_dirty),
        
        // Outputs
        .d_rdata(d_rdata),
        .d_hit(d_hit),
        .d_rvalid(d_rvalid),
        .d_hit_way(d_hit_way),
        .d_mesi_state(d_mesi_state),
        .d_dirty(d_dirty)
    );

    // ================================================================
    // Test Tasks
    // ================================================================
    
    // Task:   Reset all inputs
    task reset_inputs();
        d_lookup_en      = 0;
        d_lookup_addr    = 0;
        d_lookup_is_store = 0;
        d_store_en       = 0;
        d_store_wdata    = 0;
        d_store_wstrb    = 0;
        d_fill_en        = 0;
        d_fill_addr      = 0;
        d_fill_way       = 0;
        d_fill_line      = 0;
        d_fill_mesi      = MESI_I;
        d_set_state_en   = 0;
        d_set_state_addr = 0;
        d_set_state_way  = 0;
        d_set_state_val  = MESI_I;
        d_line_rd_en     = 0;
        d_line_rd_addr   = 0;
        d_vmeta_en       = 0;
        d_vmeta_set      = 0;
        d_vmeta_way      = 0;
        d_vline_rd_en    = 0;
        d_vline_rd_set   = 0;
        d_vline_rd_way   = 0;
    endtask

    // Task:   Fill cache line
    task fill_line(
        input [31:0] addr,
        input [2:0]  way,
        input [511:0] data,
        input [1:0]  mesi_state
    );
        @(posedge clk);
        d_fill_en   = 1;
        d_fill_addr = addr;
        d_fill_way  = way;
        d_fill_line = data;
        d_fill_mesi = mesi_state;
        
        @(posedge clk);
        d_fill_en = 0;
    endtask

    // Task:  Load (read) operation
    // Returns when op_en_r=1 (outputs valid)
    task load(input [31:0] addr);
        @(posedge clk);
        d_lookup_en       = 1;
        d_lookup_addr     = addr;
        d_lookup_is_store = 0;
        
        @(posedge clk);
        d_lookup_en = 0;
        
        // Wait for BRAM pipeline (op_en_r becomes 1)
        @(posedge clk);
        // *** Outputs are valid NOW - check immediately!   ***
    endtask

    // Task:   Store operation (two-cycle:   lookup + commit)
    task store(
        input [31:0] addr,
        input [63:0] data,
        input [7:0]  strb
    );
        // Cycle 1: Store lookup
        @(posedge clk);
        d_lookup_en       = 1;
        d_lookup_addr     = addr;
        d_lookup_is_store = 1;
        
        @(posedge clk);
        d_lookup_en = 0;
        
        @(posedge clk);
        d_store_en    = 1;
        d_store_wdata = data;
        d_store_wstrb = strb;
        
   
        @(posedge clk);
        d_store_en = 0;
    endtask

    // Task:  Read full line
    task read_line(input [31:0] addr);
        @(posedge clk);
        d_line_rd_en   = 1;
        d_line_rd_addr = addr;
        
        @(posedge clk);
        d_line_rd_en = 0;
        
        // Wait for result (op_en_r=1)
        @(posedge clk);
        // *** d_line_rd_valid and d_line_rd_data valid NOW ***
    endtask

    // Task:  Set MESI state
    task set_mesi(
        input [31:0] addr,
        input [2:0]  way,
        input [1:0]  new_state
    );
        @(posedge clk);
        d_set_state_en   = 1;
        d_set_state_addr = addr;
        d_set_state_way  = way;
        d_set_state_val  = new_state;
        
        @(posedge clk);
        d_set_state_en = 0;
    endtask

    // Task:  Read victim metadata
    task read_vmeta(
        input [5:0] set_idx,
        input [2:0] way
    );
        @(posedge clk);
        d_vmeta_en  = 1;
        d_vmeta_set = set_idx;
        d_vmeta_way = way;
        
        @(posedge clk);
        d_vmeta_en = 0;
        
        // Wait for result
        @(posedge clk);
        // d_vmeta_valid and other outputs are valid NOW
    endtask

    // Task: Read victim line
    task read_vline(
        input [5:0] set_idx,
        input [2:0] way
    );
        @(posedge clk);
        d_vline_rd_en  = 1;
        d_vline_rd_set = set_idx;
        d_vline_rd_way = way;
        
        @(posedge clk);
        d_vline_rd_en = 0;
        
        // Wait for result
        @(posedge clk);
        // d_vline_rd_valid and other outputs are valid NOW
    endtask

    // ================================================================
    // Test Sequence
    // ================================================================
    initial begin
        $display("========================================");
        $display("   D-Cache Testbench Starting");
        $display("========================================");
        
        // Reset
        rst_n = 0;
        reset_inputs();
        #20;
        rst_n = 1;
        #20;
        
//        // ========================================
//        // TEST 1: Basic Fill + Load
//        // ========================================
//        $display("\n[TEST 1] Fill line in Shared state and Load");
//        fill_line(
//            .addr(32'h0000_1000),
//            .way(3'd0),
//            .data({448'h0, 64'hDEAD_BEEF_CAFE_BABE}),
//            .mesi_state(MESI_S)
//        );
//        #20;
        
//        load(. addr(32'h0000_1000));  // Word 0
//        #1;  // Small delay for signals to settle
//        $display("  Load Hit=%b, Valid=%b, Data=%h, MESI=%b, Dirty=%b",
//                 d_hit, d_rvalid, d_rdata, d_mesi_state, d_dirty);
//        #20;
        
        // ========================================
        // TEST 2: Store Operation
//        // ========================================
//        $display("\n[TEST 2] Store operation (two-cycle handshake)");
//        fill_line(
//            .addr(32'h0000_2000),
//            .way(3'd1),
//            .data({448'h0, 64'h1111_2222_3333_4444}),
//            .mesi_state(MESI_E)
//        );
//        #20;
        
//        // Upgrade to Modified (simulate controller)
//        set_mesi(.addr(32'h0000_2000), .way(3'd1), .new_state(MESI_M));
//        #10;
        
//        // Perform store
//        store(
//            .addr(32'h0000_2000),
//            .data(64'hAAAA_BBBB_CCCC_DDDD),
//            .strb(8'hFF)
//        );
//        #20;
        
//        // Read back to verify
//        load(.addr(32'h0000_2000));
//        #1;
//        $display("  After Store: Hit=%b, Data=%h, MESI=%b, Dirty=%b",
//                 d_hit, d_rdata, d_mesi_state, d_dirty);
//        #20;
        
//        // ========================================
//        // TEST 3:   Partial Store (Byte Enables)
//        // ========================================
//        $display("\n[TEST 3] Partial store (lower 4 bytes only)");
//        fill_line(
//            .addr(32'h0000_3000),
//            .way(3'd2),
//            .data({448'h0, 64'hFFFF_FFFF_FFFF_FFFF}),
//            .mesi_state(MESI_M)
//        );
//        #20;
        
//        store(
//            .addr(32'h0000_3000),
//            .data(64'h9999_8888_7777_6666),
//            .strb(8'b0000_1111)  // Only lower 4 bytes
//        );
//        #20;
        
//        load(.addr(32'h0000_3000));
//        #1;
//        $display("  Partial Store Result: Data=%h (should be FFFF_FFFF_7777_6666)",
//                 d_rdata);
//        #20;
        
//        // ========================================
//        // TEST 4: Different Words in Same Line
//        // ========================================
//        $display("\n[TEST 4] Access different words in same line");
//        fill_line(
//            .addr(32'h0000_4000),
//            .way(3'd3),
//            .data({
//                64'h0807_0605_0403_0201,  // Word 7
//                64'h1615_1413_1211_1009,  // Word 6
//                64'h2423_2221_1918_1716,  // Word 5
//                64'h3231_2928_2625_2423,  // Word 4
//                64'h4039_3837_3433_3231,  // Word 3
//                64'h4847_4645_4241_4039,  // Word 2
//                64'h5655_5453_5049_4847,  // Word 1
//                64'h6463_6261_5857_5655   // Word 0
//            }),
//            .mesi_state(MESI_S)
//        );
//        #20;
        
//        load(.addr(32'h0000_4000));  // Word 0
//        #1;
//        $display("  Word 0: Data=%h", d_rdata);
//        #10;
        
//        load(.addr(32'h0000_4008));  // Word 1
//        #1;
//        $display("  Word 1: Data=%h", d_rdata);
//        #10;
        
//        load(.addr(32'h0000_4018));  // Word 3
//        #1;
//        $display("  Word 3: Data=%h", d_rdata);
//        #20;
        
//        // ========================================
//        // TEST 5: Full Line Read
//        // ========================================
//        $display("\n[TEST 5] Full line read (for eviction/snoop)");
//        read_line(.addr(32'h0000_4000));
//        #1;
//        $display("  Line Read Valid=%b, Data[63:0]=%h",
//                 d_line_rd_valid, d_line_rd_data[63:0]);
//        #20;
        
//        // ========================================
//        // TEST 6: MESI State Transitions
//        // ========================================
//        $display("\n[TEST 6] MESI state transitions");
//        fill_line(
//            .addr(32'h0000_5000),
//            .way(3'd4),
//            .data({448'h0, 64'h5555_5555_5555_5555}),
//            .mesi_state(MESI_S)
//        );
//        #20;
        
//        load(.addr(32'h0000_5000));
//        #1;
//        $display("  Initial state: MESI=%b (S), Dirty=%b", d_mesi_state, d_dirty);
//        #10;
        
//        // Transition S ? I
//        set_mesi(.addr(32'h0000_5000), .way(3'd4), .new_state(MESI_I));
//        #20;
        
//        load(.addr(32'h0000_5000));
//        #1;
//        $display("  After invalidation: Hit=%b (should be 0)", d_hit);
//        #20;
        
//       // ========================================
//// TEST 7: Load During Store Lock
//// ========================================
//    $display("\n[TEST 7] Load can proceed during store-locked state");
//    fill_line(
//        .addr(32'h0000_6000),
//        .way(3'd5),
//        .data({448'h0, 64'hAAAA_AAAA_AAAA_AAAA}),
//        .mesi_state(MESI_M)
//    );
//    fill_line(
//        .addr(32'h0000_7000),
//        .way(3'd6),
//        .data({448'h0, 64'hBBBB_BBBB_BBBB_BBBB}),
//        .mesi_state(MESI_S)
//    );
//    #20;
    
//    // Start store lookup (manually, to avoid commit)
//    @(posedge clk);
//    d_lookup_en       = 1;
//    d_lookup_addr     = 32'h0000_6000;
//    d_lookup_is_store = 1;
    
//    @(posedge clk);
//    d_lookup_en = 0;
    
//    @(posedge clk);  // Wait for hit
//    @(posedge clk);  // Wait for lock
    
//    // Verify lock
//    if (! dut.last_hit_locked) begin
//        $display("  ERROR: Store didn't lock!");
//    end
    
//    // Now use LOAD task
//    load(. addr(32'h0000_7000));
    
//    #1;
//    if (d_lookup_stall) begin
//        $display("  ERROR: Load incorrectly stalled!");
//    end else begin
//        $display("  PASS: Load proceeded during store-locked state");
//    end
//    $display("  Load data: %h", d_rdata);
    
//    // Commit store manually
//    @(posedge clk);
//    d_store_en    = 1;
//    d_store_wdata = 64'hCCCC_CCCC_CCCC_CCCC;
//    d_store_wstrb = 8'hFF;
    
//    @(posedge clk);
//    d_store_en = 0;
    
//    #20;
        
//        // ========================================
//        // TEST 8: Store Stalling
//        // ========================================
//        $display("\n[TEST 8] Store lookup stalls when context locked");
        
//        // Start first store
//        @(posedge clk);
//        d_lookup_en       = 1;
//        d_lookup_addr     = 32'h0000_6000;
//        d_lookup_is_store = 1;
        
//        @(posedge clk);
//        d_lookup_en = 0;
        
//        @(posedge clk);  // Wait for hit/lock
        
//        // Try second store (should stall)
//        @(posedge clk);
//        d_lookup_en       = 1;
//        d_lookup_addr     = 32'h0000_7000;
//        d_lookup_is_store = 1;  // STORE
        
//        #1;
//        if (d_lookup_stall) begin
//            $display("  PASS: Store correctly stalled");
//        end else begin
//            $display("  ERROR:   Store should have stalled!");
//        end
        
//        @(posedge clk);
//        d_lookup_en = 0;
        
//        // Commit first store to unlock
//        @(posedge clk);
//        d_store_en    = 1;
//        d_store_wdata = 64'hDDDD_DDDD_DDDD_DDDD;
//        d_store_wstrb = 8'hFF;
        
//        @(posedge clk);
//        d_store_en = 0;
        
//        #50;   // ========================================
//// TEST 7: Load During Store Lock
//// ========================================
//    $display("\n[TEST 7] Load can proceed during store-locked state");
//    fill_line(
//        .addr(32'h0000_6000),
//        .way(3'd5),
//        .data({448'h0, 64'hAAAA_AAAA_AAAA_AAAA}),
//        .mesi_state(MESI_M)
//    );
//    fill_line(
//        .addr(32'h0000_7000),
//        .way(3'd6),
//        .data({448'h0, 64'hBBBB_BBBB_BBBB_BBBB}),
//        .mesi_state(MESI_S)
//    );
//    #20;
    
//    // Start store lookup (manually, to avoid commit)
//    @(posedge clk);
//    d_lookup_en       = 1;
//    d_lookup_addr     = 32'h0000_6000;
//    d_lookup_is_store = 1;
    
//    @(posedge clk);
//    d_lookup_en = 0;
    
//    @(posedge clk);  // Wait for hit
//    @(posedge clk);  // Wait for lock
    
//    // Verify lock
//    if (! dut.last_hit_locked) begin
//        $display("  ERROR: Store didn't lock!");
//    end
    
//    // Now use LOAD task
//    load(. addr(32'h0000_7000));
    
//    #1;
//    if (d_lookup_stall) begin
//        $display("  ERROR: Load incorrectly stalled!");
//    end else begin
//        $display("  PASS: Load proceeded during store-locked state");
//    end
//    $display("  Load data: %h", d_rdata);
    
//    // Commit store manually
//    @(posedge clk);
//    d_store_en    = 1;
//    d_store_wdata = 64'hCCCC_CCCC_CCCC_CCCC;
//    d_store_wstrb = 8'hFF;
    
//    @(posedge clk);
//    d_store_en = 0;
    
//    #20;
        
//        // ========================================
//        // TEST 8: Store Stalling
//        // ========================================
//        $display("\n[TEST 8] Store lookup stalls when context locked");
        
//        // Start first store
//        @(posedge clk);
//        d_lookup_en       = 1;
//        d_lookup_addr     = 32'h0000_6000;
//        d_lookup_is_store = 1;
        
//        @(posedge clk);
//        d_lookup_en = 0;
        
//        @(posedge clk);  // Wait for hit/lock
        
//        // Try second store (should stall)
//        @(posedge clk);
//        d_lookup_en       = 1;
//        d_lookup_addr     = 32'h0000_7000;
//        d_lookup_is_store = 1;  // STORE
        
//        #1;
//        if (d_lookup_stall) begin
//            $display("  PASS: Store correctly stalled");
//        end else begin
//            $display("  ERROR:   Store should have stalled!");
//        end
        
//        @(posedge clk);
//        d_lookup_en = 0;
        
//        // Commit first store to unlock
//        @(posedge clk);
//        d_store_en    = 1;
//        d_store_wdata = 64'hDDDD_DDDD_DDDD_DDDD;
//        d_store_wstrb = 8'hFF;
        
//        @(posedge clk);
//        d_store_en = 0;
        
//        #50;
        
        
        // TEST 9: Victim Metadata Read
    
      
        fill_line(
            .addr(32'h0000_8000),  // Set 0, Tag 0x00008
            .way(3'd7),
            .data({448'h0, 64'h9999_9999_9999_9999}),
            .mesi_state(MESI_M)
        );
        #20;
        
        read_vmeta(.set_idx(6'h00), .way(3'd7));
        #1;
       
        #20;
        
        // ========================================
        // TEST 10: Victim Line Read
        // ========================================
   
        read_vline(.set_idx(6'h00), .way(3'd7));
        #1;
      
        #20;
        

        
        $finish;
    end
    
   
endmodule