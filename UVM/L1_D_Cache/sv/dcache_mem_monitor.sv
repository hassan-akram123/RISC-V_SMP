class dcache_mem_monitor extends uvm_monitor;
  `uvm_component_utils(dcache_mem_monitor)

  virtual mem_if vif;
  int num_pkt_col;

  // analysis port - sends transactions to scoreboard
  uvm_analysis_port #(dcache_mem_seq_item) ap;

  function new(string name = "dcache_mem_monitor", uvm_component parent = null);
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
    if (!uvm_config_db#(virtual mem_if)::get(this, "", "mem_vif", vif))
      `uvm_fatal("NO_VIF", "mem_if not found")
  endfunction : connect_phase

  // ----------------------------------------
  // run_phase - observe transactions
  //
  // FIX: After detecting d_req_valid, wait for the
  // d_req_ready handshake FIRST (confirming the request
  // was accepted), THEN wait for bus_gnt_valid.  This
  // prevents the monitor from capturing phantom grants
  // caused by X-state signals or stale bus_gnt_valid
  // pulses from previous transactions.
  // ----------------------------------------
  task run_phase(uvm_phase phase);
    dcache_mem_seq_item item;

    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin

      item = dcache_mem_seq_item::type_id::create("item", this);

      // wait for d_req_valid from controller
      @(posedge vif.clk);
      while (!vif.monitor_cb.d_req_valid) @(posedge vif.clk);

      // capture request
      item.line_addr = vif.monitor_cb.d_req_addr;
      item.req_cmd   = vif.monitor_cb.d_req_cmd;

      // wait for d_req_ready handshake (request accepted by arbiter)
      while (!(vif.monitor_cb.d_req_valid && vif.monitor_cb.d_req_ready)) @(posedge vif.clk);

      // wait for grant
      @(posedge vif.clk);
      while (!vif.monitor_cb.bus_gnt_valid) @(posedge vif.clk);

      // capture grant
      item.gnt_ok    = vif.monitor_cb.bus_gnt_ok;
      item.gnt_state = vif.monitor_cb.bus_gnt_state;

      // if nack - nothing more to capture
      if (!item.gnt_ok) begin
        `uvm_info(get_type_name(), $sformatf("Grant denied :\n%s", item.sprint()), UVM_LOW)
        num_pkt_col++;
        ap.write(item);
        continue;
      end

      // if WB - capture supply beats from controller
      if (item.req_cmd == 3'b011) begin
        repeat (8) begin
          @(posedge vif.clk);
          while (!vif.monitor_cb.sup_valid) @(posedge vif.clk);
          item.sup_line[vif.monitor_cb.sup_beat*64+:64] = vif.monitor_cb.sup_data;
        end
        `uvm_info(get_type_name(), $sformatf("WB transaction collected :\n%s", item.sprint()),
                  UVM_LOW)
        num_pkt_col++;
        ap.write(item);
        continue;
      end

      // if UPGR - no data beats
      if (item.req_cmd == 3'b010) begin
        `uvm_info(get_type_name(), $sformatf("UPGR transaction collected :\n%s", item.sprint()),
                  UVM_LOW)
        num_pkt_col++;
        ap.write(item);
        continue;
      end

      // collect 8 fill data beats for GETS or GETM
      repeat (8) begin
        @(posedge vif.clk);
        while (!vif.monitor_cb.bus_dat_valid) @(posedge vif.clk);
        item.line_data[vif.monitor_cb.bus_dat_beat*64+:64] = vif.monitor_cb.bus_dat_data;
      end

      // capture snoop response if one was seen
      if (vif.monitor_cb.snp_rsp_valid) begin
        item.inject_snoop = 1;
      end

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
              "Report: dcache MEM monitor collected %0d transactions", num_pkt_col), UVM_LOW)
  endfunction : report_phase

endclass : dcache_mem_monitor