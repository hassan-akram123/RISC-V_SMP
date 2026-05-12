// ============================================================
// File: l2_snoop_driver.sv
// Description: Drives snoop bus transactions into L2_Cache_Controller.
//
//   DESIGN DECISION - Fire-and-forget pattern:
//   The driver fires the bus_req and (for WB) the data beats, then
//   calls item_done() immediately.  It does NOT wait for l2_snp_valid
//   or supply beats.  Those are observed passively by the monitor.
//
//   Reason: The DUT must go through multiple FSM states before
//   asserting l2_snp_valid (lookup -> miss -> mem fetch -> fill ->
//   line read -> snp respond).  During that time the mem responder
//   MUST be free to answer mem_req_valid.  If the snoop driver blocks
//   waiting for l2_snp_valid, the test fork/join_any never unblocks
//   the mem sequence -> deadlock.
//
//   The driver handles sup_ready acceptance in a background thread
//   that runs throughout the simulation independently.
// ============================================================

class l2_snoop_driver extends uvm_driver #(l2_snoop_seq_item);
    `uvm_component_utils(l2_snoop_driver)

    virtual l2_snoop_if vif;
    int num_sent;

    // CMD encodings (match L2_Cache_Controller)
    localparam logic [2:0] CMD_GETS = 3'b000;
    localparam logic [2:0] CMD_GETM = 3'b001;
    localparam logic [2:0] CMD_UPGR = 3'b010;
    localparam logic [2:0] CMD_WB   = 3'b011;

    function new(string name = "l2_snoop_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    // ----------------------------------------
    // connect_phase
    // ----------------------------------------
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if (!uvm_config_db#(virtual l2_snoop_if)::get(this, "", "snoop_vif", vif))
            `uvm_fatal("NO_VIF", "l2_snoop_if not found in config_db")
    endfunction : connect_phase

    // ----------------------------------------
    // run_phase - three parallel threads:
    //   1. reset_signals  - idles bus on reset
    //   2. get_and_drive  - fires snoop requests
    //   3. sup_acceptor   - background thread that accepts supply beats
    // ----------------------------------------
    task run_phase(uvm_phase phase);
        fork
            get_and_drive();
            reset_signals();
            sup_acceptor();
        join
    endtask : run_phase

    // ----------------------------------------
    // reset_signals - idle bus during reset
    // ----------------------------------------
    task reset_signals();
        forever begin
            @(negedge vif.rst_n);
            vif.responder_cb.bus_req_valid <= 1'b0;
            vif.responder_cb.bus_req_cmd   <= '0;
            vif.responder_cb.bus_req_addr  <= '0;
            vif.responder_cb.bus_req_src   <= '0;
            vif.responder_cb.bus_dat_valid <= 1'b0;
            vif.responder_cb.bus_dat_dst   <= '0;
            vif.responder_cb.bus_dat_addr  <= '0;
            vif.responder_cb.bus_dat_beat  <= '0;
            vif.responder_cb.bus_dat_data  <= '0;
            vif.responder_cb.bus_dat_last  <= 1'b0;
            vif.responder_cb.sup_ready     <= 1'b0;
            `uvm_info(get_type_name(), "Reset asserted - bus idle", UVM_MEDIUM)
        end
    endtask : reset_signals

    // ----------------------------------------
    // sup_acceptor - background thread
    // Whenever the DUT asserts sup_valid, accept the beat immediately
    // by asserting sup_ready for that cycle.  This runs in parallel
    // with the main driver loop so it never deadlocks.
    // ----------------------------------------
    task sup_acceptor();
        @(posedge vif.rst_n);
        forever begin
            @(posedge vif.clk);
            if (vif.responder_cb.sup_valid) begin
                vif.responder_cb.sup_ready <= 1'b1;
                while (!vif.responder_cb.sup_last) @(posedge vif.clk);
                @(posedge vif.clk);
                vif.responder_cb.sup_ready <= 1'b0;
            end
        end
    endtask : sup_acceptor

    // ----------------------------------------
    // get_and_drive - main driver loop
    // ----------------------------------------
    task get_and_drive();
        l2_snoop_seq_item item;

        @(posedge vif.rst_n);
        `uvm_info(get_type_name(), "Reset deasserted - driver active", UVM_MEDIUM)

        forever begin
            seq_item_port.get_next_item(item);
            `uvm_info(get_type_name(),
                      $sformatf("Driving snoop request:\n%s", item.sprint()), UVM_HIGH)
            drive_item(item);
            num_sent++;
            seq_item_port.item_done();
        end
    endtask : get_and_drive

    // ----------------------------------------
    // drive_item - fire request and WB beats, then return immediately
    // ----------------------------------------
    task drive_item(l2_snoop_seq_item item);

        // ---------------------------------------------------------
        // Step 1: Assert bus_req for one cycle
        // ---------------------------------------------------------
        vif.responder_cb.bus_req_valid <= 1'b1;
        vif.responder_cb.bus_req_cmd   <= item.bus_req_cmd;
        vif.responder_cb.bus_req_addr  <= item.bus_req_addr;
        vif.responder_cb.bus_req_src   <= item.bus_req_src;
        @(posedge vif.clk);
        vif.responder_cb.bus_req_valid <= 1'b0;
        vif.responder_cb.bus_req_cmd   <= '0;
        vif.responder_cb.bus_req_addr  <= '0;
        vif.responder_cb.bus_req_src   <= '0;

        // ---------------------------------------------------------
        // Step 2: If WB, stream 8 data beats once DUT is ready
        // ---------------------------------------------------------
        if (item.bus_req_cmd == CMD_WB) begin
            repeat (2) @(posedge vif.clk);
            while (!vif.responder_cb.l2_wb_data_ready) @(posedge vif.clk);

            for (int beat = 0; beat < 8; beat++) begin
                vif.responder_cb.bus_dat_valid <= 1'b1;
                vif.responder_cb.bus_dat_dst   <= 2'b10;
                vif.responder_cb.bus_dat_addr  <= {item.bus_req_addr[31:6], 6'b0};
                vif.responder_cb.bus_dat_beat  <= beat[2:0];
                vif.responder_cb.bus_dat_data  <= item.wb_line_data[beat*64 +: 64];
                vif.responder_cb.bus_dat_last  <= (beat == 7);
                @(posedge vif.clk);
            end
            vif.responder_cb.bus_dat_valid <= 1'b0;
            vif.responder_cb.bus_dat_last  <= 1'b0;
        end

        // ---------------------------------------------------------
        // Step 3: Wait for DUT to complete this transaction before
        // sending the next one. The controller has req_pending=1
        // until it reaches ST_UPDATE_STATE or ST_WB_FILL - it will
        // ignore a new bus_req_valid while req_pending is set.
        // We wait for l2_snp_valid (which fires when req_pending
        // clears) with a generous 2000-cycle timeout.
        // ---------------------------------------------------------
        begin : wait_snp
            int timeout;
            timeout = 0;
            @(posedge vif.clk);
            while (!vif.responder_cb.l2_snp_valid && timeout < 2000) begin
                @(posedge vif.clk);
                timeout++;
            end
            if (timeout >= 2000)
                `uvm_warning(get_type_name(),
                             $sformatf("Timeout waiting for l2_snp_valid addr=0x%08h",
                                       item.bus_req_addr))
            // One extra cycle after snp_valid to let req_pending clear
            @(posedge vif.clk);
        end

    endtask : drive_item

    // ----------------------------------------
    // report_phase
    // ----------------------------------------
    function void report_phase(uvm_phase phase);
        `uvm_info(get_type_name(),
                  $sformatf("Report: L2 snoop driver sent %0d transactions", num_sent),
                  UVM_LOW)
    endfunction : report_phase

endclass : l2_snoop_driver