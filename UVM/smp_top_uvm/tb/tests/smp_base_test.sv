class smp_base_test extends uvm_test;
  `uvm_component_utils(smp_base_test)

  smp_env      env;
  smp_test_cfg cfg;

  function new(string name = "smp_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void configure_cfg();
    if (cfg == null)
      cfg = smp_test_cfg::type_id::create("cfg");
    cfg.set_defaults();
    cfg.test_id = get_type_name();
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cfg = smp_test_cfg::type_id::create("cfg");
    configure_cfg();
    uvm_config_db#(smp_test_cfg)::set(this, "*", "cfg", cfg);
    env = smp_env::type_id::create("env", this);
  endfunction

  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
endclass
