class reset_idle_seq extends base_seq;
  `uvm_object_utils(reset_idle_seq)

  function new(string name = "reset_idle_seq");
    super.new(name);
  endfunction

  task body();
    // Intentionally empty. This sequence is used by reset_idle_test,
    // which simply keeps the DUT idle after reset and checks that
    // no request/data/grant activity appears unexpectedly.
  endtask
endclass
