class dcache_mem_seq_item extends uvm_sequence_item;

  // ----------------------------------------
  // captured from controller request
  // ----------------------------------------
  logic             [ 31:0] line_addr;  // request address (set by responder)
  logic             [  2:0] req_cmd;    // CMD_GETS/GETM/UPGR/WB (set by responder)

  // ----------------------------------------
  // grant response fields (randomized)
  // ----------------------------------------
  rand logic        [511:0] line_data;   // fill data (8 x 64b beats)
  rand bit                  gnt_ok;      // 1 = grant accepted, 0 = denied (retry)
  rand logic        [  1:0] gnt_state;   // MESI state granted
  rand int unsigned         resp_delay;  // cycles before grant is issued

  // ----------------------------------------
  // snoop injection fields (randomized)
  // ----------------------------------------
  rand bit                  inject_snoop; // 1 = inject a snoop request this transaction
  rand logic        [  2:0] snp_cmd;      // CMD_GETS/GETM/UPGR
  rand logic        [ 31:0] snp_addr;     // snoop target address
  rand int unsigned         snp_delay;    // cycles before snoop is injected

  // ----------------------------------------
  // supply / writeback capture fields
  // (filled in by monitor, not randomized)
  // ----------------------------------------
  bit             [511:0] sup_line;       // captured writeback data
  logic             [  2:0] sup_beats_seen; // how many beats arrived

  `uvm_object_utils_begin(dcache_mem_seq_item)
    `uvm_field_int(line_addr,      UVM_ALL_ON)
    `uvm_field_int(req_cmd,        UVM_ALL_ON)
    `uvm_field_int(line_data,      UVM_ALL_ON)
    `uvm_field_int(gnt_ok,         UVM_ALL_ON)
    `uvm_field_int(gnt_state,      UVM_ALL_ON)
    `uvm_field_int(resp_delay,     UVM_ALL_ON)
    `uvm_field_int(inject_snoop,   UVM_ALL_ON)
    `uvm_field_int(snp_cmd,        UVM_ALL_ON)
    `uvm_field_int(snp_addr,       UVM_ALL_ON)
    `uvm_field_int(snp_delay,      UVM_ALL_ON)
    `uvm_field_int(sup_line,       UVM_ALL_ON)
    `uvm_field_int(sup_beats_seen, UVM_ALL_ON)
  `uvm_object_utils_end

  // ----------------------------------------
  // constraints
  // ----------------------------------------

  // grant succeeds 90% of the time
  constraint c_gnt {
    gnt_ok dist {
      1 := 90,
      0 := 10
    };
  }

  // MESI state granted depends on req_cmd
  // req_cmd is a plain logic initialized to GETS (3'b000) in the constructor
  // so this constraint always solves cleanly at sequence randomization time.
  // The responder overwrites req_cmd with the real interface value afterward.
  constraint c_gnt_state {
    (req_cmd == 3'b000) -> gnt_state inside {2'b01, 2'b10}; // GETS -> S or E
    (req_cmd == 3'b001) -> gnt_state == 2'b11;               // GETM -> M
    (req_cmd == 3'b010) -> gnt_state == 2'b11;               // UPGR -> M
    (req_cmd == 3'b011) -> gnt_state == 2'b00;               // WB   -> I
  }

  // resp_delay bounded to a small window so the GNT_FOLLOWS_REQ assertion
  // (50-cycle window) is never violated by an unbounded random value
  constraint c_resp_delay {
    resp_delay inside {[0:3]};
  }

  // snoops injected 20% of the time
  constraint c_snoop_rate {
    inject_snoop dist {
      1 := 20,
      0 := 80
    };
  }

  // snoop delay bounded - must arrive before the 50-cycle grant window closes
  constraint c_snoop_delay {
    snp_delay inside {[1:5]};
  }

  // snoop address must be cache-line aligned
  constraint c_snoop_align {snp_addr[5:0] == 6'b0;}

  // snoop command only valid values
  constraint c_snoop_cmd {snp_cmd inside {3'b000, 3'b001, 3'b010};} // GETS, GETM, UPGR

  // ----------------------------------------
  // constructor
  // Initialize req_cmd to GETS (3'b000) so c_gnt_state never sees an X value.
  // The responder overwrites this with the real command from the interface.
  // ----------------------------------------
  function new(string name = "dcache_mem_seq_item");
    super.new(name);
    req_cmd   = 3'b000;
    line_addr = 32'h0;
  endfunction

endclass : dcache_mem_seq_item