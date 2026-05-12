class icache_cpu_monitor extends uvm_monitor;
  `uvm_component_utils(icache_cpu_monitor)

  virtual cpu_if vif;
  int num_pkt_col;

  // analysis port - sends transactions to scoreboard
  uvm_analysis_port #(icache_cpu_seq_item) ap;

  function new(string name = "icache_cpu_monitor", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // build_phase - create analysis port
  // ----------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
  endfunction : build_phase

  // ----------------------------------------
  // connect_phase - get virtual interface
  // ----------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (!uvm_config_db#(virtual cpu_if)::get(this, "", "cpu_vif", vif))
      `uvm_fatal("NO_VIF", "cpu_if not found")
  endfunction : connect_phase

  // ----------------------------------------
  // run_phase - observe transactions
  // ----------------------------------------
  task run_phase(uvm_phase phase);
    icache_cpu_seq_item item;

    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin

      // create item
      item = icache_cpu_seq_item::type_id::create("item", this);

      // wait for valid request accepted by DUT
      @(posedge vif.clk);
      while (!vif.monitor_cb.req_valid || !vif.monitor_cb.req_ready) @(posedge vif.clk);

      // capture request
      item.req_addr = vif.monitor_cb.req_addr;
      item.latency  = 0;

      // wait for response
      @(posedge vif.clk);
      item.latency++;
      while (!vif.monitor_cb.resp_valid) begin
        @(posedge vif.clk);
        item.latency++;
      end

      // capture response
      item.resp_data = vif.monitor_cb.resp_data;
      item.is_hit    = (item.latency <= 3);

      `uvm_info(get_type_name(), $sformatf("Transaction collected :\n%s", item.sprint()), UVM_LOW)

      num_pkt_col++;

      // send to scoreboard
      ap.write(item);
    end
  endtask : run_phase

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), $sformatf(
              "Report: iCache CPU monitor collected %0d transactions", num_pkt_col), UVM_LOW)
  endfunction : report_phase

endclass : icache_cpu_monitor
