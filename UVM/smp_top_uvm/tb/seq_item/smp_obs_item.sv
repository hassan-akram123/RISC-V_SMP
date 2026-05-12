class smp_obs_item extends uvm_sequence_item;
  obs_kind_e    kind;
  int unsigned  core_id;
  logic [31:0]  pc;
  logic [3:0]   axi_id;
  logic [31:0]  addr;
  logic [7:0]   len;
  logic [1:0]   resp;
  logic [15:0]  wstrb;
  logic [1:0]   src;
  logic [2:0]   cmd;
  logic [1:0]   dst;
  logic         ok;
  logic [1:0]   state;
  logic [2:0]   beat;
  time          timestamp;

  `uvm_object_utils_begin(smp_obs_item)
    `uvm_field_enum(obs_kind_e, kind, UVM_DEFAULT)
    `uvm_field_int(core_id, UVM_DEFAULT)
    `uvm_field_int(pc, UVM_HEX)
    `uvm_field_int(axi_id, UVM_HEX)
    `uvm_field_int(addr, UVM_HEX)
    `uvm_field_int(len, UVM_DEFAULT)
    `uvm_field_int(resp, UVM_DEFAULT)
    `uvm_field_int(wstrb, UVM_HEX)
    `uvm_field_int(src, UVM_DEFAULT)
    `uvm_field_int(cmd, UVM_DEFAULT)
    `uvm_field_int(dst, UVM_DEFAULT)
    `uvm_field_int(ok, UVM_DEFAULT)
    `uvm_field_int(state, UVM_DEFAULT)
    `uvm_field_int(beat, UVM_DEFAULT)
    `uvm_field_int(timestamp, UVM_DEFAULT)
  `uvm_object_utils_end

  function new(string name = "smp_obs_item");
    super.new(name);
  endfunction
endclass
