// ============================================================
// File: l2_mem_monitor.sv
// Description: Passively observes the memory interface.
//   Waits for mem_req_valid, captures request, then waits for
//   mem_req_ready + mem_resp_valid (for reads).
//   Sends completed l2_mem_seq_item to scoreboard.
// ============================================================

class l2_mem_monitor extends uvm_monitor;
    `uvm_component_utils(l2_mem_monitor)

    virtual l2_snoop_if vif;
    int num_pkt_col;

    // analysis port -> scoreboard
    uvm_analysis_port #(l2_mem_seq_item) ap;

    function new(string name = "l2_mem_monitor", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ap = new("ap", this);
    endfunction : build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if (!uvm_config_db#(virtual l2_snoop_if)::get(this, "", "snoop_vif", vif))
            `uvm_fatal("NO_VIF", "l2_snoop_if not found in config_db")
    endfunction : connect_phase

    // ----------------------------------------
    // run_phase
    // ----------------------------------------
    task run_phase(uvm_phase phase);
        l2_mem_seq_item item;
        bit first_txn;

        @(posedge vif.rst_n);
        first_txn = 1;
        `uvm_info(get_type_name(), "Reset deasserted - mem monitor active", UVM_MEDIUM)

        forever begin
            item = l2_mem_seq_item::type_id::create("item", this);
            item.fill_latency = 0;

            // ------------------------------------------------
            // 1. Wait for a NEW mem_req_valid assertion.
            //    After the first transaction, wait for the signal
            //    to deassert first so we don't re-capture the same
            //    pulse that was just acknowledged.
            // ------------------------------------------------
            @(posedge vif.clk);
            if (!first_txn) begin
                while (vif.monitor_cb.mem_req_valid) @(posedge vif.clk);
            end
            first_txn = 0;
            while (!vif.monitor_cb.mem_req_valid) @(posedge vif.clk);

            item.req_addr = vif.monitor_cb.mem_req_addr;
            item.req_rw   = vif.monitor_cb.mem_req_rw;
            item.req_line = vif.monitor_cb.mem_req_line;

            // ------------------------------------------------
            // 2. Wait for request acknowledged
            // ------------------------------------------------
            while (!(vif.monitor_cb.mem_req_valid && vif.monitor_cb.mem_req_ready))
                @(posedge vif.clk);

            // ------------------------------------------------
            // 3. Write (WB to DRAM): done after ready
            // ------------------------------------------------
            if (item.req_rw) begin
                item.was_read = 1'b0;
                `uvm_info(get_type_name(),
                          $sformatf("WB to DRAM captured: addr=0x%08h", item.req_addr),
                          UVM_LOW)
                num_pkt_col++;
                ap.write(item);
                continue;
            end

            // ------------------------------------------------
            // 4. Read (fill): wait for mem_resp_valid
            // ------------------------------------------------
            item.was_read = 1'b1;
            @(posedge vif.clk);
            item.fill_latency++;
            while (!vif.monitor_cb.mem_resp_valid) begin
                @(posedge vif.clk);
                item.fill_latency++;
            end

            item.fill_data = vif.monitor_cb.mem_resp_line;

            `uvm_info(get_type_name(),
                      $sformatf("Fill captured: addr=0x%08h latency=%0d",
                                item.req_addr, item.fill_latency),
                      UVM_LOW)

            num_pkt_col++;
            ap.write(item);
        end
    endtask : run_phase

    function void report_phase(uvm_phase phase);
        `uvm_info(get_type_name(),
                  $sformatf("Report: L2 mem monitor collected %0d transactions", num_pkt_col),
                  UVM_LOW)
    endfunction : report_phase

endclass : l2_mem_monitor