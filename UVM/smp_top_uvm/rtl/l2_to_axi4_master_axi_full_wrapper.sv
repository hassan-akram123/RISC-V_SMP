
// Auto-generated wrapper to expose a Vivado-friendly AXI4-Full master interface
// around the existing l2_to_axi4_master (which omits some sideband signals).
module l2_to_axi4_master_axi_full_wrapper #(
    parameter int ADDR_WIDTH        = 32,
    parameter int LINE_WIDTH        = 512,
    parameter int AXI_DATA_WIDTH    = 128,
    parameter int IDW               = 4,
    parameter int NUM_RD_OUTSTANDING= 8,
    parameter int NUM_WR_OUTSTANDING= 8,
    parameter int RD_REQ_FIFO_DEPTH = 8,
    parameter int WR_REQ_FIFO_DEPTH = 8
)(
    input  logic                     aclk,
    input  logic                     aresetn,   // active-low, connect to proc_sys_reset/peripheral_aresetn

    // Controller-side request interface (unchanged)
    input  logic                     mem_req_valid,
    output logic                     mem_req_ready,
    input  logic                     mem_req_rw,
    input  logic [IDW-1:0]           mem_req_id,
    input  logic [ADDR_WIDTH-1:0]    mem_req_addr,
    input  logic [LINE_WIDTH-1:0]    mem_req_line,

    output logic                     mem_rresp_valid,
    input  logic                     mem_rresp_ready,
    output logic [IDW-1:0]           mem_rresp_id,
    output logic [LINE_WIDTH-1:0]    mem_rresp_line,
    output logic [1:0]               mem_rresp_resp,

    output logic                     mem_wresp_valid,
    input  logic                     mem_wresp_ready,
    output logic [IDW-1:0]           mem_wresp_id,
    output logic [1:0]               mem_wresp_resp,

    // AXI4-Full Master (Vivado-friendly superset)
    output logic [IDW-1:0]           M_AXI_AWID,
    output logic [ADDR_WIDTH-1:0]    M_AXI_AWADDR,
    output logic [7:0]               M_AXI_AWLEN,
    output logic [2:0]               M_AXI_AWSIZE,
    output logic [1:0]               M_AXI_AWBURST,
    output logic                     M_AXI_AWLOCK,
    output logic [3:0]               M_AXI_AWCACHE,
    output logic [2:0]               M_AXI_AWPROT,
    output logic [3:0]               M_AXI_AWQOS,
    output logic [3:0]               M_AXI_AWREGION,
    output logic                     M_AXI_AWVALID,
    input  logic                     M_AXI_AWREADY,

    output logic [AXI_DATA_WIDTH-1:0]   M_AXI_WDATA,
    output logic [(AXI_DATA_WIDTH/8)-1:0] M_AXI_WSTRB,
    output logic                     M_AXI_WLAST,
    output logic                     M_AXI_WVALID,
    input  logic                     M_AXI_WREADY,

    input  logic [IDW-1:0]           M_AXI_BID,
    input  logic [1:0]               M_AXI_BRESP,
    input  logic                     M_AXI_BVALID,
    output logic                     M_AXI_BREADY,

    output logic [IDW-1:0]           M_AXI_ARID,
    output logic [ADDR_WIDTH-1:0]    M_AXI_ARADDR,
    output logic [7:0]               M_AXI_ARLEN,
    output logic [2:0]               M_AXI_ARSIZE,
    output logic [1:0]               M_AXI_ARBURST,
    output logic                     M_AXI_ARLOCK,
    output logic [3:0]               M_AXI_ARCACHE,
    output logic [2:0]               M_AXI_ARPROT,
    output logic [3:0]               M_AXI_ARQOS,
    output logic [3:0]               M_AXI_ARREGION,
    output logic                     M_AXI_ARVALID,
    input  logic                     M_AXI_ARREADY,

    input  logic [IDW-1:0]           M_AXI_RID,
    input  logic [AXI_DATA_WIDTH-1:0] M_AXI_RDATA,
    input  logic [1:0]               M_AXI_RRESP,
    input  logic                     M_AXI_RLAST,
    input  logic                     M_AXI_RVALID,
    output logic                     M_AXI_RREADY
);

    // Instantiate the original module (minimal AXI sideband set)
    l2_to_axi4_master #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .LINE_WIDTH(LINE_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .IDW(IDW),
        .NUM_RD_OUTSTANDING(NUM_RD_OUTSTANDING),
        .NUM_WR_OUTSTANDING(NUM_WR_OUTSTANDING),
        .RD_REQ_FIFO_DEPTH(RD_REQ_FIFO_DEPTH),
        .WR_REQ_FIFO_DEPTH(WR_REQ_FIFO_DEPTH)
    ) u_core (
        .clk              (aclk),
        .rst_n            (aresetn),

        .mem_req_valid    (mem_req_valid),
        .mem_req_ready    (mem_req_ready),
        .mem_req_rw       (mem_req_rw),
        .mem_req_id       (mem_req_id),
        .mem_req_addr     (mem_req_addr),
        .mem_req_line     (mem_req_line),

        .mem_rresp_valid  (mem_rresp_valid),
        .mem_rresp_ready  (mem_rresp_ready),
        .mem_rresp_id     (mem_rresp_id),
        .mem_rresp_line   (mem_rresp_line),
        .mem_rresp_resp   (mem_rresp_resp),

        .mem_bresp_valid  (mem_wresp_valid),
        .mem_bresp_ready  (mem_wresp_ready),
        .mem_bresp_id     (mem_wresp_id),
        .mem_bresp_resp   (mem_wresp_resp),

        .M_AXI_AWID       (M_AXI_AWID),
        .M_AXI_AWADDR     (M_AXI_AWADDR),
        .M_AXI_AWLEN      (M_AXI_AWLEN),
        .M_AXI_AWSIZE     (M_AXI_AWSIZE),
        .M_AXI_AWBURST    (M_AXI_AWBURST),
        .M_AXI_AWVALID    (M_AXI_AWVALID),
        .M_AXI_AWREADY    (M_AXI_AWREADY),

        .M_AXI_WDATA      (M_AXI_WDATA),
        .M_AXI_WSTRB      (M_AXI_WSTRB),
        .M_AXI_WLAST      (M_AXI_WLAST),
        .M_AXI_WVALID     (M_AXI_WVALID),
        .M_AXI_WREADY     (M_AXI_WREADY),

        .M_AXI_BID        (M_AXI_BID),
        .M_AXI_BRESP      (M_AXI_BRESP),
        .M_AXI_BVALID     (M_AXI_BVALID),
        .M_AXI_BREADY     (M_AXI_BREADY),

        .M_AXI_ARID       (M_AXI_ARID),
        .M_AXI_ARADDR     (M_AXI_ARADDR),
        .M_AXI_ARLEN      (M_AXI_ARLEN),
        .M_AXI_ARSIZE     (M_AXI_ARSIZE),
        .M_AXI_ARBURST    (M_AXI_ARBURST),
        .M_AXI_ARVALID    (M_AXI_ARVALID),
        .M_AXI_ARREADY    (M_AXI_ARREADY),

        .M_AXI_RID        (M_AXI_RID),
        .M_AXI_RDATA      (M_AXI_RDATA),
        .M_AXI_RRESP      (M_AXI_RRESP),
        .M_AXI_RLAST      (M_AXI_RLAST),
        .M_AXI_RVALID     (M_AXI_RVALID),
        .M_AXI_RREADY     (M_AXI_RREADY)
    );

    // Tie off sideband outputs that MIG/SmartConnect typically expect.
    // (Safe, non-privileged, normal memory accesses.)
    assign M_AXI_AWLOCK   = 1'b0;
    assign M_AXI_AWCACHE  = 4'b0011; // Normal, non-cacheable by default (edit if desired)
    assign M_AXI_AWPROT   = 3'b000;
    assign M_AXI_AWQOS    = 4'b0000;
    assign M_AXI_AWREGION = 4'b0000;

    assign M_AXI_ARLOCK   = 1'b0;
    assign M_AXI_ARCACHE  = 4'b0011;
    assign M_AXI_ARPROT   = 3'b000;
    assign M_AXI_ARQOS    = 4'b0000;
    assign M_AXI_ARREGION = 4'b0000;

endmodule
