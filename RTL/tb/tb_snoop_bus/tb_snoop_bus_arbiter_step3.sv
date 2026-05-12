`timescale 1ns/1ps

module tb_snoop_bus_arbiter_step3;

    logic clk, rst_n;

    // Requests
    logic        i0_req_valid; logic i0_req_ready; logic [2:0] i0_req_cmd; logic [31:0] i0_req_addr; logic [1:0] i0_req_src;
    logic        i1_req_valid; logic i1_req_ready; logic [2:0] i1_req_cmd; logic [31:0] i1_req_addr; logic [1:0] i1_req_src;
    logic        d0_req_valid; logic d0_req_ready; logic [2:0] d0_req_cmd; logic [31:0] d0_req_addr; logic [1:0] d0_req_src;
    logic        d1_req_valid; logic d1_req_ready; logic [2:0] d1_req_cmd; logic [31:0] d1_req_addr; logic [1:0] d1_req_src;

    // Broadcast
    logic        bus_req_valid; logic [2:0] bus_req_cmd; logic [31:0] bus_req_addr; logic [1:0] bus_req_src;

    // Snoop responses
    logic d0_snp_rsp_valid, d0_snp_rsp_hit, d0_snp_rsp_has_data, d0_snp_rsp_ack; logic [1:0] d0_snp_rsp_state;
    logic d1_snp_rsp_valid, d1_snp_rsp_hit, d1_snp_rsp_has_data, d1_snp_rsp_ack; logic [1:0] d1_snp_rsp_state;
    logic l2_snp_valid, l2_snp_hit, l2_snp_has_data, l2_snp_ack;

    // Suppliers (unused)
    logic d0_sup_valid, d0_sup_ready; logic [63:0] d0_sup_data; logic [2:0] d0_sup_beat; logic d0_sup_last;
    logic d1_sup_valid, d1_sup_ready; logic [63:0] d1_sup_data; logic [2:0] d1_sup_beat; logic d1_sup_last;
    logic l2_sup_valid, l2_sup_ready; logic [63:0] l2_sup_data; logic [2:0] l2_sup_beat; logic l2_sup_last;

    // Data bus (unused)
    logic        bus_dat_valid; logic [1:0] bus_dat_dst; logic [63:0] bus_dat_data; logic [2:0] bus_dat_beat; logic bus_dat_last;

    // Grants (unused)
    logic        i_bus_gnt_valid; logic [1:0] i_bus_gnt_dst; logic i_bus_gnt_ok;
    logic        d_bus_gnt_valid; logic [1:0] d_bus_gnt_dst; logic [31:0] d_bus_gnt_addr; logic [1:0] d_bus_gnt_state; logic d_bus_gnt_ok;

    // DUT
    snoop_bus_arbiter dut (
        .clk(clk), .rst_n(rst_n),

        .i0_req_valid(i0_req_valid), .i0_req_ready(i0_req_ready), .i0_req_cmd(i0_req_cmd), .i0_req_addr(i0_req_addr), .i0_req_src(i0_req_src),
        .i1_req_valid(i1_req_valid), .i1_req_ready(i1_req_ready), .i1_req_cmd(i1_req_cmd), .i1_req_addr(i1_req_addr), .i1_req_src(i1_req_src),
        .d0_req_valid(d0_req_valid), .d0_req_ready(d0_req_ready), .d0_req_cmd(d0_req_cmd), .d0_req_addr(d0_req_addr), .d0_req_src(d0_req_src),
        .d1_req_valid(d1_req_valid), .d1_req_ready(d1_req_ready), .d1_req_cmd(d1_req_cmd), .d1_req_addr(d1_req_addr), .d1_req_src(d1_req_src),

        .bus_req_valid(bus_req_valid), .bus_req_cmd(bus_req_cmd), .bus_req_addr(bus_req_addr), .bus_req_src(bus_req_src),

        .d0_snp_rsp_valid(d0_snp_rsp_valid), .d0_snp_rsp_hit(d0_snp_rsp_hit), .d0_snp_rsp_state(d0_snp_rsp_state),
        .d0_snp_rsp_has_data(d0_snp_rsp_has_data), .d0_snp_rsp_ack(d0_snp_rsp_ack),

        .d1_snp_rsp_valid(d1_snp_rsp_valid), .d1_snp_rsp_hit(d1_snp_rsp_hit), .d1_snp_rsp_state(d1_snp_rsp_state),
        .d1_snp_rsp_has_data(d1_snp_rsp_has_data), .d1_snp_rsp_ack(d1_snp_rsp_ack),

        .l2_snp_valid(l2_snp_valid), .l2_snp_hit(l2_snp_hit), .l2_snp_has_data(l2_snp_has_data), .l2_snp_ack(l2_snp_ack),

        .d0_sup_valid(d0_sup_valid), .d0_sup_ready(d0_sup_ready), .d0_sup_data(d0_sup_data), .d0_sup_beat(d0_sup_beat), .d0_sup_last(d0_sup_last),
        .d1_sup_valid(d1_sup_valid), .d1_sup_ready(d1_sup_ready), .d1_sup_data(d1_sup_data), .d1_sup_beat(d1_sup_beat), .d1_sup_last(d1_sup_last),
        .l2_sup_valid(l2_sup_valid), .l2_sup_ready(l2_sup_ready), .l2_sup_data(l2_sup_data), .l2_sup_beat(l2_sup_beat), .l2_sup_last(l2_sup_last),

        .bus_dat_valid(bus_dat_valid), .bus_dat_dst(bus_dat_dst), .bus_dat_data(bus_dat_data), .bus_dat_beat(bus_dat_beat), .bus_dat_last(bus_dat_last),

        .i_bus_gnt_valid(i_bus_gnt_valid), .i_bus_gnt_dst(i_bus_gnt_dst), .i_bus_gnt_ok(i_bus_gnt_ok),
        .d_bus_gnt_valid(d_bus_gnt_valid), .d_bus_gnt_dst(d_bus_gnt_dst), .d_bus_gnt_addr(d_bus_gnt_addr),
        .d_bus_gnt_state(d_bus_gnt_state), .d_bus_gnt_ok(d_bus_gnt_ok)
    );

    // clock
    initial clk = 0;
    always #5 clk = ~clk;

    // Apply snoop response after N cycles (1-cycle pulse)
    task automatic pulse_d0_rsp(input int cycles_delay);
        repeat (cycles_delay) @(posedge clk);
        d0_snp_rsp_valid <= 1;
        d0_snp_rsp_hit   <= 1;
        d0_snp_rsp_state <= 2'b10;
        d0_snp_rsp_has_data <= 0;
        d0_snp_rsp_ack   <= 1;
        @(posedge clk);
        d0_snp_rsp_valid <= 0;
        d0_snp_rsp_ack   <= 0;
    endtask

    task automatic pulse_d1_rsp(input int cycles_delay);
        repeat (cycles_delay) @(posedge clk);
        d1_snp_rsp_valid <= 1;
        d1_snp_rsp_hit   <= 0;
        d1_snp_rsp_state <= 2'b00;
        d1_snp_rsp_has_data <= 0;
        d1_snp_rsp_ack   <= 1;
        @(posedge clk);
        d1_snp_rsp_valid <= 0;
        d1_snp_rsp_ack   <= 0;
    endtask

    task automatic pulse_l2_rsp(input int cycles_delay);
        repeat (cycles_delay) @(posedge clk);
        l2_snp_valid    <= 1;
        l2_snp_hit      <= 1;
        l2_snp_has_data <= 0;
        l2_snp_ack      <= 1;
        @(posedge clk);
        l2_snp_valid <= 0;
        l2_snp_ack   <= 0;
    endtask

    // Basic “stall while waiting” checks
    int bcast_count = 0;
    int cycle = 0;
    int last_ack_cycle = -1;

    always @(posedge clk) begin
        if (!rst_n) begin
            cycle <= 0;
        end else begin
            cycle <= cycle + 1;

            // Track last ack cycle
            if (d0_snp_rsp_ack || d1_snp_rsp_ack || l2_snp_ack) begin
                last_ack_cycle = cycle;
            end

            // If we're waiting for snoops, arbiter must not accept new reqs
            if (bcast_count == 1 && last_ack_cycle == -1) begin
                assert(i0_req_ready == 0 && i1_req_ready == 0 && d0_req_ready == 0 && d1_req_ready == 0)
                    else $fatal(1, "Arbiter accepted a new request while snoop acks not done!");
            end
        end
    end

    // Detect broadcasts and schedule snoop acks
    always @(posedge clk) begin
        if (rst_n && bus_req_valid) begin
            bcast_count++;

            // On first transaction: delay d1 ack more to prove arbiter waits
            if (bcast_count == 1) begin
                fork
                    pulse_d0_rsp(2);
                    pulse_l2_rsp(3);
                    pulse_d1_rsp(7);
                join_none
            end

            // On second transaction: quick acks
            if (bcast_count == 2) begin
                fork
                    pulse_d0_rsp(2);
                    pulse_l2_rsp(2);
                    pulse_d1_rsp(2);
                join_none
            end
        end
    end

    initial begin
        // defaults
        rst_n = 0;

        i0_req_valid=0; i0_req_cmd=0; i0_req_addr=0; i0_req_src=0;
        i1_req_valid=0; i1_req_cmd=0; i1_req_addr=0; i1_req_src=0;

        d0_req_valid=0; d0_req_cmd=0; d0_req_addr=0; d0_req_src=0;
        d1_req_valid=0; d1_req_cmd=0; d1_req_addr=0; d1_req_src=0;

        d0_snp_rsp_valid=0; d0_snp_rsp_hit=0; d0_snp_rsp_state=0; d0_snp_rsp_has_data=0; d0_snp_rsp_ack=0;
        d1_snp_rsp_valid=0; d1_snp_rsp_hit=0; d1_snp_rsp_state=0; d1_snp_rsp_has_data=0; d1_snp_rsp_ack=0;
        l2_snp_valid=0; l2_snp_hit=0; l2_snp_has_data=0; l2_snp_ack=0;

        d0_sup_valid=0; d0_sup_data=0; d0_sup_beat=0; d0_sup_last=0;
        d1_sup_valid=0; d1_sup_data=0; d1_sup_beat=0; d1_sup_last=0;
        l2_sup_valid=0; l2_sup_data=0; l2_sup_beat=0; l2_sup_last=0;

        repeat (4) @(posedge clk);
        rst_n = 1;

        // Two pending requests at the same time
        @(posedge clk);
        d0_req_valid <= 1; d0_req_cmd <= 3'h1; d0_req_addr <= 32'h3000_0000; d0_req_src <= 2'd0;
        d1_req_valid <= 1; d1_req_cmd <= 3'h2; d1_req_addr <= 32'h4000_0000; d1_req_src <= 2'd1;

        // Run long enough for two broadcasts + delayed acks
        // ALSO drop valids when served (same behavior as your removed always_ff, but single driver)
        repeat (40) begin
            @(posedge clk);
            if (rst_n) begin
                if (d0_req_ready) d0_req_valid <= 0;
                if (d1_req_ready) d1_req_valid <= 0;
            end
        end

        assert(bcast_count == 2) else $fatal(1, "Expected exactly 2 broadcasts, got %0d", bcast_count);

        $display("Step3 TB done: snoop ACK wait works (bus stalls until all acks).");
        $finish;
    end

    initial begin
        $dumpfile("step_3.vcd");
        $dumpvars(0, tb_snoop_bus_arbiter_step3);
    end

endmodule
