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

  // ----------------------------------------
  // Controller ──▶ Arbiter (outbound request)
  // ----------------------------------------
  logic                       d_req_valid;
  logic [                2:0] d_req_cmd;  // CMD_GETS/GETM/UPGR/WB
  logic [     ADDR_WIDTH-1:0] d_req_addr;
  logic [   SRC_ID_WIDTH-1:0] d_req_src;

  // ----------------------------------------
  // Arbiter ──▶ Controller (grant)
  // ----------------------------------------
  logic                       d_req_ready;
  logic                       bus_gnt_valid;
  logic [   SRC_ID_WIDTH-1:0] bus_gnt_dst;
  logic [     ADDR_WIDTH-1:0] bus_gnt_addr;
  logic [                1:0] bus_gnt_state;  // MESI state granted
  logic                       bus_gnt_ok;

  // ----------------------------------------
  // Memory ──▶ Controller (fill data, 8 beats)
  // ----------------------------------------
  logic                       bus_dat_valid;
  logic [   SRC_ID_WIDTH-1:0] bus_dat_dst;
  logic [CORE_DATA_WIDTH-1:0] bus_dat_data;
  logic [                2:0] bus_dat_beat;
  logic                       bus_dat_last;

  // ----------------------------------------
  // Controller ──▶ Memory (supply/writeback, 8 beats)
  // ----------------------------------------
  logic                       sup_valid;
  logic                       sup_ready;  // driven by responder
  logic [CORE_DATA_WIDTH-1:0] sup_data;
  logic [                2:0] sup_beat;
  logic                       sup_last;

  // ----------------------------------------
  // Arbiter ──▶ Controller (snoop request)
  // ----------------------------------------
  logic                       bus_req_valid;
  logic [                2:0] bus_req_cmd;
  logic [     ADDR_WIDTH-1:0] bus_req_addr;
  logic [   SRC_ID_WIDTH-1:0] bus_req_src;

  // ----------------------------------------
  // Controller ──▶ Arbiter (snoop response)
  // ----------------------------------------
  logic                       snp_rsp_valid;
  logic                       snp_rsp_hit;
  logic [                1:0] snp_rsp_state;
  logic                       snp_rsp_has_data;
  logic                       snp_rsp_ack;

  // ----------------------------------------
  // clocking blocks
  // ----------------------------------------

  // responder drives grants, fill data, snoop requests
  // and observes outbound requests and supply beats
  clocking responder_cb @(posedge clk);
    default input #1step output #1;
    // observe controller requests
    input d_req_valid;
    input d_req_cmd;
    input d_req_addr;
    input d_req_src;
    // drive grant signals
    output d_req_ready;
    output bus_gnt_valid;
    output bus_gnt_dst;
    output bus_gnt_addr;
    output bus_gnt_state;
    output bus_gnt_ok;
    // drive fill data beats
    output bus_dat_valid;
    output bus_dat_dst;
    output bus_dat_data;
    output bus_dat_beat;
    output bus_dat_last;
    // drive snoop requests
    output bus_req_valid;
    output bus_req_cmd;
    output bus_req_addr;
    output bus_req_src;
    // drive supply ready
    output sup_ready;
    // observe supply beats from controller
    input sup_valid;
    input sup_data;
    input sup_beat;
    input sup_last;
    // observe snoop responses from controller
    input snp_rsp_valid;
    input snp_rsp_hit;
    input snp_rsp_state;
    input snp_rsp_has_data;
    input snp_rsp_ack;
  endclocking

  // monitor observes everything passively
  clocking monitor_cb @(posedge clk);
    default input #1step;
    input d_req_valid, d_req_cmd, d_req_addr, d_req_src;
    input d_req_ready;
    input bus_gnt_valid, bus_gnt_dst, bus_gnt_addr, bus_gnt_state, bus_gnt_ok;
    input bus_dat_valid, bus_dat_dst, bus_dat_data, bus_dat_beat, bus_dat_last;
    input sup_valid, sup_ready, sup_data, sup_beat, sup_last;
    input bus_req_valid, bus_req_cmd, bus_req_addr, bus_req_src;
    input snp_rsp_valid, snp_rsp_hit, snp_rsp_state, snp_rsp_has_data, snp_rsp_ack;
  endclocking

  // modports
  modport responder_mp(clocking responder_cb, input clk, input rst_n);
  modport monitor_mp(clocking monitor_cb, input clk, input rst_n);

  // ----------------------------------------
  // assertions
  // ----------------------------------------

  // sup_last must only be asserted on beat 7
  property sup_last_on_beat7;
    @(posedge clk) disable iff (!rst_n) (sup_valid && sup_last) |-> (sup_beat == 3'h7);
  endproperty

  // bus_dat_last must only be asserted on beat 7
  property dat_last_on_beat7;
    @(posedge clk) disable iff (!rst_n) (bus_dat_valid && bus_dat_last) |-> (bus_dat_beat == 3'h7);
  endproperty

  // bus_gnt_valid must follow d_req_valid within 50 cycles
  property gnt_follows_req;
    @(posedge clk) disable iff (!rst_n) d_req_valid |-> ##[1:50] bus_gnt_valid;
  endproperty

  // snp_rsp_valid must follow bus_req_valid within 50 cycles
  property snp_rsp_follows_req;
    @(posedge clk) disable iff (!rst_n) bus_req_valid |-> ##[1:50] snp_rsp_valid;
  endproperty

  // bus_gnt_ok low must not be followed by fill data to this dst
  property no_data_on_nack;
    @(posedge clk) disable iff (!rst_n) (bus_gnt_valid && !bus_gnt_ok) |-> ##[1:5] !bus_dat_valid;
  endproperty

  SUP_LAST_ON_BEAT7 :
  assert property (sup_last_on_beat7)
  else `uvm_error("MEM_IF", "sup_last asserted on wrong beat")

  DAT_LAST_ON_BEAT7 :
  assert property (dat_last_on_beat7)
  else `uvm_error("MEM_IF", "bus_dat_last asserted on wrong beat")

  GNT_FOLLOWS_REQ :
  assert property (gnt_follows_req)
  else `uvm_error("MEM_IF", "d_req_valid without bus_gnt_valid response")

  SNP_RSP_FOLLOWS_REQ :
  assert property (snp_rsp_follows_req)
  else `uvm_error("MEM_IF", "bus_req_valid without snp_rsp_valid response")

  NO_DATA_ON_NACK :
  assert property (no_data_on_nack)
  else `uvm_error("MEM_IF", "fill data received after grant denial")

endinterface : mem_if
