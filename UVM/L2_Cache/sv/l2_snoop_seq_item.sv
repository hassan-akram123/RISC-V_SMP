// ============================================================
// File: l2_snoop_seq_item.sv
// Description: UVM sequence item for one L2 snoop bus transaction.
//   The driver injects a bus_req (GETS/GETM/UPGR/WB) and associated
//   WB data beats if cmd==WB.  The responder handles mem_req/resp.
//   The monitor captures the DUT's snoop response and supply beats.
// ============================================================

class l2_snoop_seq_item extends uvm_sequence_item;

    // ----------------------------------------
    // Request fields  (driven by snoop driver)
    // ----------------------------------------
    rand logic [31:0] bus_req_addr;   // snoop target address (line-aligned)
    rand logic [2:0]  bus_req_cmd;    // CMD_GETS=0, GETM=1, UPGR=2, WB=3
    rand logic [1:0]  bus_req_src;    // requestor fabric ID (not L2 itself)

    // WB data: only used when bus_req_cmd == CMD_WB
    rand bit [511:0] wb_line_data;  // data beats to write into L2

    // ----------------------------------------
    // Memory response fields (driven by mem responder)
    // ----------------------------------------
    rand bit [511:0] mem_fill_data;    // data returned from memory on a miss
    rand int unsigned  mem_resp_delay;   // cycles before mem_req_ready asserted

    // ----------------------------------------
    // Captured response fields  (set by monitor)
    // ----------------------------------------
    logic        l2_snp_hit;
    logic        l2_snp_has_data;
    logic        l2_snp_ack;
    bit [511:0] sup_line_captured;   // reassembled supply line (8 x 64b beats)
    int          snp_latency;          // cycles from bus_req_valid to l2_snp_valid

    // ----------------------------------------
    // Bookkeeping (used in constraints)
    // ----------------------------------------
    logic [31:0] prev_addr;   // previous request address, for conflict constraints

    `uvm_object_utils_begin(l2_snoop_seq_item)
        `uvm_field_int(bus_req_addr,      UVM_ALL_ON)
        `uvm_field_int(bus_req_cmd,       UVM_ALL_ON)
        `uvm_field_int(bus_req_src,       UVM_ALL_ON)
        `uvm_field_int(wb_line_data,      UVM_ALL_ON)
        `uvm_field_int(mem_fill_data,     UVM_ALL_ON)
        `uvm_field_int(mem_resp_delay,    UVM_ALL_ON)
        `uvm_field_int(l2_snp_hit,        UVM_ALL_ON)
        `uvm_field_int(l2_snp_has_data,   UVM_ALL_ON)
        `uvm_field_int(l2_snp_ack,        UVM_ALL_ON)
        `uvm_field_int(sup_line_captured, UVM_ALL_ON)
        `uvm_field_int(snp_latency,       UVM_ALL_ON)
        `uvm_field_int(prev_addr,         UVM_ALL_ON)
    `uvm_object_utils_end

    // ----------------------------------------
    // Constraints
    // ----------------------------------------

    // address must be cache-line aligned (64B)
    constraint c_line_align { bus_req_addr[5:0] == 6'b0; }

    // keep addresses in a bounded working set that covers all 2048 sets
    // Set bits [16:6] span 0x0000_0040 to 0x0001_FFC0 (step 0x40)
    // Allow several tags worth of range to exercise hits and misses
    constraint c_range { bus_req_addr inside {[32'h0000_0000 : 32'h00FF_FFC0]}; }

    // source must not be the L2 itself (SRC_ID=2)
    constraint c_src_not_l2 { bus_req_src inside {2'b00, 2'b01}; }

    // command distribution: bias toward reads (GETS dominant)
    constraint c_cmd_dist {
        bus_req_cmd dist {
            3'b000 := 40,  // GETS
            3'b001 := 25,  // GETM
            3'b010 := 15,  // UPGR
            3'b011 := 20   // WB
        };
    }

    // UPGR only makes sense if a line would be in S state
    // (enforced by test sequences rather than hard constraint)

    // mem response delay bounded well within 200-cycle window
    constraint c_mem_delay { mem_resp_delay inside {[0:5]}; }

    // same cache set as previous request (hit-friendly)
    // L2 addr map: tag=[31:17], set=[16:6], offset=[5:0]
    constraint c_same_set {
        bus_req_addr[16:6]  == prev_addr[16:6];   // same set  (SET_BITS_LEN=11)
        bus_req_addr[31:17] == prev_addr[31:17];  // same tag
    }

    // different set (miss-friendly)
    constraint c_diff_set {
        bus_req_addr[16:6] != prev_addr[16:6];
    }

    // same set, different tag (conflict / eviction)
    constraint c_conflict {
        bus_req_addr[16:6]  == prev_addr[16:6];   // same set
        bus_req_addr[31:17] != prev_addr[31:17];  // different tag
    }

    // ----------------------------------------
    // Constructor
    // ----------------------------------------
    function new(string name = "l2_snoop_seq_item");
        super.new(name);
        prev_addr = 32'h0;
    endfunction

endclass : l2_snoop_seq_item