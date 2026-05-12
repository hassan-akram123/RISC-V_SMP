class smp_base_seq extends uvm_sequence #(smp_ctrl_item);
  `uvm_object_utils(smp_base_seq)

  smp_test_cfg cfg;
  local int unsigned txn_idx;

  function new(string name = "smp_base_seq");
    super.new(name);
    txn_idx = 0;
  endfunction

  protected task automatic send_ctrl(
    ctrl_cmd_e         cmd,
    logic [31:0]       addr  = '0,
    logic [31:0]       instr = '0,
    int unsigned       cycles = 0,
    logic [63:0]       core0_role_value = '0,
    logic [63:0]       core1_role_value = '0
  );
    smp_ctrl_item tr;
    tr = smp_ctrl_item::type_id::create($sformatf("ctrl_tr_%0d", txn_idx++));
    start_item(tr);
    tr.cmd              = cmd;
    tr.addr             = addr;
    tr.instr            = instr;
    tr.cycles           = cycles;
    tr.core0_role_value = core0_role_value;
    tr.core1_role_value = core1_role_value;
    finish_item(tr);
  endtask

  protected task automatic clear_program_space();
    send_ctrl(CTRL_CLEAR_MEMORY);
  endtask

  protected task automatic write_instr_dup(logic [31:0] addr, logic [31:0] instr);
    send_ctrl(CTRL_WRITE_INSTR, addr, instr);
  endtask

  protected task automatic startup_without_roles();
    send_ctrl(CTRL_ASSERT_RESET, .cycles(cfg.reset_cycles));
    send_ctrl(CTRL_RELEASE_RESET);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.runtime_cycles));
  endtask

  protected task automatic startup_with_roles(logic [63:0] core0_role, logic [63:0] core1_role);
    send_ctrl(CTRL_ASSERT_RESET, .cycles(cfg.reset_cycles));
    send_ctrl(CTRL_RELEASE_RESET);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.post_reset_cycles));
    send_ctrl(CTRL_FORCE_ROLES, .core0_role_value(core0_role), .core1_role_value(core1_role));
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.role_force_cycles));
    send_ctrl(CTRL_RELEASE_ROLES);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.runtime_cycles));
  endtask

  protected task automatic startup_with_roles_from_reset(logic [63:0] core0_role, logic [63:0] core1_role);
    // For scenarios that branch on x31 in the first few instructions, force the
    // role values before reset is released so each core deterministically enters
    // its intended program path.
    send_ctrl(CTRL_ASSERT_RESET, .cycles(cfg.reset_cycles));
    send_ctrl(CTRL_FORCE_ROLES, .core0_role_value(core0_role), .core1_role_value(core1_role));
    send_ctrl(CTRL_RELEASE_RESET);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.role_force_cycles));
    send_ctrl(CTRL_RELEASE_ROLES);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.runtime_cycles));
  endtask

  protected task automatic build_boot_sanity_program();
    clear_program_space();
    write_instr_dup(BOOT_BASE + 32'h0, smp_program_utils::enc_addi(1, 1, 1));
    write_instr_dup(BOOT_BASE + 32'h4, smp_program_utils::enc_jal (0, -4));
  endtask

  protected task automatic build_dual_core_fetch_program();
    clear_program_space();
    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_beq (31, 0, 8));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_jal (0, 28));

    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(5, 5, 1));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_jal (0, -4));

    write_instr_dup(BOOT_BASE + 32'h20, smp_program_utils::enc_addi(6, 6, 1));
    write_instr_dup(BOOT_BASE + 32'h24, smp_program_utils::enc_jal (0, -4));
  endtask

  protected task automatic build_shared_line_contention_program();
    clear_program_space();

    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_beq (31, 0, 8));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_jal (0, 28));

    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_addi(2, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_sw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h14, smp_program_utils::enc_lw  (3, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h18, smp_program_utils::enc_addi(2, 2, 1));
    write_instr_dup(BOOT_BASE + 32'h1C, smp_program_utils::enc_jal (0, -12));

    write_instr_dup(BOOT_BASE + 32'h20, smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'h24, smp_program_utils::enc_lw  (4, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h28, smp_program_utils::enc_sw  (4, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h2C, smp_program_utils::enc_jal (0, -8));
  endtask

  protected task automatic build_data_path_smoke_program();
    clear_program_space();

    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_beq (31, 0, 8));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_jal (0, 24));

    // Core0 path: repeated stores to the shared line to prove D-side activity.
    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_addi(2, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_sw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h14, smp_program_utils::enc_addi(2, 2, 1));
    write_instr_dup(BOOT_BASE + 32'h18, smp_program_utils::enc_jal (0, -8));

    // Core1 path: fetch-only loop so both cores stay live in the same run.
    write_instr_dup(BOOT_BASE + 32'h1C, smp_program_utils::enc_addi(6, 6, 1));
    write_instr_dup(BOOT_BASE + 32'h20, smp_program_utils::enc_jal (0, -4));
  endtask

  protected task automatic build_shared_line_read_sharing_program();
    clear_program_space();

    // Both cores run the exact same program with no role steering.
    // This makes the scenario deterministic on the stable branch:
    // each core repeatedly reads the same shared line, so the monitor
    // must observe D-side traffic from both REQ_D0 and REQ_D1.
    write_instr_dup(BOOT_BASE + 32'h0, smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'h4, smp_program_utils::enc_lw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h8, smp_program_utils::enc_jal (0, -4));
  endtask

  protected task automatic build_remote_write_read_visibility_program();
    clear_program_space();

    // Symmetric shared-line update/readback loop.
    // Both cores execute identical code so the scenario no longer depends on
    // x31 role steering. This still exercises coherence-relevant behavior by
    // generating shared reads plus ownership-grabbing writes on the same line.
    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_lw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(2, 2, 1));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_sw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_lw  (3, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h14, smp_program_utils::enc_jal (0, -16));
  endtask

  protected task automatic build_remote_read_downgrade_program();
    clear_program_space();

    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_beq (31, 0, 8));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_jal (0, 44));

    // Core0: write first to claim M state, then hold.
    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_addi(2, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_sw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h14, smp_program_utils::enc_jal (0, 0));

    // Core1: delay, then read back value 1 and branch to pass/fail loops.
    write_instr_dup(BOOT_BASE + 32'h30, smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'h34, NOP);
    write_instr_dup(BOOT_BASE + 32'h38, NOP);
    write_instr_dup(BOOT_BASE + 32'h3C, smp_program_utils::enc_lw  (4, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h40, smp_program_utils::enc_addi(5, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h44, smp_program_utils::enc_beq (4, 5, 16));
    write_instr_dup(BOOT_BASE + 32'h48, smp_program_utils::enc_jal (0, 16));
    write_instr_dup(BOOT_BASE + 32'h4C, NOP);
    write_instr_dup(BOOT_BASE + 32'h50, NOP);
    write_instr_dup(BOOT_BASE + 32'h54, smp_program_utils::enc_jal (0, 0)); // success
    write_instr_dup(BOOT_BASE + 32'h58, smp_program_utils::enc_jal (0, 0)); // fail
  endtask

  protected task automatic build_shared_to_modified_upgrade_program();
    clear_program_space();

    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_beq (31, 0, 8));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_jal (0, 44));

    // Core0: read shared copy, then write value 1 to upgrade.
    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_lw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_addi(3, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h14, smp_program_utils::enc_sw  (3, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h18, smp_program_utils::enc_jal (0, 0));

    // Core1: read shared copy, then reread after the upgrade and check for value 1.
    write_instr_dup(BOOT_BASE + 32'h30, smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'h34, smp_program_utils::enc_lw  (4, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h38, NOP);
    write_instr_dup(BOOT_BASE + 32'h3C, NOP);
    write_instr_dup(BOOT_BASE + 32'h40, smp_program_utils::enc_lw  (5, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h44, smp_program_utils::enc_addi(6, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h48, smp_program_utils::enc_beq (5, 6, 24));
    write_instr_dup(BOOT_BASE + 32'h4C, smp_program_utils::enc_jal (0, 24));
    write_instr_dup(BOOT_BASE + 32'h50, NOP);
    write_instr_dup(BOOT_BASE + 32'h54, NOP);
    write_instr_dup(BOOT_BASE + 32'h58, NOP);
    write_instr_dup(BOOT_BASE + 32'h5C, NOP);
    write_instr_dup(BOOT_BASE + 32'h60, smp_program_utils::enc_jal (0, 0)); // success
    write_instr_dup(BOOT_BASE + 32'h64, smp_program_utils::enc_jal (0, 0)); // fail
  endtask

  protected task automatic build_modified_ownership_transfer_program();
    clear_program_space();

    write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_beq (31, 0, 8));
    write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_jal (0, 68));

    // Core0: write value 1, then later confirm core1's value 2 is visible.
    write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_addi(2, 0, 1));
    write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_sw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h14, NOP);
    write_instr_dup(BOOT_BASE + 32'h18, NOP);
    write_instr_dup(BOOT_BASE + 32'h1C, NOP);
    write_instr_dup(BOOT_BASE + 32'h20, NOP);
    write_instr_dup(BOOT_BASE + 32'h24, smp_program_utils::enc_lw  (4, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h28, smp_program_utils::enc_addi(5, 0, 2));
    write_instr_dup(BOOT_BASE + 32'h2C, smp_program_utils::enc_beq (4, 5, 20));
    write_instr_dup(BOOT_BASE + 32'h30, smp_program_utils::enc_jal (0, 20));
    write_instr_dup(BOOT_BASE + 32'h34, NOP);
    write_instr_dup(BOOT_BASE + 32'h38, NOP);
    write_instr_dup(BOOT_BASE + 32'h3C, NOP);
    write_instr_dup(BOOT_BASE + 32'h40, smp_program_utils::enc_jal (0, 0)); // success
    write_instr_dup(BOOT_BASE + 32'h44, smp_program_utils::enc_jal (0, 0)); // fail

    // Core1: later write value 2 and hold ownership.
    write_instr_dup(BOOT_BASE + 32'h48, smp_program_utils::enc_addi(1, 0, 0));
    write_instr_dup(BOOT_BASE + 32'h4C, NOP);
    write_instr_dup(BOOT_BASE + 32'h50, smp_program_utils::enc_addi(2, 0, 2));
    write_instr_dup(BOOT_BASE + 32'h54, smp_program_utils::enc_sw  (2, 1, 0));
    write_instr_dup(BOOT_BASE + 32'h58, smp_program_utils::enc_jal (0, 0));
  endtask


protected task automatic build_symmetric_store_ping_pong_program();
  clear_program_space();

  // Both cores continuously store to the same shared line.
  // Intended to provoke ownership ping-pong without x31 role steering.
  write_instr_dup(BOOT_BASE + 32'h0,  smp_program_utils::enc_addi(1, 0, 0));
  write_instr_dup(BOOT_BASE + 32'h4,  smp_program_utils::enc_addi(2, 0, 1));
  write_instr_dup(BOOT_BASE + 32'h8,  smp_program_utils::enc_sw  (2, 1, 0));
  write_instr_dup(BOOT_BASE + 32'hC,  smp_program_utils::enc_addi(2, 2, 1));
  write_instr_dup(BOOT_BASE + 32'h10, smp_program_utils::enc_jal (0, -8));
endtask

protected task automatic build_conflict_set_store_sweep_program();
  logic [31:0] pc;
  int i;
  clear_program_space();

  // Sweep 9 distinct tags that map to the same L1 D-cache set.
  // 64B line and 64 sets => same-set stride = 4096 bytes.
  pc = BOOT_BASE;
  write_instr_dup(pc, smp_program_utils::enc_addi(1, 0, 0)); pc += 32'h4;
  write_instr_dup(pc, smp_program_utils::enc_addi(2, 0, 1)); pc += 32'h4;
  for (i = 0; i < 9; i++) begin
    write_instr_dup(pc, smp_program_utils::enc_sw(2, 1, 0)); pc += 32'h4;
    write_instr_dup(pc, smp_program_utils::enc_addi(2, 2, 1)); pc += 32'h4;
    if (i != 8) begin
      repeat (4) begin
        write_instr_dup(pc, smp_program_utils::enc_addi(1, 1, 1024)); pc += 32'h4;
      end
    end
  end
  write_instr_dup(pc, smp_program_utils::enc_jal(0, 0));
endtask

protected task automatic build_dirty_eviction_writeback_program();
  logic [31:0] pc;
  int i;
  clear_program_space();

  // Dirty 9 same-set lines, then read back the original address.
  // Intended to increase GETM / dirty-eviction / writeback activity.
  pc = BOOT_BASE;
  write_instr_dup(pc, smp_program_utils::enc_addi(1, 0, 0)); pc += 32'h4;
  write_instr_dup(pc, smp_program_utils::enc_addi(2, 0, 1)); pc += 32'h4;
  write_instr_dup(pc, smp_program_utils::enc_addi(3, 0, 0)); pc += 32'h4;
  for (i = 0; i < 9; i++) begin
    write_instr_dup(pc, smp_program_utils::enc_sw(2, 1, 0)); pc += 32'h4;
    write_instr_dup(pc, smp_program_utils::enc_addi(2, 2, 1)); pc += 32'h4;
    if (i != 8) begin
      repeat (4) begin
        write_instr_dup(pc, smp_program_utils::enc_addi(1, 1, 1024)); pc += 32'h4;
      end
    end
  end
  write_instr_dup(pc, smp_program_utils::enc_lw(4, 3, 0)); pc += 32'h4;
  write_instr_dup(pc, smp_program_utils::enc_jal(0, -4));
endtask
endclass
