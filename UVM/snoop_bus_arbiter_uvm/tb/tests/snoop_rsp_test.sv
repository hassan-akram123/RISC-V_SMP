class snoop_rsp_base_test extends base_test;
  `uvm_component_utils(snoop_rsp_base_test)
  function new(string name = "snoop_rsp_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction
endclass

class snoop_no_hit_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_no_hit_test)
  function new(string name = "snoop_no_hit_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_no_hit_seq seq;
    phase.raise_objection(this);
    seq = snoop_no_hit_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running snoop no-hit fallback-to-L2 test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class snoop_d0_hit_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_d0_hit_test)
  function new(string name = "snoop_d0_hit_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_d0_hit_seq seq;
    phase.raise_objection(this);
    seq = snoop_d0_hit_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running snoop D0-hit supplier test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class snoop_d1_hit_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_d1_hit_test)
  function new(string name = "snoop_d1_hit_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_d1_hit_seq seq;
    phase.raise_objection(this);
    seq = snoop_d1_hit_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running snoop D1-hit supplier test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class snoop_both_hit_data_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_both_hit_data_test)
  function new(string name = "snoop_both_hit_data_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_both_hit_data_seq seq;
    phase.raise_objection(this);
    seq = snoop_both_hit_data_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running both-hit with both-data supplier-priority test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class snoop_both_hit_no_data_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_both_hit_no_data_test)
  function new(string name = "snoop_both_hit_no_data_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_both_hit_no_data_seq seq;
    phase.raise_objection(this);
    seq = snoop_both_hit_no_data_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running both-hit with no-data fallback test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class snoop_delayed_ack_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_delayed_ack_test)
  function new(string name = "snoop_delayed_ack_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_delayed_ack_seq seq;
    phase.raise_objection(this);
    seq = snoop_delayed_ack_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running delayed snoop-ack test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class snoop_staggered_mix_test extends snoop_rsp_base_test;
  `uvm_component_utils(snoop_staggered_mix_test)
  function new(string name = "snoop_staggered_mix_test", uvm_component parent = null); super.new(name, parent); endfunction
  task run_phase(uvm_phase phase);
    snoop_staggered_mix_seq seq;
    phase.raise_objection(this);
    seq = snoop_staggered_mix_seq::type_id::create("seq");
    `uvm_info(get_type_name(), "Running staggered mixed snoop-response test", UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass
