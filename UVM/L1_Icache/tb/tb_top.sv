module tb_top;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import icache_pkg::*;

  initial begin
    // pass interfaces to UVM via config_db
    // reference hw_top for interface handles
    uvm_config_db#(virtual cpu_if)::set(null, "uvm_test_top.*", "cpu_vif", hw_top.cpu_vif);

    uvm_config_db#(virtual mem_if)::set(null, "uvm_test_top.*", "mem_vif", hw_top.mem_vif);

    run_test("icache_base_test");
  end

endmodule : tb_top
