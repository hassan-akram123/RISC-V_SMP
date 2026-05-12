// ============================================================
// File: icache_test_lib.sv
// ============================================================

// ============================================================
// BASE TEST
// ============================================================

import uvm_pkg::*;
`include "uvm_macros.svh"
import icache_pkg::*;


class icache_base_test extends uvm_test;
  `uvm_component_utils(icache_base_test)

  icache_env env;

  function new(string name = "icache_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // build_phase
  // ----------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // set default cpu sequence
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_miss_seq::get_type());

    // set default mem sequence
    uvm_config_wrapper::set(this, "env.mem_agent.sequencer.run_phase", "default_sequence",
                            icache_mem_resp_seq::get_type());

    uvm_config_int::set(this, "*", "recording_detail", 1);

    env = icache_env::type_id::create("env", this);

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
  // run_phase - set drain time
  // ----------------------------------------
  virtual task run_phase(uvm_phase phase);
    uvm_objection obj = phase.get_objection();
    obj.set_drain_time(this, 200ns);
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

endclass : icache_base_test

// ============================================================
//  NORMAL TESTS
// ============================================================

// ------------------------------------------------------------
// HIT TEST - send same address twice, second should hit
// ------------------------------------------------------------
class icache_hit_test extends icache_base_test;
  `uvm_component_utils(icache_hit_test)

  function new(string name = "icache_hit_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_hit_seq::get_type());
    `uvm_info("HIT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_hit_test

// ------------------------------------------------------------
// MISS TEST - send addresses to different sets, forces misses
// ------------------------------------------------------------
class icache_miss_test extends icache_base_test;
  `uvm_component_utils(icache_miss_test)

  function new(string name = "icache_miss_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_miss_seq::get_type());
    `uvm_info("MISS_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_miss_test

// ------------------------------------------------------------
// SEQUENTIAL FETCH TEST - multiple words from same cache line
// ------------------------------------------------------------
class icache_sequential_test extends icache_base_test;
  `uvm_component_utils(icache_sequential_test)

  function new(string name = "icache_sequential_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_sequential_fetch_seq::get_type());
    `uvm_info("SEQ_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_sequential_test

// ============================================================
//  EDGE CASE TESTS
// ============================================================

// ------------------------------------------------------------
// CONFLICT TEST - same set different tags, tests eviction
// ------------------------------------------------------------
class icache_conflict_test extends icache_base_test;
  `uvm_component_utils(icache_conflict_test)

  function new(string name = "icache_conflict_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_conflict_seq::get_type());
    `uvm_info("CONFLICT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_conflict_test

// ------------------------------------------------------------
// NACK TEST - memory nacks then grants, tests retry path
// ------------------------------------------------------------
class icache_nack_test extends icache_base_test;
  `uvm_component_utils(icache_nack_test)

  function new(string name = "icache_nack_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_miss_seq::get_type());
    uvm_config_wrapper::set(this, "env.mem_agent.sequencer.run_phase", "default_sequence",
                            icache_nack_seq::get_type());
    `uvm_info("NACK_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_nack_test

// ------------------------------------------------------------
// DELAYED RESPONSE TEST - memory responds slowly
// ------------------------------------------------------------
class icache_delayed_test extends icache_base_test;
  `uvm_component_utils(icache_delayed_test)

  function new(string name = "icache_delayed_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.mem_agent.sequencer.run_phase", "default_sequence",
                            icache_delayed_resp_seq::get_type());
    `uvm_info("DELAYED_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_delayed_test

// ------------------------------------------------------------
// ADDRESS BOUNDARY TEST - min/max addresses and set boundaries
// ------------------------------------------------------------
class icache_addr_boundary_test extends icache_base_test;
  `uvm_component_utils(icache_addr_boundary_test)

  function new(string name = "icache_addr_boundary_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_addr_boundary_seq::get_type());
    `uvm_info("BOUNDARY_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_addr_boundary_test

// ------------------------------------------------------------
// EVICT REACCESS TEST - fill 8 ways, evict, verify re-miss
// ------------------------------------------------------------
class icache_evict_reaccess_test extends icache_base_test;
  `uvm_component_utils(icache_evict_reaccess_test)

  function new(string name = "icache_evict_reaccess_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_evict_reaccess_seq::get_type());
    `uvm_info("EVICT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_evict_reaccess_test

// ------------------------------------------------------------
// HIT-MISS ALTERNATING TEST - back-to-back hit/miss transitions
// ------------------------------------------------------------
class icache_hit_miss_alternating_test extends icache_base_test;
  `uvm_component_utils(icache_hit_miss_alternating_test)

  function new(string name = "icache_hit_miss_alternating_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_hit_miss_alternating_seq::get_type());
    `uvm_info("ALT_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_hit_miss_alternating_test

// ============================================================
//  STRESS TESTS
// ============================================================

// ------------------------------------------------------------
// RANDOM STRESS TEST - 200 fully random requests
// ------------------------------------------------------------
class icache_random_stress_test extends icache_base_test;
  `uvm_component_utils(icache_random_stress_test)

  function new(string name = "icache_random_stress_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_random_stress_seq::get_type());
    // use stress mem sequence: random nacks + random delays
    uvm_config_wrapper::set(this, "env.mem_agent.sequencer.run_phase", "default_sequence",
                            icache_mem_stress_seq::get_type());
    `uvm_info("RAND_STRESS_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_random_stress_test

// ------------------------------------------------------------
// THRASH TEST - 5 rounds of 16 tags in same set
// ------------------------------------------------------------
class icache_thrash_test extends icache_base_test;
  `uvm_component_utils(icache_thrash_test)

  function new(string name = "icache_thrash_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_thrash_seq::get_type());
    `uvm_info("THRASH_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_thrash_test

// ------------------------------------------------------------
// FULL SWEEP TEST - fill all 64 sets then re-read for hits
// ------------------------------------------------------------
class icache_full_sweep_test extends icache_base_test;
  `uvm_component_utils(icache_full_sweep_test)

  function new(string name = "icache_full_sweep_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_wrapper::set(this, "env.cpu_agent.sequencer.run_phase", "default_sequence",
                            icache_full_sweep_seq::get_type());
    `uvm_info("SWEEP_TEST", "Build phase executing", UVM_HIGH)
  endfunction : build_phase

endclass : icache_full_sweep_test