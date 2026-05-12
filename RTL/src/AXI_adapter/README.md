# AXI Adapter — L2 Cache to AXI4-Full Master

This module bridges the L2 cache controller in the RISC-V Symmetric Multiprocessor SoC to an AXI4-Full master interface (targeting Xilinx MIG / SmartConnect).

## Files

| File | Description |
|------|-------------|
| `l2_to_axi4_master.sv` | Core adapter module with minimal AXI sideband signals |
| `l2_to_axi4_master_axi_full_wrapper.sv` | Vivado-friendly wrapper that adds all AXI4 sideband signals with safe tie-off defaults |
| `l2_to_axi4_master_OLD.sv` | Previous revision (kept for reference) |

## Overview

The adapter accepts cache-line-granular read/write requests from the L2 controller and issues the corresponding AXI4 INCR burst transactions. A 512-bit cache line is transferred as multiple 128-bit AXI beats (default: 4 beats per burst).

```
L2 Controller                AXI Adapter                  Memory (MIG)
─────────────     ─────────────────────────────────     ──────────────
mem_req   ──►  [ RD/WR Request FIFOs ]
               [ AR issue logic      ] ──► AR channel ──►
               [ R assembly buffers  ] ◄── R  channel ◄──
               [ AW + W state machine] ──► AW+W channel ──►
               [ B capture FIFO      ] ◄── B  channel ◄──
mem_rresp ◄──  [ Read response FIFO  ]
mem_bresp ◄──  [ Write response FIFO ]
```

## Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `ADDR_WIDTH` | 32 | Address width in bits |
| `LINE_WIDTH` | 512 | Cache line width in bits (must match L2 line size) |
| `AXI_DATA_WIDTH` | 128 | AXI data bus width in bits (must match MIG port width) |
| `IDW` | 4 | Request ID width; supports up to 2^IDW outstanding IDs |
| `NUM_RD_OUTSTANDING` | 8 | Maximum simultaneous in-flight read transactions |
| `NUM_WR_OUTSTANDING` | 8 | Maximum simultaneous writes awaiting B response |
| `RD_REQ_FIFO_DEPTH` | 8 | Depth of incoming read request queue |
| `WR_REQ_FIFO_DEPTH` | 8 | Depth of incoming write request queue |
| `RRESP_FIFO_DEPTH` | 8 | Depth of completed read response queue (core only) |
| `BRESP_FIFO_DEPTH` | 8 | Depth of completed write response queue (core only) |

The derived burst length is `LINE_WIDTH / AXI_DATA_WIDTH` beats (e.g. 512 / 128 = 4 beats, AWLEN/ARLEN = 3).

## Interface

### Controller-Side (L2 Cache)

| Signal | Dir | Description |
|--------|-----|-------------|
| `clk` / `aclk` | in | Clock |
| `rst_n` / `aresetn` | in | Active-low synchronous reset |
| `mem_req_valid` | in | Request from L2 is valid |
| `mem_req_ready` | out | Adapter can accept this request |
| `mem_req_rw` | in | `0` = read (refill), `1` = write (writeback) |
| `mem_req_id` | in | Transaction ID tag (`IDW` bits) |
| `mem_req_addr` | in | Line-aligned physical address |
| `mem_req_line` | in | Write data (full cache line, used for writes) |
| `mem_rresp_valid` | out | Read response ready for L2 |
| `mem_rresp_ready` | in | L2 accepts the read response |
| `mem_rresp_id` | out | ID of the completed read |
| `mem_rresp_line` | out | Reassembled 512-bit cache line data |
| `mem_rresp_resp` | out | AXI RRESP status (accumulated over all beats) |
| `mem_bresp_valid` | out | Write response ready for L2 |
| `mem_bresp_ready` | in | L2 accepts the write response |
| `mem_bresp_id` | out | ID of the completed write |
| `mem_bresp_resp` | out | AXI BRESP status |

### AXI4-Full Master

Standard AXI4 channels: AW, W, B, AR, R. The wrapper variant additionally exposes LOCK, CACHE, PROT, QOS, and REGION on both AW and AR channels, tied to safe non-privileged normal-memory defaults (`AWCACHE/ARCACHE = 4'b0011`).

## Internal Design

### FIFOs

Four circular FIFOs decouple the controller from AXI timing:

- **rdq** — incoming read requests `{id, addr}`
- **wrq** — incoming write requests `{id, addr, line}`
- **rrf** — completed read responses `{id, line, resp}`
- **brf** — completed write responses `{id, resp}`

### Read Path

1. AR issue logic pops `rdq` and fires AR beats, subject to `NUM_RD_OUTSTANDING` and a per-ID active-flag guard (prevents ID reuse before the prior transaction completes).
2. Per-ID assembly buffers (`rd_line_buf`, `rd_beat_cnt`, `rd_resp_acc`) accumulate R-channel beats until RLAST.
3. On RLAST, the completed line is pushed into `rrf` and the outstanding counter is decremented.
4. `rrf` is drained to the controller via `mem_rresp_*`.

### Write Path

A 3-state FSM (`W_IDLE → W_AW → W_WDATA`) streams one write at a time on the W channel (required by AXI since W has no ID field):

- **W_IDLE**: picks the next entry from `wrq` when `wr_outstanding < NUM_WR_OUTSTANDING`.
- **W_AW**: drives AWVALID until accepted, then transitions to data phase.
- **W_WDATA**: streams beats one per cycle (or stall if WREADY deasserted), asserts WLAST on the final beat, then returns to W_IDLE without waiting for B.

B responses are captured into `brf` and forwarded to the controller via `mem_bresp_*`.

## Vivado Wrapper Notes

`l2_to_axi4_master_axi_full_wrapper` instantiates the core and:
- Renames `clk/rst_n` → `aclk/aresetn` for AXI naming convention.
- Adds the full complement of AXI4 sideband ports required by Xilinx IP integrator.
- Ties `LOCK=0`, `CACHE=0x3`, `PROT=0`, `QOS=0`, `REGION=0` for normal non-privileged memory access.

Use the wrapper when connecting to Xilinx MIG or SmartConnect in a block design.

## Integration Checklist

- [ ] `LINE_WIDTH` matches L2 cache line size.
- [ ] `AXI_DATA_WIDTH` matches the MIG UI data width.
- [ ] `IDW` is large enough for the number of concurrent L2 miss-status holding registers (MSHRs).
- [ ] `mem_req_addr` is cache-line aligned before being driven to this module.
- [ ] For Vivado block design: use the `_axi_full_wrapper` variant and connect `aclk`/`aresetn` from `proc_sys_reset`.
