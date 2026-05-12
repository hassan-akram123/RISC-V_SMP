class dcache_cpu_driver extends uvm_driver #(dcache_cpu_seq_item);
  `uvm_component_utils(dcache_cpu_driver)

  virtual cpu_if vif;
  int num_sent;

  // hit latency threshold - set via config_db or overridden in test
  // is_hit is a coverage hint only; data correctness is checked independently
  int unsigned hit_latency_threshold = 5;

  function new(string name = "dcache_cpu_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // connect_phase - get virtual interface
  // ----------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (!uvm_config_db#(virtual cpu_if)::get(this, "", "cpu_vif", vif))
      `uvm_fatal("NO_VIF", "cpu_if not found")
    void'(uvm_config_db#(int unsigned)::get(
        this, "", "hit_latency_threshold", hit_latency_threshold));
  endfunction : connect_phase

  // ----------------------------------------
  // run_phase - fork both tasks
  // ----------------------------------------
  task run_phase(uvm_phase phase);
    fork
      get_and_drive();
      reset_signals();
    join
  endtask : run_phase

  // ----------------------------------------
  // reset_signals - idle bus during reset
  // ----------------------------------------
  task reset_signals();
    forever begin
      @(negedge vif.rst_n);
      vif.driver_cb.ldst_valid    <= 1'b0;
      vif.driver_cb.ldst_is_store <= 1'b0;
      vif.driver_cb.ldst_addr     <= '0;
      vif.driver_cb.ldst_wdata    <= '0;
      vif.driver_cb.ldst_wstrb    <= '0;
      `uvm_info(get_type_name(), "Reset asserted", UVM_MEDIUM)
    end
  endtask : reset_signals

  // ----------------------------------------
  // get_and_drive - main driver loop
  // ----------------------------------------
  task get_and_drive();
    dcache_cpu_seq_item item;

    // wait for reset to release
    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin
      // get item from sequencer
      seq_item_port.get_next_item(item);
      `uvm_info(get_type_name(), $sformatf("Driving request :\n%s", item.sprint()), UVM_HIGH)

      // drive it
      drive_item(item);

      num_sent++;
      seq_item_port.item_done();
    end
  endtask : get_and_drive

  // ----------------------------------------
  // drive_item - drive one transaction
  // ----------------------------------------
  task drive_item(dcache_cpu_seq_item item);

    // 1. assert request signals
    vif.driver_cb.ldst_valid    <= 1'b1;
    vif.driver_cb.ldst_is_store <= item.ldst_is_store;
    vif.driver_cb.ldst_addr     <= item.ldst_addr;
    vif.driver_cb.ldst_wdata    <= item.ldst_is_store ? item.ldst_wdata : '0;
    vif.driver_cb.ldst_wstrb    <= item.ldst_is_store ? item.ldst_wstrb : '0;

    // 2. wait for ldst_ready
    @(posedge vif.clk);
    while (!vif.driver_cb.ldst_ready) @(posedge vif.clk);

    // 3. start counting latency
    item.latency = 0;

    // 4. deassert ldst_valid
    vif.driver_cb.ldst_valid    <= 1'b0;
    vif.driver_cb.ldst_is_store <= 1'b0;
    vif.driver_cb.ldst_addr     <= '0;
    vif.driver_cb.ldst_wdata    <= '0;
    vif.driver_cb.ldst_wstrb    <= '0;

    // 5. wait for ldst_resp_valid
    @(posedge vif.clk);
    item.latency++;
    while (!vif.driver_cb.ldst_resp_valid) begin
      @(posedge vif.clk);
      item.latency++;
    end

    // 6. capture response
    item.ldst_rdata = vif.driver_cb.ldst_rdata;

    // is_hit is a coverage hint driven by configurable threshold
    // data correctness is the authoritative check in the scoreboard
    item.is_hit = (item.latency <= hit_latency_threshold);

  endtask : drive_item

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), $sformatf("Report: dcache CPU driver sent %0d requests", num_sent),
              UVM_LOW)
  endfunction : report_phase

endclass : dcache_cpu_driver