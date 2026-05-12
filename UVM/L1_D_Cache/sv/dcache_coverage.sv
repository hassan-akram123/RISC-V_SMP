// ============================================================
// File: dcache_coverage.sv
// ============================================================

`uvm_analysis_imp_decl(_cpu_cov)
`uvm_analysis_imp_decl(_mem_cov)

class dcache_coverage extends uvm_subscriber #(dcache_cpu_seq_item);
  `uvm_component_utils(dcache_coverage)

  uvm_analysis_imp_cpu_cov #(dcache_cpu_seq_item, dcache_coverage) cpu_export;
  uvm_analysis_imp_mem_cov #(dcache_mem_seq_item, dcache_coverage) mem_export;

  dcache_cpu_seq_item cpu_txn;
  dcache_mem_seq_item mem_txn;

  bit prev_is_store;
  bit had_prev_cpu_txn;

  // ============================================================
  // CPU COVERGROUP
  // ============================================================
  covergroup cg_cpu_txn;
    option.per_instance = 1;
    option.name         = "cg_cpu_txn";

    cp_op_type : coverpoint cpu_txn.ldst_is_store {
      bins load  = {0};
      bins store = {1};
    }

    cp_hit_miss : coverpoint cpu_txn.is_hit {
      bins miss = {0};
      bins hit  = {1};
    }

    cp_latency : coverpoint cpu_txn.latency {
      bins fast = {[1:5]};
      bins slow = {[6:200]};
    }

    cp_op_transition : coverpoint {prev_is_store, cpu_txn.ldst_is_store}
                                  iff (had_prev_cpu_txn) {
      bins load_load    = {2'b00};
      bins load_store   = {2'b01};
      bins store_load   = {2'b10};
      bins store_store  = {2'b11};
    }

    cx_op_x_hit : cross cp_op_type, cp_hit_miss;

  endgroup : cg_cpu_txn

  // ============================================================
  // MEM BUS COVERGROUP
  // ============================================================
  covergroup cg_mem_txn;
    option.per_instance = 1;
    option.name         = "cg_mem_txn";

    cp_gnt_ok : coverpoint mem_txn.gnt_ok {
      bins nack  = {0};
      bins grant = {1};
    }

  endgroup : cg_mem_txn

  // ============================================================
  // MESI COVERGROUP
  // ============================================================
  logic [1:0] line_prev_mesi[logic [25:0]];

  covergroup cg_mesi_transition;
    option.per_instance = 1;
    option.name         = "cg_mesi_transition";

    cp_mesi_from : coverpoint line_prev_mesi[mem_txn.line_addr[31:6]] {
      bins I     = {2'b00};
      bins not_I = {2'b01, 2'b10, 2'b11};
    }

    cp_mesi_to : coverpoint mem_txn.gnt_state iff (mem_txn.gnt_ok) {
      bins shared_or_excl = {2'b01, 2'b10};
      bins modified       = {2'b11};
    }

  endgroup : cg_mesi_transition

  function new(string name = "dcache_coverage", uvm_component parent = null);
    super.new(name, parent);
    cg_cpu_txn         = new();
    cg_mem_txn         = new();
    cg_mesi_transition = new();
    had_prev_cpu_txn   = 0;
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_export = new("cpu_export", this);
    mem_export = new("mem_export", this);
  endfunction : build_phase

  function void write(dcache_cpu_seq_item t);
  endfunction

  function void write_cpu_cov(dcache_cpu_seq_item item);
    cpu_txn = item;
    cg_cpu_txn.sample();
    prev_is_store    = item.ldst_is_store;
    had_prev_cpu_txn = 1;
  endfunction : write_cpu_cov

  function void write_mem_cov(dcache_mem_seq_item item);
    logic [25:0] line_key;
    mem_txn  = item;
    line_key = item.line_addr[31:6];
    if (!line_prev_mesi.exists(line_key))
      line_prev_mesi[line_key] = 2'b00;
    cg_mem_txn.sample();
    if (item.gnt_ok)
      cg_mesi_transition.sample();
    if (item.gnt_ok)
      line_prev_mesi[line_key] = item.gnt_state;
    else if (item.req_cmd == 3'b011)
      line_prev_mesi[line_key] = 2'b00;
  endfunction : write_mem_cov

  function void report_phase(uvm_phase phase);
    real cpu_cov, mem_cov, mesi_cov, overall_cov;
    cpu_cov     = cg_cpu_txn.get_inst_coverage();
    mem_cov     = cg_mem_txn.get_inst_coverage();
    mesi_cov    = cg_mesi_transition.get_inst_coverage();
    overall_cov = (cpu_cov + mem_cov + mesi_cov) / 3.0;
    `uvm_info(get_type_name(),
      $sformatf(
        {"\n===========================================\n",
         "  dcache Coverage Report\n",
         "  CPU transaction cov  : %0.2f%%\n",
         "  MEM transaction cov  : %0.2f%%\n",
         "  MESI transition cov  : %0.2f%%\n",
         "  Overall              : %0.2f%%\n",
         "==========================================="},
        cpu_cov, mem_cov, mesi_cov, overall_cov
      ),
      UVM_NONE
    );
  endfunction : report_phase

endclass : dcache_coverage