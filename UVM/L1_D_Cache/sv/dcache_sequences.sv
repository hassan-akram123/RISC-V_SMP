// ============================================================
// File: dcache_sequences.sv
// ============================================================

// ============================================================
// CPU BASE SEQUENCE
// ============================================================
class dcache_base_seq extends uvm_sequence #(dcache_cpu_seq_item);
  `uvm_object_utils(dcache_base_seq)

  function new(string name = "dcache_base_seq");
    super.new(name);
  endfunction

  task pre_body();
    uvm_phase phase;
`ifdef UVM_VERSION_1_2
    phase = get_starting_phase();
`else
    phase = starting_phase;
`endif
    if (phase != null) begin
      phase.raise_objection(this, get_type_name());
      `uvm_info(get_type_name(), "raise objection", UVM_MEDIUM)
    end
  endtask : pre_body

  task post_body();
    uvm_phase phase;
`ifdef UVM_VERSION_1_2
    phase = get_starting_phase();
`else
    phase = starting_phase;
`endif
    if (phase != null) begin
      phase.drop_objection(this, get_type_name());
      `uvm_info(get_type_name(), "drop objection", UVM_MEDIUM)
    end
  endtask : post_body

endclass : dcache_base_seq

// ============================================================
// MEM BASE SEQUENCE
// ============================================================
class dcache_mem_base_seq extends uvm_sequence #(dcache_mem_seq_item);
  `uvm_object_utils(dcache_mem_base_seq)

  function new(string name = "dcache_mem_base_seq");
    super.new(name);
  endfunction

  task pre_body();
    uvm_phase phase;
`ifdef UVM_VERSION_1_2
    phase = get_starting_phase();
`else
    phase = starting_phase;
`endif
    if (phase != null) begin
      phase.raise_objection(this, get_type_name());
      `uvm_info(get_type_name(), "raise objection", UVM_MEDIUM)
    end
  endtask : pre_body

  task post_body();
    uvm_phase phase;
`ifdef UVM_VERSION_1_2
    phase = get_starting_phase();
`else
    phase = starting_phase;
`endif
    if (phase != null) begin
      phase.drop_objection(this, get_type_name());
      `uvm_info(get_type_name(), "drop objection", UVM_MEDIUM)
    end
  endtask : post_body

endclass : dcache_mem_base_seq

// ============================================================
// CPU SEQUENCES
// ============================================================

// ------------------------------------------------------------
// single load - one load request, verify response
// ------------------------------------------------------------
class dcache_single_load_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_single_load_seq)

  function new(string name = "dcache_single_load_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing single load sequence", UVM_LOW)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { ldst_is_store == 0; })
  endtask : body

endclass : dcache_single_load_seq

// ------------------------------------------------------------
// single store - one store request, verify response
// ------------------------------------------------------------
class dcache_single_store_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_single_store_seq)

  function new(string name = "dcache_single_store_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing single store sequence", UVM_LOW)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { ldst_is_store == 1; })
  endtask : body

endclass : dcache_single_store_seq

// ------------------------------------------------------------
// load hit sequence - load same address twice
// first request = miss, second = hit
// ------------------------------------------------------------
class dcache_load_hit_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_load_hit_seq)

  function new(string name = "dcache_load_hit_seq");
    super.new(name);
  endfunction

  virtual task body();
    dcache_cpu_seq_item first_req;
    `uvm_info(get_type_name(), "Executing load hit sequence", UVM_LOW)

    // first request - cold miss
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { ldst_is_store == 0; })
    first_req = req;

    // second request - same address = hit
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req,
                        {
      ldst_addr     == first_req.ldst_addr;
      ldst_is_store == 0;
    })
  endtask : body

endclass : dcache_load_hit_seq

// ------------------------------------------------------------
// store hit sequence - load then store to same address
// load fills the line, store should hit in E/M state
// ------------------------------------------------------------
class dcache_store_hit_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_store_hit_seq)

  function new(string name = "dcache_store_hit_seq");
    super.new(name);
  endfunction

  virtual task body();
    dcache_cpu_seq_item first_req;
    `uvm_info(get_type_name(), "Executing store hit sequence", UVM_LOW)

    // first - load to bring line into cache
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { ldst_is_store == 0; })
    first_req = req;

    // second - store to same address, should hit
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req,
                        {
      ldst_addr     == first_req.ldst_addr;
      ldst_is_store == 1;
    })
  endtask : body

endclass : dcache_store_hit_seq

