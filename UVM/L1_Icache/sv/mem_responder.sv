class icache_mem_responder extends uvm_driver #(icache_mem_seq_item);
  `uvm_component_utils(icache_mem_responder)

  virtual mem_if vif;
  int num_sent;

  function new(string name = "icache_mem_responder", uvm_component parent = null);
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
  // run_phase - fork both tasks
  // ----------------------------------------
  task run_phase(uvm_phase phase);
    fork
      respond_to_requests();
      reset_signals();
    join
  endtask : run_phase

  // ----------------------------------------
  // reset_signals - idle bus during reset
  // ----------------------------------------
  task reset_signals();
    forever begin
      @(negedge vif.rst_n);
      vif.responder_cb.req_ready <= 1'b0;
      vif.responder_cb.gnt_valid <= 1'b0;
      vif.responder_cb.gnt_ok    <= 1'b0;
      vif.responder_cb.dat_valid <= 1'b0;
      vif.responder_cb.dat_last  <= 1'b0;
      `uvm_info(get_type_name(), "Reset asserted", UVM_MEDIUM)
    end
  endtask : reset_signals

  // ----------------------------------------
  // respond_to_requests - main responder loop
  // ----------------------------------------
  task respond_to_requests();
    icache_mem_seq_item item;
    // FIX: capture req_src at handshake time before req_ready pulses,
    //      so dat_dst is correct even cycles later during beat streaming.
    logic [1:0] captured_src;

    // wait for reset to release
    @(posedge vif.rst_n);
    `uvm_info(get_type_name(), "Reset dropped", UVM_MEDIUM)

    forever begin

      // 1. pre-fetch item from sequencer BEFORE waiting for req_valid
      //    so the responder is always ready to accept the moment req_valid arrives.
      //    Previously get_next_item was called after req_valid was seen, causing a
      //    race at time-0 where the sequencer wasn't ready yet and the responder
      //    drove a zero/unrandomized item (gnt_ok=0), NACKing the first refill and
      //    leaving shadow_cache unpopulated.
      seq_item_port.get_next_item(item);
      `uvm_info(get_type_name(), $sformatf("Responding to request :\n%s", item.sprint()), UVM_HIGH)

      // 2. now wait for controller to request
      @(posedge vif.clk);
      while (!vif.responder_cb.req_valid) @(posedge vif.clk);

      // 3. capture addr and src NOW, before req_ready pulses and DUT may move on
      item.line_addr = vif.responder_cb.req_addr;
      captured_src   = vif.responder_cb.req_src;  // FIX: was read inside beat loop (stale)

      // 4. accept the request
      vif.responder_cb.req_ready <= 1'b1;
      @(posedge vif.clk);
      vif.responder_cb.req_ready <= 1'b0;

      // 5. wait random delay
      repeat (item.resp_delay) @(posedge vif.clk);

      // 6. send grant
      vif.responder_cb.gnt_valid <= 1'b1;
      vif.responder_cb.gnt_ok    <= item.gnt_ok;
      @(posedge vif.clk);
      vif.responder_cb.gnt_valid <= 1'b0;
      vif.responder_cb.gnt_ok    <= 1'b0;

      // 7. send 8 beats only if grant ok
      if (item.gnt_ok) begin
        for (int beat = 0; beat < 8; beat++) begin
          @(posedge vif.clk);
          vif.responder_cb.dat_valid <= 1'b1;
          vif.responder_cb.dat_data  <= item.line_data[beat*64+:64];
          vif.responder_cb.dat_beat  <= beat[2:0];
          vif.responder_cb.dat_last  <= (beat == 7);
          vif.responder_cb.dat_dst   <= captured_src;  // FIX: use captured value
          vif.responder_cb.dat_addr  <= item.line_addr;
        end
        @(posedge vif.clk);
        vif.responder_cb.dat_valid <= 1'b0;
        vif.responder_cb.dat_last  <= 1'b0;
      end

      num_sent++;
      seq_item_port.item_done();

    end
  endtask : respond_to_requests

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), $sformatf("Report: iCache Mem responder sent %0d responses", num_sent
              ), UVM_LOW)
  endfunction : report_phase

endclass : icache_mem_responder