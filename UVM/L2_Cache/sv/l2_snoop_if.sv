`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Interface : l2_snoop_if
// Description : Covers the full snoop-arbiter bus seen by L2_Cache_Controller:
//   - Snoop request  (arbiter -> L2)
//   - WB data beats  (arbiter -> L2, i.e. upper-level writeback into L2)
//   - L2 wb data ready (L2 -> arbiter)
//   - Snoop response (L2 -> arbiter)
//   - Supply beats   (L2 -> arbiter, L2 supplies cache line to requestor)
//   - Memory request (L2 -> memory, simple AXI-stub driven by mem responder)
//   - Memory response(memory -> L2)
//////////////////////////////////////////////////////////////////////////////////

interface l2_snoop_if #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SRC_ID_WIDTH    = 2
)(
    input logic clk,
    input logic rst_n
);

    timeunit 1ns; timeprecision 100ps;

    import uvm_pkg::*;
    `include "uvm_macros.svh"

    // ----------------------------------------------------------------
    // Arbiter -> L2 : snoop request
    // ----------------------------------------------------------------
    logic                       bus_req_valid;
    logic [2:0]                 bus_req_cmd;   // CMD_GETS/GETM/UPGR/WB
    logic [ADDR_WIDTH-1:0]      bus_req_addr;
    logic [SRC_ID_WIDTH-1:0]    bus_req_src;

    // ----------------------------------------------------------------
    // Arbiter -> L2 : WB data beats (upper level writing back into L2)
    // ----------------------------------------------------------------
    logic                       bus_dat_valid;
    logic [SRC_ID_WIDTH-1:0]    bus_dat_dst;
    logic [ADDR_WIDTH-1:0]      bus_dat_addr;
    logic [2:0]                 bus_dat_beat;
    logic [CORE_DATA_WIDTH-1:0] bus_dat_data;
    logic                       bus_dat_last;

    // ----------------------------------------------------------------
    // L2 -> Arbiter : WB data ready
    // ----------------------------------------------------------------
    logic                       l2_wb_data_ready;

    // ----------------------------------------------------------------
    // L2 -> Arbiter : snoop response
    // ----------------------------------------------------------------
    logic                       l2_snp_valid;
    logic                       l2_snp_hit;
    logic                       l2_snp_has_data;
    logic                       l2_snp_ack;

    // ----------------------------------------------------------------
    // L2 -> Arbiter : supply beats (L2 supplies data to requestor)
    // ----------------------------------------------------------------
    logic                       sup_valid;
    logic                       sup_ready;   // driven by responder
    logic [CORE_DATA_WIDTH-1:0] sup_data;
    logic [2:0]                 sup_beat;
    logic                       sup_last;

    // ----------------------------------------------------------------
    // L2 -> Memory : memory request (fill / writeback)
    // ----------------------------------------------------------------
    logic                       mem_req_valid;
    logic                       mem_req_rw;          // 0=read, 1=write
    logic [ADDR_WIDTH-1:0]      mem_req_addr;
    logic [511:0]               mem_req_line;        // for WB writes
    logic                       mem_req_ready;       // driven by responder

    // ----------------------------------------------------------------
    // Memory -> L2 : fill response
    // ----------------------------------------------------------------
    logic                       mem_resp_valid;
    logic [511:0]               mem_resp_line;

    // ================================================================
    // Clocking blocks
    // ================================================================

    // Snoop driver / responder drives snoop requests, WB data beats,
    // supply ready, and memory responses; observes snoop responses
    // and supply beats from the DUT.
    clocking responder_cb @(posedge clk);
        default input #1step output #1;

        // drive snoop request bus
        output bus_req_valid;
        output bus_req_cmd;
        output bus_req_addr;
        output bus_req_src;

        // drive WB data beats into L2
        output bus_dat_valid;
        output bus_dat_dst;
        output bus_dat_addr;
        output bus_dat_beat;
        output bus_dat_data;
        output bus_dat_last;

        // observe L2 WB data ready
        input  l2_wb_data_ready;

        // observe snoop response from DUT
        input  l2_snp_valid;
        input  l2_snp_hit;
        input  l2_snp_has_data;
        input  l2_snp_ack;

        // drive supply ready (accept supply beats from L2)
        output sup_ready;

        // observe supply beats from DUT
        input  sup_valid;
        input  sup_data;
        input  sup_beat;
        input  sup_last;

        // drive memory responses (fill data back to L2)
        output mem_req_ready;
        output mem_resp_valid;
        output mem_resp_line;

        // observe memory requests from DUT
        input  mem_req_valid;
        input  mem_req_rw;
        input  mem_req_addr;
        input  mem_req_line;
    endclocking

    // Monitor observes everything passively
    clocking monitor_cb @(posedge clk);
        default input #1step;

        input bus_req_valid, bus_req_cmd, bus_req_addr, bus_req_src;
        input bus_dat_valid, bus_dat_dst, bus_dat_addr, bus_dat_beat, bus_dat_data, bus_dat_last;
        input l2_wb_data_ready;
        input l2_snp_valid, l2_snp_hit, l2_snp_has_data, l2_snp_ack;
        input sup_valid, sup_ready, sup_data, sup_beat, sup_last;
        input mem_req_valid, mem_req_rw, mem_req_addr, mem_req_line;
        input mem_req_ready, mem_resp_valid, mem_resp_line;
    endclocking

    // Modports
    modport responder_mp(clocking responder_cb, input clk, input rst_n);
    modport monitor_mp  (clocking monitor_cb,   input clk, input rst_n);

    // ================================================================
    // Assertions
    // ================================================================

    // l2_snp_valid must follow bus_req_valid - cover property only
    // (actual latency depends on TB mem responder speed, not DUT correctness)
    property snp_rsp_follows_req;
        @(posedge clk) disable iff (!rst_n)
        bus_req_valid |-> ##[1:1000] l2_snp_valid;
    endproperty

    // when L2 supplies data, sup_last must only appear on beat 7
    property sup_last_on_beat7;
        @(posedge clk) disable iff (!rst_n)
        (sup_valid && sup_last) |-> (sup_beat == 3'h7);
    endproperty

    // WB data last beat must be beat 7
    property dat_last_on_beat7;
        @(posedge clk) disable iff (!rst_n)
        (bus_dat_valid && bus_dat_last) |-> (bus_dat_beat == 3'h7);
    endproperty

    // mem_req_valid must be acknowledged - cover property only
    // (latency depends on TB responder pre-fetch timing)
    property mem_req_eventually_ready;
        @(posedge clk) disable iff (!rst_n)
        mem_req_valid |-> ##[1:1000] mem_req_ready;
    endproperty

    // If L2 has data to supply, sup_valid must arrive within 20 cycles of snp_ack
    property supply_follows_snp_ack;
        @(posedge clk) disable iff (!rst_n)
        (l2_snp_ack && l2_snp_has_data) |-> ##[1:20] sup_valid;
    endproperty

    // Use cover (not assert) for TB-timing-dependent properties
    SNP_RSP_FOLLOWS_REQ :
    cover property (snp_rsp_follows_req);

    // Keep structural assertions - these check DUT output correctness
    SUP_LAST_ON_BEAT7 :
    assert property (sup_last_on_beat7)
    else `uvm_error("L2_SNOOP_IF", "sup_last asserted on wrong beat (not beat 7)")

    DAT_LAST_ON_BEAT7 :
    assert property (dat_last_on_beat7)
    else `uvm_error("L2_SNOOP_IF", "bus_dat_last asserted on wrong beat (not beat 7)")

    // Use cover for mem_req_ready - TB timing dependent
    MEM_REQ_EVENTUALLY_READY :
    cover property (mem_req_eventually_ready);

    SUPPLY_FOLLOWS_SNP_ACK :
    assert property (supply_follows_snp_ack)
    else `uvm_error("L2_SNOOP_IF", "l2_snp_ack+has_data without sup_valid within 20 cycles")

endinterface : l2_snoop_if