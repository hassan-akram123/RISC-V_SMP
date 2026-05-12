`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name : l2_subsystem
// Description : Wires L2_Cache_Controller <-> L2_Cache storage together and
//               exposes the snoop-arbiter bus ports to the testbench.
//               The AXI/memory side (mem_req / mem_resp) is also brought out
//               so the testbench responder can answer fill requests.
//////////////////////////////////////////////////////////////////////////////////

module l2_subsystem #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SET_BITS_LEN    = 11,   // 2048 sets
    parameter int TAG_BITS_LEN    = 15,   // 32-11-6
    parameter int SRC_ID          = 2     // L2 fabric ID
)(
    input  logic clk,
    input  logic rst_n,

    // ============================================================
    // Snoop bus input  (arbiter -> L2_ctrl)
    // ============================================================
    input  logic                  bus_req_valid,
    input  logic [2:0]            bus_req_cmd,
    input  logic [ADDR_WIDTH-1:0] bus_req_addr,
    input  logic [1:0]            bus_req_src,

    // ============================================================
    // Data transfer phase input (WB data beats into L2)
    // ============================================================
    input  logic                       bus_dat_valid,
    input  logic [1:0]                 bus_dat_dst,
    input  logic [ADDR_WIDTH-1:0]      bus_dat_addr,
    input  logic [2:0]                 bus_dat_beat,
    input  logic [CORE_DATA_WIDTH-1:0] bus_dat_data,
    input  logic                       bus_dat_last,
    output logic                       l2_wb_data_ready,

    // ============================================================
    // Snoop response  (L2_ctrl -> arbiter)
    // ============================================================
    output logic l2_snp_valid,
    output logic l2_snp_hit,
    output logic l2_snp_has_data,
    output logic l2_snp_ack,

    // ============================================================
    // Supply beats  (L2_ctrl -> arbiter, 8 x 64-bit)
    // ============================================================
    output logic                       sup_valid,
    input  logic                       sup_ready,
    output logic [CORE_DATA_WIDTH-1:0] sup_data,
    output logic [2:0]                 sup_beat,
    output logic                       sup_last,

    // ============================================================
    // Memory interface  (L2_ctrl <-> memory / AXI)
    // ============================================================
    output logic                  mem_req_valid,
    output logic                  mem_req_rw,
    output logic [ADDR_WIDTH-1:0] mem_req_addr,
    output logic [511:0]          mem_req_line,
    input  logic                  mem_req_ready,

    input  logic         mem_resp_valid,
    input  logic [511:0] mem_resp_line
);

    // ----------------------------------------------------------------
    // Internal wires between controller and cache storage
    // ----------------------------------------------------------------

    // lookup
    logic                       l2_lookup_en;
    logic [ADDR_WIDTH-1:0]      l2_lookup_addr;
    logic                       l2_lookup_is_store;
    logic                       l2_lookup_stall;

    // store (sub-line write)
    logic                       l2_store_en;
    logic [CORE_DATA_WIDTH-1:0] l2_store_wdata;
    logic [7:0]                 l2_store_wstrb;

    // fill (whole line write)
    logic                       l2_fill_en;
    logic [ADDR_WIDTH-1:0]      l2_fill_addr;
    logic [2:0]                 l2_fill_way;
    logic [511:0]               l2_fill_line;
    logic [1:0]                 l2_fill_mesi;

    // MESI state update
    logic                       l2_set_state_en;
    logic [ADDR_WIDTH-1:0]      l2_set_state_addr;
    logic [2:0]                 l2_set_state_way;
    logic [1:0]                 l2_set_state_val;

    // full line read
    logic                       l2_line_rd_en;
    logic [ADDR_WIDTH-1:0]      l2_line_rd_addr;
    logic [511:0]               l2_line_rd_data;
    logic                       l2_line_rd_valid;

    // victim metadata peek
    logic                       l2_vmeta_en;
    logic [SET_BITS_LEN-1:0]    l2_vmeta_set;
    logic [2:0]                 l2_vmeta_way;
    logic                       l2_vmeta_valid;
    logic [TAG_BITS_LEN-1:0]    l2_vmeta_tag;
    logic                       l2_vmeta_line_valid;
    logic [1:0]                 l2_vmeta_mesi;
    logic                       l2_vmeta_dirty;

    // victim line read
    logic                       l2_vline_rd_en;
    logic [SET_BITS_LEN-1:0]    l2_vline_rd_set;
    logic [2:0]                 l2_vline_rd_way;
    logic                       l2_vline_rd_valid;
    logic [511:0]               l2_vline_rd_data;
    logic [TAG_BITS_LEN-1:0]    l2_vline_rd_tag;
    logic                       l2_vline_rd_entry_valid;
    logic [1:0]                 l2_vline_rd_mesi;
    logic                       l2_vline_rd_dirty;

    // lookup outputs
    logic [CORE_DATA_WIDTH-1:0] l2_rdata;
    logic                       l2_hit;
    logic                       l2_rvalid;
    logic [2:0]                 l2_hit_way;
    logic [1:0]                 l2_mesi_state;
    logic                       l2_dirty;
    logic                       l2_lookup_valid;

    // ----------------------------------------------------------------
    // L2_Cache_Controller
    // ----------------------------------------------------------------
    L2_Cache_Controller #(
        .ADDR_WIDTH     (ADDR_WIDTH),
        .CORE_DATA_WIDTH(CORE_DATA_WIDTH),
        .SET_BITS_LEN   (SET_BITS_LEN),
        .TAG_BITS_LEN   (TAG_BITS_LEN),
        .SRC_ID         (SRC_ID)
    ) u_ctrl (
        .clk                    (clk),
        .rst_n                  (rst_n),

        // snoop bus input
        .bus_req_valid          (bus_req_valid),
        .bus_req_cmd            (bus_req_cmd),
        .bus_req_addr           (bus_req_addr),
        .bus_req_src            (bus_req_src),

        // WB data beats input
        .bus_dat_valid          (bus_dat_valid),
        .bus_dat_dst            (bus_dat_dst),
        .bus_dat_addr           (bus_dat_addr),
        .bus_dat_beat           (bus_dat_beat),
        .bus_dat_data           (bus_dat_data),
        .bus_dat_last           (bus_dat_last),
        .l2_wb_data_ready       (l2_wb_data_ready),

        // snoop response
        .l2_snp_valid           (l2_snp_valid),
        .l2_snp_hit             (l2_snp_hit),
        .l2_snp_has_data        (l2_snp_has_data),
        .l2_snp_ack             (l2_snp_ack),

        // supply beats
        .sup_valid              (sup_valid),
        .sup_ready              (sup_ready),
        .sup_data               (sup_data),
        .sup_beat               (sup_beat),
        .sup_last               (sup_last),

        // memory interface
        .mem_req_valid          (mem_req_valid),
        .mem_req_rw             (mem_req_rw),
        .mem_req_addr           (mem_req_addr),
        .mem_req_line           (mem_req_line),
        .mem_req_ready          (mem_req_ready),
        .mem_resp_valid         (mem_resp_valid),
        .mem_resp_line          (mem_resp_line),

        // internal: lookup
        .l2_lookup_en           (l2_lookup_en),
        .l2_lookup_addr         (l2_lookup_addr),
        .l2_lookup_is_store     (l2_lookup_is_store),
        .l2_lookup_stall        (l2_lookup_stall),

        // internal: store
        .l2_store_en            (l2_store_en),
        .l2_store_wdata         (l2_store_wdata),
        .l2_store_wstrb         (l2_store_wstrb),

        // internal: fill
        .l2_fill_en             (l2_fill_en),
        .l2_fill_addr           (l2_fill_addr),
        .l2_fill_way            (l2_fill_way),
        .l2_fill_line           (l2_fill_line),
        .l2_fill_mesi           (l2_fill_mesi),

        // internal: MESI state update
        .l2_set_state_en        (l2_set_state_en),
        .l2_set_state_addr      (l2_set_state_addr),
        .l2_set_state_way       (l2_set_state_way),
        .l2_set_state_val       (l2_set_state_val),

        // internal: full line read
        .l2_line_rd_en          (l2_line_rd_en),
        .l2_line_rd_addr        (l2_line_rd_addr),
        .l2_line_rd_data        (l2_line_rd_data),
        .l2_line_rd_valid       (l2_line_rd_valid),

        // internal: victim metadata
        .l2_vmeta_en            (l2_vmeta_en),
        .l2_vmeta_set           (l2_vmeta_set),
        .l2_vmeta_way           (l2_vmeta_way),
        .l2_vmeta_valid         (l2_vmeta_valid),
        .l2_vmeta_tag           (l2_vmeta_tag),
        .l2_vmeta_line_valid    (l2_vmeta_line_valid),
        .l2_vmeta_mesi          (l2_vmeta_mesi),
        .l2_vmeta_dirty         (l2_vmeta_dirty),

        // internal: victim line read
        .l2_vline_rd_en         (l2_vline_rd_en),
        .l2_vline_rd_set        (l2_vline_rd_set),
        .l2_vline_rd_way        (l2_vline_rd_way),
        .l2_vline_rd_valid      (l2_vline_rd_valid),
        .l2_vline_rd_data       (l2_vline_rd_data),
        .l2_vline_rd_tag        (l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi       (l2_vline_rd_mesi),
        .l2_vline_rd_dirty      (l2_vline_rd_dirty),

        // internal: hit outputs
        .l2_rdata               (l2_rdata),
        .l2_hit                 (l2_hit),
        .l2_rvalid              (l2_rvalid),
        .l2_hit_way             (l2_hit_way),
        .l2_mesi_state          (l2_mesi_state),
        .l2_dirty               (l2_dirty),
        .l2_lookup_valid        (l2_lookup_valid)
    );

    // ----------------------------------------------------------------
    // L2_Cache (storage)
    // ----------------------------------------------------------------
    L2_Cache #(
        .ADDR_WIDTH           (ADDR_WIDTH),
        .TAG_BITS_LEN         (TAG_BITS_LEN),
        .SET_BITS_LEN         (SET_BITS_LEN),
        .BYTE_OFFSET_BITS_LEN (6),
        .NO_OF_WAYS           (8),
        .CORE_DATA_WIDTH      (CORE_DATA_WIDTH),
        .BYTE_SIZE            (8),
        .BRAM_WE_WIDTH        (64)
    ) u_cache (
        .clk                    (clk),
        .rst_n                  (rst_n),

        // lookup
        .l2_lookup_en           (l2_lookup_en),
        .l2_lookup_addr         (l2_lookup_addr),
        .l2_lookup_is_store     (l2_lookup_is_store),
        .l2_lookup_stall        (l2_lookup_stall),

        // store
        .l2_store_en            (l2_store_en),
        .l2_store_wdata         (l2_store_wdata),
        .l2_store_wstrb         (l2_store_wstrb),

        // fill
        .l2_fill_en             (l2_fill_en),
        .l2_fill_addr           (l2_fill_addr),
        .l2_fill_way            (l2_fill_way),
        .l2_fill_line           (l2_fill_line),
        .l2_fill_mesi           (l2_fill_mesi),

        // MESI state update
        .l2_set_state_en        (l2_set_state_en),
        .l2_set_state_addr      (l2_set_state_addr),
        .l2_set_state_way       (l2_set_state_way),
        .l2_set_state_val       (l2_set_state_val),

        // full line read
        .l2_line_rd_en          (l2_line_rd_en),
        .l2_line_rd_addr        (l2_line_rd_addr),
        .l2_line_rd_data        (l2_line_rd_data),
        .l2_line_rd_valid       (l2_line_rd_valid),

        // victim metadata
        .l2_vmeta_en            (l2_vmeta_en),
        .l2_vmeta_set           (l2_vmeta_set),
        .l2_vmeta_way           (l2_vmeta_way),
        .l2_vmeta_valid         (l2_vmeta_valid),
        .l2_vmeta_tag           (l2_vmeta_tag),
        .l2_vmeta_line_valid    (l2_vmeta_line_valid),
        .l2_vmeta_mesi          (l2_vmeta_mesi),
        .l2_vmeta_dirty         (l2_vmeta_dirty),

        // victim line read
        .l2_vline_rd_en         (l2_vline_rd_en),
        .l2_vline_rd_set        (l2_vline_rd_set),
        .l2_vline_rd_way        (l2_vline_rd_way),
        .l2_vline_rd_valid      (l2_vline_rd_valid),
        .l2_vline_rd_data       (l2_vline_rd_data),
        .l2_vline_rd_tag        (l2_vline_rd_tag),
        .l2_vline_rd_entry_valid(l2_vline_rd_entry_valid),
        .l2_vline_rd_mesi       (l2_vline_rd_mesi),
        .l2_vline_rd_dirty      (l2_vline_rd_dirty),

        // hit outputs
        .l2_rdata               (l2_rdata),
        .l2_hit                 (l2_hit),
        .l2_rvalid              (l2_rvalid),
        .l2_hit_way             (l2_hit_way),
        .l2_mesi_state          (l2_mesi_state),
        .l2_dirty               (l2_dirty),
        .l2_lookup_valid        (l2_lookup_valid)
    );

endmodule : l2_subsystem
