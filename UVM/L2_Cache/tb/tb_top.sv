// ============================================================
// File: tb_top.sv
// Description: UVM testbench top for L2 cache.
//   Passes the single l2_snoop_if handle to all UVM components
//   via config_db under both "snoop_vif" and "mem_vif" keys so
//   the snoop driver, mem responder, and both monitors all
//   find the interface correctly.
// ============================================================

module tb_top;

    import uvm_pkg::*;
    `include "uvm_macros.svh"
    import l2_pkg::*;

    initial begin
        // Pass snoop interface to all UVM components
        // Both snoop agent and mem agent retrieve via "snoop_vif"
        // since both sides of the DUT are on the same l2_snoop_if
        uvm_config_db#(virtual l2_snoop_if)::set(
            null, "uvm_test_top.*", "snoop_vif", hw_top.snoop_vif);

        run_test();
    end

endmodule : tb_top