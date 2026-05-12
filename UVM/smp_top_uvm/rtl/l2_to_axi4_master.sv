module l2_to_axi4_master #(
    parameter int ADDR_WIDTH        = 32,
    parameter int LINE_WIDTH        = 512,      // fixed by cache line
    parameter int AXI_DATA_WIDTH    = 128,      // MIG AXI data width
    parameter int IDW               = 4,        // request ID width from controller
    parameter int NUM_RD_OUTSTANDING= 8,        // limit issued reads in-flight
    parameter int NUM_WR_OUTSTANDING= 8,        // limit writes awaiting B responses
    parameter int RD_REQ_FIFO_DEPTH = 8,        // queue depth for incoming read reqs
    parameter int WR_REQ_FIFO_DEPTH = 8,        // queue depth for incoming write reqs
    parameter int RRESP_FIFO_DEPTH  = 8,        // completed read responses buffered to controller
    parameter int BRESP_FIFO_DEPTH  = 8         // completed write responses buffered to controller
)(
    input  logic                     clk,
    input  logic                     rst_n,

    // ============================================================
    // Controller-side request interface
    // ============================================================
    input  logic                     mem_req_valid,
    output logic                     mem_req_ready,
    input  logic                     mem_req_rw,        // 0=read, 1=write
    input  logic [IDW-1:0]           mem_req_id,
    input  logic [ADDR_WIDTH-1:0]    mem_req_addr,      // line-aligned
    input  logic [LINE_WIDTH-1:0]    mem_req_line,      // for writeback

    // Read response (refill complete)
    output logic                     mem_rresp_valid,
    input  logic                     mem_rresp_ready,
    output logic [IDW-1:0]           mem_rresp_id,
    output logic [LINE_WIDTH-1:0]    mem_rresp_line,
    output logic [1:0]               mem_rresp_resp,

    // Write response (writeback complete)
    output logic                     mem_bresp_valid,
    input  logic                     mem_bresp_ready,
    output logic [IDW-1:0]           mem_bresp_id,
    output logic [1:0]               mem_bresp_resp,

    // ============================================================
    // AXI4-Full Master (subset: only non-red signals)
    // ============================================================

    // AW
    output logic [IDW-1:0]           M_AXI_AWID,
    output logic [ADDR_WIDTH-1:0]    M_AXI_AWADDR,
    output logic [7:0]               M_AXI_AWLEN,
    output logic [2:0]               M_AXI_AWSIZE,
    output logic [1:0]               M_AXI_AWBURST,
    output logic                     M_AXI_AWVALID,
    input  logic                     M_AXI_AWREADY,

    // W
    output logic [AXI_DATA_WIDTH-1:0]   M_AXI_WDATA,
    output logic [(AXI_DATA_WIDTH/8)-1:0] M_AXI_WSTRB,
    output logic                     M_AXI_WLAST,
    output logic                     M_AXI_WVALID,
    input  logic                     M_AXI_WREADY,

    // B
    input  logic [IDW-1:0]           M_AXI_BID,
    input  logic [1:0]               M_AXI_BRESP,
    input  logic                     M_AXI_BVALID,
    output logic                     M_AXI_BREADY,

    // AR
    output logic [IDW-1:0]           M_AXI_ARID,
    output logic [ADDR_WIDTH-1:0]    M_AXI_ARADDR,
    output logic [7:0]               M_AXI_ARLEN,
    output logic [2:0]               M_AXI_ARSIZE,
    output logic [1:0]               M_AXI_ARBURST,
    output logic                     M_AXI_ARVALID,
    input  logic                     M_AXI_ARREADY,

    // R
    input  logic [IDW-1:0]           M_AXI_RID,
    input  logic [AXI_DATA_WIDTH-1:0] M_AXI_RDATA,
    input  logic [1:0]               M_AXI_RRESP,
    input  logic                     M_AXI_RLAST,
    input  logic                     M_AXI_RVALID,
    output logic                     M_AXI_RREADY
);

    // ------------------------------------------------------------
    // Derived constants
    // ------------------------------------------------------------
    localparam int AXI_BYTES   = AXI_DATA_WIDTH/8;
    localparam int LINE_BYTES  = LINE_WIDTH/8;
    localparam int BEATS       = LINE_BYTES / AXI_BYTES;
    localparam int BEAT_CNT_W  = (BEATS <= 1) ? 1 : $clog2(BEATS);

    // AXI LEN = beats-1
    localparam logic [7:0] BURST_LEN = BEATS - 1;

    function automatic logic [2:0] size_enc(input int bytes);
        case (bytes)
            1:  size_enc = 3'd0;
            2:  size_enc = 3'd1;
            4:  size_enc = 3'd2;
            8:  size_enc = 3'd3;
            16: size_enc = 3'd4;
            32: size_enc = 3'd5;
            64: size_enc = 3'd6;
            default: size_enc = 3'd0;
        endcase
    endfunction

    // ============================================================
    // Simple FIFO helpers (synchronous, ready/valid style)
    // ============================================================
    //  
    //  Re-packaging AXI transactions into clean cache-level messages
    //
    // ---------- Read request FIFO: {id, addr} // Fetch this line with ID and addr
    typedef struct packed {
        logic [IDW-1:0]          id;
        logic [ADDR_WIDTH-1:0]   addr;
    } rd_req_t;

    // ---------- Write request FIFO: {id, addr, line} // write this line with ID and at addr
    typedef struct packed {
        logic [IDW-1:0]          id;
        logic [ADDR_WIDTH-1:0]   addr;
        logic [LINE_WIDTH-1:0]   line;
    } wr_req_t;

    // ---------- Read response FIFO: {id, line, resp} // here's the data line with ID and resp
    typedef struct packed {
        logic [IDW-1:0]          id;
        logic [LINE_WIDTH-1:0]   line;
        logic [1:0]              resp; // ->Success ->Memory error ->Invalid address
    } rresp_t;

    // ---------- Write response FIFO: {id, resp}
    typedef struct packed {
        logic [IDW-1:0]          id;
        logic [1:0]              resp;
    } bresp_t;

    // ============================================================
    // FIFOs
    // ============================================================

    // Read request FIFO storage
    rd_req_t rdq   [RD_REQ_FIFO_DEPTH];
    int unsigned rdq_head, rdq_tail, rdq_count;

    // Write request FIFO storage
    wr_req_t wrq   [WR_REQ_FIFO_DEPTH];
    int unsigned wrq_head, wrq_tail, wrq_count;

    // Completed read responses FIFO storage
    rresp_t  rrf   [RRESP_FIFO_DEPTH];
    int unsigned rrf_head, rrf_tail, rrf_count;

    // Completed write responses FIFO storage
    bresp_t  brf   [BRESP_FIFO_DEPTH];
    int unsigned brf_head, brf_tail, brf_count;

    // ============================================================
    // Outstanding READ assembly buffers indexed by ID
    // ============================================================
    logic [LINE_WIDTH-1:0] rd_line_buf [2**IDW]; // array of cacheline buffers, one per axi id.
    /*AXI read data arrives one beat at a time
    You must assemble multiple beats into a full cache line
    Each ID needs its own temporary storage */
    logic [BEAT_CNT_W-1:0] rd_beat_cnt [2**IDW]; 
    /* Tracks how many beats have arrived so far
    Needed because a cache line = multiple AXI beats */
    logic                  rd_active   [2**IDW];  // A valid / in-use flag per ID.
    /*
    Indicates whether this ID currently has an outstanding read
    Prevents:
    ID reuse too early
    Corrupting in-flight data */
    logic [1:0]            rd_resp_acc [2**IDW]; // accumulate worst resp (optional) // OKAY < EXOKAY < SLVERR < DECERR
    // An accumulated response status per ID.
    /* AXI RRESP comes with every beat
    Different beats might have different responses
    You want the worst response overall */

    int unsigned rd_outstanding; // A global counter for outstanding read transactions.
    // Tracks how many reads are currently in flight
    // Limit outstanding reads  // Control AXI issuance //Apply backpressure

    // ============================================================
    // Outstanding WRITE count (awaiting B)
    // ============================================================
    int unsigned wr_outstanding;

    // ============================================================
    // Write data streamer (W has no ID, so stream one write at a time)
    // ============================================================
    typedef enum logic [1:0] { W_IDLE, W_AW, W_WDATA } wstate_t;
    wstate_t wstate;

    wr_req_t  wcur;               // current write being streamed
    /* You pop it from a FIFO
    Then stream it over multiple cycles
    You need to remember it until done */
    logic     wcur_valid; //  1 → currently streaming a write // 0 → no active write
    logic [BEAT_CNT_W-1:0] wbeat; // Which beat of the write burst is being sent.

    // ============================================================
    // Combinational: controller request acceptance
    // ============================================================
    always_comb begin
        // accept if appropriate queue has space
        if (mem_req_rw == 1'b0) begin
            mem_req_ready = (rdq_count < RD_REQ_FIFO_DEPTH);
        end else begin
            mem_req_ready = (wrq_count < WR_REQ_FIFO_DEPTH);
        end
    end

    // ============================================================
    // Combinational: drive controller response ports from resp FIFOs
    // ============================================================
    always_comb begin
        // Read resp
        mem_rresp_valid = (rrf_count != 0);
        mem_rresp_id    = (rrf_count != 0) ? rrf[rrf_head].id   : '0;
        mem_rresp_line  = (rrf_count != 0) ? rrf[rrf_head].line : '0;
        mem_rresp_resp  = (rrf_count != 0) ? rrf[rrf_head].resp : 2'b00;

        // Write resp
        mem_bresp_valid = (brf_count != 0);
        mem_bresp_id    = (brf_count != 0) ? brf[brf_head].id   : '0;
        mem_bresp_resp  = (brf_count != 0) ? brf[brf_head].resp : 2'b00;
    end

    // ============================================================
    // AXI defaults
    // ============================================================
    always_comb begin
        // READ address
        M_AXI_ARLEN   = BURST_LEN;
        M_AXI_ARSIZE  = size_enc(AXI_BYTES);
        M_AXI_ARBURST = 2'b01; // INCR

        // WRITE address
        M_AXI_AWLEN   = BURST_LEN;
        M_AXI_AWSIZE  = size_enc(AXI_BYTES);
        M_AXI_AWBURST = 2'b01; // INCR

        // Write strobes: full line write
        M_AXI_WSTRB   = { (AXI_DATA_WIDTH/8){1'b1} };
    end

    // ============================================================
    // READ issue logic (AR)
    // - issue as many reads as allowed by NUM_RD_OUTSTANDING
    // ============================================================
    logic ar_fire;
    always_comb begin
        // Can issue if:
        // - rdq has pending requests
        // - rd_outstanding < limit
        // - and the target ID is not already active (no reuse)
        // - and AR channel handshake possible by asserting ARVALID
        M_AXI_ARVALID = 1'b0;
        M_AXI_ARID    = '0;
        M_AXI_ARADDR  = '0;

        if (rdq_count != 0 &&
            rd_outstanding < NUM_RD_OUTSTANDING &&
            !rd_active[ rdq[rdq_head].id ]) begin

            M_AXI_ARVALID = 1'b1;
            M_AXI_ARID    = rdq[rdq_head].id;
            M_AXI_ARADDR  = rdq[rdq_head].addr;
        end

        ar_fire = M_AXI_ARVALID && M_AXI_ARREADY;
    end

    // ============================================================
    // READ return logic (R)
    // - accept R beats and assemble per RID
    // - push completed lines into rresp FIFO
    // ============================================================
    logic r_can_accept;
    logic r_done_push_blocked;

    always_comb begin
        // Default safe values.
        // Guard against X on M_AXI_RID when the slave is not presenting valid read data.
        r_done_push_blocked = 1'b0;
        r_can_accept        = 1'b0;
        M_AXI_RREADY        = 1'b0;

        // Only inspect RID / RLAST when RVALID is asserted.
        if (M_AXI_RVALID) begin
            // If last beat arrives, we will push into rresp FIFO.
            // So we must ensure space when accepting a last beat.
            if (M_AXI_RLAST && (rrf_count >= RRESP_FIFO_DEPTH))
                r_done_push_blocked = 1'b1;

            // We can accept only if the RID is active and we are not blocked on completion push.
            r_can_accept = rd_active[M_AXI_RID] && !r_done_push_blocked;
            M_AXI_RREADY = r_can_accept;
        end
    end

    // ============================================================
    // WRITE issue/stream logic (AW + W)
    // - Stream one write at a time on W channel (AXI requirement)
    // - Still allows multiple writes outstanding (awaiting B) by not waiting for B
    // ============================================================
    logic aw_fire, w_fire;

    always_comb begin
        M_AXI_AWVALID = 1'b0;
        M_AXI_AWID    = '0;
        M_AXI_AWADDR  = '0;

        M_AXI_WVALID  = 1'b0;
        M_AXI_WDATA   = '0;
        M_AXI_WLAST   = 1'b0;

        // B channel always ready if bresp fifo has space
        M_AXI_BREADY  = (brf_count < BRESP_FIFO_DEPTH);

        aw_fire = 1'b0;
        w_fire  = 1'b0;

        case (wstate)
            W_IDLE: begin
                // nothing driven
            end

            W_AW: begin
                // Drive AW for current write
                M_AXI_AWVALID = 1'b1;
                M_AXI_AWID    = wcur.id;
                M_AXI_AWADDR  = wcur.addr;

                aw_fire = M_AXI_AWVALID && M_AXI_AWREADY;
            end

            W_WDATA: begin
                // Drive W beat
                M_AXI_WVALID = 1'b1;
                M_AXI_WDATA  = wcur.line[wbeat*AXI_DATA_WIDTH +: AXI_DATA_WIDTH];
                M_AXI_WLAST  = (wbeat == (BEATS-1));

                w_fire = M_AXI_WVALID && M_AXI_WREADY;
            end

            default: ;
        endcase
    end

    // ============================================================
    // Sequential: FIFOs, outstanding tracking, assembly, states
    // ============================================================
    integer i;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // FIFO pointers/counts
            rdq_head <= 0; rdq_tail <= 0; rdq_count <= 0;
            wrq_head <= 0; wrq_tail <= 0; wrq_count <= 0;
            rrf_head <= 0; rrf_tail <= 0; rrf_count <= 0;
            brf_head <= 0; brf_tail <= 0; brf_count <= 0;

            // outstanding
            rd_outstanding <= 0;
            wr_outstanding <= 0;

            // read active table
            for (i = 0; i < (2**IDW); i++) begin
                rd_active[i]   <= 1'b0;
                rd_beat_cnt[i] <= '0;
                rd_line_buf[i] <= '0;
                rd_resp_acc[i] <= 2'b00;
            end

            // write streamer
            wstate     <= W_IDLE;
            wcur_valid <= 1'b0;
            wcur       <= '0;
            wbeat      <= '0;

        end else begin
            // ----------------------------------------------------
            // Pop controller read response FIFO when accepted
            // ----------------------------------------------------
            if (mem_rresp_valid && mem_rresp_ready) begin
                rrf_head  <= (rrf_head + 1) % RRESP_FIFO_DEPTH;
                rrf_count <= rrf_count - 1;
            end

            // ----------------------------------------------------
            // Pop controller write response FIFO when accepted
            // ----------------------------------------------------
            if (mem_bresp_valid && mem_bresp_ready) begin
                brf_head  <= (brf_head + 1) % BRESP_FIFO_DEPTH;
                brf_count <= brf_count - 1;
            end

            // ----------------------------------------------------
            // Accept incoming request from controller into rdq/wrq
            // ----------------------------------------------------
            if (mem_req_valid && mem_req_ready) begin
                if (mem_req_rw == 1'b0) begin
                    // enqueue read request
                    rdq[rdq_tail].id   <= mem_req_id;
                    rdq[rdq_tail].addr <= mem_req_addr;
                    rdq_tail  <= (rdq_tail + 1) % RD_REQ_FIFO_DEPTH;
                    rdq_count <= rdq_count + 1;
                end else begin
                    // enqueue write request
                    wrq[wrq_tail].id   <= mem_req_id;
                    wrq[wrq_tail].addr <= mem_req_addr;
                    wrq[wrq_tail].line <= mem_req_line;
                    wrq_tail  <= (wrq_tail + 1) % WR_REQ_FIFO_DEPTH;
                    wrq_count <= wrq_count + 1;
                end
            end

            // ----------------------------------------------------
            // Issue AR on handshake
            // ----------------------------------------------------
            if (ar_fire) begin
                // mark this ID active and init counters
                rd_active[ rdq[rdq_head].id ]   <= 1'b1;
                rd_beat_cnt[ rdq[rdq_head].id ] <= '0;
                rd_resp_acc[ rdq[rdq_head].id ] <= 2'b00;

                // consume rdq
                rdq_head  <= (rdq_head + 1) % RD_REQ_FIFO_DEPTH;
                rdq_count <= rdq_count - 1;

                // outstanding count
                rd_outstanding <= rd_outstanding + 1;
            end

            // ----------------------------------------------------
            // Accept R beats and assemble line
            // ----------------------------------------------------
            if (M_AXI_RVALID && M_AXI_RREADY) begin
                // store beat
                rd_line_buf[M_AXI_RID][ rd_beat_cnt[M_AXI_RID]*AXI_DATA_WIDTH +: AXI_DATA_WIDTH ]
                    <= M_AXI_RDATA;

                // accumulate response (simple: keep last non-OKAY if desired)
                // Here we OR bits to be conservative; you can implement "worst" mapping if needed.
                rd_resp_acc[M_AXI_RID] <= rd_resp_acc[M_AXI_RID] | M_AXI_RRESP;

                // advance beat counter
                rd_beat_cnt[M_AXI_RID] <= rd_beat_cnt[M_AXI_RID] + 1;

                // on last beat: push completed line to rresp FIFO
                if (M_AXI_RLAST) begin
                    // enqueue completed read response
                    rrf[rrf_tail].id   <= M_AXI_RID;
                    rrf[rrf_tail].line <= rd_line_buf[M_AXI_RID]; // NOTE: last beat write above updates this cycle
                    rrf[rrf_tail].resp <= (rd_resp_acc[M_AXI_RID] | M_AXI_RRESP);

                    // Because last beat arrives same cycle, we need to include last beat in the line.
                    // The simplest safe way: re-write with the last beat inserted explicitly:
                    rrf[rrf_tail].line[
                        rd_beat_cnt[M_AXI_RID]*AXI_DATA_WIDTH +: AXI_DATA_WIDTH
                    ] <= M_AXI_RDATA;

                    rrf_tail  <= (rrf_tail + 1) % RRESP_FIFO_DEPTH;
                    rrf_count <= rrf_count + 1;

                    // clear active
                    rd_active[M_AXI_RID] <= 1'b0;

                    // decrement outstanding
                    rd_outstanding <= rd_outstanding - 1;
                end
            end

            // ----------------------------------------------------
            // WRITE streamer state machine
            // ----------------------------------------------------
            case (wstate)
                W_IDLE: begin
                    // If we have pending writes and room for another outstanding B,
                    // fetch next write into current slot and start AW.
                    if (!wcur_valid &&
                        wrq_count != 0 &&
                        (wr_outstanding < NUM_WR_OUTSTANDING)) begin
                        wcur       <= wrq[wrq_head];
                        wcur_valid <= 1'b1;

                        // consume wrq entry now (we've buffered it)
                        wrq_head  <= (wrq_head + 1) % WR_REQ_FIFO_DEPTH;
                        wrq_count <= wrq_count - 1;

                        wbeat   <= '0;
                        wstate  <= W_AW;
                    end
                end

                W_AW: begin
                    if (aw_fire) begin
                        // once address accepted, move to data streaming
                        wstate <= W_WDATA;
                        wbeat  <= '0;
                    end
                end

                W_WDATA: begin
                    if (w_fire) begin
                        if (wbeat == (BEATS-1)) begin
                            // finished sending WLAST; this write is now outstanding waiting for B
                            wr_outstanding <= wr_outstanding + 1;

                            // clear current and return to idle to start next write (do NOT wait for B)
                            wcur_valid <= 1'b0;
                            wstate     <= W_IDLE;
                            wbeat      <= '0;
                        end else begin
                            wbeat <= wbeat + 1;
                        end
                    end
                end

                default: wstate <= W_IDLE;
            endcase

            // ----------------------------------------------------
            // Capture B responses into BRESP FIFO
            // ----------------------------------------------------
            if (M_AXI_BVALID && M_AXI_BREADY) begin
                // enqueue B response
                brf[brf_tail].id   <= M_AXI_BID;
                brf[brf_tail].resp <= M_AXI_BRESP;
                brf_tail  <= (brf_tail + 1) % BRESP_FIFO_DEPTH;
                brf_count <= brf_count + 1;

                // complete one outstanding write
                if (wr_outstanding != 0)
                    wr_outstanding <= wr_outstanding - 1;
            end
        end
    end

endmodule
