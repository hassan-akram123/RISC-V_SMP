`uvm_analysis_imp_decl(_cpu)
`uvm_analysis_imp_decl(_mem)

class icache_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(icache_scoreboard)

  // analysis imps
  uvm_analysis_imp_cpu #(icache_cpu_seq_item, icache_scoreboard) cpu_export;
  uvm_analysis_imp_mem #(icache_mem_seq_item, icache_scoreboard) mem_export;

  // shadow cache - indexed by tag+set [31:6]
  logic [511:0] shadow_cache[logic [25:0]];

  // round robin pointer per set - 64 sets
  int rr_ptr[64];

  // which way is valid per set - 64 sets x 8 ways
  bit way_valid[64][8];

  // what tag is in each way per set
  logic [19:0] way_tag[64][8];

  // statistics
  int num_hits;
  int num_misses;
  int num_errors;
  int num_cpu_pkts;
  int num_mem_pkts;

  // ----------------------------------------
  // constructor
  // ----------------------------------------
  function new(string name = "icache_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    num_hits     = 0;
    num_misses   = 0;
    num_errors   = 0;
    num_cpu_pkts = 0;
    num_mem_pkts = 0;
    // initialize rr pointers and valid bits
    foreach (rr_ptr[i]) rr_ptr[i] = 0;
    foreach (way_valid[i, j]) way_valid[i][j] = 0;
    foreach (way_tag[i, j]) way_tag[i][j] = 0;
  endfunction : new

  // ----------------------------------------
  // build_phase
  // ----------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_export = new("cpu_export", this);
    mem_export = new("mem_export", this);
  endfunction : build_phase

  // ----------------------------------------
  // start_of_simulation_phase
  // ----------------------------------------
  function void start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "iCache Scoreboard Running ...", UVM_HIGH)
  endfunction : start_of_simulation_phase

  // ----------------------------------------
  // write_mem - called by mem monitor
  // updates shadow cache + rr pointer on refill
  // ----------------------------------------
  function void write_mem(icache_mem_seq_item item);
    int set_index;
    int victim_way;
    logic [19:0] tag;

    num_mem_pkts++;
    `uvm_info(get_type_name(), $sformatf(
              "Received mem packet #%0d:\n%s", num_mem_pkts, item.sprint()), UVM_HIGH)

    if (item.gnt_ok) begin
      set_index                          = item.line_addr[11:6];  // 6 set bits
      tag                                = item.line_addr[31:12];  // 20 tag bits
      victim_way                         = rr_ptr[set_index];  // current rr pointer = victim

      // update shadow cache
      shadow_cache[item.line_addr[31:6]] = item.line_data;

      // update way tracking
      way_valid[set_index][victim_way]   = 1;
      way_tag[set_index][victim_way]     = tag;

      `uvm_info(get_type_name(), $sformatf("REFILL OK: addr=0x%08h set=%0d way=%0d tag=0x%05h",
                                           item.line_addr, set_index, victim_way, tag), UVM_MEDIUM)

      // advance round robin pointer
      rr_ptr[set_index] = (rr_ptr[set_index] + 1) % 8;

      `uvm_info(get_type_name(), $sformatf("RR ptr for set %0d now points to way %0d", set_index,
                                           rr_ptr[set_index]), UVM_HIGH)
    end else begin
      `uvm_info(get_type_name(), $sformatf(
                "NACK received: addr=0x%08h - controller should retry", item.line_addr), UVM_MEDIUM)
    end
  endfunction : write_mem

  // ----------------------------------------
  // write_cpu - called by cpu monitor
  // checks hit/miss and data correctness
  // ----------------------------------------
  function void write_cpu(icache_cpu_seq_item item);
    num_cpu_pkts++;
    `uvm_info(get_type_name(), $sformatf(
              "Received cpu packet #%0d:\n%s", num_cpu_pkts, item.sprint()), UVM_HIGH)

    // Use is_hit (latency-based) as the primary decision, not shadow_cache.exists().
    // shadow_cache can already contain the line that was just refilled by this
    // very miss transaction - write_mem fires before write_cpu. Routing solely
    // by shadow_cache.exists() causes false "MISS when HIT expected" errors.
    if (item.is_hit) begin
      if (shadow_cache.exists(item.req_addr[31:6]))
        check_hit(item);
      else begin
        `uvm_error(get_type_name(), $sformatf(
          "HIT reported but line not in shadow cache: addr=0x%08h", item.req_addr))
        num_errors++;
      end
    end else
      check_miss(item);

  endfunction : write_cpu

  // ----------------------------------------
  // check_hit - line should be in cache
  // ----------------------------------------
  function void check_hit(icache_cpu_seq_item item);
    logic [63:0] expected_data;
    logic [ 2:0] word_index;
    int          set_index;
    logic [19:0] tag;

    set_index     = item.req_addr[11:6];
    tag           = item.req_addr[31:12];
    word_index    = item.req_addr[5:3];
    expected_data = shadow_cache[item.req_addr[31:6]][word_index*64+:64];

    // check 1 - latency says hit?
    if (!item.is_hit) begin
      `uvm_error(get_type_name(), $sformatf("MISS when HIT expected: addr=0x%08h latency=%0d",
                                            item.req_addr, item.latency))
      num_errors++;
    end

    // check 2 - data correct?
    if (item.resp_data !== expected_data) begin
      `uvm_error(get_type_name(), $sformatf("WRONG DATA: addr=0x%08h expected=0x%016h got=0x%016h",
                                            item.req_addr, expected_data, item.resp_data))
      num_errors++;
    end else begin
      `uvm_info(get_type_name(), $sformatf(
                "HIT OK: addr=0x%08h data=0x%016h latency=%0d",
                item.req_addr,
                item.resp_data,
                item.latency
                ), UVM_LOW)
      num_hits++;
    end

    // check 3 - verify tag is in correct way
    begin
      bit tag_found;
      tag_found = 0;
      for (int w = 0; w < 8; w++) begin
        if (way_valid[set_index][w] && way_tag[set_index][w] == tag) begin
          tag_found = 1;
          `uvm_info(get_type_name(), $sformatf("TAG MATCH: set=%0d way=%0d tag=0x%05h", set_index,
                                               w, tag), UVM_HIGH)
        end
      end
      if (!tag_found) begin
        `uvm_error(get_type_name(), $sformatf("TAG NOT FOUND in any way: set=%0d tag=0x%05h",
                                              set_index, tag))
        num_errors++;
      end
    end
  endfunction : check_hit

  // ----------------------------------------
  // check_miss - line should NOT be in cache
  // ----------------------------------------
  function void check_miss(icache_cpu_seq_item item);
    if (item.is_hit) begin
      `uvm_error(get_type_name(), $sformatf("HIT when MISS expected: addr=0x%08h latency=%0d",
                                            item.req_addr, item.latency))
      num_errors++;
    end else begin
      `uvm_info(get_type_name(), $sformatf(
                "MISS OK: addr=0x%08h latency=%0d", item.req_addr, item.latency), UVM_LOW)
      num_misses++;
    end
  endfunction : check_miss

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), $sformatf(
              "\n===========================================\n  iCache Scoreboard Report\n  CPU transactions : %0d\n  MEM transactions : %0d\n  Hits             : %0d\n  Misses           : %0d\n  Errors           : %0d\n===========================================",
              num_cpu_pkts,
              num_mem_pkts,
              num_hits,
              num_misses,
              num_errors
              ), UVM_NONE)

    if (num_errors == 0) `uvm_info(get_type_name(), "** TEST PASSED **", UVM_NONE)
    else `uvm_error(get_type_name(), "** TEST FAILED **")
  endfunction : report_phase

endclass : icache_scoreboard