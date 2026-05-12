# RISC-V SMP RTL — Vivado 2018 Integration README

## Read This First

This RTL project must be used in **Xilinx Vivado 2018**. The uploaded BRAM stubs were generated using **Vivado v2018.2** and target the Xilinx Block Memory Generator IP (`blk_mem_gen_v8_4_1`). For best compatibility, open/build the project using the same Vivado 2018 release family, preferably Vivado 2018.2.

The design is a **dual-core RV64I symmetric multiprocessor (SMP)** with private L1 instruction/data caches, a shared L2 cache, a snoop bus arbiter, and an AXI4-Full adapter for memory integration.

> Important: Each RTL folder already contains its own README file. Read the folder-level README before modifying or integrating that RTL block.

---

## Main Vivado Requirement

Use **Vivado 2018 / Vivado 2018.2** for this project.

Do **not** rely only on generic inferred memory arrays for the cache memories during FPGA synthesis. The cache RAMs must be implemented using **Vivado Block Memory Generator IP** / **BRAM IP**.

The uploaded generated IP stubs show that the design expects these BRAM modules:

| IP Module | Vivado IP | Data Width | Write Enable Width | Address Width | Depth |
|---|---|---:|---:|---:|---:|
| `blk_mem_gen_0` | `blk_mem_gen_v8_4_1` | 512 bits | 64 bits | 6 bits | 64 lines |
| `blk_mem_gen_1` | `blk_mem_gen_v8_4_1` | 512 bits | 64 bits | 11 bits | 2048 lines |

Both IPs use the same simple single-port interface:

```verilog
module blk_mem_gen_X (
    input         clka,
    input         ena,
    input  [63:0] wea,
    input  [...]  addra,
    input  [511:0] dina,
    output [511:0] douta
);
```

`wea[63:0]` means the 512-bit cache line is byte-write-enabled, because 512 bits = 64 bytes.

---

## Repository / RTL Structure

Expected structure:

```text
RTL/
  src/
    RV64I_Core/
      README.md
      rv64i_top.sv
      fetch.sv
      decode.sv
      execute.sv
      memory.sv
      writeback.sv
      ALU.sv
      branch_comp.sv
      imm_gen.sv
      control_logic.sv
      data_hazard_unit.sv
      program_counter.sv
      register_file.sv

    caches_and_snoop_bus/
      README.md
      L1_Icache.sv
      L1_Icache_Controller.sv
      L1_Dcache.sv
      L1_Dcache_Controller.sv
      L2_Cache.sv
      L2_Cache_Controller.sv
      snoop_bus_arbiter.sv

    AXI_adapter/
      README.md
      l2_to_axi4_master.sv
      l2_to_axi4_master_axi_full_wrapper.sv

    Top_Module/
      README.md
      smp_top.sv

  ip/
    blk_mem_gen_0/
    blk_mem_gen_1/
```

The exact folder names may differ, but the important point is that **each RTL folder has its own README**, and those README files describe the local module interfaces and usage notes.

---

## Design Summary

The top-level design is `smp_top`, a dual-core RISC-V SMP system.

High-level architecture:

```text
Core 0                                Core 1
  RV64I Pipeline                        RV64I Pipeline
  L1 I-Cache + L1 D-Cache               L1 I-Cache + L1 D-Cache
          \                              /
           \                            /
            +------ Snoop Bus Arbiter --+
                         |
                    Shared L2 Cache
                         |
                 AXI4-Full Adapter
                         |
                  BRAM / SRAM Backend
```

Main blocks:

| Block | Purpose |
|---|---|
| `rv64i_top` | 5-stage RV64I in-order pipelined processor core |
| `L1_Icache` | Private L1 instruction cache storage |
| `L1_Dcache` | Private L1 data cache storage with MESI support |
| `L2_Cache` | Shared L2 cache storage |
| `snoop_bus_arbiter` | Broadcasts coherence requests and selects data supplier |
| `L2_Cache_Controller` | Handles L2 miss/fill/writeback behavior |
| `l2_to_axi4_master_axi_full_wrapper` | Vivado-friendly AXI4-Full adapter wrapper |
| `smp_top` | Top-level integration of cores, caches, snoop bus, L2, and memory path |

---

## Cache / BRAM IP Instructions

### 1. Use Block Memory Generator for Cache Storage

For cache data arrays, use **Vivado Block Memory Generator** IP. Do not leave cache RAMs as missing black boxes.

Create or import the following IP cores in Vivado:

### `blk_mem_gen_0`

Use this for the smaller 512-bit cache-line memory.

Required settings:

- IP: Block Memory Generator
- Module name: `blk_mem_gen_0`
- Interface type: Native
- Memory type: Single-port RAM
- Data width: 512 bits
- Byte write enable: enabled
- Write enable width: 64 bits
- Address width: 6 bits
- Depth: 64 entries
- Clock: `clka`
- Enable: `ena`
- Write enable: `wea[63:0]`
- Address: `addra[5:0]`
- Data input: `dina[511:0]`
- Data output: `douta[511:0]`

### `blk_mem_gen_1`

Use this for the larger 512-bit cache-line memory.

Required settings:

- IP: Block Memory Generator
- Module name: `blk_mem_gen_1`
- Interface type: Native
- Memory type: Single-port RAM
- Data width: 512 bits
- Byte write enable: enabled
- Write enable width: 64 bits
- Address width: 11 bits
- Depth: 2048 entries
- Clock: `clka`
- Enable: `ena`
- Write enable: `wea[63:0]`
- Address: `addra[10:0]`
- Data input: `dina[511:0]`
- Data output: `douta[511:0]`

