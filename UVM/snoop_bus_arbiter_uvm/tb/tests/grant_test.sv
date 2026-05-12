class grant_base_test extends base_test;
  `uvm_component_utils(grant_base_test)
  function new(string name = "grant_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction
endclass

class i_grant_i0_test extends grant_base_test;
  `uvm_component_utils(i_grant_i0_test)
  function new(string name = "i_grant_i0_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    i_grant_i0_seq seq;
    phase.raise_objection(this);
    seq = i_grant_i0_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running I-side grant destination test for I0", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class i_grant_i1_test extends grant_base_test;
  `uvm_component_utils(i_grant_i1_test)
  function new(string name = "i_grant_i1_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    i_grant_i1_seq seq;
    phase.raise_objection(this);
    seq = i_grant_i1_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running I-side grant destination test for I1", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class d_gets_s_state_test extends grant_base_test;
  `uvm_component_utils(d_gets_s_state_test)
  function new(string name = "d_gets_s_state_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    d_gets_s_state_seq seq;
    phase.raise_objection(this);
    seq = d_gets_s_state_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running D-side GETS state-S grant test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class d_gets_e_state_test extends grant_base_test;
  `uvm_component_utils(d_gets_e_state_test)
  function new(string name = "d_gets_e_state_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    d_gets_e_state_seq seq;
    phase.raise_objection(this);
    seq = d_gets_e_state_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running D-side GETS state-E grant test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class d_getm_m_state_test extends grant_base_test;
  `uvm_component_utils(d_getm_m_state_test)
  function new(string name = "d_getm_m_state_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    d_getm_m_state_seq seq;
    phase.raise_objection(this);
    seq = d_getm_m_state_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running D-side GETM state-M grant test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class d_upgr_m_state_test extends grant_base_test;
  `uvm_component_utils(d_upgr_m_state_test)
  function new(string name = "d_upgr_m_state_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    d_upgr_m_state_seq seq;
    phase.raise_objection(this);
    seq = d_upgr_m_state_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running D-side UPGR state-M grant test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class d_wb_i_state_test extends grant_base_test;
  `uvm_component_utils(d_wb_i_state_test)
  function new(string name = "d_wb_i_state_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    d_wb_i_state_seq seq;
    phase.raise_objection(this);
    seq = d_wb_i_state_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running D-side WB state-I grant test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class grant_addr_consistency_test extends grant_base_test;
  `uvm_component_utils(grant_addr_consistency_test)
  function new(string name = "grant_addr_consistency_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    grant_addr_consistency_seq seq;
    phase.raise_objection(this);
    seq = grant_addr_consistency_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running D-side grant-address consistency test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
