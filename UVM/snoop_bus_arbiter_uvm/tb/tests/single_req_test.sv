class single_req_test extends base_test;
  `uvm_component_utils(single_req_test)

  requester_e target_req;

  function new(string name = "single_req_test", uvm_component parent = null);
    super.new(name, parent);
    target_req = REQ_I0;
  endfunction

  task run_phase(uvm_phase phase);
    single_req_seq seq;
    phase.raise_objection(this);
    seq = single_req_seq::type_id::create("seq");
    seq.target_req = target_req;
    `uvm_info(get_type_name(), $sformatf("Running single request test for %s", target_req.name()), UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class single_i0_test extends single_req_test;
  `uvm_component_utils(single_i0_test)
  function new(string name = "single_i0_test", uvm_component parent = null);
    super.new(name, parent);
    target_req = REQ_I0;
  endfunction
endclass

class single_i1_test extends single_req_test;
  `uvm_component_utils(single_i1_test)
  function new(string name = "single_i1_test", uvm_component parent = null);
    super.new(name, parent);
    target_req = REQ_I1;
  endfunction
endclass

class single_d0_test extends single_req_test;
  `uvm_component_utils(single_d0_test)
  function new(string name = "single_d0_test", uvm_component parent = null);
    super.new(name, parent);
    target_req = REQ_D0;
  endfunction
endclass

class single_d1_test extends single_req_test;
  `uvm_component_utils(single_d1_test)
  function new(string name = "single_d1_test", uvm_component parent = null);
    super.new(name, parent);
    target_req = REQ_D1;
  endfunction
endclass
