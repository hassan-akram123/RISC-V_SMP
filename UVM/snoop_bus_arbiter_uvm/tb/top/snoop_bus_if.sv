interface snoop_bus_if(input logic clk, input logic rst_n);

  // -----------------------------
  // A) Request inputs
  // -----------------------------
  logic        i0_req_valid;
  logic        i0_req_ready;
  logic [2:0]  i0_req_cmd;
  logic [31:0] i0_req_addr;
  logic [1:0]  i0_req_src;

  logic        i1_req_valid;
  logic        i1_req_ready;
  logic [2:0]  i1_req_cmd;
  logic [31:0] i1_req_addr;
  logic [1:0]  i1_req_src;

  logic        d0_req_valid;
  logic        d0_req_ready;
  logic [2:0]  d0_req_cmd;
  logic [31:0] d0_req_addr;
  logic [1:0]  d0_req_src;

  logic        d1_req_valid;
  logic        d1_req_ready;
  logic [2:0]  d1_req_cmd;
  logic [31:0] d1_req_addr;
  logic [1:0]  d1_req_src;

  // -----------------------------
  // B) Broadcast request
  // -----------------------------
  logic        bus_req_valid;
  logic [2:0]  bus_req_cmd;
  logic [31:0] bus_req_addr;
  logic [1:0]  bus_req_src;

  // -----------------------------
  // C) Snoop responses
  // -----------------------------
  logic        d0_snp_rsp_valid;
  logic        d0_snp_rsp_hit;
  logic [1:0]  d0_snp_rsp_state;
  logic        d0_snp_rsp_has_data;
  logic        d0_snp_rsp_ack;

  logic        d1_snp_rsp_valid;
  logic        d1_snp_rsp_hit;
  logic [1:0]  d1_snp_rsp_state;
  logic        d1_snp_rsp_has_data;
  logic        d1_snp_rsp_ack;

  logic        l2_snp_valid;
  logic        l2_snp_hit;
  logic        l2_snp_has_data;
  logic        l2_snp_ack;

  // -----------------------------
  // D) Suppliers
  // -----------------------------
  logic        d0_sup_valid;
  logic        d0_sup_ready;
  logic [63:0] d0_sup_data;
  logic [2:0]  d0_sup_beat;
  logic        d0_sup_last;

  logic        d1_sup_valid;
  logic        d1_sup_ready;
  logic [63:0] d1_sup_data;
  logic [2:0]  d1_sup_beat;
  logic        d1_sup_last;

  logic        l2_sup_valid;
  logic        l2_sup_ready;
  logic [63:0] l2_sup_data;
  logic [2:0]  l2_sup_beat;
  logic        l2_sup_last;

  // -----------------------------
  // E) Data bus
  // -----------------------------
  logic        bus_dat_valid;
  logic [1:0]  bus_dat_dst;
  logic [31:0] bus_dat_addr;
  logic [63:0] bus_dat_data;
  logic [2:0]  bus_dat_beat;
  logic        bus_dat_last;

  // -----------------------------
  // F) Grants
  // -----------------------------
  logic        i_bus_gnt_valid;
  logic [1:0]  i_bus_gnt_dst;
  logic        i_bus_gnt_ok;

  logic        d_bus_gnt_valid;
  logic [1:0]  d_bus_gnt_dst;
  logic [31:0] d_bus_gnt_addr;
  logic [1:0]  d_bus_gnt_state;
  logic        d_bus_gnt_ok;

  task automatic drive_idle();
    i0_req_valid      = 0;
    i0_req_cmd        = '0;
    i0_req_addr       = '0;
    i0_req_src        = '0;

    i1_req_valid      = 0;
    i1_req_cmd        = '0;
    i1_req_addr       = '0;
    i1_req_src        = '0;

    d0_req_valid      = 0;
    d0_req_cmd        = '0;
    d0_req_addr       = '0;
    d0_req_src        = '0;

    d1_req_valid      = 0;
    d1_req_cmd        = '0;
    d1_req_addr       = '0;
    d1_req_src        = '0;

    d0_snp_rsp_valid  = 0;
    d0_snp_rsp_hit    = 0;
    d0_snp_rsp_state  = '0;
    d0_snp_rsp_has_data = 0;
    d0_snp_rsp_ack    = 0;

    d1_snp_rsp_valid  = 0;
    d1_snp_rsp_hit    = 0;
    d1_snp_rsp_state  = '0;
    d1_snp_rsp_has_data = 0;
    d1_snp_rsp_ack    = 0;

    l2_snp_valid      = 0;
    l2_snp_hit        = 0;
    l2_snp_has_data   = 0;
    l2_snp_ack        = 0;

    d0_sup_valid      = 0;
    d0_sup_data       = '0;
    d0_sup_beat       = '0;
    d0_sup_last       = 0;

    d1_sup_valid      = 0;
    d1_sup_data       = '0;
    d1_sup_beat       = '0;
    d1_sup_last       = 0;

    l2_sup_valid      = 0;
    l2_sup_data       = '0;
    l2_sup_beat       = '0;
    l2_sup_last       = 0;
  endtask

endinterface
