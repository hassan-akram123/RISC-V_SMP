// ============================================================
// File: l2_snoop_monitor.sv
// Description: Passively observes the snoop bus.
//   Waits for bus_req_valid, captures request, then waits for
//   l2_snp_valid (DUT response), captures response and supply beats.
//   Sends completed l2_snoop_seq_item to scoreboard and coverage.
// ============================================================

class l2_snoop_monitor extends uvm_monitor;
    `uvm_component_utils(l2_snoop_monitor)

    virtual l2_snoop_if vif;
    int num_pkt_col;

    // analysis port -> scoreboard / coverage
    uvm_analysis_port #(l2_snoop_seq_item) ap;

    // CMD encodings
    localparam logic [2:0] CMD_GETS = 3'b000;
    localparam logic [2:0] CMD_GETM = 3'b001;
    localparam logic [2:0] CMD_UPGR = 3'b010;
    localparam logic [2:0] CMD_WB   = 3'b011;

    function new(string name = "l2_snoop_monitor", uvm_component parent = null);
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
        l2_snoop_seq_item item;

        // Wait for reset deassert then one extra clock for DUT outputs to settle
        @(posedge vif.rst_n);
        @(posedge vif.clk);
        `uvm_info(get_type_name(), "Reset deasserted - monitor active", UVM_MEDIUM)

        forever begin
            item = l2_snoop_seq_item::type_id::create("item", this);

            // ------------------------------------------------
            // 1. Wait for snoop request - must be a clean valid cycle
            //    (no X on address/cmd)
            // ------------------------------------------------
            @(posedge vif.clk);
            while (!vif.monitor_cb.bus_req_valid
                   || ^vif.monitor_cb.bus_req_addr === 1'bx
                   || ^vif.monitor_cb.bus_req_cmd  === 1'bx)
                @(posedge vif.clk);

            item.bus_req_addr = vif.monitor_cb.bus_req_addr;
            item.bus_req_cmd  = vif.monitor_cb.bus_req_cmd;
            item.bus_req_src  = vif.monitor_cb.bus_req_src;
            item.snp_latency  = 0;

            // ------------------------------------------------
            // 2. If WB: capture the 8 incoming data beats
            // ------------------------------------------------
            if (item.bus_req_cmd == CMD_WB) begin
                repeat (8) begin
                    @(posedge vif.clk);
                    while (!vif.monitor_cb.bus_dat_valid) @(posedge vif.clk);
                    item.wb_line_data[vif.monitor_cb.bus_dat_beat * 64 +: 64]
                        = vif.monitor_cb.bus_dat_data;
                end
            end

            // ------------------------------------------------
            // 3. Wait for DUT snoop response
            // ------------------------------------------------
            @(posedge vif.clk);
            item.snp_latency++;
            while (!vif.monitor_cb.l2_snp_valid) begin
                @(posedge vif.clk);
                item.snp_latency++;
            end

            item.l2_snp_hit      = vif.monitor_cb.l2_snp_hit;
            item.l2_snp_has_data = vif.monitor_cb.l2_snp_has_data;
            item.l2_snp_ack      = vif.monitor_cb.l2_snp_ack;

            // ------------------------------------------------
            // 4. If DUT supplies data, capture 8 supply beats
            // ------------------------------------------------
            if (item.l2_snp_has_data) begin
                repeat (8) begin
                    @(posedge vif.clk);
                    while (!vif.monitor_cb.sup_valid) @(posedge vif.clk);
                    item.sup_line_captured[vif.monitor_cb.sup_beat * 64 +: 64]
                        = vif.monitor_cb.sup_data;
                end
            end

            `uvm_info(get_type_name(),
                      $sformatf("Transaction collected:\n%s", item.sprint()),
                      UVM_LOW)

            num_pkt_col++;
            ap.write(item);
        end
    endtask : run_phase

    function void report_phase(uvm_phase phase);
        `uvm_info(get_type_name(),
                  $sformatf("Report: L2 snoop monitor collected %0d transactions", num_pkt_col),
                  UVM_LOW)
    endfunction : report_phase

endclass : l2_snoop_monitor