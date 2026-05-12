class dual_core_fetch_seq extends smp_base_seq;
  `uvm_object_utils(dual_core_fetch_seq)

  function new(string name = "dual_core_fetch_seq");
    super.new(name);
  endfunction

  task body();
    if (cfg == null)
      `uvm_fatal("NOCFG", "dual_core_fetch_seq requires cfg")
    build_dual_core_fetch_program();
    startup_with_roles(64'd0, 64'd1);
  endtask
endclass
