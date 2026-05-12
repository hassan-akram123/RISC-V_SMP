class dcache_env extends uvm_env;

  dcache_cpu_agent  cpu_agent;
  dcache_mem_agent  mem_agent;
  dcache_scoreboard scoreboard;
  dcache_coverage   coverage;

  `uvm_component_utils(dcache_env)

  function new(string name = "dcache_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_agent  = dcache_cpu_agent::type_id::create("cpu_agent", this);
    mem_agent  = dcache_mem_agent::type_id::create("mem_agent", this);
    scoreboard = dcache_scoreboard::type_id::create("scoreboard", this);
    coverage   = dcache_coverage::type_id::create("coverage", this);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    // connect monitors to scoreboard
    cpu_agent.monitor.ap.connect(scoreboard.cpu_export);
    mem_agent.monitor.ap.connect(scoreboard.mem_export);
    // connect monitors to coverage collector
    cpu_agent.monitor.ap.connect(coverage.cpu_export);
    mem_agent.monitor.ap.connect(coverage.mem_export);
  endfunction : connect_phase

endclass : dcache_env