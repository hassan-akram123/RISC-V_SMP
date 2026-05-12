class reset_recovery_seq extends smp_base_seq;
  `uvm_object_utils(reset_recovery_seq)

  function new(string name = "reset_recovery_seq");
    super.new(name);
  endfunction

  task body();
    if (cfg == null)
      `uvm_fatal("NOCFG", "reset_recovery_seq requires cfg")
    build_boot_sanity_program();
    send_ctrl(CTRL_ASSERT_RESET, .cycles(cfg.reset_cycles));
    send_ctrl(CTRL_RELEASE_RESET);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(200));
    send_ctrl(CTRL_ASSERT_RESET, .cycles(cfg.reset_cycles));
    send_ctrl(CTRL_RELEASE_RESET);
    send_ctrl(CTRL_WAIT_CYCLES, .cycles(cfg.runtime_cycles));
  endtask
endclass
