module dcache_subsystem #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SET_BITS_LEN    = 6,
    parameter int TAG_BITS_LEN    = 20,
    parameter int SRC_ID          = 0
) (
    input logic clk,
    input logic rst_n,

    // --- CPU side ---
    input  logic                       ldst_valid,
    input  logic                       ldst_is_store,
    input  logic [     ADDR_WIDTH-1:0] ldst_addr,
    input  logic [CORE_DATA_WIDTH-1:0] ldst_wdata,
    input  logic [                7:0] ldst_wstrb,
    output logic                       ldst_ready,
    output logic                       ldst_resp_valid,
    output logic [CORE_DATA_WIDTH-1:0] ldst_rdata,

    // --- Memory bus: outbound request ---
    output logic                  d_req_valid,
    input  logic                  d_req_ready,
    output logic [           2:0] d_req_cmd,
    output logic [ADDR_WIDTH-1:0] d_req_addr,
    output logic [           1:0] d_req_src,

    // --- Memory bus: grant ---
    input logic                  bus_gnt_valid,
    input logic [           1:0] bus_gnt_dst,
    input logic [ADDR_WIDTH-1:0] bus_gnt_addr,
    input logic [           1:0] bus_gnt_state,
    input logic                  bus_gnt_ok,

    // --- Memory bus: fill data ---
    input logic                       bus_dat_valid,
    input logic [                1:0] bus_dat_dst,
    input logic [CORE_DATA_WIDTH-1:0] bus_dat_data,
    input logic [                2:0] bus_dat_beat,
    input logic                       bus_dat_last,

    // --- Memory bus: supply / writeback ---
    output logic                       sup_valid,
    input  logic                       sup_ready,
    output logic [CORE_DATA_WIDTH-1:0] sup_data,
    output logic [                2:0] sup_beat,
    output logic                       sup_last,

    // --- Memory bus: snoop request ---
    input logic                  bus_req_valid,
    input logic [           2:0] bus_req_cmd,
    input logic [ADDR_WIDTH-1:0] bus_req_addr,
    input logic [           1:0] bus_req_src,

    // --- Memory bus: snoop response ---
    output logic       snp_rsp_valid,
    output logic       snp_rsp_hit,
    output logic [1:0] snp_rsp_state,
    output logic       snp_rsp_has_data,
    output logic       snp_rsp_ack
);

  // ----------------------------------------------------------------
  // Internal wires between controller and cache storage
  // ----------------------------------------------------------------

  // lookup
  logic                       d_lookup_en;
  logic [     ADDR_WIDTH-1:0] d_lookup_addr;
  logic                       d_lookup_is_store;
  logic                       d_lookup_stall;

  // store
  logic                       d_store_en;
  logic [CORE_DATA_WIDTH-1:0] d_store_wdata;
  logic [                7:0] d_store_wstrb;

  // fill
  logic                       d_fill_en;
  logic [     ADDR_WIDTH-1:0] d_fill_addr;
  logic [                2:0] d_fill_way;
  logic [              511:0] d_fill_line;
  logic [                1:0] d_fill_mesi;

  // MESI state update
  logic                       d_set_state_en;
  logic [     ADDR_WIDTH-1:0] d_set_state_addr;
  logic [                2:0] d_set_state_way;
  logic [                1:0] d_set_state_val;

  // full line read
  logic                       d_line_rd_en;
  logic [     ADDR_WIDTH-1:0] d_line_rd_addr;
  logic [              511:0] d_line_rd_data;
  logic                       d_line_rd_valid;

  // victim metadata peek
  logic                       d_vmeta_en;
  logic [   SET_BITS_LEN-1:0] d_vmeta_set;
  logic [                2:0] d_vmeta_way;
  logic                       d_vmeta_valid;
  logic [   TAG_BITS_LEN-1:0] d_vmeta_tag;
  logic                       d_vmeta_line_valid;
  logic [                1:0] d_vmeta_mesi;
  logic                       d_vmeta_dirty;

  // victim line read
  logic                       d_vline_rd_en;
  logic [   SET_BITS_LEN-1:0] d_vline_rd_set;
  logic [                2:0] d_vline_rd_way;
  logic                       d_vline_rd_valid;
  logic [              511:0] d_vline_rd_data;
  logic [   TAG_BITS_LEN-1:0] d_vline_rd_tag;
  logic                       d_vline_rd_entry_valid;
  logic [                1:0] d_vline_rd_mesi;
  logic                       d_vline_rd_dirty;

  // hit outputs
  logic [CORE_DATA_WIDTH-1:0] d_rdata;
  logic                       d_hit;
  logic                       d_rvalid;
  logic [                2:0] d_hit_way;
  logic [                1:0] d_mesi_state;
  logic                       d_dirty;
  logic                       d_lookup_valid;

  // ----------------------------------------------------------------
  // L1_Dcache_Controller
  // ----------------------------------------------------------------
  L1_Dcache_Controller #(
      .ADDR_WIDTH     (ADDR_WIDTH),
      .CORE_DATA_WIDTH(CORE_DATA_WIDTH),
      .SET_BITS_LEN   (SET_BITS_LEN),
      .TAG_BITS_LEN   (TAG_BITS_LEN),
      .SRC_ID         (SRC_ID)
  ) u_ctrl (
      .clk                   (clk),
      .rst_n                 (rst_n),
      // CPU side
      .ldst_valid            (ldst_valid),
      .ldst_is_store         (ldst_is_store),
      .ldst_addr             (ldst_addr),
      .ldst_wdata            (ldst_wdata),
      .ldst_wstrb            (ldst_wstrb),
      .ldst_ready            (ldst_ready),
      .ldst_resp_valid       (ldst_resp_valid),
      .ldst_rdata            (ldst_rdata),
      // internal: lookup
      .d_lookup_en           (d_lookup_en),
      .d_lookup_addr         (d_lookup_addr),
      .d_lookup_is_store     (d_lookup_is_store),
      .d_lookup_stall        (d_lookup_stall),
      // internal: store
      .d_store_en            (d_store_en),
      .d_store_wdata         (d_store_wdata),
      .d_store_wstrb         (d_store_wstrb),
      // internal: fill
      .d_fill_en             (d_fill_en),
      .d_fill_addr           (d_fill_addr),
      .d_fill_way            (d_fill_way),
      .d_fill_line           (d_fill_line),
      .d_fill_mesi           (d_fill_mesi),
      // internal: MESI state update
      .d_set_state_en        (d_set_state_en),
      .d_set_state_addr      (d_set_state_addr),
      .d_set_state_way       (d_set_state_way),
      .d_set_state_val       (d_set_state_val),
      // internal: full line read
      .d_line_rd_en          (d_line_rd_en),
      .d_line_rd_addr        (d_line_rd_addr),
      .d_line_rd_data        (d_line_rd_data),
      .d_line_rd_valid       (d_line_rd_valid),
      // internal: victim metadata
      .d_vmeta_en            (d_vmeta_en),
      .d_vmeta_set           (d_vmeta_set),
      .d_vmeta_way           (d_vmeta_way),
      .d_vmeta_valid         (d_vmeta_valid),
      .d_vmeta_tag           (d_vmeta_tag),
      .d_vmeta_line_valid    (d_vmeta_line_valid),
      .d_vmeta_mesi          (d_vmeta_mesi),
      .d_vmeta_dirty         (d_vmeta_dirty),
      // internal: victim line read
      .d_vline_rd_en         (d_vline_rd_en),
      .d_vline_rd_set        (d_vline_rd_set),
      .d_vline_rd_way        (d_vline_rd_way),
      .d_vline_rd_valid      (d_vline_rd_valid),
      .d_vline_rd_data       (d_vline_rd_data),
      .d_vline_rd_tag        (d_vline_rd_tag),
      .d_vline_rd_entry_valid(d_vline_rd_entry_valid),
      .d_vline_rd_mesi       (d_vline_rd_mesi),
      .d_vline_rd_dirty      (d_vline_rd_dirty),
      // internal: hit outputs
      .d_rdata               (d_rdata),
      .d_hit                 (d_hit),
      .d_rvalid              (d_rvalid),
      .d_hit_way             (d_hit_way),
      .d_mesi_state          (d_mesi_state),
      .d_dirty               (d_dirty),
      .d_lookup_valid        (d_lookup_valid),
      // memory bus
      .d_req_valid           (d_req_valid),
      .d_req_ready           (d_req_ready),
      .d_req_cmd             (d_req_cmd),
      .d_req_addr            (d_req_addr),
      .d_req_src             (d_req_src),
      .bus_gnt_valid         (bus_gnt_valid),
      .bus_gnt_dst           (bus_gnt_dst),
      .bus_gnt_addr          (bus_gnt_addr),
      .bus_gnt_state         (bus_gnt_state),
      .bus_gnt_ok            (bus_gnt_ok),
      .bus_dat_valid         (bus_dat_valid),
      .bus_dat_dst           (bus_dat_dst),
      .bus_dat_data          (bus_dat_data),
      .bus_dat_beat          (bus_dat_beat),
      .bus_dat_last          (bus_dat_last),
      .sup_valid             (sup_valid),
      .sup_ready             (sup_ready),
      .sup_data              (sup_data),
      .sup_beat              (sup_beat),
      .sup_last              (sup_last),
      .bus_req_valid         (bus_req_valid),
      .bus_req_cmd           (bus_req_cmd),
      .bus_req_addr          (bus_req_addr),
      .bus_req_src           (bus_req_src),
      .snp_rsp_valid         (snp_rsp_valid),
      .snp_rsp_hit           (snp_rsp_hit),
      .snp_rsp_state         (snp_rsp_state),
      .snp_rsp_has_data      (snp_rsp_has_data),
      .snp_rsp_ack           (snp_rsp_ack)
  );

  // ----------------------------------------------------------------
  // L1_Dcache
  // ----------------------------------------------------------------
  L1_Dcache #(
      .ADDR_WIDTH     (ADDR_WIDTH),
      .CORE_DATA_WIDTH(CORE_DATA_WIDTH),
      .SET_BITS_LEN   (SET_BITS_LEN),
      .TAG_BITS_LEN   (TAG_BITS_LEN)
  ) u_dcache (
      .clk                   (clk),
      .rst_n                 (rst_n),
      // lookup
      .d_lookup_en           (d_lookup_en),
      .d_lookup_addr         (d_lookup_addr),
      .d_lookup_is_store     (d_lookup_is_store),
      .d_lookup_stall        (d_lookup_stall),
      // store
      .d_store_en            (d_store_en),
      .d_store_wdata         (d_store_wdata),
      .d_store_wstrb         (d_store_wstrb),
      // fill
      .d_fill_en             (d_fill_en),
      .d_fill_addr           (d_fill_addr),
      .d_fill_way            (d_fill_way),
      .d_fill_line           (d_fill_line),
      .d_fill_mesi           (d_fill_mesi),
      // MESI state update
      .d_set_state_en        (d_set_state_en),
      .d_set_state_addr      (d_set_state_addr),
      .d_set_state_way       (d_set_state_way),
      .d_set_state_val       (d_set_state_val),
      // full line read
      .d_line_rd_en          (d_line_rd_en),
      .d_line_rd_addr        (d_line_rd_addr),
      .d_line_rd_data        (d_line_rd_data),
      .d_line_rd_valid       (d_line_rd_valid),
      // victim metadata
      .d_vmeta_en            (d_vmeta_en),
      .d_vmeta_set           (d_vmeta_set),
      .d_vmeta_way           (d_vmeta_way),
      .d_vmeta_valid         (d_vmeta_valid),
      .d_vmeta_tag           (d_vmeta_tag),
      .d_vmeta_line_valid    (d_vmeta_line_valid),
      .d_vmeta_mesi          (d_vmeta_mesi),
      .d_vmeta_dirty         (d_vmeta_dirty),
      // victim line read
      .d_vline_rd_en         (d_vline_rd_en),
      .d_vline_rd_set        (d_vline_rd_set),
      .d_vline_rd_way        (d_vline_rd_way),
      .d_vline_rd_valid      (d_vline_rd_valid),
      .d_vline_rd_data       (d_vline_rd_data),
      .d_vline_rd_tag        (d_vline_rd_tag),
      .d_vline_rd_entry_valid(d_vline_rd_entry_valid),
      .d_vline_rd_mesi       (d_vline_rd_mesi),
      .d_vline_rd_dirty      (d_vline_rd_dirty),
      // hit outputs
      .d_rdata               (d_rdata),
      .d_hit                 (d_hit),
      .d_rvalid              (d_rvalid),
      .d_hit_way             (d_hit_way),
      .d_mesi_state          (d_mesi_state),
      .d_dirty               (d_dirty),
      .d_lookup_valid        (d_lookup_valid)
  );

endmodule : dcache_subsystem
