class arb_base_test extends base_test;
  `uvm_component_utils(arb_base_test)

  function new(string name = "arb_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction
endclass

class arb_2way_i_test extends arb_base_test;
  `uvm_component_utils(arb_2way_i_test)
  function new(string name = "arb_2way_i_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    arb_2way_i_seq seq;
    phase.raise_objection(this);
    seq = arb_2way_i_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running 2-way arbitration test for i0/i1", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class arb_2way_d_test extends arb_base_test;
  `uvm_component_utils(arb_2way_d_test)
  function new(string name = "arb_2way_d_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    arb_2way_d_seq seq;
    phase.raise_objection(this);
    seq = arb_2way_d_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running 2-way arbitration test for d0/d1", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class arb_3way_test extends arb_base_test;
  `uvm_component_utils(arb_3way_test)
  function new(string name = "arb_3way_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    arb_3way_seq seq;
    phase.raise_objection(this);
    seq = arb_3way_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running 3-way arbitration test for {i1,d0,d1}", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class arb_4way_test extends arb_base_test;
  `uvm_component_utils(arb_4way_test)
  function new(string name = "arb_4way_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    arb_4way_seq seq;
    phase.raise_objection(this);
    seq = arb_4way_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running 4-way arbitration test for all requesters", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class back_to_back_req_test extends arb_base_test;
  `uvm_component_utils(back_to_back_req_test)
  function new(string name = "back_to_back_req_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    back_to_back_req_seq seq;
    phase.raise_objection(this);
    seq = back_to_back_req_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running mixed back-to-back arbitration test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class round_robin_fairness_test extends arb_base_test;
  `uvm_component_utils(round_robin_fairness_test)
  function new(string name = "round_robin_fairness_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    round_robin_fairness_seq seq;
    phase.raise_objection(this);
    seq = round_robin_fairness_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running round-robin fairness test with all requesters contending", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
