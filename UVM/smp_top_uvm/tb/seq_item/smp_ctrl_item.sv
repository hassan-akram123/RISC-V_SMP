class smp_ctrl_item extends uvm_sequence_item;
  rand ctrl_cmd_e   cmd;
  rand logic [31:0] addr;
  rand logic [31:0] instr;
  rand int unsigned cycles;
  rand logic [63:0] core0_role_value;
  rand logic [63:0] core1_role_value;

  `uvm_object_utils_begin(smp_ctrl_item)
    `uvm_field_enum(ctrl_cmd_e, cmd, UVM_DEFAULT)
    `uvm_field_int(addr, UVM_HEX)
    `uvm_field_int(instr, UVM_HEX)
    `uvm_field_int(cycles, UVM_DEFAULT)
    `uvm_field_int(core0_role_value, UVM_HEX)
    `uvm_field_int(core1_role_value, UVM_HEX)
  `uvm_object_utils_end

  function new(string name = "smp_ctrl_item");
    super.new(name);
    addr             = '0;
    instr            = '0;
    cycles           = 0;
    core0_role_value = '0;
    core1_role_value = '0;
  endfunction
endclass
