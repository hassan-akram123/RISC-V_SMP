# AXI VIP bring-up for your L2 AXI master

## What to verify first
Do **not** start from `smp_top.sv` for AXI VIP bring-up.

Your current `smp_top.sv` already contains an internal SRAM-style AXI responder, so if you use that top as-is, the AXI VIP is not the real responder anymore. The cleanest first target is:

- `l2_to_axi4_master.sv`
- `l2_to_axi4_master_axi_full_wrapper.sv`

That verifies the AXI master implementation directly.

Also, in your current full SMP system the L2 bridge is effectively used with a **single ID** because the L2 controller side is bridged with a fixed request ID. So the first VIP test should be **single-ID bring-up**. After that, you can optionally add a direct wrapper-level multi-ID smoke test.

---

## Files to use
Use these user RTL files:

- `l2_to_axi4_master.sv`
- `l2_to_axi4_master_axi_full_wrapper.sv`

Use this testbench file:

- `tb_l2_axi_master_vip_bd.sv`

---

## Vivado flow

### 1) Create a fresh verification project
Create a **new Vivado RTL project** just for AXI verification.

Add these RTL sources:

- `l2_to_axi4_master.sv`
- `l2_to_axi4_master_axi_full_wrapper.sv`
- later, also add `tb_l2_axi_master_vip_bd.sv`

Use **Vivado Simulator (xsim)** for the first run.

---

### 2) Create the AXI VIP IP
Open **IP Catalog** and add **AXI Verification IP**.

Configure it as:

- **Interface mode:** Slave
- **Protocol:** AXI4
- **Memory model:** enabled (Slave Simple Memory mode)
- **Address width:** 32
- **Data width:** 128
- **ID width:** 4
- **Read/Write:** both enabled

Set the **Component Name** to exactly:

- `axi_vip_slave_mem`

Then **Generate Output Products**.

Why this configuration:

- AXI VIP supports AXI3, AXI4, and AXI4-Lite, and is intended for simulation of AXI-based designs. It is made of a static module plus a SystemVerilog class library. citeturn249116search2turn730116view4
- For your DUT, the correct responder is **AXI Slave Simple Memory VIP**, because it already contains a simple memory model and does not require you to manually create reactive read/write responses. citeturn730116view2turn666295search0

---

### 3) Build a tiny block design
Create a block design named exactly:

- `axi_l2_vip_bd`

Inside the block design:

1. Add your RTL module `l2_to_axi4_master_axi_full_wrapper` using **Add Module**.
2. Add the IP `axi_vip_slave_mem`.
3. Connect the DUT AXI master interface to the AXI VIP slave interface.
4. Connect clock and reset:
   - DUT `aclk` and VIP clock to the same `aclk`
   - DUT `aresetn` and VIP reset to the same `aresetn`
5. Make these DUT ports external so the testbench can drive them:
   - `mem_req_valid`
   - `mem_req_ready`
   - `mem_req_rw`
   - `mem_req_id`
   - `mem_req_addr`
   - `mem_req_line`
   - `mem_rresp_valid`
   - `mem_rresp_ready`
   - `mem_rresp_id`
   - `mem_rresp_line`
   - `mem_rresp_resp`
   - `mem_wresp_valid`
   - `mem_wresp_ready`
   - `mem_wresp_id`
   - `mem_wresp_resp`
   - `aclk`
   - `aresetn`

Then:

- Validate Design
- Generate Output Products
- Make sure the BD module `axi_l2_vip_bd` is available to simulation

The reason we use the block design is simply to let Vivado wire the AXI VIP cleanly while you still drive the controller-side handshake from a normal SystemVerilog testbench.

---

### 4) Add the testbench
Add:

- `tb_l2_axi_master_vip_bd.sv`

Set simulation top to:

- `tb_l2_axi_master_vip_bd`

---

### 5) Very important AXI VIP testbench requirements
AMD’s AXI VIP requires that the testbench imports:

- `axi_vip_pkg`
- `<component_name>_pkg`

and that you declare the correct agent type and construct it with the VIP interface path. For a slave-memory VIP, the agent type is `<component_name>_slv_mem_t`. citeturn730116view3

That is why the testbench imports:

- `axi_vip_pkg::*`
- `axi_vip_slave_mem_pkg::*`

and declares:

- `axi_vip_slave_mem_slv_mem_t slv_agent;`

---

### 6) If the interface hierarchy path does not match on the first run
The only line you may need to edit in the testbench is the `VIP_IF_PATH` macro.

AMD explicitly recommends running an empty simulation first so you can find the AXI VIP hierarchy path, then using that path when creating the agent. citeturn730116view1turn730116view3

In the testbench, this line is the one to edit if needed:

```systemverilog
`define VIP_IF_PATH dut.axi_vip_slave_mem_0.inst.IF
```

If your BD wrapper adds one extra instance level, the path might look more like:

```systemverilog
`define VIP_IF_PATH dut.axi_l2_vip_bd_i.axi_vip_slave_mem_0.inst.IF
```

The exact path depends on how Vivado generated the BD hierarchy.

---

## What the supplied testbench does
The supplied testbench keeps things simple and targeted.

It performs:

1. One aligned **512-bit write** to address `0x0000_1000`
2. One **readback** from the same line and data compare
3. Two back-to-back writes with the **same AXI ID**
4. Two readbacks to verify both lines

This is the right first stage because:

- your real system currently behaves as a single-ID master at the L2 downstream interface
- the goal is to prove the implemented AXI write and read burst logic is working through a standards-aware AXI responder

The AXI VIP also performs protocol checking during simulation. citeturn249116search2turn666295search5

---

## What success looks like
A good first pass is:

- simulation compiles
- AXI VIP agent starts successfully
- write responses are `OKAY`
- read responses are `OKAY`
- returned 512-bit lines match exactly
- no AXI VIP protocol errors appear in the transcript

At the end, the testbench prints:

- `[TB] PASS: AXI master RTL completed write/read traffic through AXI VIP.`

---

## What to do next after this passes
After the first pass works, the next useful extensions are:

1. add a **delayed READY / backpressure** run
2. add a **read-after-write to several line addresses**
3. add a **write-only burst stress** run
4. optionally verify the wrapper directly with **multiple IDs** even though the current system bridge uses one ID

---

## Small warnings
- Do not import multiple revisions of `axi_vip` packages in the same simulation; AMD warns this can break elaboration. citeturn249116search7turn482023search1
- AXI VIP is SystemVerilog-based and uses randomization support, so use a supported simulator; Vivado Simulator is the safest first choice. citeturn730116view4

