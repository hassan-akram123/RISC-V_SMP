`timescale 1ns/1ps

import axi_vip_pkg::*;
import axi_vip_only_bd_axi_vip_0_0_pkg::*;

module tb_l2_axi_master_vip_full;

  localparam int ADDR_WIDTH     = 32;
  localparam int LINE_WIDTH     = 512;
  localparam int AXI_DATA_WIDTH = 128;
  localparam int IDW            = 4;
  localparam int BEATS          = LINE_WIDTH / AXI_DATA_WIDTH;
  localparam int AXI_SIZE_CODE  = 4; // 16 bytes/beat for 128-bit AXI
  localparam int MAX_REQS       = 64;

  logic clk;
  logic aresetn;

  initial clk = 1'b0;
  always #5 clk = ~clk;

  // ------------------------------------------------------------
  // Controller-side DUT interface
  // ------------------------------------------------------------
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

  // ------------------------------------------------------------
  // AXI wires between DUT and VIP BD
  // ------------------------------------------------------------
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

  logic [AXI_DATA_WIDTH-1:0]     wdata;
  logic [(AXI_DATA_WIDTH/8)-1:0] wstrb;
  logic                          wlast;
  logic                          wvalid;
  logic                          wready;

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

  // ------------------------------------------------------------
  // DUT and VIP BD
  // ------------------------------------------------------------
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

  // ------------------------------------------------------------
  // Helper types / scoreboards
  // ------------------------------------------------------------
  typedef struct packed {
    logic [IDW-1:0]        id;
    logic [ADDR_WIDTH-1:0] addr;
    logic [LINE_WIDTH-1:0] line;
  } wr_expect_t;

  typedef struct packed {
    logic [IDW-1:0]        id;
    logic [ADDR_WIDTH-1:0] addr;
  } rd_expect_t;

  wr_expect_t exp_wr_q [0:MAX_REQS-1];
  integer exp_wr_head, exp_wr_tail;
  integer exp_wr_count;

  rd_expect_t exp_rd_q [0:MAX_REQS-1];
  integer exp_rd_head, exp_rd_tail;
  integer exp_rd_count;

  integer aw_seen_total;
  integer ar_seen_total;
  integer w_seen_total;
  integer active_wbeat;
  bit     have_active_write;
  wr_expect_t cur_wr;

  integer scenario_count;

  // ------------------------------------------------------------
  // Utility functions / tasks
  // ------------------------------------------------------------
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

  task automatic expect_write(
    input logic [IDW-1:0]        id,
    input logic [ADDR_WIDTH-1:0] addr,
    input logic [LINE_WIDTH-1:0] line
  );
    begin
      if (exp_wr_count >= MAX_REQS) begin
        $display("[TB] ERROR: write expectation queue overflow");
        $fatal;
      end
      exp_wr_q[exp_wr_tail].id   = id;
      exp_wr_q[exp_wr_tail].addr = addr;
      exp_wr_q[exp_wr_tail].line = line;
      exp_wr_tail = (exp_wr_tail + 1) % MAX_REQS;
      exp_wr_count = exp_wr_count + 1;
    end
  endtask

  task automatic expect_read(
    input logic [IDW-1:0]        id,
    input logic [ADDR_WIDTH-1:0] addr
  );
    begin
      if (exp_rd_count >= MAX_REQS) begin
        $display("[TB] ERROR: read expectation queue overflow");
        $fatal;
      end
      exp_rd_q[exp_rd_tail].id   = id;
      exp_rd_q[exp_rd_tail].addr = addr;
      exp_rd_tail = (exp_rd_tail + 1) % MAX_REQS;
      exp_rd_count = exp_rd_count + 1;
    end
  endtask

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

  task automatic send_write(
    input logic [IDW-1:0]        id,
    input logic [ADDR_WIDTH-1:0] addr,
    input logic [LINE_WIDTH-1:0] line
  );
    begin
      expect_write(id, addr, line);
      drive_req(1'b1, id, addr, line);
    end
  endtask

  task automatic send_read(
    input logic [IDW-1:0]        id,
    input logic [ADDR_WIDTH-1:0] addr
  );
    begin
      expect_read(id, addr);
      drive_req(1'b0, id, addr, '0);
    end
  endtask

  task automatic wait_wresp(
    output logic [IDW-1:0] id,
    output logic [1:0]     resp
  );
    integer t;
    begin
      t = 0;
      while (!mem_wresp_valid) begin
        @(posedge clk);
        t = t + 1;
        if (t > 1000) begin
          $display("[TB] ERROR: timeout waiting for write response");
          $fatal;
        end
      end
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
    integer t;
    begin
      t = 0;
      while (!mem_rresp_valid) begin
        @(posedge clk);
        t = t + 1;
        if (t > 1000) begin
          $display("[TB] ERROR: timeout waiting for read response");
          $fatal;
        end
      end
      id   = mem_rresp_id;
      line = mem_rresp_line;
      resp = mem_rresp_resp;
      @(posedge clk);
    end
  endtask

  task automatic expect_ok_wresp(input logic [IDW-1:0] exp_id);
    logic [IDW-1:0] got_id;
    logic [1:0]     got_resp;
    begin
      wait_wresp(got_id, got_resp);
      if (got_id !== exp_id || got_resp !== 2'b00) begin
        $display("[TB] ERROR: write response mismatch. exp_id=%0d got_id=%0d resp=%b", exp_id, got_id, got_resp);
        $fatal;
      end
    end
  endtask

  task automatic expect_ok_rresp(
    input logic [IDW-1:0]        exp_id,
    input logic [LINE_WIDTH-1:0] exp_line
  );
    logic [IDW-1:0]        got_id;
    logic [LINE_WIDTH-1:0] got_line;
    logic [1:0]            got_resp;
    begin
      wait_rresp(got_id, got_line, got_resp);
      if (got_id !== exp_id || got_resp !== 2'b00) begin
        $display("[TB] ERROR: read response mismatch. exp_id=%0d got_id=%0d resp=%b", exp_id, got_id, got_resp);
        $fatal;
      end
      if (got_line !== exp_line) begin
        $display("[TB] ERROR: read line mismatch for id=%0d", exp_id);
        $fatal;
      end
    end
  endtask

  // ------------------------------------------------------------
  // AXI protocol / burst-shape monitor
  // ------------------------------------------------------------
  always @(posedge clk) begin
    if (!aresetn) begin
      aw_seen_total    <= 0;
      ar_seen_total    <= 0;
      w_seen_total     <= 0;
      active_wbeat     <= 0;
      have_active_write<= 1'b0;
      cur_wr           <= '0;
    end else begin
      if (awvalid && awready) begin
        aw_seen_total <= aw_seen_total + 1;

        if (exp_wr_count <= 0) begin
          $display("[TB] ERROR: observed AW with no expected write queued");
          $fatal;
        end

        cur_wr            <= exp_wr_q[exp_wr_head];
        have_active_write <= 1'b1;
        active_wbeat      <= 0;

        if (awid !== exp_wr_q[exp_wr_head].id) begin
          $display("[TB] ERROR: AWID mismatch. exp=%0d got=%0d", exp_wr_q[exp_wr_head].id, awid);
          $fatal;
        end
        if (awaddr !== exp_wr_q[exp_wr_head].addr) begin
          $display("[TB] ERROR: AWADDR mismatch. exp=0x%08h got=0x%08h", exp_wr_q[exp_wr_head].addr, awaddr);
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
        if (awlock !== 1'b0) begin
          $display("[TB] ERROR: AWLOCK expected 0, got %b", awlock);
          $fatal;
        end
      end

      if (wvalid && wready) begin
        w_seen_total <= w_seen_total + 1;

        if (!have_active_write) begin
          $display("[TB] ERROR: W beat observed before AW handshake in this RTL implementation");
          $fatal;
        end

        if (wstrb !== {AXI_DATA_WIDTH/8{1'b1}}) begin
          $display("[TB] ERROR: WSTRB mismatch. exp=all ones got=%h", wstrb);
          $fatal;
        end

        if (wdata !== cur_wr.line[active_wbeat*AXI_DATA_WIDTH +: AXI_DATA_WIDTH]) begin
          $display("[TB] ERROR: WDATA mismatch on beat %0d for write id=%0d", active_wbeat, cur_wr.id);
          $fatal;
        end

        if ((active_wbeat == BEATS-1) && (wlast !== 1'b1)) begin
          $display("[TB] ERROR: WLAST not asserted on final beat");
          $fatal;
        end
        if ((active_wbeat != BEATS-1) && (wlast !== 1'b0)) begin
          $display("[TB] ERROR: WLAST asserted too early on beat %0d", active_wbeat);
          $fatal;
        end

        if (active_wbeat == BEATS-1) begin
          have_active_write <= 1'b0;
          active_wbeat      <= 0;
          exp_wr_head       <= (exp_wr_head + 1) % MAX_REQS;
          exp_wr_count      <= exp_wr_count - 1;
        end else begin
          active_wbeat <= active_wbeat + 1;
        end
      end

      if (arvalid && arready) begin
        ar_seen_total <= ar_seen_total + 1;

        if (exp_rd_count <= 0) begin
          $display("[TB] ERROR: observed AR with no expected read queued");
          $fatal;
        end

        if (arid !== exp_rd_q[exp_rd_head].id) begin
          $display("[TB] ERROR: ARID mismatch. exp=%0d got=%0d", exp_rd_q[exp_rd_head].id, arid);
          $fatal;
        end
        if (araddr !== exp_rd_q[exp_rd_head].addr) begin
          $display("[TB] ERROR: ARADDR mismatch. exp=0x%08h got=0x%08h", exp_rd_q[exp_rd_head].addr, araddr);
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
        if (arlock !== 1'b0) begin
          $display("[TB] ERROR: ARLOCK expected 0, got %b", arlock);
          $fatal;
        end

        exp_rd_head  <= (exp_rd_head + 1) % MAX_REQS;
        exp_rd_count <= exp_rd_count - 1;
      end
    end
  end

  // ------------------------------------------------------------
  // Main test
  // ------------------------------------------------------------
  logic [511:0] line0, line1, line2, line3, line4, line5;
  logic [3:0]   got_id0, got_id1;
  logic [1:0]   got_resp0, got_resp1;
  logic [511:0] got_line0, got_line1;

  initial begin
    mem_req_valid   = 1'b0;
    mem_req_rw      = 1'b0;
    mem_req_id      = '0;
    mem_req_addr    = '0;
    mem_req_line    = '0;
    mem_rresp_ready = 1'b1;
    mem_wresp_ready = 1'b1;
    aresetn         = 1'b0;

    exp_wr_head     = 0;
    exp_wr_tail     = 0;
    exp_wr_count    = 0;
    exp_rd_head     = 0;
    exp_rd_tail     = 0;
    exp_rd_count    = 0;
    scenario_count  = 0;

    line0 = mk_line(32'h1111_0000);
    line1 = mk_line(32'h2222_0000);
    line2 = mk_line(32'h3333_0000);
    line3 = mk_line(32'h4444_0000);
    line4 = mk_line(32'h5555_0000);
    line5 = mk_line(32'h6666_0000);

    // Long enough reset for AXI VIP
    repeat (20) @(posedge clk);
    aresetn = 1'b1;
    repeat (10) @(posedge clk);

    slv_agent = new("axi_slave_mem_agent", vip_bd.axi_vip_0.inst.IF);
    slv_agent.start_slave();
    repeat (5) @(posedge clk);

    // --------------------------------------------------------
    // Scenario 1: single write + single readback
    // --------------------------------------------------------
    scenario_count = scenario_count + 1;
    send_write(4'h0, 32'h0000_1000, line0);
    expect_ok_wresp(4'h0);

    send_read(4'h0, 32'h0000_1000);
    expect_ok_rresp(4'h0, line0);

    // --------------------------------------------------------
    // Scenario 2: queued same-ID writes, then queued same-ID reads
    // --------------------------------------------------------
    scenario_count = scenario_count + 1;
    send_write(4'h0, 32'h0000_2000, line1);
    send_write(4'h0, 32'h0000_2080, line2);
    expect_ok_wresp(4'h0);
    expect_ok_wresp(4'h0);

    send_read(4'h0, 32'h0000_2000);
    send_read(4'h0, 32'h0000_2080);
    expect_ok_rresp(4'h0, line1);
    expect_ok_rresp(4'h0, line2);

    // --------------------------------------------------------
    // Scenario 3: controller-side write-response backpressure
    // --------------------------------------------------------
    scenario_count = scenario_count + 1;
    mem_wresp_ready = 1'b0;
    send_write(4'h0, 32'h0000_3000, line3);
    begin : wait_wvalid_under_bp
      integer t_bp_w;
      t_bp_w = 0;
      while (!mem_wresp_valid) begin
        @(posedge clk);
        t_bp_w = t_bp_w + 1;
        if (t_bp_w > 1000) begin
          $display("[TB] ERROR: timeout waiting for mem_wresp_valid during controller backpressure");
          $fatal;
        end
      end
    end
    repeat (5) @(posedge clk);
    if (!mem_wresp_valid) begin
      $display("[TB] ERROR: expected mem_wresp_valid to remain asserted during controller backpressure");
      $fatal;
    end
    mem_wresp_ready = 1'b1;
    expect_ok_wresp(4'h0);

    // --------------------------------------------------------
    // Scenario 4: controller-side read-response backpressure
    // --------------------------------------------------------
    scenario_count = scenario_count + 1;
    send_write(4'h0, 32'h0000_4000, line4);
    expect_ok_wresp(4'h0);

    mem_rresp_ready = 1'b0;
    send_read(4'h0, 32'h0000_4000);
    begin : wait_rvalid_under_bp
      integer t_bp_r;
      t_bp_r = 0;
      while (!mem_rresp_valid) begin
        @(posedge clk);
        t_bp_r = t_bp_r + 1;
        if (t_bp_r > 1000) begin
          $display("[TB] ERROR: timeout waiting for mem_rresp_valid during controller backpressure");
          $fatal;
        end
      end
    end
    repeat (5) @(posedge clk);
    if (!mem_rresp_valid) begin
      $display("[TB] ERROR: expected mem_rresp_valid to remain asserted during controller backpressure");
      $fatal;
    end
    mem_rresp_ready = 1'b1;
    expect_ok_rresp(4'h0, line4);

    // --------------------------------------------------------
    // Scenario 5: different IDs on independent lines
    // Exercises ID propagation and per-ID read assembly logic.
    // --------------------------------------------------------
    scenario_count = scenario_count + 1;
    send_write(4'h1, 32'h0000_5000, line5);
    send_write(4'h2, 32'h0000_5080, line0);
    wait_wresp(got_id0, got_resp0);
    wait_wresp(got_id1, got_resp1);
    if (got_resp0 !== 2'b00 || got_resp1 !== 2'b00) begin
      $display("[TB] ERROR: non-OKAY write response in multi-ID scenario. resp0=%b resp1=%b", got_resp0, got_resp1);
      $fatal;
    end
    if (!((got_id0 == 4'h1 && got_id1 == 4'h2) || (got_id0 == 4'h2 && got_id1 == 4'h1))) begin
      $display("[TB] ERROR: unexpected write-response IDs in multi-ID scenario. got %0d and %0d", got_id0, got_id1);
      $fatal;
    end

    send_read(4'h1, 32'h0000_5000);
    send_read(4'h2, 32'h0000_5080);

    wait_rresp(got_id0, got_line0, got_resp0);
    wait_rresp(got_id1, got_line1, got_resp1);

    if (got_resp0 !== 2'b00 || got_resp1 !== 2'b00) begin
      $display("[TB] ERROR: non-OKAY read response in multi-ID scenario. resp0=%b resp1=%b", got_resp0, got_resp1);
      $fatal;
    end

    if (got_id0 == 4'h1) begin
      if (got_line0 !== line5) begin
        $display("[TB] ERROR: multi-ID read line mismatch for id 1");
        $fatal;
      end
    end else if (got_id0 == 4'h2) begin
      if (got_line0 !== line0) begin
        $display("[TB] ERROR: multi-ID read line mismatch for id 2");
        $fatal;
      end
    end else begin
      $display("[TB] ERROR: unexpected read response id %0d", got_id0);
      $fatal;
    end

    if (got_id1 == 4'h1) begin
      if (got_line1 !== line5) begin
        $display("[TB] ERROR: multi-ID read line mismatch for id 1");
        $fatal;
      end
    end else if (got_id1 == 4'h2) begin
      if (got_line1 !== line0) begin
        $display("[TB] ERROR: multi-ID read line mismatch for id 2");
        $fatal;
      end
    end else begin
      $display("[TB] ERROR: unexpected read response id %0d", got_id1);
      $fatal;
    end

    if (got_id0 == got_id1) begin
      $display("[TB] ERROR: expected two different read IDs in multi-ID scenario, got duplicate id %0d", got_id0);
      $fatal;
    end

    // --------------------------------------------------------
    // Final scoreboard sanity
    // --------------------------------------------------------
    if (exp_wr_count != 0) begin
      $display("[TB] ERROR: write expectation queue not empty at end. remaining=%0d", exp_wr_count);
      $fatal;
    end
    if (exp_rd_count != 0) begin
      $display("[TB] ERROR: read expectation queue not empty at end. remaining=%0d", exp_rd_count);
      $fatal;
    end
    if (have_active_write) begin
      $display("[TB] ERROR: monitor still thinks a write burst is active at end");
      $fatal;
    end

    $display("[TB] PASS: comprehensive AXI-master verification passed.");
    $display("[TB] PASS DETAILS: %0d scenarios, AW=%0d, W beats=%0d, AR=%0d.",
             scenario_count, aw_seen_total, w_seen_total, ar_seen_total);
    $display("[TB] COVERAGE: single write/read, queued same-ID ops, controller backpressure, protocol/burst shape, multi-ID propagation.");
    $finish;
  end

endmodule
