# RV64I Core

A 5-stage in-order pipelined processor implementing the base RV64I integer ISA in SystemVerilog.

## Pipeline Stages

```
Fetch → Decode → Execute → Memory → Writeback
```

## Module Breakdown

| File | Module | Description |
|------|--------|-------------|
| `rv64i_top.sv` | `rv64i_top` | Top-level: wires all stages together; exposes IMEM and DMEM interfaces |
| `fetch.sv` | `fetch` | PC update, instruction fetch, branch/jump mux |
| `decode.sv` | `decode` | Instruction decode, register file read, pipeline register |
| `execute.sv` | `execute` | ALU operation, branch resolution, forwarding mux |
| `memory.sv` | `memory` | Data memory access (load/store), byte-enable generation |
| `writeback.sv` | `writeback` | Result mux (ALU / memory / PC+4) write back to register file |
| `ALU.sv` | `alu` | 64-bit ALU: ADD, SUB, AND, OR, XOR, SLL, SRL, SRA, SLT(U) |
| `branch_comp.sv` | `branch_comp` | Branch condition evaluation (BEQ, BNE, BLT, BGE, BLTU, BGEU) |
| `imm_gen.sv` | `imm_gen` | Sign-extended immediate generation for all RV64I formats |
| `control_logic.sv` | `control_logic` | Decode-stage control signal generation from opcode/funct fields |
| `data_hazard_unit.sv` | `data_hazard_unit` | Data forwarding (EX-EX, MEM-EX) and load-use stall/flush |
| `program_counter.sv` | `program_counter` | Synchronous PC register with reset |
| `register_file.sv` | `register_file` | 32×64 register file, x0 hardwired to zero, synchronous write |

## Top-Level Interface (`rv64i_top`)

| Signal | Direction | Description |
|--------|-----------|-------------|
| `clk_i`, `resetn_i` | in | Clock and active-low reset |
| `imem_addr_o` | out | 32-bit instruction fetch address |
| `imem_inst_i` | in | 32-bit instruction word |
| `imem_valid_i` | in | Instruction memory ready |
| `mem_addr_o` | out | 64-bit data memory address |
| `mem_dat_o/i` | out/in | 64-bit data bus |
| `mem_write_o`, `mem_wstrb_o` | out | Write enable + 8-bit byte strobe |
| `mem_read_o`, `mem_ack_i` | out/in | Read request and memory acknowledge |
| `illegal_inst_o` | out | Asserted on unrecognized opcode |

## Hazard Handling

- **Data forwarding:** EX→EX and MEM→EX forwarding paths in `data_hazard_unit` eliminate most RAW stalls.
- **Load-use stall:** A one-cycle stall is inserted when a load result is needed by the immediately following instruction.
- **Control hazard:** Branch/jump outcome is resolved in Execute; the Fetch and Decode stages are flushed on a taken branch.

## Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `XLEN` | `64` | Data path width |

## Optional Tracer

Compile with `` `define tracer `` to expose `rvfi_*` signals (instruction, register addresses, register data, PC) for RISC-V Formal Interface tracing.
