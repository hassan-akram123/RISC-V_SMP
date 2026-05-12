class snoop_sequencer extends uvm_sequencer #(snoop_txn);
  `uvm_component_utils(snoop_sequencer)

  function new(string name = "snoop_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction
endclass
