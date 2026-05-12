interface mem_if #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SRC_ID_WIDTH    = 2
) (
    input logic clk,
    input logic rst_n
);

  timeunit 1ns; timeprecision 100ps;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  // Controller ──▶ Arbiter (request)
  logic                       req_valid;
  logic [                2:0] req_cmd;
  logic [     ADDR_WIDTH-1:0] req_addr;
  logic [   SRC_ID_WIDTH-1:0] req_src;

  // Arbiter ──▶ Controller (grant)
  logic                       req_ready;
  logic                       gnt_valid;
  logic                       gnt_ok;

  // Memory ──▶ Controller (beat data)
  logic                       dat_valid;
  logic [CORE_DATA_WIDTH-1:0] dat_data;
  logic [                2:0] dat_beat;
  logic                       dat_last;
  logic [   SRC_ID_WIDTH-1:0] dat_dst;
  logic [     ADDR_WIDTH-1:0] dat_addr;

  // clocking blocks
  clocking responder_cb @(posedge clk);
    default input #1step output #1;
    input req_valid;
    input req_cmd;
    input req_addr;
    input req_src;
    output req_ready;
    output gnt_valid;
    output gnt_ok;
    output dat_valid;
    output dat_data;
    output dat_beat;
    output dat_last;
    output dat_dst;
    output dat_addr;
  endclocking

  clocking monitor_cb @(posedge clk);
    default input #1step;
    input req_valid, req_cmd, req_addr, req_src;
    input req_ready, gnt_valid, gnt_ok;
    input dat_valid, dat_data, dat_beat, dat_last, dat_dst, dat_addr;
  endclocking

  // modports
  modport responder_mp(clocking responder_cb, input clk, input rst_n);
  modport monitor_mp(clocking monitor_cb, input clk, input rst_n);

  // ----------------------------------------
  // assertions
  // ----------------------------------------

  // dat_last must only be asserted on beat 7
  property last_on_beat7;
    @(posedge clk) disable iff (!rst_n) (dat_valid && dat_last) |-> (dat_beat == 3'h7);
  endproperty

  // gnt_valid must follow req_valid within 50 cycles.
  // FIX: was (req_valid |-> ...) which fired every cycle req_valid was high.
  //      Now gates on req_valid rising while not yet accepted (!req_ready),
  //      so only one obligation is spawned per transaction.
  property gnt_follows_req;
    @(posedge clk) disable iff (!rst_n)
      (req_valid && !req_ready) |-> ##[1:50] gnt_valid;
  endproperty

  LAST_ON_BEAT7 :
  assert property (last_on_beat7)
  else `uvm_error("MEM_IF", "dat_last asserted on wrong beat")

  GNT_FOLLOWS_REQ :
  assert property (gnt_follows_req)
  else `uvm_error("MEM_IF", "req_valid without gnt_valid response")

endinterface : mem_if