// ------------------------------------------------------------
// miss sequence - send addresses to different sets
// forces cache misses every time
// ------------------------------------------------------------
class dcache_miss_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_miss_seq)

  int num_misses = 5;

  function new(string name = "dcache_miss_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), $sformatf("Executing miss sequence with %0d misses", num_misses),
              UVM_LOW)
    repeat (num_misses) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_diff_set.constraint_mode(1);
      `uvm_rand_send(req)
    end
  endtask : body

endclass : dcache_miss_seq

// ------------------------------------------------------------
// conflict sequence - same set different tags
// tests PLRU eviction across all 8 ways
// ------------------------------------------------------------
class dcache_conflict_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_conflict_seq)

  function new(string name = "dcache_conflict_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing conflict sequence", UVM_LOW)

    // 9 requests to same set, different tags
    // fills all 8 ways and triggers one eviction, exercises PLRU
    repeat (9) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(1);
      `uvm_rand_send_with(req, { ldst_is_store == 0; })
    end
  endtask : body

endclass : dcache_conflict_seq

// ------------------------------------------------------------
// dirty eviction sequence - fill a line with a store
// then evict it by accessing a conflicting address
// exercises writeback path (WB request + supply beats)
// ------------------------------------------------------------
class dcache_dirty_evict_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_dirty_evict_seq)

  function new(string name = "dcache_dirty_evict_seq");
    super.new(name);
  endfunction

  virtual task body();
    dcache_cpu_seq_item first_req;
    `uvm_info(get_type_name(), "Executing dirty eviction sequence", UVM_LOW)

    // step 1 - load to bring line in
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { ldst_is_store == 0; })
    first_req = req;

    // step 2 - store to make line dirty (M state)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req,
                        {
      ldst_addr     == first_req.ldst_addr;
      ldst_is_store == 1;
    })

    // step 3 - conflict address to trigger eviction of dirty line
    // fill 8 ways in same set to guarantee eviction
    repeat (8) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(1);
      `uvm_rand_send_with(req, { ldst_is_store == 0; })
    end
  endtask : body

endclass : dcache_dirty_evict_seq

// ------------------------------------------------------------
// upgrade sequence - load in S state then store
// exercises UPGR request path
// ------------------------------------------------------------
class dcache_upgrade_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_upgrade_seq)

  function new(string name = "dcache_upgrade_seq");
    super.new(name);
  endfunction

  virtual task body();
    dcache_cpu_seq_item first_req;
    `uvm_info(get_type_name(), "Executing upgrade sequence", UVM_LOW)

    // load to bring line in (mem responder will grant S state)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { ldst_is_store == 0; })
    first_req = req;

    // store to same address - line is in S so triggers UPGR
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req,
                        {
      ldst_addr     == first_req.ldst_addr;
      ldst_is_store == 1;
    })
  endtask : body

endclass : dcache_upgrade_seq

// ============================================================
// MEM SEQUENCES
//
// FIX: All mem sequences now run forever instead of a fixed
// repeat count.  They are reactive responders that produce
// items on demand whenever the responder driver calls
// get_next_item.  The test's fork/join_any + disable fork
// mechanism cleanly kills them once the CPU sequence finishes.
//
// This prevents sequencer exhaustion (get_next_item blocking
// forever with no items) that caused the simulation to hang.
// ============================================================

// ------------------------------------------------------------
// normal response - happy path
// responds with valid data, gnt_ok=1, E state
// gnt_ok is forced to 1 here - use dcache_nack_seq for nack testing
// ------------------------------------------------------------
class dcache_mem_resp_seq extends dcache_mem_base_seq;
  `uvm_object_utils(dcache_mem_resp_seq)

  function new(string name = "dcache_mem_resp_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing mem response sequence (forever)", UVM_LOW)
    forever begin
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      req.c_snoop_rate.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
        gnt_ok         == 1;       // no nacks in normal path
        gnt_state      == 2'b10;   // E state
        resp_delay inside {[0:2]};
        inject_snoop   == 0;
      })
    end
  endtask : body

endclass : dcache_mem_resp_seq

// ------------------------------------------------------------
// shared state response - grants S state
// forces upgrade path when CPU does a store
// ------------------------------------------------------------
class dcache_mem_shared_resp_seq extends dcache_mem_base_seq;
  `uvm_object_utils(dcache_mem_shared_resp_seq)

  function new(string name = "dcache_mem_shared_resp_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing shared state response sequence (forever)", UVM_LOW)
    forever begin
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      req.c_snoop_rate.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
        gnt_ok       == 1;
        gnt_state    == 2'b01; // S state - forces UPGR on store
        resp_delay inside {[0:2]};
        inject_snoop == 0;
      })
    end
  endtask : body

endclass : dcache_mem_shared_resp_seq

// ------------------------------------------------------------
// delayed response - tests controller patience
// ------------------------------------------------------------
class dcache_delayed_resp_seq extends dcache_mem_base_seq;
  `uvm_object_utils(dcache_delayed_resp_seq)

  function new(string name = "dcache_delayed_resp_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing delayed response sequence (forever)", UVM_LOW)
    forever begin
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      req.c_snoop_rate.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
        gnt_ok       == 1;
        gnt_state    == 2'b10;
        resp_delay inside {[5:10]};
        inject_snoop == 0;
      })
    end
  endtask : body

