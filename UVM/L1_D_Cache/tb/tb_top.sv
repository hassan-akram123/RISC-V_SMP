module tb_top;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import dcache_pkg::*;

  // Instantiate the hardware wrapper
  hw_top hw_top();

  initial begin
    uvm_config_db#(virtual cpu_if)::set(null, "uvm_test_top.*", "cpu_vif", hw_top.cpu_vif);
    uvm_config_db#(virtual mem_if)::set(null, "uvm_test_top.*", "mem_vif", hw_top.mem_vif);
    run_test();
  end

endmodule : tb_top