// ============================================================
// File: l2_pkg.sv
// Description: Package that bundles all L2 UVM TB classes.
//   Include order matches dcache_pkg exactly:
//     items -> sequencers -> sequences -> drivers/responders
//     -> monitors -> scoreboard -> coverage -> agents -> env -> tests
// ============================================================

package l2_pkg;

    import uvm_pkg::*;
    `include "uvm_macros.svh"

    // --- sequence items ---
    `include "./sv/l2_snoop_seq_item.sv"
    `include "./sv/l2_mem_seq_item.sv"

    // --- sequencers ---
    `include "./sv/l2_snoop_sequencer.sv"
    `include "./sv/l2_mem_sequencer.sv"

    // --- sequences ---
    `include "./sv/l2_sequences.sv"

    // --- drivers / responders ---
    `include "./sv/l2_snoop_driver.sv"
    `include "./sv/l2_mem_responder.sv"

    // --- monitors ---
    `include "./sv/l2_snoop_monitor.sv"
    `include "./sv/l2_mem_monitor.sv"

    // --- scoreboard + coverage ---
    `include "./sv/l2_scoreboard.sv"
    `include "./sv/l2_coverage.sv"

    // --- agents ---
    `include "./sv/l2_snoop_agent.sv"
    `include "./sv/l2_mem_agent.sv"

    // --- environment ---
    `include "./sv/l2_env.sv"

    // --- tests ---
    `include "./tb/l2_lib_test.sv"

endpackage : l2_pkg
