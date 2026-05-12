package snoop_arbiter_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  typedef enum logic [1:0] {
    REQ_I0 = 2'd0,
    REQ_I1 = 2'd1,
    REQ_D0 = 2'd2,
    REQ_D1 = 2'd3
  } requester_e;

  typedef enum logic [2:0] {
    CMD_GETS = 3'd0,
    CMD_GETM = 3'd1,
    CMD_UPGR = 3'd2,
    CMD_WB   = 3'd3
  } cmd_e;

  typedef enum logic [2:0] {
    GNT_NONE = 3'd0,
    GNT_I    = 3'd1,
    GNT_D    = 3'd2
  } grant_kind_e;

  typedef enum logic [2:0] {
    SUP_NONE = 3'd0,
    SUP_D0   = 3'd1,
    SUP_D1   = 3'd2,
    SUP_L2   = 3'd3
  } supplier_e;

  localparam logic [1:0] ST_I = 2'b00;
  localparam logic [1:0] ST_S = 2'b01;
  localparam logic [1:0] ST_E = 2'b10;
  localparam logic [1:0] ST_M = 2'b11;

  `uvm_analysis_imp_decl(_exp)
  `uvm_analysis_imp_decl(_act)

  `include "snoop_txn.sv"

  `include "base_seq.sv"
  `include "smoke_seq.sv"
  `include "reset_idle_seq.sv"
  `include "single_req_seq.sv"
  `include "cmd_seq.sv"
  `include "supplier_seq.sv"
  `include "arb_seq.sv"
  `include "snoop_rsp_seq.sv"
  `include "grant_seq.sv"
  `include "random_seq.sv"
  `include "phasef_random_seq.sv"

  `include "snoop_sequencer.sv"
  `include "snoop_driver.sv"
  `include "snoop_monitor.sv"
  `include "snoop_agent.sv"

  `include "snoop_scoreboard.sv"
  `include "snoop_coverage.sv"
  `include "snoop_env.sv"

  `include "base_test.sv"
  `include "smoke_test.sv"
  `include "reset_idle_test.sv"
  `include "single_req_test.sv"
  `include "cmd_test.sv"
  `include "supplier_test.sv"
  `include "arb_test.sv"
  `include "snoop_rsp_test.sv"
  `include "grant_test.sv"
  `include "random_test.sv"
  `include "phasef_random_test.sv"
endpackage
