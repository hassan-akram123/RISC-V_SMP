# smp_top — Dual-Core RISC-V SMP Top Module

## Overview

`smp_top` is the top-level SystemVerilog module for a dual-core symmetric multiprocessor (SMP) built around two RV64I cores. It integrates private L1 instruction and data caches per core, a shared snoop bus arbiter, a shared L2 cache, and an AXI4-Full master adapter that connects to an on-chip SRAM backend.

## Architecture

```
┌────────────┐   ┌────────────┐
│  rv64i_top │   │  rv64i_top │   Core 0 & Core 1
│  (core 0)  │   │  (core 1)  │
└─────┬──────┘   └──────┬─────┘
      │ imem/dmem        │ imem/dmem
 ┌────▼────┐        ┌────▼────┐
 │ L1I / D │        │ L1I / D │   Private caches (storage + controller)
 │  (core0)│        │  (core1)│   MESI coherence on D$
 └────┬────┘        └────┬────┘
      └────────┬──────────┘
        ┌──────▼──────┐
        │snoop_bus_arb│           Shared snooping bus arbiter
        └──────┬──────┘
        ┌──────▼──────┐
        │  L2 Cache   │           Shared L2 (storage + controller)
        └──────┬──────┘
     ┌─────────▼──────────┐
     │ l2_to_axi4_master  │       AXI4-Full adapter (512-bit line ↔ 128-bit beats)
     └─────────┬──────────┘
        ┌──────▼──────┐
        │  On-chip    │           Internal SRAM (AXI4-Full slave, 128-bit wide)
        │    SRAM     │
        └─────────────┘
```

## Parameters

| Parameter         | Default | Description                                      |
|-------------------|---------|--------------------------------------------------|
| `MEM_DEPTH_BEATS` | 16384   | SRAM depth in 128-bit beats (2 MB total)         |
| `INIT_HEX`        | `""`    | Path to a `.hex` file loaded via `$readmemh`     |

## Ports

| Port    | Direction | Width | Description              |
|---------|-----------|-------|--------------------------|
| `clk`   | input     | 1     | System clock             |
| `rst_n` | input     | 1     | Active-low synchronous reset |

All sub-modules use active-low reset (`rst_n` / `resetn_i`).

## Sub-module Hierarchy

| Instance         | Module                            | Description                              |
|------------------|-----------------------------------|------------------------------------------|
| `u_core0/1`      | `rv64i_top`                       | RV64I in-order pipeline, cores 0 and 1  |
| `u_l1i0/1`       | `L1_Icache`                       | L1 instruction cache storage             |
| `u_l1i0/1_ctrl`  | `L1_Icache_Controller`            | L1 I$ miss/fill controller               |
| `u_l1d0/1`       | `L1_Dcache`                       | L1 data cache storage (MESI)             |
| `u_l1d0/1_ctrl`  | `L1_Dcache_Controller`            | L1 D$ miss/fill/snoop controller         |
| `u_l2_cache`     | `L2_Cache`                        | Shared L2 cache storage                  |
| `u_l2_ctrl`      | `L2_Cache_Controller`             | Shared L2 miss/fill/snoop controller     |
| `u_arb`          | `snoop_bus_arbiter`               | Shared snooping bus arbiter              |
| `u_l2_axi`       | `l2_to_axi4_master_axi_full_wrapper` | L2 ↔ AXI4-Full bridge (128-bit beats) |

## Cache Configuration

| Level | Sets  | Ways | Line Size | Total Size  |
|-------|-------|------|-----------|-------------|
| L1I   | —     | 8    | 512-bit   | configurable|
| L1D   | 64    | 8    | 512-bit   | configurable|
| L2    | 2048  | 8    | 512-bit   | configurable|

## Coherence Protocol

- L1D caches implement **MESI** (Modified / Exclusive / Shared / Invalid) coherence.
- The `snoop_bus_arbiter` broadcasts requests from any requester (I$, D$) to all peers and L2, collects snoop responses, selects a data supplier, and drives the shared data bus (`bus_dat_*`).
- L2 participates as both a coherence peer (snoop responder/supplier) and as the backing store for L1 misses.

## AXI4-Full Interface

The L2 controller exposes a simple 512-bit line request interface. `l2_to_axi4_master_axi_full_wrapper` serialises this into **128-bit AXI4-Full beats** to the on-chip SRAM slave:

- Address width: 32-bit
- Data width: 128-bit (`AXI_DATA_WIDTH`)
- ID width: 4-bit
- Write/read response handshake always accepted (`mem_rresp_ready`/`mem_bresp_ready` = 1)

## Design Notes

- The SRAM backend is instantiated internally; no external memory port is exposed. For FPGA/ASIC integration, replace the `always_ff` SRAM block and connect real off-chip AXI signals instead.
- `INIT_HEX` lets you pre-load a program into SRAM at simulation time using `$readmemh`.
- Instruction fetch is always requested (`i_req_valid = 1`); the core stalls until `imem_valid_i` asserts.
- When no I$ response is ready, cores receive a NOP (`32'h0000_0013 = addi x0,x0,0`) to keep the pipeline safe.
