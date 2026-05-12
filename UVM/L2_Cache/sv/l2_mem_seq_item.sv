// ============================================================
// File: l2_mem_seq_item.sv
// Description: UVM sequence item for the memory side of L2.
//   The mem responder waits for mem_req_valid from the DUT,
//   captures the request fields, then drives mem_req_ready
//   and mem_resp_valid with fill data.
//   For writes (mem_req_rw==1, i.e. L2 writeback to DRAM),
//   the responder just acknowledges with mem_req_ready.
// ============================================================

class l2_mem_seq_item extends uvm_sequence_item;

    // ----------------------------------------
    // Captured from DUT  (set by responder, not randomized)
    // ----------------------------------------
    logic [31:0]  req_addr;      // line-aligned address from DUT
    logic         req_rw;        // 0=read (fill), 1=write (WB to DRAM)
    logic [511:0] req_line;      // writeback data (valid when req_rw==1)

    // ----------------------------------------
    // Response fields  (randomized by responder sequence)
    // ----------------------------------------
    rand logic [511:0]  fill_data;      // data sent back to L2 on a read
    rand int unsigned   resp_delay;     // cycles before mem_req_ready is asserted

    // ----------------------------------------
    // Bookkeeping  (filled by monitor)
    // ----------------------------------------
    bit          was_read;       // 1=fill, 0=writeback
    int          fill_latency;   // cycles from mem_req_valid to mem_resp_valid

    `uvm_object_utils_begin(l2_mem_seq_item)
        `uvm_field_int(req_addr,      UVM_ALL_ON)
        `uvm_field_int(req_rw,        UVM_ALL_ON)
        `uvm_field_int(req_line,      UVM_ALL_ON)
        `uvm_field_int(fill_data,     UVM_ALL_ON)
        `uvm_field_int(resp_delay,    UVM_ALL_ON)
        `uvm_field_int(was_read,      UVM_ALL_ON)
        `uvm_field_int(fill_latency,  UVM_ALL_ON)
    `uvm_object_utils_end

    // ----------------------------------------
    // Constraints
    // ----------------------------------------

    // response delay bounded - mem_req must be acknowledged quickly
    // to stay within the controller's patience window
    constraint c_resp_delay { resp_delay inside {[0:5]}; }

    // ----------------------------------------
    // Constructor
    // ----------------------------------------
    function new(string name = "l2_mem_seq_item");
        super.new(name);
        req_addr = 32'h0;
        req_rw   = 1'b0;
    endfunction

endclass : l2_mem_seq_item
