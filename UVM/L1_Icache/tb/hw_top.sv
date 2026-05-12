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

  // Drive responder-side mem_if signals to safe defaults before
  // the UVM responder takes over. Without this, req_ready/gnt_valid
  // are Z/X at time-0 and the controller can misfire a spurious
  // S_MISS_REQ -> S_MISS_WAIT transition on X-pessimism.
  initial begin
    mem_vif.req_ready = 1'b0;
    mem_vif.gnt_valid = 1'b0;
    mem_vif.gnt_ok    = 1'b0;
    mem_vif.dat_valid = 1'b0;
    mem_vif.dat_last  = 1'b0;
    mem_vif.dat_data  = '0;
    mem_vif.dat_beat  = '0;
    mem_vif.dat_dst   = '0;
    mem_vif.dat_addr  = '0;
  end

  // DUT
  icache_subsystem #(
      .ADDR_WIDTH(32),
      .CORE_DATA_WIDTH(64),
      .SRC_ID_WIDTH(2)
  ) dut (
      .clk  (clk),
      .rst_n(rst_n),
      // CPU side
      .if_req_valid (cpu_vif.req_valid),
      .if_req_addr  (cpu_vif.req_addr),
      .if_req_ready (cpu_vif.req_ready),
      .if_resp_valid(cpu_vif.resp_valid),
      .if_resp_data (cpu_vif.resp_data),
      // Memory bus side
      .i_req_valid  (mem_vif.req_valid),
      .i_req_ready  (mem_vif.req_ready),
      .i_req_cmd    (mem_vif.req_cmd),
      .i_req_addr   (mem_vif.req_addr),
      .i_req_src    (mem_vif.req_src),
      .bus_dat_valid(mem_vif.dat_valid),
      .bus_dat_data (mem_vif.dat_data),
      .bus_dat_beat (mem_vif.dat_beat),
      .bus_dat_last (mem_vif.dat_last),
      .bus_dat_dst  (mem_vif.dat_dst),
      .bus_dat_addr (mem_vif.dat_addr),
      .bus_gnt_valid(mem_vif.gnt_valid),
      .bus_gnt_ok   (mem_vif.gnt_ok)
  );
endmodule : hw_top