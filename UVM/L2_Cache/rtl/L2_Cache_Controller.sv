`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name :        L2_Cache_Controller
// 
//
//////////////////////////////////////////////////////////////////////////////////

module L2_Cache_Controller #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int SET_BITS_LEN    = 11,  // 2048 sets
    parameter int TAG_BITS_LEN    = 15,  // 32-11-6
    parameter int SRC_ID          = 2    // 2-bit fabric ID for L2
)(
    input  logic                       clk,
    input  logic                       rst_n,

    // ============================================================
    // Snoop bus input (arbiter ? L2_ctrl)
    // ============================================================
    input  logic                       bus_req_valid,
    input  logic [2:0]                 bus_req_cmd,
    input  logic [ADDR_WIDTH-1:0]      bus_req_addr,
    input  logic [1:0]                 bus_req_src,

    // ============================================================
    // Data transfer phase input (global bus)  [needed for WB into L2]
    // ============================================================
    input  logic                       bus_dat_valid,
    input  logic [1:0]                 bus_dat_dst,
    input  logic [ADDR_WIDTH-1:0]      bus_dat_addr,
    input  logic [2:0]                 bus_dat_beat,
    input  logic [CORE_DATA_WIDTH-1:0] bus_dat_data,
    input  logic                       bus_dat_last,
    output logic                       l2_wb_data_ready,

    // ============================================================
    // Snoop response (L2_ctrl ? arbiter)
    // ============================================================
    output logic                       l2_snp_valid,
    output logic                       l2_snp_hit,
    output logic                       l2_snp_has_data,
    output logic                       l2_snp_ack,

    // ============================================================
    // Data supplier interface (L2_ctrl ? arbiter)
    // ============================================================
    output logic                       sup_valid,
    input  logic                       sup_ready,
    output logic [CORE_DATA_WIDTH-1:0] sup_data,
    output logic [2:0]                 sup_beat,
    output logic                       sup_last,

    // ============================================================
    // Memory interface (L2_ctrl ? memory)
    // ============================================================
    output logic                       mem_req_valid,
    output logic                       mem_req_rw,          // 0=read, 1=write
    output logic [ADDR_WIDTH-1:0]      mem_req_addr,        // line-aligned
    output logic [511:0]               mem_req_line,        // for writeback
    input  logic                       mem_req_ready,

    input  logic                       mem_resp_valid,
    input  logic [511:0]               mem_resp_line,

    // ============================================================
    // L2_ctrl <-> L2_cache storage (internal, driven by controller)
    // ============================================================
    output logic                       l2_lookup_en,
    output logic [ADDR_WIDTH-1:0]      l2_lookup_addr,
    output logic                       l2_lookup_is_store,
    input  logic                       l2_lookup_stall,

    output logic                       l2_store_en,
    output logic [CORE_DATA_WIDTH-1:0] l2_store_wdata,
    output logic [7:0]                 l2_store_wstrb,

    output logic                       l2_fill_en,
    output logic [ADDR_WIDTH-1:0]      l2_fill_addr,
    output logic [2:0]                 l2_fill_way,
    output logic [511:0]               l2_fill_line,
    output logic [1:0]                 l2_fill_mesi,

    output logic                       l2_set_state_en,
    output logic [ADDR_WIDTH-1:0]      l2_set_state_addr,
    output logic [2:0]                 l2_set_state_way,
    output logic [1:0]                 l2_set_state_val,

    output logic                       l2_line_rd_en,
    output logic [ADDR_WIDTH-1:0]      l2_line_rd_addr,
    input  logic [511:0]               l2_line_rd_data,
    input  logic                       l2_line_rd_valid,

    output logic                       l2_vmeta_en,
    output logic [SET_BITS_LEN-1:0]    l2_vmeta_set,
    output logic [2:0]                 l2_vmeta_way,
    input  logic                       l2_vmeta_valid,
    input  logic [TAG_BITS_LEN-1:0]    l2_vmeta_tag,
    input  logic                       l2_vmeta_line_valid,
    input  logic [1:0]                 l2_vmeta_mesi,
    input  logic                       l2_vmeta_dirty,

    output logic                       l2_vline_rd_en,
    output logic [SET_BITS_LEN-1:0]    l2_vline_rd_set,
    output logic [2:0]                 l2_vline_rd_way,
    input  logic                       l2_vline_rd_valid,
    input  logic [511:0]               l2_vline_rd_data,
    input  logic [TAG_BITS_LEN-1:0]    l2_vline_rd_tag,
    input  logic                       l2_vline_rd_entry_valid,
    input  logic [1:0]                 l2_vline_rd_mesi,
    input  logic                       l2_vline_rd_dirty,

    input  logic [CORE_DATA_WIDTH-1:0] l2_rdata,
    input  logic                       l2_hit,
    input  logic                       l2_rvalid,
    input  logic [2:0]                 l2_hit_way,
    input  logic [1:0]                 l2_mesi_state,
    input  logic                       l2_dirty,
    input  logic                       l2_lookup_valid
);

    // ------------------------------------------------------------
    // Encodings (matching L1)
    // ------------------------------------------------------------
    localparam logic [2:0] CMD_GETS = 3'b000;
    localparam logic [2:0] CMD_GETM = 3'b001;
    localparam logic [2:0] CMD_UPGR = 3'b010;
    localparam logic [2:0] CMD_WB   = 3'b011;

    localparam logic [1:0] MESI_I = 2'b00;
    localparam logic [1:0] MESI_S = 2'b01;
    localparam logic [1:0] MESI_E = 2'b10;
    localparam logic [1:0] MESI_M = 2'b11;

    function automatic logic [ADDR_WIDTH-1:0] line_addr(input logic [ADDR_WIDTH-1:0] a);
        return {a[31:6], 6'b0};
    endfunction

    function automatic logic [SET_BITS_LEN-1:0] set_idx(input logic [ADDR_WIDTH-1:0] a);
        return a[6 +: SET_BITS_LEN];
    endfunction

    // ------------------------------------------------------------
    // 8-way PLRU per set (same tree as your L1 controller)
    // ------------------------------------------------------------
    localparam int NUM_SETS = 1 << SET_BITS_LEN;
    logic [6:0] plru [0:NUM_SETS-1];

    function automatic logic [2:0] plru_pick(input logic [6:0] b);
        logic dir0, dir1;
        dir0 = b[6];
        if (dir0 == 1'b0) begin
            dir1 = b[5];
            plru_pick = (dir1==1'b0) ? ((b[3]==1'b0) ? 3'd0 : 3'd1) : ((b[2]==1'b0) ? 3'd2 : 3'd3);
        end else begin
            dir1 = b[4];
            plru_pick = (dir1==1'b0) ? ((b[1]==1'b0) ? 3'd4 : 3'd5) : ((b[0]==1'b0) ? 3'd6 : 3'd7);
        end
    endfunction

    function automatic logic [6:0] plru_update(input logic [6:0] b, input logic [2:0] way);
        logic [6:0] nb = b;
        case (way)
            3'd0: begin nb[6]=1'b1; nb[5]=1'b1; nb[3]=1'b1; end
            3'd1: begin nb[6]=1'b1; nb[5]=1'b1; nb[3]=1'b0; end
            3'd2: begin nb[6]=1'b1; nb[5]=1'b0; nb[2]=1'b1; end
            3'd3: begin nb[6]=1'b1; nb[5]=1'b0; nb[2]=1'b0; end
            3'd4: begin nb[6]=1'b0; nb[4]=1'b1; nb[1]=1'b1; end
            3'd5: begin nb[6]=1'b0; nb[4]=1'b1; nb[1]=1'b0; end
            3'd6: begin nb[6]=1'b0; nb[4]=1'b0; nb[0]=1'b1; end
            3'd7: begin nb[6]=1'b0; nb[4]=1'b0; nb[0]=1'b0; end
        endcase
        return nb;
    endfunction

    // ------------------------------------------------------------
    // Request registers (latched snoop request)
    // ------------------------------------------------------------
    logic                    req_pending;
    logic [2:0]              req_cmd_r;
    logic [ADDR_WIDTH-1:0]   req_addr_r;
    logic [1:0]              req_src_r;
    logic [ADDR_WIDTH-1:0]   req_line_addr_r;
    logic [SET_BITS_LEN-1:0] req_set_r;

    // Lookup capture
    logic                    hit_r;
    logic [2:0]              hit_way_r;
    logic [1:0]              hit_state_r;

    // Supply buffer
    logic [511:0]            supply_line_buf;
    logic [2:0]              supply_beat_r;

    // WB receive buffer
    logic [511:0]            wb_rx_buf;

    // Miss / eviction
    logic [2:0]              victim_way;
    logic                    v_vld, v_dirty;
    logic [TAG_BITS_LEN-1:0] v_tag;
    logic [511:0]            v_line_buf;

    // Memory fill
    logic [511:0]            mem_fill_line;
    logic [1:0]              fill_mesi_next;
      logic  wbxx;

    // ------------------------------------------------------------
    // FSM
    // ------------------------------------------------------------
    typedef enum logic [4:0] {
        ST_IDLE               = 5'd0,
        ST_LOOKUP             = 5'd1,

        // Early snoop response (after lookup)
        ST_SNP_RESPOND        = 5'd2,

        // HIT supply path (need full line)
        ST_HIT_LINE_RD_REQ    = 5'd3,
        ST_HIT_LINE_RD_WAIT   = 5'd4,
        ST_SUPPLY             = 5'd5,
        ST_UPDATE_STATE       = 5'd6,

        // MISS paths
        ST_MISS_PICK_VICTIM   = 5'd7,
        ST_MISS_VMETA_REQ     = 5'd8,
        ST_MISS_VMETA_WAIT    = 5'd9,
        ST_MISS_VLINE_REQ     = 5'd10,
        ST_MISS_VLINE_WAIT    = 5'd11,
        ST_MEM_WB_REQ         = 5'd12,
        ST_MEM_RD_REQ         = 5'd13,
        ST_MEM_WAIT_RESP      = 5'd14,
        ST_MISS_FILL          = 5'd15,
        ST_MISS_LINE_RD_REQ   = 5'd16,
        ST_MISS_LINE_RD_WAIT  = 5'd17,

        // WB from upper (write into L2)
        ST_WB_RECV            = 5'd18,
        ST_WB_FILL            = 5'd19
    } state_t;

    state_t st, st_n;

    // ------------------------------------------------------------
    // Next-state logic
    // ------------------------------------------------------------
    always_comb begin
        st_n = st;

        case (st)
            ST_IDLE: begin
                if ( !req_pending && bus_req_valid) st_n = ST_LOOKUP;
            end

            ST_LOOKUP: begin
                if (l2_lookup_valid) st_n = ST_SNP_RESPOND;
            end

            // Respond immediately after lookup completes
            ST_SNP_RESPOND: begin
                if (hit_r) begin
                    if (req_cmd_r == CMD_WB) st_n = ST_WB_RECV;
                    else st_n = ST_HIT_LINE_RD_REQ;
                end else begin
                    // MISS
                   st_n = ST_MISS_PICK_VICTIM;
                end
            end

            // Hit supply
            ST_HIT_LINE_RD_REQ:  st_n = ST_HIT_LINE_RD_WAIT;
            ST_HIT_LINE_RD_WAIT: if (l2_line_rd_valid) begin
                if ((req_cmd_r == CMD_GETS) || (req_cmd_r == CMD_GETM)) st_n = ST_SUPPLY;
                else st_n = ST_UPDATE_STATE; // UPGR no data
            end

            ST_SUPPLY: if (sup_ready && (supply_beat_r == 3'd7)) st_n = ST_UPDATE_STATE;
            ST_UPDATE_STATE: st_n = ST_IDLE;

            // Miss flow
            ST_MISS_PICK_VICTIM: st_n = ST_MISS_VMETA_REQ;
            ST_MISS_VMETA_REQ:   st_n = ST_MISS_VMETA_WAIT;

            ST_MISS_VMETA_WAIT: begin
                if (l2_vmeta_valid) begin
                    if (l2_vmeta_line_valid && l2_vmeta_dirty) st_n = ST_MISS_VLINE_REQ;
                    else begin
                        if (req_cmd_r == CMD_WB) st_n = ST_WB_RECV;
                        else st_n = ST_MEM_RD_REQ;
                    end
                end
            end

            ST_MISS_VLINE_REQ:  st_n = ST_MISS_VLINE_WAIT;
            ST_MISS_VLINE_WAIT: if (l2_vline_rd_valid) st_n = ST_MEM_WB_REQ;

            ST_MEM_WB_REQ: if (mem_req_ready) begin
                if (req_cmd_r == CMD_WB) st_n = ST_WB_RECV;
                else st_n = ST_MEM_RD_REQ;
            end

            ST_MEM_RD_REQ:    if (mem_req_ready)  st_n = ST_MEM_WAIT_RESP;
            ST_MEM_WAIT_RESP: if (mem_resp_valid) st_n = ST_MISS_FILL;

            ST_MISS_FILL: st_n = ST_MISS_LINE_RD_REQ;

            ST_MISS_LINE_RD_REQ:  st_n = ST_MISS_LINE_RD_WAIT;
            ST_MISS_LINE_RD_WAIT: if (l2_line_rd_valid) begin
                if ((req_cmd_r == CMD_GETS) || (req_cmd_r == CMD_GETM)) st_n = ST_SUPPLY;
                else st_n = ST_UPDATE_STATE;
            end

            // WB receive + fill
            ST_WB_RECV: begin
                if (bus_dat_valid &&
                    (bus_dat_addr == req_line_addr_r) &&
                    bus_dat_last) st_n = ST_WB_FILL;
            end

            ST_WB_FILL: st_n = ST_IDLE;

            default: st_n = ST_IDLE;
        endcase
    end

    // ------------------------------------------------------------
    // Sequential + outputs
    // ------------------------------------------------------------
    integer s;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            st <= ST_IDLE;

            req_pending     <= 1'b0;
            req_cmd_r       <= '0;
            req_addr_r      <= '0;
            req_src_r       <= '0;
            req_line_addr_r <= '0;
            req_set_r       <= '0;

            hit_r        <= 1'b0;
            hit_way_r    <= '0;
            hit_state_r  <= MESI_I;

            supply_line_buf <= '0;
            supply_beat_r   <= 3'd0;

            wb_rx_buf       <= '0;

            victim_way   <= '0;
            v_vld        <= 1'b0;
            v_dirty      <= 1'b0;
            v_tag        <= '0;
            v_line_buf   <= '0;

            mem_fill_line  <= '0;
            fill_mesi_next <= MESI_S;

            // outputs reset
            l2_snp_valid    <= 1'b0;
            l2_snp_hit      <= 1'b0;
            l2_snp_has_data <= 1'b0;
            l2_snp_ack      <= 1'b0;

            sup_valid <= 1'b0;
            sup_data  <= '0;
            sup_beat  <= '0;
            sup_last  <= 1'b0;

            mem_req_valid <= 1'b0;
            mem_req_rw    <= 1'b0;
            mem_req_addr  <= '0;
            mem_req_line  <= '0;

            // cache storage control outputs
            l2_lookup_en       <= 1'b0;
            l2_lookup_addr     <= '0;
            l2_lookup_is_store <= 1'b0;

            l2_store_en    <= 1'b0;
            l2_store_wdata <= '0;
            l2_store_wstrb <= '0;

            l2_fill_en   <= 1'b0;
            l2_fill_addr <= '0;
            l2_fill_way  <= '0;
            l2_fill_line <= '0;
            l2_fill_mesi <= MESI_I;

            l2_set_state_en   <= 1'b0;
            l2_set_state_addr <= '0;
            l2_set_state_way  <= '0;
            l2_set_state_val  <= MESI_I;

            l2_line_rd_en   <= 1'b0;
            l2_line_rd_addr <= '0;

            l2_vmeta_en  <= 1'b0;
            l2_vmeta_set <= '0;
            l2_vmeta_way <= '0;

            l2_vline_rd_en  <= 1'b0;
            l2_vline_rd_set <= '0;
            l2_vline_rd_way <= '0;
              wbxx <=1'b0;
                l2_wb_data_ready <= 1'b0;
            for (s = 0; s < NUM_SETS; s++) plru[s] <= 7'b0;

        end else begin
            st <= st_n;
            if (st == ST_IDLE && st_n == ST_LOOKUP)req_pending <= 1'b1;
              l2_wb_data_ready <= (st == ST_WB_RECV);         
                
            // one-shot defaults
            l2_snp_valid <= 1'b0;
            l2_snp_ack   <= 1'b0;

            sup_valid <= 1'b0;

            mem_req_valid <= 1'b0;

            l2_lookup_en    <= 1'b0;
            l2_store_en     <= 1'b0;
            l2_fill_en      <= 1'b0;
            l2_set_state_en <= 1'b0;
            l2_line_rd_en   <= 1'b0;
            l2_vmeta_en     <= 1'b0;
            l2_vline_rd_en  <= 1'b0;

            case (st)
                ST_IDLE: begin
                    if (!req_pending && bus_req_valid) begin
                       
                        req_cmd_r       <= bus_req_cmd;
                        req_addr_r      <= bus_req_addr;
                        req_src_r       <= bus_req_src;
                        req_line_addr_r <= line_addr(bus_req_addr);
                        req_set_r       <= set_idx(bus_req_addr);
                        victim_way      <= plru_pick(plru[set_idx(bus_req_addr)]);
                        supply_beat_r   <= 3'd0;

                        // clear previous WB buffer (optional safety)
                        wb_rx_buf       <= '0;
                    end
                end

                ST_LOOKUP: begin
                    
                    l2_lookup_en      <= 1'b1;
                    l2_lookup_addr    <= req_addr_r;
                    l2_lookup_is_store <= 1'b0;

                    if (l2_lookup_valid) begin
                        hit_r       <= l2_hit;
                        hit_way_r   <= l2_hit_way;
                        hit_state_r <= l2_mesi_state;

                        if (l2_hit) plru[req_set_r] <= plru_update(plru[req_set_r], l2_hit_way);
                    end
                end

                // Immediate snoop response after lookup completes (hit or miss)
                ST_SNP_RESPOND: begin
                    l2_snp_valid    <= 1'b1;
                    l2_snp_ack      <= 1'b1;
                    l2_snp_hit      <= hit_r;
                    // L2 can supply data on GETS/GETM hits for any valid state; only UPGR has no data phase.
                    l2_snp_has_data <= hit_r && ((req_cmd_r == CMD_GETS) || (req_cmd_r == CMD_GETM));
                end

                // Hit: read full line for supply
                ST_HIT_LINE_RD_REQ: begin
                    l2_line_rd_en   <= 1'b1;
                    l2_line_rd_addr <= req_line_addr_r;
                    supply_beat_r   <= 3'd0;
                end

                ST_HIT_LINE_RD_WAIT: begin
                    if (l2_line_rd_valid) begin
                        supply_line_buf <= l2_line_rd_data;
                    end
                end

                ST_SUPPLY: begin
                    sup_valid <= 1'b1;
                    sup_beat  <= supply_beat_r;
                    sup_last  <= (supply_beat_r == 3'd7);
                    sup_data  <= supply_line_buf[(supply_beat_r*64) +: 64];

                    if (sup_ready) begin
                        supply_beat_r <= (supply_beat_r == 3'd7) ? 3'd0 : (supply_beat_r + 3'd1);
                    end
                end

                ST_UPDATE_STATE: begin
                    if (hit_r) begin
                        if ((req_cmd_r == CMD_GETM) || (req_cmd_r == CMD_UPGR)) begin
                            l2_set_state_en   <= 1'b1;
                            l2_set_state_addr <= req_line_addr_r;
                            l2_set_state_way  <= hit_way_r;
                            l2_set_state_val  <= MESI_I;
                        end
                    end

                    // Clear pending when request completes
                    req_pending <= 1'b0;
                end

                // -------------------- MISS / EVICTION --------------------
                ST_MISS_VMETA_REQ: begin
                    l2_vmeta_en  <= 1'b1;
                    l2_vmeta_set <= req_set_r;
                    l2_vmeta_way <= victim_way;
                end

                ST_MISS_VMETA_WAIT: begin
                    if (l2_vmeta_valid) begin
                        v_vld   <= l2_vmeta_line_valid;
                        v_dirty <= l2_vmeta_dirty;
                        v_tag   <= l2_vmeta_tag;
                    end
                end

                ST_MISS_VLINE_REQ: begin
                    l2_vline_rd_en  <= 1'b1;
                    l2_vline_rd_set <= req_set_r;
                    l2_vline_rd_way <= victim_way;
                end

                ST_MISS_VLINE_WAIT: begin
                    if (l2_vline_rd_valid) begin
                        v_line_buf <= l2_vline_rd_data;
                    end
                end

                ST_MEM_WB_REQ: begin
                    mem_req_valid <= 1'b1;
                    mem_req_rw    <= 1'b1;
                    mem_req_addr  <= {v_tag, req_set_r, 6'b0};
                    mem_req_line  <= v_line_buf;
                end

                ST_MEM_RD_REQ: begin
                    mem_req_valid <= 1'b1;
                    mem_req_rw    <= 1'b0;
                    mem_req_addr  <= req_line_addr_r;
                    mem_req_line  <= '0;
                end

                ST_MEM_WAIT_RESP: begin
                    if (mem_resp_valid) begin
                        mem_fill_line <= mem_resp_line;
                        if (req_cmd_r == CMD_GETS) fill_mesi_next <= MESI_S;
                        else fill_mesi_next <= MESI_M;
                    end
                end

                ST_MISS_FILL: begin
                    l2_fill_en   <= 1'b1;
                    l2_fill_addr <= req_line_addr_r;
                    l2_fill_way  <= victim_way;
                    l2_fill_line <= mem_fill_line;
                    l2_fill_mesi <= fill_mesi_next;

                    plru[req_set_r] <= plru_update(plru[req_set_r], victim_way);
                end

                ST_MISS_LINE_RD_REQ: begin
                    l2_line_rd_en   <= 1'b1;
                    l2_line_rd_addr <= req_line_addr_r;
                    supply_beat_r   <= 3'd0;
                end

                ST_MISS_LINE_RD_WAIT: begin
                    if (l2_line_rd_valid) begin
                        supply_line_buf <= l2_line_rd_data;

                        // Treat as hit after fill
                        hit_r       <= 1'b1;
                        hit_way_r   <= victim_way;
                        hit_state_r <= fill_mesi_next;
                    end
                end

                // -------------------- WB RECEIVE (into L2) --------------------
                ST_WB_RECV: begin
                    if (bus_dat_valid &&
                        (bus_dat_addr == req_line_addr_r)) begin
                        wbxx <=1'b1;
                        wb_rx_buf[(bus_dat_beat*64) +: 64] <= bus_dat_data;
                      
                    end
                end

                ST_WB_FILL: begin
                    logic [2:0] wb_way;
                    wb_way = hit_r ? hit_way_r : victim_way;

                    l2_fill_en   <= 1'b1;
                    l2_fill_addr <= req_line_addr_r;
                    l2_fill_way  <= wb_way;
                    l2_fill_line <= wb_rx_buf;
                    l2_fill_mesi <= MESI_M;

                    plru[req_set_r] <= plru_update(plru[req_set_r], wb_way);

                    // WB completion response: acknowledge ownership/writeback completion only; no separate supply phase.
                    l2_snp_valid    <= 1'b1;
                    l2_snp_ack      <= 1'b1;
                    l2_snp_hit      <= 1'b1;
                    l2_snp_has_data <= 1'b0;

                    // Clear pending when WB completes
                    req_pending <= 1'b0;
                end

                default: ;
            endcase
        end
    end

endmodule