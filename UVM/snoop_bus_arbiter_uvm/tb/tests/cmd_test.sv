class cmd_test extends base_test;
  `uvm_component_utils(cmd_test)

  cmd_e target_cmd;

  function new(string name = "cmd_test", uvm_component parent = null);
    super.new(name, parent);
    target_cmd = CMD_GETS;
  endfunction

  task run_phase(uvm_phase phase);
    cmd_seq seq;
    phase.raise_objection(this);
    seq = cmd_seq::type_id::create("seq");
    seq.target_cmd = target_cmd;
    `uvm_info(get_type_name(), $sformatf("Running command test for %s", target_cmd.name()), UVM_LOW)
    seq.start(env.agent.seqr);
    #100;
    phase.drop_objection(this);
  endtask
endclass

class gets_test extends cmd_test;
  `uvm_component_utils(gets_test)
  function new(string name = "gets_test", uvm_component parent = null);
    super.new(name, parent);
    target_cmd = CMD_GETS;
  endfunction
endclass

class getm_test extends cmd_test;
  `uvm_component_utils(getm_test)
  function new(string name = "getm_test", uvm_component parent = null);
    super.new(name, parent);
    target_cmd = CMD_GETM;
  endfunction
endclass

class upgr_test extends cmd_test;
  `uvm_component_utils(upgr_test)
  function new(string name = "upgr_test", uvm_component parent = null);
    super.new(name, parent);
    target_cmd = CMD_UPGR;
  endfunction
endclass

class wb_test extends cmd_test;
  `uvm_component_utils(wb_test)
  function new(string name = "wb_test", uvm_component parent = null);
    super.new(name, parent);
    target_cmd = CMD_WB;
  endfunction
endclass
