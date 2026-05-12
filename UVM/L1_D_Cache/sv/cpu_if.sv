interface cpu_if #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64
) (
    input logic clk,
    input logic rst_n
);

  timeunit 1ns; timeprecision 100ps;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  // signals
  logic                       ldst_valid;
  logic                       ldst_is_store;
  logic [     ADDR_WIDTH-1:0] ldst_addr;
  logic [CORE_DATA_WIDTH-1:0] ldst_wdata;
  logic [                7:0] ldst_wstrb;
  logic                       ldst_ready;
  logic                       ldst_resp_valid;
  logic [CORE_DATA_WIDTH-1:0] ldst_rdata;

  // clocking block for driver
  clocking driver_cb @(posedge clk);
    default input #1step output #1;
    output ldst_valid;
    output ldst_is_store;
    output ldst_addr;
    output ldst_wdata;
    output ldst_wstrb;
    input ldst_ready;
    input ldst_resp_valid;
    input ldst_rdata;
  endclocking

  // clocking block for monitor
  clocking monitor_cb @(posedge clk);
    default input #1step;
    input ldst_valid;
    input ldst_is_store;
    input ldst_addr;
    input ldst_wdata;
    input ldst_wstrb;
    input ldst_ready;
    input ldst_resp_valid;
    input ldst_rdata;
  endclocking

  // modports
  modport driver_mp(clocking driver_cb, input clk, input rst_n);
  modport monitor_mp(clocking monitor_cb, input clk, input rst_n);

  // ----------------------------------------
  // assertions
  // ----------------------------------------

  // ldst_valid must see ldst_ready within 50 cycles
  // widened from 10: a single nack + retry + arbitration easily exceeds 10 cycles
  property req_accepted;
    @(posedge clk) disable iff (!rst_n) ldst_valid |-> ##[1:50] ldst_ready;
  endproperty

  // ldst_resp_valid must follow ldst_ready within 200 cycles
  // (generous bound to cover miss + refill + writeback path)
  property resp_after_req;
    @(posedge clk) disable iff (!rst_n) (ldst_valid && ldst_ready) |-> ##[1:200] ldst_resp_valid;
  endproperty

  // ldst_wstrb must be non-zero on a store
  property wstrb_valid_on_store;
    @(posedge clk) disable iff (!rst_n) (ldst_valid && ldst_is_store) |-> (ldst_wstrb != 8'h00);
  endproperty

  REQ_ACCEPTED :
  assert property (req_accepted)
  else `uvm_error("CPU_IF", "ldst_valid held too long without ldst_ready")

  RESP_AFTER_REQ :
  assert property (resp_after_req)
  else `uvm_error("CPU_IF", "ldst_valid+ready without ldst_resp_valid")

  WSTRB_VALID_ON_STORE :
  assert property (wstrb_valid_on_store)
  else `uvm_error("CPU_IF", "ldst_is_store asserted but ldst_wstrb is zero")

endinterface : cpu_if