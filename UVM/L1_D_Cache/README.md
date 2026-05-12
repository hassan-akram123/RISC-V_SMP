# L1 Data Cache — UVM Verification Environment

UVM testbench for the L1 Data Cache subsystem of the RISC-V Symmetric Multiprocessor project.

---

## Overview

This environment verifies a 32 KB, 8-way set-associative L1 Data Cache with a MESI coherence protocol controller. The DUT consists of two RTL modules:

| Module | Description |
|---|---|
| `L1_Dcache` | Storage array — 64 sets × 8 ways × 64 B lines, BRAM-backed with 1-cycle read latency |
| `L1_Dcache_Controller` | FSM controller — handles CPU requests, cache misses, MESI state transitions, snoop responses, and writeback |

The controller interfaces with a snoop bus arbiter and models participation in a multi-core coherence fabric.

---

## Cache Architecture

```
Address [31:0]
  [31:12] — Tag   (20 bits)
  [11:6]  — Set   (6 bits  → 64 sets)
  [5:0]   — Byte offset (6 bits → 64 B line)

Organization: 64 sets × 8 ways × 512-bit line = 32 KB
Replacement:  Tree-PLRU (7-bit state per set)
Data width:   64-bit CPU interface, 512-bit cache line
```

### MESI States

| Encoding | State | Meaning |
|---|---|---|
| `2'b00` | I (Invalid) | Line not present |
| `2'b01` | S (Shared) | Clean, may exist in other caches |
| `2'b10` | E (Exclusive) | Clean, only copy |
| `2'b11` | M (Modified) | Dirty, only copy |

---

## Controller FSM

The controller implements a 25-state FSM covering:

- **Hit path** — load hit (1 cycle), store hit in E/M (commit), store hit in S (upgrade request)
- **Miss path** — PLRU victim selection, victim metadata/line read, optional writeback, GET request, data fill, reflow lookup
- **Upgrade path** — `UPGR` request to bus, grant wait, `E→M` transition, store commit
- **Snoop path** — incoming `GETS`/`GETM` handling, line read, respond, optional data supply, state update

### Bus Commands

| Encoding | Command | Description |
|---|---|---|
| `3'b000` | `GETS` | Get Shared (load miss) |
| `3'b001` | `GETM` | Get Modified (store miss) |
| `3'b010` | `UPGR` | Upgrade S→M |
| `3'b011` | `WB`   | Writeback dirty eviction |

---

## Directory Structure

```
L1_D_Cache/
├── rtl/
│   ├── L1_Dcache.sv            — Cache storage array
│   └── L1_Dcache_Controller.sv — Coherence controller FSM
├── sv/
│   ├── dcache_pkg.sv           — Package that includes all UVM components
│   ├── cpu_if.sv               — CPU-side interface
│   ├── mem_if.sv               — Memory/bus-side interface
│   ├── cpu_seq_item.sv         — CPU transaction item
│   ├── mem_seq_item.sv         — Memory response item
│   ├── dcache_cpu_sequencer.sv
│   ├── dcache_mem_sequencer.sv
│   ├── dcache_cpu_driver.sv    — Drives CPU interface
│   ├── dcache_mem_responder.sv — Reactive memory-side responder
│   ├── dcache_cpu_monitor.sv
│   ├── dcache_mem_monitor.sv
│   ├── dcache_scoreboard.sv    — Checks data correctness
│   ├── dcache_coverage.sv      — Functional coverage collector
│   ├── dcache_cpu_agent.sv
│   ├── dcache_mem_agent.sv
│   ├── dcache_env.sv           — Top-level UVM environment
│   └── dcache_sequences.sv     — All CPU and memory sequences
└── tb/
    ├── hw_top.sv               — Hardware wrapper (DUT instantiation)
    ├── tb_top.sv               — UVM testbench top
    ├── dcache_subsystem.sv     — DUT subsystem wrapper
    ├── behav_model.sv          — Behavioural reference model
    └── dcache_lib_test.sv      — Test library
```

---

## UVM Environment

```
tb_top
└── hw_top (DUT + interfaces)
uvm_test_top (dcache_*_test)
└── dcache_env
    ├── dcache_cpu_agent
    │   ├── dcache_cpu_sequencer
    │   ├── dcache_cpu_driver     → cpu_if
    │   └── dcache_cpu_monitor    → cpu_if
    ├── dcache_mem_agent
    │   ├── dcache_mem_sequencer
    │   ├── dcache_mem_responder  → mem_if
    │   └── dcache_mem_monitor    → mem_if
    ├── dcache_scoreboard
    └── dcache_coverage
```

