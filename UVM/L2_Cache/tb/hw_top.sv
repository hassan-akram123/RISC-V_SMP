// ============================================================
// File: hw_top.sv
// Description: Hardware top for L2 UVM testbench.
//   Instantiates l2_snoop_if and l2_subsystem (DUT).
//   Clock: 10ns period (100 MHz).
//   Reset: active-low, deasserted after 5 rising edges.
// ============================================================

module hw_top;

    // clock and reset
    logic clk;
    logic rst_n;

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rst_n = 1'b0;
        repeat (5) @(posedge clk);
        rst_n = 1'b1;
    end

    // interface instantiation
    l2_snoop_if snoop_vif (
        .clk   (clk),
        .rst_n (rst_n)
    );

    // DUT
    l2_subsystem #(
        .ADDR_WIDTH      (32),
        .CORE_DATA_WIDTH (64),
        .SET_BITS_LEN    (11),
        .TAG_BITS_LEN    (15),
        .SRC_ID          (2)
    ) dut (
        .clk               (clk),
        .rst_n             (rst_n),

        // snoop bus input
        .bus_req_valid     (snoop_vif.bus_req_valid),
        .bus_req_cmd       (snoop_vif.bus_req_cmd),
        .bus_req_addr      (snoop_vif.bus_req_addr),
        .bus_req_src       (snoop_vif.bus_req_src),

        // WB data beats input
        .bus_dat_valid     (snoop_vif.bus_dat_valid),
        .bus_dat_dst       (snoop_vif.bus_dat_dst),
        .bus_dat_addr      (snoop_vif.bus_dat_addr),
        .bus_dat_beat      (snoop_vif.bus_dat_beat),
        .bus_dat_data      (snoop_vif.bus_dat_data),
        .bus_dat_last      (snoop_vif.bus_dat_last),
        .l2_wb_data_ready  (snoop_vif.l2_wb_data_ready),

        // snoop response
        .l2_snp_valid      (snoop_vif.l2_snp_valid),
        .l2_snp_hit        (snoop_vif.l2_snp_hit),
        .l2_snp_has_data   (snoop_vif.l2_snp_has_data),
        .l2_snp_ack        (snoop_vif.l2_snp_ack),

        // supply beats
        .sup_valid         (snoop_vif.sup_valid),
        .sup_ready         (snoop_vif.sup_ready),
        .sup_data          (snoop_vif.sup_data),
        .sup_beat          (snoop_vif.sup_beat),
        .sup_last          (snoop_vif.sup_last),

        // memory interface
        .mem_req_valid     (snoop_vif.mem_req_valid),
        .mem_req_rw        (snoop_vif.mem_req_rw),
        .mem_req_addr      (snoop_vif.mem_req_addr),
        .mem_req_line      (snoop_vif.mem_req_line),
        .mem_req_ready     (snoop_vif.mem_req_ready),
        .mem_resp_valid    (snoop_vif.mem_resp_valid),
        .mem_resp_line     (snoop_vif.mem_resp_line)
    );

endmodule : hw_top
