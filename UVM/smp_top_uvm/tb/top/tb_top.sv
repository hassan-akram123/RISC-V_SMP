`timescale 1ns/1ps

module tb_top;
  import uvm_pkg::*;
  import smp_top_uvm_pkg::*;

  logic clk;
  logic rst_n;

  localparam logic [127:0] NOP_BEAT = {4{NOP}};

  smp_ctrl_if ctrl_if(.clk(clk));
  smp_mon_if  mon_if (.clk(clk), .rst_n(rst_n));

  smp_top dut (
    .clk   (clk),
    .rst_n (rst_n)
  );

  assign rst_n = ctrl_if.rst_n_drv;

  // ---------------------------------------------------------------------------
  // Observable signal hookups
  // ---------------------------------------------------------------------------
  assign mon_if.c0_imem_addr   = dut.c0_imem_addr;
  assign mon_if.c1_imem_addr   = dut.c1_imem_addr;

  assign mon_if.M_AXI_AWID     = dut.M_AXI_AWID;
  assign mon_if.M_AXI_AWADDR   = dut.M_AXI_AWADDR;
  assign mon_if.M_AXI_AWLEN    = dut.M_AXI_AWLEN;
  assign mon_if.M_AXI_AWVALID  = dut.M_AXI_AWVALID;
  assign mon_if.M_AXI_AWREADY  = dut.M_AXI_AWREADY;

  assign mon_if.M_AXI_WSTRB    = dut.M_AXI_WSTRB;
  assign mon_if.M_AXI_WLAST    = dut.M_AXI_WLAST;
  assign mon_if.M_AXI_WVALID   = dut.M_AXI_WVALID;
  assign mon_if.M_AXI_WREADY   = dut.M_AXI_WREADY;

  assign mon_if.M_AXI_BID      = dut.M_AXI_BID;
  assign mon_if.M_AXI_BRESP    = dut.M_AXI_BRESP;
  assign mon_if.M_AXI_BVALID   = dut.M_AXI_BVALID;
  assign mon_if.M_AXI_BREADY   = dut.M_AXI_BREADY;

  assign mon_if.M_AXI_ARID     = dut.M_AXI_ARID;
  assign mon_if.M_AXI_ARADDR   = dut.M_AXI_ARADDR;
  assign mon_if.M_AXI_ARLEN    = dut.M_AXI_ARLEN;
  assign mon_if.M_AXI_ARVALID  = dut.M_AXI_ARVALID;
  assign mon_if.M_AXI_ARREADY  = dut.M_AXI_ARREADY;

  assign mon_if.M_AXI_RID      = dut.M_AXI_RID;
  assign mon_if.M_AXI_RRESP    = dut.M_AXI_RRESP;
  assign mon_if.M_AXI_RLAST    = dut.M_AXI_RLAST;
  assign mon_if.M_AXI_RVALID   = dut.M_AXI_RVALID;
  assign mon_if.M_AXI_RREADY   = dut.M_AXI_RREADY;

  assign mon_if.bus_req_valid  = dut.bus_req_valid;
  assign mon_if.bus_req_cmd    = dut.bus_req_cmd;
  assign mon_if.bus_req_addr   = dut.bus_req_addr;
  assign mon_if.bus_req_src    = dut.bus_req_src;

  assign mon_if.i_bus_gnt_valid = dut.i_bus_gnt_valid;
  assign mon_if.i_bus_gnt_dst   = dut.i_bus_gnt_dst;
  assign mon_if.i_bus_gnt_ok    = dut.i_bus_gnt_ok;

  assign mon_if.d_bus_gnt_valid = dut.d_bus_gnt_valid;
  assign mon_if.d_bus_gnt_dst   = dut.d_bus_gnt_dst;
  assign mon_if.d_bus_gnt_addr  = dut.d_bus_gnt_addr;
  assign mon_if.d_bus_gnt_state = dut.d_bus_gnt_state;
  assign mon_if.d_bus_gnt_ok    = dut.d_bus_gnt_ok;

  assign mon_if.bus_dat_valid   = dut.bus_dat_valid;
  assign mon_if.bus_dat_dst     = dut.bus_dat_dst;
  assign mon_if.bus_dat_addr    = dut.bus_dat_addr;
  assign mon_if.bus_dat_beat    = dut.bus_dat_beat;
  assign mon_if.bus_dat_last    = dut.bus_dat_last;

  // ---------------------------------------------------------------------------
  // Local backdoor helpers
  // ---------------------------------------------------------------------------
  task automatic clear_sram_to_nops();
    int idx;
    begin
      for (idx = 0; idx < dut.MEM_DEPTH_BEATS; idx++) begin
        dut.sram_mem[idx] = NOP_BEAT;
      end
    end
  endtask

  task automatic write_instr_dup(input logic [31:0] byte_addr, input logic [31:0] instr);
    int beat_idx;
    int lane;
    begin
      beat_idx = (byte_addr - BOOT_BASE) >> 4;
      lane     = ((byte_addr - BOOT_BASE) >> 2) & 2'b11;
      dut.sram_mem[beat_idx][lane*32 +: 32] = instr;

      beat_idx = ((byte_addr + 4) - BOOT_BASE) >> 4;
      lane     = (((byte_addr + 4) - BOOT_BASE) >> 2) & 2'b11;
      dut.sram_mem[beat_idx][lane*32 +: 32] = instr;
    end
  endtask

  // ---------------------------------------------------------------------------
  // Clock generation
  // ---------------------------------------------------------------------------
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  // ---------------------------------------------------------------------------
  // Control service process
  // ---------------------------------------------------------------------------
  always @(posedge clk) begin
    ctrl_if.clear_mem_ack     <= 1'b0;
    ctrl_if.write_ack         <= 1'b0;
    ctrl_if.force_roles_ack   <= 1'b0;
    ctrl_if.release_roles_ack <= 1'b0;

    if (ctrl_if.clear_mem_req) begin
      clear_sram_to_nops();
      ctrl_if.clear_mem_ack <= 1'b1;
    end

    if (ctrl_if.write_req) begin
      write_instr_dup(ctrl_if.write_addr, ctrl_if.write_instr);
      ctrl_if.write_ack <= 1'b1;
    end

    if (ctrl_if.force_roles_req) begin
      force dut.u_core0.Decode.RF.x[31] = ctrl_if.core0_role_value;
      force dut.u_core1.Decode.RF.x[31] = ctrl_if.core1_role_value;
      ctrl_if.force_roles_ack <= 1'b1;
    end

    if (ctrl_if.release_roles_req) begin
      release dut.u_core0.Decode.RF.x[31];
      release dut.u_core1.Decode.RF.x[31];
      ctrl_if.release_roles_ack <= 1'b1;
    end
  end

  // ---------------------------------------------------------------------------
  // UVM bootstrap
  // ---------------------------------------------------------------------------
  initial begin
    uvm_config_db#(virtual smp_ctrl_if)::set(null, "*", "ctrl_vif", ctrl_if);
    uvm_config_db#(virtual smp_mon_if )::set(null, "*", "mon_vif",  mon_if);
    run_test();
  end

endmodule