The memory agent is a **reactive responder** — it runs a `forever` loop producing grant/data responses on demand. The CPU sequence drives a finite number of transactions, and `fork/join_any` + `disable fork` cleans up the mem side once the CPU sequence completes.

---

## Test Sequences

### CPU Sequences

| Sequence | Description |
|---|---|
| `dcache_single_load_seq` | One random load (cold miss) |
| `dcache_single_store_seq` | One random store (cold miss) |
| `dcache_load_hit_seq` | Load same address twice — first miss, second hit |
| `dcache_store_hit_seq` | Load then store to same address — exercises E/M hit |
| `dcache_miss_seq` | N loads to different sets — forces misses every time |
| `dcache_conflict_seq` | 9 loads to same set — fills all 8 ways, triggers PLRU eviction |
| `dcache_dirty_evict_seq` | Load → store (dirty) → 8 conflicts → writeback eviction |
| `dcache_upgrade_seq` | Load (S grant) then store — exercises UPGR path |
| `dcache_coverage_close_seq` | Comprehensive multi-phase sequence targeting all coverage bins |

### Memory Response Sequences

| Sequence | Description |
|---|---|
| `dcache_mem_resp_seq` | Happy path — `gnt_ok=1`, E state, 0–2 cycle delay |
| `dcache_mem_shared_resp_seq` | S-state grants — forces UPGR on subsequent stores |
| `dcache_delayed_resp_seq` | 5–10 cycle delays — tests controller patience |
| `dcache_nack_seq` | Alternates nack then ok — tests retry path |
| `dcache_snoop_seq` | Injects GETS/GETM snoops — tests snoop handling |
| `dcache_mem_mixed_resp_seq` | Varied delays, 10% nack, 20% snoops — coverage-driven |

### Coverage-Close Test Phases

The `dcache_coverage_close_seq` runs five phases:

1. **Cold load misses** — 20 loads spread across different sets (GETS only, safe with S/E grants)
2. **Hit traffic** — 15 address pairs exercising all op transitions (LL, LS, SL, SS)
3. **Conflict evictions** — 10 same-set conflict loads, stresses PLRU across all 8 ways
4. **Dirty evictions** — 5 load→store→8-conflict sequences, exercises writeback path
5. **Random loads + stores** — 30 additional transactions for wstrb and set coverage

---

## Functional Coverage

Coverage is collected in `dcache_coverage.sv` via two covergroups:

**`cg_cpu_txn`** (CPU-side):
- Operation type: load / store
- Hit/miss outcome
- Latency: fast (1–5 cycles) / slow (6–200 cycles)
- Op-to-op transition: LL / LS / SL / SS
- Cross: op type × hit/miss

**`cg_mem_txn`** (bus-side):
- Grant outcome: ok / nack
- Granted MESI state: I / S / E / M
- Snoop injection
- Response delay bins

---

## Running the Simulation

The simulator is Cadence Xcelium (`xrun`). The filelist is `run.f`.

```bash
# Default test (dcache_coverage_close_test)
xrun -f run.f

# Override test name
xrun -f run.f +UVM_TESTNAME=<test_name>

# Available tests (defined in dcache_lib_test.sv):
#   dcache_single_load_test
#   dcache_single_store_test
#   dcache_load_hit_test
#   dcache_store_hit_test
#   dcache_miss_test
#   dcache_conflict_test
#   dcache_dirty_evict_test
#   dcache_upgrade_test
#   dcache_coverage_close_test   ← default in run.f
```

Coverage is enabled for all runs (`-coverage all`). Reports are accumulated under the `xcelium.d` database; use `imc` to view results.

---

## Parameters

| Parameter | Default | Description |
|---|---|---|
| `ADDR_WIDTH` | 32 | Address width in bits |
| `CORE_DATA_WIDTH` | 64 | CPU data bus width in bits |
| `SET_BITS_LEN` | 6 | Number of set index bits (64 sets) |
| `TAG_BITS_LEN` | 20 | Number of tag bits |
| `NO_OF_WAYS` | 8 | Cache associativity |
| `SRC_ID` | 0 | Core ID used in bus transactions |

---

## Dependencies

- Cadence Xcelium (xrun) with UVM 1.1 or 1.2
- `blk_mem_gen_0` BRAM primitive (Xilinx IP or behavioral stub in `behav_model.sv`)