endclass : dcache_delayed_resp_seq

// ------------------------------------------------------------
// nack then ok - tests retry path
// first response nacks, second grants ok
// ------------------------------------------------------------
class dcache_nack_seq extends dcache_mem_base_seq;
  `uvm_object_utils(dcache_nack_seq)

  function new(string name = "dcache_nack_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing nack sequence (forever)", UVM_LOW)
    forever begin
      // first - nack
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      req.c_snoop_rate.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
        gnt_ok       == 0;
        inject_snoop == 0;
      })

      // second - ok
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      req.c_snoop_rate.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
        gnt_ok       == 1;
        gnt_state    == 2'b10;
        inject_snoop == 0;
      })
    end
  endtask : body

endclass : dcache_nack_seq

// ------------------------------------------------------------
// snoop sequence - injects snoop requests
// tests controller snoop handling path
// ------------------------------------------------------------
class dcache_snoop_seq extends dcache_mem_base_seq;
  `uvm_object_utils(dcache_snoop_seq)

  function new(string name = "dcache_snoop_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing snoop injection sequence (forever)", UVM_LOW)
    forever begin
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      req.c_snoop_rate.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
        gnt_ok       == 1;
        gnt_state    == 2'b10;
        inject_snoop == 1;
        snp_cmd inside {3'b000, 3'b001}; // GETS or GETM
      })
    end
  endtask : body

endclass : dcache_snoop_seq

