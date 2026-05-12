class icache_cpu_seq_item extends uvm_sequence_item;

  // FIX: was 'rand logic' - logic is 4-state so randomization can produce X.
  //      Using 'bit' guarantees 2-state clean values every randomization.
  rand bit   [31:0] req_addr;
  // FIX: initialize to '0 to prevent X/Z in constraints before first item
  bit        [31:0] prev_addr = '0;
  logic      [63:0] resp_data;
  bit               is_hit;
  int               latency;

  `uvm_object_utils_begin(icache_cpu_seq_item)
    `uvm_field_int(req_addr, UVM_ALL_ON)
    `uvm_field_int(prev_addr, UVM_ALL_ON)
    `uvm_field_int(resp_data, UVM_ALL_ON)
    `uvm_field_int(is_hit, UVM_ALL_ON)
    `uvm_field_int(latency, UVM_ALL_ON)
  `uvm_object_utils_end

  constraint c_align {req_addr[2:0] == 3'b000;}

  constraint c_range {req_addr inside {[32'h0000_0000 : 32'h0001_FFFF]};}

  constraint c_same_line {req_addr[31:6] == prev_addr[31:6];}

  constraint c_diff_set {req_addr[11:6] != prev_addr[11:6];}

  constraint c_conflict {
    req_addr[11:6] == prev_addr[11:6];
    req_addr[31:12] != prev_addr[31:12];
  }

  function new(string name = "icache_cpu_seq_item");
    super.new(name);
  endfunction

endclass : icache_cpu_seq_item