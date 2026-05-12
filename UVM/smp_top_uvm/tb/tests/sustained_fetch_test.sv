class sustained_fetch_test extends smp_base_test;
  `uvm_component_utils(sustained_fetch_test)

  function new(string name = "sustained_fetch_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void configure_cfg();
    super.configure_cfg();
    cfg.apply_sustained_fetch_profile();
  endfunction

  task run_phase(uvm_phase phase);
    sustained_fetch_seq seq;
    phase.raise_objection(this);
    seq = sustained_fetch_seq::type_id::create("seq");
    seq.cfg = cfg;
    seq.start(env.ctrl_agent.seqr);
    phase.drop_objection(this);
  endtask
endclass
