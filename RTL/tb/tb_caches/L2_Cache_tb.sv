`timescale 1ns / 1ps

module L2_Cache_tb;

    // ================================================================
    // Testbench Signals
    // ================================================================
    logic        clk;
    logic        rst_n;

    // Lookup interface
    logic        l2_lookup_en;
    logic [31:0] l2_lookup_addr;
    logic        l2_lookup_is_store;
    logic        l2_lookup_stall;

    // Store interface
    logic        l2_store_en;
    logic [63:0] l2_store_wdata;
    logic [7:0]  l2_store_wstrb;

    // Fill interface
    logic        l2_fill_en;
    logic [31:0] l2_fill_addr;
    logic [2:0]  l2_fill_way;
    logic [511:0] l2_fill_line;
    logic [1:0]  l2_fill_mesi;

    // MESI state update interface
    logic        l2_set_state_en;
    logic [31:0] l2_set_state_addr;
    logic [2:0]  l2_set_state_way;
    logic [1:0]  l2_set_state_val;

    // Line read interface
    logic        l2_line_rd_en;
    logic [31:0] l2_line_rd_addr;
    logic [511:0] l2_line_rd_data;
    logic        l2_line_rd_valid;

    // Victim metadata peek interface
    logic        l2_vmeta_en;
    logic [10:0] l2_vmeta_set;      // 11 bits for 2048 sets
    logic [2:0]  l2_vmeta_way;
    logic        l2_vmeta_valid;
    logic [14:0] l2_vmeta_tag;      // 15 bits for L2 tag
    logic        l2_vmeta_line_valid;
    logic [1:0]  l2_vmeta_mesi;
    logic        l2_vmeta_dirty;

    // Victim line read interface
    logic        l2_vline_rd_en;
    logic [10:0] l2_vline_rd_set;   // 11 bits for 2048 sets
    logic [2:0]  l2_vline_rd_way;
    logic        l2_vline_rd_valid;
    logic [511:0] l2_vline_rd_data;
    logic [14:0] l2_vline_rd_tag;   // 15 bits for L2 tag
    logic        l2_vline_rd_entry_valid;
    logic [1:0]  l2_vline_rd_mesi;
    logic        l2_vline_rd_dirty;

    // Outputs
    logic [63:0] l2_rdata;
    logic        l2_hit;
    logic        l2_rvalid;
    logic [2:0]  l2_hit_way;
    logic [1:0]  l2_mesi_state;
    logic        l2_dirty;
    logic        l2_lookup_valid;

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
    L2_Cache dut (
        .clk(clk),
        .rst_n(rst_n),
        
        // Lookup
        .l2_lookup_en(l2_lookup_en),
        .l2_lookup_addr(l2_lookup_addr),
        .l2_lookup_is_store(l2_lookup_is_store),
        .l2_lookup_stall(l2_lookup_stall),
        
        // Store
        .l2_store_en(l2_store_en),
        .l2_store_wdata(l2_store_wdata),
        .l2_store_wstrb(l2_store_wstrb),
        
        // Fill
        .l2_fill_en(l2_fill_en),
        .l2_fill_addr(l2_fill_addr),
        .l2_fill_way(l2_fill_way),
        .l2_fill_line(l2_fill_line),
        .l2_fill_mesi(l2_fill_mesi),
        
        // MESI state update
        .l2_set_state_en(l2_set_state_en),
        .l2_set_state_addr(l2_set_state_addr),
        .l2_set_state_way(l2_set_state_way),
        .l2_set_state_val(l2_set_state_val),
        
        // Line read
        .l2_line_rd_en(l2_line_rd_en),
        .l2_line_rd_addr(l2_line_rd_addr),
        .l2_line_rd_data(l2_line_rd_data),
        .l2_line_rd_valid(l2_line_rd_valid),
        
        // Victim metadata peek
        .l2_vmeta_en(l2_vmeta_en),
        .l2_vmeta_set(l2_vmeta_set),
        .l2_vmeta_way(l2_vmeta_way),
        .l2_vmeta_valid(l2_vmeta_valid),
        .l2_vmeta_tag(l2_vmeta_tag),
        .l2_vmeta_line_valid(l2_vmeta_line_valid),
        .l2_vmeta_mesi(l2_vmeta_mesi),
        .l2_vmeta_dirty(l2_vmeta_dirty),
        
        // Victim line read
        .l2_vline_rd_en(l2_vline_rd_en),
        .l2_vline_rd_set(l2_vline_rd_set),
        .l2_vline_rd_way(l2_vline_rd_way),
        .l2_vline_rd_valid(l2_vline_rd_valid),
        .l2_vline_rd_data(l2_vline_rd_data),
        .l2_vline_rd_tag(l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi(l2_vline_rd_mesi),
        .l2_vline_rd_dirty(l2_vline_rd_dirty),
        
        // Outputs
        .l2_rdata(l2_rdata),
        .l2_hit(l2_hit),
        .l2_rvalid(l2_rvalid),
        .l2_hit_way(l2_hit_way),
        .l2_mesi_state(l2_mesi_state),
        .l2_dirty(l2_dirty),
        .l2_lookup_valid(l2_lookup_valid)
    );

    // ================================================================
    // Test Tasks
    // ================================================================
    
    // Task: Reset all inputs
    task reset_inputs();
        l2_lookup_en      = 0;
        l2_lookup_addr    = 0;
        l2_lookup_is_store = 0;
        l2_store_en       = 0;
        l2_store_wdata    = 0;
        l2_store_wstrb    = 0;
        l2_fill_en        = 0;
        l2_fill_addr      = 0;
        l2_fill_way       = 0;
        l2_fill_line      = 0;
        l2_fill_mesi      = MESI_I;
        l2_set_state_en   = 0;
        l2_set_state_addr = 0;
        l2_set_state_way  = 0;
        l2_set_state_val  = MESI_I;
        l2_line_rd_en     = 0;
        l2_line_rd_addr   = 0;
        l2_vmeta_en       = 0;
        l2_vmeta_set      = 0;
        l2_vmeta_way      = 0;
        l2_vline_rd_en    = 0;
        l2_vline_rd_set   = 0;
        l2_vline_rd_way   = 0;
    endtask

    // Task: Fill cache line
    task fill_line(
        input [31:0] addr,
        input [2:0]  way,
        input [511:0] data,
        input [1:0]  mesi_state
    );
        @(posedge clk);
        l2_fill_en   = 1;
        l2_fill_addr = addr;
        l2_fill_way  = way;
        l2_fill_line = data;
        l2_fill_mesi = mesi_state;
        
        @(posedge clk);
        l2_fill_en = 0;
    endtask

    // Task: Load (read) operation
    // Returns when op_en_r=1 (outputs valid)
    task load(input [31:0] addr);
        @(posedge clk);
        l2_lookup_en       = 1;
        l2_lookup_addr     = addr;
        l2_lookup_is_store = 0;
        
        @(posedge clk);
        l2_lookup_en = 0;
        
        // Wait for BRAM pipeline (op_en_r becomes 1)
        @(posedge clk);
        // *** Outputs are valid NOW - check immediately! ***
    endtask

    // Task: Store operation (two-cycle: lookup + commit)
    task store(
        input [31:0] addr,
        input [63:0] data,
        input [7:0]  strb
    );
        // Cycle 1: Store lookup
        @(posedge clk);
        l2_lookup_en       = 1;
        l2_lookup_addr     = addr;
        l2_lookup_is_store = 1;
        
        @(posedge clk);
        l2_lookup_en = 0;
        
        @(posedge clk);
        l2_store_en    = 1;
        l2_store_wdata = data;
        l2_store_wstrb = strb;
        
        @(posedge clk);
        l2_store_en = 0;
    endtask

    // Task: Read full line
    task read_line(input [31:0] addr);
        @(posedge clk);
        l2_line_rd_en   = 1;
        l2_line_rd_addr = addr;
        
        @(posedge clk);
        l2_line_rd_en = 0;
        
        // Wait for result (op_en_r=1)
        @(posedge clk);
        // *** l2_line_rd_valid and l2_line_rd_data valid NOW ***
    endtask

    // Task: Set MESI state
    task set_mesi(
        input [31:0] addr,
        input [2:0]  way,
        input [1:0]  new_state
    );
        @(posedge clk);
        l2_set_state_en   = 1;
        l2_set_state_addr = addr;
        l2_set_state_way  = way;
        l2_set_state_val  = new_state;
        
        @(posedge clk);
        l2_set_state_en = 0;
    endtask

    // Task: Read victim metadata
    task read_vmeta(
        input [10:0] set_idx,
        input [2:0]  way
    );
        @(posedge clk);
        l2_vmeta_en  = 1;
        l2_vmeta_set = set_idx;
        l2_vmeta_way = way;
        
        @(posedge clk);
        l2_vmeta_en = 0;
        
        // Wait for result
        @(posedge clk);
        // l2_vmeta_valid and other outputs are valid NOW
    endtask

    // Task: Read victim line
    task read_vline(
        input [10:0] set_idx,
        input [2:0]  way
    );
        @(posedge clk);
        l2_vline_rd_en  = 1;
        l2_vline_rd_set = set_idx;
        l2_vline_rd_way = way;
        
        @(posedge clk);
        l2_vline_rd_en = 0;
        
        // Wait for result
        @(posedge clk);
        // l2_vline_rd_valid and other outputs are valid NOW
    endtask

    // ================================================================
    // Test Sequence
    // ================================================================
    initial begin
      
        rst_n = 0;
        reset_inputs();
        #20;
        rst_n = 1;
        #20;
        
        // ========================================
        // // TEST 1: Basic Fill + Load
        // // ========================================
        // $display("\n[TEST 1] Fill line in Shared state and Load");
        // fill_line(
        //     .addr(32'h0002_0000),  // Set 0, Tag 0x00001
        //     .way(3'd0),
        //     .data({448'h0, 64'hDEAD_BEEF_CAFE_BABE}),
        //     .mesi_state(MESI_S)
        // );
        // #20;
        
        // load(.addr(32'h0002_0000));  // Word 0
        // #1;  // Small delay for signals to settle
        // $display("  Load Hit=%b, Valid=%b, Data=%h, MESI=%b, Dirty=%b",
        //          l2_hit, l2_rvalid, l2_rdata, l2_mesi_state, l2_dirty);
        // #20;
        
        // // ========================================
        // // TEST 2: Store Operation
        // // ========================================
        // $display("\n[TEST 2] Store operation (two-cycle handshake)");
        // fill_line(
        //     .addr(32'h0004_0000),  // Set 0, Tag 0x00002
        //     .way(3'd1),
        //     .data({448'h0, 64'h1111_2222_3333_4444}),
        //     .mesi_state(MESI_E)
        // );
        // #20;
        
        // // Upgrade to Modified (simulate controller)
        // set_mesi(.addr(32'h0004_0000), .way(3'd1), .new_state(MESI_M));
        // #10;
        
        // // Perform store
        // store(
        //     .addr(32'h0004_0000),
        //     .data(64'hAAAA_BBBB_CCCC_DDDD),
        //     .strb(8'hFF)
        // );
        // #20;
        
        // // Read back to verify
        // load(.addr(32'h0004_0000));
        // #1;
     
        // #20;
        
        // ========================================
        // // TEST 3: Partial Store (Byte Enables)
        // // ========================================
        // $display("\n[TEST 3] Partial store (lower 4 bytes only)");
        // fill_line(
        //     .addr(32'h0006_0000),  // Set 0, Tag 0x00003
        //     .way(3'd2),
        //     .data({448'h0, 64'hFFFF_FFFF_FFFF_FFFF}),
        //     .mesi_state(MESI_M)
        // );
        // #20;
        
        // store(
        //     .addr(32'h0006_0000),
        //     .data(64'h9999_8888_7777_6666),
        //     .strb(8'b0000_1111)  // Only lower 4 bytes
        // );
        // #20;
        
        // load(.addr(32'h0006_0000));
        // #1;
        // $display("  Partial Store Result: Data=%h (expected FFFF_FFFF_7777_6666)",
        //          l2_rdata);
        // #20;
        
        // // ========================================
        // // TEST 4: Different Words in Same Line
        // // ========================================
        // $display("\n[TEST 4] Access different words in same line");
        // fill_line(
        //     .addr(32'h0008_0000),  // Set 0, Tag 0x00004
        //     .way(3'd3),
        //     .data({
        //         64'h0807_0605_0403_0201,  // Word 7
        //         64'h1615_1413_1211_1009,  // Word 6
        //         64'h2423_2221_1918_1716,  // Word 5
        //         64'h3231_2928_2625_2423,  // Word 4
        //         64'h4039_3837_3433_3231,  // Word 3
        //         64'h4847_4645_4241_4039,  // Word 2
        //         64'h5655_5453_5049_4847,  // Word 1
        //         64'h6463_6261_5857_5655   // Word 0
        //     }),
        //     .mesi_state(MESI_S)
        // );
        // #20;
        
        // load(.addr(32'h0008_0000));  // Word 0
        // #1;
              
        // load(.addr(32'h0008_0008));  // Word 1
        // #1;
        // #10;
        
        // load(.addr(32'h0008_0018));  // Word 3
        // #1;
        // #20;
        
        // // ========================================
        // // TEST 5: Full Line Read
        // // ========================================
        // $display("\n[TEST 5] Full line read (for eviction/snoop)");
        // read_line(.addr(32'h0008_0000));
        // #1;
        // $display("  Line Read Valid=%b, Data[63:0]=%h",
        //          l2_line_rd_valid, l2_line_rd_data[63:0]);
        // #20;
        
        // // ========================================
        // // TEST 6: MESI State Transitions
        // // ========================================
        // $display("\n[TEST 6] MESI state transitions");
        // fill_line(
        //     .addr(32'h000A_0000),  // Set 0, Tag 0x00005
        //     .way(3'd4),
        //     .data({448'h0, 64'h5555_5555_5555_5555}),
        //     .mesi_state(MESI_S)
        // );
        // #20;
        
        // load(.addr(32'h000A_0000));
        // #1;
        
        // #10;
        
        // // Transition S ? I
        // set_mesi(.addr(32'h000A_0000), .way(3'd4), .new_state(MESI_I));
        // #20;
        
        // load(.addr(32'h000A_0000));
        // #1;
        
        // #20;
        
        // // ========================================
        // // TEST 7: Load During Store Lock
        // // ========================================
        // $display("\n[TEST 7] Load can proceed during store-locked state");
        // fill_line(
        //     .addr(32'h000C_0000),  // Set 0, Tag 0x00006
        //     .way(3'd5),
        //     .data({448'h0, 64'hAAAA_AAAA_AAAA_AAAA}),
        //     .mesi_state(MESI_M)
        // );
        // fill_line(
        //     .addr(32'h000E_0000),  // Set 0, Tag 0x00007
        //     .way(3'd6),
        //     .data({448'h0, 64'hBBBB_BBBB_BBBB_BBBB}),
        //     .mesi_state(MESI_S)
        // );
        // #20;
        
        // // Start store lookup (manually, to avoid commit)
        // @(posedge clk);
        // l2_lookup_en       = 1;
        // l2_lookup_addr     = 32'h000C_0000;
        // l2_lookup_is_store = 1;
        
        // @(posedge clk);
        // l2_lookup_en = 0;
        
        // @(posedge clk);  // Wait for hit
        // @(posedge clk);  // Wait for lock
        
        // // Verify lock
        // if (!dut.last_hit_locked) begin
        //     $display("  ERROR: Store didn't lock!");
        // end
        
        // // Now use LOAD task
        // load(.addr(32'h000E_0000));
        
        // #1;
        // if (l2_lookup_stall) begin
        //     $display("  ERROR: Load incorrectly stalled!");
        // end else begin
        //     $display("  PASS: Load proceeded during store-locked state");
        // end
        // $display("  Load data: %h", l2_rdata);
        
        // // Commit store manually
        // @(posedge clk);
        // l2_store_en    = 1;
        // l2_store_wdata = 64'hCCCC_CCCC_CCCC_CCCC;
        // l2_store_wstrb = 8'hFF;
        
        // @(posedge clk);
        // l2_store_en = 0;

        //  load(.addr(32'h000C_0000));
        
        // #30;
        
        // // ========================================
        // // TEST 8: Store Stalling
        // // ========================================
        // $display("\n[TEST 8] Store lookup stalls when context locked");
        
        // // Start first store
        // @(posedge clk);
        // l2_lookup_en       = 1;
        // l2_lookup_addr     = 32'h000C_0000;
        // l2_lookup_is_store = 1;
        
        // @(posedge clk);
        // l2_lookup_en = 0;
        
        // @(posedge clk);  // Wait for hit/lock
        
        // // Try second store (should stall)
        // @(posedge clk);
        // l2_lookup_en       = 1;
        // l2_lookup_addr     = 32'h000E_0000;
        // l2_lookup_is_store = 1;  // STORE
        
        // #1;
        // if (l2_lookup_stall) begin
        //     $display("  PASS: Store correctly stalled");
        // end else begin
        //     $display("  ERROR: Store should have stalled!");
        // end
        
        // @(posedge clk);
        // l2_lookup_en = 0;
        
        // // Commit first store to unlock
        // @(posedge clk);
        // l2_store_en    = 1;
        // l2_store_wdata = 64'hDDDD_DDDD_DDDD_DDDD;
        // l2_store_wstrb = 8'hFF;
        
        // @(posedge clk);
        // l2_store_en = 0;
        
        // #10;
        
        // ========================================
        // TEST 9: Victim Metadata Read
        // ========================================
        $display("\n[TEST 9] Victim metadata peek");
        fill_line(
            .addr(32'h0010_0000),  // Set 0, Tag 0x00008
            .way(3'd7),
            .data({448'h0, 64'h9999_9999_9999_9999}),
            .mesi_state(MESI_M)
        );
        #20;
        
        read_vmeta(.set_idx(11'h000), .way(3'd7));
        #1;
       
        #20;
        
        // ========================================
        // TEST 10: Victim Line Read
        // ========================================
        $display("\n[TEST 10] Victim line read");
        read_vline(.set_idx(11'h000), .way(3'd7));
        #1;
        
        #20;
        
    //     // ========================================
    //     // TEST 11: Different Sets (L2-specific)
    //     // ========================================
    //     $display("\n[TEST 11] Access different sets in L2");
    //    // Fill set 0
    //     fill_line(
    //         .addr(32'h0002_0000),  // Set 0 (bits [16:6] = 0)
    //         .way(3'd0),
    //         .data({448'h0, 64'hAAAA_AAAA_AAAA_AAAA}),
    //         .mesi_state(MESI_S)
    //     );
        
    //     // Fill set 1
    //     fill_line(
    //         .addr(32'h0002_0040),  // Set 1 (bits [16:6] = 1)
    //         .way(3'd0),
    //         .data({448'h0, 64'hBBBB_BBBB_BBBB_BBBB}),
    //         .mesi_state(MESI_S)
    //     );
        
    //     // Fill set 2047 (last set)
    //     fill_line(
    //         .addr(32'h0003_FFC0),  // Set 2047 (bits [16:6] = 0x7FF)
    //         .way(3'd0),
    //         .data({448'h0, 64'hCCCC_CCCC_CCCC_CCCC}),
    //         .mesi_state(MESI_S)
    //     );
    //     #20;
        
    //     load(.addr(32'h0002_0000));  // Set 0
       
    //     #10;
        
    //     load(.addr(32'h0002_0040));  // Set 1
        
    //     #10;
        
    //     load(.addr(32'h0003_FFC0));  // Set 2047
       
    //     #20;
        
    //     // ========================================
    //     // TEST 12: All 8 Ways
    //     // ========================================
    //     $display("\n[TEST 12] Fill and access all 8 ways in same set");
    //     for (int w = 0; w < 8; w++) begin
    //         fill_line(
    //             .addr(32'h0002_0000 + (w << 17)),  // Different tags, same set
    //             .way(w[2:0]),
    //             .data({448'h0, 64'(w * 64'h1111_1111_1111_1111)}),
    //             .mesi_state(MESI_S)
    //         );
    //     end
    //     #20;
        
    //     for (int w = 0; w < 8; w++) begin
    //         load(.addr(32'h0002_0000 + (w << 17)));
    //         #1;
    //         $display("  Way %0d: Hit=%b, Data=%h", w, l2_hit, l2_rdata);
    //         #10;
    //     end
        
      
        
        #100;
       
    end
    
  

endmodule