// ============================================================
// File: l2_sequences.sv
// Description: All UVM sequences for the L2 cache testbench.
//   Snoop sequences drive bus_req transactions.
//   Mem sequences control memory responder behaviour.
//
//   L2 geometry reminders used in constraints:
//     addr[5:0]   = byte offset (64B line)
//     addr[16:6]  = set index  (11 bits, 2048 sets)
//     addr[31:17] = tag        (15 bits)
// ============================================================

// ============================================================
// BASE SEQUENCES
// ============================================================

class l2_snoop_base_seq extends uvm_sequence #(l2_snoop_seq_item);
    `uvm_object_utils(l2_snoop_base_seq)

    function new(string name = "l2_snoop_base_seq");
        super.new(name);
    endfunction

    task pre_body();
        uvm_phase phase;
`ifdef UVM_VERSION_1_2
        phase = get_starting_phase();
`else
        phase = starting_phase;
`endif
        if (phase != null) begin
            phase.raise_objection(this, get_type_name());
            `uvm_info(get_type_name(), "raise objection", UVM_MEDIUM)
        end
    endtask : pre_body

    task post_body();
        uvm_phase phase;
`ifdef UVM_VERSION_1_2
        phase = get_starting_phase();
`else
        phase = starting_phase;
`endif
        if (phase != null) begin
            phase.drop_objection(this, get_type_name());
            `uvm_info(get_type_name(), "drop objection", UVM_MEDIUM)
        end
    endtask : post_body

endclass : l2_snoop_base_seq

// ------------------------------------------------------------

class l2_mem_base_seq extends uvm_sequence #(l2_mem_seq_item);
    `uvm_object_utils(l2_mem_base_seq)

    function new(string name = "l2_mem_base_seq");
        super.new(name);
    endfunction

    task pre_body();
        uvm_phase phase;
`ifdef UVM_VERSION_1_2
        phase = get_starting_phase();
`else
        phase = starting_phase;
`endif
        if (phase != null) begin
            phase.raise_objection(this, get_type_name());
            `uvm_info(get_type_name(), "raise objection", UVM_MEDIUM)
        end
    endtask : pre_body

    task post_body();
        uvm_phase phase;
`ifdef UVM_VERSION_1_2
        phase = get_starting_phase();
`else
        phase = starting_phase;
`endif
        if (phase != null) begin
            phase.drop_objection(this, get_type_name());
            `uvm_info(get_type_name(), "drop objection", UVM_MEDIUM)
        end
    endtask : post_body

endclass : l2_mem_base_seq

// ============================================================
// MEM SEQUENCES (reactive responder sequences)
// ============================================================

// ------------------------------------------------------------
// Normal fill response - happy path, no delay
// Used as the default mem sequence for most snoop tests
// ------------------------------------------------------------
class l2_mem_resp_seq extends l2_mem_base_seq;
    `uvm_object_utils(l2_mem_resp_seq)

    int num_responses = 20;

    function new(string name = "l2_mem_resp_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(),
                  $sformatf("Mem resp sequence: %0d responses", num_responses), UVM_LOW)
        repeat (num_responses) begin
            `uvm_create(req)
            `uvm_rand_send_with(req, { resp_delay inside {[0:2]}; })
        end
    endtask : body

endclass : l2_mem_resp_seq

// ------------------------------------------------------------
// Delayed fill response - tests controller patience on miss
// ------------------------------------------------------------
class l2_mem_delayed_resp_seq extends l2_mem_base_seq;
    `uvm_object_utils(l2_mem_delayed_resp_seq)

    int num_responses = 20;

    function new(string name = "l2_mem_delayed_resp_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(), "Delayed mem resp sequence", UVM_LOW)
        repeat (num_responses) begin
            `uvm_create(req)
            `uvm_rand_send_with(req, { resp_delay inside {[3:5]}; })
        end
    endtask : body

endclass : l2_mem_delayed_resp_seq

// ============================================================
// SNOOP SEQUENCES
// ============================================================

// ------------------------------------------------------------
// Single GETS - one read request, expect miss then fill
// ------------------------------------------------------------
class l2_gets_single_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_gets_single_seq)

    function new(string name = "l2_gets_single_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(), "Single GETS sequence", UVM_LOW)
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
    endtask : body

endclass : l2_gets_single_seq

// ------------------------------------------------------------
// Single GETM - one exclusive read request
// ------------------------------------------------------------
class l2_getm_single_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_getm_single_seq)

    function new(string name = "l2_getm_single_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(), "Single GETM sequence", UVM_LOW)
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b001; })
    endtask : body

