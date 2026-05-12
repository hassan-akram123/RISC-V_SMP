class snoop_agent extends uvm_component;
  `uvm_component_utils(snoop_agent)

  snoop_sequencer seqr;
  snoop_driver    drv;
  snoop_monitor   mon;

  function new(string name = "snoop_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr = snoop_sequencer::type_id::create("seqr", this);
    drv  = snoop_driver   ::type_id::create("drv",  this);
    mon  = snoop_monitor  ::type_id::create("mon",  this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    drv.seq_item_port.connect(seqr.seq_item_export);
  endfunction
endclass
