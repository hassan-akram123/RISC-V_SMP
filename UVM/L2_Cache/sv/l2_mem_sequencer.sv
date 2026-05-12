// ============================================================
// File: l2_mem_sequencer.sv
// ============================================================

class l2_mem_sequencer extends uvm_sequencer #(l2_mem_seq_item);
    `uvm_component_utils(l2_mem_sequencer)

    function new(string name = "l2_mem_sequencer", uvm_component parent = null);
        super.new(name, parent);
    endfunction

endclass : l2_mem_sequencer
