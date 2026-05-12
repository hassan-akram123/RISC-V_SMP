class icache_cpu_sequencer extends uvm_sequencer #(icache_cpu_seq_item);
    `uvm_component_utils(icache_cpu_sequencer)

    function new(string name = "icache_cpu_sequencer", uvm_component parent = null);
        super.new(name, parent);
    endfunction

endclass : icache_cpu_sequencer