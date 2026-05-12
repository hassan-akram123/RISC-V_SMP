class icache_cpu_driver extends uvm_driver #(icache_cpu_seq_item);
  `uvm_component_utils(icache_cpu_driver)

  virtual cpu_if vif;
  int num_sent;

  function new(string name = "icache_cpu_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // connect_phase - get virtual interface
  // ----------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (!uvm_config_db#(virtual cpu_if)::get(this, "", "cpu_vif", vif))
      `uvm_fatal("NO_VIF", "cpu_if not found")
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
      vif.driver_cb.req_valid <= 1'b0;
      vif.driver_cb.req_addr  <= '0;
      `uvm_info(get_type_name(), "Reset asserted", UVM_MEDIUM)
    end
  endtask : reset_signals

  // ----------------------------------------
  // get_and_drive - main driver loop
  // ----------------------------------------
  task get_and_drive();
    icache_cpu_seq_item item;

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
  task drive_item(icache_cpu_seq_item item);

    // 1. assert request
    vif.driver_cb.req_valid <= 1'b1;
    vif.driver_cb.req_addr  <= item.req_addr;

    // 2. wait for req_ready
    @(posedge vif.clk);
    while (!vif.driver_cb.req_ready) @(posedge vif.clk);

    // 3. start counting latency
    item.latency = 0;

    // 4. deassert req_valid
    vif.driver_cb.req_valid <= 1'b0;

    // 5. wait for resp_valid
    @(posedge vif.clk);
    item.latency++;
    while (!vif.driver_cb.resp_valid) begin
      @(posedge vif.clk);
      item.latency++;
    end

    // 6. capture response
    item.resp_data = vif.driver_cb.resp_data;
    item.is_hit    = (item.latency <= 3);

  endtask : drive_item

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), $sformatf("Report: iCache CPU driver sent %0d requests", num_sent),
              UVM_LOW)
  endfunction : report_phase

endclass : icache_cpu_driver
