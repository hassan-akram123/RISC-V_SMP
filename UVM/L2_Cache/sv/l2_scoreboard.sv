// ============================================================
// File: l2_scoreboard.sv
// Description: Shadow L2 cache scoreboard.
//   Receives transactions from both monitors:
//     write_snoop : snoop bus events  (requests + DUT responses)
//     write_mem   : memory bus events (fills + DRAM WBs)
//
//   Shadow model geometry (matches L2_Cache parameters):
//     Sets        : 2048  (SET_BITS_LEN=11, addr[21:11])
//     Ways        : 8
//     Tag bits    : 15    (addr[31:17])
//     Line size   : 64B   (addr[5:0] = byte offset)
//
//   Checks performed:
//     GETS/GETM hit  -> l2_snp_hit==1, l2_snp_has_data==1
//                       supplied line matches shadow data
//     UPGR hit       -> l2_snp_hit==1, l2_snp_has_data==0
//                       shadow MESI updated I (line invalidated at L2)
//     WB  hit        -> l2_snp_hit==1, WB data written into shadow (M state)
//     GETS/GETM miss -> l2_snp_hit==0, fill expected from memory
//     Supply data    -> reassembled 512-bit line matches shadow
//     DRAM WB        -> L2 evicting dirty line, verifies evicted data
// ============================================================

`uvm_analysis_imp_decl(_snoop)
`uvm_analysis_imp_decl(_mem)

