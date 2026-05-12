module icache_subsystem #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SRC_ID_WIDTH    = 2
) (
    input logic clk,
    input logic rst_n,

    // --- CPU side ---
    input  logic                       if_req_valid,
    input  logic [     ADDR_WIDTH-1:0] if_req_addr,
    output logic                       if_req_ready,
    output logic                       if_resp_valid,
    output logic [CORE_DATA_WIDTH-1:0] if_resp_data,

    // --- Memory bus side ---
    output logic                       i_req_valid,
    input  logic                       i_req_ready,
    output logic [                2:0] i_req_cmd,
    output logic [     ADDR_WIDTH-1:0] i_req_addr,
    output logic [   SRC_ID_WIDTH-1:0] i_req_src,
    input  logic                       bus_dat_valid,
    input  logic [CORE_DATA_WIDTH-1:0] bus_dat_data,
    input  logic [                2:0] bus_dat_beat,
    input  logic                       bus_dat_last,
    input  logic [   SRC_ID_WIDTH-1:0] bus_dat_dst,
    input  logic [     ADDR_WIDTH-1:0] bus_dat_addr,
    input  logic                       bus_gnt_valid,
    input  logic                       bus_gnt_ok
);

  // --- Internal wires ---
  logic                       i_lookup_en;
  logic [     ADDR_WIDTH-1:0] i_lookup_addr;
  logic                       i_fill_en;
  logic [     ADDR_WIDTH-1:0] i_fill_addr;
  logic [                2:0] i_fill_way;
  logic [              511:0] i_fill_line;
  logic [CORE_DATA_WIDTH-1:0] i_rdata;
  logic                       i_rvalid;
  logic                       i_hit;
  logic [                2:0] i_hit_way;
  logic                       o_lookup_stalled;

  // --- Controller ---
  L1_Icache_Controller #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .CORE_DATA_WIDTH(CORE_DATA_WIDTH),
      .SRC_ID_WIDTH(SRC_ID_WIDTH)
  ) u_ctrl (
      .clk             (clk),
      .rst_n           (rst_n),
      // CPU side
      .if_req_valid    (if_req_valid),
      .if_req_addr     (if_req_addr),
      .if_req_ready    (if_req_ready),
      .if_resp_valid   (if_resp_valid),
      .if_resp_data    (if_resp_data),
      // Internal wires to iCache
      .i_lookup_en     (i_lookup_en),
      .i_lookup_addr   (i_lookup_addr),
      .i_fill_en       (i_fill_en),
      .i_fill_addr     (i_fill_addr),
      .i_fill_way      (i_fill_way),
      .i_fill_line     (i_fill_line),
      .i_rvalid        (i_rvalid),
      .i_rdata         (i_rdata),
      .i_hit           (i_hit),
      .i_hit_way       (i_hit_way),
      .o_lookup_stalled(o_lookup_stalled),
      // Memory bus
      .i_req_valid     (i_req_valid),
      .i_req_ready     (i_req_ready),
      .i_req_cmd       (i_req_cmd),
      .i_req_addr      (i_req_addr),
      .i_req_src       (i_req_src),
      .bus_dat_valid   (bus_dat_valid),
      .bus_dat_data    (bus_dat_data),
      .bus_dat_beat    (bus_dat_beat),
      .bus_dat_last    (bus_dat_last),
      .bus_dat_dst     (bus_dat_dst),
      .bus_dat_addr    (bus_dat_addr),
      .bus_gnt_valid   (bus_gnt_valid),
      .bus_gnt_ok      (bus_gnt_ok)
  );

  // --- iCache ---
  L1_Icache #(
      .ADDR_WIDTH(ADDR_WIDTH)
  ) u_icache (
      .clk             (clk),
      .rst_n           (rst_n),
      .i_lookup_en     (i_lookup_en),
      .i_lookup_addr   (i_lookup_addr),
      .i_fill_en       (i_fill_en),
      .i_fill_addr     (i_fill_addr),
      .i_fill_way      (i_fill_way),
      .i_fill_line     (i_fill_line),
      .i_rdata         (i_rdata),
      .i_rvalid        (i_rvalid),
      .i_hit           (i_hit),
      .i_hit_way       (i_hit_way),
      .o_lookup_stalled(o_lookup_stalled)
  );

endmodule
