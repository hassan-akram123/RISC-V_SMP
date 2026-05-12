class shared_line_contention_test extends smp_base_test;
  `uvm_component_utils(shared_line_contention_test)

  function new(string name = "shared_line_contention_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void configure_cfg();
    super.configure_cfg();
    cfg.apply_shared_line_contention_profile();
  endfunction

  task run_phase(uvm_phase phase);
    shared_line_contention_seq seq;
    phase.raise_objection(this);
    seq = shared_line_contention_seq::type_id::create("seq");
    seq.cfg = cfg;
    seq.start(env.ctrl_agent.seqr);
    phase.drop_objection(this);
  endtask
endclass
