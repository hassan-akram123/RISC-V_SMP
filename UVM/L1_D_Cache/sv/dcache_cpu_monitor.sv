class dcache_cpu_monitor extends uvm_monitor;
  `uvm_component_utils(dcache_cpu_monitor)

  virtual cpu_if vif;
  int num_pkt_col;

  // hit latency threshold - set via config_db or overridden in test
  // is_hit is a coverage hint only; data correctness is checked independently
  int unsigned hit_latency_threshold = 5;

  // analysis port - sends transactions to scoreboard
  uvm_analysis_port #(dcache_cpu_seq_item) ap;

  function new(string name = "dcache_cpu_monitor", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // build_phase - create analysis port
  // ----------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
    void'(uvm_config_db#(int unsigned)::get(
        this, "", "hit_latency_threshold", hit_latency_threshold));
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
    dcache_cpu_seq_item item;

    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin

      // create item
      item = dcache_cpu_seq_item::type_id::create("item", this);

      // wait for valid request accepted by DUT
      @(posedge vif.clk);
      while (!vif.monitor_cb.ldst_valid || !vif.monitor_cb.ldst_ready) @(posedge vif.clk);

      // capture request
      item.ldst_addr     = vif.monitor_cb.ldst_addr;
      item.ldst_is_store = vif.monitor_cb.ldst_is_store;
      item.ldst_wdata    = vif.monitor_cb.ldst_wdata;
      item.ldst_wstrb    = vif.monitor_cb.ldst_wstrb;
      item.latency       = 0;

      // wait for response
      @(posedge vif.clk);
      item.latency++;
      while (!vif.monitor_cb.ldst_resp_valid) begin
        @(posedge vif.clk);
        item.latency++;
      end

      // capture response
      item.ldst_rdata = vif.monitor_cb.ldst_rdata;
      item.is_hit     = (item.latency <= hit_latency_threshold);

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
              "Report: dcache CPU monitor collected %0d transactions", num_pkt_col), UVM_LOW)
  endfunction : report_phase

endclass : dcache_cpu_monitor