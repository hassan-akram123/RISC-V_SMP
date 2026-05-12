// ============================================================
// File: l2_snoop_sequencer.sv
// ============================================================

class l2_snoop_sequencer extends uvm_sequencer #(l2_snoop_seq_item);
    `uvm_component_utils(l2_snoop_sequencer)

    function new(string name = "l2_snoop_sequencer", uvm_component parent = null);
        super.new(name, parent);
    endfunction

endclass : l2_snoop_sequencer
