`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name :  L1_Icache_Controller
// Description : L1 Instruction Cache Controller (GETS-only) - Round-Robin Replacement
//               Fixed version with robust grant handling and proper handshaking
//////////////////////////////////////////////////////////////////////////////////

module L1_Icache_Controller #(
    parameter int ADDR_WIDTH      = 32,
    parameter int CORE_DATA_WIDTH = 64,
    parameter int LINE_BYTES      = 64,
    parameter int NUM_BEATS       = 8,
    parameter int SET_BITS_LEN    = 6,
    parameter int NO_OF_WAYS      = 8,
    parameter int SRC_ID_WIDTH    = 2,
    parameter logic [SRC_ID_WIDTH-1:0] I_SRC_ID = 0,
    parameter bit USE_BUS_DAT_DST  = 1,
    parameter bit USE_BUS_DAT_ADDR = 1
)(
    input  logic                       clk,
    input  logic                       rst_n,

    // CPU ? I$ Controller
    input  logic                       if_req_valid,
    input  logic [ADDR_WIDTH-1:0]      if_req_addr,
    output logic                       if_req_ready,

    output logic                       if_resp_valid,
    output logic [CORE_DATA_WIDTH-1:0] if_resp_data,

    // I$ Controller ? L1_Icache (storage)
    output logic                       i_lookup_en,
    output logic [ADDR_WIDTH-1:0]      i_lookup_addr,

    output logic                       i_fill_en,
    output logic [ADDR_WIDTH-1:0]      i_fill_addr,
    output logic [2:0]                 i_fill_way,
    output logic [511:0]               i_fill_line,

    input  logic                       i_rvalid,
    input  logic [CORE_DATA_WIDTH-1:0] i_rdata,
    input  logic                       i_hit,
    input  logic [2:0]                 i_hit_way,
    input  logic                       o_lookup_stalled,

    // I$ Controller ? Arbiter
    output logic                       i_req_valid,
    input  logic                       i_req_ready,
    output logic [2:0]                 i_req_cmd,
    output logic [ADDR_WIDTH-1:0]      i_req_addr,
    output logic [SRC_ID_WIDTH-1:0]    i_req_src,

    input  logic                       bus_dat_valid,
    input  logic [CORE_DATA_WIDTH-1:0] bus_dat_data,
    input  logic [2:0]                 bus_dat_beat,
    input  logic                       bus_dat_last,

    input  logic [SRC_ID_WIDTH-1:0]    bus_dat_dst,
    input  logic [ADDR_WIDTH-1:0]      bus_dat_addr,

    input  logic                       bus_gnt_valid,
    input  logic                       bus_gnt_ok
);

    // ----------------------------
    // Local constants
    // ----------------------------
    localparam int LINE_BITS = LINE_BYTES * 8;
    localparam int SETS      = 1 << SET_BITS_LEN;
    localparam logic [2:0] CMD_GETS = 3'b000;

    function automatic logic [ADDR_WIDTH-1:0] line_align(input logic [ADDR_WIDTH-1:0] a);
        line_align = {a[ADDR_WIDTH-1:6], 6'b0};
    endfunction

    function automatic logic [SET_BITS_LEN-1:0] get_set(input logic [ADDR_WIDTH-1:0] a);
        get_set = a[11:6];
    endfunction

    // ----------------------------
    // Round-Robin replacement
    // ----------------------------
    logic [2:0] rr_ptr [0: SETS-1];

    // ----------------------------
    // Controller registers
    // ----------------------------
    logic [ADDR_WIDTH-1:0]       pending_addr;
    logic [ADDR_WIDTH-1:0]       miss_line_addr;
    logic [SET_BITS_LEN-1:0]     miss_set;
    logic [2:0]                  victim_way_r;
    logic [LINE_BITS-1:0]        fill_buf;
    logic [NUM_BEATS-1:0]        beat_seen;

    // *** FIX ISSUE 2: Latch grant status ***
    logic                        gnt_received;
    logic                        gnt_ok_latched;

    // *** FIX ISSUE 3: Track outstanding request to prevent cross-capture ***
    logic                        outstanding_req;
    logic [ADDR_WIDTH-1:0]       outstanding_addr;

    // ----------------------------
    // FSM
    // ----------------------------
    typedef enum logic [2:0] {
        S_IDLE        = 3'd0,
        S_LOOKUP      = 3'd1,
        S_CHECK       = 3'd2,
        S_MISS_REQ    = 3'd3,
        S_MISS_WAIT   = 3'd4,
        S_FILL_WRITE  = 3'd5,
        S_REPLAY      = 3'd6
    } state_t;

    state_t state, state_n;

    // ----------------------------
    // Beat acceptance filter
    // ----------------------------
    logic beat_for_me;
    logic all_beats_received;

    always_comb begin
        beat_for_me = bus_dat_valid;
        
        // Only accept beats for OUR outstanding request
        if (USE_BUS_DAT_DST) begin
            beat_for_me &= (bus_dat_dst == I_SRC_ID);
        end
        
        if (USE_BUS_DAT_ADDR) begin
            beat_for_me &= (bus_dat_addr == miss_line_addr);
        end
        
        // *** FIX ISSUE 3: Additional safety - only accept if we have outstanding request ***
        beat_for_me &= outstanding_req;
        
        all_beats_received = &beat_seen;
    end

    // ----------------------------
    // FSM combinational logic
    // ----------------------------
    always_comb begin
        // Defaults
        if_req_ready  = 1'b0;
        if_resp_valid = 1'b0;
        if_resp_data  = '0;

        i_lookup_en   = 1'b0;
        i_lookup_addr = pending_addr;

        i_fill_en     = 1'b0;
        i_fill_addr   = miss_line_addr;
        i_fill_way    = victim_way_r;
        i_fill_line   = fill_buf;

        i_req_valid   = 1'b0;
        i_req_cmd     = CMD_GETS;
        i_req_addr    = miss_line_addr;
        i_req_src     = I_SRC_ID;

        state_n       = state;

        case (state)
            S_IDLE: begin
                if_req_ready = 1'b1;
                if (if_req_valid) begin
                    state_n = S_LOOKUP;
                end
            end

            S_LOOKUP: begin
                i_lookup_en   = 1'b1;
                i_lookup_addr = pending_addr;
                state_n       = S_CHECK;
            end

            S_CHECK: begin
                if (i_rvalid) begin
                    // HIT
                    if_resp_valid = 1'b1;
                    if_resp_data  = i_rdata;
                    state_n       = S_IDLE;
                end else begin
                    // MISS
                    state_n = S_MISS_REQ;
                end
            end

            S_MISS_REQ: begin
                i_req_valid = 1'b1;
                
              
                if (i_req_valid && i_req_ready) begin
                    state_n = S_MISS_WAIT;
                end
            end

            S_MISS_WAIT: begin
                // *** FIX ISSUE 2: Robust completion check ***
                // Transition when we have both: 
                // 1. All beats received
                // 2. Grant confirmed OK (either latched or arriving this cycle)
                
                if (all_beats_received && (gnt_ok_latched || (bus_gnt_valid && bus_gnt_ok))) begin
                    state_n = S_FILL_WRITE;
                end 
                // Handle NACK - retry if grant says not OK
                else if (gnt_received && !gnt_ok_latched) begin
                    state_n = S_MISS_REQ;
                end
            end

            S_FILL_WRITE: begin
                i_fill_en   = 1'b1;
                i_fill_addr = miss_line_addr;
                i_fill_way  = victim_way_r;
                i_fill_line = fill_buf;
                state_n     = S_REPLAY;
            end

            S_REPLAY: begin
                i_lookup_en   = 1'b1;
                i_lookup_addr = pending_addr;
                state_n       = S_CHECK;
            end

            default:  begin
                state_n = S_IDLE;
            end
        endcase
    end

    // ----------------------------
    // Sequential logic
    // ----------------------------
    integer s;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= S_IDLE;
            pending_addr     <= '0;
            miss_line_addr   <= '0;
            miss_set         <= '0;
            victim_way_r     <= '0;
            fill_buf         <= '0;
            beat_seen        <= '0;
            gnt_received     <= 1'b0;
            gnt_ok_latched   <= 1'b0;
            outstanding_req  <= 1'b0;
            outstanding_addr <= '0;

            for (s = 0; s < SETS; s++) begin
                rr_ptr[s] <= 3'd0;
            end
        end else begin
            state <= state_n;

            // Capture new request in S_IDLE
            if (state == S_IDLE && if_req_ready && if_req_valid) begin
                pending_addr   <= if_req_addr;
                miss_line_addr <= line_align(if_req_addr);
                miss_set       <= get_set(if_req_addr);
                victim_way_r   <= rr_ptr[get_set(if_req_addr)];
            end

            //  Mark request as outstanding when accepted by arbiter
            if (state == S_MISS_REQ && i_req_valid && i_req_ready) begin
                outstanding_req  <= 1'b1;
                outstanding_addr <= miss_line_addr;
                gnt_received     <= 1'b0;
                gnt_ok_latched   <= 1'b0;
            end

          
            // Clear buffers when entering MISS_WAIT
            if (state != S_MISS_WAIT && state_n == S_MISS_WAIT) begin
                fill_buf  <= '0;
                beat_seen <= '0;
            end

            // *** FIX ISSUE 2: Latch grant status ***
            if (state == S_MISS_WAIT && bus_gnt_valid) begin
                gnt_received   <= 1'b1;
                gnt_ok_latched <= bus_gnt_ok;
            end

            // Collect beats (only for our outstanding request)
            if (state == S_MISS_WAIT && beat_for_me) begin
                fill_buf[bus_dat_beat*CORE_DATA_WIDTH +:  CORE_DATA_WIDTH] <= bus_dat_data;
                beat_seen[bus_dat_beat] <= 1'b1;
            end

            // Update RR pointer on successful fill
            if (state == S_FILL_WRITE) begin
                rr_ptr[miss_set] <= rr_ptr[miss_set] + 3'd1;
            end

            // *** Clear outstanding request after fill or on retry ***
            if (state == S_FILL_WRITE || (state == S_MISS_WAIT && state_n == S_MISS_REQ)) begin
                outstanding_req  <= 1'b0;
                outstanding_addr <= '0;
                gnt_received     <= 1'b0;
                gnt_ok_latched   <= 1'b0;
            end
        end
    end

`ifndef SYNTHESIS
    // ----------------------------
    // Assertions
    // ----------------------------
    always_ff @(posedge clk) begin
        if (rst_n) begin
            if (i_lookup_en && i_fill_en) begin
                $error("I$ CTRL: Lookup and Fill asserted simultaneously!");
            end
            if (o_lookup_stalled) begin
                $warning("I$ CTRL: Lookup stalled - check FSM!");
            end
            
            // *** Additional safety checks ***
            if (state == S_MISS_WAIT && beat_for_me) begin
                if (!outstanding_req) begin
                    $error("I$ CTRL:  Accepting beat without outstanding request!");
                end
                if (USE_BUS_DAT_ADDR && bus_dat_addr != outstanding_addr) begin
                    $error("I$ CTRL:  Received beat for wrong address!  Expected=%h, Got=%h", 
                           outstanding_addr, bus_dat_addr);
                end
            end
            
            // Detect stuck in MISS_WAIT
            if (state == S_MISS_WAIT && all_beats_received && gnt_received && !gnt_ok_latched) begin
                $warning("I$ CTRL: All beats received but grant NACK'd - will retry");
            end
        end
    end
    
    // Timeout watchdog (optional)
    logic [15:0] wait_timeout;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wait_timeout <= '0;
        end else if (state == S_MISS_WAIT) begin
            wait_timeout <= wait_timeout + 1;
            if (wait_timeout > 16'd10000) begin
                $error("I$ CTRL: Stuck in MISS_WAIT for >10k cycles!  Possible deadlock.");
            end
        end else begin
            wait_timeout <= '0;
        end
    end
`endif

endmodule