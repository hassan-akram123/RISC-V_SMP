class icache_mem_seq_item extends uvm_sequence_item;

  logic             [ 31:0] line_addr;
  rand logic        [511:0] line_data;
  rand bit                  gnt_ok;
  rand int unsigned         resp_delay;


  `uvm_object_utils_begin(icache_mem_seq_item)
    `uvm_field_int(line_addr, UVM_ALL_ON)
    `uvm_field_int(line_data, UVM_ALL_ON)
    `uvm_field_int(gnt_ok, UVM_ALL_ON)
    `uvm_field_int(resp_delay, UVM_ALL_ON)
  `uvm_object_utils_end

  constraint c_gnt {
    gnt_ok dist {
      1 := 90,
      0 := 10
    };
  }

  constraint c_delay {resp_delay inside {[1 : 10]};}

  function new(string name = "icache_mem_seq_item");
    super.new(name);
  endfunction

endclass : icache_mem_seq_item
