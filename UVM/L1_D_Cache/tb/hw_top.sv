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

  // interfaces
  cpu_if cpu_vif (
      .clk  (clk),
      .rst_n(rst_n)
  );
  mem_if mem_vif (
      .clk  (clk),
      .rst_n(rst_n)
  );

  // ----------------------------------------
  // FIX: Initialize all responder-driven mem_if signals to
  // known-good values at time 0.  Without this, the logic
  // signals start as X.  Between reset release and the first
  // clocking-block drive the DUT could sample bus_gnt_valid
  // as X, which some simulators resolve to 1, producing
  // phantom nack grants that consume sequence items and
  // starve later requests of their refill data.
  // ----------------------------------------
  initial begin
    mem_vif.d_req_ready   = 1'b0;
    mem_vif.bus_gnt_valid = 1'b0;
    mem_vif.bus_gnt_dst   = '0;
    mem_vif.bus_gnt_addr  = '0;
    mem_vif.bus_gnt_state = 2'b00;
    mem_vif.bus_gnt_ok    = 1'b0;
    mem_vif.bus_dat_valid = 1'b0;
    mem_vif.bus_dat_dst   = '0;
    mem_vif.bus_dat_data  = '0;
    mem_vif.bus_dat_beat  = '0;
    mem_vif.bus_dat_last  = 1'b0;
    mem_vif.bus_req_valid = 1'b0;
    mem_vif.bus_req_cmd   = '0;
    mem_vif.bus_req_addr  = '0;
    mem_vif.bus_req_src   = '0;
    mem_vif.sup_ready     = 1'b0;
  end

  // DUT
  dcache_subsystem #(
      .ADDR_WIDTH     (32),
      .CORE_DATA_WIDTH(64),
      .SET_BITS_LEN   (6),
      .TAG_BITS_LEN   (20),
      .SRC_ID         (0)
  ) dut (
      .clk  (clk),
      .rst_n(rst_n),

      // CPU side
      .ldst_valid     (cpu_vif.ldst_valid),
      .ldst_is_store  (cpu_vif.ldst_is_store),
      .ldst_addr      (cpu_vif.ldst_addr),
      .ldst_wdata     (cpu_vif.ldst_wdata),
      .ldst_wstrb     (cpu_vif.ldst_wstrb),
      .ldst_ready     (cpu_vif.ldst_ready),
      .ldst_resp_valid(cpu_vif.ldst_resp_valid),
      .ldst_rdata     (cpu_vif.ldst_rdata),

      // Memory bus: outbound request
      .d_req_valid(mem_vif.d_req_valid),
      .d_req_ready(mem_vif.d_req_ready),
      .d_req_cmd  (mem_vif.d_req_cmd),
      .d_req_addr (mem_vif.d_req_addr),
      .d_req_src  (mem_vif.d_req_src),

      // Memory bus: grant
      .bus_gnt_valid(mem_vif.bus_gnt_valid),
      .bus_gnt_dst  (mem_vif.bus_gnt_dst),
      .bus_gnt_addr (mem_vif.bus_gnt_addr),
      .bus_gnt_state(mem_vif.bus_gnt_state),
      .bus_gnt_ok   (mem_vif.bus_gnt_ok),

      // Memory bus: fill data
      .bus_dat_valid(mem_vif.bus_dat_valid),
      .bus_dat_dst  (mem_vif.bus_dat_dst),
      .bus_dat_data (mem_vif.bus_dat_data),
      .bus_dat_beat (mem_vif.bus_dat_beat),
      .bus_dat_last (mem_vif.bus_dat_last),

      // Memory bus: supply / writeback
      .sup_valid(mem_vif.sup_valid),
      .sup_ready(mem_vif.sup_ready),
      .sup_data (mem_vif.sup_data),
      .sup_beat (mem_vif.sup_beat),
      .sup_last (mem_vif.sup_last),

      // Memory bus: snoop request
      .bus_req_valid(mem_vif.bus_req_valid),
      .bus_req_cmd  (mem_vif.bus_req_cmd),
      .bus_req_addr (mem_vif.bus_req_addr),
      .bus_req_src  (mem_vif.bus_req_src),

      // Memory bus: snoop response
      .snp_rsp_valid   (mem_vif.snp_rsp_valid),
      .snp_rsp_hit     (mem_vif.snp_rsp_hit),
      .snp_rsp_state   (mem_vif.snp_rsp_state),
      .snp_rsp_has_data(mem_vif.snp_rsp_has_data),
      .snp_rsp_ack     (mem_vif.snp_rsp_ack)
  );

endmodule : hw_top