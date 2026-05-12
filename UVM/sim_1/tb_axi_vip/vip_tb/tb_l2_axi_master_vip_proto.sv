`timescale 1ns/1ps

import axi_vip_pkg::*;
import axi_vip_only_bd_axi_vip_0_0_pkg::*;

module tb_l2_axi_master_vip_proto;

  localparam int ADDR_WIDTH     = 32;
  localparam int LINE_WIDTH     = 512;
  localparam int AXI_DATA_WIDTH = 128;
  localparam int IDW            = 4;
  localparam int BEATS          = LINE_WIDTH / AXI_DATA_WIDTH;
  localparam int AXI_SIZE_CODE  = 4; // 16 bytes/beat for 128-bit AXI

  logic clk;
  logic aresetn;

  initial clk = 1'b0;
  always #5 clk = ~clk;

  logic                  mem_req_valid;
  logic                  mem_req_ready;
  logic                  mem_req_rw;
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

  axi_vip_only_bd_axi_vip_0_0_slv_mem_t slv_agent;

  function automatic [511:0] mk_line(input logic [31:0] seed);
    integer k;
    reg [511:0] tmp;
    begin
      tmp = '0;
      for (k = 0; k < 16; k = k + 1)
        tmp[k*32 +: 32] = seed + k;
      mk_line = tmp;
    end
  endfunction

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

  task automatic wait_wresp(output logic [IDW-1:0] id, output logic [1:0] resp);
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

  logic [511:0] exp_wr_line;
  logic [31:0]  exp_wr_addr;
  logic [3:0]   exp_wr_id;
  integer       seen_aw, seen_wbeats, seen_ar;
  bit           aw_seen;
  logic [3:0]   got_id;
  logic [1:0]   got_resp;
  logic [511:0] got_line;

  always @(posedge clk) begin
    if (!aresetn) begin
      seen_aw     <= 0;
      seen_wbeats <= 0;
      seen_ar     <= 0;
      aw_seen     <= 1'b0;
    end else begin
      if (awvalid && awready) begin
        seen_aw <= seen_aw + 1;
        aw_seen <= 1'b1;

        if (awid !== exp_wr_id) begin
          $display("[TB] ERROR: AWID mismatch. exp=%0d got=%0d", exp_wr_id, awid);
          $fatal;
        end
        if (awaddr !== exp_wr_addr) begin
          $display("[TB] ERROR: AWADDR mismatch. exp=0x%08h got=0x%08h", exp_wr_addr, awaddr);
          $fatal;
        end
        if (awlen !== (BEATS-1)) begin
          $display("[TB] ERROR: AWLEN mismatch. exp=%0d got=%0d", (BEATS-1), awlen);
          $fatal;
        end
        if (awsize !== AXI_SIZE_CODE[2:0]) begin
          $display("[TB] ERROR: AWSIZE mismatch. exp=%0d got=%0d", AXI_SIZE_CODE, awsize);
          $fatal;
        end
        if (awburst !== 2'b01) begin
          $display("[TB] ERROR: AWBURST expected INCR(01), got %b", awburst);
          $fatal;
        end
      end

      if (wvalid && wready) begin
        seen_wbeats <= seen_wbeats + 1;

        if (!aw_seen) begin
          $display("[TB] ERROR: W beat observed before AW handshake in this RTL implementation.");
          $fatal;
        end
        if (wstrb !== {AXI_DATA_WIDTH/8{1'b1}}) begin
          $display("[TB] ERROR: WSTRB mismatch. exp=all ones got=%h", wstrb);
          $fatal;
        end
        if (wdata !== exp_wr_line[seen_wbeats*AXI_DATA_WIDTH +: AXI_DATA_WIDTH]) begin
          $display("[TB] ERROR: WDATA beat %0d mismatch", seen_wbeats);
          $fatal;
        end
        if ((seen_wbeats == BEATS-1) && (wlast !== 1'b1)) begin
          $display("[TB] ERROR: WLAST not asserted on final beat");
          $fatal;
        end
        if ((seen_wbeats != BEATS-1) && (wlast !== 1'b0)) begin
          $display("[TB] ERROR: WLAST asserted too early on beat %0d", seen_wbeats);
          $fatal;
        end
      end

      if (arvalid && arready) begin
        seen_ar <= seen_ar + 1;

        if (arid !== exp_wr_id) begin
          $display("[TB] ERROR: ARID mismatch. exp=%0d got=%0d", exp_wr_id, arid);
          $fatal;
        end
        if (araddr !== exp_wr_addr) begin
          $display("[TB] ERROR: ARADDR mismatch. exp=0x%08h got=0x%08h", exp_wr_addr, araddr);
          $fatal;
        end
        if (arlen !== (BEATS-1)) begin
          $display("[TB] ERROR: ARLEN mismatch. exp=%0d got=%0d", (BEATS-1), arlen);
          $fatal;
        end
        if (arsize !== AXI_SIZE_CODE[2:0]) begin
          $display("[TB] ERROR: ARSIZE mismatch. exp=%0d got=%0d", AXI_SIZE_CODE, arsize);
          $fatal;
        end
        if (arburst !== 2'b01) begin
          $display("[TB] ERROR: ARBURST expected INCR(01), got %b", arburst);
          $fatal;
        end
      end
    end
  end

  initial begin
    mem_req_valid   = 1'b0;
    mem_req_rw      = 1'b0;
    mem_req_id      = '0;
    mem_req_addr    = '0;
    mem_req_line    = '0;
    mem_rresp_ready = 1'b1;
    mem_wresp_ready = 1'b1;
    aresetn         = 1'b0;

    exp_wr_id   = 4'h0;
    exp_wr_addr = 32'h0000_3000;
    exp_wr_line = mk_line(32'hA5A5_0000);

    repeat (20) @(posedge clk);
    aresetn = 1'b1;
    repeat (10) @(posedge clk);

    slv_agent = new("axi_slave_mem_agent", vip_bd.axi_vip_0.inst.IF);
    slv_agent.start_slave();

    repeat (5) @(posedge clk);

    drive_req(1'b1, exp_wr_id, exp_wr_addr, exp_wr_line);
    wait_wresp(got_id, got_resp);
    if (got_id !== exp_wr_id || got_resp !== 2'b00) begin
      $display("[TB] ERROR: write response mismatch. id=%0d resp=%b", got_id, got_resp);
      $fatal;
    end

    drive_req(1'b0, exp_wr_id, exp_wr_addr, '0);
    wait_rresp(got_id, got_line, got_resp);
    if (got_id !== exp_wr_id || got_resp !== 2'b00) begin
      $display("[TB] ERROR: read response mismatch. id=%0d resp=%b", got_id, got_resp);
      $fatal;
    end
    if (got_line !== exp_wr_line) begin
      $display("[TB] ERROR: readback line mismatch");
      $fatal;
    end

    if (seen_aw != 1) begin
      $display("[TB] ERROR: expected exactly 1 AW handshake, saw %0d", seen_aw);
      $fatal;
    end
    if (seen_wbeats != BEATS) begin
      $display("[TB] ERROR: expected %0d W beats, saw %0d", BEATS, seen_wbeats);
      $fatal;
    end
    if (seen_ar != 1) begin
      $display("[TB] ERROR: expected exactly 1 AR handshake, saw %0d", seen_ar);
      $fatal;
    end

    $display("[TB] PASS: AXI burst shape matches RTL intent (AW/AR len-size-burst, full WSTRB, 4 W beats, WLAST on final beat).");
    $finish;
  end

endmodule
