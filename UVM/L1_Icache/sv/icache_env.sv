class icache_env extends uvm_env;

  icache_cpu_agent  cpu_agent;
  icache_mem_agent  mem_agent;
  icache_scoreboard scoreboard;

  `uvm_component_utils(icache_env)

  function new(string name = "icache_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_agent  = icache_cpu_agent::type_id::create("cpu_agent", this);
    mem_agent  = icache_mem_agent::type_id::create("mem_agent", this);
    scoreboard = icache_scoreboard::type_id::create("scoreboard", this);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    // connect monitors to scoreboard
    cpu_agent.monitor.ap.connect(scoreboard.cpu_export);
    mem_agent.monitor.ap.connect(scoreboard.mem_export);
  endfunction : connect_phase

endclass : icache_env
