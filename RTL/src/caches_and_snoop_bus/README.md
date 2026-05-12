# RISC-V Symmetric Multiprocessor (SMP)

A dual-core RISC-V SMP design implemented in SystemVerilog, featuring a MESI cache coherence protocol, UVM verification environments, and gem5 simulation scripts.

## Architecture

```
Core 0                          Core 1
  RV64I Pipeline                  RV64I Pipeline
  L1 I-Cache  L1 D-Cache          L1 I-Cache  L1 D-Cache
       |            |                   |            |
       +------------+-------------------+------------+
                         Snoop Bus Arbiter
                              |
                          Shared L2 Cache
                              |
                        AXI4-Full Adapter
                              |
                           Main SRAM
```

- **CPU:** 5-stage RV64I pipeline (fetch, decode, execute, memory, writeback)
- **L1 Caches:** Private instruction and data caches per core
- **L2 Cache:** Shared unified cache
- **Snoop Bus Arbiter:** Round-robin arbitration with MESI coherence (GETS, GETM, UPGR, WB); 8-beat cache-line data forwarding; one-cycle grant completion
- **Memory Interface:** AXI4-Full master adapter connecting L2 to on-chip SRAM

## Repository Structure

```
RTL/
  src/
    RV64I_Core/              # 5-stage pipeline core + RISCV-DV regression
    caches_and_snoop_bus/    # L1 I/D caches, L2 cache, snoop bus arbiter
    AXI_adapter/             # L2-to-AXI4 master bridge
    Top_Module/              # smp_top.sv — top-level integration
  waves/                     # VCD and PNG waveform captures

UVM/
  L1_Icache/                 # UVM testbench for L1 instruction cache
  L1_D_Cache/                # UVM testbench for L1 data cache
  L2_Cache/                  # UVM testbench for shared L2 cache
  snoop_bus_arbiter_uvm/     # Multi-phase UVM TB for snoop bus arbiter
  smp_top_uvm/               # Full SMP integration UVM testbench

GEM5/                        # gem5 Python configs for MESI protocol simulation
```

## Snoop Bus Arbiter — Development Phases

| Step | Description |
|------|-------------|
| 1 | Port/wiring contract — skeleton with full port list |
| 2 | Round-robin arbitration + one-cycle request broadcast |
| 3 | Snoop ACK wait — stalls until all snoopers (L1D0, L1D1, L2) acknowledge |
| 4 | Data supplier selection — picks D0, D1, or L2 based on `has_data` |
| 5 | Cache-line data forwarding — streams 8 beats from selected supplier |
| 6 | Completion/grant — one-cycle grant pulse with MESI state to requester |

## UVM Regression (SMP Top)

From `UVM/smp_top_uvm/tb/run/` in Questa:

```tcl
do run_bringup_regression.do
do run_foundation_regression.do
do run_coherence_writer_reader_regression.do
do run_full_regression.do
# or all at once:
do run_all_in_one_regression.do
```

Coverage results are merged into `tb/run/coverage_results/`.

## gem5 Simulation

```bash
gem5/build/RISCV/gem5.opt GEM5/MESI_Two_Level.py
```
