class rand_basic_phasef_test extends base_test;
  `uvm_component_utils(rand_basic_phasef_test)

  function new(string name = "rand_basic_phasef_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    rand_basic_phasef_seq seq;
    phase.raise_objection(this);
    seq = rand_basic_phasef_seq::type_id::create("seq");
    seq.num_txns = 8;
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class rand_arb_mix_phasef_test extends base_test;
  `uvm_component_utils(rand_arb_mix_phasef_test)

  function new(string name = "rand_arb_mix_phasef_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    rand_arb_mix_phasef_seq seq;
    phase.raise_objection(this);
    seq = rand_arb_mix_phasef_seq::type_id::create("seq");
    seq.num_txns = 8;
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class coverage_closure_test extends base_test;
  `uvm_component_utils(coverage_closure_test)

  function new(string name = "coverage_closure_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    coverage_closure_seq seq;
    phase.raise_objection(this);
    seq = coverage_closure_seq::type_id::create("seq");
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class phasef_regression_test extends base_test;
  `uvm_component_utils(phasef_regression_test)

  function new(string name = "phasef_regression_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    coverage_closure_seq     closure_seq;
    rand_basic_phasef_seq    basic_seq;
    rand_arb_mix_phasef_seq  arb_seq;

    phase.raise_objection(this);

    closure_seq = coverage_closure_seq::type_id::create("closure_seq");
    closure_seq.start(env.agent.seqr);

    basic_seq = rand_basic_phasef_seq::type_id::create("basic_seq");
    basic_seq.num_txns = 6;
    basic_seq.start(env.agent.seqr);

    arb_seq = rand_arb_mix_phasef_seq::type_id::create("arb_seq");
    arb_seq.num_txns = 6;
    arb_seq.start(env.agent.seqr);

    #100;
    phase.drop_objection(this);
  endtask
endclass
