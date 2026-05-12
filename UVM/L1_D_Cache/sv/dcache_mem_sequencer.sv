class dcache_mem_sequencer extends uvm_sequencer #(dcache_mem_seq_item);
  `uvm_component_utils(dcache_mem_sequencer)

  function new(string name = "dcache_mem_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction

endclass : dcache_mem_sequencer
