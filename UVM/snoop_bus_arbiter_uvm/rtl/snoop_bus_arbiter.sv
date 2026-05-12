`timescale 1ns/1ps

module snoop_bus_arbiter (
    input  logic        clk,
    input  logic        rst_n,

    // A) Request inputs
    input  logic        i0_req_valid,
    output logic        i0_req_ready,
    input  logic [2:0]  i0_req_cmd,
    input  logic [31:0] i0_req_addr,
    input  logic [1:0]  i0_req_src,

    input  logic        i1_req_valid,
    output logic        i1_req_ready,
    input  logic [2:0]  i1_req_cmd,
    input  logic [31:0] i1_req_addr,
    input  logic [1:0]  i1_req_src,

    input  logic        d0_req_valid,
    output logic        d0_req_ready,
    input  logic [2:0]  d0_req_cmd,
    input  logic [31:0] d0_req_addr,
    input  logic [1:0]  d0_req_src,

    input  logic        d1_req_valid,
    output logic        d1_req_ready,
    input  logic [2:0]  d1_req_cmd,
    input  logic [31:0] d1_req_addr,
    input  logic [1:0]  d1_req_src,

    // B) Broadcast request
    output logic        bus_req_valid,
    output logic [2:0]  bus_req_cmd,
    output logic [31:0] bus_req_addr,
    output logic [1:0]  bus_req_src,

    // C) Snoop responses
    input  logic        d0_snp_rsp_valid,
    input  logic        d0_snp_rsp_hit,
    input  logic [1:0]  d0_snp_rsp_state,
    input  logic        d0_snp_rsp_has_data,
    input  logic        d0_snp_rsp_ack,

    input  logic        d1_snp_rsp_valid,
    input  logic        d1_snp_rsp_hit,
    input  logic [1:0]  d1_snp_rsp_state,
    input  logic        d1_snp_rsp_has_data,
    input  logic        d1_snp_rsp_ack,

    input  logic        l2_snp_valid,
    input  logic        l2_snp_hit,
    input  logic        l2_snp_has_data,
    input  logic        l2_snp_ack,

    // D) Suppliers
    input  logic        d0_sup_valid,
    output logic        d0_sup_ready,
    input  logic [63:0] d0_sup_data,
    input  logic [2:0]  d0_sup_beat,
    input  logic        d0_sup_last,

    input  logic        d1_sup_valid,
    output logic        d1_sup_ready,
    input  logic [63:0] d1_sup_data,
    input  logic [2:0]  d1_sup_beat,
    input  logic        d1_sup_last,

    input  logic        l2_sup_valid,
    output logic        l2_sup_ready,
    input  logic [63:0] l2_sup_data,
    input  logic [2:0]  l2_sup_beat,
    input  logic        l2_sup_last,

    // E) Data bus
    output logic        bus_dat_valid,
    output logic [1:0]  bus_dat_dst,
    output logic [31:0] bus_dat_addr,
    output logic [63:0] bus_dat_data,
    output logic [2:0]  bus_dat_beat,
    output logic        bus_dat_last,

    // F) Grants
    output logic        i_bus_gnt_valid,
    output logic [1:0]  i_bus_gnt_dst,
    output logic        i_bus_gnt_ok,

    output logic        d_bus_gnt_valid,
    output logic [1:0]  d_bus_gnt_dst,
    output logic [31:0] d_bus_gnt_addr,
    output logic [1:0]  d_bus_gnt_state,
    output logic        d_bus_gnt_ok
);

    // -------------------------
    // Command encodings (match your team if different)
    // -------------------------
    localparam logic [2:0] CMD_GETS = 3'd0;
    localparam logic [2:0] CMD_GETM = 3'd1;
    localparam logic [2:0] CMD_UPGR = 3'd2;
    localparam logic [2:0] CMD_WB   = 3'd3;

    // MESI 2-bit encoding assumption: 00=I, 01=S, 10=E, 11=M
    localparam logic [1:0] ST_I = 2'b00;
    localparam logic [1:0] ST_S = 2'b01;
    localparam logic [1:0] ST_E = 2'b10;
    localparam logic [1:0] ST_M = 2'b11;

    function automatic logic cmd_needs_data(input logic [2:0] cmd);
        cmd_needs_data = (cmd == CMD_GETS) || (cmd == CMD_GETM);
    endfunction

    // -------------------------
    // FSM
    // -------------------------
    typedef enum logic [2:0] {IDLE=3'd0, BCAST=3'd1, SNOOP_WAIT=3'd2, DATA_XFER=3'd3, GNT=3'd4} state_t;
    state_t state, state_n;

    // Round-robin pointer (0=i0, 1=i1, 2=d0, 3=d1)
    logic [1:0] rr_ptr, rr_ptr_n;

    // Winner
    logic       have_winner;
    logic [1:0] winner;

    logic [2:0]  win_cmd;
    logic [31:0] win_addr;
    logic [1:0]  win_src;

    // Active transaction
    logic [1:0]  active_winner;
    logic [2:0]  active_cmd;
    logic [31:0] active_addr;
    logic [1:0]  active_src;

    // ACK tracking (sticky)
    logic ack_d0_seen, ack_d1_seen, ack_l2_seen;

    // Track snoop facts for supplier + grant
    logic d0_has_data_seen, d1_has_data_seen;
    logic any_l1_hit_seen;

    // Supplier select
    typedef enum logic [1:0] {SUP_D0=2'd0, SUP_D1=2'd1, SUP_L2=2'd2} supplier_t;
    supplier_t supplier_sel, supplier_sel_n;

    // Selected supplier mux signals
    logic        sel_sup_valid;
    logic [63:0] sel_sup_data;
    logic [2:0]  sel_sup_beat;
    logic        sel_sup_last;

    // Latched grant state (for D$ grant)
    logic [1:0] grant_state;

    // -----------------------------
    // Round-robin choose function
    // -----------------------------
    function automatic logic [1:0] pick_winner (
        input logic [1:0] start,
        input logic       v0, v1, v2, v3,
        output logic      found
    );
        logic [1:0] w;
        found = 1'b1;
        unique case (start)
            2'd0: begin
                if (v0) w=2'd0;
                else if (v1) w=2'd1;
                else if (v2) w=2'd2;
                else if (v3) w=2'd3;
                else begin found=1'b0; w=2'd0; end
            end
            2'd1: begin
                if (v1) w=2'd1;
                else if (v2) w=2'd2;
                else if (v3) w=2'd3;
                else if (v0) w=2'd0;
                else begin found=1'b0; w=2'd0; end
            end
            2'd2: begin
                if (v2) w=2'd2;
                else if (v3) w=2'd3;
                else if (v0) w=2'd0;
                else if (v1) w=2'd1;
                else begin found=1'b0; w=2'd0; end
            end
            default: begin // 2'd3
                if (v3) w=2'd3;
                else if (v0) w=2'd0;
                else if (v1) w=2'd1;
                else if (v2) w=2'd2;
                else begin found=1'b0; w=2'd0; end
            end
        endcase
        return w;
    endfunction

    // Winner select comb
    always_comb begin
        winner = pick_winner(rr_ptr, i0_req_valid, i1_req_valid, d0_req_valid, d1_req_valid, have_winner);

        win_cmd  = 3'b000;
        win_addr = 32'h0;
        win_src  = 2'b00;

        unique case (winner)
            2'd0: begin win_cmd=i0_req_cmd; win_addr=i0_req_addr; win_src=i0_req_src; end
            2'd1: begin win_cmd=i1_req_cmd; win_addr=i1_req_addr; win_src=i1_req_src; end
            2'd2: begin win_cmd=d0_req_cmd; win_addr=d0_req_addr; win_src=d0_req_src; end
            2'd3: begin win_cmd=d1_req_cmd; win_addr=d1_req_addr; win_src=d1_req_src; end
        endcase
    end

    // Supplier decision (priority: D0 then D1 else L2)
    always_comb begin
        supplier_sel_n = SUP_L2;
        if (d0_has_data_seen) supplier_sel_n = SUP_D0;
        else if (d1_has_data_seen) supplier_sel_n = SUP_D1;
        else supplier_sel_n = SUP_L2;
    end

    // Selected supplier mux
    always_comb begin
        sel_sup_valid = 1'b0;
        sel_sup_data  = 64'h0;
        sel_sup_beat  = 3'd0;
        sel_sup_last  = 1'b0;

        unique case (supplier_sel)
            SUP_D0: begin
                sel_sup_valid = d0_sup_valid;
                sel_sup_data  = d0_sup_data;
                sel_sup_beat  = d0_sup_beat;
                sel_sup_last  = d0_sup_last;
            end
            SUP_D1: begin
                sel_sup_valid = d1_sup_valid;
                sel_sup_data  = d1_sup_data;
                sel_sup_beat  = d1_sup_beat;
                sel_sup_last  = d1_sup_last;
            end
            default: begin // SUP_L2
                sel_sup_valid = l2_sup_valid;
                sel_sup_data  = l2_sup_data;
                sel_sup_beat  = l2_sup_beat;
                sel_sup_last  = l2_sup_last;
            end
        endcase
    end

    // Compute grant_state (latched at end of snoop wait)
    function automatic logic [1:0] compute_grant_state(input logic [2:0] cmd, input logic any_hit);
        logic [1:0] st;
        st = ST_I;
        unique case (cmd)
            CMD_GETS: st = any_hit ? ST_S : ST_E;
            CMD_GETM: st = ST_M;
            CMD_UPGR: st = ST_M;
            CMD_WB:   st = ST_I;
            default:  st = ST_I;
        endcase
        return st;
    endfunction

    // FSM next state + RR update (RR updates after GNT)
    always_comb begin
        state_n  = state;
        rr_ptr_n = rr_ptr;

        unique case (state)
            IDLE: begin
                if (have_winner) state_n = BCAST;
            end

            BCAST: begin
                state_n = SNOOP_WAIT;
            end

            SNOOP_WAIT: begin
                if (ack_d0_seen && ack_d1_seen && ack_l2_seen) begin
                    if (cmd_needs_data(active_cmd)) state_n = DATA_XFER;
                    else state_n = GNT; // no data -> grant immediately
                end
            end

            DATA_XFER: begin
                if (sel_sup_valid && sel_sup_last) begin
                    state_n = GNT;
                end
            end

            GNT: begin
                // one-cycle pulse
                state_n  = IDLE;
                rr_ptr_n = active_winner + 2'd1;
            end

            default: state_n = IDLE;
        endcase
    end

    // State regs
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state  <= IDLE;
            rr_ptr <= 2'd0;
        end else begin
            state  <= state_n;
            rr_ptr <= rr_ptr_n;
        end
    end

    // Latch active transaction + snoop facts + supplier + grant_state
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            active_winner <= 2'd0;
            active_cmd    <= 3'b000;
            active_addr   <= 32'h0;
            active_src    <= 2'b00;

            ack_d0_seen <= 1'b0;
            ack_d1_seen <= 1'b0;
            ack_l2_seen <= 1'b0;

            d0_has_data_seen <= 1'b0;
            d1_has_data_seen <= 1'b0;
            any_l1_hit_seen  <= 1'b0;

            supplier_sel <= SUP_L2;
            grant_state  <= ST_I;
        end else begin
            // New transaction begins in BCAST cycle
            if (state == BCAST) begin
                active_winner <= winner;
                active_cmd    <= win_cmd;
                active_addr   <= win_addr;
                active_src    <= win_src;

                ack_d0_seen <= 1'b0;
                ack_d1_seen <= 1'b0;
                ack_l2_seen <= 1'b0;

                d0_has_data_seen <= 1'b0;
                d1_has_data_seen <= 1'b0;
                any_l1_hit_seen  <= 1'b0;

                supplier_sel <= SUP_L2;
                grant_state  <= ST_I;
            end

            // Collect snoop outputs (safe in BCAST or SNOOP_WAIT)
            if (state == BCAST || state == SNOOP_WAIT) begin
                if (d0_snp_rsp_valid) begin
                    if (d0_snp_rsp_has_data) d0_has_data_seen <= 1'b1;
                    if (d0_snp_rsp_hit)      any_l1_hit_seen  <= 1'b1;
                end
                if (d1_snp_rsp_valid) begin
                    if (d1_snp_rsp_has_data) d1_has_data_seen <= 1'b1;
                    if (d1_snp_rsp_hit)      any_l1_hit_seen  <= 1'b1;
                end

                if (d0_snp_rsp_ack) ack_d0_seen <= 1'b1;
                if (d1_snp_rsp_ack) ack_d1_seen <= 1'b1;
                if (l2_snp_ack)     ack_l2_seen <= 1'b1;
            end

            // When all acks are in, lock supplier and grant_state
            if (state == SNOOP_WAIT && (ack_d0_seen && ack_d1_seen && ack_l2_seen)) begin
                supplier_sel <= supplier_sel_n;
                grant_state  <= compute_grant_state(active_cmd, any_l1_hit_seen);
            end
        end
    end

    // Outputs
    always_comb begin
        // defaults
        i0_req_ready = 1'b0;
        i1_req_ready = 1'b0;
        d0_req_ready = 1'b0;
        d1_req_ready = 1'b0;

        bus_req_valid = 1'b0;
        bus_req_cmd   = 3'b000;
        bus_req_addr  = 32'h0;
        bus_req_src   = 2'b00;

        d0_sup_ready  = 1'b0;
        d1_sup_ready  = 1'b0;
        l2_sup_ready  = 1'b0;

        bus_dat_valid = 1'b0;
        bus_dat_dst   = 2'b00;
        bus_dat_addr  = 32'h0;
        bus_dat_data  = 64'h0;
        bus_dat_beat  = 3'd0;
        bus_dat_last  = 1'b0;

        i_bus_gnt_valid = 1'b0;
        i_bus_gnt_dst   = 2'b00;
        i_bus_gnt_ok    = 1'b0;

        d_bus_gnt_valid = 1'b0;
        d_bus_gnt_dst   = 2'b00;
        d_bus_gnt_addr  = 32'h0;
        d_bus_gnt_state = 2'b00;
        d_bus_gnt_ok    = 1'b0;

        // Broadcast only in BCAST (1 cycle)
        if (state == BCAST) begin
            bus_req_valid = 1'b1;
            bus_req_cmd   = win_cmd;
            bus_req_addr  = win_addr;
            bus_req_src   = win_src;

            unique case (winner)
                2'd0: i0_req_ready = 1'b1;
                2'd1: i1_req_ready = 1'b1;
                2'd2: d0_req_ready = 1'b1;
                2'd3: d1_req_ready = 1'b1;
            endcase
        end

        // Data forwarding only in DATA_XFER
        if (state == DATA_XFER) begin
            unique case (supplier_sel)
                SUP_D0: d0_sup_ready = 1'b1;
                SUP_D1: d1_sup_ready = 1'b1;
                default: l2_sup_ready = 1'b1;
            endcase

            bus_dat_valid = sel_sup_valid;
            bus_dat_dst   = active_src;
            bus_dat_addr  = active_addr;
            bus_dat_data  = sel_sup_data;
            bus_dat_beat  = sel_sup_beat;
            bus_dat_last  = sel_sup_last;
        end

        // Grant pulse in GNT (1 cycle)
        if (state == GNT) begin
            // winner 0/1 are I$ requesters, 2/3 are D$ requesters
            if (active_winner == 2'd0 || active_winner == 2'd1) begin
                i_bus_gnt_valid = 1'b1;
                i_bus_gnt_dst   = active_src;
                i_bus_gnt_ok    = 1'b1;
            end else begin
                d_bus_gnt_valid = 1'b1;
                d_bus_gnt_dst   = active_src;
                d_bus_gnt_addr  = active_addr;
                d_bus_gnt_state = grant_state;
                d_bus_gnt_ok    = 1'b1;
            end
        end
    end

endmodule
