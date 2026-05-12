`timescale 1ns/1ps

module tb_snoop_bus_arbiter_step2;

    logic clk, rst_n;

    // Requests
    logic        i0_req_valid; logic i0_req_ready; logic [2:0] i0_req_cmd; logic [31:0] i0_req_addr; logic [1:0] i0_req_src;
    logic        i1_req_valid; logic i1_req_ready; logic [2:0] i1_req_cmd; logic [31:0] i1_req_addr; logic [1:0] i1_req_src;
    logic        d0_req_valid; logic d0_req_ready; logic [2:0] d0_req_cmd; logic [31:0] d0_req_addr; logic [1:0] d0_req_src;
    logic        d1_req_valid; logic d1_req_ready; logic [2:0] d1_req_cmd; logic [31:0] d1_req_addr; logic [1:0] d1_req_src;

    // Broadcast
    logic        bus_req_valid; logic [2:0] bus_req_cmd; logic [31:0] bus_req_addr; logic [1:0] bus_req_src;

    // Snoop responses (unused)
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

    // helper: count ones in 4-bit
    function automatic int ones4(input logic [3:0] v);
        return (v[0]+v[1]+v[2]+v[3]);
    endfunction

    // drive defaults
    task automatic clear_inputs();
        i0_req_valid=0; i0_req_cmd=3'h0; i0_req_addr=32'h0; i0_req_src=2'd0;
        i1_req_valid=0; i1_req_cmd=3'h0; i1_req_addr=32'h0; i1_req_src=2'd1;
        d0_req_valid=0; d0_req_cmd=3'h0; d0_req_addr=32'h0; d0_req_src=2'd0;
        d1_req_valid=0; d1_req_cmd=3'h0; d1_req_addr=32'h0; d1_req_src=2'd1;

        d0_snp_rsp_valid=0; d0_snp_rsp_hit=0; d0_snp_rsp_state=0; d0_snp_rsp_has_data=0; d0_snp_rsp_ack=0;
        d1_snp_rsp_valid=0; d1_snp_rsp_hit=0; d1_snp_rsp_state=0; d1_snp_rsp_has_data=0; d1_snp_rsp_ack=0;
        l2_snp_valid=0; l2_snp_hit=0; l2_snp_has_data=0; l2_snp_ack=0;

        d0_sup_valid=0; d0_sup_data=0; d0_sup_beat=0; d0_sup_last=0;
        d1_sup_valid=0; d1_sup_data=0; d1_sup_beat=0; d1_sup_last=0;
        l2_sup_valid=0; l2_sup_data=0; l2_sup_beat=0; l2_sup_last=0;
    endtask

    // Keep valids asserted until ready (like real masters should do)
    task automatic issue_all_four();
        i0_req_valid = 1; i0_req_cmd = 3'h0; i0_req_addr = 32'h1000_0000; i0_req_src = 2'd0;
        i1_req_valid = 1; i1_req_cmd = 3'h0; i1_req_addr = 32'h2000_0000; i1_req_src = 2'd1;
        d0_req_valid = 1; d0_req_cmd = 3'h1; d0_req_addr = 32'h3000_0000; d0_req_src = 2'd0;
        d1_req_valid = 1; d1_req_cmd = 3'h2; d1_req_addr = 32'h4000_0000; d1_req_src = 2'd1;
    endtask

    // Assertions (Step2 properties)
    always @(posedge clk) begin
        if (rst_n) begin
            logic [3:0] r;
            r = {d1_req_ready, d0_req_ready, i1_req_ready, i0_req_ready};

            // never grant two at once
            assert(ones4(r) <= 1) else $fatal(1, "More than one *_req_ready asserted!");

            // bus_req_valid must coincide with exactly one ready
            if (bus_req_valid) begin
                assert(ones4(r) == 1) else $fatal(1, "bus_req_valid but no winner ready (or multiple winners)");
            end

            // If bus_req_valid, fields must match the winner’s fields
            if (bus_req_valid) begin
                if (i0_req_ready) begin
                    assert(bus_req_cmd  == i0_req_cmd);
                    assert(bus_req_addr == i0_req_addr);
                    assert(bus_req_src  == i0_req_src);
                end
                if (i1_req_ready) begin
                    assert(bus_req_cmd  == i1_req_cmd);
                    assert(bus_req_addr == i1_req_addr);
                    assert(bus_req_src  == i1_req_src);
                end
                if (d0_req_ready) begin
                    assert(bus_req_cmd  == d0_req_cmd);
                    assert(bus_req_addr == d0_req_addr);
                    assert(bus_req_src  == d0_req_src);
                end
                if (d1_req_ready) begin
                    assert(bus_req_cmd  == d1_req_cmd);
                    assert(bus_req_addr == d1_req_addr);
                    assert(bus_req_src  == d1_req_src);
                end
            end
        end
    end

    initial begin
        $dumpfile("Step_2.vcd");
        $dumpvars(0, tb_snoop_bus_arbiter_step2);
    end

    // SINGLE DRIVER THREAD:
    // - applies reset
    // - issues requests
    // - drops valids when ready (no extra always_ff => no multi-driver errors)
    initial begin
        clear_inputs();

        rst_n = 0;
        repeat (4) @(posedge clk);
        rst_n = 1;

        // Test: all 4 request together, observe 4 broadcasts (RR)
        @(posedge clk);
        issue_all_four();

        // Let it run long enough to serve all; drop valids when served
        repeat (12) begin
            @(posedge clk);
            if (rst_n) begin
                if (i0_req_ready) i0_req_valid = 0;
                if (i1_req_ready) i1_req_valid = 0;
                if (d0_req_ready) d0_req_valid = 0;
                if (d1_req_ready) d1_req_valid = 0;
            end
        end

        $display("Step2 TB done: arbitration + broadcast checks passed.");
        $finish;
    end

endmodule
