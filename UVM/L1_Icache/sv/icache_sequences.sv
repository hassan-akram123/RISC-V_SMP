// ============================================================
// File: icache_sequences.sv
// ============================================================

// ============================================================
// CPU BASE SEQUENCE
// ============================================================
class icache_base_seq extends uvm_sequence #(icache_cpu_seq_item);
  `uvm_object_utils(icache_base_seq)

  function new(string name = "icache_base_seq");
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

endclass : icache_base_seq

// ============================================================
// MEM BASE SEQUENCE
// ============================================================
// NOTE: Reactive (responder) sequences do NOT raise/drop objections.
//       The CPU stimulus sequence owns the test lifetime. The mem
//       sequence simply serves requests until the objection is
//       dropped and the phase ends.
class icache_mem_base_seq extends uvm_sequence #(icache_mem_seq_item);
  `uvm_object_utils(icache_mem_base_seq)

  function new(string name = "icache_mem_base_seq");
    super.new(name);
  endfunction

endclass : icache_mem_base_seq

// ============================================================
// CPU SEQUENCES - NORMAL
// ============================================================

// ------------------------------------------------------------
// single fetch - one request, verify response
// ------------------------------------------------------------
class icache_single_fetch_seq extends icache_base_seq;
  `uvm_object_utils(icache_single_fetch_seq)

  function new(string name = "icache_single_fetch_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing single fetch sequence", UVM_LOW)
    `uvm_do(req)
  endtask : body

endclass : icache_single_fetch_seq

