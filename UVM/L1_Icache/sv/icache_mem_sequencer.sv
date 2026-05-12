class icache_mem_sequencer extends uvm_sequencer #(icache_mem_seq_item);
  `uvm_component_utils(icache_mem_sequencer)

  function new(string name = "icache_mem_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction

endclass : icache_mem_sequencer
