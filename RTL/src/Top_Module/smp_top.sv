`timescale 1ns/1ps
// ============================================================================
// smp_top_remade.sv
// Dual-core RV32I + private L1I/L1D + shared snoop bus + shared L2 + AXI4-Full
//
// NOTE:
// - All cache/snoop blocks in your uploaded RTL use active-low reset (rst_n).
// - rv32i_top uses resetn_i (active-low).
// - This top therefore exposes rst_n (active-low) for clean wiring.
//
// L2<->AXI adapter side ports:
//   Uses l2_to_axi4_master's controller-side interface:
//     mem_req_* + mem_rresp_* + mem_bresp_*
// - L2_Cache_Controller only has mem_req_* + mem_resp_* (no IDs / split resp).
//   We bridge by:
//     * mem_req_id      = '0
//     * mem_rresp_ready = 1
//     * mem_bresp_ready = 1
//     * L2 mem_resp_valid/line driven ONLY from mem_rresp_valid/line
//       (do NOT OR in bresp, because L2 can issue WB then RD back-to-back).
// ============================================================================

module smp_top #(
    parameter int unsigned MEM_DEPTH_BEATS = 16384,
    parameter string       INIT_HEX        = ""
)(
    input  logic        clk,
    input  logic        rst_n
);

    // =====================================================================
    // Internal AXI4-Full signals between L2 AXI adapter and on-chip SRAM
    // =====================================================================
    logic [3:0]   M_AXI_AWID;
    logic [31:0]  M_AXI_AWADDR;
    logic [7:0]   M_AXI_AWLEN;
    logic [2:0]   M_AXI_AWSIZE;
    logic [1:0]   M_AXI_AWBURST;
    logic         M_AXI_AWLOCK;
    logic [3:0]   M_AXI_AWCACHE;
    logic [2:0]   M_AXI_AWPROT;
    logic [3:0]   M_AXI_AWQOS;
    logic [3:0]   M_AXI_AWREGION;
    logic         M_AXI_AWVALID;
    logic         M_AXI_AWREADY;

    logic [127:0] M_AXI_WDATA;
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
    logic [2:0]   M_AXI_ARSIZE;
    logic [1:0]   M_AXI_ARBURST;
    logic         M_AXI_ARLOCK;
    logic [3:0]   M_AXI_ARCACHE;
    logic [2:0]   M_AXI_ARPROT;
    logic [3:0]   M_AXI_ARQOS;
    logic [3:0]   M_AXI_ARREGION;
    logic         M_AXI_ARVALID;
    logic         M_AXI_ARREADY;

    logic [3:0]   M_AXI_RID;
    logic [127:0] M_AXI_RDATA;
    logic [1:0]   M_AXI_RRESP;
    logic         M_AXI_RLAST;
    logic         M_AXI_RVALID;
    logic         M_AXI_RREADY;

    // =====================================================================
    // Core signals
    // =====================================================================
    logic        c0_illegal, c1_illegal;

    logic [31:0] c0_imem_addr, c1_imem_addr;
    logic [31:0] c0_imem_inst, c1_imem_inst;

    logic [63:0] c0_mem_addr, c1_mem_addr;
    logic [63:0] c0_mem_wdat, c1_mem_wdat;
    logic [63:0] c0_mem_rdat, c1_mem_rdat;
    logic        c0_mem_wr,   c1_mem_wr;
    logic [7:0]  c0_mem_wstrb,c1_mem_wstrb;
    logic        c0_mem_rd,   c1_mem_rd;
    logic        c0_mem_ack,  c1_mem_ack;

    rv64i_top u_core0 (
        .clk_i          (clk),
        .resetn_i       (rst_n),
        .illegal_inst_o (c0_illegal),
        .imem_addr_o    (c0_imem_addr),
        .imem_inst_i    (c0_imem_inst),
        .imem_valid_i   (i0_if_resp_valid),
        .mem_addr_o     (c0_mem_addr),
        .mem_dat_o      (c0_mem_wdat),
        .mem_dat_i      (c0_mem_rdat),
        .mem_write_o    (c0_mem_wr),
        .mem_wstrb_o    (c0_mem_wstrb),
        .mem_read_o     (c0_mem_rd),
        .mem_ack_i      (c0_mem_ack)
    );

    rv64i_top u_core1 (
        .clk_i          (clk),
        .resetn_i       (rst_n),
        .illegal_inst_o (c1_illegal),
        .imem_addr_o    (c1_imem_addr),
        .imem_inst_i    (c1_imem_inst),
        .imem_valid_i   (i1_if_resp_valid),
        .mem_addr_o     (c1_mem_addr),
        .mem_dat_o      (c1_mem_wdat),
        .mem_dat_i      (c1_mem_rdat),
        .mem_write_o    (c1_mem_wr),
        .mem_wstrb_o    (c1_mem_wstrb),
        .mem_read_o     (c1_mem_rd),
        .mem_ack_i      (c1_mem_ack)
    );

    // =====================================================================
    // L1I (core0/core1): controller + storage
    // =====================================================================
    // Core0 I$ CPU-side
    logic        i0_if_req_valid, i0_if_req_ready;
    logic        i0_if_resp_valid;
    logic [63:0] i0_if_resp_data;

    // Core1 I$ CPU-side
    logic        i1_if_req_valid, i1_if_req_ready;
    logic        i1_if_resp_valid;
    logic [63:0] i1_if_resp_data;

    // Provide a safe instruction when no resp yet (NOP = addi x0,x0,0)
    assign c0_imem_inst = (i0_if_resp_valid)
                        ? (c0_imem_addr[2] ? i0_if_resp_data[63:32] : i0_if_resp_data[31:0])
                        : 32'h0000_0013;
    assign c1_imem_inst = (i1_if_resp_valid)
                        ? (c1_imem_addr[2] ? i1_if_resp_data[63:32] : i1_if_resp_data[31:0])
                        : 32'h0000_0013;

    // Always request current PC; core stalls internally until imem_valid_i asserts
    assign i0_if_req_valid = 1'b1;
    assign i1_if_req_valid = 1'b1;

    // I$ controller <-> I$ storage
    logic        i0_lookup_en, i0_fill_en;
    logic [31:0] i0_lookup_addr, i0_fill_addr;
    logic [2:0]  i0_fill_way;
    logic [511:0]i0_fill_line;
    logic        i0_i_hit, i0_i_rvalid, i0_lookup_stalled;
    logic [63:0] i0_i_rdata;
    logic [2:0]  i0_i_hit_way;

    logic        i1_lookup_en, i1_fill_en;
    logic [31:0] i1_lookup_addr, i1_fill_addr;
    logic [2:0]  i1_fill_way;
    logic [511:0]i1_fill_line;
    logic        i1_i_hit, i1_i_rvalid, i1_lookup_stalled;
    logic [63:0] i1_i_rdata;
    logic [2:0]  i1_i_hit_way;

    // I$ controller <-> arbiter request
    logic        i0_req_valid, i0_req_ready;
    logic [2:0]  i0_req_cmd;
    logic [31:0] i0_req_addr;
    logic [1:0]  i0_req_src;

    logic        i1_req_valid, i1_req_ready;
    logic [2:0]  i1_req_cmd;
    logic [31:0] i1_req_addr;
    logic [1:0]  i1_req_src;

    // Bus signals (from arbiter)
    logic        bus_dat_valid;
    logic [1:0]  bus_dat_dst;
    logic [63:0] bus_dat_data;
    logic [2:0]  bus_dat_beat;
    logic        bus_dat_last;
    logic [31:0] bus_dat_addr; // reconstructed from arbiter grant addr (see below)

    logic        i_bus_gnt_valid;
    logic [1:0]  i_bus_gnt_dst;
    logic        i_bus_gnt_ok;

    // Instantiate I$ storage
    L1_Icache u_l1i0 (
        .clk             (clk),
        .rst_n           (rst_n),
        .i_lookup_en     (i0_lookup_en),
        .i_lookup_addr   (i0_lookup_addr),
        .i_fill_en       (i0_fill_en),
        .i_fill_addr     (i0_fill_addr),
        .i_fill_way      (i0_fill_way),
        .i_fill_line     (i0_fill_line),
        .i_rdata         (i0_i_rdata),
        .i_hit           (i0_i_hit),
        .i_rvalid        (i0_i_rvalid),
        .i_hit_way       (i0_i_hit_way),
        .o_lookup_stalled(i0_lookup_stalled)
    );

    L1_Icache u_l1i1 (
        .clk             (clk),
        .rst_n           (rst_n),
        .i_lookup_en     (i1_lookup_en),
        .i_lookup_addr   (i1_lookup_addr),
        .i_fill_en       (i1_fill_en),
        .i_fill_addr     (i1_fill_addr),
        .i_fill_way      (i1_fill_way),
        .i_fill_line     (i1_fill_line),
        .i_rdata         (i1_i_rdata),
        .i_hit           (i1_i_hit),
        .i_rvalid        (i1_i_rvalid),
        .i_hit_way       (i1_i_hit_way),
        .o_lookup_stalled(i1_lookup_stalled)
    );

    // Instantiate I$ controllers
    // Use real bus_dat_addr from snoop_bus_arbiter for refill filtering.
    L1_Icache_Controller #(
        .I_SRC_ID(2'd0),
        .USE_BUS_DAT_ADDR(1'b1)
    ) u_l1i0_ctrl (
        .clk           (clk),
        .rst_n         (rst_n),

        .if_req_valid  (i0_if_req_valid),
        .if_req_addr   (c0_imem_addr),
        .if_req_ready  (i0_if_req_ready),
        .if_resp_valid (i0_if_resp_valid),
        .if_resp_data  (i0_if_resp_data),

        .i_lookup_en   (i0_lookup_en),
        .i_lookup_addr (i0_lookup_addr),
        .i_fill_en     (i0_fill_en),
        .i_fill_addr   (i0_fill_addr),
        .i_fill_way    (i0_fill_way),
        .i_fill_line   (i0_fill_line),

        .i_rvalid      (i0_i_rvalid),
        .i_rdata       (i0_i_rdata),
        .i_hit         (i0_i_hit),
        .i_hit_way     (i0_i_hit_way),
        .o_lookup_stalled(i0_lookup_stalled),

        .i_req_valid   (i0_req_valid),
        .i_req_ready   (i0_req_ready),
        .i_req_cmd     (i0_req_cmd),
        .i_req_addr    (i0_req_addr),
        .i_req_src     (i0_req_src),

        .bus_dat_valid (bus_dat_valid),
        .bus_dat_data  (bus_dat_data),
        .bus_dat_beat  (bus_dat_beat),
        .bus_dat_last  (bus_dat_last),
        .bus_dat_dst   (bus_dat_dst),
        .bus_dat_addr  (bus_dat_addr),

        .bus_gnt_valid (i_bus_gnt_valid),
        .bus_gnt_ok    (i_bus_gnt_ok)
    );

    L1_Icache_Controller #(
        .I_SRC_ID(2'd1),
        .USE_BUS_DAT_ADDR(1'b1)
    ) u_l1i1_ctrl (
        .clk           (clk),
        .rst_n         (rst_n),

        .if_req_valid  (i1_if_req_valid),
        .if_req_addr   (c1_imem_addr),
        .if_req_ready  (i1_if_req_ready),
        .if_resp_valid (i1_if_resp_valid),
        .if_resp_data  (i1_if_resp_data),

        .i_lookup_en   (i1_lookup_en),
        .i_lookup_addr (i1_lookup_addr),
        .i_fill_en     (i1_fill_en),
        .i_fill_addr   (i1_fill_addr),
        .i_fill_way    (i1_fill_way),
        .i_fill_line   (i1_fill_line),

        .i_rvalid      (i1_i_rvalid),
        .i_rdata       (i1_i_rdata),
        .i_hit         (i1_i_hit),
        .i_hit_way     (i1_i_hit_way),
        .o_lookup_stalled(i1_lookup_stalled),

        .i_req_valid   (i1_req_valid),
        .i_req_ready   (i1_req_ready),
        .i_req_cmd     (i1_req_cmd),
        .i_req_addr    (i1_req_addr),
        .i_req_src     (i1_req_src),

        .bus_dat_valid (bus_dat_valid),
        .bus_dat_data  (bus_dat_data),
        .bus_dat_beat  (bus_dat_beat),
        .bus_dat_last  (bus_dat_last),
        .bus_dat_dst   (bus_dat_dst),
        .bus_dat_addr  (bus_dat_addr),

        .bus_gnt_valid (i_bus_gnt_valid),
        .bus_gnt_ok    (i_bus_gnt_ok)
    );

    // =====================================================================
    // L1D (core0/core1): controller + storage
    // =====================================================================
    // Core0 D$ CPU-side -> controller
    logic        d0_ldst_valid, d0_ldst_is_store;
    logic [31:0] d0_ldst_addr;
    logic [63:0] d0_ldst_wdata;
    logic [7:0]  d0_ldst_wstrb;
    logic        d0_ldst_ready;
    logic        d0_ldst_resp_valid;
    logic [63:0] d0_ldst_rdata;

    // Core1
    logic        d1_ldst_valid, d1_ldst_is_store;
    logic [31:0] d1_ldst_addr;
    logic [63:0] d1_ldst_wdata;
    logic [7:0]  d1_ldst_wstrb;
    logic        d1_ldst_ready;
    logic        d1_ldst_resp_valid;
    logic [63:0] d1_ldst_rdata;

    // Adapt core DMEM to 64-bit cache-side
    assign d0_ldst_valid    = c0_mem_rd | c0_mem_wr;
    assign d0_ldst_is_store = c0_mem_wr;
    assign d0_ldst_addr     = c0_mem_addr[31:0];
    assign d0_ldst_wdata    = c0_mem_wdat;
    assign d0_ldst_wstrb    = c0_mem_wr ? c0_mem_wstrb : 8'b0;

    assign d1_ldst_valid    = c1_mem_rd | c1_mem_wr;
    assign d1_ldst_is_store = c1_mem_wr;
    assign d1_ldst_addr     = c1_mem_addr[31:0];
    assign d1_ldst_wdata    = c1_mem_wdat;
    assign d1_ldst_wstrb    = c1_mem_wr ? c1_mem_wstrb : 8'b0;

    // Return full 64b to core
    assign c0_mem_rdat = d0_ldst_rdata;
    assign c1_mem_rdat = d1_ldst_rdata;

    // Use controller response as ack (core has explicit ack)
    assign c0_mem_ack  = d0_ldst_resp_valid;
    assign c1_mem_ack  = d1_ldst_resp_valid;

    // D$ controller <-> D$ storage wires (core0)
    logic        d0_lookup_en, d0_lookup_is_store;
    logic [31:0] d0_lookup_addr;
    logic        d0_lookup_stall;

    logic        d0_store_en;
    logic [63:0] d0_store_wdata;
    logic [7:0]  d0_store_wstrb;

    logic        d0_fill_en;
    logic [31:0] d0_fill_addr;
    logic [2:0]  d0_fill_way;
    logic [511:0]d0_fill_line;
    logic [1:0]  d0_fill_mesi;

    logic        d0_set_state_en;
    logic [31:0] d0_set_state_addr;
    logic [2:0]  d0_set_state_way;
    logic [1:0]  d0_set_state_val;

    logic        d0_line_rd_en;
    logic [31:0] d0_line_rd_addr;
    logic [511:0]d0_line_rd_data;
    logic        d0_line_rd_valid;

    logic        d0_vmeta_en;
    logic [5:0]  d0_vmeta_set;
    logic [2:0]  d0_vmeta_way;
    logic        d0_vmeta_valid;
    logic [19:0] d0_vmeta_tag;
    logic        d0_vmeta_line_valid;
    logic [1:0]  d0_vmeta_mesi;
    logic        d0_vmeta_dirty;

    logic        d0_vline_rd_en;
    logic [5:0]  d0_vline_rd_set;
    logic [2:0]  d0_vline_rd_way;
    logic        d0_vline_rd_valid;
    logic [511:0]d0_vline_rd_data;
    logic [19:0] d0_vline_rd_tag;
    logic        d0_vline_rd_entry_valid;
    logic [1:0]  d0_vline_rd_mesi;
    logic        d0_vline_rd_dirty;

    logic [63:0] d0_rdata;
    logic        d0_hit;
    logic        d0_rvalid;
    logic [2:0]  d0_hit_way;
    logic [1:0]  d0_mesi_state;
    logic        d0_dirty;
    logic        d0_lookup_valid;

    // D$ controller <-> D$ storage wires (core1)
    logic        d1_lookup_en, d1_lookup_is_store;
    logic [31:0] d1_lookup_addr;
    logic        d1_lookup_stall;

    logic        d1_store_en;
    logic [63:0] d1_store_wdata;
    logic [7:0]  d1_store_wstrb;

    logic        d1_fill_en;
    logic [31:0] d1_fill_addr;
    logic [2:0]  d1_fill_way;
    logic [511:0]d1_fill_line;
    logic [1:0]  d1_fill_mesi;

    logic        d1_set_state_en;
    logic [31:0] d1_set_state_addr;
    logic [2:0]  d1_set_state_way;
    logic [1:0]  d1_set_state_val;

    logic        d1_line_rd_en;
    logic [31:0] d1_line_rd_addr;
    logic [511:0]d1_line_rd_data;
    logic        d1_line_rd_valid;

    logic        d1_vmeta_en;
    logic [5:0]  d1_vmeta_set;
    logic [2:0]  d1_vmeta_way;
    logic        d1_vmeta_valid;
    logic [19:0] d1_vmeta_tag;
    logic        d1_vmeta_line_valid;
    logic [1:0]  d1_vmeta_mesi;
    logic        d1_vmeta_dirty;

    logic        d1_vline_rd_en;
    logic [5:0]  d1_vline_rd_set;
    logic [2:0]  d1_vline_rd_way;
    logic        d1_vline_rd_valid;
    logic [511:0]d1_vline_rd_data;
    logic [19:0] d1_vline_rd_tag;
    logic        d1_vline_rd_entry_valid;
    logic [1:0]  d1_vline_rd_mesi;
    logic        d1_vline_rd_dirty;

    logic [63:0] d1_rdata;
    logic        d1_hit;
    logic        d1_rvalid;
    logic [2:0]  d1_hit_way;
    logic [1:0]  d1_mesi_state;
    logic        d1_dirty;
    logic        d1_lookup_valid;

    // D$ controller -> arbiter request
    logic        d0_req_valid, d0_req_ready;
    logic [2:0]  d0_req_cmd;
    logic [31:0] d0_req_addr;
    logic [1:0]  d0_req_src;

    logic        d1_req_valid, d1_req_ready;
    logic [2:0]  d1_req_cmd;
    logic [31:0] d1_req_addr;
    logic [1:0]  d1_req_src;

    // Arbiter broadcast request -> D$ controllers
    logic        bus_req_valid;
    logic [2:0]  bus_req_cmd;
    logic [31:0] bus_req_addr;
    logic [1:0]  bus_req_src;

    // D$ snoop responses -> arbiter
    logic        d0_snp_rsp_valid, d0_snp_rsp_hit, d0_snp_rsp_has_data, d0_snp_rsp_ack;
    logic [1:0]  d0_snp_rsp_state;

    logic        d1_snp_rsp_valid, d1_snp_rsp_hit, d1_snp_rsp_has_data, d1_snp_rsp_ack;
    logic [1:0]  d1_snp_rsp_state;

    // D$ suppliers -> arbiter
    logic        d0_sup_valid, d0_sup_ready;
    logic [63:0] d0_sup_data;
    logic [2:0]  d0_sup_beat;
    logic        d0_sup_last;

    logic        d1_sup_valid, d1_sup_ready;
    logic [63:0] d1_sup_data;
    logic [2:0]  d1_sup_beat;
    logic        d1_sup_last;

    // D$ grants from arbiter
    logic        d_bus_gnt_valid;
    logic [1:0]  d_bus_gnt_dst;
    logic [31:0] d_bus_gnt_addr;
    logic [1:0]  d_bus_gnt_state;
    logic        d_bus_gnt_ok;

    // L1D storage instances
    L1_Dcache u_l1d0 (
        .clk                (clk),
        .rst_n              (rst_n),
        .d_lookup_en        (d0_lookup_en),
        .d_lookup_addr      (d0_lookup_addr),
        .d_lookup_is_store  (d0_lookup_is_store),
        .d_lookup_stall     (d0_lookup_stall),
        .d_store_en         (d0_store_en),
        .d_store_wdata      (d0_store_wdata),
        .d_store_wstrb      (d0_store_wstrb),
        .d_fill_en          (d0_fill_en),
        .d_fill_addr        (d0_fill_addr),
        .d_fill_way         (d0_fill_way),
        .d_fill_line        (d0_fill_line),
        .d_fill_mesi        (d0_fill_mesi),
        .d_set_state_en     (d0_set_state_en),
        .d_set_state_addr   (d0_set_state_addr),
        .d_set_state_way    (d0_set_state_way),
        .d_set_state_val    (d0_set_state_val),
        .d_line_rd_en       (d0_line_rd_en),
        .d_line_rd_addr     (d0_line_rd_addr),
        .d_line_rd_data     (d0_line_rd_data),
        .d_line_rd_valid    (d0_line_rd_valid),
        .d_vmeta_en         (d0_vmeta_en),
        .d_vmeta_set        (d0_vmeta_set),
        .d_vmeta_way        (d0_vmeta_way),
        .d_vmeta_valid      (d0_vmeta_valid),
        .d_vmeta_tag        (d0_vmeta_tag),
        .d_vmeta_line_valid (d0_vmeta_line_valid),
        .d_vmeta_mesi       (d0_vmeta_mesi),
        .d_vmeta_dirty      (d0_vmeta_dirty),
        .d_vline_rd_en      (d0_vline_rd_en),
        .d_vline_rd_set     (d0_vline_rd_set),
        .d_vline_rd_way     (d0_vline_rd_way),
        .d_vline_rd_valid   (d0_vline_rd_valid),
        .d_vline_rd_data    (d0_vline_rd_data),
        .d_vline_rd_tag     (d0_vline_rd_tag),
        .d_vline_rd_entry_valid(d0_vline_rd_entry_valid),
        .d_vline_rd_mesi    (d0_vline_rd_mesi),
        .d_vline_rd_dirty   (d0_vline_rd_dirty),
        .d_rdata            (d0_rdata),
        .d_hit              (d0_hit),
        .d_rvalid           (d0_rvalid),
        .d_hit_way          (d0_hit_way),
        .d_mesi_state       (d0_mesi_state),
        .d_dirty            (d0_dirty),
        .d_lookup_valid     (d0_lookup_valid)
    );

    L1_Dcache u_l1d1 (
        .clk                (clk),
        .rst_n              (rst_n),
        .d_lookup_en        (d1_lookup_en),
        .d_lookup_addr      (d1_lookup_addr),
        .d_lookup_is_store  (d1_lookup_is_store),
        .d_lookup_stall     (d1_lookup_stall),
        .d_store_en         (d1_store_en),
        .d_store_wdata      (d1_store_wdata),
        .d_store_wstrb      (d1_store_wstrb),
        .d_fill_en          (d1_fill_en),
        .d_fill_addr        (d1_fill_addr),
        .d_fill_way         (d1_fill_way),
        .d_fill_line        (d1_fill_line),
        .d_fill_mesi        (d1_fill_mesi),
        .d_set_state_en     (d1_set_state_en),
        .d_set_state_addr   (d1_set_state_addr),
        .d_set_state_way    (d1_set_state_way),
        .d_set_state_val    (d1_set_state_val),
        .d_line_rd_en       (d1_line_rd_en),
        .d_line_rd_addr     (d1_line_rd_addr),
        .d_line_rd_data     (d1_line_rd_data),
        .d_line_rd_valid    (d1_line_rd_valid),
        .d_vmeta_en         (d1_vmeta_en),
        .d_vmeta_set        (d1_vmeta_set),
        .d_vmeta_way        (d1_vmeta_way),
        .d_vmeta_valid      (d1_vmeta_valid),
        .d_vmeta_tag        (d1_vmeta_tag),
        .d_vmeta_line_valid (d1_vmeta_line_valid),
        .d_vmeta_mesi       (d1_vmeta_mesi),
        .d_vmeta_dirty      (d1_vmeta_dirty),
        .d_vline_rd_en      (d1_vline_rd_en),
        .d_vline_rd_set     (d1_vline_rd_set),
        .d_vline_rd_way     (d1_vline_rd_way),
        .d_vline_rd_valid   (d1_vline_rd_valid),
        .d_vline_rd_data    (d1_vline_rd_data),
        .d_vline_rd_tag     (d1_vline_rd_tag),
        .d_vline_rd_entry_valid(d1_vline_rd_entry_valid),
        .d_vline_rd_mesi    (d1_vline_rd_mesi),
        .d_vline_rd_dirty   (d1_vline_rd_dirty),
        .d_rdata            (d1_rdata),
        .d_hit              (d1_hit),
        .d_rvalid           (d1_rvalid),
        .d_hit_way          (d1_hit_way),
        .d_mesi_state       (d1_mesi_state),
        .d_dirty            (d1_dirty),
        .d_lookup_valid     (d1_lookup_valid)
    );

    // D$ controllers
    L1_Dcache_Controller #(.SRC_ID(2)) u_l1d0_ctrl (
        .clk               (clk),
        .rst_n             (rst_n),

        .ldst_valid        (d0_ldst_valid),
        .ldst_is_store     (d0_ldst_is_store),
        .ldst_addr         (d0_ldst_addr),
        .ldst_wdata        (d0_ldst_wdata),
        .ldst_wstrb        (d0_ldst_wstrb),
        .ldst_ready        (d0_ldst_ready),
        .ldst_resp_valid   (d0_ldst_resp_valid),
        .ldst_rdata        (d0_ldst_rdata),

        .d_lookup_en       (d0_lookup_en),
        .d_lookup_addr     (d0_lookup_addr),
        .d_lookup_is_store (d0_lookup_is_store),
        .d_lookup_stall    (d0_lookup_stall),

        .d_store_en        (d0_store_en),
        .d_store_wdata     (d0_store_wdata),
        .d_store_wstrb     (d0_store_wstrb),

        .d_fill_en         (d0_fill_en),
        .d_fill_addr       (d0_fill_addr),
        .d_fill_way        (d0_fill_way),
        .d_fill_line       (d0_fill_line),
        .d_fill_mesi       (d0_fill_mesi),

        .d_set_state_en    (d0_set_state_en),
        .d_set_state_addr  (d0_set_state_addr),
        .d_set_state_way   (d0_set_state_way),
        .d_set_state_val   (d0_set_state_val),

        .d_line_rd_en      (d0_line_rd_en),
        .d_line_rd_addr    (d0_line_rd_addr),
        .d_line_rd_data    (d0_line_rd_data),
        .d_line_rd_valid   (d0_line_rd_valid),

        .d_vmeta_en        (d0_vmeta_en),
        .d_vmeta_set       (d0_vmeta_set),
        .d_vmeta_way       (d0_vmeta_way),
        .d_vmeta_valid     (d0_vmeta_valid),
        .d_vmeta_tag       (d0_vmeta_tag),
        .d_vmeta_line_valid(d0_vmeta_line_valid),
        .d_vmeta_mesi      (d0_vmeta_mesi),
        .d_vmeta_dirty     (d0_vmeta_dirty),

        .d_vline_rd_en     (d0_vline_rd_en),
        .d_vline_rd_set    (d0_vline_rd_set),
        .d_vline_rd_way    (d0_vline_rd_way),
        .d_vline_rd_valid  (d0_vline_rd_valid),
        .d_vline_rd_data   (d0_vline_rd_data),
        .d_vline_rd_tag    (d0_vline_rd_tag),
        .d_vline_rd_entry_valid(d0_vline_rd_entry_valid),
        .d_vline_rd_mesi   (d0_vline_rd_mesi),
        .d_vline_rd_dirty  (d0_vline_rd_dirty),

        .d_rdata           (d0_rdata),
        .d_hit             (d0_hit),
        .d_rvalid          (d0_rvalid),
        .d_hit_way         (d0_hit_way),
        .d_mesi_state      (d0_mesi_state),
        .d_dirty           (d0_dirty),
        .d_lookup_valid    (d0_lookup_valid),

        .d_req_valid       (d0_req_valid),
        .d_req_ready       (d0_req_ready),
        .d_req_cmd         (d0_req_cmd),
        .d_req_addr        (d0_req_addr),
        .d_req_src         (d0_req_src),

        .bus_req_valid     (bus_req_valid),
        .bus_req_cmd       (bus_req_cmd),
        .bus_req_addr      (bus_req_addr),
        .bus_req_src       (bus_req_src),

        .snp_rsp_valid     (d0_snp_rsp_valid),
        .snp_rsp_hit       (d0_snp_rsp_hit),
        .snp_rsp_state     (d0_snp_rsp_state),
        .snp_rsp_has_data  (d0_snp_rsp_has_data),
        .snp_rsp_ack       (d0_snp_rsp_ack),

        .sup_valid         (d0_sup_valid),
        .sup_ready         (d0_sup_ready),
        .sup_data          (d0_sup_data),
        .sup_beat          (d0_sup_beat),
        .sup_last          (d0_sup_last),

        .bus_dat_valid     (bus_dat_valid),
        .bus_dat_dst       (bus_dat_dst),
        .bus_dat_data      (bus_dat_data),
        .bus_dat_beat      (bus_dat_beat),
        .bus_dat_last      (bus_dat_last),

        .bus_gnt_valid     (d_bus_gnt_valid),
        .bus_gnt_dst       (d_bus_gnt_dst),
        .bus_gnt_addr      (d_bus_gnt_addr),
        .bus_gnt_state     (d_bus_gnt_state),
        .bus_gnt_ok        (d_bus_gnt_ok)
    );

    L1_Dcache_Controller #(.SRC_ID(3)) u_l1d1_ctrl (
        .clk               (clk),
        .rst_n             (rst_n),

        .ldst_valid        (d1_ldst_valid),
        .ldst_is_store     (d1_ldst_is_store),
        .ldst_addr         (d1_ldst_addr),
        .ldst_wdata        (d1_ldst_wdata),
        .ldst_wstrb        (d1_ldst_wstrb),
        .ldst_ready        (d1_ldst_ready),
        .ldst_resp_valid   (d1_ldst_resp_valid),
        .ldst_rdata        (d1_ldst_rdata),

        .d_lookup_en       (d1_lookup_en),
        .d_lookup_addr     (d1_lookup_addr),
        .d_lookup_is_store (d1_lookup_is_store),
        .d_lookup_stall    (d1_lookup_stall),

        .d_store_en        (d1_store_en),
        .d_store_wdata     (d1_store_wdata),
        .d_store_wstrb     (d1_store_wstrb),

        .d_fill_en         (d1_fill_en),
        .d_fill_addr       (d1_fill_addr),
        .d_fill_way        (d1_fill_way),
        .d_fill_line       (d1_fill_line),
        .d_fill_mesi       (d1_fill_mesi),

        .d_set_state_en    (d1_set_state_en),
        .d_set_state_addr  (d1_set_state_addr),
        .d_set_state_way   (d1_set_state_way),
        .d_set_state_val   (d1_set_state_val),

        .d_line_rd_en      (d1_line_rd_en),
        .d_line_rd_addr    (d1_line_rd_addr),
        .d_line_rd_data    (d1_line_rd_data),
        .d_line_rd_valid   (d1_line_rd_valid),

        .d_vmeta_en        (d1_vmeta_en),
        .d_vmeta_set       (d1_vmeta_set),
        .d_vmeta_way       (d1_vmeta_way),
        .d_vmeta_valid     (d1_vmeta_valid),
        .d_vmeta_tag       (d1_vmeta_tag),
        .d_vmeta_line_valid(d1_vmeta_line_valid),
        .d_vmeta_mesi      (d1_vmeta_mesi),
        .d_vmeta_dirty     (d1_vmeta_dirty),

        .d_vline_rd_en     (d1_vline_rd_en),
        .d_vline_rd_set    (d1_vline_rd_set),
        .d_vline_rd_way    (d1_vline_rd_way),
        .d_vline_rd_valid  (d1_vline_rd_valid),
        .d_vline_rd_data   (d1_vline_rd_data),
        .d_vline_rd_tag    (d1_vline_rd_tag),
        .d_vline_rd_entry_valid(d1_vline_rd_entry_valid),
        .d_vline_rd_mesi   (d1_vline_rd_mesi),
        .d_vline_rd_dirty  (d1_vline_rd_dirty),

        .d_rdata           (d1_rdata),
        .d_hit             (d1_hit),
        .d_rvalid          (d1_rvalid),
        .d_hit_way         (d1_hit_way),
        .d_mesi_state      (d1_mesi_state),
        .d_dirty           (d1_dirty),
        .d_lookup_valid    (d1_lookup_valid),

        .d_req_valid       (d1_req_valid),
        .d_req_ready       (d1_req_ready),
        .d_req_cmd         (d1_req_cmd),
        .d_req_addr        (d1_req_addr),
        .d_req_src         (d1_req_src),

        .bus_req_valid     (bus_req_valid),
        .bus_req_cmd       (bus_req_cmd),
        .bus_req_addr      (bus_req_addr),
        .bus_req_src       (bus_req_src),

        .snp_rsp_valid     (d1_snp_rsp_valid),
        .snp_rsp_hit       (d1_snp_rsp_hit),
        .snp_rsp_state     (d1_snp_rsp_state),
        .snp_rsp_has_data  (d1_snp_rsp_has_data),
        .snp_rsp_ack       (d1_snp_rsp_ack),

        .sup_valid         (d1_sup_valid),
        .sup_ready         (d1_sup_ready),
        .sup_data          (d1_sup_data),
        .sup_beat          (d1_sup_beat),
        .sup_last          (d1_sup_last),

        .bus_dat_valid     (bus_dat_valid),
        .bus_dat_dst       (bus_dat_dst),
        .bus_dat_data      (bus_dat_data),
        .bus_dat_beat      (bus_dat_beat),
        .bus_dat_last      (bus_dat_last),

        .bus_gnt_valid     (d_bus_gnt_valid),
        .bus_gnt_dst       (d_bus_gnt_dst),
        .bus_gnt_addr      (d_bus_gnt_addr),
        .bus_gnt_state     (d_bus_gnt_state),
        .bus_gnt_ok        (d_bus_gnt_ok)
    );

    // =====================================================================
    // L2: controller + storage
    // =====================================================================
    // L2 snoop response -> arbiter
    logic l2_snp_valid, l2_snp_hit, l2_snp_has_data, l2_snp_ack;

    // L2 supplier -> arbiter
    logic        l2_sup_valid, l2_sup_ready;
    logic [63:0] l2_sup_data;
    logic [2:0]  l2_sup_beat;
    logic        l2_sup_last;

    // Data transfer phase to L2 for WB (needs addr, which we reconstruct)
    // L2 controller expects bus_dat_addr too.

    // L2 memory interface (simple) from controller
    logic        l2_mem_req_valid;
    logic        l2_mem_req_rw;
    logic [31:0] l2_mem_req_addr;
    logic [511:0]l2_mem_req_line;
    logic        l2_mem_req_ready;

    logic        l2_mem_resp_valid;
    logic [511:0]l2_mem_resp_line;

    // L2 controller <-> L2 storage wires (match module ports)
    logic        l2_lookup_en;
    logic [31:0] l2_lookup_addr;
    logic        l2_lookup_is_store;
    logic        l2_lookup_stall;

    logic        l2_store_en;
    logic [63:0] l2_store_wdata;
    logic [7:0]  l2_store_wstrb;

    logic        l2_fill_en;
    logic [31:0] l2_fill_addr;
    logic [2:0]  l2_fill_way;
    logic [511:0]l2_fill_line;
    logic [1:0]  l2_fill_mesi;

    logic        l2_set_state_en;
    logic [31:0] l2_set_state_addr;
    logic [2:0]  l2_set_state_way;
    logic [1:0]  l2_set_state_val;

    logic        l2_line_rd_en;
    logic [31:0] l2_line_rd_addr;
    logic [511:0]l2_line_rd_data;
    logic        l2_line_rd_valid;

    logic        l2_vmeta_en;
    logic [10:0] l2_vmeta_set;
    logic [2:0]  l2_vmeta_way;
    logic        l2_vmeta_valid;
    logic [14:0] l2_vmeta_tag;
    logic        l2_vmeta_line_valid;
    logic [1:0]  l2_vmeta_mesi;
    logic        l2_vmeta_dirty;

    logic        l2_vline_rd_en;
    logic [10:0] l2_vline_rd_set;
    logic [2:0]  l2_vline_rd_way;
    logic        l2_vline_rd_valid;
    logic [511:0]l2_vline_rd_data;
    logic [14:0] l2_vline_rd_tag;
    logic        l2_vline_rd_entry_valid;
    logic [1:0]  l2_vline_rd_mesi;
    logic        l2_vline_rd_dirty;

    logic [63:0] l2_rdata;
    logic        l2_hit;
    logic        l2_rvalid;
    logic [2:0]  l2_hit_way;
    logic [1:0]  l2_mesi_state;
    logic        l2_dirty;
    logic        l2_lookup_valid;

    // L2 receives WB data from bus (ready back to arbiter)
    logic        l2_wb_data_ready;

    L2_Cache u_l2_cache (
        .clk                (clk),
        .rst_n              (rst_n),
        .l2_lookup_en       (l2_lookup_en),
        .l2_lookup_addr     (l2_lookup_addr),
        .l2_lookup_is_store (l2_lookup_is_store),
        .l2_lookup_stall    (l2_lookup_stall),
        .l2_store_en        (l2_store_en),
        .l2_store_wdata     (l2_store_wdata),
        .l2_store_wstrb     (l2_store_wstrb),
        .l2_fill_en         (l2_fill_en),
        .l2_fill_addr       (l2_fill_addr),
        .l2_fill_way        (l2_fill_way),
        .l2_fill_line       (l2_fill_line),
        .l2_fill_mesi       (l2_fill_mesi),
        .l2_set_state_en    (l2_set_state_en),
        .l2_set_state_addr  (l2_set_state_addr),
        .l2_set_state_way   (l2_set_state_way),
        .l2_set_state_val   (l2_set_state_val),
        .l2_line_rd_en      (l2_line_rd_en),
        .l2_line_rd_addr    (l2_line_rd_addr),
        .l2_line_rd_data    (l2_line_rd_data),
        .l2_line_rd_valid   (l2_line_rd_valid),
        .l2_vmeta_en        (l2_vmeta_en),
        .l2_vmeta_set       (l2_vmeta_set),
        .l2_vmeta_way       (l2_vmeta_way),
        .l2_vmeta_valid     (l2_vmeta_valid),
        .l2_vmeta_tag       (l2_vmeta_tag),
        .l2_vmeta_line_valid(l2_vmeta_line_valid),
        .l2_vmeta_mesi      (l2_vmeta_mesi),
        .l2_vmeta_dirty     (l2_vmeta_dirty),
        .l2_vline_rd_en     (l2_vline_rd_en),
        .l2_vline_rd_set    (l2_vline_rd_set),
        .l2_vline_rd_way    (l2_vline_rd_way),
        .l2_vline_rd_valid  (l2_vline_rd_valid),
        .l2_vline_rd_data   (l2_vline_rd_data),
        .l2_vline_rd_tag    (l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi   (l2_vline_rd_mesi),
        .l2_vline_rd_dirty  (l2_vline_rd_dirty),
        .l2_rdata           (l2_rdata),
        .l2_hit             (l2_hit),
        .l2_rvalid          (l2_rvalid),
        .l2_hit_way         (l2_hit_way),
        .l2_mesi_state      (l2_mesi_state),
        .l2_dirty           (l2_dirty),
        .l2_lookup_valid    (l2_lookup_valid)
    );

    L2_Cache_Controller #(.SRC_ID(2)) u_l2_ctrl (
        .clk               (clk),
        .rst_n             (rst_n),

        .bus_req_valid     (bus_req_valid),
        .bus_req_cmd       (bus_req_cmd),
        .bus_req_addr      (bus_req_addr),
        .bus_req_src       (bus_req_src),

        .bus_dat_valid     (bus_dat_valid),
        .bus_dat_dst       (bus_dat_dst),
        .bus_dat_addr      (bus_dat_addr),
        .bus_dat_beat      (bus_dat_beat),
        .bus_dat_data      (bus_dat_data),
        .bus_dat_last      (bus_dat_last),
        .l2_wb_data_ready  (l2_wb_data_ready),

        .l2_snp_valid      (l2_snp_valid),
        .l2_snp_hit        (l2_snp_hit),
        .l2_snp_has_data   (l2_snp_has_data),
        .l2_snp_ack        (l2_snp_ack),

        .sup_valid         (l2_sup_valid),
        .sup_ready         (l2_sup_ready),
        .sup_data          (l2_sup_data),
        .sup_beat          (l2_sup_beat),
        .sup_last          (l2_sup_last),

        .mem_req_valid     (l2_mem_req_valid),
        .mem_req_rw        (l2_mem_req_rw),
        .mem_req_addr      (l2_mem_req_addr),
        .mem_req_line      (l2_mem_req_line),
        .mem_req_ready     (l2_mem_req_ready),

        .mem_resp_valid    (l2_mem_resp_valid),
        .mem_resp_line     (l2_mem_resp_line),

        .l2_lookup_en      (l2_lookup_en),
        .l2_lookup_addr    (l2_lookup_addr),
        .l2_lookup_is_store(l2_lookup_is_store),
        .l2_lookup_stall   (l2_lookup_stall),

        .l2_store_en       (l2_store_en),
        .l2_store_wdata    (l2_store_wdata),
        .l2_store_wstrb    (l2_store_wstrb),

        .l2_fill_en        (l2_fill_en),
        .l2_fill_addr      (l2_fill_addr),
        .l2_fill_way       (l2_fill_way),
        .l2_fill_line      (l2_fill_line),
        .l2_fill_mesi      (l2_fill_mesi),

        .l2_set_state_en   (l2_set_state_en),
        .l2_set_state_addr (l2_set_state_addr),
        .l2_set_state_way  (l2_set_state_way),
        .l2_set_state_val  (l2_set_state_val),

        .l2_line_rd_en     (l2_line_rd_en),
        .l2_line_rd_addr   (l2_line_rd_addr),
        .l2_line_rd_data   (l2_line_rd_data),
        .l2_line_rd_valid  (l2_line_rd_valid),

        .l2_vmeta_en       (l2_vmeta_en),
        .l2_vmeta_set      (l2_vmeta_set),
        .l2_vmeta_way      (l2_vmeta_way),
        .l2_vmeta_valid    (l2_vmeta_valid),
        .l2_vmeta_tag      (l2_vmeta_tag),
        .l2_vmeta_line_valid(l2_vmeta_line_valid),
        .l2_vmeta_mesi     (l2_vmeta_mesi),
        .l2_vmeta_dirty    (l2_vmeta_dirty),

        .l2_vline_rd_en    (l2_vline_rd_en),
        .l2_vline_rd_set   (l2_vline_rd_set),
        .l2_vline_rd_way   (l2_vline_rd_way),
        .l2_vline_rd_valid (l2_vline_rd_valid),
        .l2_vline_rd_data  (l2_vline_rd_data),
        .l2_vline_rd_tag   (l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi  (l2_vline_rd_mesi),
        .l2_vline_rd_dirty (l2_vline_rd_dirty),

        .l2_rdata          (l2_rdata),
        .l2_hit            (l2_hit),
        .l2_rvalid         (l2_rvalid),
        .l2_hit_way        (l2_hit_way),
        .l2_mesi_state     (l2_mesi_state),
        .l2_dirty          (l2_dirty),
        .l2_lookup_valid   (l2_lookup_valid)
    );

    // =====================================================================
    // Shared snoop bus arbiter
    // =====================================================================
    snoop_bus_arbiter u_arb (
        .clk           (clk),
        .rst_n        (rst_n),

        .i0_req_valid   (i0_req_valid),
        .i0_req_ready   (i0_req_ready),
        .i0_req_cmd     (i0_req_cmd),
        .i0_req_addr    (i0_req_addr),
        .i0_req_src     (i0_req_src),

        .i1_req_valid   (i1_req_valid),
        .i1_req_ready   (i1_req_ready),
        .i1_req_cmd     (i1_req_cmd),
        .i1_req_addr    (i1_req_addr),
        .i1_req_src     (i1_req_src),

        .d0_req_valid   (d0_req_valid),
        .d0_req_ready   (d0_req_ready),
        .d0_req_cmd     (d0_req_cmd),
        .d0_req_addr    (d0_req_addr),
        .d0_req_src     (d0_req_src),

        .d1_req_valid   (d1_req_valid),
        .d1_req_ready   (d1_req_ready),
        .d1_req_cmd     (d1_req_cmd),
        .d1_req_addr    (d1_req_addr),
        .d1_req_src     (d1_req_src),

        .bus_req_valid  (bus_req_valid),
        .bus_req_cmd    (bus_req_cmd),
        .bus_req_addr   (bus_req_addr),
        .bus_req_src    (bus_req_src),

        .d0_snp_rsp_valid(d0_snp_rsp_valid),
        .d0_snp_rsp_hit  (d0_snp_rsp_hit),
        .d0_snp_rsp_state(d0_snp_rsp_state),
        .d0_snp_rsp_has_data(d0_snp_rsp_has_data),
        .d0_snp_rsp_ack  (d0_snp_rsp_ack),

        .d1_snp_rsp_valid(d1_snp_rsp_valid),
        .d1_snp_rsp_hit  (d1_snp_rsp_hit),
        .d1_snp_rsp_state(d1_snp_rsp_state),
        .d1_snp_rsp_has_data(d1_snp_rsp_has_data),
        .d1_snp_rsp_ack  (d1_snp_rsp_ack),

        .l2_snp_valid    (l2_snp_valid),
        .l2_snp_hit      (l2_snp_hit),
        .l2_snp_has_data (l2_snp_has_data),
        .l2_snp_ack      (l2_snp_ack),

        .d0_sup_valid    (d0_sup_valid),
        .d0_sup_ready    (d0_sup_ready),
        .d0_sup_data     (d0_sup_data),
        .d0_sup_beat     (d0_sup_beat),
        .d0_sup_last     (d0_sup_last),

        .d1_sup_valid    (d1_sup_valid),
        .d1_sup_ready    (d1_sup_ready),
        .d1_sup_data     (d1_sup_data),
        .d1_sup_beat     (d1_sup_beat),
        .d1_sup_last     (d1_sup_last),

        .l2_sup_valid    (l2_sup_valid),
        .l2_sup_ready    (l2_sup_ready),
        .l2_sup_data     (l2_sup_data),
        .l2_sup_beat     (l2_sup_beat),
        .l2_sup_last     (l2_sup_last),

        .bus_dat_valid   (bus_dat_valid),
        .bus_dat_dst     (bus_dat_dst),
        .bus_dat_data    (bus_dat_data),
        .bus_dat_beat    (bus_dat_beat),
        .bus_dat_last    (bus_dat_last),
        .bus_dat_addr    (bus_dat_addr),

        .i_bus_gnt_valid (i_bus_gnt_valid),
        .i_bus_gnt_dst   (i_bus_gnt_dst),
        .i_bus_gnt_ok    (i_bus_gnt_ok),

        .d_bus_gnt_valid (d_bus_gnt_valid),
        .d_bus_gnt_dst   (d_bus_gnt_dst),
        .d_bus_gnt_addr  (d_bus_gnt_addr),
        .d_bus_gnt_state (d_bus_gnt_state),
        .d_bus_gnt_ok    (d_bus_gnt_ok)
    );

    // =====================================================================
    // L2 -> AXI adapter (controller-side interface per your message)
    // =====================================================================
    localparam int IDW = 4;

    logic              mem_req_valid;
    logic              mem_req_ready;
    logic              mem_req_rw;
    logic [IDW-1:0]    mem_req_id;
    logic [31:0]       mem_req_addr;
    logic [511:0]      mem_req_line;

    logic              mem_rresp_valid;
    logic              mem_rresp_ready;
    logic [IDW-1:0]    mem_rresp_id;
    logic [511:0]      mem_rresp_line;
    logic [1:0]        mem_rresp_resp;

    logic              mem_bresp_valid;
    logic              mem_bresp_ready;
    logic [IDW-1:0]    mem_bresp_id;
    logic [1:0]        mem_bresp_resp;

    // Bridge L2 simple mem interface -> adapter interface
    assign mem_req_valid = l2_mem_req_valid;
    assign mem_req_rw    = l2_mem_req_rw;
    assign mem_req_addr  = l2_mem_req_addr;
    assign mem_req_line  = l2_mem_req_line;
    assign mem_req_id    = '0;
    assign l2_mem_req_ready = mem_req_ready;

    // Always accept adapter responses (L2 ctrl has no backpressure port)
    assign mem_rresp_ready = 1'b1;
    assign mem_bresp_ready = 1'b1;

    // Feed ONLY read responses into L2 controller
    assign l2_mem_resp_valid = mem_rresp_valid;
    assign l2_mem_resp_line  = mem_rresp_line;

    l2_to_axi4_master_axi_full_wrapper #(
        .ADDR_WIDTH     (32),
        .LINE_WIDTH     (512),
        .AXI_DATA_WIDTH (128),
        .IDW            (IDW)
    ) u_l2_axi (
        .aclk           (clk),
        .aresetn        (rst_n),

        .mem_req_valid  (mem_req_valid),
        .mem_req_ready  (mem_req_ready),
        .mem_req_rw     (mem_req_rw),
        .mem_req_id     (mem_req_id),
        .mem_req_addr   (mem_req_addr),
        .mem_req_line   (mem_req_line),

        .mem_rresp_valid(mem_rresp_valid),
        .mem_rresp_ready(mem_rresp_ready),
        .mem_rresp_id   (mem_rresp_id),
        .mem_rresp_line (mem_rresp_line),
        .mem_rresp_resp (mem_rresp_resp),

        .mem_wresp_valid(mem_bresp_valid),
        .mem_wresp_ready(mem_bresp_ready),
        .mem_wresp_id   (mem_bresp_id),
        .mem_wresp_resp (mem_bresp_resp),

        .M_AXI_AWID     (M_AXI_AWID),
        .M_AXI_AWADDR   (M_AXI_AWADDR),
        .M_AXI_AWLEN    (M_AXI_AWLEN),
        .M_AXI_AWSIZE   (M_AXI_AWSIZE),
        .M_AXI_AWBURST  (M_AXI_AWBURST),
        .M_AXI_AWLOCK   (M_AXI_AWLOCK),
        .M_AXI_AWCACHE  (M_AXI_AWCACHE),
        .M_AXI_AWPROT   (M_AXI_AWPROT),
        .M_AXI_AWQOS    (M_AXI_AWQOS),
        .M_AXI_AWREGION (M_AXI_AWREGION),
        .M_AXI_AWVALID  (M_AXI_AWVALID),
        .M_AXI_AWREADY  (M_AXI_AWREADY),

        .M_AXI_WDATA    (M_AXI_WDATA),
        .M_AXI_WSTRB    (M_AXI_WSTRB),
        .M_AXI_WLAST    (M_AXI_WLAST),
        .M_AXI_WVALID   (M_AXI_WVALID),
        .M_AXI_WREADY   (M_AXI_WREADY),

        .M_AXI_BID      (M_AXI_BID),
        .M_AXI_BRESP    (M_AXI_BRESP),
        .M_AXI_BVALID   (M_AXI_BVALID),
        .M_AXI_BREADY   (M_AXI_BREADY),

        .M_AXI_ARID     (M_AXI_ARID),
        .M_AXI_ARADDR   (M_AXI_ARADDR),
        .M_AXI_ARLEN    (M_AXI_ARLEN),
        .M_AXI_ARSIZE   (M_AXI_ARSIZE),
        .M_AXI_ARBURST  (M_AXI_ARBURST),
        .M_AXI_ARLOCK   (M_AXI_ARLOCK),
        .M_AXI_ARCACHE  (M_AXI_ARCACHE),
        .M_AXI_ARPROT   (M_AXI_ARPROT),
        .M_AXI_ARQOS    (M_AXI_ARQOS),
        .M_AXI_ARREGION (M_AXI_ARREGION),
        .M_AXI_ARVALID  (M_AXI_ARVALID),
        .M_AXI_ARREADY  (M_AXI_ARREADY),

        .M_AXI_RID      (M_AXI_RID),
        .M_AXI_RDATA    (M_AXI_RDATA),
        .M_AXI_RRESP    (M_AXI_RRESP),
        .M_AXI_RLAST    (M_AXI_RLAST),
        .M_AXI_RVALID   (M_AXI_RVALID),
        .M_AXI_RREADY   (M_AXI_RREADY)
    );


    // =====================================================================
    // Internal AXI SRAM backend (128-bit beat memory)
    // =====================================================================
    localparam int AXI_DATA_WIDTH   = 128;
    localparam int AXI_STRB_WIDTH   = AXI_DATA_WIDTH/8;
    localparam int AXI_BEAT_BYTES   = AXI_DATA_WIDTH/8;
    localparam int MEM_ADDR_LSB     = $clog2(AXI_BEAT_BYTES);
    localparam int MEM_INDEX_W      = (MEM_DEPTH_BEATS > 1) ? $clog2(MEM_DEPTH_BEATS) : 1;

    logic [127:0] sram_mem [0:MEM_DEPTH_BEATS-1];

    logic         wr_active;
    logic [3:0]   wr_id_q;
    logic [31:0]  wr_addr_q;
    logic [7:0]   wr_len_q;
    logic [7:0]   wr_beat_q;

    logic         rd_active;
    logic [3:0]   rd_id_q;
    logic [31:0]  rd_addr_q;
    logic [7:0]   rd_len_q;
    logic [7:0]   rd_beat_q;

    logic [MEM_INDEX_W-1:0] wr_index;
    logic [MEM_INDEX_W-1:0] rd_index;

    integer mi;
    initial begin
        for (mi = 0; mi < MEM_DEPTH_BEATS; mi = mi + 1) begin
            sram_mem[mi] = '0;
        end
        if (INIT_HEX != "") begin
            $readmemh(INIT_HEX, sram_mem);
        end
    end

    assign wr_index = ((wr_addr_q >> MEM_ADDR_LSB) + wr_beat_q) % MEM_DEPTH_BEATS;
    assign rd_index = ((rd_addr_q >> MEM_ADDR_LSB) + rd_beat_q) % MEM_DEPTH_BEATS;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_active    <= 1'b0;
            wr_id_q      <= '0;
            wr_addr_q    <= '0;
            wr_len_q     <= '0;
            wr_beat_q    <= '0;

            rd_active    <= 1'b0;
            rd_id_q      <= '0;
            rd_addr_q    <= '0;
            rd_len_q     <= '0;
            rd_beat_q    <= '0;

            M_AXI_AWREADY <= 1'b1;
            M_AXI_WREADY  <= 1'b0;
            M_AXI_BID     <= '0;
            M_AXI_BRESP   <= 2'b00;
            M_AXI_BVALID  <= 1'b0;

            M_AXI_ARREADY <= 1'b1;
            M_AXI_RID     <= '0;
            M_AXI_RDATA   <= '0;
            M_AXI_RRESP   <= 2'b00;
            M_AXI_RLAST   <= 1'b0;
            M_AXI_RVALID  <= 1'b0;
        end else begin
            // defaults
            M_AXI_AWREADY <= !wr_active && !M_AXI_BVALID;
            M_AXI_ARREADY <= !rd_active && !M_AXI_RVALID;
            M_AXI_WREADY  <= wr_active;
            M_AXI_RLAST   <= 1'b0;

            // accept write address
            if (!wr_active && !M_AXI_BVALID && M_AXI_AWVALID && M_AXI_AWREADY) begin
                wr_active <= 1'b1;
                wr_id_q   <= M_AXI_AWID;
                wr_addr_q <= M_AXI_AWADDR;
                wr_len_q  <= M_AXI_AWLEN;
                wr_beat_q <= '0;
            end

            // consume write data beats
            if (wr_active && M_AXI_WVALID && M_AXI_WREADY) begin
                for (int b = 0; b < AXI_STRB_WIDTH; b++) begin
                    if (M_AXI_WSTRB[b]) begin
                        sram_mem[wr_index][8*b +: 8] <= M_AXI_WDATA[8*b +: 8];
                    end
                end

                if (M_AXI_WLAST || (wr_beat_q == wr_len_q)) begin
                    wr_active   <= 1'b0;
                    M_AXI_WREADY<= 1'b0;
                    M_AXI_BID   <= wr_id_q;
                    M_AXI_BRESP <= 2'b00;
                    M_AXI_BVALID<= 1'b1;
                end else begin
                    wr_beat_q <= wr_beat_q + 8'd1;
                end
            end

            // write response handshake
            if (M_AXI_BVALID && M_AXI_BREADY) begin
                M_AXI_BVALID <= 1'b0;
            end

            // accept read address
            if (!rd_active && !M_AXI_RVALID && M_AXI_ARVALID && M_AXI_ARREADY) begin
                rd_active <= 1'b1;
                rd_id_q   <= M_AXI_ARID;
                rd_addr_q <= M_AXI_ARADDR;
                rd_len_q  <= M_AXI_ARLEN;
                rd_beat_q <= '0;

                M_AXI_RID    <= M_AXI_ARID;
                M_AXI_RDATA  <= sram_mem[(M_AXI_ARADDR >> MEM_ADDR_LSB) % MEM_DEPTH_BEATS];
                M_AXI_RRESP  <= 2'b00;
                M_AXI_RLAST  <= (M_AXI_ARLEN == 8'd0);
                M_AXI_RVALID <= 1'b1;
            end else if (rd_active && M_AXI_RVALID && M_AXI_RREADY) begin
                if (rd_beat_q == rd_len_q) begin
                    rd_active <= 1'b0;
                    M_AXI_RVALID <= 1'b0;
                    M_AXI_RLAST  <= 1'b0;
                end else begin
                    rd_beat_q <= rd_beat_q + 8'd1;
                    M_AXI_RID   <= rd_id_q;
                    M_AXI_RDATA <= sram_mem[((rd_addr_q >> MEM_ADDR_LSB) + rd_beat_q + 8'd1) % MEM_DEPTH_BEATS];
                    M_AXI_RRESP <= 2'b00;
                    M_AXI_RLAST <= ((rd_beat_q + 8'd1) == rd_len_q);
                    M_AXI_RVALID<= 1'b1;
                end
            end
        end
    end

endmodule