### 2. Keep the IP Module Names Unchanged

The RTL expects the exact module names:

```text
blk_mem_gen_0
blk_mem_gen_1
```

Changing the IP names will cause unresolved module errors unless the RTL instances are also updated.

### 3. Add Full IP, Not Only Stub Files

The uploaded `.v` files are synthesis stub declarations. They are useful for showing the expected module ports, but Vivado must also have the actual generated IP files, usually the `.xci` files and the generated output products.

In Vivado:

1. Add the Block Memory Generator IPs to the project.
2. Make sure the IP names match `blk_mem_gen_0` and `blk_mem_gen_1`.
3. Generate output products.
4. Run synthesis only after all IPs are generated correctly.

If Vivado reports `black box`, `unresolved module`, or missing `blk_mem_gen_*`, regenerate the IPs and check that the module names and ports match the stubs.

---

## Vivado Project Setup

Recommended flow:

1. Open **Vivado 2018 / Vivado 2018.2**.
2. Create a new RTL project.
3. Add all SystemVerilog RTL files from `RTL/src/`.
4. Add or regenerate the required Block Memory Generator IPs:
   - `blk_mem_gen_0`
   - `blk_mem_gen_1`
5. Add the AXI wrapper file:
   - `l2_to_axi4_master_axi_full_wrapper.sv`
6. Set the top module to:

```text
smp_top
```

7. Check/reset the target FPGA part according to the project board. The uploaded stubs were generated for:

```text
xc7a100tcsg324-1
```

8. Run elaboration first.
9. Fix any unresolved module/IP issue before synthesis.
10. Run synthesis and implementation.

---

## AXI / Memory Integration Notes

The AXI adapter bridges the L2 cache controller to an AXI4-Full memory interface. For Vivado block design integration, use:

```text
l2_to_axi4_master_axi_full_wrapper.sv
```

This wrapper is preferred in Vivado because it exposes the full AXI4 sideband signals and uses safe default tie-offs for signals such as `LOCK`, `CACHE`, `PROT`, `QOS`, and `REGION`.

If connecting to a Vivado Block Design memory system, use one of these approaches:

- AXI BRAM Controller + Block Memory Generator
- SmartConnect / AXI interconnect + AXI BRAM Controller
- MIG / external memory controller, if targeting DDR memory

For this project, use the **BRAM IP / Block Memory Generator** path unless the supervisor specifically asks for DDR/MIG integration.

---

## Important Notes for the Team

- Use **Vivado 2018**. The uploaded IP stubs were generated using **Vivado 2018.2**.
- The cache memories must use **Vivado Block Memory Generator / BRAM IP**.
- The required BRAM modules are `blk_mem_gen_0` and `blk_mem_gen_1`.
- Do not rename BRAM IP modules unless all RTL instances are updated accordingly.
- Add the actual IP cores or `.xci` files, not only the stub `.v` files.
- Read the README file inside each RTL folder before editing that folder.
- Use `smp_top` as the main top-level integration module.
- Use the AXI full wrapper when connecting the memory path in Vivado.
- Verify that cache line width remains 512 bits across L1, L2, BRAM IP, and AXI adapter interfaces.
- Verify reset polarity: most modules use active-low reset (`rst_n` or `resetn_i`).

---

## Per-Folder README Reminder

Each major RTL folder includes a README file:

| Folder | README Purpose |
|---|---|
| `RV64I_Core/` | Explains the 5-stage RV64I pipeline and core-level interfaces |
| `caches_and_snoop_bus/` | Explains L1/L2 caches, MESI behavior, and snoop bus logic |
| `AXI_adapter/` | Explains the L2-to-AXI4-Full adapter and wrapper usage |
| `Top_Module/` | Explains `smp_top`, hierarchy, cache configuration, and integration |

These README files should be kept with the RTL folders because they help new users understand the design block by block.

---

## Common Vivado Errors and Fixes

### Error: `Module blk_mem_gen_0 not found`

Fix:

- Add or regenerate the `blk_mem_gen_0` Block Memory Generator IP.
- Make sure the module name is exactly `blk_mem_gen_0`.
- Generate output products.

### Error: `Module blk_mem_gen_1 not found`

Fix:

- Add or regenerate the `blk_mem_gen_1` Block Memory Generator IP.
- Make sure the module name is exactly `blk_mem_gen_1`.
- Generate output products.

### Error: BRAM appears as black box after synthesis

Fix:

- The stub was added, but the full IP was not generated or included.
- Add the `.xci` IP file or recreate the IP in Vivado 2018.2.
- Regenerate output products.

### Error: AXI port mismatch

Fix:

- Use `l2_to_axi4_master_axi_full_wrapper.sv` instead of the core-only AXI adapter when integrating with Vivado IP Integrator.
- Check AXI data width. The expected AXI data width is 128 bits for a 512-bit cache line split into 4 beats.

### Error: Cache line width mismatch

Fix:

- Keep cache line width at 512 bits.
- Keep BRAM data width at 512 bits.
- Keep BRAM write-enable width at 64 bits.

---

## Final Instruction

Before running synthesis in Vivado, confirm the following checklist:

- [ ] Vivado 2018 / 2018.2 is being used.
- [ ] `smp_top` is selected as the top module.
- [ ] All RTL source files are added.
- [ ] All per-folder README files are present.
- [ ] `blk_mem_gen_0` IP is generated and included.
- [ ] `blk_mem_gen_1` IP is generated and included.
- [ ] BRAM data width is 512 bits.
- [ ] BRAM write-enable width is 64 bits.
- [ ] AXI wrapper file is included for Vivado integration.
- [ ] No unresolved black boxes remain after elaboration.

