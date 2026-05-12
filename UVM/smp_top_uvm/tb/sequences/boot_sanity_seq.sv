class boot_sanity_seq extends smp_base_seq;
  `uvm_object_utils(boot_sanity_seq)

  function new(string name = "boot_sanity_seq");
    super.new(name);
  endfunction

  task body();
    if (cfg == null)
      `uvm_fatal("NOCFG", "boot_sanity_seq requires cfg")
    build_boot_sanity_program();
    startup_without_roles();
  endtask
endclass