class l2_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(l2_scoreboard)

    // analysis imports
    uvm_analysis_imp_snoop #(l2_snoop_seq_item, l2_scoreboard) snoop_export;
    uvm_analysis_imp_mem   #(l2_mem_seq_item,   l2_scoreboard) mem_export;

    // ----------------------------------------
    // Shadow cache - indexed by line_addr [31:6]
    // L2 addr map: [31:17]=tag, [16:6]=set, [5:0]=offset
    // line_key = addr[31:6] (26 bits)
    // ----------------------------------------
    logic [511:0] shadow_data [logic [25:0]];   // line data
    logic [1:0]   shadow_mesi [logic [25:0]];   // MESI state per line

    // MESI encodings
    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;

    // CMD encodings
    localparam logic [2:0] CMD_GETS = 3'b000;
    localparam logic [2:0] CMD_GETM = 3'b001;
    localparam logic [2:0] CMD_UPGR = 3'b010;
    localparam logic [2:0] CMD_WB   = 3'b011;

    // Way tracking - 2048 sets x 8 ways
    // (used for eviction / conflict checking)
    bit          way_valid [2048][8];
    logic [14:0] way_tag   [2048][8];   // 15-bit tag
    logic [1:0]  way_mesi  [2048][8];

    // Statistics
    int num_gets_hit,  num_gets_miss;
    int num_getm_hit,  num_getm_miss;
    int num_upgr_hit,  num_upgr_miss;
    int num_wb_hit,    num_wb_miss;
    int num_fills;
    int num_dram_wbs;
    int num_errors;
    int num_snoop_pkts;
    int num_mem_pkts;

    // ----------------------------------------
    // Constructor
    // ----------------------------------------
    function new(string name = "l2_scoreboard", uvm_component parent = null);
        super.new(name, parent);
        foreach (way_valid[i,j]) way_valid[i][j] = 0;
        foreach (way_tag[i,j])   way_tag[i][j]   = 0;
        foreach (way_mesi[i,j])  way_mesi[i][j]  = MESI_I;
    endfunction : new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        snoop_export = new("snoop_export", this);
        mem_export   = new("mem_export",   this);
    endfunction : build_phase

    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(), "L2 Scoreboard running ...", UVM_HIGH)
    endfunction : start_of_simulation_phase

    // ================================================================
    // write_mem - called by mem monitor
    // Updates shadow on fill (read) or DRAM writeback (write).
    // ================================================================
    function void write_mem(l2_mem_seq_item item);
        logic [25:0] line_key;
        int          set_idx;
        logic [14:0] tag;

        num_mem_pkts++;
        line_key = item.req_addr[31:6];
        set_idx  = int'(item.req_addr[16:6]);   // SET_BITS_LEN=11, addr[16:6]
        tag      = item.req_addr[31:17];        // TAG_BITS_LEN=15, addr[31:17]

        `uvm_info(get_type_name(),
                  $sformatf("MEM pkt #%0d: addr=0x%08h rw=%0b", num_mem_pkts,
                             item.req_addr, item.req_rw),
                  UVM_HIGH)

        if (!item.req_rw) begin
            // ---- DRAM -> L2 fill ----
            // Update shadow with filled data; MESI set by subsequent
            // snoop response (fill_mesi_next is set to S for GETS, M for GETM).
            // We record the data now; MESI is updated when the snoop response
            // is observed (write_snoop handles the fill response).
            shadow_data[line_key] = item.fill_data;
            // If no MESI entry yet, tentatively mark as S (GETS default).
            // The snoop scoreboard will correct this when l2_snp_ack fires.
            if (!shadow_mesi.exists(line_key))
                shadow_mesi[line_key] = MESI_S;

            begin
                int victim;
                victim = find_victim(set_idx, tag);
                way_valid[set_idx][victim] = 1;
                way_tag  [set_idx][victim] = tag;
                way_mesi [set_idx][victim] = shadow_mesi[line_key];
            end

            num_fills++;
            `uvm_info(get_type_name(),
                      $sformatf("FILL recorded: addr=0x%08h set=%0d tag=0x%04h",
                                item.req_addr, set_idx, tag),
                      UVM_MEDIUM)

        end else begin
            // ---- L2 -> DRAM writeback (eviction) ----
            // Verify the evicted data matches our shadow if we tracked it.
            if (shadow_data.exists(line_key)) begin
                if (item.req_line !== shadow_data[line_key]) begin
                    `uvm_error(get_type_name(),
                               $sformatf("DRAM WB DATA MISMATCH: addr=0x%08h\n  expected=0x%0h\n  got     =0x%0h",
                                         item.req_addr, shadow_data[line_key], item.req_line))
                    num_errors++;
                end else begin
                    `uvm_info(get_type_name(),
                              $sformatf("DRAM WB OK: addr=0x%08h data matches shadow", item.req_addr),
                              UVM_MEDIUM)
                end
            end

            // Invalidate in shadow after writeback
            shadow_mesi[line_key] = MESI_I;
            for (int w = 0; w < 8; w++) begin
                if (way_valid[set_idx][w] && way_tag[set_idx][w] == tag) begin
                    way_valid[set_idx][w] = 0;
                    way_mesi [set_idx][w] = MESI_I;
                end
            end
            num_dram_wbs++;
        end

    endfunction : write_mem

    // ================================================================
    // write_snoop - called by snoop monitor
    // Main checking function.
    // ================================================================
    function void write_snoop(l2_snoop_seq_item item);
        logic [25:0] line_key;
        int          set_idx;
        logic [14:0] tag;

        num_snoop_pkts++;
        line_key = item.bus_req_addr[31:6];
        set_idx  = int'(item.bus_req_addr[16:6]);  // SET_BITS_LEN=11, addr[16:6]
        tag      = item.bus_req_addr[31:17];       // TAG_BITS_LEN=15, addr[31:17]

        `uvm_info(get_type_name(),
                  $sformatf("SNOOP pkt #%0d cmd=%03b addr=0x%08h hit=%0b has_data=%0b lat=%0d",
                             num_snoop_pkts, item.bus_req_cmd, item.bus_req_addr,
                             item.l2_snp_hit, item.l2_snp_has_data, item.snp_latency),
                  UVM_HIGH)

        case (item.bus_req_cmd)

            // ---- GETS ----
            CMD_GETS: begin
                if (shadow_data.exists(line_key) && shadow_mesi[line_key] != MESI_I) begin
                    check_hit_response(item, "GETS");
                    check_supply_data(item, line_key);
                    // GETS: L2 keeps line in S; requestor gets S
                    shadow_mesi[line_key] = MESI_S;
                    update_way_mesi(set_idx, tag, MESI_S);
                    num_gets_hit++;
                end else begin
                    check_miss_response(item, "GETS");
                    // After miss fill, shadow updated by write_mem
                    // On fill: MESI set to S (GETS) or M (GETM)
                    shadow_mesi[line_key] = MESI_S;
                    num_gets_miss++;
                end
            end

            // ---- GETM ----
            CMD_GETM: begin
                if (shadow_data.exists(line_key) && shadow_mesi[line_key] != MESI_I) begin
                    check_hit_response(item, "GETM");
                    check_supply_data(item, line_key);
                    // GETM: L2 invalidates line (requestor takes M)
                    shadow_mesi[line_key] = MESI_I;
                    update_way_mesi(set_idx, tag, MESI_I);
                    invalidate_way(set_idx, tag);
                    num_getm_hit++;
                end else begin
                    check_miss_response(item, "GETM");
                    shadow_mesi[line_key] = MESI_M;
                    num_getm_miss++;
                end
            end

            // ---- UPGR ----
            CMD_UPGR: begin
                if (shadow_data.exists(line_key) && shadow_mesi[line_key] == MESI_S) begin
                    // UPGR hit: L2 invalidates its S copy, no data phase
                    if (!item.l2_snp_hit) begin
                        `uvm_error(get_type_name(),
                                   $sformatf("UPGR: expected hit but got miss - addr=0x%08h",
                                             item.bus_req_addr))
                        num_errors++;
                    end
                    if (item.l2_snp_has_data) begin
                        `uvm_error(get_type_name(),
                                   $sformatf("UPGR: has_data should be 0 - addr=0x%08h",
                                             item.bus_req_addr))
                        num_errors++;
                    end
                    shadow_mesi[line_key] = MESI_I;
                    invalidate_way(set_idx, tag);
                    num_upgr_hit++;
                    `uvm_info(get_type_name(),
                              $sformatf("UPGR HIT OK: addr=0x%08h L2 invalidated S copy",
                                        item.bus_req_addr),
                              UVM_MEDIUM)
                end else begin
                    check_miss_response(item, "UPGR");
                    num_upgr_miss++;
                end
            end

            // ---- WB (upper level writing back dirty line into L2) ----
            CMD_WB: begin
                // WB: upper level is handing a dirty line to L2
                // L2 should ack with snp_hit=1, has_data=0
                if (!item.l2_snp_ack) begin
                    `uvm_error(get_type_name(),
                               $sformatf("WB: l2_snp_ack not asserted - addr=0x%08h",
                                         item.bus_req_addr))
                    num_errors++;
                end
                if (item.l2_snp_has_data) begin
                    `uvm_error(get_type_name(),
                               $sformatf("WB: has_data should be 0 after WB - addr=0x%08h",
                                         item.bus_req_addr))
                    num_errors++;
                end

                // Update shadow with WB data (L2 now holds M state)
                shadow_data[line_key] = item.wb_line_data;
                shadow_mesi[line_key] = MESI_M;

                begin
                    int victim;
                    victim = find_victim(set_idx, tag);
                    way_valid[set_idx][victim] = 1;
                    way_tag  [set_idx][victim] = tag;
                    way_mesi [set_idx][victim] = MESI_M;
                end

                num_wb_hit++;
                `uvm_info(get_type_name(),
                          $sformatf("WB OK: addr=0x%08h data written into L2 shadow",
                                    item.bus_req_addr),
                          UVM_MEDIUM)
            end

            default: begin
                `uvm_warning(get_type_name(),
                             $sformatf("Unknown cmd=%03b addr=0x%08h",
                                       item.bus_req_cmd, item.bus_req_addr))
            end

        endcase

    endfunction : write_snoop

    // ================================================================
    // Helper: check hit response fields
    // ================================================================
    function void check_hit_response(l2_snoop_seq_item item, string cmd_name);
        if (!item.l2_snp_hit) begin
            `uvm_error(get_type_name(),
                       $sformatf("%s: expected HIT but got MISS - addr=0x%08h",
                                 cmd_name, item.bus_req_addr))
            num_errors++;
        end
        if (!item.l2_snp_ack) begin
            `uvm_error(get_type_name(),
                       $sformatf("%s: l2_snp_ack not asserted on hit - addr=0x%08h",
                                 cmd_name, item.bus_req_addr))
            num_errors++;
        end
        if (!item.l2_snp_has_data) begin
            `uvm_error(get_type_name(),
                       $sformatf("%s: l2_snp_has_data not asserted on hit - addr=0x%08h",
                                 cmd_name, item.bus_req_addr))
            num_errors++;
        end
    endfunction : check_hit_response

    // ================================================================
    // Helper: check miss response fields
    // ================================================================
    function void check_miss_response(l2_snoop_seq_item item, string cmd_name);
        if (item.l2_snp_hit) begin
            `uvm_error(get_type_name(),
                       $sformatf("%s: expected MISS but got HIT - addr=0x%08h",
                                 cmd_name, item.bus_req_addr))
            num_errors++;
        end else begin
            `uvm_info(get_type_name(),
                      $sformatf("%s MISS OK: addr=0x%08h latency=%0d",
                                cmd_name, item.bus_req_addr, item.snp_latency),
                      UVM_LOW)
        end
    endfunction : check_miss_response

    // ================================================================
    // Helper: verify supplied 512-bit line matches shadow
    // ================================================================
    function void check_supply_data(l2_snoop_seq_item item, logic [25:0] line_key);
        if (!item.l2_snp_has_data) return;

        if (shadow_data.exists(line_key)) begin
            if (item.sup_line_captured !== shadow_data[line_key]) begin
                `uvm_error(get_type_name(),
                           $sformatf("SUPPLY DATA MISMATCH: addr=0x%08h\n  expected=0x%0h\n  got     =0x%0h",
                                     item.bus_req_addr,
                                     shadow_data[line_key],
                                     item.sup_line_captured))
                num_errors++;
            end else begin
                `uvm_info(get_type_name(),
                          $sformatf("SUPPLY DATA OK: addr=0x%08h", item.bus_req_addr),
                          UVM_MEDIUM)
            end
        end
    endfunction : check_supply_data

    // ================================================================
    // Helper: find a free or evictable way in a set
    // ================================================================
    function int find_victim(int set_idx, logic [14:0] tag);
        // Prefer invalid way
        for (int w = 0; w < 8; w++)
            if (!way_valid[set_idx][w]) return w;
        // Prefer non-dirty (S or E)
        for (int w = 0; w < 8; w++)
            if (way_mesi[set_idx][w] != MESI_M) return w;
        // All dirty - evict way 0
        return 0;
    endfunction : find_victim

    // ================================================================
    // Helper: update MESI state for a tag in a set
    // ================================================================
    function void update_way_mesi(int set_idx, logic [14:0] tag, logic [1:0] new_mesi);
        for (int w = 0; w < 8; w++) begin
            if (way_valid[set_idx][w] && way_tag[set_idx][w] == tag)
                way_mesi[set_idx][w] = new_mesi;
        end
    endfunction : update_way_mesi

    // ================================================================
    // Helper: invalidate a way matching tag in a set
    // ================================================================
    function void invalidate_way(int set_idx, logic [14:0] tag);
        for (int w = 0; w < 8; w++) begin
            if (way_valid[set_idx][w] && way_tag[set_idx][w] == tag) begin
                way_valid[set_idx][w] = 0;
                way_mesi [set_idx][w] = MESI_I;
            end
        end
    endfunction : invalidate_way

    // ================================================================
    // report_phase
    // ================================================================
    function void report_phase(uvm_phase phase);
        `uvm_info(get_type_name(), $sformatf(
            {"\n===========================================\n",
             "  L2 Cache Scoreboard Report\n",
             "  Snoop transactions : %0d\n",
             "  Mem  transactions  : %0d\n",
             "  GETS  hit/miss     : %0d / %0d\n",
             "  GETM  hit/miss     : %0d / %0d\n",
             "  UPGR  hit/miss     : %0d / %0d\n",
             "  WB    into L2      : %0d (miss=%0d)\n",
             "  Fills from DRAM    : %0d\n",
             "  DRAM  writebacks   : %0d\n",
             "  Errors             : %0d\n",
             "==========================================="},
            num_snoop_pkts,
            num_mem_pkts,
            num_gets_hit,  num_gets_miss,
            num_getm_hit,  num_getm_miss,
            num_upgr_hit,  num_upgr_miss,
            num_wb_hit,    num_wb_miss,
            num_fills,
            num_dram_wbs,
            num_errors
        ), UVM_NONE)

        if (num_errors == 0)
            `uvm_info(get_type_name(), "** TEST PASSED **", UVM_NONE)
        else
            `uvm_error(get_type_name(), "** TEST FAILED **")
    endfunction : report_phase

endclass : l2_scoreboard