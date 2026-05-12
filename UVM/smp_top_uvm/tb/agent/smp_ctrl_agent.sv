class smp_ctrl_agent extends uvm_agent;
  `uvm_component_utils(smp_ctrl_agent)

  smp_ctrl_sequencer seqr;
  smp_ctrl_driver    drv;

  function new(string name = "smp_ctrl_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr = smp_ctrl_sequencer::type_id::create("seqr", this);
    drv  = smp_ctrl_driver   ::type_id::create("drv",  this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    drv.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass
