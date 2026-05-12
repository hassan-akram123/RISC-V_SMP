// ============================================================
// File: l2_mem_responder.sv
// Description: Reactive UVM driver for the L2 memory interface.
//
//   The DUT can generate TWO sequential mem_req_valid pulses
//   per snoop transaction on a dirty eviction:
//     1. mem_req_rw=1 (WB: evict dirty victim to DRAM)
//     2. mem_req_rw=0 (RD: fetch new line from DRAM)
//
//   Strategy: a single persistent loop that handles ONE
//   mem_req_valid pulse per iteration.  The sequencer item is
//   fetched BEFORE waiting for mem_req_valid so the grant
//   arrives within resp_delay cycles of the request.
//
//   After each item_done() the loop immediately goes back to
//   get_next_item() + wait for the next mem_req_valid, which
//   handles the back-to-back WB->RD case correctly.
// ============================================================

class l2_mem_responder extends uvm_driver #(l2_mem_seq_item);
    `uvm_component_utils(l2_mem_responder)

    virtual l2_snoop_if vif;
    int num_sent;

    function new(string name = "l2_mem_responder", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if (!uvm_config_db#(virtual l2_snoop_if)::get(this, "", "snoop_vif", vif))
            `uvm_fatal("NO_VIF", "l2_snoop_if not found in config_db")
    endfunction : connect_phase

    task run_phase(uvm_phase phase);
        fork
            respond_to_requests();
            reset_signals();
        join
    endtask : run_phase

    task reset_signals();
        forever begin
            @(negedge vif.rst_n);
            vif.responder_cb.mem_req_ready  <= 1'b0;
            vif.responder_cb.mem_resp_valid <= 1'b0;
            vif.responder_cb.mem_resp_line  <= '0;
            `uvm_info(get_type_name(), "Reset asserted", UVM_MEDIUM)
        end
    endtask : reset_signals

    // ----------------------------------------
    // respond_to_requests
    //
    // One iteration = one mem_req_valid pulse.
    // Pre-fetch item before waiting for mem_req_valid so that
    // mem_req_ready arrives within resp_delay cycles of the request.
    //
    // On dirty eviction the DUT fires:
    //   pulse 1: rw=1 (WB)  -> item_done(), immediately loop back
    //   pulse 2: rw=0 (RD)  -> item_done(), loop back
    // Both are handled by the same loop at full speed.
    // ----------------------------------------
    task respond_to_requests();
        l2_mem_seq_item item;
        bit first_req;

        @(posedge vif.rst_n);
        first_req = 1;
        `uvm_info(get_type_name(), "Reset deasserted - mem responder active", UVM_MEDIUM)

        forever begin

            // 1. Pre-fetch item from sequencer
            seq_item_port.get_next_item(item);

            // 2. Wait for the NEXT mem_req_valid pulse.
            //    After the first request, wait for the signal to go LOW
            //    first (deassert) so we don't re-trigger on the pulse we
            //    just acknowledged. On the very first call skip this step.
            @(posedge vif.clk);
            if (!first_req) begin
                while (vif.responder_cb.mem_req_valid) @(posedge vif.clk);
            end
            first_req = 0;
            while (!vif.responder_cb.mem_req_valid) @(posedge vif.clk);

            // 3. Capture live fields from interface
            item.req_addr = vif.responder_cb.mem_req_addr;
            item.req_rw   = vif.responder_cb.mem_req_rw;
            item.req_line = vif.responder_cb.mem_req_line;

            `uvm_info(get_type_name(),
                      $sformatf("mem_req: addr=0x%08h rw=%0b delay=%0d",
                                item.req_addr, item.req_rw, item.resp_delay),
                      UVM_HIGH)

            // 4. Assert mem_req_ready after resp_delay cycles
            repeat (item.resp_delay) @(posedge vif.clk);
            vif.responder_cb.mem_req_ready <= 1'b1;
            @(posedge vif.clk);
            vif.responder_cb.mem_req_ready <= 1'b0;

            // 5. Write (L2 -> DRAM WB): ack only, no fill data
            if (item.req_rw) begin
                item.was_read = 1'b0;
                `uvm_info(get_type_name(),
                          $sformatf("WB ack: addr=0x%08h", item.req_addr), UVM_MEDIUM)
                num_sent++;
                seq_item_port.item_done();
                // Do NOT add any delay here - the RD request follows immediately
                continue;
            end

            // 6. Read (DRAM -> L2 fill): send mem_resp_valid + line
            item.was_read = 1'b1;
            @(posedge vif.clk);
            vif.responder_cb.mem_resp_valid <= 1'b1;
            vif.responder_cb.mem_resp_line  <= item.fill_data;
            @(posedge vif.clk);
            vif.responder_cb.mem_resp_valid <= 1'b0;
            vif.responder_cb.mem_resp_line  <= '0;

            `uvm_info(get_type_name(),
                      $sformatf("Fill sent: addr=0x%08h", item.req_addr), UVM_HIGH)

            num_sent++;
            seq_item_port.item_done();
        end
    endtask : respond_to_requests

    function void report_phase(uvm_phase phase);
        `uvm_info(get_type_name(),
                  $sformatf("Report: L2 mem responder sent %0d responses", num_sent),
                  UVM_LOW)
    endfunction : report_phase

endclass : l2_mem_responder