// ------------------------------------------------------------
// hit sequence - send same address twice
// first request = miss, second = hit
// ------------------------------------------------------------
class icache_hit_seq extends icache_base_seq;
  `uvm_object_utils(icache_hit_seq)

  function new(string name = "icache_hit_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item first_req;
    bit [31:0] saved_addr;
    `uvm_info(get_type_name(), "Executing hit sequence", UVM_LOW)

    // first request - cold miss
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send(req)
    first_req  = req;
    saved_addr = req.req_addr;

    // second request - same address = guaranteed hit
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    req.c_range.constraint_mode(0);
    req.c_align.constraint_mode(0);
    req.prev_addr = saved_addr;
    req.req_addr  = saved_addr;
    `uvm_send(req)
  endtask : body

endclass : icache_hit_seq

// ------------------------------------------------------------
// miss sequence - send addresses to different sets
// forces cache misses every time
// ------------------------------------------------------------
class icache_miss_seq extends icache_base_seq;
  `uvm_object_utils(icache_miss_seq)

  int num_misses = 5;

  function new(string name = "icache_miss_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item prev_item;

    `uvm_info(get_type_name(), $sformatf("Executing miss sequence with %0d misses", num_misses),
              UVM_LOW)

    repeat (num_misses) begin
      `uvm_create(req)
      if (prev_item != null) req.prev_addr = prev_item.req_addr;
      req.c_same_line.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_diff_set.constraint_mode(1);
      `uvm_rand_send(req)
      prev_item = req;
    end
  endtask : body

endclass : icache_miss_seq

// ------------------------------------------------------------
// conflict sequence - same set different tags
// tests round robin eviction
// ------------------------------------------------------------
class icache_conflict_seq extends icache_base_seq;
  `uvm_object_utils(icache_conflict_seq)

  function new(string name = "icache_conflict_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item prev_item;

    `uvm_info(get_type_name(), "Executing conflict sequence", UVM_LOW)

    // send 9 requests to same set different tags
    // forces eviction of all 8 ways
    repeat (9) begin
      `uvm_create(req)
      if (prev_item != null) req.prev_addr = prev_item.req_addr;
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(1);
      `uvm_rand_send(req)
      prev_item = req;
    end
  endtask : body

endclass : icache_conflict_seq

// ------------------------------------------------------------
// sequential fetch - multiple addresses same cache line
// after first miss all should hit
// ------------------------------------------------------------
class icache_sequential_fetch_seq extends icache_base_seq;
  `uvm_object_utils(icache_sequential_fetch_seq)

  function new(string name = "icache_sequential_fetch_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item first_req;
    bit [31:0] saved_addr;
    `uvm_info(get_type_name(), "Executing sequential fetch sequence", UVM_LOW)

    // first fetch - miss
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send(req)
    first_req  = req;
    saved_addr = req.req_addr;

    // next 7 fetches - same cache line different words
    // all should hit after refill
    repeat (7) begin
      `uvm_create(req)
      req.prev_addr = saved_addr;
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_range.constraint_mode(0);
      `uvm_rand_send_with(req,
                          {
              req_addr[31:6] == saved_addr[31:6];
              req_addr[5:3]  != saved_addr[5:3];
          })
    end
  endtask : body

endclass : icache_sequential_fetch_seq

// ============================================================
// CPU SEQUENCES - EDGE CASES
// ============================================================

// ------------------------------------------------------------
// address boundary sequence - test aligned boundary addresses
// hits address 0x0, max address, and set/tag boundaries
// ------------------------------------------------------------
class icache_addr_boundary_seq extends icache_base_seq;
  `uvm_object_utils(icache_addr_boundary_seq)

  function new(string name = "icache_addr_boundary_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing address boundary sequence", UVM_LOW)

    // request 1: address 0x00000000 (lowest valid)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    req.c_range.constraint_mode(0);
    `uvm_rand_send_with(req, { req_addr == 32'h0000_0000; })

    // request 2: address 0x0001_FFF8 (highest aligned in range)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    req.c_range.constraint_mode(0);
    `uvm_rand_send_with(req, { req_addr == 32'h0001_FFF8; })

    // request 3: set 0 boundary (set bits [11:6] = 0)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { req_addr[11:6] == 6'h00; })

    // request 4: set 63 boundary (set bits [11:6] = max)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send_with(req, { req_addr[11:6] == 6'h3F; })

    // request 5: re-read address 0 for a hit
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    req.c_range.constraint_mode(0);
    `uvm_rand_send_with(req, { req_addr == 32'h0000_0000; })
  endtask : body

endclass : icache_addr_boundary_seq

// ------------------------------------------------------------
// evict and re-access sequence - fill all 8 ways in a set,
// evict way 0 with a 9th tag, then re-access the evicted line
// to confirm it misses and the new line is fetched correctly
// ------------------------------------------------------------
class icache_evict_reaccess_seq extends icache_base_seq;
  `uvm_object_utils(icache_evict_reaccess_seq)

  function new(string name = "icache_evict_reaccess_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item prev_item;
    bit [31:0] first_addr;  // way 0 address - will be evicted

    `uvm_info(get_type_name(), "Executing evict-and-reaccess sequence", UVM_LOW)

    // fill all 8 ways in the same set (conflict constraint)
    repeat (8) begin
      `uvm_create(req)
      if (prev_item != null) req.prev_addr = prev_item.req_addr;
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(prev_item != null);
      `uvm_rand_send(req)
      if (prev_item == null) first_addr = req.req_addr;  // save way 0 addr
      prev_item = req;
    end

    // 9th request - same set different tag -> evicts way 0 (round robin)
    `uvm_create(req)
    req.prev_addr = prev_item.req_addr;
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(1);
    `uvm_rand_send(req)

    // re-access way 0's address -> must miss (was evicted)
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    req.c_range.constraint_mode(0);
    req.c_align.constraint_mode(0);
    req.req_addr = first_addr;
    `uvm_send(req)
  endtask : body

endclass : icache_evict_reaccess_seq

// ------------------------------------------------------------
// back-to-back hit-miss-hit sequence
// alternates between cached and uncached addresses to test
// pipeline transitions between hit and miss paths
// ------------------------------------------------------------
class icache_hit_miss_alternating_seq extends icache_base_seq;
  `uvm_object_utils(icache_hit_miss_alternating_seq)

  function new(string name = "icache_hit_miss_alternating_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item prev_item;
    bit [31:0] cached_addr;

    `uvm_info(get_type_name(), "Executing hit-miss alternating sequence", UVM_LOW)

    // first request - cold miss, this gets cached
    `uvm_create(req)
    req.c_same_line.constraint_mode(0);
    req.c_diff_set.constraint_mode(0);
    req.c_conflict.constraint_mode(0);
    `uvm_rand_send(req)
    cached_addr = req.req_addr;
    prev_item   = req;

    // alternate: hit (same addr) -> miss (new set) -> hit -> miss ...
    repeat (4) begin
      // hit - re-read cached address
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_range.constraint_mode(0);
      req.c_align.constraint_mode(0);
      req.req_addr = cached_addr;
      `uvm_send(req)

      // miss - new set
      `uvm_create(req)
      req.prev_addr = prev_item.req_addr;
      req.c_same_line.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_diff_set.constraint_mode(1);
      `uvm_rand_send(req)
      prev_item = req;
    end
  endtask : body

endclass : icache_hit_miss_alternating_seq

// ============================================================
// CPU SEQUENCES - STRESS
// ============================================================

// ------------------------------------------------------------
// random stress sequence - large number of fully random
// requests generating unpredictable mix of hits and misses
// ------------------------------------------------------------
class icache_random_stress_seq extends icache_base_seq;
  `uvm_object_utils(icache_random_stress_seq)

  int num_requests = 200;

  function new(string name = "icache_random_stress_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), $sformatf("Executing random stress sequence with %0d requests",
                                         num_requests), UVM_LOW)

    repeat (num_requests) begin
      `uvm_create(req)
      // disable all address relationship constraints - pure random
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send(req)
    end
  endtask : body

endclass : icache_random_stress_seq

// ------------------------------------------------------------
// thrashing stress sequence - repeatedly evict and refill
// the same set, stressing replacement logic under sustained
// pressure. Cycles through 16 different tags in one set.
// ------------------------------------------------------------
class icache_thrash_seq extends icache_base_seq;
  `uvm_object_utils(icache_thrash_seq)

  int num_rounds = 5;  // how many times to cycle through 16 tags

  function new(string name = "icache_thrash_seq");
    super.new(name);
  endfunction

  virtual task body();
    icache_cpu_seq_item prev_item;

    `uvm_info(get_type_name(), $sformatf(
              "Executing thrash sequence: %0d rounds x 16 tags", num_rounds), UVM_LOW)

    repeat (num_rounds) begin
      repeat (16) begin
        `uvm_create(req)
        if (prev_item != null) req.prev_addr = prev_item.req_addr;
        req.c_same_line.constraint_mode(0);
        req.c_diff_set.constraint_mode(0);
        req.c_conflict.constraint_mode(prev_item != null);
        `uvm_rand_send(req)
        prev_item = req;
      end
    end
  endtask : body

endclass : icache_thrash_seq

// ------------------------------------------------------------
// full cache sweep - fill every set (64 sets) with at least
// one line, then re-read them all to verify hits across the
// entire cache
// ------------------------------------------------------------
class icache_full_sweep_seq extends icache_base_seq;
  `uvm_object_utils(icache_full_sweep_seq)

  function new(string name = "icache_full_sweep_seq");
    super.new(name);
  endfunction

  virtual task body();
    // store first address that landed in each set
    bit [31:0] set_addr[64];

    `uvm_info(get_type_name(), "Executing full cache sweep sequence", UVM_LOW)

    // phase 1: fill all 64 sets - one miss per set
    for (int i = 0; i < 64; i++) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      `uvm_rand_send_with(req, { req_addr[11:6] == i[5:0]; })
      set_addr[i] = req.req_addr;
    end

    `uvm_info(get_type_name(), "Phase 1 done: all 64 sets filled. Starting hit sweep.", UVM_LOW)

    // phase 2: re-read every set - all should be hits
    for (int i = 0; i < 64; i++) begin
      `uvm_create(req)
      req.c_same_line.constraint_mode(0);
      req.c_diff_set.constraint_mode(0);
      req.c_conflict.constraint_mode(0);
      req.c_range.constraint_mode(0);
      req.c_align.constraint_mode(0);
      req.req_addr = set_addr[i];
      `uvm_send(req)
    end

    `uvm_info(get_type_name(), "Phase 2 done: hit sweep complete.", UVM_LOW)
  endtask : body

endclass : icache_full_sweep_seq

// ============================================================
// MEM SEQUENCES
// ============================================================

// ------------------------------------------------------------
// normal response - happy path
// responds with valid data and gnt_ok=1
// ------------------------------------------------------------
class icache_mem_resp_seq extends icache_mem_base_seq;
  `uvm_object_utils(icache_mem_resp_seq)

  function new(string name = "icache_mem_resp_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing mem response sequence (forever)", UVM_LOW)

    forever begin
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      if (!req.randomize() with { gnt_ok == 1; resp_delay inside {[1:3]}; })
        `uvm_fatal(get_type_name(), "Randomization failed for mem resp item")
      `uvm_send(req)
    end
  endtask : body

endclass : icache_mem_resp_seq

// ------------------------------------------------------------
// delayed response - tests controller patience
// ------------------------------------------------------------
class icache_delayed_resp_seq extends icache_mem_base_seq;
  `uvm_object_utils(icache_delayed_resp_seq)

  function new(string name = "icache_delayed_resp_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing delayed response sequence (forever)", UVM_LOW)

    forever begin
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      if (!req.randomize() with { gnt_ok == 1; resp_delay inside {[5:10]}; })
        `uvm_fatal(get_type_name(), "Randomization failed for delayed resp item")
      `uvm_send(req)
    end
  endtask : body

endclass : icache_delayed_resp_seq

// ------------------------------------------------------------
// nack then ok - tests retry path
// first response nacks, second grants ok
// ------------------------------------------------------------
class icache_nack_seq extends icache_mem_base_seq;
  `uvm_object_utils(icache_nack_seq)

  function new(string name = "icache_nack_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing nack sequence (forever)", UVM_LOW)

    forever begin
      // first - nack
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      if (!req.randomize() with { gnt_ok == 0; })
        `uvm_fatal(get_type_name(), "Randomization failed for nack item")
      `uvm_send(req)

      // second - ok
      `uvm_create(req)
      req.c_gnt.constraint_mode(0);
      if (!req.randomize() with { gnt_ok == 1; })
        `uvm_fatal(get_type_name(), "Randomization failed for ok item")
      `uvm_send(req)
    end
  endtask : body

endclass : icache_nack_seq

// ------------------------------------------------------------
// random delay + random nack mem sequence - for stress tests
// mixes nacks and variable delays unpredictably
// ------------------------------------------------------------
class icache_mem_stress_seq extends icache_mem_base_seq;
  `uvm_object_utils(icache_mem_stress_seq)

  function new(string name = "icache_mem_stress_seq");
    super.new(name);
  endfunction

  virtual task body();
    `uvm_info(get_type_name(), "Executing mem stress sequence (forever)", UVM_LOW)

    forever begin
      `uvm_create(req)
      // use default constraints: gnt_ok 90/10 distribution, delay 1-10
      if (!req.randomize())
        `uvm_fatal(get_type_name(), "Randomization failed for stress item")
      `uvm_send(req)
    end
  endtask : body

endclass : icache_mem_stress_seq