// ============================================================
// COMPREHENSIVE COVERAGE-CLOSING CPU SEQUENCE
//
// Runs multiple phases to systematically hit all coverage bins:
//   Phase 1: Cold LOAD misses to different sets (safe with S|E grants)
//   Phase 2: Hit traffic to cached lines (load-load, store-store,
//            load-store, store-load transitions)
//   Phase 3: Conflict evictions (same set, different tags)
//   Phase 4: Dirty evictions (store then evict)
//   Phase 5: Random loads + stores to cached lines (wstrb variety)
//
// IMPORTANT: All cold misses use loads (GETS) so the mem responder's
// c_gnt_state constraint can safely grant S or E. Stores are only
// sent to lines already in cache (E or M state), or trigger UPGR
// if the line is in S state. This avoids the protocol violation
// where a GETM gets an S-state grant.
// ============================================================
class dcache_coverage_close_seq extends dcache_base_seq;
  `uvm_object_utils(dcache_coverage_close_seq)

  // tuning knobs
  int num_cold_misses   = 20;
  int num_hit_pairs     = 15;
  int num_conflicts     = 10;
  int num_dirty_evicts  = 5;
  int num_random        = 30;

  function new(string name = "dcache_coverage_close_seq");
    super.new(name);
  endfunction

  virtual task body();
    dcache_cpu_seq_item prev;
    logic [31:0] cached_addrs[$];
    logic [31:0] store_addrs[$];

    // Phase 1: Cold misses with LOADS ONLY.
    // Using loads ensures GETS requests. The mem responder's c_gnt_state
    // will grant S or E (both valid for loads). This avoids the protocol
    // violation where a GETM (store miss) gets an S-state grant because
    // c_gnt_state evaluates req_cmd at randomization time (always GETS).
    `uvm_info(get_type_name(), "=== Phase 1: Cold load misses (spread across sets) ===", UVM_LOW)
    repeat (num_cold_misses) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_diff_set.constraint_mode(1);
      `uvm_rand_send_with(req, { ldst_is_store == 0; })
      cached_addrs.push_back(req.ldst_addr);
    end

    `uvm_info(get_type_name(), "=== Phase 2: Hit traffic (all op transitions) ===", UVM_LOW)
    // load-load, load-store, store-load, store-store on cached lines
    for (int i = 0; i < num_hit_pairs && i < cached_addrs.size(); i++) begin
      logic [31:0] addr;
      addr = cached_addrs[i];

      // load hit
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == addr;
        ldst_is_store == 0;
      })

      // back-to-back load hit (load->load)
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == addr;
        ldst_is_store == 0;
      })

      // store hit (load->store)
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == addr;
        ldst_is_store == 1;
      })

      // another store (store->store)
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == addr;
        ldst_is_store == 1;
      })

      // load after store (store->load)
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == addr;
        ldst_is_store == 0;
      })
    end

    `uvm_info(get_type_name(), "=== Phase 3: Conflict evictions (>8 ways same set) ===", UVM_LOW)
    repeat (num_conflicts) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(1);
      `uvm_rand_send_with(req, { ldst_is_store == 0; })
    end

    `uvm_info(get_type_name(), "=== Phase 4: Dirty evictions ===", UVM_LOW)
    repeat (num_dirty_evicts) begin
      logic [31:0] target_addr;

      // load to fill
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, { ldst_is_store == 0; })
      target_addr = req.ldst_addr;

      // store to dirty it
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == target_addr;
        ldst_is_store == 1;
      })

      // 8 conflicts to evict
      repeat (8) begin
        `uvm_create(req)
        req.c_same_line.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(1);
        `uvm_rand_send_with(req, { ldst_is_store == 0; })
      end
    end

    `uvm_info(get_type_name(), "=== Phase 5: Random loads for wstrb/set coverage ===", UVM_LOW)
    // Use loads for new addresses (safe with any MESI grant)
    // Then store to some of the cached lines for wstrb pattern variety
    repeat (num_random / 2) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, { ldst_is_store == 0; })
      cached_addrs.push_back(req.ldst_addr);
    end

    // Stores to recently-cached lines (already in E or M state)
    // Exercises varied wstrb patterns: single byte, half word, word, full
    for (int i = 0; i < num_random / 2 && cached_addrs.size() > 0; i++) begin
      logic [31:0] addr;
      int idx;
      idx = cached_addrs.size() - 1 - (i % cached_addrs.size());
      addr = cached_addrs[idx];
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, {
        ldst_addr     == addr;
        ldst_is_store == 1;
      })
    end

    `uvm_info(get_type_name(), $sformatf("Coverage-close sequence complete: %0d total transactions",
              num_cold_misses + num_hit_pairs*5 + num_conflicts +
              num_dirty_evicts*10 + num_random), UVM_LOW)
  endtask : body

endclass : dcache_coverage_close_seq

// ============================================================
// MIXED MEM RESPONSE SEQUENCE
//
// Reactive responder that varies grant behaviour to cover
// all mem-side coverage bins while respecting the item's
// built-in constraints (c_gnt_state, c_resp_delay).
//
// Key insight: req_cmd is initialized to GETS (3'b000) at
// randomization time, so c_gnt_state allows S or E for GETS.
// The responder overwrites req_cmd with the real interface
// value AFTER randomization.  We must NOT force gnt_state
// to values that would conflict with c_gnt_state for non-GETS
// commands (e.g. forcing S for a GETM would be illegal).
//
// Coverage strategy:
//   - Vary resp_delay within c_resp_delay bounds [0:3]
//   - Use c_gnt distribution to get 90/10 grant/nack
//   - Use c_snoop_rate for 20% snoop injection
//   - Bias GETS toward S-state (via soft weight, not override)
//     to exercise UPGR path when CPU does store-after-load
// ============================================================
class dcache_mem_mixed_resp_seq extends dcache_mem_base_seq;
  `uvm_object_utils(dcache_mem_mixed_resp_seq)

  function new(string name = "dcache_mem_mixed_resp_seq");
    super.new(name);
  endfunction

  virtual task body();
    int txn_count = 0;
    `uvm_info(get_type_name(), "Executing mixed mem response sequence (forever)", UVM_LOW)
    forever begin
      `uvm_create(req)

      // All built-in constraints remain active:
      //   c_gnt       : 90% grant, 10% nack
      //   c_gnt_state : GETS->S|E, GETM->M, UPGR->M, WB->I
      //   c_resp_delay: [0:3]
      //   c_snoop_rate: 20% snoops

      // Cycle through different delay and snoop profiles
      case (txn_count % 5)
        // Fast response, no snoop - baseline
        0: `uvm_rand_send_with(req, {
             gnt_ok     == 1;
             resp_delay == 0;
             inject_snoop == 0;
           })

        // Let c_gnt_state pick the MESI state naturally.
        // For GETS (req_cmd==000 at rand time), c_gnt_state allows S or E
        // with equal probability, giving ~50% S-state grants on loads.
        // This triggers the UPGR path when Phase 2 stores to S-state lines.
        1: begin
             req.c_snoop_rate.constraint_mode(0);
             `uvm_rand_send_with(req, {
               gnt_ok       == 1;
               resp_delay   == 0;
               inject_snoop == 0;
             })
           end

        // Medium delay, enable snoops
        2: begin
             req.c_snoop_rate.constraint_mode(0);
             `uvm_rand_send_with(req, {
               gnt_ok       == 1;
               resp_delay inside {[2:3]};
               inject_snoop == 1;
               snp_cmd inside {3'b000, 3'b001};
             })
           end

        // Short delay, no snoop
        3: `uvm_rand_send_with(req, {
             gnt_ok     == 1;
             resp_delay inside {[1:2]};
             inject_snoop == 0;
           })

        // Fully random - uses all default constraints
        // This gives 10% nack chance and 20% snoop chance naturally
        4: `uvm_rand_send(req)
      endcase

      txn_count++;
    end
  endtask : body

endclass : dcache_mem_mixed_resp_seq