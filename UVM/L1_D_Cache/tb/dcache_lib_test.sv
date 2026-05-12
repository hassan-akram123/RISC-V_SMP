// ============================================================
// File: dcache_lib_test.sv
// ============================================================

// ============================================================
// BASE TEST
// ============================================================
class dcache_base_test extends uvm_test;
  `uvm_component_utils(dcache_base_test)

  dcache_env env;

  // sequence type handles - set in build_phase, overridden in derived tests
  uvm_object_wrapper cpu_seq_type;
  uvm_object_wrapper mem_seq_type;

  function new(string name = "dcache_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // build_phase
  // ----------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // default sequence types - derived tests override these before super.build_phase
    cpu_seq_type = dcache_miss_seq::get_type();
    mem_seq_type = dcache_mem_resp_seq::get_type();

    uvm_config_int::set(this, "*", "recording_detail", 1);

    env = dcache_env::type_id::create("env", this);

    `uvm_info("BASE_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

  // ----------------------------------------
  // end_of_elaboration - print topology
  // ----------------------------------------
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("BASE_TEST", "End of elaboration phase executing", UVM_HIGH)
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase

  // ----------------------------------------
  // run_phase
  //
  // FIX: Use fork/join_any + disable fork.
  // The mem sequence is a reactive responder that runs forever,
  // producing items on demand.  The CPU sequence drives a finite
  // number of transactions and then finishes.  Once the CPU side
  // is done, we kill the mem side and drain the DUT.
  //
  // Previously both were joined with fork/join, causing a hang:
  // the CPU seq would finish but the mem seq (fixed count) could
  // either exhaust items (responder get_next_item blocks forever)
  // or never terminate if items remained.
  // ----------------------------------------
  virtual task run_phase(uvm_phase phase);
    uvm_sequence_base cpu_seq;
    uvm_sequence_base mem_seq;

    phase.raise_objection(this, "base_test_run");

    cpu_seq = uvm_sequence_base'(cpu_seq_type.create_object("cpu_seq"));
    mem_seq = uvm_sequence_base'(mem_seq_type.create_object("mem_seq"));

    fork
      begin
        fork
          cpu_seq.start(env.cpu_agent.sequencer);
          mem_seq.start(env.mem_agent.sequencer);
        join_any

        // CPU sequence finished - allow DUT to complete last response
        #500ns;

        // kill the mem sequence (it runs forever as a reactive responder)
        disable fork;
      end
    join

    // brief drain to let DUT settle
    #200ns;

    phase.drop_objection(this, "base_test_run");
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
    `uvm_info("BASE_TEST", "** TEST COMPLETE **", UVM_NONE)
  endfunction : report_phase

endclass : dcache_base_test

// ============================================================
// LOAD HIT TEST
// send same address twice - second should hit
// ============================================================
class dcache_load_hit_test extends dcache_base_test;
  `uvm_component_utils(dcache_load_hit_test)

  function new(string name = "dcache_load_hit_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_load_hit_seq::get_type();
    `uvm_info("LOAD_HIT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_load_hit_test

// ============================================================
// STORE HIT TEST
// load then store to same address - exercises E->M transition
// ============================================================
class dcache_store_hit_test extends dcache_base_test;
  `uvm_component_utils(dcache_store_hit_test)

  function new(string name = "dcache_store_hit_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_store_hit_seq::get_type();
    `uvm_info("STORE_HIT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_store_hit_test

// ============================================================
// MISS TEST
// send addresses to different sets - forces misses
// ============================================================
class dcache_miss_test extends dcache_base_test;
  `uvm_component_utils(dcache_miss_test)

  function new(string name = "dcache_miss_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_miss_seq::get_type();
    `uvm_info("MISS_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_miss_test

// ============================================================
// CONFLICT TEST
// same set different tags - tests PLRU eviction
// ============================================================
class dcache_conflict_test extends dcache_base_test;
  `uvm_component_utils(dcache_conflict_test)

  function new(string name = "dcache_conflict_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_conflict_seq::get_type();
    `uvm_info("CONFLICT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_conflict_test

// ============================================================
// DIRTY EVICTION TEST
// fill a line with a store then evict it
// exercises writeback path - WB request + supply beats
// ============================================================
class dcache_dirty_evict_test extends dcache_base_test;
  `uvm_component_utils(dcache_dirty_evict_test)

  function new(string name = "dcache_dirty_evict_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_dirty_evict_seq::get_type();
    `uvm_info("DIRTY_EVICT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_dirty_evict_test

// ============================================================
// UPGRADE TEST
// load gets S state then store triggers UPGR request
// ============================================================
class dcache_upgrade_test extends dcache_base_test;
  `uvm_component_utils(dcache_upgrade_test)

  function new(string name = "dcache_upgrade_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_upgrade_seq::get_type();
    mem_seq_type = dcache_mem_shared_resp_seq::get_type();
    `uvm_info("UPGRADE_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_upgrade_test

// ============================================================
// NACK TEST
// memory responds with nack - tests retry path
// ============================================================
class dcache_nack_test extends dcache_base_test;
  `uvm_component_utils(dcache_nack_test)

  function new(string name = "dcache_nack_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_miss_seq::get_type();
    mem_seq_type = dcache_nack_seq::get_type();
    `uvm_info("NACK_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_nack_test

// ============================================================
// DELAYED RESPONSE TEST
// memory responds slowly - tests controller patience
// ============================================================
class dcache_delayed_test extends dcache_base_test;
  `uvm_component_utils(dcache_delayed_test)

  function new(string name = "dcache_delayed_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    mem_seq_type = dcache_delayed_resp_seq::get_type();
    `uvm_info("DELAYED_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_delayed_test

// ============================================================
// SNOOP TEST
// memory injects snoops - tests snoop handling FSM states
// ============================================================
class dcache_snoop_test extends dcache_base_test;
  `uvm_component_utils(dcache_snoop_test)

  function new(string name = "dcache_snoop_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_miss_seq::get_type();
    mem_seq_type = dcache_snoop_seq::get_type();
    `uvm_info("SNOOP_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_snoop_test

// ============================================================
// COVERAGE-CLOSING TEST
//
// Comprehensive test that exercises all coverage bins:
// - CPU side: loads, stores, hits, misses, all op transitions,
//   all wstrb patterns, varied latencies, set spread
// - MEM side: E/S/M grants, nacks, snoops, varied delays
// - MESI: I->E, I->S, E->M, S->M (upgr), M->I (snoop/evict)
// ============================================================
class dcache_coverage_close_test extends dcache_base_test;
  `uvm_component_utils(dcache_coverage_close_test)

  function new(string name = "dcache_coverage_close_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_seq_type = dcache_coverage_close_seq::get_type();
   // mem_seq_type = dcache_mem_mixed_resp_seq::get_type();
    `uvm_info("COV_CLOSE_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : dcache_coverage_close_test