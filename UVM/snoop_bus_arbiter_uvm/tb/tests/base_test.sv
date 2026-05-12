class base_test extends uvm_test;
  `uvm_component_utils(base_test)

  snoop_env env;
  virtual snoop_bus_if vif;

  function new(string name = "base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = snoop_env::type_id::create("env", this);

    if (!uvm_config_db#(virtual snoop_bus_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "virtual interface snoop_bus_if not set for base_test")
  endfunction

  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
endclass
