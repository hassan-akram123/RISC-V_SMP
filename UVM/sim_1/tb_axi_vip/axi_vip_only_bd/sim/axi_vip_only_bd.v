//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Apr  7 08:23:04 2026
//Host        : Aized-Soban running 64-bit major release  (build 9200)
//Command     : generate_target axi_vip_only_bd.bd
//Design      : axi_vip_only_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_vip_only_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_vip_only_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_vip_only_bd.hwdef" *) 
module axi_vip_only_bd
   (S_AXI_0_araddr,
    S_AXI_0_arburst,
    S_AXI_0_arcache,
    S_AXI_0_arid,
    S_AXI_0_arlen,
    S_AXI_0_arlock,
    S_AXI_0_arprot,
    S_AXI_0_arqos,
    S_AXI_0_arready,
    S_AXI_0_arregion,
    S_AXI_0_arsize,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awburst,
    S_AXI_0_awcache,
    S_AXI_0_awid,
    S_AXI_0_awlen,
    S_AXI_0_awlock,
    S_AXI_0_awprot,
    S_AXI_0_awqos,
    S_AXI_0_awready,
    S_AXI_0_awregion,
    S_AXI_0_awsize,
    S_AXI_0_awvalid,
    S_AXI_0_bid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rid,
    S_AXI_0_rlast,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wlast,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    aclk_0,
    aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN axi_vip_only_bd_aclk_0, DATA_WIDTH 128, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARBURST" *) input [1:0]S_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARCACHE" *) input [3:0]S_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARID" *) input [3:0]S_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARLEN" *) input [7:0]S_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARLOCK" *) input [0:0]S_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT" *) input [2:0]S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARQOS" *) input [3:0]S_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY" *) output S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREGION" *) input [3:0]S_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARSIZE" *) input [2:0]S_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID" *) input S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR" *) input [31:0]S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWBURST" *) input [1:0]S_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWCACHE" *) input [3:0]S_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWID" *) input [3:0]S_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWLEN" *) input [7:0]S_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWLOCK" *) input [0:0]S_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT" *) input [2:0]S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWQOS" *) input [3:0]S_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY" *) output S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREGION" *) input [3:0]S_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWSIZE" *) input [2:0]S_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID" *) input S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BID" *) output [3:0]S_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY" *) input S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP" *) output [1:0]S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID" *) output S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA" *) output [127:0]S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RID" *) output [3:0]S_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RLAST" *) output S_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY" *) input S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP" *) output [1:0]S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID" *) output S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA" *) input [127:0]S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WLAST" *) input S_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY" *) output S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB" *) input [15:0]S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID" *) input S_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF S_AXI_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN axi_vip_only_bd_aclk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;

  wire [31:0]S_AXI_0_1_ARADDR;
  wire [1:0]S_AXI_0_1_ARBURST;
  wire [3:0]S_AXI_0_1_ARCACHE;
  wire [3:0]S_AXI_0_1_ARID;
  wire [7:0]S_AXI_0_1_ARLEN;
  wire [0:0]S_AXI_0_1_ARLOCK;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire [3:0]S_AXI_0_1_ARQOS;
  wire S_AXI_0_1_ARREADY;
  wire [3:0]S_AXI_0_1_ARREGION;
  wire [2:0]S_AXI_0_1_ARSIZE;
  wire S_AXI_0_1_ARVALID;
  wire [31:0]S_AXI_0_1_AWADDR;
  wire [1:0]S_AXI_0_1_AWBURST;
  wire [3:0]S_AXI_0_1_AWCACHE;
  wire [3:0]S_AXI_0_1_AWID;
  wire [7:0]S_AXI_0_1_AWLEN;
  wire [0:0]S_AXI_0_1_AWLOCK;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire [3:0]S_AXI_0_1_AWQOS;
  wire S_AXI_0_1_AWREADY;
  wire [3:0]S_AXI_0_1_AWREGION;
  wire [2:0]S_AXI_0_1_AWSIZE;
  wire S_AXI_0_1_AWVALID;
  wire [3:0]S_AXI_0_1_BID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [127:0]S_AXI_0_1_RDATA;
  wire [3:0]S_AXI_0_1_RID;
  wire S_AXI_0_1_RLAST;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [127:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WLAST;
  wire S_AXI_0_1_WREADY;
  wire [15:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire aclk_0_1;
  wire aresetn_0_1;

  assign S_AXI_0_1_ARADDR = S_AXI_0_araddr[31:0];
  assign S_AXI_0_1_ARBURST = S_AXI_0_arburst[1:0];
  assign S_AXI_0_1_ARCACHE = S_AXI_0_arcache[3:0];
  assign S_AXI_0_1_ARID = S_AXI_0_arid[3:0];
  assign S_AXI_0_1_ARLEN = S_AXI_0_arlen[7:0];
  assign S_AXI_0_1_ARLOCK = S_AXI_0_arlock[0];
  assign S_AXI_0_1_ARPROT = S_AXI_0_arprot[2:0];
  assign S_AXI_0_1_ARQOS = S_AXI_0_arqos[3:0];
  assign S_AXI_0_1_ARREGION = S_AXI_0_arregion[3:0];
  assign S_AXI_0_1_ARSIZE = S_AXI_0_arsize[2:0];
  assign S_AXI_0_1_ARVALID = S_AXI_0_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_0_awaddr[31:0];
  assign S_AXI_0_1_AWBURST = S_AXI_0_awburst[1:0];
  assign S_AXI_0_1_AWCACHE = S_AXI_0_awcache[3:0];
  assign S_AXI_0_1_AWID = S_AXI_0_awid[3:0];
  assign S_AXI_0_1_AWLEN = S_AXI_0_awlen[7:0];
  assign S_AXI_0_1_AWLOCK = S_AXI_0_awlock[0];
  assign S_AXI_0_1_AWPROT = S_AXI_0_awprot[2:0];
  assign S_AXI_0_1_AWQOS = S_AXI_0_awqos[3:0];
  assign S_AXI_0_1_AWREGION = S_AXI_0_awregion[3:0];
  assign S_AXI_0_1_AWSIZE = S_AXI_0_awsize[2:0];
  assign S_AXI_0_1_AWVALID = S_AXI_0_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_0_bready;
  assign S_AXI_0_1_RREADY = S_AXI_0_rready;
  assign S_AXI_0_1_WDATA = S_AXI_0_wdata[127:0];
  assign S_AXI_0_1_WLAST = S_AXI_0_wlast;
  assign S_AXI_0_1_WSTRB = S_AXI_0_wstrb[15:0];
  assign S_AXI_0_1_WVALID = S_AXI_0_wvalid;
  assign S_AXI_0_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_0_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_0_bid[3:0] = S_AXI_0_1_BID;
  assign S_AXI_0_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_0_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_0_rdata[127:0] = S_AXI_0_1_RDATA;
  assign S_AXI_0_rid[3:0] = S_AXI_0_1_RID;
  assign S_AXI_0_rlast = S_AXI_0_1_RLAST;
  assign S_AXI_0_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_0_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_0_wready = S_AXI_0_1_WREADY;
  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  axi_vip_only_bd_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_arburst(S_AXI_0_1_ARBURST),
        .s_axi_arcache(S_AXI_0_1_ARCACHE),
        .s_axi_arid(S_AXI_0_1_ARID),
        .s_axi_arlen(S_AXI_0_1_ARLEN),
        .s_axi_arlock(S_AXI_0_1_ARLOCK),
        .s_axi_arprot(S_AXI_0_1_ARPROT),
        .s_axi_arqos(S_AXI_0_1_ARQOS),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arregion(S_AXI_0_1_ARREGION),
        .s_axi_arsize(S_AXI_0_1_ARSIZE),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awburst(S_AXI_0_1_AWBURST),
        .s_axi_awcache(S_AXI_0_1_AWCACHE),
        .s_axi_awid(S_AXI_0_1_AWID),
        .s_axi_awlen(S_AXI_0_1_AWLEN),
        .s_axi_awlock(S_AXI_0_1_AWLOCK),
        .s_axi_awprot(S_AXI_0_1_AWPROT),
        .s_axi_awqos(S_AXI_0_1_AWQOS),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awregion(S_AXI_0_1_AWREGION),
        .s_axi_awsize(S_AXI_0_1_AWSIZE),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bid(S_AXI_0_1_BID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rid(S_AXI_0_1_RID),
        .s_axi_rlast(S_AXI_0_1_RLAST),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wlast(S_AXI_0_1_WLAST),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID));
endmodule
