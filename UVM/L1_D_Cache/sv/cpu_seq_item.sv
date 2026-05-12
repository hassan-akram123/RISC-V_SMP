class dcache_cpu_seq_item extends uvm_sequence_item;


  rand logic [31:0] ldst_addr;
  rand logic        ldst_is_store;
  rand logic [63:0] ldst_wdata;
  rand logic [ 7:0] ldst_wstrb;

  // ----------------------------------------
  // bookkeeping fields (set by driver/monitor, not randomized)
  // ----------------------------------------
  logic      [31:0] prev_addr;  // previous request address, used in constraints
  logic      [63:0] ldst_rdata;  // captured response data
  bit               is_hit;  // filled in by scoreboard
  int               latency;  // cycles from valid to resp_valid

  `uvm_object_utils_begin(dcache_cpu_seq_item)
    `uvm_field_int(ldst_addr, UVM_ALL_ON)
    `uvm_field_int(ldst_is_store, UVM_ALL_ON)
    `uvm_field_int(ldst_wdata, UVM_ALL_ON)
    `uvm_field_int(ldst_wstrb, UVM_ALL_ON)
    `uvm_field_int(prev_addr, UVM_ALL_ON)
    `uvm_field_int(ldst_rdata, UVM_ALL_ON)
    `uvm_field_int(is_hit, UVM_ALL_ON)
    `uvm_field_int(latency, UVM_ALL_ON)
  `uvm_object_utils_end

  // ----------------------------------------
  // constraints
  // ----------------------------------------

  // address must be 8-byte aligned (64-bit data bus)
  constraint c_align {ldst_addr[2:0] == 3'b000;}

  // keep addresses within a small working set to encourage hits
  constraint c_range {ldst_addr inside {[32'h0000_0000 : 32'h0001_FFFF]};}

  // wstrb must be non-zero on a store
  constraint c_wstrb_nonzero {ldst_is_store -> (ldst_wstrb != 8'h00);}

  // wstrb must be zero on a load (no write data)
  constraint c_wstrb_zero_on_load {!ldst_is_store -> (ldst_wstrb == 8'h00);}

  // same cache line as previous request (hit-friendly)
  constraint c_same_line {ldst_addr[31:6] == prev_addr[31:6];}

  // different set from previous request (conflict miss)
  constraint c_diff_set {ldst_addr[11:6] != prev_addr[11:6];}

  // same set, different tag (set conflict / eviction scenario)
  constraint c_conflict {
    ldst_addr[11:6] == prev_addr[11:6];
    ldst_addr[31:12] != prev_addr[31:12];
  }

  // ----------------------------------------
  // constructor
  // Initialize prev_addr to 0 so all constraints that reference it
  // (c_same_line, c_diff_set, c_conflict) never see an X value.
  // ----------------------------------------
  function new(string name = "dcache_cpu_seq_item");
    super.new(name);
    prev_addr = 32'h0;
  endfunction

endclass : dcache_cpu_seq_item
