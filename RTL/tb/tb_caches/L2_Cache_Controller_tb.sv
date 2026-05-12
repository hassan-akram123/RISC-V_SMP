`timescale 1ns/1ps

module L2_Cache_Controller_tb;

    // ================================================================
    // Parameters
    // ================================================================
    localparam int ADDR_WIDTH      = 32;
    localparam int CORE_DATA_WIDTH = 64;
    localparam int SET_BITS_LEN    = 11;  // 2048 sets
    localparam int TAG_BITS_LEN    = 15;  // 32-11-6
    localparam int SRC_ID          = 2;   // L2's fabric ID

    // ================================================================
    // Signals
    // ================================================================
    logic clk;
    logic rst_n;

    // Snoop bus (simulated L1 requests to L2)
    logic                       bus_req_valid;
    logic [2:0]                 bus_req_cmd;
    logic [ADDR_WIDTH-1:0]      bus_req_addr;
    logic [1:0]                 bus_req_src;

    // Data transfer phase (for WB from L1 to L2)
    logic                       bus_dat_valid;
    logic [1:0]                 bus_dat_dst;
    logic [ADDR_WIDTH-1:0]      bus_dat_addr;
    logic [2:0]                 bus_dat_beat;
    logic [CORE_DATA_WIDTH-1:0] bus_dat_data;
    logic                       bus_dat_last;

    // Snoop response (L2 to arbiter)
    logic                       l2_snp_valid;
    logic                       l2_snp_hit;
    logic                       l2_snp_has_data;
    logic                       l2_snp_ack;

    // Data supplier interface (L2 to L1)
    logic                       sup_valid;
    logic                       sup_ready;
    logic [CORE_DATA_WIDTH-1:0] sup_data;
    logic [2:0]                 sup_beat;
    logic                       sup_last;

    // Memory interface
    logic                       mem_req_valid;
    logic                       mem_req_rw;
    logic [ADDR_WIDTH-1:0]      mem_req_addr;
    logic [511:0]               mem_req_line;
    logic                       mem_req_ready;
    logic                       mem_resp_valid;
    logic [511:0]               mem_resp_line;

    // Cache storage interface (L2_Cache uses l2_* prefix)
    logic                       l2_lookup_en;
    logic [ADDR_WIDTH-1:0]      l2_lookup_addr;
    logic                       l2_lookup_is_store;
    logic                       l2_lookup_stall;
    logic                       l2_store_en;
    logic [CORE_DATA_WIDTH-1:0] l2_store_wdata;
    logic [7:0]                 l2_store_wstrb;
    logic                       l2_fill_en;
    logic [ADDR_WIDTH-1:0]      l2_fill_addr;
    logic [2:0]                 l2_fill_way;
    logic [511:0]               l2_fill_line;
    logic [1:0]                 l2_fill_mesi;
    logic                       l2_set_state_en;
    logic [ADDR_WIDTH-1:0]      l2_set_state_addr;
    logic [2:0]                 l2_set_state_way;
    logic [1:0]                 l2_set_state_val;
    logic                       l2_line_rd_en;
    logic [ADDR_WIDTH-1:0]      l2_line_rd_addr;
    logic [511:0]               l2_line_rd_data;
    logic                       l2_line_rd_valid;
    logic                       l2_vmeta_en;
    logic [SET_BITS_LEN-1:0]    l2_vmeta_set;
    logic [2:0]                 l2_vmeta_way;
    logic                       l2_vmeta_valid;
    logic [TAG_BITS_LEN-1:0]    l2_vmeta_tag;
    logic                       l2_vmeta_line_valid;
    logic [1:0]                 l2_vmeta_mesi;
    logic                       l2_vmeta_dirty;
    logic                       l2_vline_rd_en;
    logic [SET_BITS_LEN-1:0]    l2_vline_rd_set;
    logic [2:0]                 l2_vline_rd_way;
    logic                       l2_vline_rd_valid;
    logic [511:0]               l2_vline_rd_data;
    logic [TAG_BITS_LEN-1:0]    l2_vline_rd_tag;
    logic                       l2_vline_rd_entry_valid;
    logic [1:0]                 l2_vline_rd_mesi;
    logic                       l2_vline_rd_dirty;
    logic [CORE_DATA_WIDTH-1:0] l2_rdata;
    logic                       l2_hit;
    logic                       l2_rvalid;
    logic [2:0]                 l2_hit_way;
    logic [1:0]                 l2_mesi_state;
    logic                       l2_dirty;
    logic                       l2_lookup_valid;
    logic                       l2_wb_data_ready;

    // ================================================================
    // MESI States & Commands
    // ================================================================
    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;

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
    // DUT Instantiation: L2 Cache Storage
    // ================================================================
    L2_Cache #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .TAG_BITS_LEN(TAG_BITS_LEN),
        .SET_BITS_LEN(SET_BITS_LEN),
        .BYTE_OFFSET_BITS_LEN(6),
        .NO_OF_WAYS(8),
        .CORE_DATA_WIDTH(CORE_DATA_WIDTH),
        .BYTE_SIZE(8),
        .BRAM_WE_WIDTH(64)
    ) u_l2_cache (
        .clk(clk),
        .rst_n(rst_n),
        .l2_lookup_en(l2_lookup_en),
        .l2_lookup_addr(l2_lookup_addr),
        .l2_lookup_is_store(l2_lookup_is_store),
        .l2_lookup_stall(l2_lookup_stall),
        .l2_store_en(l2_store_en),
        .l2_store_wdata(l2_store_wdata),
        .l2_store_wstrb(l2_store_wstrb),
        .l2_fill_en(l2_fill_en),
        .l2_fill_addr(l2_fill_addr),
        .l2_fill_way(l2_fill_way),
        .l2_fill_line(l2_fill_line),
        .l2_fill_mesi(l2_fill_mesi),
        .l2_set_state_en(l2_set_state_en),
        .l2_set_state_addr(l2_set_state_addr),
        .l2_set_state_way(l2_set_state_way),
        .l2_set_state_val(l2_set_state_val),
        .l2_line_rd_en(l2_line_rd_en),
        .l2_line_rd_addr(l2_line_rd_addr),
        .l2_line_rd_data(l2_line_rd_data),
        .l2_line_rd_valid(l2_line_rd_valid),
        .l2_vmeta_en(l2_vmeta_en),
        .l2_vmeta_set(l2_vmeta_set),
        .l2_vmeta_way(l2_vmeta_way),
        .l2_vmeta_valid(l2_vmeta_valid),
        .l2_vmeta_tag(l2_vmeta_tag),
        .l2_vmeta_line_valid(l2_vmeta_line_valid),
        .l2_vmeta_mesi(l2_vmeta_mesi),
        .l2_vmeta_dirty(l2_vmeta_dirty),
        .l2_vline_rd_en(l2_vline_rd_en),
        .l2_vline_rd_set(l2_vline_rd_set),
        .l2_vline_rd_way(l2_vline_rd_way),
        .l2_vline_rd_valid(l2_vline_rd_valid),
        .l2_vline_rd_data(l2_vline_rd_data),
        .l2_vline_rd_tag(l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi(l2_vline_rd_mesi),
        .l2_vline_rd_dirty(l2_vline_rd_dirty),
        .l2_rdata(l2_rdata),
        .l2_hit(l2_hit),
        .l2_rvalid(l2_rvalid),
        .l2_hit_way(l2_hit_way),
        .l2_mesi_state(l2_mesi_state),
        .l2_dirty(l2_dirty),
        .l2_lookup_valid(l2_lookup_valid)
    );

    // ================================================================
    // DUT Instantiation: L2 Cache Controller
    // ================================================================
    L2_Cache_Controller #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .CORE_DATA_WIDTH(CORE_DATA_WIDTH),
        .SET_BITS_LEN(SET_BITS_LEN),
        .TAG_BITS_LEN(TAG_BITS_LEN),
        .SRC_ID(SRC_ID)
    ) u_l2_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        
        // Snoop bus
        .bus_req_valid(bus_req_valid),
        .bus_req_cmd(bus_req_cmd),
        .bus_req_addr(bus_req_addr),
        .bus_req_src(bus_req_src),
        
        // Data transfer
        .bus_dat_valid(bus_dat_valid),
        .bus_dat_dst(bus_dat_dst),
        .bus_dat_addr(bus_dat_addr),
        .bus_dat_beat(bus_dat_beat),
        .bus_dat_data(bus_dat_data),
        .bus_dat_last(bus_dat_last),
        .l2_wb_data_ready(l2_wb_data_ready),
        
        // Snoop response
        .l2_snp_valid(l2_snp_valid),
        .l2_snp_hit(l2_snp_hit),
        .l2_snp_has_data(l2_snp_has_data),
        .l2_snp_ack(l2_snp_ack),
        
        // Supplier
        .sup_valid(sup_valid),
        .sup_ready(sup_ready),
        .sup_data(sup_data),
        .sup_beat(sup_beat),
        .sup_last(sup_last),
        
        // Memory interface
        .mem_req_valid(mem_req_valid),
        .mem_req_rw(mem_req_rw),
        .mem_req_addr(mem_req_addr),
        .mem_req_line(mem_req_line),
        .mem_req_ready(mem_req_ready),
        .mem_resp_valid(mem_resp_valid),
        .mem_resp_line(mem_resp_line),
        
        // Controller → Cache (l2_* ports in controller)
        .l2_lookup_en(l2_lookup_en),
        .l2_lookup_addr(l2_lookup_addr),
        .l2_lookup_is_store(l2_lookup_is_store),
        .l2_lookup_stall(l2_lookup_stall),
        .l2_store_en(l2_store_en),
        .l2_store_wdata(l2_store_wdata),
        .l2_store_wstrb(l2_store_wstrb),
        .l2_fill_en(l2_fill_en),
        .l2_fill_addr(l2_fill_addr),
        .l2_fill_way(l2_fill_way),
        .l2_fill_line(l2_fill_line),
        .l2_fill_mesi(l2_fill_mesi),
        .l2_set_state_en(l2_set_state_en),
        .l2_set_state_addr(l2_set_state_addr),
        .l2_set_state_way(l2_set_state_way),
        .l2_set_state_val(l2_set_state_val),
        .l2_line_rd_en(l2_line_rd_en),
        .l2_line_rd_addr(l2_line_rd_addr),
        .l2_line_rd_data(l2_line_rd_data),
        .l2_line_rd_valid(l2_line_rd_valid),
        .l2_vmeta_en(l2_vmeta_en),
        .l2_vmeta_set(l2_vmeta_set),
        .l2_vmeta_way(l2_vmeta_way),
        .l2_vmeta_valid(l2_vmeta_valid),
        .l2_vmeta_tag(l2_vmeta_tag),
        .l2_vmeta_line_valid(l2_vmeta_line_valid),
        .l2_vmeta_mesi(l2_vmeta_mesi),
        .l2_vmeta_dirty(l2_vmeta_dirty),
        .l2_vline_rd_en(l2_vline_rd_en),
        .l2_vline_rd_set(l2_vline_rd_set),
        .l2_vline_rd_way(l2_vline_rd_way),
        .l2_vline_rd_valid(l2_vline_rd_valid),
        .l2_vline_rd_data(l2_vline_rd_data),
        .l2_vline_rd_tag(l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi(l2_vline_rd_mesi),
        .l2_vline_rd_dirty(l2_vline_rd_dirty),
        .l2_rdata(l2_rdata),
        .l2_hit(l2_hit),
        .l2_rvalid(l2_rvalid),
        .l2_hit_way(l2_hit_way),
        .l2_mesi_state(l2_mesi_state),
        .l2_dirty(l2_dirty),
        .l2_lookup_valid(l2_lookup_valid)
    );

    // ================================================================
    // Memory Model (Simplified DDR/BRAM)
    // ================================================================
    logic [511:0] memory [logic [31:0]];  // Associative array for memory
    
    typedef enum logic [1:0] {
        MEM_IDLE,
        MEM_READ_DELAY,
        MEM_WRITE_DELAY
    } mem_state_t;
    
    mem_state_t mem_state;
    logic [31:0] mem_pending_addr;
    int mem_delay_counter;
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mem_req_ready  <= 0;
            mem_resp_valid <= 0;
            mem_resp_line  <= 0;
            mem_state      <= MEM_IDLE;
            mem_delay_counter <= 0;
            mem_pending_addr<=0;
        end else begin
            mem_req_ready  <= 0;
            mem_resp_valid <= 0;
            
            case (mem_state)
                MEM_IDLE: begin
                    mem_req_ready <= 1;
                    if (mem_req_valid) begin
                        mem_pending_addr <= mem_req_addr;
                        mem_delay_counter <= 5;  // 5 cycle memory latency
                        
                        if (mem_req_rw) begin
                            // Write
                            memory[mem_req_addr[31:6]] = mem_req_line;
                            $display("  [MEM] Write to addr 0x%08X", mem_req_addr);
                            mem_state <= MEM_WRITE_DELAY;
                        end else begin
                            // Read
                            mem_state <= MEM_READ_DELAY;
                        end
                    end
                end
                
                MEM_READ_DELAY: begin
                    if (mem_delay_counter > 0) begin
                        mem_delay_counter <= mem_delay_counter - 1;
                    end else begin
                        // Return data (or generate pattern if not written)
                        if (memory.exists(mem_pending_addr[31:6])) begin
                            mem_resp_line <= memory[mem_pending_addr[31:6]];
                        end else begin
                            // Generate unique pattern for uninitialized memory
                            for (int i = 0; i < 8; i++) begin
                                mem_resp_line[i*64 +: 64] = {mem_pending_addr[31:6], i[2:0], 3'b000, 
                                                             mem_pending_addr[31:6], i[2:0], 3'b000};
                            end
                        end
                        mem_resp_valid <= 1;
                        $display("  [MEM] Read from addr 0x%08X", mem_pending_addr);
                        mem_state <= MEM_IDLE;
                    end
                end
                
                MEM_WRITE_DELAY: begin
                    if (mem_delay_counter > 0) begin
                        mem_delay_counter <= mem_delay_counter - 1;
                    end else begin
                        mem_state <= MEM_IDLE;
                    end
                end
            endcase
        end
    end

    // ================================================================
    // Supply Data Receiver (L1 receiving from L2)
    // ================================================================
    logic [511:0] received_line;
    int received_beat_count;
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sup_ready <= 1;
            received_beat_count <= 0;
            received_line <= 0;
        end else begin
            sup_ready <= 1;  // Always ready
            
            if (sup_valid && sup_ready) begin
                received_line[sup_beat*64 +: 64] <= sup_data;
                if (sup_last) begin
                    $display("  [SUP] Complete line received: 0x%0128X", received_line);
                    received_beat_count <= 0;
                end else begin
                    received_beat_count <= received_beat_count + 1;
                end
            end
        end
    end

    // ================================================================
    // Helper Tasks
    // ================================================================
    
    // Task: L1 sends request to L2 (GETS, GETM, UPGR)
    task l1_request(input [31:0] addr, input [2:0] cmd, input [1:0] src_id);
        begin
            @(posedge clk);
            bus_req_valid = 1;
            bus_req_cmd   = cmd;
            bus_req_addr  = addr;
            bus_req_src   = src_id;
            
            @(posedge clk);
            bus_req_valid = 0;
            
            // Wait for snoop response
            wait(l2_snp_valid && l2_snp_ack);
            $display("  [L2 SNP] Hit=%0d, HasData=%0d for addr 0x%08X", 
                     l2_snp_hit, l2_snp_has_data, addr);
            
            // If data is being supplied, wait for it
            if (cmd == CMD_GETS || cmd == CMD_GETM) begin
                wait(sup_valid && sup_last);
                @(posedge clk);
            end
            
            @(posedge clk);
        end
    endtask

    // Task: L1 writes back to L2 (sends data beats)
    task l1_writeback(input [31:0] addr, input [1:0] src_id, input [511:0] wb_data);
        begin
            @(posedge clk);
            // Send WB request first
            bus_req_valid = 1;
            bus_req_cmd   = CMD_WB;
            bus_req_addr  = addr;
            bus_req_src   = src_id;
        bus_dat_last  =0;
            
            @(posedge clk);
            bus_req_valid = 0;
            
            // Wait for L2 to acknowledge
            wait(l2_snp_valid && l2_snp_ack);
            @(posedge clk);
             wait(l2_wb_data_ready);
            // Send data beats
            for (int beat = 0; beat < 8; beat++) begin
                @(posedge clk);
                bus_dat_valid = 1;
                bus_dat_dst   = SRC_ID[1:0];
                bus_dat_addr  = {addr[31:6], 6'b0};  // Line-aligned
                bus_dat_beat  = beat[2:0];
                bus_dat_data  = wb_data[beat*64 +: 64];
                bus_dat_last  = (beat == 7);
              
                    
            end
            
            @(posedge clk);
            bus_dat_valid = 0;
            
            $display("  [L1 WB] Complete for addr 0x%08X", addr);
            repeat(2) @(posedge clk);
        end
    endtask

    // Task: Check result
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
    logic [511:0] test_data;
    
    initial begin
        $display("\n========================================");
        $display("   L2 Cache Controller Testbench");
        $display("========================================\n");
        
        // Initialize
        rst_n         = 0;
        bus_req_valid = 0;
        bus_req_cmd   = 0;
        bus_req_addr  = 0;
        bus_req_src   = 0;
        bus_dat_valid = 0;
        bus_dat_dst   = 0;
        bus_dat_addr  = 0;
        bus_dat_beat  = 0;
        bus_dat_data  = 0;
        bus_dat_last  = 0;
        
        repeat(5) @(posedge clk);
        rst_n = 1;
        repeat(3) @(posedge clk);
        
        // // ============================================================
        // // TEST 1: L1 GETS Miss → L2 Miss → Memory Fetch → Supply ( Passed )
        // // ============================================================
     
        // l1_request(32'h0000_1000, CMD_GETS, 2'd0);
       
        // repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 2: L1 GETS Hit → L2 Supplies from Cache
        // // ============================================================
       
        // l1_request(32'h0000_1000, CMD_GETS, 2'd1);  // Different L1
     
        // repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 3: L1 GETM Miss → L2 Fetch → Supply in E state
        // // ============================================================
       
        // l1_request(32'h0000_2000, CMD_GETM, 2'd0);
      
        // repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 4: L1 GETM Hit → L2 Supplies & Invalidates
        // // ============================================================
        
        // l1_request(32'h0000_1000, CMD_GETM, 2'd0);
        
        // repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 5: L1 UPGR (no data supply needed)
        // // ============================================================
       
        // // First get line in S state
        // l1_request(32'h0000_3000, CMD_GETS, 2'd0);
        // repeat(3) @(posedge clk);
        
        // // Now UPGR (just invalidate, no data)
        // l1_request(32'h0000_3000, CMD_UPGR, 2'd0);
       
        // repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 6: L1 Writeback → L2 Receives & Stores
        // // ============================================================
 
        // test_data = 512'hDEADBEEF_CAFEBABE_11111111_22222222_33333333_44444444_55555555_66666666;
        // l1_writeback(32'h0000_4000, 2'd0, test_data);
     
        // repeat(5) @(posedge clk);
        
      
      
        // l1_request(32'h0000_4000, CMD_GETS, 2'd1);
      
        // repeat(5) @(posedge clk);
        
        // // ============================================================
        // // TEST 7: Dirty Eviction → Writeback to Memory
        // // ============================================================
        // $display("\n[TEST 7] Dirty Victim Eviction -> Writeback to Memory");
        
        // // Fill L2 with modified lines (same set, different tags)
        // for (int i = 0; i < 9; i++) begin
        //     test_data = 512'hAAAA0000 + i;
        //     l1_writeback(32'h0001_0000 + (i << 17), 2'd0, test_data);  // Same set bits
        //     repeat(3) @(posedge clk);
        // end
        
     
        // // // repeat(10) @(posedge clk);
        
        // // ============================================================
        // // TEST 8: Multiple L1s Requesting Same Line
        // // ============================================================
        // $display("\n[TEST 8] Multiple L1s Request Same Line");
        // l1_request(32'h0000_5000, CMD_GETS, 2'd0);  // L1_0
        // repeat(3) @(posedge clk);
        // l1_request(32'h0000_5000, CMD_GETS, 2'd1);  // L1_1 (should hit in L2)
      
        
        // // ============================================================
        // // TEST 9: WB Miss (allocate on writeback)
        // // ============================================================
        // $display("\n[TEST 9] Writeback Miss -> L2 Allocates Space");
        // test_data = 512'hBEEF_DEAD_CAFE_BABE_9999_8888_7777_6666_5555_4444_3333_2222;
        // l1_writeback(32'h0000_9000, 2'd0, test_data);
        
        // // Verify allocated
        // l1_request(32'h0000_9000, CMD_GETS, 2'd1);
       
        // repeat(5) @(posedge clk);
        
      
       
        
        
    end

    

endmodule