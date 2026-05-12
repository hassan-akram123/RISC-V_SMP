class shared_line_contention_seq extends smp_base_seq;
  `uvm_object_utils(shared_line_contention_seq)

  function new(string name = "shared_line_contention_seq");
    super.new(name);
  endfunction

  task body();
    if (cfg == null)
      `uvm_fatal("NOCFG", "shared_line_contention_seq requires cfg")
    build_shared_line_contention_program();
    startup_with_roles(64'd0, 64'd1);
  endtask
endclass
