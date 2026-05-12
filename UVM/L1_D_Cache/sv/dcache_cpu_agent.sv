class dcache_cpu_agent extends uvm_agent;

  dcache_cpu_monitor   monitor;
  dcache_cpu_driver    driver;
  dcache_cpu_sequencer sequencer;

  `uvm_component_utils_begin(dcache_cpu_agent)
    `uvm_field_enum(uvm_active_passive_enum, is_active, UVM_ALL_ON)
  `uvm_component_utils_end

  function new(string name = "dcache_cpu_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    monitor = dcache_cpu_monitor::type_id::create("monitor", this);
    if (is_active == UVM_ACTIVE) begin
      driver    = dcache_cpu_driver::type_id::create("driver", this);
      sequencer = dcache_cpu_sequencer::type_id::create("sequencer", this);
    end
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (is_active == UVM_ACTIVE) driver.seq_item_port.connect(sequencer.seq_item_export);
  endfunction : connect_phase

endclass : dcache_cpu_agent
