// ============================================================
// File: l2_coverage.sv
// Description: Functional coverage collector for the L2 testbench.


`uvm_analysis_imp_decl(_snoop_cov)
`uvm_analysis_imp_decl(_mem_cov)

class l2_coverage extends uvm_component;
    `uvm_component_utils(l2_coverage)

    // analysis imports - one per monitor
    uvm_analysis_imp_snoop_cov #(l2_snoop_seq_item, l2_coverage) snoop_export;
    uvm_analysis_imp_mem_cov   #(l2_mem_seq_item,   l2_coverage) mem_export;

    // transaction handles for sampling
    l2_snoop_seq_item snoop_txn;
    l2_mem_seq_item   mem_txn;

    // tracking state for transition coverage
    bit               prev_was_hit;
    logic [2:0]       prev_cmd;
    logic [10:0]      prev_set_index;   // 11-bit set
    bit               had_prev_snoop;

    // computed before each sample - avoids function calls inside coverpoints
    logic [1:0]       mesi_after_snoop;
    logic [1:0]       mesi_before_snoop;  // prev MESI state before this snoop

    // MESI state tracking per line key
    logic [1:0] line_prev_mesi [logic [25:0]];

    // ============================================================
    // SNOOP BUS COVERGROUP
    // ============================================================
    covergroup cg_snoop_txn;
        option.per_instance     = 1;
        option.name             = "cg_snoop_txn";
        type_option.merge_instances = 1;

        // --- command type ---
        cp_cmd : coverpoint snoop_txn.bus_req_cmd {
            bins GETS = {3'b000};
            bins GETM = {3'b001};
            bins UPGR = {3'b010};
            bins WB   = {3'b011};
        }

        // --- hit / miss ---
        cp_hit_miss : coverpoint snoop_txn.l2_snp_hit {
            bins miss = {0};
            bins hit  = {1};
        }

        // --- has_data flag ---
        cp_has_data : coverpoint snoop_txn.l2_snp_has_data {
            bins no_data   = {0};
            bins has_data  = {1};
        }

        // --- snoop response latency buckets ---
        cp_latency : coverpoint snoop_txn.snp_latency {
            bins lat_fast   = {[1:5]};
            bins lat_med    = {[6:15]};
            bins lat_slow   = {[16:50]};
            bins lat_xslow  = {[51:200]};
        }

        // --- set index (11-bit = 2048 sets, binned into thirds) ---
        cp_set_index : coverpoint snoop_txn.bus_req_addr[16:6] {
            bins low_sets  = {[0:682]};
            bins mid_sets  = {[683:1364]};
            bins high_sets = {[1365:2047]};
        }

        // --- requestor source ID ---
        cp_src : coverpoint snoop_txn.bus_req_src {
            bins src0 = {2'b00};
            bins src1 = {2'b01};
        }

        // --- back-to-back command transitions ---
        cp_cmd_transition : coverpoint {prev_cmd, snoop_txn.bus_req_cmd}
                                        iff (had_prev_snoop) {
            bins gets_gets = {6'b000_000};
            bins gets_getm = {6'b000_001};
            bins gets_upgr = {6'b000_010};
            bins gets_wb   = {6'b000_011};
            bins getm_gets = {6'b001_000};
            bins getm_getm = {6'b001_001};
            bins wb_gets   = {6'b011_000};
            bins wb_getm   = {6'b011_001};
        }

        // --- same set as previous (conflict indicator) ---
        cp_same_set : coverpoint (snoop_txn.bus_req_addr[16:6] == prev_set_index)
                                  iff (had_prev_snoop) {
            bins diff_set = {0};
            bins same_set = {1};
        }

        // ---- CROSSES ----
        cx_cmd_x_hit      : cross cp_cmd, cp_hit_miss;
        cx_cmd_x_has_data : cross cp_cmd, cp_has_data;
        cx_cmd_x_lat      : cross cp_cmd, cp_latency;
        cx_hit_x_set      : cross cp_hit_miss, cp_set_index;
        cx_cmd_x_src      : cross cp_cmd, cp_src;

    endgroup : cg_snoop_txn

    // ============================================================
    // MEMORY BUS COVERGROUP
    // ============================================================
    covergroup cg_mem_txn;
        option.per_instance     = 1;
        option.name             = "cg_mem_txn";
        type_option.merge_instances = 1;

        // --- read vs write ---
        cp_rw : coverpoint mem_txn.req_rw {
            bins fill_read  = {0};
            bins dram_write = {1};
        }

        // --- fill latency (reads only) ---
        cp_fill_latency : coverpoint mem_txn.fill_latency iff (!mem_txn.req_rw) {
            bins lat_fast = {[1:3]};
            bins lat_med  = {[4:6]};
            bins lat_slow = {[7:$]};
        }

        // --- set index of memory request (11-bit, 2048 sets) ---
        cp_mem_set : coverpoint mem_txn.req_addr[16:6] {
            bins low_sets  = {[0:682]};
            bins mid_sets  = {[683:1364]};
            bins high_sets = {[1365:2047]};
        }

        // crosses
        cx_rw_x_latency : cross cp_rw, cp_fill_latency;
        cx_rw_x_set     : cross cp_rw, cp_mem_set;

    endgroup : cg_mem_txn

    // ============================================================
    // MESI STATE TRANSITION COVERGROUP
    // Tracks per-line MESI transitions as observed through
    // snoop and fill events.
    // ============================================================
    covergroup cg_mesi_transition;
        option.per_instance     = 1;
        option.name             = "cg_mesi_transition";
        type_option.merge_instances = 1;

        cp_mesi_from : coverpoint mesi_before_snoop {
            bins I = {2'b00};
            bins S = {2'b01};
            bins E = {2'b10};
            bins M = {2'b11};
        }

        // State after the snoop (inferred from cmd + hit)
        cp_mesi_to : coverpoint mesi_after_snoop {
            bins I = {2'b00};
            bins S = {2'b01};
            bins E = {2'b10};
            bins M = {2'b11};
        }

        cx_mesi_transition : cross cp_mesi_from, cp_mesi_to {
            // S->S self transition excluded (not meaningful)
            ignore_bins s_to_s = binsof(cp_mesi_from.S) && binsof(cp_mesi_to.S);
            // M->S not valid in L2 (would writeback first)
            ignore_bins m_to_s = binsof(cp_mesi_from.M) && binsof(cp_mesi_to.S);
        }

    endgroup : cg_mesi_transition

    // ============================================================
    // Constructor - covergroups MUST be instantiated here (Xcelium
    // rule: embedded covergroup new() only allowed in new())
    // ============================================================
    function new(string name = "l2_coverage", uvm_component parent = null);
        super.new(name, parent);
        cg_snoop_txn       = new();
        cg_mem_txn         = new();
        cg_mesi_transition = new();
        had_prev_snoop     = 0;
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        // Give covergroup instances a unique hierarchical name so
        // Xcelium registers them in the correct scope (fixes COVNSM)
        cg_snoop_txn.set_inst_name({get_full_name(), ".cg_snoop_txn"});
        cg_mem_txn.set_inst_name({get_full_name(), ".cg_mem_txn"});
        cg_mesi_transition.set_inst_name({get_full_name(), ".cg_mesi_transition"});
        snoop_export = new("snoop_export", this);
        mem_export   = new("mem_export",   this);
    endfunction : build_phase

    // ============================================================
    // write_snoop_cov - sample snoop covergroups
    // ============================================================
    function void write_snoop_cov(l2_snoop_seq_item item);
        logic [25:0] line_key;
        snoop_txn        = item;
        line_key         = item.bus_req_addr[31:6];
        mesi_after_snoop = get_resulting_mesi(item);  // pre-compute for coverpoint

        if (!line_prev_mesi.exists(line_key))
            line_prev_mesi[line_key] = 2'b00;   // start from I

        mesi_before_snoop = line_prev_mesi[line_key]; // pre-compute for coverpoint

        cg_snoop_txn.sample();
        cg_mesi_transition.sample();

        // Update tracked MESI
        line_prev_mesi[line_key] = mesi_after_snoop;

        // Update transition tracking
        prev_cmd       = item.bus_req_cmd;
        prev_was_hit   = item.l2_snp_hit;
        prev_set_index = item.bus_req_addr[16:6];
        had_prev_snoop = 1;
    endfunction : write_snoop_cov

    // ============================================================
    // write_mem_cov - sample memory covergroup
    // ============================================================
    function void write_mem_cov(l2_mem_seq_item item);
        mem_txn = item;
        cg_mem_txn.sample();
    endfunction : write_mem_cov

    // ============================================================
    // Helper: infer resulting MESI state in L2 after a snoop
    // ============================================================
    function automatic logic [1:0] get_resulting_mesi(l2_snoop_seq_item item);
        case (item.bus_req_cmd)
            3'b000: return (item.l2_snp_hit) ? 2'b01 : 2'b00; // GETS: hit->S, miss->I
            3'b001: return 2'b00;                               // GETM: L2 always invalidates
            3'b010: return 2'b00;                               // UPGR: L2 invalidates S copy
            3'b011: return 2'b11;                               // WB:   L2 fills M state
            default: return 2'b00;
        endcase
    endfunction : get_resulting_mesi

    // ============================================================
    // report_phase
    // ============================================================
    function void report_phase(uvm_phase phase);
        real snoop_cov, mem_cov, mesi_cov, overall_cov;
        snoop_cov   = cg_snoop_txn.get_coverage();
        mem_cov     = cg_mem_txn.get_coverage();
        mesi_cov    = cg_mesi_transition.get_coverage();
        overall_cov = (snoop_cov + mem_cov + mesi_cov) / 3.0;

        `uvm_info(get_type_name(), $sformatf(
            {"\n===========================================\n",
             "  L2 Cache Coverage Report\n",
             "  Snoop bus coverage : %0.2f%%\n",
             "  Memory bus coverage: %0.2f%%\n",
             "  MESI transition cov: %0.2f%%\n",
             "  Overall            : %0.2f%%\n",
             "==========================================="},
            snoop_cov, mem_cov, mesi_cov, overall_cov
        ), UVM_NONE)
    endfunction : report_phase

endclass : l2_coverage