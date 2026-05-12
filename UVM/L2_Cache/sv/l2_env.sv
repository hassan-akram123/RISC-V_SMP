// ============================================================
// File: l2_env.sv
// ============================================================

class l2_env extends uvm_env;

    l2_snoop_agent  snoop_agent;
    l2_mem_agent    mem_agent;
    l2_scoreboard   scoreboard;
    l2_coverage     coverage;

    `uvm_component_utils(l2_env)

    function new(string name = "l2_env", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        snoop_agent = l2_snoop_agent::type_id::create("snoop_agent", this);
        mem_agent   = l2_mem_agent::type_id::create("mem_agent",     this);
        scoreboard  = l2_scoreboard::type_id::create("scoreboard",   this);
        coverage    = l2_coverage::type_id::create("coverage",       this);
    endfunction : build_phase

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        // connect monitors to scoreboard
        snoop_agent.monitor.ap.connect(scoreboard.snoop_export);
        mem_agent.monitor.ap.connect(scoreboard.mem_export);
        // connect monitors to coverage collector
        snoop_agent.monitor.ap.connect(coverage.snoop_export);
        mem_agent.monitor.ap.connect(coverage.mem_export);
    endfunction : connect_phase

endclass : l2_env