endclass : l2_getm_single_seq

// ------------------------------------------------------------
// GETS hit sequence - GETS same address twice
// First = cold miss (L2 fetches from DRAM)
// Second = hit (line now in L2 in S state)
// ------------------------------------------------------------
class l2_gets_hit_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_gets_hit_seq)

    function new(string name = "l2_gets_hit_seq");
        super.new(name);
    endfunction

    virtual task body();
        l2_snoop_seq_item first_req;
        `uvm_info(get_type_name(), "GETS hit sequence", UVM_LOW)

        // First request - cold miss
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        first_req = req;

        // Second request - same address = hit (S state)
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, {
            bus_req_cmd == 3'b000;
            bus_req_addr == first_req.bus_req_addr;
        })
    endtask : body

endclass : l2_gets_hit_seq

// ------------------------------------------------------------
// GETM hit sequence - GETS then GETM same address
// GETS fills in S; GETM invalidates L2 copy, supplies line
// ------------------------------------------------------------
class l2_getm_hit_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_getm_hit_seq)

    function new(string name = "l2_getm_hit_seq");
        super.new(name);
    endfunction

    virtual task body();
        l2_snoop_seq_item first_req;
        `uvm_info(get_type_name(), "GETM hit sequence (GETS then GETM)", UVM_LOW)

        // Step 1: GETS to bring line into L2 in S state
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        first_req = req;

        // Step 2: GETM to same address - L2 supplies and invalidates
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, {
            bus_req_cmd  == 3'b001;
            bus_req_addr == first_req.bus_req_addr;
        })
    endtask : body

endclass : l2_getm_hit_seq

// ------------------------------------------------------------
// UPGR sequence - GETS (gets S state), then UPGR same address
// Tests S->I invalidation path with no data supply
// ------------------------------------------------------------
class l2_upgr_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_upgr_seq)

    function new(string name = "l2_upgr_seq");
        super.new(name);
    endfunction

    virtual task body();
        l2_snoop_seq_item first_req;
        `uvm_info(get_type_name(), "UPGR sequence (GETS -> UPGR)", UVM_LOW)

        // Step 1: GETS to fill line in S
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        first_req = req;

        // Step 2: UPGR same address - L2 invalidates, no data phase
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, {
            bus_req_cmd  == 3'b010;
            bus_req_addr == first_req.bus_req_addr;
        })
    endtask : body

endclass : l2_upgr_seq

// ------------------------------------------------------------
// WB sequence - upper level writes dirty line into L2
// Tests ST_WB_RECV + ST_WB_FILL path
// ------------------------------------------------------------
class l2_wb_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_wb_seq)

    function new(string name = "l2_wb_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(), "WB (writeback into L2) sequence", UVM_LOW)
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b011; })
    endtask : body

endclass : l2_wb_seq

// ------------------------------------------------------------
// Miss sequence - different sets every time, forces L2 misses
// ------------------------------------------------------------
class l2_miss_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_miss_seq)

    int num_misses = 8;

    function new(string name = "l2_miss_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(),
                  $sformatf("Miss sequence: %0d misses", num_misses), UVM_LOW)
        repeat (num_misses) begin
            `uvm_create(req)
            req.c_same_set.constraint_mode(0);
            req.c_conflict.constraint_mode(0);
            req.c_diff_set.constraint_mode(1);
            `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        end
    endtask : body

endclass : l2_miss_seq

// ------------------------------------------------------------
// Conflict / eviction sequence - same set, different tags
// Forces PLRU eviction across all 8 ways
// 9 requests to same set guarantees at least one eviction
// ------------------------------------------------------------
class l2_conflict_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_conflict_seq)

    function new(string name = "l2_conflict_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(), "Conflict/eviction sequence (9 requests, same set)", UVM_LOW)
        repeat (9) begin
            `uvm_create(req)
            req.c_same_set.constraint_mode(0);
            req.c_diff_set.constraint_mode(0);
            req.c_conflict.constraint_mode(1);
            `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        end
    endtask : body

endclass : l2_conflict_seq

// ------------------------------------------------------------
// Dirty eviction sequence
// Fill a line via GETS, then WB (sets M state), then conflict
// to force PLRU eviction of dirty line -> DRAM writeback
// ------------------------------------------------------------
class l2_dirty_evict_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_dirty_evict_seq)

    function new(string name = "l2_dirty_evict_seq");
        super.new(name);
    endfunction

    virtual task body();
        l2_snoop_seq_item first_req;
        `uvm_info(get_type_name(), "Dirty eviction sequence", UVM_LOW)

        // Step 1: GETS to fill line
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        first_req = req;

        // Step 2: WB to same address - make it M (dirty) in L2
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        `uvm_rand_send_with(req, {
            bus_req_cmd  == 3'b011;
            bus_req_addr == first_req.bus_req_addr;
        })

        // Step 3: 8 conflict requests to same set - force PLRU eviction
        // of the dirty line, triggering DRAM writeback
        repeat (8) begin
            `uvm_create(req)
            req.c_same_set.constraint_mode(0);
            req.c_diff_set.constraint_mode(0);
            req.c_conflict.constraint_mode(1);
            req.prev_addr = first_req.bus_req_addr;
            `uvm_rand_send_with(req, { bus_req_cmd == 3'b000; })
        end
    endtask : body

endclass : l2_dirty_evict_seq

// ------------------------------------------------------------
// Mixed sequence - random mix of GETS/GETM/UPGR/WB
// ------------------------------------------------------------
class l2_mixed_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_mixed_seq)

    int num_txns = 20;

    function new(string name = "l2_mixed_seq");
        super.new(name);
    endfunction

    virtual task body();
        `uvm_info(get_type_name(),
                  $sformatf("Mixed sequence: %0d transactions", num_txns), UVM_LOW)
        repeat (num_txns) begin
            `uvm_create(req)
            req.c_same_set.constraint_mode(0);
            req.c_diff_set.constraint_mode(0);
            req.c_conflict.constraint_mode(0);
            `uvm_rand_send(req)
        end
    endtask : body

