class random_test extends base_test;
  `uvm_component_utils(random_test)

  function new(string name = "random_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    random_seq seq;
    phase.raise_objection(this);
    seq = random_seq::type_id::create("seq");
    assert(seq.randomize());
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
