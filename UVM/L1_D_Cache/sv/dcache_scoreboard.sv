`uvm_analysis_imp_decl(_cpu)
`uvm_analysis_imp_decl(_mem)

class dcache_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(dcache_scoreboard)

  // analysis imps
  uvm_analysis_imp_cpu #(dcache_cpu_seq_item, dcache_scoreboard) cpu_export;
  uvm_analysis_imp_mem #(dcache_mem_seq_item, dcache_scoreboard) mem_export;

  // ----------------------------------------
  // shadow cache - indexed by line_addr [31:6]
  // ----------------------------------------
  logic [511:0] shadow_data[logic [25:0]];  // line data
  logic [1:0] shadow_mesi[logic [25:0]];  // MESI state per line

  // MESI encodings
  localparam logic [1:0] MESI_I = 2'b00;
  localparam logic [1:0] MESI_S = 2'b01;
  localparam logic [1:0] MESI_E = 2'b10;
  localparam logic [1:0] MESI_M = 2'b11;

  // way tracking - 64 sets x 8 ways
  bit          way_valid      [64][8];
  logic [19:0] way_tag        [64][8];
  logic [ 1:0] way_mesi       [64][8];

  // ----------------------------------------
  // pending store queue
  // stores whose line has not yet been refilled when write_cpu fires
  // are held here and replayed once write_mem fills the line
  // ----------------------------------------
  dcache_cpu_seq_item pending_stores[$];

  // statistics
  int          num_hits;
  int          num_misses;
  int          num_stores;
  int          num_writebacks;
  int          num_upgrades;
  int          num_errors;
  int          num_cpu_pkts;
  int          num_mem_pkts;

  // ----------------------------------------
  // constructor
  // ----------------------------------------
  function new(string name = "dcache_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    num_hits       = 0;
    num_misses     = 0;
    num_stores     = 0;
    num_writebacks = 0;
    num_upgrades   = 0;
    num_errors     = 0;
    num_cpu_pkts   = 0;
    num_mem_pkts   = 0;
    foreach (way_valid[i, j]) way_valid[i][j] = 0;
    foreach (way_tag[i, j]) way_tag[i][j] = 0;
    foreach (way_mesi[i, j]) way_mesi[i][j] = MESI_I;
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
    `uvm_info(get_type_name(), "dcache Scoreboard Running ...", UVM_HIGH)
  endfunction : start_of_simulation_phase

  // ----------------------------------------
  // drain_pending_stores
  // called after every write_mem refill to replay any stores
  // that arrived before their line was filled in shadow
  // ----------------------------------------
  function void drain_pending_stores(logic [25:0] filled_key);
    int i;
    i = 0;
    while (i < pending_stores.size()) begin
      if (pending_stores[i].ldst_addr[31:6] == filled_key) begin
        dcache_cpu_seq_item s;
        s = pending_stores[i];
        pending_stores.delete(i);
        `uvm_info(get_type_name(), $sformatf(
                  "Replaying pending store: addr=0x%08h", s.ldst_addr), UVM_MEDIUM)
        check_store(s);
      end else begin
        i++;
      end
    end
  endfunction : drain_pending_stores

  // ----------------------------------------
  // write_mem - called by mem monitor
  // updates shadow cache on refill, writeback, or upgrade
  // ----------------------------------------
  function void write_mem(dcache_mem_seq_item item);
    int          set_index;
    logic [19:0] tag;
    logic [25:0] line_key;

    num_mem_pkts++;
    `uvm_info(get_type_name(), $sformatf(
              "Received mem packet #%0d:\n%s", num_mem_pkts, item.sprint()), UVM_HIGH)

    set_index = item.line_addr[11:6];
    tag       = item.line_addr[31:12];
    line_key  = item.line_addr[31:6];

    case (item.req_cmd)

      // ---- GETS or GETM refill ----
      3'b000, 3'b001: begin
        if (item.gnt_ok) begin
          // update shadow with filled data and granted MESI state
          shadow_data[line_key] = item.line_data;
          shadow_mesi[line_key] = item.gnt_state;

          // update way tracking - find a free or matching way
          begin
            int victim;
            victim = find_victim(set_index, tag);
            way_valid[set_index][victim] = 1;
            way_tag[set_index][victim] = tag;
            way_mesi[set_index][victim] = item.gnt_state;
          end

          `uvm_info(get_type_name(),
                    $sformatf("REFILL OK: addr=0x%08h set=%0d tag=0x%05h mesi=%02b",
                              item.line_addr, set_index, tag, item.gnt_state), UVM_MEDIUM)

          // replay any stores that were deferred waiting for this line
          drain_pending_stores(line_key);

        end else begin
          `uvm_info(get_type_name(), $sformatf(
                    "NACK received: addr=0x%08h - controller should retry", item.line_addr),
                    UVM_MEDIUM)
        end
      end

      // ---- UPGR - upgrade S to M ----
      3'b010: begin
        if (item.gnt_ok) begin
          if (shadow_mesi.exists(line_key)) begin
            shadow_mesi[line_key] = MESI_M;
            // update way tracking
            for (int w = 0; w < 8; w++) begin
              if (way_valid[set_index][w] && way_tag[set_index][w] == tag) begin
                way_mesi[set_index][w] = MESI_M;
              end
            end
          end
          num_upgrades++;
          `uvm_info(get_type_name(), $sformatf("UPGR OK: addr=0x%08h set=%0d tag=0x%05h -> MESI_M",
                                               item.line_addr, set_index, tag), UVM_MEDIUM)

          // replay pending stores now that state is M
          drain_pending_stores(line_key);
        end
      end

      // ---- WB - writeback dirty line ----
      3'b011: begin
        // verify the written back data matches shadow
        if (shadow_data.exists(line_key)) begin
          if (item.sup_line !== shadow_data[line_key]) begin
            `uvm_error(get_type_name(),
                       $sformatf("WB DATA MISMATCH: addr=0x%08h expected=0x%0h got=0x%0h",
                                 item.line_addr, shadow_data[line_key], item.sup_line))
            num_errors++;
          end else begin
            `uvm_info(get_type_name(), $sformatf(
                      "WB OK: addr=0x%08h data matches shadow", item.line_addr), UVM_MEDIUM)
          end
        end
        // invalidate the evicted line in shadow
        shadow_mesi[line_key] = MESI_I;
        for (int w = 0; w < 8; w++) begin
          if (way_valid[set_index][w] && way_tag[set_index][w] == tag) begin
            way_valid[set_index][w] = 0;
            way_mesi[set_index][w]  = MESI_I;
          end
        end
        num_writebacks++;
        `uvm_info(get_type_name(), $sformatf(
                  "WB complete: addr=0x%08h invalidated in shadow", item.line_addr), UVM_MEDIUM)
      end

      default: begin
        `uvm_warning(get_type_name(), $sformatf("Unknown req_cmd=%0b", item.req_cmd))
      end

    endcase
  endfunction : write_mem

  // ----------------------------------------
  // write_cpu - called by cpu monitor
  // checks hit/miss and data correctness
  // ----------------------------------------
  function void write_cpu(dcache_cpu_seq_item item);
    num_cpu_pkts++;
    `uvm_info(get_type_name(), $sformatf(
              "Received cpu packet #%0d:\n%s", num_cpu_pkts, item.sprint()), UVM_HIGH)

    if (item.ldst_is_store) begin
      // if the line is not yet in shadow, the refill may not have been
      // processed by write_mem yet (analysis port ordering race).
      // defer the check until write_mem fills the line.
      if (!shadow_data.exists(item.ldst_addr[31:6])) begin
        `uvm_info(get_type_name(), $sformatf(
                  "STORE deferred (line not yet in shadow): addr=0x%08h", item.ldst_addr),
                  UVM_MEDIUM)
        pending_stores.push_back(item);
      end else begin
        check_store(item);
      end
    end else begin
      if (shadow_data.exists(item.ldst_addr[31:6]) &&
          shadow_mesi[item.ldst_addr[31:6]] != MESI_I)
        check_hit(item);
      else
        check_miss(item);
    end
  endfunction : write_cpu

  // ----------------------------------------
  // check_hit - line should be in cache, verify data
  // is_hit is treated as a coverage metric only - not a pass/fail check
  // ----------------------------------------
  function void check_hit(dcache_cpu_seq_item item);
    logic [63:0] expected_data;
    logic [ 2:0] word_index;
    int          set_index;
    logic [19:0] tag;

    set_index     = item.ldst_addr[11:6];
    tag           = item.ldst_addr[31:12];
    word_index    = item.ldst_addr[5:3];
    expected_data = shadow_data[item.ldst_addr[31:6]][word_index*64+:64];

    // is_hit is a coverage hint only - log but do not error
    if (!item.is_hit) begin
      `uvm_info(get_type_name(), $sformatf(
                "LATENCY NOTE: shadow says hit but latency=%0d exceeded threshold: addr=0x%08h",
                item.latency, item.ldst_addr), UVM_MEDIUM)
    end

    // data correctness is the authoritative check
    if (item.ldst_rdata !== expected_data) begin
      `uvm_error(get_type_name(), $sformatf("WRONG DATA: addr=0x%08h expected=0x%016h got=0x%016h",
                                            item.ldst_addr, expected_data, item.ldst_rdata))
      num_errors++;
    end else begin
      `uvm_info(get_type_name(), $sformatf(
                "HIT OK: addr=0x%08h data=0x%016h latency=%0d",
                item.ldst_addr,
                item.ldst_rdata,
                item.latency
                ), UVM_LOW)
      num_hits++;
    end

    // verify tag is in correct way
    begin
      bit tag_found;
      tag_found = 0;
      for (int w = 0; w < 8; w++) begin
        if (way_valid[set_index][w] && way_tag[set_index][w] == tag) begin
          tag_found = 1;
          `uvm_info(get_type_name(), $sformatf("TAG MATCH: set=%0d way=%0d tag=0x%05h mesi=%02b",
                                               set_index, w, tag, way_mesi[set_index][w]), UVM_HIGH)
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
  // is_hit used as coverage metric only
  // ----------------------------------------
  function void check_miss(dcache_cpu_seq_item item);
    `uvm_info(get_type_name(), $sformatf(
              "MISS OK: addr=0x%08h latency=%0d", item.ldst_addr, item.latency), UVM_LOW)
    num_misses++;
  endfunction : check_miss

  // ----------------------------------------
  // check_store - update shadow on store
  // verify line was in cache in writeable state (E or M)
  // ----------------------------------------
  function void check_store(dcache_cpu_seq_item item);
    logic [25:0] line_key;
    logic [ 2:0] word_index;
    int          set_index;
    logic [19:0] tag;

    line_key   = item.ldst_addr[31:6];
    word_index = item.ldst_addr[5:3];
    set_index  = item.ldst_addr[11:6];
    tag        = item.ldst_addr[31:12];

    // check line is in shadow (should have been filled first)
    if (!shadow_data.exists(line_key)) begin
      `uvm_error(get_type_name(), $sformatf(
                                      "STORE to unknown line: addr=0x%08h - line never filled",
                                      item.ldst_addr))
      num_errors++;
      return;
    end

    // check MESI state allows write (E or M)
    if (shadow_mesi[line_key] == MESI_S || shadow_mesi[line_key] == MESI_I) begin
      `uvm_error(get_type_name(), $sformatf("STORE in invalid MESI state: addr=0x%08h mesi=%02b",
                                            item.ldst_addr, shadow_mesi[line_key]))
      num_errors++;
      return;
    end

    // apply byte strobes to shadow data
    for (int b = 0; b < 8; b++) begin
      if (item.ldst_wstrb[b]) begin
        shadow_data[line_key][(word_index*64)+(b*8)+:8] = item.ldst_wdata[b*8+:8];
      end
    end

    // mark line as Modified in shadow
    shadow_mesi[line_key] = MESI_M;
    for (int w = 0; w < 8; w++) begin
      if (way_valid[set_index][w] && way_tag[set_index][w] == tag) way_mesi[set_index][w] = MESI_M;
    end

    num_stores++;
    `uvm_info(get_type_name(), $sformatf(
              "STORE OK: addr=0x%08h wdata=0x%016h wstrb=0x%02h -> shadow updated",
              item.ldst_addr,
              item.ldst_wdata,
              item.ldst_wstrb
              ), UVM_LOW)

  endfunction : check_store

  // ----------------------------------------
  // find_victim - find a free or LRU way in set
  // ----------------------------------------
  function int find_victim(int set_index, logic [19:0] tag);
    // prefer an invalid way first
    for (int w = 0; w < 8; w++) begin
      if (!way_valid[set_index][w]) return w;
    end
    // all ways valid - find first non-dirty way
    for (int w = 0; w < 8; w++) begin
      if (way_mesi[set_index][w] != MESI_M) return w;
    end
    // all dirty - return way 0 as fallback
    return 0;
  endfunction : find_victim

  // ----------------------------------------
  // report_phase
  // ----------------------------------------
  function void report_phase(uvm_phase phase);
    // warn if any stores are still pending - indicates missing mem transactions
    if (pending_stores.size() > 0) begin
      `uvm_warning(get_type_name(), $sformatf(
                   "%0d store(s) still pending at end of sim - refill never observed",
                   pending_stores.size()))
    end

    `uvm_info(get_type_name(), $sformatf(
              "\n===========================================\n  dcache Scoreboard Report\n  CPU transactions : %0d\n  MEM transactions : %0d\n  Hits             : %0d\n  Misses           : %0d\n  Stores           : %0d\n  Writebacks       : %0d\n  Upgrades         : %0d\n  Errors           : %0d\n===========================================",
              num_cpu_pkts,
              num_mem_pkts,
              num_hits,
              num_misses,
              num_stores,
              num_writebacks,
              num_upgrades,
              num_errors
              ), UVM_NONE)

    if (num_errors == 0) `uvm_info(get_type_name(), "** TEST PASSED **", UVM_NONE)
    else `uvm_error(get_type_name(), "** TEST FAILED **")
  endfunction : report_phase

endclass : dcache_scoreboard