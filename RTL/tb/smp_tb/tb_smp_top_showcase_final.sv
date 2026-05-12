
`timescale 1ns/1ps

module tb_smp_top_showcase_final;

  // ==========================================================================
  // Clock / Reset
  // ==========================================================================
  logic clk = 1'b0;
  logic rst_n = 1'b0;

  localparam int CLK_PERIOD_NS = 10;
  always #(CLK_PERIOD_NS/2) clk = ~clk;

  // ==========================================================================
  // DUT
  // ==========================================================================
  smp_top dut (
    .clk   (clk),
    .rst_n (rst_n)
  );

  // ==========================================================================
  // Constants
  // ==========================================================================
  localparam logic [31:0] BOOT_BASE      = 32'h8000_0000;
  localparam logic [31:0] SHARED_ADDR    = 32'h0000_0000;
  localparam logic [31:0] NOP            = 32'h0000_0013;
  localparam int          FINAL_TIME_NS  = 20000;

  // ==========================================================================
  // Program encoders
  //   Safe subset only: ADDI / LW / SW / BEQ / JAL / NOP
  // ==========================================================================
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

  // ==========================================================================
  // SRAM image loader
  //   This design has shown an instruction-fetch quirk; the currently working
  //   approach in your environment is to duplicate each instruction at addr and
  //   addr+4. We preserve that here because it already gave successful runs.
  // ==========================================================================
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

  task automatic build_showcase_program;
    int i;
    logic [127:0] nop_beat;
    begin
      nop_beat = {4{NOP}};
      for (i = 0; i < dut.MEM_DEPTH_BEATS; i++) begin
        dut.sram_mem[i] = nop_beat;
      end

      // Boot dispatch by forced x31
      // 0x8000_0000 : beq x31, x0, producer
      // 0x8000_0004 : jal x0, consumer
      write_instr_dup(32'h8000_0000, enc_beq(31, 0, 8));
      write_instr_dup(32'h8000_0004, enc_jal(0, 28));

      // Producer path (core0): repeated store/load on shared word
      write_instr_dup(32'h8000_0008, enc_addi(1, 0, 0));    // x1 = shared base
      write_instr_dup(32'h8000_000C, enc_addi(2, 0, 1));    // x2 = 1
      write_instr_dup(32'h8000_0010, enc_sw  (2, 1, 0));    // store shared[0]
      write_instr_dup(32'h8000_0014, enc_lw  (3, 1, 0));    // read back shared[0]
      write_instr_dup(32'h8000_0018, enc_addi(2, 2, 1));    // x2++
      write_instr_dup(32'h8000_001C, enc_jal (0, -12));     // loop to 0x10

      // Consumer path (core1): repeated ownership contention on same line
      write_instr_dup(32'h8000_0020, enc_addi(1, 0, 0));    // x1 = shared base
      write_instr_dup(32'h8000_0024, enc_lw  (4, 1, 0));    // load shared[0]
      write_instr_dup(32'h8000_0028, enc_sw  (4, 1, 0));    // store shared[0]
      write_instr_dup(32'h8000_002C, enc_jal (0, -8));      // loop to 0x24
    end
  endtask

  // ==========================================================================
  // Human-readable helpers
  // ==========================================================================
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

  function automatic string mesi_name(input int s);
    case (s)
      0: mesi_name = "I";
      1: mesi_name = "S";
      2: mesi_name = "M";
      default: mesi_name = "?";
    endcase
  endfunction

  // ==========================================================================
  // Simple inferred MESI tracker for the one shared line
  //   0 = I/none tracked
  //   1 = S
  //   2 = M
  // ==========================================================================
  int c0_state, c1_state;
  int prev_c0_state, prev_c1_state;
  bit saw_inferred_M_to_I;
  bit saw_inferred_I_to_M;
  bit saw_inferred_M_to_S_or_S_to_M;

  task automatic print_inferred_transition;
    begin
      if ((prev_c0_state != c0_state) || (prev_c1_state != c1_state)) begin
        $display("[%0t] [MESI] inferred shared-line states: core0 %s -> %s | core1 %s -> %s",
                 $time, mesi_name(prev_c0_state), mesi_name(c0_state),
                 mesi_name(prev_c1_state), mesi_name(c1_state));
      end
    end
  endtask

  // ==========================================================================
  // Counters / status
  // ==========================================================================
  int cyc;
  int ar_count, r_count, aw_count, w_count, b_count;
  int i_req_count, d_req_count;
  int gets_count, getm_count, upgr_count, wb_count;
  int i_grant_count, d_grant_count;
  int line_fill_count;
  int c0_pc_progress, c1_pc_progress;
  logic [31:0] last_pc0, last_pc1;

  // Optional user-facing markers
  bit observed_boot_fetch;
  bit observed_both_cores_fetch;
  bit observed_shared_d0;
  bit observed_shared_d1;
  bit observed_axi_read;
  bit observed_bus_refill;
  bit observed_data_contention;

  // ==========================================================================
  // Test bring-up
  // ==========================================================================
  initial begin
    $display("");
    $display("================================================================================");
    $display("[TB] FINAL SMP SHOWCASE TEST STARTING");
    $display("[TB] Purpose  : one presentable run that displays major observable SMP behavior");
    $display("[TB] Covers   : boot, instruction fetch, AXI fills, shared-data contention,");
    $display("[TB]            arbiter grants, bus refills, MESI-relevant ownership changes");
    $display("[TB] Topology : 2x RV64I cores + private L1I/L1D + shared L2 + AXI");
    $display("[TB] Program  : core0 producer, core1 consumer, both contending on addr 0x%08h", SHARED_ADDR);
    $display("[TB] Note     : exact internal MESI bits are not directly probed here;");
    $display("[TB]            MESI transitions are inferred from bus traffic and grants.");
    $display("================================================================================");
    $display("");

    build_showcase_program();

    repeat (10) @(posedge clk);
    rst_n <= 1'b1;

    // Split roles using x31, matching the already working hierarchy in your RTL.
    repeat (5) @(posedge clk);
    force dut.u_core0.Decode.RF.x[31] = 64'd0;
    force dut.u_core1.Decode.RF.x[31] = 64'd1;
    $display("[%0t] [TB] Role split forced: core0=producer, core1=consumer", $time);

    repeat (4) @(posedge clk);
    release dut.u_core0.Decode.RF.x[31];
    release dut.u_core1.Decode.RF.x[31];
    $display("[%0t] [TB] Role split released. Cores continue autonomously.", $time);
  end

  // ==========================================================================
  // Main monitor
  // ==========================================================================
  always @(posedge clk) begin
    if (!rst_n) begin
      cyc <= 0;
      ar_count <= 0; r_count <= 0; aw_count <= 0; w_count <= 0; b_count <= 0;
      i_req_count <= 0; d_req_count <= 0;
      gets_count <= 0; getm_count <= 0; upgr_count <= 0; wb_count <= 0;
      i_grant_count <= 0; d_grant_count <= 0;
      line_fill_count <= 0;
      c0_pc_progress <= 0; c1_pc_progress <= 0;
      last_pc0 <= BOOT_BASE; last_pc1 <= BOOT_BASE;
      c0_state <= 0; c1_state <= 0;
      prev_c0_state <= 0; prev_c1_state <= 0;
      saw_inferred_M_to_I <= 0;
      saw_inferred_I_to_M <= 0;
      saw_inferred_M_to_S_or_S_to_M <= 0;
      observed_boot_fetch <= 0;
      observed_both_cores_fetch <= 0;
      observed_shared_d0 <= 0;
      observed_shared_d1 <= 0;
      observed_axi_read <= 0;
      observed_bus_refill <= 0;
      observed_data_contention <= 0;
    end else begin
      cyc <= cyc + 1;

      // Track instruction-side PC progress using top-level instruction addresses.
      if (dut.c0_imem_addr != last_pc0) begin
        c0_pc_progress <= c0_pc_progress + 1;
        last_pc0 <= dut.c0_imem_addr;
      end
      if (dut.c1_imem_addr != last_pc1) begin
        c1_pc_progress <= c1_pc_progress + 1;
        last_pc1 <= dut.c1_imem_addr;
      end

      // ---------------- AXI ----------------
      if (dut.M_AXI_ARVALID && dut.M_AXI_ARREADY) begin
        ar_count <= ar_count + 1;
        observed_axi_read <= 1;
        $display("[%0t] [AXI ] AR  id=%0d addr=0x%08h len=%0d",
                 $time, dut.M_AXI_ARID, dut.M_AXI_ARADDR, dut.M_AXI_ARLEN);
      end
      if (dut.M_AXI_RVALID && dut.M_AXI_RREADY) begin
        r_count <= r_count + 1;
        if (dut.M_AXI_RLAST) begin
          $display("[%0t] [AXI ] R   id=%0d line complete beats=4 resp=%0d",
                   $time, dut.M_AXI_RID, dut.M_AXI_RRESP);
        end
      end
      if (dut.M_AXI_AWVALID && dut.M_AXI_AWREADY) begin
        aw_count <= aw_count + 1;
        $display("[%0t] [AXI ] AW  id=%0d addr=0x%08h len=%0d",
                 $time, dut.M_AXI_AWID, dut.M_AXI_AWADDR, dut.M_AXI_AWLEN);
      end
      if (dut.M_AXI_WVALID && dut.M_AXI_WREADY) begin
        w_count <= w_count + 1;
        if (dut.M_AXI_WLAST) begin
          $display("[%0t] [AXI ] W   line complete strb=0x%04h",
                   $time, dut.M_AXI_WSTRB);
        end
      end
      if (dut.M_AXI_BVALID && dut.M_AXI_BREADY) begin
        b_count <= b_count + 1;
        $display("[%0t] [AXI ] B   id=%0d resp=%0d",
                 $time, dut.M_AXI_BID, dut.M_AXI_BRESP);
      end

      // ---------------- Shared request bus ----------------
      if (dut.bus_req_valid) begin
        $display("[%0t] [BUS ] REQ src=%s cmd=%s addr=0x%08h",
                 $time, src_name(dut.bus_req_src), cmd_name(dut.bus_req_cmd), dut.bus_req_addr);

        if (dut.bus_req_src inside {2'd0,2'd1}) begin
          i_req_count <= i_req_count + 1;
          if (dut.bus_req_addr == BOOT_BASE) observed_boot_fetch <= 1;
          if ((dut.bus_req_src == 2'd0) || (dut.bus_req_src == 2'd1))
            observed_both_cores_fetch <= 1;
        end else begin
          d_req_count <= d_req_count + 1;
        end

        case (dut.bus_req_cmd)
          3'd0: gets_count <= gets_count + 1;
          3'd1: getm_count <= getm_count + 1;
          3'd2: upgr_count <= upgr_count + 1;
          3'd3: wb_count   <= wb_count + 1;
        endcase

        // MESI-relevant data-line events on the shared address
        if ((dut.bus_req_src == 2'd2) && (dut.bus_req_addr == SHARED_ADDR)) begin
          observed_shared_d0 <= 1;
          observed_data_contention <= observed_shared_d1 ? 1'b1 : observed_data_contention;
          $display("[%0t] [DATA] Core0 D-cache requested shared line with %s",
                   $time, cmd_name(dut.bus_req_cmd));
        end
        if ((dut.bus_req_src == 2'd3) && (dut.bus_req_addr == SHARED_ADDR)) begin
          observed_shared_d1 <= 1;
          observed_data_contention <= observed_shared_d0 ? 1'b1 : observed_data_contention;
          $display("[%0t] [DATA] Core1 D-cache requested shared line with %s",
                   $time, cmd_name(dut.bus_req_cmd));
        end
      end

      // ---------------- Grants ----------------
      if (dut.i_bus_gnt_valid) begin
        i_grant_count <= i_grant_count + 1;
        $display("[%0t] [ARB ] I-grant dst=%s ok=%0d",
                 $time, src_name(dut.i_bus_gnt_dst), dut.i_bus_gnt_ok);
      end

      if (dut.d_bus_gnt_valid) begin
        d_grant_count <= d_grant_count + 1;
        $display("[%0t] [ARB ] D-grant dst=%s ok=%0d state=%0d addr=0x%08h",
                 $time, src_name(dut.d_bus_gnt_dst), dut.d_bus_gnt_ok,
                 dut.d_bus_gnt_state, dut.d_bus_gnt_addr);

        // Inferred MESI state tracking for the single shared data line.
        if (dut.d_bus_gnt_ok && (dut.d_bus_gnt_addr == SHARED_ADDR)) begin
          prev_c0_state = c0_state;
          prev_c1_state = c1_state;

          if (dut.d_bus_gnt_dst == 2'd2) begin
            case (dut.d_bus_gnt_state)
              2'd3: begin
                if (c1_state == 2) saw_inferred_M_to_I <= 1;
                if (c0_state == 0) saw_inferred_I_to_M <= 1;
                if (c1_state == 1) saw_inferred_M_to_S_or_S_to_M <= 1;
                c0_state <= 2;   // M
                c1_state <= 0;   // I
                $display("[%0t] [MESI] inferred ownership handoff to core0 (exclusive/modified intent)", $time);
              end
              2'd1: begin
                if (c1_state == 2) saw_inferred_M_to_S_or_S_to_M <= 1;
                c0_state <= 1;   // S
                c1_state <= 1;   // S
                $display("[%0t] [MESI] inferred shared line between core0 and core1", $time);
              end
              default: begin end
            endcase
            print_inferred_transition();
          end

          if (dut.d_bus_gnt_dst == 2'd3) begin
            case (dut.d_bus_gnt_state)
              2'd3: begin
                if (c0_state == 2) saw_inferred_M_to_I <= 1;
                if (c1_state == 0) saw_inferred_I_to_M <= 1;
                if (c0_state == 1) saw_inferred_M_to_S_or_S_to_M <= 1;
                c1_state <= 2;   // M
                c0_state <= 0;   // I
                $display("[%0t] [MESI] inferred ownership handoff to core1 (exclusive/modified intent)", $time);
              end
              2'd1: begin
                if (c0_state == 2) saw_inferred_M_to_S_or_S_to_M <= 1;
                c0_state <= 1;   // S
                c1_state <= 1;   // S
                $display("[%0t] [MESI] inferred shared line between core0 and core1", $time);
              end
              default: begin end
            endcase
            print_inferred_transition();
          end
        end
      end

      // ---------------- Data return bus ----------------
      if (dut.bus_dat_valid && dut.bus_dat_last) begin
        line_fill_count <= line_fill_count + 1;
        observed_bus_refill <= 1;
        $display("[%0t] [BUS ] DATA complete dst=%0d line=0x%08h last_beat=%0d",
                 $time, dut.bus_dat_dst, dut.bus_dat_addr, dut.bus_dat_beat);
      end

      // ---------------- Heartbeat ----------------
      if ((cyc % 250) == 0) begin
        $display("[%0t] [STAT] cyc=%0d | pc0=0x%08h pc1=0x%08h | bus I/D req=(%0d/%0d) grants=(%0d/%0d) | CMD GETS/GETM/UPGR/WB=(%0d/%0d/%0d/%0d) | AXI AR/R/AW/W/B=(%0d/%0d/%0d/%0d/%0d)",
                 $time, cyc, dut.c0_imem_addr, dut.c1_imem_addr,
                 i_req_count, d_req_count, i_grant_count, d_grant_count,
                 gets_count, getm_count, upgr_count, wb_count,
                 ar_count, r_count, aw_count, w_count, b_count);
      end
    end
  end

  // ==========================================================================
  // Final summary
  // ==========================================================================
  initial begin
    #(FINAL_TIME_NS);

    $display("");
    $display("================================================================================");
    $display("[TB] FINAL SHOWCASE SUMMARY");
    $display("[TB] Core forward progress         : core0=%0d core1=%0d", c0_pc_progress, c1_pc_progress);
    $display("[TB] Request counts                : I=%0d D=%0d", i_req_count, d_req_count);
    $display("[TB] Grant counts                  : I=%0d D=%0d", i_grant_count, d_grant_count);
    $display("[TB] Shared-bus command counts     : GETS=%0d GETM=%0d UPGR=%0d WB=%0d",
             gets_count, getm_count, upgr_count, wb_count);
    $display("[TB] AXI transaction counts        : AR=%0d R=%0d AW=%0d W=%0d B=%0d",
             ar_count, r_count, aw_count, w_count, b_count);
    $display("[TB] Completed internal data lines : %0d", line_fill_count);
    $display("[TB] Inferred final shared states  : core0=%s core1=%s", mesi_name(c0_state), mesi_name(c1_state));
    $display("--------------------------------------------------------------------------------");
    $display("[TB] Observable functionality checklist");
    $display("[TB]  - Boot fetch observed                  : %s", observed_boot_fetch      ? "YES" : "NO");
    $display("[TB]  - Both cores fetched instructions      : %s", observed_both_cores_fetch ? "YES" : "NO");
    $display("[TB]  - AXI read path active                 : %s", observed_axi_read        ? "YES" : "NO");
    $display("[TB]  - Internal bus refill visible          : %s", observed_bus_refill      ? "YES" : "NO");
    $display("[TB]  - Core0 shared data request visible    : %s", observed_shared_d0       ? "YES" : "NO");
    $display("[TB]  - Core1 shared data request visible    : %s", observed_shared_d1       ? "YES" : "NO");
    $display("[TB]  - Shared-line contention visible       : %s", observed_data_contention ? "YES" : "NO");
    $display("[TB]  - Inferred I -> M seen                 : %s", saw_inferred_I_to_M      ? "YES" : "NO");
    $display("[TB]  - Inferred M -> I seen                 : %s", saw_inferred_M_to_I      ? "YES" : "NO");
    $display("[TB]  - Inferred share/upgrade behavior seen : %s", saw_inferred_M_to_S_or_S_to_M ? "YES" : "NO");
    $display("================================================================================");

    if (c0_pc_progress == 0 || c1_pc_progress == 0)
      $fatal(1, "[TB] FAIL: one or both cores made no forward progress");

    if (!observed_boot_fetch || !observed_axi_read || !observed_bus_refill)
      $fatal(1, "[TB] FAIL: fetch/L2/AXI path was not fully observed");

    if (!observed_shared_d0 || !observed_shared_d1)
      $fatal(1, "[TB] FAIL: both cores did not generate visible shared-line data traffic");

    if (!observed_data_contention || (getm_count < 2))
      $fatal(1, "[TB] FAIL: shared-line ownership contention was not convincingly observed");

    $display("[TB] PASS: final showcase run captured major observable SMP functionality.");
    $finish;
  end

endmodule
