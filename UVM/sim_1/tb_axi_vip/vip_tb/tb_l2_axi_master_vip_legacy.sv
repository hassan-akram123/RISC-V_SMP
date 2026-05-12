`timescale 1ns/1ps

import axi_vip_pkg::*;
import axi_vip_only_bd_axi_vip_0_0_pkg::*;

module tb_l2_axi_master_vip_legacy;

  localparam int ADDR_WIDTH     = 32;
  localparam int LINE_WIDTH     = 512;
  localparam int AXI_DATA_WIDTH = 128;
  localparam int IDW            = 4;

  // --------------------------------------------------------------------------
  // Clock / reset
  // --------------------------------------------------------------------------
  logic clk;
  logic aresetn;

  initial clk = 1'b0;
  always #5 clk = ~clk;

  // --------------------------------------------------------------------------
  // Controller-side signals into DUT
  // --------------------------------------------------------------------------
  logic                  mem_req_valid;
  logic                  mem_req_ready;
  logic                  mem_req_rw;      // 0=read, 1=write
  logic [IDW-1:0]        mem_req_id;
  logic [ADDR_WIDTH-1:0] mem_req_addr;
  logic [LINE_WIDTH-1:0] mem_req_line;

  logic                  mem_rresp_valid;
  logic                  mem_rresp_ready;
  logic [IDW-1:0]        mem_rresp_id;
  logic [LINE_WIDTH-1:0] mem_rresp_line;
  logic [1:0]            mem_rresp_resp;

  logic                  mem_wresp_valid;
  logic                  mem_wresp_ready;
  logic [IDW-1:0]        mem_wresp_id;
  logic [1:0]            mem_wresp_resp;

  // --------------------------------------------------------------------------
  // AXI wires between DUT master and VIP slave BD
  // --------------------------------------------------------------------------
  logic [IDW-1:0]            awid;
  logic [ADDR_WIDTH-1:0]     awaddr;
  logic [7:0]                awlen;
  logic [2:0]                awsize;
  logic [1:0]                awburst;
  logic                      awlock;
  logic [3:0]                awcache;
  logic [2:0]                awprot;
  logic [3:0]                awqos;
  logic [3:0]                awregion;
  logic                      awvalid;
  logic                      awready;

  logic [AXI_DATA_WIDTH-1:0] wdata;
  logic [(AXI_DATA_WIDTH/8)-1:0] wstrb;
  logic                      wlast;
  logic                      wvalid;
  logic                      wready;

  logic [IDW-1:0]            bid;
  logic [1:0]                bresp;
  logic                      bvalid;
  logic                      bready;

  logic [IDW-1:0]            arid;
  logic [ADDR_WIDTH-1:0]     araddr;
  logic [7:0]                arlen;
  logic [2:0]                arsize;
  logic [1:0]                arburst;
  logic                      arlock;
  logic [3:0]                arcache;
  logic [2:0]                arprot;
  logic [3:0]                arqos;
  logic [3:0]                arregion;
  logic                      arvalid;
  logic                      arready;

  logic [IDW-1:0]            rid;
  logic [AXI_DATA_WIDTH-1:0] rdata;
  logic [1:0]                rresp;
  logic                      rlast;
  logic                      rvalid;
  logic                      rready;

  // --------------------------------------------------------------------------
  // DUT
  // --------------------------------------------------------------------------
  l2_to_axi4_master_axi_full_wrapper dut (
    .aclk            (clk),
    .aresetn         (aresetn),

    .mem_req_valid   (mem_req_valid),
    .mem_req_ready   (mem_req_ready),
    .mem_req_rw      (mem_req_rw),
    .mem_req_id      (mem_req_id),
    .mem_req_addr    (mem_req_addr),
    .mem_req_line    (mem_req_line),

    .mem_rresp_valid (mem_rresp_valid),
    .mem_rresp_ready (mem_rresp_ready),
    .mem_rresp_id    (mem_rresp_id),
    .mem_rresp_line  (mem_rresp_line),
    .mem_rresp_resp  (mem_rresp_resp),

    .mem_wresp_valid (mem_wresp_valid),
    .mem_wresp_ready (mem_wresp_ready),
    .mem_wresp_id    (mem_wresp_id),
    .mem_wresp_resp  (mem_wresp_resp),

    .M_AXI_AWID      (awid),
    .M_AXI_AWADDR    (awaddr),
    .M_AXI_AWLEN     (awlen),
    .M_AXI_AWSIZE    (awsize),
    .M_AXI_AWBURST   (awburst),
    .M_AXI_AWLOCK    (awlock),
    .M_AXI_AWCACHE   (awcache),
    .M_AXI_AWPROT    (awprot),
    .M_AXI_AWQOS     (awqos),
    .M_AXI_AWREGION  (awregion),
    .M_AXI_AWVALID   (awvalid),
    .M_AXI_AWREADY   (awready),

    .M_AXI_WDATA     (wdata),
    .M_AXI_WSTRB     (wstrb),
    .M_AXI_WLAST     (wlast),
    .M_AXI_WVALID    (wvalid),
    .M_AXI_WREADY    (wready),

    .M_AXI_BID       (bid),
    .M_AXI_BRESP     (bresp),
    .M_AXI_BVALID    (bvalid),
    .M_AXI_BREADY    (bready),

    .M_AXI_ARID      (arid),
    .M_AXI_ARADDR    (araddr),
    .M_AXI_ARLEN     (arlen),
    .M_AXI_ARSIZE    (arsize),
    .M_AXI_ARBURST   (arburst),
    .M_AXI_ARLOCK    (arlock),
    .M_AXI_ARCACHE   (arcache),
    .M_AXI_ARPROT    (arprot),
    .M_AXI_ARQOS     (arqos),
    .M_AXI_ARREGION  (arregion),
    .M_AXI_ARVALID   (arvalid),
    .M_AXI_ARREADY   (arready),

    .M_AXI_RID       (rid),
    .M_AXI_RDATA     (rdata),
    .M_AXI_RRESP     (rresp),
    .M_AXI_RLAST     (rlast),
    .M_AXI_RVALID    (rvalid),
    .M_AXI_RREADY    (rready)
  );

  // --------------------------------------------------------------------------
  // AXI VIP block design module generated by Vivado
  // Module/ports matched to the user's generated axi_vip_only_bd.v
  // --------------------------------------------------------------------------
  axi_vip_only_bd vip_bd (
    .S_AXI_0_araddr   (araddr),
    .S_AXI_0_arburst  (arburst),
    .S_AXI_0_arcache  (arcache),
    .S_AXI_0_arid     (arid),
    .S_AXI_0_arlen    (arlen),
    .S_AXI_0_arlock   (arlock),
    .S_AXI_0_arprot   (arprot),
    .S_AXI_0_arqos    (arqos),
    .S_AXI_0_arready  (arready),
    .S_AXI_0_arregion (arregion),
    .S_AXI_0_arsize   (arsize),
    .S_AXI_0_arvalid  (arvalid),

    .S_AXI_0_awaddr   (awaddr),
    .S_AXI_0_awburst  (awburst),
    .S_AXI_0_awcache  (awcache),
    .S_AXI_0_awid     (awid),
    .S_AXI_0_awlen    (awlen),
    .S_AXI_0_awlock   (awlock),
    .S_AXI_0_awprot   (awprot),
    .S_AXI_0_awqos    (awqos),
    .S_AXI_0_awready  (awready),
    .S_AXI_0_awregion (awregion),
    .S_AXI_0_awsize   (awsize),
    .S_AXI_0_awvalid  (awvalid),

    .S_AXI_0_bid      (bid),
    .S_AXI_0_bready   (bready),
    .S_AXI_0_bresp    (bresp),
    .S_AXI_0_bvalid   (bvalid),

    .S_AXI_0_rdata    (rdata),
    .S_AXI_0_rid      (rid),
    .S_AXI_0_rlast    (rlast),
    .S_AXI_0_rready   (rready),
    .S_AXI_0_rresp    (rresp),
    .S_AXI_0_rvalid   (rvalid),

    .S_AXI_0_wdata    (wdata),
    .S_AXI_0_wlast    (wlast),
    .S_AXI_0_wready   (wready),
    .S_AXI_0_wstrb    (wstrb),
    .S_AXI_0_wvalid   (wvalid),

    .aclk_0           (clk),
    .aresetn_0        (aresetn)
  );

  // --------------------------------------------------------------------------
  // AXI VIP agent handle
  // --------------------------------------------------------------------------
  axi_vip_only_bd_axi_vip_0_0_slv_mem_t slv_agent;

  // --------------------------------------------------------------------------
  // Simple helpers
  // --------------------------------------------------------------------------
  task automatic drive_req(
    input logic                  rw,
    input logic [IDW-1:0]        id,
    input logic [ADDR_WIDTH-1:0] addr,
    input logic [LINE_WIDTH-1:0] line
  );
    begin
      @(posedge clk);
      mem_req_rw    <= rw;
      mem_req_id    <= id;
      mem_req_addr  <= addr;
      mem_req_line  <= line;
      mem_req_valid <= 1'b1;

      while (!mem_req_ready) @(posedge clk);

      @(posedge clk);
      mem_req_valid <= 1'b0;
      mem_req_rw    <= 1'b0;
      mem_req_id    <= '0;
      mem_req_addr  <= '0;
      mem_req_line  <= '0;
    end
  endtask

  task automatic wait_wresp(
    output logic [IDW-1:0] id,
    output logic [1:0]     resp
  );
    begin
      while (!mem_wresp_valid) @(posedge clk);
      id   = mem_wresp_id;
      resp = mem_wresp_resp;
      @(posedge clk);
    end
  endtask

  task automatic wait_rresp(
    output logic [IDW-1:0]        id,
    output logic [LINE_WIDTH-1:0] line,
    output logic [1:0]            resp
  );
    begin
      while (!mem_rresp_valid) @(posedge clk);
      id   = mem_rresp_id;
      line = mem_rresp_line;
      resp = mem_rresp_resp;
      @(posedge clk);
    end
  endtask

  task automatic check_okay(input string what, input logic [1:0] resp);
    begin
      if (resp !== 2'b00) begin
        $display("[TB] ERROR: %s returned non-OKAY response %b", what, resp);
        $fatal;
      end
    end
  endtask

  function automatic [511:0] mk_line(input logic [31:0] seed);
    integer k;
    reg [511:0] tmp;
    begin
      tmp = '0;
      for (k = 0; k < 16; k = k + 1) begin
        tmp[k*32 +: 32] = seed + k;
      end
      mk_line = tmp;
    end
  endfunction

  logic [511:0] wr_line0, rd_line;
  logic [3:0]   got_id;
  logic [1:0]   got_resp;

  initial begin
    mem_req_valid   = 1'b0;
    mem_req_rw      = 1'b0;
    mem_req_id      = '0;
    mem_req_addr    = '0;
    mem_req_line    = '0;
    mem_rresp_ready = 1'b1;
    mem_wresp_ready = 1'b1;
    aresetn         = 1'b0;

    wr_line0 = mk_line(32'h1111_0000);

    repeat (20) @(posedge clk);
    aresetn = 1'b1;
    repeat (2) @(posedge clk);

    // Hierarchy path based on the generated axi_vip_only_bd content:
    // axi_vip_only_bd vip_bd (...);
    //   axi_vip_only_bd_axi_vip_0_0 axi_vip_0 (...);
    slv_agent = new("axi_slave_mem_agent", vip_bd.axi_vip_0.inst.IF);
    slv_agent.start_slave();

    repeat (5) @(posedge clk);

    // One write then one readback.
    drive_req(1'b1, 4'h0, 32'h0000_1000, wr_line0);
    wait_wresp(got_id, got_resp);
    check_okay("WRITE", got_resp);

    drive_req(1'b0, 4'h0, 32'h0000_1000, '0);
    wait_rresp(got_id, rd_line, got_resp);
    check_okay("READ", got_resp);

    if (got_id !== 4'h0) begin
      $display("[TB] ERROR: expected read response ID 0, got %0d", got_id);
      $fatal;
    end

    if (rd_line !== wr_line0) begin
      $display("[TB] ERROR: readback data mismatch");
      $fatal;
    end

    $display("[TB] PASS: DUT wrote and read one full 512-bit line through AXI VIP memory.");
    $finish;
  end

endmodule
