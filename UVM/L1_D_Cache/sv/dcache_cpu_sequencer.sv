class dcache_cpu_sequencer extends uvm_sequencer #(dcache_cpu_seq_item);
  `uvm_component_utils(dcache_cpu_sequencer)

  function new(string name = "dcache_cpu_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction

endclass : dcache_cpu_sequencer
