`timescale 1ns / 1ps

module L1_Dcache_Controller #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SET_BITS_LEN    = 6,
    parameter int TAG_BITS_LEN    = 20,
    parameter int SRC_ID          = 0
) (
    input logic clk,
    input logic rst_n,

    // CPU <-> L1D Controller
    input  logic                       ldst_valid,
    input  logic                       ldst_is_store,
    input  logic [     ADDR_WIDTH-1:0] ldst_addr,
    input  logic [CORE_DATA_WIDTH-1:0] ldst_wdata,
    input  logic [                7:0] ldst_wstrb,
    output logic                       ldst_ready,
    output logic                       ldst_resp_valid,
    output logic [CORE_DATA_WIDTH-1:0] ldst_rdata,

    // Controller <-> L1_Dcache storage
    output logic                  d_lookup_en,
    output logic [ADDR_WIDTH-1:0] d_lookup_addr,
    output logic                  d_lookup_is_store,
    input  logic                  d_lookup_stall,

    output logic                       d_store_en,
    output logic [CORE_DATA_WIDTH-1:0] d_store_wdata,
    output logic [                7:0] d_store_wstrb,

    output logic                  d_fill_en,
    output logic [ADDR_WIDTH-1:0] d_fill_addr,
    output logic [           2:0] d_fill_way,
    output logic [         511:0] d_fill_line,
    output logic [           1:0] d_fill_mesi,

    output logic                  d_set_state_en,
    output logic [ADDR_WIDTH-1:0] d_set_state_addr,
    output logic [           2:0] d_set_state_way,
    output logic [           1:0] d_set_state_val,

    output logic                  d_line_rd_en,
    output logic [ADDR_WIDTH-1:0] d_line_rd_addr,
    input  logic [         511:0] d_line_rd_data,
    input  logic                  d_line_rd_valid,

    output logic                    d_vmeta_en,
    output logic [SET_BITS_LEN-1:0] d_vmeta_set,
    output logic [             2:0] d_vmeta_way,
    input  logic                    d_vmeta_valid,
    input  logic [TAG_BITS_LEN-1:0] d_vmeta_tag,
    input  logic                    d_vmeta_line_valid,
    input  logic [             1:0] d_vmeta_mesi,
    input  logic                    d_vmeta_dirty,

    output logic                    d_vline_rd_en,
    output logic [SET_BITS_LEN-1:0] d_vline_rd_set,
    output logic [             2:0] d_vline_rd_way,
    input  logic                    d_vline_rd_valid,

    input logic [           511:0] d_vline_rd_data,
    input logic [TAG_BITS_LEN-1:0] d_vline_rd_tag,
    input logic                    d_vline_rd_entry_valid,
    input logic [             1:0] d_vline_rd_mesi,
    input logic                    d_vline_rd_dirty,

    input logic [CORE_DATA_WIDTH-1:0] d_rdata,
    input logic                       d_hit,
    input logic                       d_rvalid,
    input logic [                2:0] d_hit_way,
    input logic [                1:0] d_mesi_state,
    input logic                       d_dirty,
    input logic                       d_lookup_valid,

    // Arbiter interfaces
    output logic                  d_req_valid,
    input  logic                  d_req_ready,
    output logic [           2:0] d_req_cmd,
    output logic [ADDR_WIDTH-1:0] d_req_addr,
    output logic [           1:0] d_req_src,

    input logic                  bus_req_valid,
    input logic [           2:0] bus_req_cmd,
    input logic [ADDR_WIDTH-1:0] bus_req_addr,
    input logic [           1:0] bus_req_src,

    output logic       snp_rsp_valid,
    output logic       snp_rsp_hit,
    output logic [1:0] snp_rsp_state,
    output logic       snp_rsp_has_data,
    output logic       snp_rsp_ack,

    output logic                       sup_valid,
    input  logic                       sup_ready,
    output logic [CORE_DATA_WIDTH-1:0] sup_data,
    output logic [                2:0] sup_beat,
    output logic                       sup_last,

    input logic                       bus_dat_valid,
    input logic [                1:0] bus_dat_dst,
    input logic [CORE_DATA_WIDTH-1:0] bus_dat_data,
    input logic [                2:0] bus_dat_beat,
    input logic                       bus_dat_last,

    input logic                  bus_gnt_valid,
    input logic [           1:0] bus_gnt_dst,
    input logic [ADDR_WIDTH-1:0] bus_gnt_addr,
    input logic [           1:0] bus_gnt_state,
    input logic                  bus_gnt_ok
);

  // Command encodings
  localparam logic [2:0] CMD_GETS = 3'b000;
  localparam logic [2:0] CMD_GETM = 3'b001;
  localparam logic [2:0] CMD_UPGR = 3'b010;
  localparam logic [2:0] CMD_WB = 3'b011;

  // MESI encoding
  localparam logic [1:0] MESI_I = 2'b00;
  localparam logic [1:0] MESI_S = 2'b01;
  localparam logic [1:0] MESI_E = 2'b10;
  localparam logic [1:0] MESI_M = 2'b11;

  // Helper functions
  function automatic logic [ADDR_WIDTH-1:0] line_addr(input logic [ADDR_WIDTH-1:0] a);
    return {a[31:6], 6'b0};
  endfunction

  function automatic logic [SET_BITS_LEN-1:0] set_idx(input logic [ADDR_WIDTH-1:0] a);
    return a[11:6];
  endfunction

  function automatic logic [TAG_BITS_LEN-1:0] tag_of(input logic [ADDR_WIDTH-1:0] a);
    return a[31:12];
  endfunction

  // Optional helper:  snoop state transition
  function automatic logic [1:0] snp_next_state(input logic [2:0] cmd, input logic [1:0] cur);
    logic [1:0] ns;
    begin
      unique case (cmd)
        CMD_GETS: ns = ((cur == MESI_M) || (cur == MESI_E)) ? MESI_S : cur;
        CMD_GETM, CMD_UPGR: ns = MESI_I;
        default: ns = cur;
      endcase
      return ns;
    end
  endfunction

  // PLRU
  localparam int NUM_SETS = 1 << SET_BITS_LEN;
  logic [6:0] plru[0:NUM_SETS-1];

  function automatic logic [2:0] plru_pick(input logic [6:0] b);
    logic dir0, dir1;
    dir0 = b[6];
    if (dir0 == 1'b0) begin
      dir1 = b[5];
      plru_pick = (dir1 == 1'b0) ? ((b[3] == 1'b0) ? 3'd0 : 3'd1) : ((b[2] == 1'b0) ? 3'd2 : 3'd3);
    end else begin
      dir1 = b[4];
      plru_pick = (dir1 == 1'b0) ? ((b[1] == 1'b0) ? 3'd4 : 3'd5) : ((b[0] == 1'b0) ? 3'd6 : 3'd7);
    end
  endfunction

  function automatic logic [6:0] plru_update(input logic [6:0] b, input logic [2:0] way);
    logic [6:0] nb = b;
    case (way)
      3'd0: begin
        nb[6] = 1'b1;
        nb[5] = 1'b1;
        nb[3] = 1'b1;
      end
      3'd1: begin
        nb[6] = 1'b1;
        nb[5] = 1'b1;
        nb[3] = 1'b0;
      end
      3'd2: begin
        nb[6] = 1'b1;
        nb[5] = 1'b0;
        nb[2] = 1'b1;
      end
      3'd3: begin
        nb[6] = 1'b1;
        nb[5] = 1'b0;
        nb[2] = 1'b0;
      end
      3'd4: begin
        nb[6] = 1'b0;
        nb[4] = 1'b1;
        nb[1] = 1'b1;
      end
      3'd5: begin
        nb[6] = 1'b0;
        nb[4] = 1'b1;
        nb[1] = 1'b0;
      end
      3'd6: begin
        nb[6] = 1'b0;
        nb[4] = 1'b0;
        nb[0] = 1'b1;
      end
      3'd7: begin
        nb[6] = 1'b0;
        nb[4] = 1'b0;
        nb[0] = 1'b0;
      end
    endcase
    return nb;
  endfunction

  // CPU request registers
  logic                       cpu_req_valid_r;
  logic                       cpu_is_store_r;
  logic [     ADDR_WIDTH-1:0] cpu_addr_r;
  logic [CORE_DATA_WIDTH-1:0] cpu_wdata_r;
  logic [                7:0] cpu_wstrb_r;

  //  Capture hit metadata when lookup completes
  logic [                2:0] hit_way_r;
  logic [                1:0] hit_state_r;

  // Upgrade way capture + arm flag (robustness)
  logic [                2:0] upgrade_way_r;
  logic                       upgr_armed_r;

  // ? FIX #1: Add reflow hit way register
  logic [                2:0] reflow_hit_way_r;

  // Miss/refill buffers
  logic [              511:0] fill_buf;
  logic [     ADDR_WIDTH-1:0] miss_line_addr;
  logic [   SET_BITS_LEN-1:0] miss_set;
  logic [   TAG_BITS_LEN-1:0] miss_tag;
  logic [                2:0] victim_way;

  // Victim metadata
  logic v_vld, v_dirty;
  logic [TAG_BITS_LEN-1:0] v_tag;
  logic [             1:0] v_mesi;

  // WB line buffer
  logic [           511:0] wb_line_buf;
  logic [TAG_BITS_LEN-1:0] wb_tag;
  logic [             2:0] wb_beat;

  // Granted fill state
  logic [             1:0] granted_mesi;

  // Snoop registers
  logic                    snp_pending;
  logic [             2:0] snp_cmd_r;
  logic [  ADDR_WIDTH-1:0] snp_addr_r;
  logic [             1:0] snp_src_r;
  logic                    snp_hit_r;
  logic [             2:0] snp_hit_way;
  logic [             1:0] snp_state_r;
  logic                    snp_has_data_r;
  logic [           511:0] snp_line_r;

  // FSM
  typedef enum logic [4:0] {
    ST_IDLE             = 5'd0,
    ST_LOOKUP           = 5'd1,
    ST_HIT_STORE_COMMIT = 5'd2,

    ST_MISS_PICK_VICTIM    = 5'd3,
    ST_MISS_VMETA_REQ      = 5'd4,
    ST_MISS_VMETA_WAIT     = 5'd5,
    ST_MISS_VLINE_REQ      = 5'd6,
    ST_MISS_VLINE_WAIT     = 5'd7,
    ST_MISS_WB_REQ         = 5'd8,
    ST_MISS_WB_SUPPLY      = 5'd9,
    ST_MISS_GET_REQ        = 5'd10,
    ST_MISS_WAIT_GNT       = 5'd11,
    ST_MISS_WAIT_DATA      = 5'd12,
    ST_MISS_FILL           = 5'd13,
    ST_REFLOW_LOOKUP       = 5'd14,
    ST_REFLOW_STORE_COMMIT = 5'd15,

    ST_UPGR_REQ          = 5'd16,
    ST_UPGR_WAIT_GNT     = 5'd17,
    ST_UPGR_SETM         = 5'd18,
    ST_UPGR_STORE_COMMIT = 5'd19,

    ST_SNP_LINE_RD_REQ  = 5'd20,
    ST_SNP_LINE_RD_WAIT = 5'd21,
    ST_SNP_RESPOND      = 5'd22,
    ST_SNP_SUPPLY       = 5'd23,
    ST_SNP_UPDATE_STATE = 5'd24
  } state_t;

  state_t st, st_n;

  // ============================================================
  // PURE COMBINATIONAL next-state logic
  // ============================================================
  always_comb begin
    st_n = st;

    case (st)
      ST_IDLE: begin
        if (snp_pending) begin
          st_n = ST_SNP_LINE_RD_REQ;
        end else if (ldst_valid && !snp_pending) begin
          st_n = ST_LOOKUP;
        end
      end

      ST_LOOKUP: begin
        if (d_lookup_valid) begin  // ? Changed from d_rvalid
          if (d_hit) begin
            if (!cpu_is_store_r) begin
              st_n = ST_IDLE;  // Load hit - done
            end else begin
              // Store hit - check state
              if (d_mesi_state == MESI_M || d_mesi_state == MESI_E) begin
                st_n = ST_HIT_STORE_COMMIT;
              end else if (d_mesi_state == MESI_S) begin
                st_n = ST_UPGR_REQ;
              end else begin
                st_n = ST_MISS_PICK_VICTIM;  // Store hit in I state = miss
              end
            end
          end else begin
            st_n = ST_MISS_PICK_VICTIM;  // ? Miss - proceed to miss handling
          end
        end
        // else stay in ST_LOOKUP
      end

      ST_HIT_STORE_COMMIT: st_n = ST_IDLE;

      ST_UPGR_REQ: if (d_req_ready) st_n = ST_UPGR_WAIT_GNT;

      // ? FIX #2: Clean up upgrade denial
      ST_UPGR_WAIT_GNT: begin
        if (bus_gnt_valid && bus_gnt_dst == SRC_ID[1:0]) begin
          st_n = bus_gnt_ok ? ST_UPGR_SETM : ST_UPGR_REQ;
        end
      end

      ST_UPGR_SETM:         st_n = ST_UPGR_STORE_COMMIT;
      ST_UPGR_STORE_COMMIT: st_n = ST_IDLE;

      ST_MISS_PICK_VICTIM: st_n = ST_MISS_VMETA_REQ;
      ST_MISS_VMETA_REQ:   st_n = ST_MISS_VMETA_WAIT;

      ST_MISS_VMETA_WAIT: begin
        if (d_vmeta_valid) begin
          st_n = (d_vmeta_line_valid && d_vmeta_dirty) ? ST_MISS_VLINE_REQ : ST_MISS_GET_REQ;
        end
      end

      ST_MISS_VLINE_REQ:  st_n = ST_MISS_VLINE_WAIT;
      ST_MISS_VLINE_WAIT: if (d_vline_rd_valid) st_n = ST_MISS_WB_REQ;

      ST_MISS_WB_REQ:    if (d_req_ready) st_n = ST_MISS_WB_SUPPLY;
      ST_MISS_WB_SUPPLY: if (sup_ready && wb_beat == 3'd7) st_n = ST_MISS_GET_REQ;

      ST_MISS_GET_REQ: if (d_req_ready) st_n = ST_MISS_WAIT_GNT;

      ST_MISS_WAIT_GNT: begin
        if (bus_gnt_valid && bus_gnt_dst == SRC_ID[1:0]) begin
          st_n = bus_gnt_ok ? ST_MISS_WAIT_DATA : ST_MISS_GET_REQ;
        end
      end

      ST_MISS_WAIT_DATA: begin
        if (bus_dat_valid && bus_dat_dst == SRC_ID[1:0] && bus_dat_last) st_n = ST_MISS_FILL;
      end
      ST_MISS_FILL: st_n = ST_REFLOW_LOOKUP;

      ST_REFLOW_LOOKUP: begin
        if (d_rvalid && d_hit) begin
          st_n = cpu_is_store_r ? ST_REFLOW_STORE_COMMIT : ST_IDLE;
        end
      end

      ST_REFLOW_STORE_COMMIT: st_n = ST_IDLE;

      ST_SNP_LINE_RD_REQ: st_n = ST_SNP_LINE_RD_WAIT;

      // Always move on after one line-read wait cycle.
      // The sequential block below captures hit vs miss based on d_line_rd_valid.
      ST_SNP_LINE_RD_WAIT: st_n = ST_SNP_RESPOND;

      ST_SNP_RESPOND: st_n = (snp_hit_r && snp_has_data_r) ? ST_SNP_SUPPLY : ST_SNP_UPDATE_STATE;
      ST_SNP_SUPPLY: if (sup_ready && wb_beat == 3'd7) st_n = ST_SNP_UPDATE_STATE;
      ST_SNP_UPDATE_STATE: st_n = ST_IDLE;

      default: st_n = ST_IDLE;
    endcase
  end

  // ============================================================
  // PURE SEQUENTIAL - only st <= st_n
  // ============================================================
  integer s;
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      st                <= ST_IDLE;

      cpu_req_valid_r   <= 1'b0;
      cpu_is_store_r    <= 1'b0;
      cpu_addr_r        <= '0;
      cpu_wdata_r       <= '0;
      cpu_wstrb_r       <= '0;

      hit_way_r         <= '0;
      hit_state_r       <= MESI_I;

      upgrade_way_r     <= '0;
      upgr_armed_r      <= 1'b0;

      reflow_hit_way_r  <= '0;  // ? FIX #1: Initialize

      fill_buf          <= '0;
      miss_line_addr    <= '0;
      miss_set          <= '0;
      miss_tag          <= '0;
      victim_way        <= '0;
      granted_mesi      <= MESI_I;

      v_vld             <= 1'b0;
      v_dirty           <= 1'b0;
      v_tag             <= '0;
      v_mesi            <= MESI_I;

      wb_line_buf       <= '0;
      wb_tag            <= '0;
      wb_beat           <= 3'd0;

      snp_pending       <= 1'b0;
      snp_cmd_r         <= '0;
      snp_addr_r        <= '0;
      snp_src_r         <= '0;
      snp_hit_r         <= 1'b0;
      snp_hit_way       <= '0;
      snp_state_r       <= MESI_I;
      snp_has_data_r    <= 1'b0;
      snp_line_r        <= '0;

      ldst_ready        <= 1'b0;
      ldst_resp_valid   <= 1'b0;
      ldst_rdata        <= '0;

      d_lookup_en       <= 1'b0;
      d_lookup_addr     <= '0;
      d_lookup_is_store <= 1'b0;

      d_store_en        <= 1'b0;
      d_store_wdata     <= '0;
      d_store_wstrb     <= '0;

      d_fill_en         <= 1'b0;
      d_fill_addr       <= '0;
      d_fill_way        <= '0;
      d_fill_line       <= '0;
      d_fill_mesi       <= MESI_I;

      d_set_state_en    <= 1'b0;
      d_set_state_addr  <= '0;
      d_set_state_way   <= '0;
      d_set_state_val   <= MESI_I;

      d_line_rd_en      <= 1'b0;
      d_line_rd_addr    <= '0;

      d_vmeta_en        <= 1'b0;
      d_vmeta_set       <= '0;
      d_vmeta_way       <= '0;

      d_vline_rd_en     <= 1'b0;
      d_vline_rd_set    <= '0;
      d_vline_rd_way    <= '0;

      d_req_valid       <= 1'b0;
      d_req_cmd         <= '0;
      d_req_addr        <= '0;
      d_req_src         <= SRC_ID[1:0];

      snp_rsp_valid     <= 1'b0;
      snp_rsp_hit       <= 1'b0;
      snp_rsp_state     <= MESI_I;
      snp_rsp_has_data  <= 1'b0;
      snp_rsp_ack       <= 1'b0;

      sup_valid         <= 1'b0;
      sup_data          <= '0;
      sup_beat          <= '0;
      sup_last          <= 1'b0;

      for (s = 0; s < NUM_SETS; s++) plru[s] <= 7'b0;

    end else begin
      st              <= st_n;

      // Default: clear one-shot outputs
      ldst_ready      <= 1'b0;
      ldst_resp_valid <= 1'b0;
      d_lookup_en     <= 1'b0;
      d_store_en      <= 1'b0;
      d_fill_en       <= 1'b0;
      d_set_state_en  <= 1'b0;
      d_line_rd_en    <= 1'b0;
      d_vmeta_en      <= 1'b0;
      d_vline_rd_en   <= 1'b0;
      d_req_valid     <= 1'b0;
      snp_rsp_valid   <= 1'b0;
      sup_valid       <= 1'b0;

      // Latch incoming snoop (can queue while busy)
      if (bus_req_valid && !snp_pending && bus_req_src != SRC_ID[1:0]) begin
        snp_pending <= 1'b1;
        snp_cmd_r   <= bus_req_cmd;
        snp_addr_r  <= bus_req_addr;
        snp_src_r   <= bus_req_src;
      end

      case (st)
        ST_IDLE: begin
          ldst_ready <= !snp_pending;

          if (!snp_pending && ldst_valid) begin
            cpu_req_valid_r <= 1'b1;
            cpu_is_store_r  <= ldst_is_store;
            cpu_addr_r      <= ldst_addr;
            cpu_wdata_r     <= ldst_wdata;
            cpu_wstrb_r     <= ldst_wstrb;

            miss_line_addr  <= line_addr(ldst_addr);
            miss_set        <= set_idx(ldst_addr);
            miss_tag        <= tag_of(ldst_addr);
            victim_way      <= plru_pick(plru[set_idx(ldst_addr)]);

            upgr_armed_r    <= 1'b0;
          end else begin
            cpu_req_valid_r <= 1'b0;
          end
        end

        ST_LOOKUP: begin
          // Issue lookup (if not stalled)
          if (!d_lookup_stall || !cpu_is_store_r) begin
            d_lookup_en       <= 1'b1;
            d_lookup_addr     <= cpu_addr_r;
            d_lookup_is_store <= cpu_is_store_r;
          end

          // ? Changed:  Capture results when lookup completes (hit OR miss)
          if (d_lookup_valid) begin  // Changed from:  if (d_rvalid && d_hit)
            if (d_hit) begin
              // ? Only do hit-specific actions when actually hit
              hit_way_r <= d_hit_way;
              hit_state_r <= d_mesi_state;

              plru[set_idx(cpu_addr_r)] <= plru_update(plru[set_idx(cpu_addr_r)], d_hit_way);

              if (!cpu_is_store_r) begin
                ldst_resp_valid <= 1'b1;
                ldst_rdata      <= d_rdata;
              end else if (d_mesi_state == MESI_S) begin
                upgrade_way_r <= d_hit_way;
                upgr_armed_r  <= 1'b1;  // Arm for UPGR path
              end
            end
            // ? On miss:  don't capture anything, just let state transition happen
            // (State transition to ST_MISS_PICK_VICTIM happens in combinational block)
          end
        end
        ST_HIT_STORE_COMMIT: begin
          d_store_en    <= 1'b1;
          d_store_wdata <= cpu_wdata_r;
          d_store_wstrb <= cpu_wstrb_r;
          ldst_resp_valid <= 1'b1;

          if (hit_state_r == MESI_E) begin
            d_set_state_en   <= 1'b1;
            d_set_state_addr <= line_addr(cpu_addr_r);
            d_set_state_way  <= hit_way_r;
            d_set_state_val  <= MESI_M;
          end
        end

        // ---------- UPGR flow ----------
        ST_UPGR_REQ: begin
          d_req_valid <= 1'b1;
          d_req_cmd   <= CMD_UPGR;
          d_req_addr  <= line_addr(cpu_addr_r);
          d_req_src   <= SRC_ID[1:0];
        end

        // ? FIX #2: Clear upgr_armed_r on denial
        ST_UPGR_WAIT_GNT: begin
          if (bus_gnt_valid && bus_gnt_dst == SRC_ID[1:0] && !bus_gnt_ok) begin
            upgr_armed_r <= 1'b0;
          end
        end

        ST_UPGR_SETM: begin
          d_set_state_en   <= 1'b1;
          d_set_state_addr <= line_addr(cpu_addr_r);
          d_set_state_way  <= upgrade_way_r;
          d_set_state_val  <= MESI_M;
        end

        ST_UPGR_STORE_COMMIT: begin
          if (upgr_armed_r) begin
            d_store_en    <= 1'b1;
            d_store_wdata <= cpu_wdata_r;
            d_store_wstrb <= cpu_wstrb_r;
            ldst_resp_valid <= 1'b1;
          end
          upgr_armed_r <= 1'b0;
        end

        // ---------- Miss flow ----------
        ST_MISS_VMETA_REQ: begin
          d_vmeta_en  <= 1'b1;
          d_vmeta_set <= miss_set;
          d_vmeta_way <= victim_way;
        end

        ST_MISS_VMETA_WAIT: begin
          if (d_vmeta_valid) begin
            v_vld   <= d_vmeta_line_valid;
            v_dirty <= d_vmeta_dirty;
            v_tag   <= d_vmeta_tag;
            v_mesi  <= d_vmeta_mesi;
          end
        end

        ST_MISS_VLINE_REQ: begin
          d_vline_rd_en  <= 1'b1;
          d_vline_rd_set <= miss_set;
          d_vline_rd_way <= victim_way;
        end

        ST_MISS_VLINE_WAIT: begin
          if (d_vline_rd_valid) begin
            wb_line_buf <= d_vline_rd_data;
            wb_tag      <= d_vline_rd_tag;
            wb_beat     <= 3'd0;
          end
        end

        ST_MISS_WB_REQ: begin
          d_req_valid <= 1'b1;
          d_req_cmd   <= CMD_WB;
          d_req_addr  <= {wb_tag, miss_set, 6'b0};
          d_req_src   <= SRC_ID[1:0];
        end

        ST_MISS_WB_SUPPLY: begin
          sup_valid <= 1'b1;
          sup_beat  <= wb_beat;
          sup_last  <= (wb_beat == 3'd7);
          sup_data  <= wb_line_buf[(wb_beat*64)+:64];

          if (sup_ready) begin
            wb_beat <= (wb_beat == 3'd7) ? 3'd0 : (wb_beat + 3'd1);
          end
        end

        ST_MISS_GET_REQ: begin
          d_req_valid <= 1'b1;
          d_req_cmd   <= cpu_is_store_r ? CMD_GETM : CMD_GETS;
          d_req_addr  <= miss_line_addr;
          d_req_src   <= SRC_ID[1:0];
        end

        ST_MISS_WAIT_GNT: begin
          if (bus_gnt_valid && bus_gnt_dst == SRC_ID[1:0] && bus_gnt_ok) begin
            granted_mesi <= bus_gnt_state;
            fill_buf     <= '0;
          end
        end

        ST_MISS_WAIT_DATA: begin
          if (bus_dat_valid && bus_dat_dst == SRC_ID[1:0]) begin
            fill_buf[(bus_dat_beat*64)+:64] <= bus_dat_data;
          end
        end

        ST_MISS_FILL: begin
          d_fill_en <= 1'b1;
          d_fill_addr <= miss_line_addr;
          d_fill_way <= victim_way;
          d_fill_line <= fill_buf;
          d_fill_mesi <= granted_mesi;

          plru[miss_set] <= plru_update(plru[miss_set], victim_way);
        end

        ST_REFLOW_LOOKUP: begin
          if (!d_lookup_stall || !cpu_is_store_r) begin
            d_lookup_en       <= 1'b1;
            d_lookup_addr     <= cpu_addr_r;
            d_lookup_is_store <= cpu_is_store_r;
          end

          // ? FIX #1:  Capture reflow hit way
          if (d_rvalid && d_hit) begin
            reflow_hit_way_r <= d_hit_way;
            plru[set_idx(cpu_addr_r)] <= plru_update(plru[set_idx(cpu_addr_r)], d_hit_way);

            if (!cpu_is_store_r) begin
              ldst_resp_valid <= 1'b1;
              ldst_rdata      <= d_rdata;
            end
          end
        end

        // ? FIX #1: Add E?M transition for store miss refill
        ST_REFLOW_STORE_COMMIT: begin
          d_store_en      <= 1'b1;
          d_store_wdata   <= cpu_wdata_r;
          d_store_wstrb   <= cpu_wstrb_r;
          ldst_resp_valid <= 1'b1;

          // Transition E?M if fill was in Exclusive state
          if (granted_mesi == MESI_E) begin
            d_set_state_en   <= 1'b1;
            d_set_state_addr <= line_addr(cpu_addr_r);
            d_set_state_way  <= reflow_hit_way_r;
            d_set_state_val  <= MESI_M;
          end
        end

        // ---------- Snoop flow ----------
        ST_SNP_LINE_RD_REQ: begin
          d_line_rd_en   <= 1'b1;
          d_line_rd_addr <= snp_addr_r;
          wb_beat        <= 3'd0;
        end

        ST_SNP_LINE_RD_WAIT: begin
          if (d_line_rd_valid) begin
            snp_hit_r      <= 1'b1;
            snp_hit_way    <= d_hit_way;
            snp_state_r    <= d_mesi_state;
            snp_has_data_r <= (d_mesi_state == MESI_M);
            snp_line_r     <= d_line_rd_data;
          end else begin
            snp_hit_r      <= 1'b0;
            snp_state_r    <= MESI_I;
            snp_has_data_r <= 1'b0;
          end
        end

        ST_SNP_RESPOND: begin
          snp_rsp_valid    <= 1'b1;
          snp_rsp_hit      <= snp_hit_r;
          snp_rsp_state    <= snp_state_r;
          snp_rsp_has_data <= snp_has_data_r;
          snp_rsp_ack      <= 1'b1;
        end

        ST_SNP_SUPPLY: begin
          sup_valid <= 1'b1;
          sup_beat  <= wb_beat;
          sup_last  <= (wb_beat == 3'd7);
          sup_data  <= snp_line_r[(wb_beat*64)+:64];

          if (sup_ready) begin
            wb_beat <= (wb_beat == 3'd7) ? 3'd0 : (wb_beat + 3'd1);
          end
        end

        ST_SNP_UPDATE_STATE: begin
          if (snp_hit_r) begin
            d_set_state_en   <= 1'b1;
            d_set_state_addr <= snp_addr_r;
            d_set_state_way  <= snp_hit_way;
            d_set_state_val  <= snp_next_state(snp_cmd_r, snp_state_r);
          end
          snp_pending <= 1'b0;
        end

        default: ;
      endcase
    end
  end

endmodule
