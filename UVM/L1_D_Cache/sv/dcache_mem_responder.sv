class dcache_mem_responder extends uvm_driver #(dcache_mem_seq_item);
  `uvm_component_utils(dcache_mem_responder)

  virtual mem_if vif;
  int num_sent;

  function new(string name = "dcache_mem_responder", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // ----------------------------------------
  // connect_phase - get virtual interface
  // ----------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (!uvm_config_db#(virtual mem_if)::get(this, "", "mem_vif", vif))
      `uvm_fatal("NO_VIF", "mem_if not found")
  endfunction : connect_phase

  // ----------------------------------------
  // run_phase
  // ----------------------------------------
  // flag to distinguish WB supply (handled inline) from snoop supply
  bit wb_supply_active;

  task run_phase(uvm_phase phase);
    wb_supply_active = 0;
    fork
      respond_to_requests();
      reset_signals();
      handle_snoop_supply();
    join
  endtask : run_phase

  // ----------------------------------------
  // handle_snoop_supply - accept supply beats from controller
  // when it is servicing a snoop to an M-state line.
  //
  // The main responder loop handles WB supply inline (step 7),
  // but snoop supply happens asynchronously after the responder
  // injected bus_req_valid.  Without this task, the controller
  // gets stuck in ST_SNP_SUPPLY waiting for sup_ready forever.
  // ----------------------------------------
  task handle_snoop_supply();
    @(posedge vif.rst_n);
    forever begin
      @(posedge vif.clk);
      if (vif.responder_cb.sup_valid && !wb_supply_active) begin
        vif.responder_cb.sup_ready <= 1'b1;
        while (!vif.responder_cb.sup_last) @(posedge vif.clk);
        @(posedge vif.clk);
        vif.responder_cb.sup_ready <= 1'b0;
      end
    end
  endtask : handle_snoop_supply

  // ----------------------------------------
  // reset_signals - idle bus during reset
  // ----------------------------------------
  task reset_signals();
    forever begin
      @(negedge vif.rst_n);
      vif.responder_cb.d_req_ready   <= 1'b0;
      vif.responder_cb.bus_gnt_valid <= 1'b0;
      vif.responder_cb.bus_gnt_dst   <= '0;
      vif.responder_cb.bus_gnt_addr  <= '0;
      vif.responder_cb.bus_gnt_state <= 2'b00;
      vif.responder_cb.bus_gnt_ok    <= 1'b0;
      vif.responder_cb.bus_dat_valid <= 1'b0;
      vif.responder_cb.bus_dat_dst   <= '0;
      vif.responder_cb.bus_dat_data  <= '0;
      vif.responder_cb.bus_dat_beat  <= '0;
      vif.responder_cb.bus_dat_last  <= 1'b0;
      vif.responder_cb.bus_req_valid <= 1'b0;
      vif.responder_cb.bus_req_cmd   <= '0;
      vif.responder_cb.bus_req_addr  <= '0;
      vif.responder_cb.bus_req_src   <= '0;
      vif.responder_cb.sup_ready     <= 1'b0;
      `uvm_info(get_type_name(), "Reset asserted", UVM_MEDIUM)
    end
  endtask : reset_signals

  // ----------------------------------------
  // respond_to_requests - main responder loop
  //
  // FIX: get_next_item and d_req_valid detection run in
  // parallel via fork/join.  This hides the sequencer
  // handshake latency so the grant can be issued within
  // a few cycles of d_req_valid - well inside the
  // 50-cycle GNT_FOLLOWS_REQ assertion window.
  // ----------------------------------------
  task respond_to_requests();
    dcache_mem_seq_item item;

    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin

      // 1. Fetch the next item from the sequencer AND wait for
      //    d_req_valid in parallel.  Both must complete before
      //    we proceed - this ensures zero wasted cycles.
      fork
        begin
          seq_item_port.get_next_item(item);
        end
        begin
          @(posedge vif.clk);
          while (!vif.responder_cb.d_req_valid) @(posedge vif.clk);
        end
      join

      // 2. Overwrite the two non-rand fields with live interface values.
      //    All other fields keep the values the sequence randomized.
      item.line_addr = vif.responder_cb.d_req_addr;
      item.req_cmd   = vif.responder_cb.d_req_cmd;

      `uvm_info(get_type_name(), $sformatf("Responding to request :\n%s", item.sprint()), UVM_HIGH)

      // 3. Inject snoop if requested (before grant)
      if (item.inject_snoop) begin
        repeat (item.snp_delay) @(posedge vif.clk);
        vif.responder_cb.bus_req_valid <= 1'b1;
        vif.responder_cb.bus_req_cmd   <= item.snp_cmd;
        vif.responder_cb.bus_req_addr  <= item.snp_addr;
        vif.responder_cb.bus_req_src   <= 2'b01;
        @(posedge vif.clk);
        vif.responder_cb.bus_req_valid <= 1'b0;
      end

      // 4. Accept the request after resp_delay cycles
      repeat (item.resp_delay) @(posedge vif.clk);
      vif.responder_cb.d_req_ready <= 1'b1;
      @(posedge vif.clk);
      vif.responder_cb.d_req_ready <= 1'b0;

      // 5. Send grant
      vif.responder_cb.bus_gnt_valid <= 1'b1;
      vif.responder_cb.bus_gnt_dst   <= vif.responder_cb.d_req_src;
      vif.responder_cb.bus_gnt_addr  <= item.line_addr;
      vif.responder_cb.bus_gnt_state <= item.gnt_state;
      vif.responder_cb.bus_gnt_ok    <= item.gnt_ok;
      @(posedge vif.clk);
      vif.responder_cb.bus_gnt_valid <= 1'b0;
      vif.responder_cb.bus_gnt_ok    <= 1'b0;

      // 6. Nack - controller will retry; consume item and loop
      if (!item.gnt_ok) begin
        `uvm_info(get_type_name(), "Grant denied (nack)", UVM_MEDIUM)
        num_sent++;
        seq_item_port.item_done();
        continue;
      end

      // 7. WB - accept supply beats from controller
      if (item.req_cmd == 3'b011) begin
        wb_supply_active = 1;
        @(posedge vif.clk);
        while (!vif.responder_cb.sup_valid) @(posedge vif.clk);
        vif.responder_cb.sup_ready <= 1'b1;
        while (!vif.responder_cb.sup_last) @(posedge vif.clk);
        @(posedge vif.clk);
        vif.responder_cb.sup_ready <= 1'b0;
        wb_supply_active = 0;
        num_sent++;
        seq_item_port.item_done();
        continue;
      end

      // 8. UPGR - no data beats needed
      if (item.req_cmd == 3'b010) begin
        `uvm_info(get_type_name(), "UPGR grant - no data beats", UVM_MEDIUM)
        num_sent++;
        seq_item_port.item_done();
        continue;
      end

      // 9. GETS / GETM - send 8 fill data beats
      for (int beat = 0; beat < 8; beat++) begin
        vif.responder_cb.bus_dat_valid <= 1'b1;
        vif.responder_cb.bus_dat_data  <= item.line_data[beat*64+:64];
        vif.responder_cb.bus_dat_beat  <= beat[2:0];
        vif.responder_cb.bus_dat_last  <= (beat == 7);
        vif.responder_cb.bus_dat_dst   <= vif.responder_cb.d_req_src;
        @(posedge vif.clk);
      end
      vif.responder_cb.bus_dat_valid <= 1'b0;
      vif.responder_cb.bus_dat_last  <= 1'b0;

      num_sent++;
      seq_item_port.item_done();

    end
  endtask : respond_to_requests

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), $sformatf("Report: dcache mem responder sent %0d responses",
              num_sent), UVM_LOW)
  endfunction : report_phase

endclass : dcache_mem_responder