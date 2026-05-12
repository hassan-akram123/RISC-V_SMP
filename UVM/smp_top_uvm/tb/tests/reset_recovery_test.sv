class reset_recovery_test extends smp_base_test;
  `uvm_component_utils(reset_recovery_test)

  function new(string name = "reset_recovery_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void configure_cfg();
    super.configure_cfg();
    cfg.apply_reset_recovery_profile();
  endfunction

  task run_phase(uvm_phase phase);
    reset_recovery_seq seq;
    phase.raise_objection(this);
    seq = reset_recovery_seq::type_id::create("seq");
    seq.cfg = cfg;
    seq.start(env.ctrl_agent.seqr);
    phase.drop_objection(this);
  endtask
endclass
