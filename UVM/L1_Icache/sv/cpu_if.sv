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
  logic                       req_valid;
  logic [     ADDR_WIDTH-1:0] req_addr;
  logic                       req_ready;
  logic                       resp_valid;
  logic [CORE_DATA_WIDTH-1:0] resp_data;

  // clocking block for driver
  clocking driver_cb @(posedge clk);
    default input #1step output #1;
    output req_valid;
    output req_addr;
    input req_ready;
    input resp_valid;
    input resp_data;
  endclocking

  // clocking block for monitor
  clocking monitor_cb @(posedge clk);
    default input #1step;
    input req_valid;
    input req_addr;
    input req_ready;
    input resp_valid;
    input resp_data;
  endclocking

  // modports
  modport driver_mp(clocking driver_cb, input clk, input rst_n);
  modport monitor_mp(clocking monitor_cb, input clk, input rst_n);

  // ----------------------------------------
  // assertions
  // ----------------------------------------

  // req_valid must see req_ready within 32 cycles.
  // FIX: was ##[1:20] - still too tight. On a miss with a NACK retry the DUT
  //      pipeline is: lookup(BRAM latency) + miss detect + mem req + NACK +
  //      retry + req_ready back to CPU = consistently 21+ cycles.
  //      32 gives headroom for worst-case NACK retry path.
  property req_accepted;
    @(posedge clk) disable iff (!rst_n) req_valid |-> ##[1:32] req_ready;
  endproperty

  // resp_valid must follow an accepted request handshake (req_valid && req_ready)
  // FIX: was (req_ready |-> ...) which fired every cycle req_ready was high,
  //      spawning a new 200-cycle obligation each cycle and causing cascade failures.
  property resp_after_req;
    @(posedge clk) disable iff (!rst_n) (req_valid && req_ready) |-> ##[1:200] resp_valid;
  endproperty

  REQ_ACCEPTED :
  assert property (req_accepted)
  else `uvm_error("CPU_IF", "req_valid held too long without req_ready")

  RESP_AFTER_REQ :
  assert property (resp_after_req)
  else `uvm_error("CPU_IF", "accepted request without resp_valid within 200 cycles")

endinterface : cpu_if