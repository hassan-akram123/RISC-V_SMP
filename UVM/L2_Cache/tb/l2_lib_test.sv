// ============================================================
// File: l2_lib_test.sv
// Description: Base test and all directed tests for L2 UVM TB.
//   run_phase pattern mirrors dcache_lib_test exactly:
//     - snoop sequence drives finite transactions
//     - mem sequence is a reactive responder (runs forever)
//     - fork/join_any: when snoop seq finishes, drain DUT then
//       kill mem seq with disable fork
// ============================================================

// ============================================================
// BASE TEST
// ============================================================
class l2_base_test extends uvm_test;
    `uvm_component_utils(l2_base_test)

    l2_env env;

    // sequence type handles - set in build_phase, overridden in derived tests
    uvm_object_wrapper snoop_seq_type;
    uvm_object_wrapper mem_seq_type;

    function new(string name = "l2_base_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    // ----------------------------------------
    // build_phase
    // ----------------------------------------
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        // defaults - derived tests override before super.build_phase
        snoop_seq_type = l2_miss_seq::get_type();
        mem_seq_type   = l2_mem_resp_seq::get_type();

        uvm_config_int::set(this, "*", "recording_detail", 1);

        env = l2_env::type_id::create("env", this);

        `uvm_info("L2_BASE_TEST", "Build phase executing", UVM_HIGH)
    endfunction : build_phase

    // ----------------------------------------
    // end_of_elaboration
    // ----------------------------------------
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info("L2_BASE_TEST", "End of elaboration phase", UVM_HIGH)
        uvm_top.print_topology();
    endfunction : end_of_elaboration_phase

    // ----------------------------------------
    // run_phase
    // Snoop seq is finite; mem seq is reactive/infinite.
    // When snoop seq finishes drain DUT then kill mem seq.
    // ----------------------------------------
    virtual task run_phase(uvm_phase phase);
        uvm_sequence_base snoop_seq;
        uvm_sequence_base mem_seq;

        phase.raise_objection(this, "l2_base_test_run");

        snoop_seq = uvm_sequence_base'(snoop_seq_type.create_object("snoop_seq"));
        mem_seq   = uvm_sequence_base'(mem_seq_type.create_object("mem_seq"));

        fork
            begin
                fork
                    snoop_seq.start(env.snoop_agent.sequencer);
                    mem_seq.start(env.mem_agent.sequencer);
                join_any

                // Snoop sequence finished - wait long enough for all in-flight
                // DUT transactions to complete and be captured by the monitor.
                // Each miss takes ~10 cycles (lookup+vmeta+mem+fill+supply) at
                // 10ns/cycle = ~100ns per transaction.  20 transactions max
                // with generous margin = 20us drain.
                #20000ns;

                // Kill the reactive mem sequence
                disable fork;
            end
        join

        // Final drain
        #500ns;

        phase.drop_objection(this, "l2_base_test_run");
    endtask : run_phase

    // ----------------------------------------
    // check_phase
    // ----------------------------------------
    function void check_phase(uvm_phase phase);
        check_config_usage();
    endfunction : check_phase

    // ----------------------------------------
    // report_phase
    // ----------------------------------------
    function void report_phase(uvm_phase phase);
        `uvm_info("L2_BASE_TEST", "** TEST COMPLETE **", UVM_NONE)
    endfunction : report_phase

endclass : l2_base_test

// ============================================================
// GETS SINGLE TEST - one cold miss + fill
// ============================================================
class l2_gets_single_test extends l2_base_test;
    `uvm_component_utils(l2_gets_single_test)

    function new(string name = "l2_gets_single_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_gets_single_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_GETS_SINGLE_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_gets_single_test

// ============================================================
// GETM SINGLE TEST - one exclusive read, miss + fill
// ============================================================
class l2_getm_single_test extends l2_base_test;
    `uvm_component_utils(l2_getm_single_test)

    function new(string name = "l2_getm_single_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_getm_single_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_GETM_SINGLE_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_getm_single_test

// ============================================================
// GETS HIT TEST - GETS same address twice: miss then hit
// ============================================================
class l2_gets_hit_test extends l2_base_test;
    `uvm_component_utils(l2_gets_hit_test)

    function new(string name = "l2_gets_hit_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_gets_hit_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_GETS_HIT_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_gets_hit_test

// ============================================================
// GETM HIT TEST - GETS fills S, GETM hits and invalidates L2
// ============================================================
class l2_getm_hit_test extends l2_base_test;
    `uvm_component_utils(l2_getm_hit_test)

    function new(string name = "l2_getm_hit_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_getm_hit_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_GETM_HIT_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_getm_hit_test

// ============================================================
// UPGR TEST - GETS (S state) then UPGR (S->I, no data)
// ============================================================
class l2_upgr_test extends l2_base_test;
    `uvm_component_utils(l2_upgr_test)

    function new(string name = "l2_upgr_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_upgr_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_UPGR_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_upgr_test

// ============================================================
// WB TEST - upper level writes dirty line into L2
// ============================================================
class l2_wb_test extends l2_base_test;
    `uvm_component_utils(l2_wb_test)

    function new(string name = "l2_wb_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_wb_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_WB_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_wb_test

// ============================================================
// MISS TEST - different sets every time, all cold misses
// ============================================================
class l2_miss_test extends l2_base_test;
    `uvm_component_utils(l2_miss_test)

    function new(string name = "l2_miss_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_miss_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_MISS_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_miss_test

// ============================================================
// CONFLICT TEST - same set different tags, exercises PLRU
// ============================================================
class l2_conflict_test extends l2_base_test;
    `uvm_component_utils(l2_conflict_test)

    function new(string name = "l2_conflict_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_conflict_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_CONFLICT_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_conflict_test

// ============================================================
// DIRTY EVICT TEST - dirty line eviction, DRAM writeback path
// ============================================================
class l2_dirty_evict_test extends l2_base_test;
    `uvm_component_utils(l2_dirty_evict_test)

    function new(string name = "l2_dirty_evict_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_dirty_evict_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_DIRTY_EVICT_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_dirty_evict_test

// ============================================================
// DELAYED MEM TEST - memory responds slowly, tests patience
// ============================================================
class l2_delayed_mem_test extends l2_base_test;
    `uvm_component_utils(l2_delayed_mem_test)

    function new(string name = "l2_delayed_mem_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_miss_seq::get_type();
        mem_seq_type   = l2_mem_delayed_resp_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_DELAYED_MEM_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_delayed_mem_test

// ============================================================
// MIXED TEST - random mix of all command types
// ============================================================
class l2_mixed_test extends l2_base_test;
    `uvm_component_utils(l2_mixed_test)

    function new(string name = "l2_mixed_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_mixed_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_MIXED_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_mixed_test

// ============================================================
// COVERAGE CLOSURE TEST - exercises all coverage bins
// ============================================================
class l2_cov_closure_test extends l2_base_test;
    `uvm_component_utils(l2_cov_closure_test)

    function new(string name = "l2_cov_closure_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        snoop_seq_type = l2_cov_closure_seq::get_type();
        mem_seq_type   = l2_mem_resp_seq::get_type();
        super.build_phase(phase);
        `uvm_info("L2_COV_CLOSURE_TEST", "Build phase", UVM_HIGH)
    endfunction : build_phase

endclass : l2_cov_closure_test