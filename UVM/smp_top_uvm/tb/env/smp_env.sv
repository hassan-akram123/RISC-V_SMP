class smp_env extends uvm_env;
  `uvm_component_utils(smp_env)

  smp_ctrl_agent     ctrl_agent;
  smp_system_monitor mon;
  smp_scoreboard     scb;
  smp_coverage       cov;

  function new(string name = "smp_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ctrl_agent = smp_ctrl_agent    ::type_id::create("ctrl_agent", this);
    mon        = smp_system_monitor::type_id::create("mon",        this);
    scb        = smp_scoreboard    ::type_id::create("scb",        this);
    cov        = smp_coverage      ::type_id::create("cov",        this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    mon.ap.connect(scb.analysis_export);
    mon.ap.connect(cov.analysis_export);
  endfunction
endclass
