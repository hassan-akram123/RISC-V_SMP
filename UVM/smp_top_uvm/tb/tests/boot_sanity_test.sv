class boot_sanity_test extends smp_base_test;
  `uvm_component_utils(boot_sanity_test)

  function new(string name = "boot_sanity_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void configure_cfg();
    super.configure_cfg();
    cfg.apply_boot_sanity_profile();
  endfunction

  task run_phase(uvm_phase phase);
    boot_sanity_seq seq;
    phase.raise_objection(this);
    seq = boot_sanity_seq::type_id::create("seq");
    seq.cfg = cfg;
    seq.start(env.ctrl_agent.seqr);
    phase.drop_objection(this);
  endtask
endclass
