`timescale 1ns/1ps

module tb_top;
  import uvm_pkg::*;
  import snoop_arbiter_pkg::*;

  logic clk;
  logic rst_n;

  snoop_bus_if sif(.clk(clk), .rst_n(rst_n));

  snoop_bus_arbiter dut (
      .clk                (clk),
      .rst_n              (rst_n),
      .i0_req_valid       (sif.i0_req_valid),
      .i0_req_ready       (sif.i0_req_ready),
      .i0_req_cmd         (sif.i0_req_cmd),
      .i0_req_addr        (sif.i0_req_addr),
      .i0_req_src         (sif.i0_req_src),
      .i1_req_valid       (sif.i1_req_valid),
      .i1_req_ready       (sif.i1_req_ready),
      .i1_req_cmd         (sif.i1_req_cmd),
      .i1_req_addr        (sif.i1_req_addr),
      .i1_req_src         (sif.i1_req_src),
      .d0_req_valid       (sif.d0_req_valid),
      .d0_req_ready       (sif.d0_req_ready),
      .d0_req_cmd         (sif.d0_req_cmd),
      .d0_req_addr        (sif.d0_req_addr),
      .d0_req_src         (sif.d0_req_src),
      .d1_req_valid       (sif.d1_req_valid),
      .d1_req_ready       (sif.d1_req_ready),
      .d1_req_cmd         (sif.d1_req_cmd),
      .d1_req_addr        (sif.d1_req_addr),
      .d1_req_src         (sif.d1_req_src),
      .bus_req_valid      (sif.bus_req_valid),
      .bus_req_cmd        (sif.bus_req_cmd),
      .bus_req_addr       (sif.bus_req_addr),
      .bus_req_src        (sif.bus_req_src),
      .d0_snp_rsp_valid   (sif.d0_snp_rsp_valid),
      .d0_snp_rsp_hit     (sif.d0_snp_rsp_hit),
      .d0_snp_rsp_state   (sif.d0_snp_rsp_state),
      .d0_snp_rsp_has_data(sif.d0_snp_rsp_has_data),
      .d0_snp_rsp_ack     (sif.d0_snp_rsp_ack),
      .d1_snp_rsp_valid   (sif.d1_snp_rsp_valid),
      .d1_snp_rsp_hit     (sif.d1_snp_rsp_hit),
      .d1_snp_rsp_state   (sif.d1_snp_rsp_state),
      .d1_snp_rsp_has_data(sif.d1_snp_rsp_has_data),
      .d1_snp_rsp_ack     (sif.d1_snp_rsp_ack),
      .l2_snp_valid       (sif.l2_snp_valid),
      .l2_snp_hit         (sif.l2_snp_hit),
      .l2_snp_has_data    (sif.l2_snp_has_data),
      .l2_snp_ack         (sif.l2_snp_ack),
      .d0_sup_valid       (sif.d0_sup_valid),
      .d0_sup_ready       (sif.d0_sup_ready),
      .d0_sup_data        (sif.d0_sup_data),
      .d0_sup_beat        (sif.d0_sup_beat),
      .d0_sup_last        (sif.d0_sup_last),
      .d1_sup_valid       (sif.d1_sup_valid),
      .d1_sup_ready       (sif.d1_sup_ready),
      .d1_sup_data        (sif.d1_sup_data),
      .d1_sup_beat        (sif.d1_sup_beat),
      .d1_sup_last        (sif.d1_sup_last),
      .l2_sup_valid       (sif.l2_sup_valid),
      .l2_sup_ready       (sif.l2_sup_ready),
      .l2_sup_data        (sif.l2_sup_data),
      .l2_sup_beat        (sif.l2_sup_beat),
      .l2_sup_last        (sif.l2_sup_last),
      .bus_dat_valid      (sif.bus_dat_valid),
      .bus_dat_dst        (sif.bus_dat_dst),
      .bus_dat_addr       (sif.bus_dat_addr),
      .bus_dat_data       (sif.bus_dat_data),
      .bus_dat_beat       (sif.bus_dat_beat),
      .bus_dat_last       (sif.bus_dat_last),
      .i_bus_gnt_valid    (sif.i_bus_gnt_valid),
      .i_bus_gnt_dst      (sif.i_bus_gnt_dst),
      .i_bus_gnt_ok       (sif.i_bus_gnt_ok),
      .d_bus_gnt_valid    (sif.d_bus_gnt_valid),
      .d_bus_gnt_dst      (sif.d_bus_gnt_dst),
      .d_bus_gnt_addr     (sif.d_bus_gnt_addr),
      .d_bus_gnt_state    (sif.d_bus_gnt_state),
      .d_bus_gnt_ok       (sif.d_bus_gnt_ok)
  );

  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst_n = 1'b0;
    sif.drive_idle();
    repeat (5) @(posedge clk);
    rst_n = 1'b1;
  end

  initial begin
    uvm_config_db#(virtual snoop_bus_if)::set(null, "*", "vif", sif);
    run_test();
  end
endmodule
