interface smp_mon_if(
  input logic clk,
  input logic rst_n
);

  logic [31:0] c0_imem_addr;
  logic [31:0] c1_imem_addr;

  logic [3:0]   M_AXI_AWID;
  logic [31:0]  M_AXI_AWADDR;
  logic [7:0]   M_AXI_AWLEN;
  logic         M_AXI_AWVALID;
  logic         M_AXI_AWREADY;

  logic [15:0]  M_AXI_WSTRB;
  logic         M_AXI_WLAST;
  logic         M_AXI_WVALID;
  logic         M_AXI_WREADY;

  logic [3:0]   M_AXI_BID;
  logic [1:0]   M_AXI_BRESP;
  logic         M_AXI_BVALID;
  logic         M_AXI_BREADY;

  logic [3:0]   M_AXI_ARID;
  logic [31:0]  M_AXI_ARADDR;
  logic [7:0]   M_AXI_ARLEN;
  logic         M_AXI_ARVALID;
  logic         M_AXI_ARREADY;

  logic [3:0]   M_AXI_RID;
  logic [1:0]   M_AXI_RRESP;
  logic         M_AXI_RLAST;
  logic         M_AXI_RVALID;
  logic         M_AXI_RREADY;

  logic         bus_req_valid;
  logic [2:0]   bus_req_cmd;
  logic [31:0]  bus_req_addr;
  logic [1:0]   bus_req_src;

  logic         i_bus_gnt_valid;
  logic [1:0]   i_bus_gnt_dst;
  logic         i_bus_gnt_ok;

  logic         d_bus_gnt_valid;
  logic [1:0]   d_bus_gnt_dst;
  logic [31:0]  d_bus_gnt_addr;
  logic [1:0]   d_bus_gnt_state;
  logic         d_bus_gnt_ok;

  logic         bus_dat_valid;
  logic [1:0]   bus_dat_dst;
  logic [31:0]  bus_dat_addr;
  logic [2:0]   bus_dat_beat;
  logic         bus_dat_last;

endinterface
