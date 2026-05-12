`timescale 1ns/1ps

module L1_Dcache_Controller_tb;

    // ================================================================
    // Signals
    // ================================================================
    logic        clk;
    logic        rst_n;
    
    // CPU <-> Controller
    logic        ldst_valid;
    logic        ldst_is_store;
    logic [31:0] ldst_addr;
    logic [63:0] ldst_wdata;
    logic [7:0]  ldst_wstrb;
    logic        ldst_ready;
    logic        ldst_resp_valid;
    logic [63:0] ldst_rdata;
    
    // Controller <-> Cache
    logic        d_lookup_en;
    logic [31:0] d_lookup_addr;
    logic        d_lookup_is_store;
    logic        d_lookup_stall;
    logic        d_store_en;
    logic [63:0] d_store_wdata;
    logic [7:0]  d_store_wstrb;
    logic        d_fill_en;
    logic [31:0] d_fill_addr;
    logic [2:0]  d_fill_way;
    logic [511:0] d_fill_line;
    logic [1:0]  d_fill_mesi;
    logic        d_set_state_en;
    logic [31:0] d_set_state_addr;
    logic [2:0]  d_set_state_way;
    logic [1:0]  d_set_state_val;
    logic        d_line_rd_en;
    logic [31:0] d_line_rd_addr;
    logic [511:0] d_line_rd_data;
    logic        d_line_rd_valid;
    logic        d_vmeta_en;
    logic [5:0]  d_vmeta_set;
    logic [2:0]  d_vmeta_way;
    logic        d_vmeta_valid;
    logic [19:0] d_vmeta_tag;
    logic        d_vmeta_line_valid;
    logic [1:0]  d_vmeta_mesi;
    logic        d_vmeta_dirty;
    logic        d_vline_rd_en;
    logic [5:0]  d_vline_rd_set;
    logic [2:0]  d_vline_rd_way;
    logic        d_vline_rd_valid;
    logic [511:0] d_vline_rd_data;
    logic [19:0] d_vline_rd_tag;
    logic        d_vline_rd_entry_valid;
    logic [1:0]  d_vline_rd_mesi;
    logic        d_vline_rd_dirty;
    logic [63:0] d_rdata;
    logic        d_hit;
    logic        d_rvalid;
    logic [2:0]  d_hit_way;
    logic [1:0]  d_mesi_state;
    logic        d_dirty;
    logic        d_lookup_valid;
    
    // Controller <-> Arbiter
    logic        d_req_valid;
    logic        d_req_ready;
    logic [2:0]  d_req_cmd;
    logic [31:0] d_req_addr;
    logic [1:0]  d_req_src;
    logic        bus_req_valid;
    logic [2:0]  bus_req_cmd;
    logic [31:0] bus_req_addr;
    logic [1:0]  bus_req_src;
    logic        snp_rsp_valid;
    logic        snp_rsp_hit;
    logic [1:0]  snp_rsp_state;
    logic        snp_rsp_has_data;
    logic        snp_rsp_ack;
    logic        sup_valid;
    logic        sup_ready;
    logic [63:0] sup_data;
    logic [2:0]  sup_beat;
    logic        sup_last;
    logic        bus_dat_valid;
    logic [1:0]  bus_dat_dst;
    logic [63:0] bus_dat_data;
    logic [2:0]  bus_dat_beat;
    logic        bus_dat_last;
    logic        bus_gnt_valid;
    logic [1:0]  bus_gnt_dst;
    logic [31:0] bus_gnt_addr;
    logic [1:0]  bus_gnt_state;
    logic        bus_gnt_ok;

    // MESI states
    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;
    
    // Commands
    localparam logic [2:0] CMD_GETS = 3'b000;
    localparam logic [2:0] CMD_GETM = 3'b001;
    localparam logic [2:0] CMD_UPGR = 3'b010;
    localparam logic [2:0] CMD_WB   = 3'b011;

    // Test counters
    int test_num = 0;
    int test_passed = 0;
    int test_failed = 0;

    // ================================================================
    // Clock Generation
    // ================================================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // ================================================================
    // DUT Instantiation:  Cache Storage
    // ================================================================
    L1_Dcache u_cache (
        .clk(clk),
        .rst_n(rst_n),
        . d_lookup_en(d_lookup_en),
        .d_lookup_addr(d_lookup_addr),
        .d_lookup_is_store(d_lookup_is_store),
        .d_lookup_stall(d_lookup_stall),
        .d_store_en(d_store_en),
        .d_store_wdata(d_store_wdata),
        .d_store_wstrb(d_store_wstrb),
        .d_fill_en(d_fill_en),
        .d_fill_addr(d_fill_addr),
        .d_fill_way(d_fill_way),
        .d_fill_line(d_fill_line),
        .d_fill_mesi(d_fill_mesi),
        .d_set_state_en(d_set_state_en),
        .d_set_state_addr(d_set_state_addr),
        .d_set_state_way(d_set_state_way),
        .d_set_state_val(d_set_state_val),
        .d_line_rd_en(d_line_rd_en),
        .d_line_rd_addr(d_line_rd_addr),
        .d_line_rd_data(d_line_rd_data),
        .d_line_rd_valid(d_line_rd_valid),
        .d_vmeta_en(d_vmeta_en),
        .d_vmeta_set(d_vmeta_set),
        .d_vmeta_way(d_vmeta_way),
        .d_vmeta_valid(d_vmeta_valid),
        .d_vmeta_tag(d_vmeta_tag),
        .d_vmeta_line_valid(d_vmeta_line_valid),
        .d_vmeta_mesi(d_vmeta_mesi),
        .d_vmeta_dirty(d_vmeta_dirty),
        .d_vline_rd_en(d_vline_rd_en),
        .d_vline_rd_set(d_vline_rd_set),
        .d_vline_rd_way(d_vline_rd_way),
        .d_vline_rd_valid(d_vline_rd_valid),
        .d_vline_rd_data(d_vline_rd_data),
        .d_vline_rd_tag(d_vline_rd_tag),
        .d_vline_rd_entry_valid(d_vline_rd_entry_valid),
        .d_vline_rd_mesi(d_vline_rd_mesi),
        .d_vline_rd_dirty(d_vline_rd_dirty),
        .d_rdata(d_rdata),
        .d_hit(d_hit),
        .d_rvalid(d_rvalid),
        .d_hit_way(d_hit_way),
        .d_mesi_state(d_mesi_state),
        .d_dirty(d_dirty),
        .d_lookup_valid(d_lookup_valid)
    );

    // ================================================================
    // DUT Instantiation: Controller
    // ================================================================
    L1_Dcache_Controller #(
        .ADDR_WIDTH(32),
        .CORE_DATA_WIDTH(64),
        .SET_BITS_LEN(6),
        .TAG_BITS_LEN(20),
        .SRC_ID(0)
    ) u_controller (
        .clk(clk),
        .rst_n(rst_n),
        .ldst_valid(ldst_valid),
        .ldst_is_store(ldst_is_store),
        .ldst_addr(ldst_addr),
        .ldst_wdata(ldst_wdata),
        .ldst_wstrb(ldst_wstrb),
        .ldst_ready(ldst_ready),
        .ldst_resp_valid(ldst_resp_valid),
        .ldst_rdata(ldst_rdata),
        .d_lookup_en(d_lookup_en),
        .d_lookup_addr(d_lookup_addr),
        .d_lookup_is_store(d_lookup_is_store),
        .d_lookup_stall(d_lookup_stall),
        .d_store_en(d_store_en),
        .d_store_wdata(d_store_wdata),
        .d_store_wstrb(d_store_wstrb),
        .d_fill_en(d_fill_en),
        .d_fill_addr(d_fill_addr),
        .d_fill_way(d_fill_way),
        .d_fill_line(d_fill_line),
        .d_fill_mesi(d_fill_mesi),
        .d_set_state_en(d_set_state_en),
        .d_set_state_addr(d_set_state_addr),
        .d_set_state_way(d_set_state_way),
        .d_set_state_val(d_set_state_val),
        .d_line_rd_en(d_line_rd_en),
        .d_line_rd_addr(d_line_rd_addr),
        .d_line_rd_data(d_line_rd_data),
        .d_line_rd_valid(d_line_rd_valid),
        .d_vmeta_en(d_vmeta_en),
        .d_vmeta_set(d_vmeta_set),
        .d_vmeta_way(d_vmeta_way),
        .d_vmeta_valid(d_vmeta_valid),
        .d_vmeta_tag(d_vmeta_tag),
        .d_vmeta_line_valid(d_vmeta_line_valid),
        .d_vmeta_mesi(d_vmeta_mesi),
        .d_vmeta_dirty(d_vmeta_dirty),
        .d_vline_rd_en(d_vline_rd_en),
        .d_vline_rd_set(d_vline_rd_set),
        .d_vline_rd_way(d_vline_rd_way),
        .d_vline_rd_valid(d_vline_rd_valid),
        .d_vline_rd_data(d_vline_rd_data),
        .d_vline_rd_tag(d_vline_rd_tag),
        .d_vline_rd_entry_valid(d_vline_rd_entry_valid),
        .d_vline_rd_mesi(d_vline_rd_mesi),
        .d_vline_rd_dirty(d_vline_rd_dirty),
        .d_rdata(d_rdata),
        .d_hit(d_hit),
        .d_rvalid(d_rvalid),
        .d_hit_way(d_hit_way),
        .d_mesi_state(d_mesi_state),
        .d_dirty(d_dirty),
        .d_lookup_valid(d_lookup_valid),
        .d_req_valid(d_req_valid),
        .d_req_ready(d_req_ready),
        .d_req_cmd(d_req_cmd),
        .d_req_addr(d_req_addr),
        .d_req_src(d_req_src),
        .bus_req_valid(bus_req_valid),
        .bus_req_cmd(bus_req_cmd),
        .bus_req_addr(bus_req_addr),
        .bus_req_src(bus_req_src),
        .snp_rsp_valid(snp_rsp_valid),
        .snp_rsp_hit(snp_rsp_hit),
        .snp_rsp_state(snp_rsp_state),
        .snp_rsp_has_data(snp_rsp_has_data),
        .snp_rsp_ack(snp_rsp_ack),
        .sup_valid(sup_valid),
        .sup_ready(sup_ready),
        .sup_data(sup_data),
        .sup_beat(sup_beat),
        .sup_last(sup_last),
        .bus_dat_valid(bus_dat_valid),
        .bus_dat_dst(bus_dat_dst),
        .bus_dat_data(bus_dat_data),
        .bus_dat_beat(bus_dat_beat),
        .bus_dat_last(bus_dat_last),
        .bus_gnt_valid(bus_gnt_valid),
        .bus_gnt_dst(bus_gnt_dst),
        .bus_gnt_addr(bus_gnt_addr),
        .bus_gnt_state(bus_gnt_state),
        .bus_gnt_ok(bus_gnt_ok)
    );

    // ================================================================
    // Enhanced Arbiter Model
    // ================================================================
    logic [31:0] arb_pending_addr;
    logic [2:0]  arb_pending_cmd;
    logic        arb_pending;
    int          arb_beat_count;
    int          arb_delay_counter;
    logic        send_nack;
    
    typedef enum logic [2:0] {
        ARB_IDLE,
        ARB_WAIT_DELAY,
        ARB_SEND_DATA,
        ARB_SEND_GRANT,
        ARB_WAIT_SUPPLY
    } arb_state_t;
    
    arb_state_t arb_state;
   
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            d_req_ready   <= 0;
            bus_dat_valid <= 0;
            bus_dat_data  <= 0;
            bus_dat_beat  <= 0;
            bus_dat_last  <= 0;
            bus_dat_dst   <= 0;
            bus_gnt_valid <= 0;
            bus_gnt_ok    <= 0;
            bus_gnt_state <= MESI_I;
            bus_gnt_dst   <= 0;
            bus_gnt_addr  <= 0;
            sup_ready     <= 0;
            arb_pending   <= 0;
            arb_state     <= ARB_IDLE;
            arb_beat_count <= 0;
            arb_delay_counter <= 0;
        end else begin
            // Defaults
            d_req_ready   <= 0;
            bus_dat_valid <= 0;
            bus_gnt_valid <= 0;
            sup_ready     <= 1;  // Always ready for supply
            
            case (arb_state)
                ARB_IDLE: begin
                    d_req_ready <= 1;
                    if (d_req_valid) begin
                        arb_pending_addr <= d_req_addr;
                        arb_pending_cmd  <= d_req_cmd;
                        arb_pending      <= 1;
                        arb_delay_counter <= 2;  // Add 2 cycle delay
                        arb_state <= ARB_WAIT_DELAY;
                    end
                end
                
                ARB_WAIT_DELAY: begin
                    if (arb_delay_counter > 0) begin
                        arb_delay_counter <= arb_delay_counter - 1;
                    end else begin
                        arb_beat_count <= 0;
                        case (arb_pending_cmd)
                            CMD_GETS, CMD_GETM:  arb_state <= ARB_SEND_DATA;
                            CMD_UPGR:  arb_state <= ARB_SEND_GRANT;
                            CMD_WB: arb_state <= ARB_WAIT_SUPPLY;
                        endcase
                    end
                end
                
                ARB_SEND_DATA: begin
                    bus_dat_valid <= 1;
                    bus_dat_dst   <= 2'd0;
                    bus_dat_beat  <= arb_beat_count[2:0];
                    // Generate unique data per beat
                    bus_dat_data  <= {arb_pending_addr[31:6], arb_beat_count[2:0], 3'b000, 
                                     arb_pending_addr[31:6], arb_beat_count[2:0], 3'b000};
                    bus_dat_last  <= (arb_beat_count == 7);
                    
                    if (arb_beat_count == 7) begin
                        arb_state <= ARB_SEND_GRANT;
                    end else begin
                        arb_beat_count <= arb_beat_count + 1;
                    end
                end
                
                ARB_SEND_GRANT: begin
                    
                    bus_gnt_valid <= 1;
                    bus_gnt_ok    <= ! send_nack;
                    bus_gnt_dst   <= 2'd0;
                    bus_gnt_addr  <= arb_pending_addr;
                    
                    case (arb_pending_cmd)
                        CMD_GETM: bus_gnt_state <= MESI_E;  // Grant E, will transition to M
                        CMD_GETS:  bus_gnt_state <= MESI_E;
                        CMD_UPGR:  bus_gnt_state <= MESI_M;
                        default:   bus_gnt_state <= MESI_I;
                    endcase
                    
                    arb_pending <= 0;
                    arb_state <= ARB_IDLE;
                end
                
                ARB_WAIT_SUPPLY: begin
                    if (sup_valid && sup_last) begin
                        arb_pending <= 0;
                        arb_state <= ARB_IDLE;
                    end
                end
            endcase
        end
    end

    // ================================================================
    // Helper Tasks
    // ================================================================
    task cpu_load(input [31:0] addr, output [63:0] data);
        begin
            @(posedge clk);
            ldst_valid    = 1;
            ldst_is_store = 0;
            ldst_addr     = addr;
            ldst_wdata    = 0;
            ldst_wstrb    = 0;
            
            wait(ldst_ready);
            @(posedge clk);
            ldst_valid = 0;
            
            wait(ldst_resp_valid);
            data = ldst_rdata;
            @(posedge clk);
        end
    endtask

    task cpu_store(input [31:0] addr, input [63:0] data, input [7:0] strb);
        begin
            @(posedge clk);
            ldst_valid    = 1;
            ldst_is_store = 1;
            ldst_addr     = addr;
            ldst_wdata    = data;
            ldst_wstrb    = strb;
            
            wait(ldst_ready);
            @(posedge clk);
            ldst_valid = 0;
            
            wait(ldst_resp_valid);
            @(posedge clk);
        end
    endtask

    task send_snoop(input [31:0] addr, input [2:0] cmd, input [1:0] src);
        begin
            @(posedge clk);
            bus_req_valid = 1;
            bus_req_cmd   = cmd;
            bus_req_addr  = addr;
            bus_req_src   = src;
            
            @(posedge clk);
            bus_req_valid = 0;
            
            wait(snp_rsp_valid);
            @(posedge clk);
        end
    endtask

    task check_result(input string test_name, input logic pass);
        begin
            test_num++;
            if (pass) begin
                $display("  [PASS] Test %0d: %s", test_num, test_name);
                test_passed++;
            end else begin
                $display("  [FAIL] Test %0d: %s", test_num, test_name);
                test_failed++;
            end
        end
    endtask

    // ================================================================
    // Test Stimulus
    // ================================================================
    logic [63:0] rdata;
    logic [1:0] captured_mesi;
    logic captured_dirty;
    
    initial begin
        $display("\n========================================");
        $display("   L1 D-Cache Controller Testbench");
        $display("========================================\n");
        
        // Initialize
        rst_n         = 0;
        ldst_valid    = 0;
        ldst_is_store = 0;
        ldst_addr     = 0;
        ldst_wdata    = 0;
        ldst_wstrb    = 0;
        bus_req_valid = 0;
        bus_req_cmd   = 0;
        bus_req_addr  = 0;
        bus_req_src   = 0;
        send_nack     = 0;
        
        repeat(5) @(posedge clk);
        rst_n = 1;
        repeat(3) @(posedge clk);
        
        // // ============================================================
        // // TEST 1: Basic Fill - Load Miss
        // // ============================================================
        // $display("\n[TEST 1] Basic Fill - Load Miss");
        // cpu_load(32'h0000_1000, rdata);
        
        
        // // ============================================================
        // // TEST 2: Load Hit
        // // ============================================================
        // $display("\n[TEST 2] Load Hit (same address)");
        // cpu_load(32'h0000_1000, rdata);
       
        
        // ============================================================
        // TEST 3: Store Hit E?M Transition (FIX #1)
        // ============================================================
        // $display("\n[TEST 3] Store Hit E->M Transition");
        // cpu_load(32'h0000_2000, rdata);  // Get line in E state
        // repeat(3) @(posedge clk);
        
        // // Capture state before store
        // @(posedge clk);
        // captured_mesi = MESI_E;
        
        // cpu_store(32'h0000_2000, 64'hDEAD_BEEF_CAFE_BABE, 8'hFF);
        // repeat(3) @(posedge clk);
        
        // // Verify state transitioned to M
        // cpu_load(32'h0000_2000, rdata);
        //       // Check if dirty bit was set (state should be M)
       
        
        // // ============================================================
        // // TEST 4: Store Miss with E?M Transition (FIX #1 - CRITICAL)
        // // ============================================================
        // $display("\n[TEST 4] Store Miss GETM with E->M Transition (CRITICAL FIX)");
        // cpu_store(32'h0000_3000, 64'h1111_2222_3333_4444, 8'hFF);
        // repeat(3) @(posedge clk);
        
        // // Verify data was written
        // cpu_load(32'h0000_3000, rdata);
        
        
    //     // ============================================================
    //     // TEST 5: Partial Store (Byte Strobe)
    //     // ============================================================
    //     $display("\n[TEST 5] Partial Store - Byte Strobe");
    //     cpu_load(32'h0000_4000, rdata);
    //     $display("  Initial: 0x%016X", rdata);
    //     repeat(3) @(posedge clk);
        
    //     // Store only lower 4 bytes
    //     cpu_store(32'h0000_4000, 64'hFFFFFFFF_AAAABBBB, 8'b00001111);
    //     repeat(3) @(posedge clk);
        
    //     cpu_load(32'h0000_4000, rdata);
    //     $display("  After partial store: 0x%016X", rdata);
    //     check_result("Partial store preserves upper bytes", (rdata[63:32] != 32'hFFFFFFFF));
    //     check_result("Partial store writes lower bytes", (rdata[31:0] == 32'hAAAABBBB));
    //     repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 6: Store to Shared line (UPGR path)
        // // ============================================================
        // $display("\n[TEST 6] Store to Shared Line - UPGR");
        // cpu_load(32'h0000_5000, rdata);
        // repeat(3) @(posedge clk);
        
        // // Force to S state via snoop
        // send_snoop(32'h0000_5000, CMD_GETS, 2'd1);
        // repeat(3) @(posedge clk);
        
        // // Now store should trigger UPGR
        // cpu_store(32'h0000_5000, 64'h5555_6666_7777_8888, 8'hFF);
     
        
        // // Verify data and state
        // cpu_load(32'h0000_5000, rdata);
       
        
        // // ============================================================
        // // TEST 7: Snoop on Modified Line (M?S downgrade)
        // // ============================================================
      
        // cpu_store(32'h0000_6000, 64'hAAAA_BBBB_CCCC_DDDD, 8'hFF);
        // repeat(5) @(posedge clk);
        
        // send_snoop(32'h0000_6000, CMD_GETS, 2'd2);
       
        // repeat(5) @(posedge clk);
        
        // // Line should still be accessible (now in S)
        // cpu_load(32'h0000_6000, rdata);
   
        
        // // ============================================================
        // // TEST 8: Snoop Invalidation (M?I)
        // // ============================================================
        // $display("\n[TEST 8] Snoop GETM Invalidation (M->I)");
        // cpu_store(32'h0000_7000, 64'hBEEF_DEAD_CAFE_BABE, 8'hFF);
        // repeat(5) @(posedge clk);
        
        // send_snoop(32'h0000_7000, CMD_GETM, 2'd1);
       
        // repeat(5) @(posedge clk);
        
        // // Next access should miss (line invalidated)
        // cpu_load(32'h0000_7000, rdata);
         

        
        // // ============================================================
        // // TEST 9: Multiple Lines, Same Set (PLRU)
        // // ============================================================

     
        // for (int i = 0; i < 12; i++) begin
        //     cpu_load(32'h0001_0000 + (i << 12), rdata);
        //    // Different tags, same set
        //     repeat(2) @(posedge clk);
        // end
        

        
    //     // ============================================================
    //     // TEST 10: Dirty Victim Eviction (Writeback)
    //     // ============================================================
    //     $display("\n[TEST 10] Dirty Victim Writeback");
    //     // Modify first line
    //     cpu_store(32'h0002_0000, 64'hEEEE_FFFF_0000_1111, 8'hFF);
    //     repeat(5) @(posedge clk);
        
    //     // Fill 8 more lines to evict it
    //     for (int i = 1; i < 9; i++) begin
    //         cpu_load(32'h0002_0000 + (i << 12), rdata);
    //         repeat(2) @(posedge clk);
    //     end
        
    //     check_result("Writeback path completes", 1);
    //     repeat(10) @(posedge clk);
        
    //   
    
  
    end
    

endmodule