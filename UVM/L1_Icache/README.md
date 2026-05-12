# L1 Instruction Cache — UVM Verification Environment

## Overview

This directory contains the RTL implementation and UVM testbench for the L1 Instruction Cache (`L1_Icache`) used in the RISC-V Symmetric Multiprocessor project.

The cache is a **32 KB, 8-way set-associative** instruction cache with a dedicated controller that interfaces with the CPU fetch unit on one side and a shared memory bus (arbiter) on the other.

---

## Cache Specifications

| Parameter | Value |
|---|---|
| Capacity | 32 KB |
| Associativity | 8-way set-associative |
| Number of Sets | 64 |
| Cache Line Size | 64 bytes (512 bits) |
| Address Width | 32 bits |
| Instruction Fetch Width | 64 bits |
| Tag bits | `[31:12]` (20 bits) |
| Set index bits | `[11:6]` (6 bits) |
| Byte offset bits | `[5:0]` (6 bits) |
| Replacement Policy | Round-Robin per set |
| BRAM type | Single-port, 1-cycle read latency |

---

## Directory Structure

```
L1_Icache/
├── rtl/
│   ├── L1_Icache.sv              # Cache storage (8x single-port BRAMs + tag/valid arrays)
│   └── L1_Icache_Controller.sv   # Cache controller FSM (miss handling, refill, replay)
├── sv/
│   ├── icache_pkg.sv             # UVM package — includes all UVM components
│   ├── cpu_if.sv                 # CPU-side SystemVerilog interface
│   ├── mem_if.sv                 # Memory bus SystemVerilog interface
│   ├── cpu_seq_item.sv           # CPU request sequence item
│   ├── mem_seq_item.sv           # Memory response sequence item
│   ├── icache_driver.sv          # CPU-side UVM driver
│   ├── mem_responder.sv          # Memory-side reactive responder
│   ├── icache_cpu_monitor.sv     # CPU-side monitor
│   ├── icache_mem_monitor.sv     # Memory-side monitor
│   ├── icache_cpu_sequencer.sv   # CPU sequencer
│   ├── icache_mem_sequencer.sv   # Memory sequencer
│   ├── icache_sequences.sv       # All CPU and memory sequences
│   ├── icache_scoreboard.sv      # Self-checking scoreboard
│   ├── icache_cpu_agent.sv       # CPU UVM agent
│   ├── icache_mem_agent.sv       # Memory UVM agent
│   └── icache_env.sv             # Top-level UVM environment
├── tb/
│   ├── hw_top.sv                 # Hardware top — clk/rst, interfaces, DUT instantiation
│   ├── tb_top.sv                 # Testbench top — UVM run_test entry point
│   ├── icache_subsystem.sv       # DUT wrapper (controller + cache storage)
│   ├── icache_lib_test.sv        # All test classes
│   └── behav_model.sv            # Behavioral reference model
├── run.f                         # Cadence xrun filelist
└── cshrc                         # Environment setup script
```

---

## RTL Architecture

### `L1_Icache`

The cache storage module instantiates one single-port BRAM per way (8 total). Tag and valid arrays are implemented in flip-flops.

**Single-port contract:** `i_lookup_en` and `i_fill_en` must not be asserted simultaneously. If they are, fill takes priority and the lookup is suppressed; `o_lookup_stalled` is asserted to notify the controller.

**Pipelined read (2 cycles):**
- Cycle 0: BRAM address presented, tag/set latched into pipeline registers
- Cycle 1: BRAM data available, parallel tag compare, hit/miss resolved, `i_rdata` valid

### `L1_Icache_Controller`

A 7-state FSM that manages the full miss-handling flow:

```
S_IDLE → S_LOOKUP → S_CHECK ─(hit)──→ S_IDLE
                           └─(miss)──→ S_MISS_REQ → S_MISS_WAIT → S_FILL_WRITE → S_REPLAY → S_CHECK
```

