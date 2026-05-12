class smoke_test extends base_test;
  `uvm_component_utils(smoke_test)

  function new(string name = "smoke_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    smoke_seq seq;
    phase.raise_objection(this);
    seq = smoke_seq::type_id::create("seq");
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
