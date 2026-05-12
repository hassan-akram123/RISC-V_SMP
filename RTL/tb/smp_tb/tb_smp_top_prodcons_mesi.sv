
`timescale 1ns/1ps

module tb_smp_top_prodcons_mesi;

  logic clk = 1'b0;
  logic rst_n = 1'b0;

  localparam int CLK_PERIOD_NS = 10;
  localparam logic [31:0] BOOT_BASE   = 32'h8000_0000;
  localparam logic [31:0] SHARED_ADDR = 32'h0000_0000;
  localparam logic [31:0] NOP         = 32'h0000_0013;

  always #(CLK_PERIOD_NS/2) clk = ~clk;

  smp_top dut (
    .clk   (clk),
    .rst_n (rst_n)
  );

  // --------------------------------------------------------------------------
  // Encoders
  // --------------------------------------------------------------------------
  function automatic [31:0] enc_addi(input int rd, input int rs1, input int imm);
    logic [11:0] i12;
    begin
      i12 = imm[11:0];
      enc_addi = {i12, rs1[4:0], 3'b000, rd[4:0], 7'b0010011};
    end
  endfunction

  function automatic [31:0] enc_lw(input int rd, input int rs1, input int imm);
    logic [11:0] i12;
    begin
      i12 = imm[11:0];
      enc_lw = {i12, rs1[4:0], 3'b010, rd[4:0], 7'b0000011};
    end
  endfunction

  function automatic [31:0] enc_sw(input int rs2, input int rs1, input int imm);
    logic [11:0] i12;
    begin
      i12 = imm[11:0];
      enc_sw = {i12[11:5], rs2[4:0], rs1[4:0], 3'b010, i12[4:0], 7'b0100011};
    end
  endfunction

  function automatic [31:0] enc_beq(input int rs1, input int rs2, input int imm);
    logic [12:0] b13;
    begin
      b13 = imm[12:0];
      enc_beq = {b13[12], b13[10:5], rs2[4:0], rs1[4:0], 3'b000, b13[4:1], b13[11], 7'b1100011};
    end
  endfunction

  function automatic [31:0] enc_jal(input int rd, input int imm);
    logic [20:0] j21;
    begin
      j21 = imm[20:0];
      enc_jal = {j21[20], j21[10:1], j21[11], j21[19:12], rd[4:0], 7'b1101111};
    end
  endfunction

  task automatic write_instr_dup(input int byte_addr, input logic [31:0] instr);
    int beat_idx;
    int lane;
    begin
      beat_idx = (byte_addr - BOOT_BASE) >> 4;
      lane     = ((byte_addr - BOOT_BASE) >> 2) & 2'b11;
      dut.sram_mem[beat_idx][lane*32 +: 32] = instr;

      beat_idx = ((byte_addr + 4) - BOOT_BASE) >> 4;
      lane     = (((byte_addr + 4) - BOOT_BASE) >> 2) & 2'b11;
      dut.sram_mem[beat_idx][lane*32 +: 32] = instr;
    end
  endtask

  task automatic build_program;
    int i;
    logic [127:0] nop_beat;
    begin
      nop_beat = {4{NOP}};
      for (i = 0; i < dut.MEM_DEPTH_BEATS; i++) dut.sram_mem[i] = nop_beat;

      // Dispatch:
      // 0x8000_0000: beq x31,x0, producer (+8)
      // 0x8000_0004: jal x0, consumer (+28 => 0x8000_0020)
      write_instr_dup(32'h8000_0000, enc_beq(31, 0, 8));
      write_instr_dup(32'h8000_0004, enc_jal(0, 28));

      // Producer
      write_instr_dup(32'h8000_0008, enc_addi(1, 0, 0));   // x1 = 0
      write_instr_dup(32'h8000_000C, enc_addi(2, 0, 1));   // x2 = 1
      write_instr_dup(32'h8000_0010, enc_sw  (2, 1, 0));   // sw x2,0(x1)
      write_instr_dup(32'h8000_0014, enc_lw  (3, 1, 0));   // lw x3,0(x1)
      write_instr_dup(32'h8000_0018, enc_addi(2, 2, 1));   // x2++
      write_instr_dup(32'h8000_001C, enc_jal (0, -12));    // back to 0x10

      // Consumer
      write_instr_dup(32'h8000_0020, enc_addi(1, 0, 0));   // x1 = 0
      write_instr_dup(32'h8000_0024, enc_lw  (4, 1, 0));   // lw x4,0(x1)
      write_instr_dup(32'h8000_0028, enc_sw  (4, 1, 0));   // sw x4,0(x1)
      write_instr_dup(32'h8000_002C, enc_jal (0, -8));     // back to 0x24
    end
  endtask

  // --------------------------------------------------------------------------
  // Counters / Monitors
  // --------------------------------------------------------------------------
  int ar_count, r_count, aw_count, w_count, b_count;
  int bus_req_count, bus_grant_count, bus_data_line_count;
  int d0_req_count, d1_req_count, gets_count, getm_count, upgr_count, wb_count;
  int c0_pc_progress, c1_pc_progress;
  int c0_shared_reads, c1_shared_reads, c0_shared_writes, c1_shared_writes;
  logic [31:0] last_pc0, last_pc1;

  function automatic string src_name(input logic [1:0] s);
    case (s)
      2'd0: src_name = "I0";
      2'd1: src_name = "I1";
      2'd2: src_name = "D0";
      2'd3: src_name = "D1";
      default: src_name = "??";
    endcase
  endfunction

  function automatic string cmd_name(input logic [2:0] c);
    case (c)
      3'd0: cmd_name = "GETS";
      3'd1: cmd_name = "GETM";
      3'd2: cmd_name = "UPGR";
      3'd3: cmd_name = "WB";
      default: cmd_name = "UNK";
    endcase
  endfunction

  initial begin
    $display("");
    $display("================================================================================");
    $display("[TB] Dual-core producer-consumer + MESI visibility test starting");
    $display("[TB] Goal     : force shared-line ownership changes on addr 0x%08h", SHARED_ADDR);
    $display("[TB] Core0    : producer");
    $display("[TB] Core1    : consumer");
    $display("[TB] Expect   : D0/D1 GETM/GETS traffic, snoops, refills, ownership flips");
    $display("================================================================================");
    $display("");

    build_program();

    repeat (10) @(posedge clk);
    rst_n <= 1'b1;

    // Hierarchical hart split: decode instance is Decode, RF array is x[]
    repeat (5) @(posedge clk);
    force dut.u_core0.Decode.RF.x[31] = 64'd0;
    force dut.u_core1.Decode.RF.x[31] = 64'd1;
    $display("[%0t] [TB] Forced x31 split: core0=0 producer, core1=1 consumer", $time);

    repeat (4) @(posedge clk);
    release dut.u_core0.Decode.RF.x[31];
    release dut.u_core1.Decode.RF.x[31];
  end

  always @(posedge clk) begin
    if (!rst_n) begin
      ar_count <= 0; r_count <= 0; aw_count <= 0; w_count <= 0; b_count <= 0;
      bus_req_count <= 0; bus_grant_count <= 0; bus_data_line_count <= 0;
      d0_req_count <= 0; d1_req_count <= 0; gets_count <= 0; getm_count <= 0; upgr_count <= 0; wb_count <= 0;
      c0_pc_progress <= 0; c1_pc_progress <= 0;
      c0_shared_reads <= 0; c1_shared_reads <= 0; c0_shared_writes <= 0; c1_shared_writes <= 0;
      last_pc0 <= 32'h8000_0000; last_pc1 <= 32'h8000_0000;
    end else begin
      if (dut.M_AXI_ARVALID && dut.M_AXI_ARREADY) begin
        ar_count <= ar_count + 1;
        $display("[%0t] [AXI] AR id=%0d addr=0x%08h len=%0d", $time, dut.M_AXI_ARID, dut.M_AXI_ARADDR, dut.M_AXI_ARLEN);
      end
      if (dut.M_AXI_RVALID && dut.M_AXI_RREADY) begin
        r_count <= r_count + 1;
        if (dut.M_AXI_RLAST)
          $display("[%0t] [AXI] R  id=%0d line complete beats=4 resp=%0d", $time, dut.M_AXI_RID, dut.M_AXI_RRESP);
      end
      if (dut.M_AXI_AWVALID && dut.M_AXI_AWREADY) begin
        aw_count <= aw_count + 1;
        $display("[%0t] [AXI] AW id=%0d addr=0x%08h len=%0d", $time, dut.M_AXI_AWID, dut.M_AXI_AWADDR, dut.M_AXI_AWLEN);
      end
      if (dut.M_AXI_WVALID && dut.M_AXI_WREADY) begin
        w_count <= w_count + 1;
        if (dut.M_AXI_WLAST)
          $display("[%0t] [AXI] W  line complete strb=0x%04h", $time, dut.M_AXI_WSTRB);
      end
      if (dut.M_AXI_BVALID && dut.M_AXI_BREADY) begin
        b_count <= b_count + 1;
        $display("[%0t] [AXI] B  id=%0d resp=%0d", $time, dut.M_AXI_BID, dut.M_AXI_BRESP);
      end

      if (dut.bus_req_valid) begin
        bus_req_count <= bus_req_count + 1;
        if (dut.bus_req_src == 2'd2) d0_req_count <= d0_req_count + 1;
        if (dut.bus_req_src == 2'd3) d1_req_count <= d1_req_count + 1;
        case (dut.bus_req_cmd)
          3'd0: gets_count <= gets_count + 1;
          3'd1: getm_count <= getm_count + 1;
          3'd2: upgr_count <= upgr_count + 1;
          3'd3: wb_count   <= wb_count + 1;
        endcase
        $display("[%0t] [ARB] req src=%s cmd=%s addr=0x%08h", $time, src_name(dut.bus_req_src), cmd_name(dut.bus_req_cmd), dut.bus_req_addr);

        if ((dut.bus_req_src == 2'd2 || dut.bus_req_src == 2'd3) && dut.bus_req_addr == SHARED_ADDR) begin
          if (dut.bus_req_cmd == 3'd1)
            $display("[%0t] [MESI] %s requesting exclusive ownership -> intent M", $time, src_name(dut.bus_req_src));
          else if (dut.bus_req_cmd == 3'd0)
            $display("[%0t] [MESI] %s requesting shared copy -> intent S", $time, src_name(dut.bus_req_src));
          else if (dut.bus_req_cmd == 3'd2)
            $display("[%0t] [MESI] %s upgrading shared line -> S to M", $time, src_name(dut.bus_req_src));
        end
      end

      if (dut.i_bus_gnt_valid) begin
        bus_grant_count <= bus_grant_count + 1;
        $display("[%0t] [ARB] I-grant dst=%s ok=%0d", $time, src_name(dut.i_bus_gnt_dst), dut.i_bus_gnt_ok);
      end
      if (dut.d_bus_gnt_valid) begin
        bus_grant_count <= bus_grant_count + 1;
        $display("[%0t] [ARB] D-grant dst=%s ok=%0d state=%0d addr=0x%08h", $time, src_name(dut.d_bus_gnt_dst), dut.d_bus_gnt_ok, dut.d_bus_gnt_state, dut.d_bus_gnt_addr);
        if (dut.d_bus_gnt_addr == SHARED_ADDR)
          $display("[%0t] [MESI] %s granted shared-line transaction; peer should snoop and potentially drop/transition state", $time, src_name(dut.d_bus_gnt_dst));
      end

      if (dut.bus_dat_valid && dut.bus_dat_last) begin
        bus_data_line_count <= bus_data_line_count + 1;
        $display("[%0t] [BUS] line complete dst=%0d line=0x%08h last_beat=%0d", $time, dut.bus_dat_dst, dut.bus_dat_addr, dut.bus_dat_beat);
      end

      // CPU data-side intent monitors using top-level core/cache interface signals.
      if (dut.c0_mem_rd && dut.c0_mem_ack && (dut.c0_mem_addr[31:0] == SHARED_ADDR)) begin
        c0_shared_reads <= c0_shared_reads + 1;
        $display("[%0t] [CORE0] load  shared[0] rdata=0x%016h", $time, dut.c0_mem_rdat);
      end
      if (dut.c1_mem_rd && dut.c1_mem_ack && (dut.c1_mem_addr[31:0] == SHARED_ADDR)) begin
        c1_shared_reads <= c1_shared_reads + 1;
        $display("[%0t] [CORE1] load  shared[0] rdata=0x%016h", $time, dut.c1_mem_rdat);
      end
      if (dut.c0_mem_wr && dut.c0_mem_ack && (dut.c0_mem_addr[31:0] == SHARED_ADDR)) begin
        c0_shared_writes <= c0_shared_writes + 1;
        $display("[%0t] [CORE0] store shared[0] data=0x%016h", $time, dut.c0_mem_wdat);
      end
      if (dut.c1_mem_wr && dut.c1_mem_ack && (dut.c1_mem_addr[31:0] == SHARED_ADDR)) begin
        c1_shared_writes <= c1_shared_writes + 1;
        $display("[%0t] [CORE1] store shared[0] data=0x%016h", $time, dut.c1_mem_wdat);
      end

      if (dut.c0_imem_addr != last_pc0) begin
        c0_pc_progress <= c0_pc_progress + 1;
        last_pc0 <= dut.c0_imem_addr;
      end
      if (dut.c1_imem_addr != last_pc1) begin
        c1_pc_progress <= c1_pc_progress + 1;
        last_pc1 <= dut.c1_imem_addr;
      end
    end
  end

  int cyc;
  always @(posedge clk) begin
    if (!rst_n) cyc <= 0;
    else begin
      cyc <= cyc + 1;
      if ((cyc % 250) == 0) begin
        $display("[%0t] [HEARTBEAT] cyc=%0d | pc0=0x%08h pc1=0x%08h | shared_rd=(%0d,%0d) shared_wr=(%0d,%0d) | Req D0/D1=(%0d/%0d) | CMD G/M/U/W=(%0d/%0d/%0d/%0d) | AXI AR/R/AW/W/B=(%0d/%0d/%0d/%0d/%0d)",
                 $time, cyc, dut.c0_imem_addr, dut.c1_imem_addr,
                 c0_shared_reads, c1_shared_reads, c0_shared_writes, c1_shared_writes,
                 d0_req_count, d1_req_count, gets_count, getm_count, upgr_count, wb_count,
                 ar_count, r_count, aw_count, w_count, b_count);
      end
    end
  end

  initial begin
    #12000ns;
    $display("");
    $display("================================================================================");
    $display("[TB] FINAL SUMMARY");
    $display("[TB] pc progress          : core0=%0d core1=%0d", c0_pc_progress, c1_pc_progress);
    $display("[TB] shared reads         : core0=%0d core1=%0d", c0_shared_reads, c1_shared_reads);
    $display("[TB] shared writes        : core0=%0d core1=%0d", c0_shared_writes, c1_shared_writes);
    $display("[TB] bus req / grants     : req=%0d grants=%0d data_lines=%0d", bus_req_count, bus_grant_count, bus_data_line_count);
    $display("[TB] commands G/M/U/W     : %0d / %0d / %0d / %0d", gets_count, getm_count, upgr_count, wb_count);
    $display("[TB] AXI AR/R/AW/W/B      : %0d / %0d / %0d / %0d / %0d", ar_count, r_count, aw_count, w_count, b_count);
    $display("================================================================================");

    if (c0_pc_progress == 0 || c1_pc_progress == 0)
      $fatal(1, "[TB] FAIL: one or both cores made no forward progress");
    if (d0_req_count == 0 || d1_req_count == 0)
      $fatal(1, "[TB] FAIL: expected both D-caches to generate traffic");
    if (getm_count < 2)
      $fatal(1, "[TB] FAIL: expected visible GETM ownership requests on shared line");
    if (ar_count == 0 || r_count == 0)
      $fatal(1, "[TB] FAIL: expected AXI read traffic");

    $display("[TB] PASS: producer-consumer traffic observed and MESI-relevant ownership requests are visible.");
    $finish;
  end

endmodule