| State | Description |
|---|---|
| `S_IDLE` | Ready to accept new CPU fetch request |
| `S_LOOKUP` | Issues lookup to cache storage |
| `S_CHECK` | Evaluates hit/miss from cache response |
| `S_MISS_REQ` | Sends GET request to memory arbiter |
| `S_MISS_WAIT` | Collects 8 data beats from memory bus; handles NACK/retry |
| `S_FILL_WRITE` | Writes refilled line into cache storage; advances RR pointer |
| `S_REPLAY` | Re-issues lookup after fill to confirm data; transitions to S_CHECK |

Grant NACKs cause a retry from `S_MISS_REQ`. A 10,000-cycle watchdog fires an error if stuck in `S_MISS_WAIT`.

---

## UVM Testbench Architecture

```
tb_top
└── hw_top (clk, rst, interfaces, DUT)
└── uvm_root
    └── icache_env
        ├── icache_cpu_agent  (active)
        │   ├── icache_driver        ← drives cpu_if
        │   ├── icache_cpu_monitor   ← observes cpu_if
        │   └── icache_cpu_sequencer
        ├── icache_mem_agent  (active)
        │   ├── mem_responder        ← drives mem_if reactively
        │   ├── icache_mem_monitor   ← observes mem_if
        │   └── icache_mem_sequencer
        └── icache_scoreboard        ← self-checking
```

The **CPU agent** drives fetch requests and monitors responses. The **memory agent** acts as a reactive responder — it waits for the controller to issue a bus request, then provides the cache line data and grant status. The **scoreboard** cross-checks that every response matches the expected instruction data.

---

## Running Tests

The simulator used is **Cadence xrun**. All tests are run from the `L1_Icache/` directory using the `run.f` filelist.

```bash
xrun -f run.f +UVM_TESTNAME=<test_name> +UVM_VERBOSITY=UVM_LOW
```

### Test Suite

#### Normal Tests

| Test | Description | Status |
|---|---|---|
| `icache_base_test` | Default miss sequence, baseline sanity | Passed |
| `icache_hit_test` | Send same address twice; second must hit | Passed |
| `icache_miss_test` | 5 accesses to different sets; all miss | Passed |
| `icache_sequential_test` | 8 words from same cache line; hits after first miss | Passed |

#### Edge Case Tests

| Test | Description | Status |
|---|---|---|
| `icache_conflict_test` | 9 accesses to same set; exercises round-robin eviction | Passed |
| `icache_nack_test` | Memory NACKs first, then grants; verifies retry path | Passed |
| `icache_delayed_test` | Memory responds with 5–10 cycle delay | Passed |
| `icache_addr_boundary_test` | Addresses at 0x0, max, set 0, set 63 boundaries | Passed |
| `icache_evict_reaccess_test` | Fill all 8 ways, evict way 0, verify re-miss | Passed |
| `icache_hit_miss_alternating_test` | Back-to-back hit/miss transitions | Passed |

#### Stress Tests

| Test | Description | Status |
|---|---|---|
| `icache_random_stress_test` | 200 fully random requests with random nacks and delays | Passed |
| `icache_thrash_test` | 5 rounds × 16 tags in same set; sustained eviction pressure | Passed |
| `icache_full_sweep_test` | Fill all 64 sets, then re-read all for hits | Passed |

---

## Key Design Notes

- **Fill priority over lookup** — the cache suppresses lookups during fills to avoid single-port address clobbering. The controller FSM is designed so fill and lookup are never asserted together; the assertion in the controller (`$error`) catches any violation.
- **Round-robin replacement** — each of the 64 sets maintains a 3-bit pointer incremented on every successful fill.
- **Beat tracking** — the controller uses a per-beat seen bitmap (`beat_seen[7:0]`) and only transitions out of `S_MISS_WAIT` when all 8 beats are confirmed and the grant is OK.
- **Simulation-only checks** — under `` `ifndef SYNTHESIS ``, both RTL modules include `$warning`/`$error` assertions for single-port violations, multi-way hits, invalid fill way indices, and FSM deadlock detection.
