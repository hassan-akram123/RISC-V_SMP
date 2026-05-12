class smp_ctrl_sequencer extends uvm_sequencer #(smp_ctrl_item);
  `uvm_component_utils(smp_ctrl_sequencer)

  function new(string name = "smp_ctrl_sequencer", uvm_component parent = null);
    super.new(name, parent);
  endfunction
endclass
