class snoop_env extends uvm_env;
  `uvm_component_utils(snoop_env)

  snoop_agent      agent;
  snoop_scoreboard scb;
  snoop_coverage   cov;

  function new(string name = "snoop_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agent = snoop_agent     ::type_id::create("agent", this);
    scb   = snoop_scoreboard::type_id::create("scb",   this);
    cov   = snoop_coverage  ::type_id::create("cov",   this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agent.drv.exp_ap.connect(scb.exp_imp);
    agent.mon.ap.connect(scb.act_imp);
    agent.mon.ap.connect(cov.analysis_export);
  endfunction
endclass