endclass : l2_mixed_seq

// ============================================================
// COVERAGE CLOSURE SEQUENCE
// Methodically exercises every uncovered bin:
//   1. GETS miss (src0 + src1) across low/mid/high sets
//   2. GETS hit  (I->S, then S->S re-read)
//   3. GETM miss (I->M via miss)
//   4. GETM hit  (GETS fills S, then GETM hits S->I)
//   5. UPGR      (GETS fills S, then UPGR S->I)
//   6. WB        (writeback into L2, I->M)
//   7. WB then GETS same addr (M->S transition)
//   8. Dirty eviction (WB + conflict -> DRAM writeback)
//   9. Command transitions: gets->getm, getm->gets, gets->wb,
//      wb->gets, gets->upgr, wb->getm, getm->getm, gets->gets
//  10. Same-set back-to-back (same_set coverpoint)
// ============================================================
class l2_cov_closure_seq extends l2_snoop_base_seq;
    `uvm_object_utils(l2_cov_closure_seq)

    function new(string name = "l2_cov_closure_seq");
        super.new(name);
    endfunction

    // Helper: send one request with explicit cmd, addr, src
    task send_req(logic [2:0] cmd, logic [31:0] addr, logic [1:0] src);
        `uvm_create(req)
        req.c_same_set.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(0);
        req.c_cmd_dist.constraint_mode(0);
        `uvm_rand_send_with(req, {
            bus_req_cmd  == cmd;
            bus_req_addr == addr;
            bus_req_src  == src;
        })
    endtask

    virtual task body();
        // Addresses chosen to hit low / mid / high set bins
        // set[16:6]: low=0..682, mid=683..1364, high=1365..2047
        //   low  set 100  -> addr[16:6]=100  -> 100<<6 = 0x1900
        //   mid  set 1000 -> addr[16:6]=1000 -> 1000<<6 = 0xFA00
        //   high set 1500 -> addr[16:6]=1500 -> 1500<<6 = 0x17700
        // Different tags via addr[31:17]

        logic [31:0] addr_low_0  = 32'h0000_1900;  // set 100, tag 0
        logic [31:0] addr_low_1  = 32'h0002_1900;  // set 100, tag 1
        logic [31:0] addr_mid_0  = 32'h0000_FA00;  // set 1000, tag 0
        logic [31:0] addr_mid_1  = 32'h0002_FA00;  // set 1000, tag 1
        logic [31:0] addr_high_0 = 32'h0001_7700;  // set 1500, tag 0
        logic [31:0] addr_high_1 = 32'h0003_7700;  // set 1500, tag 1

        // Addresses for conflict/eviction (same set as addr_low_0, different tags)
        logic [31:0] evict_addrs[9];
        for (int i = 0; i < 9; i++)
            evict_addrs[i] = {15'(i+4), addr_low_0[16:6], 6'b0};

        `uvm_info(get_type_name(), "=== Coverage Closure Sequence ===", UVM_LOW)

        // -------------------------------------------------------
        // PHASE 1: GETS misses across sets and sources
        //   -> covers: cp_cmd(GETS), cp_hit_miss(miss), cp_latency(fast),
        //              cp_set_index(low/mid/high), cp_src(src0/src1)
        //              cx_cmd_x_hit, cx_cmd_x_src, cx_hit_x_set
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 1: GETS misses", UVM_MEDIUM)
        send_req(3'b000, addr_low_0,  2'b00);  // GETS miss, low, src0
        send_req(3'b000, addr_mid_0,  2'b01);  // GETS miss, mid, src1
        send_req(3'b000, addr_high_0, 2'b00);  // GETS miss, high, src0

        // -------------------------------------------------------
        // PHASE 2: GETS hits (re-read same addresses -> S state)
        //   -> covers: cp_hit_miss(hit), cp_has_data(has_data),
        //              cx_cmd_x_has_data(GETS x has_data)
        //   MESI: I->S already done by miss; now S->S (hit)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 2: GETS hits", UVM_MEDIUM)
        send_req(3'b000, addr_low_0,  2'b01);  // GETS hit, src1
        send_req(3'b000, addr_mid_0,  2'b00);  // GETS hit, src0
        send_req(3'b000, addr_high_0, 2'b01);  // GETS hit, src1

        // -------------------------------------------------------
        // PHASE 3: GETM miss (fresh addresses)
        //   -> covers: cp_cmd(GETM), GETM x miss
        //   MESI: I->I (miss, requestor gets M but L2 stays I)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 3: GETM misses", UVM_MEDIUM)
        send_req(3'b001, addr_low_1,  2'b00);  // GETM miss, low, src0
        send_req(3'b001, addr_mid_1,  2'b01);  // GETM miss, mid, src1
        send_req(3'b001, addr_high_1, 2'b00);  // GETM miss, high, src0

        // -------------------------------------------------------
        // PHASE 4: GETM hit (GETS to fill S, then GETM same addr)
        //   -> covers: GETM x hit, GETM x has_data
        //   MESI: S->I (GETM invalidates L2 copy)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 4: GETM hits (S->I)", UVM_MEDIUM)
        send_req(3'b000, 32'h0004_1900, 2'b00); // GETS miss -> fill S
        send_req(3'b001, 32'h0004_1900, 2'b01); // GETM hit  -> S->I

        send_req(3'b000, 32'h0004_FA00, 2'b01); // GETS miss -> fill S
        send_req(3'b001, 32'h0004_FA00, 2'b00); // GETM hit  -> S->I

        // -------------------------------------------------------
        // PHASE 5: UPGR (GETS fills S, then UPGR -> S->I, no data)
        //   -> covers: cp_cmd(UPGR), UPGR x hit, UPGR x no_data
        //   MESI: S->I
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 5: UPGR (S->I)", UVM_MEDIUM)
        send_req(3'b000, 32'h0006_1900, 2'b00); // GETS miss -> S
        send_req(3'b010, 32'h0006_1900, 2'b01); // UPGR hit  -> S->I

        send_req(3'b000, 32'h0006_FA00, 2'b01); // GETS miss -> S
        send_req(3'b010, 32'h0006_FA00, 2'b00); // UPGR hit  -> S->I

        // -------------------------------------------------------
        // PHASE 6: WB (writeback into L2 -> M state)
        //   -> covers: cp_cmd(WB), WB x hit
        //   MESI: I->M (WB fills line in M)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 6: WB (I->M)", UVM_MEDIUM)
        send_req(3'b011, 32'h0008_1900, 2'b00);  // WB, low, src0
        send_req(3'b011, 32'h0008_FA00, 2'b01);  // WB, mid, src1
        send_req(3'b011, 32'h0008_7700, 2'b00);  // WB, high, src0

        // -------------------------------------------------------
        // PHASE 7: GETS after WB (M->S transition in L2)
        //   MESI: M->S (GETS hit on M line, L2 downgrades to S)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 7: GETS on M line (M->S)", UVM_MEDIUM)
        send_req(3'b000, 32'h0008_1900, 2'b01);  // GETS hit on M -> M->S
        send_req(3'b000, 32'h0008_FA00, 2'b00);  // GETS hit on M -> M->S

        // -------------------------------------------------------
        // PHASE 8: GETM on M line (M->I)
        //   MESI: M->I (GETM invalidates dirty line)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 8: GETM on M line (M->I)", UVM_MEDIUM)
        send_req(3'b011, 32'h000A_1900, 2'b00);  // WB -> M
        send_req(3'b001, 32'h000A_1900, 2'b01);  // GETM hit -> M->I

        // -------------------------------------------------------
        // PHASE 9: Dirty eviction (WB + 8 conflicts -> DRAM WB)
        //   -> covers: mem cp_rw(dram_write), cx_rw_x_set
        //   MESI: various, forces eviction of M line
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 9: Dirty eviction", UVM_MEDIUM)
        send_req(3'b011, addr_low_0, 2'b00);  // WB to set 100 -> M
        for (int i = 0; i < 9; i++)
            send_req(3'b000, evict_addrs[i], 2'b01);  // fill all 8 ways + evict

        // Another dirty eviction in mid sets
        send_req(3'b011, addr_mid_0, 2'b01);  // WB -> M in mid set
        begin
            logic [31:0] mid_evict;
            for (int i = 0; i < 9; i++) begin
                mid_evict = {15'(i+4), addr_mid_0[16:6], 6'b0};
                send_req(3'b000, mid_evict, 2'b00);
            end
        end

        // -------------------------------------------------------
        // PHASE 10: Command transition pairs
        //   -> covers: cp_cmd_transition bins
        //   gets->gets already covered; add remaining pairs
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 10: Command transitions", UVM_MEDIUM)

        // gets->getm
        send_req(3'b000, 32'h000C_2000, 2'b00);
        send_req(3'b001, 32'h000C_4000, 2'b01);

        // getm->gets
        send_req(3'b001, 32'h000C_6000, 2'b00);
        send_req(3'b000, 32'h000C_8000, 2'b01);

        // getm->getm
        send_req(3'b001, 32'h000C_A000, 2'b00);
        send_req(3'b001, 32'h000C_C000, 2'b01);

        // gets->upgr (need S state first for UPGR to hit)
        send_req(3'b000, 32'h000E_2000, 2'b00); // fill S
        send_req(3'b000, 32'h000E_4000, 2'b01); // gets (for transition tracking)
        send_req(3'b010, 32'h000E_2000, 2'b00); // upgr

        // gets->wb
        send_req(3'b000, 32'h000E_6000, 2'b01);
        send_req(3'b011, 32'h000E_8000, 2'b00);

        // wb->gets
        send_req(3'b011, 32'h000E_A000, 2'b01);
        send_req(3'b000, 32'h000E_C000, 2'b00);

        // wb->getm
        send_req(3'b011, 32'h0010_2000, 2'b00);
        send_req(3'b001, 32'h0010_4000, 2'b01);

        // -------------------------------------------------------
        // PHASE 11: Same-set back-to-back (cp_same_set)
        // -------------------------------------------------------
        `uvm_info(get_type_name(), "Phase 11: Same-set requests", UVM_MEDIUM)
        send_req(3'b000, 32'h0012_3000, 2'b00);  // set X
        send_req(3'b000, 32'h0012_3000, 2'b01);  // same set+tag = same_set bin

        // -------------------------------------------------------
        // PHASE 12: E state transitions (GETS miss -> E if exclusive)
        // Note: In this L2 design GETS miss fills as S, not E.
        // But WB fills as M. GETM miss -> L2 stays I.
        // So E-state coverage requires explicit WB-like path if
        // the design supports it. If not reachable, those bins
        // will remain uncovered (expected for this design).
        // -------------------------------------------------------

        `uvm_info(get_type_name(), "=== Coverage Closure Complete ===", UVM_LOW)

    endtask : body

endclass : l2_cov_closure_seq