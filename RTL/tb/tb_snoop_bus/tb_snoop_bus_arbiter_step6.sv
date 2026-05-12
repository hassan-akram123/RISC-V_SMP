`timescale 1ns/1ps

module tb_snoop_bus_arbiter_step6;

    localparam logic [2:0] CMD_GETS = 3'd0;
    localparam logic [2:0] CMD_GETM = 3'd1;
    localparam logic [2:0] CMD_UPGR = 3'd2;

    localparam logic [1:0] ST_S = 2'b01;
    localparam logic [1:0] ST_E = 2'b10;
    localparam logic [1:0] ST_M = 2'b11;

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

    // Suppliers
    logic d0_sup_valid, d0_sup_ready; logic [63:0] d0_sup_data; logic [2:0] d0_sup_beat; logic d0_sup_last;
    logic d1_sup_valid, d1_sup_ready; logic [63:0] d1_sup_data; logic [2:0] d1_sup_beat; logic d1_sup_last;
    logic l2_sup_valid, l2_sup_ready; logic [63:0] l2_sup_data; logic [2:0] l2_sup_beat; logic l2_sup_last;

    // Data bus
    logic        bus_dat_valid; logic [1:0] bus_dat_dst; logic [63:0] bus_dat_data; logic [2:0] bus_dat_beat; logic bus_dat_last;

    // Grants
    logic        i_bus_gnt_valid; logic [1:0] i_bus_gnt_dst; logic i_bus_gnt_ok;
    logic        d_bus_gnt_valid; logic [1:0] d_bus_gnt_dst; logic [31:0] d_bus_gnt_addr; logic [1:0] d_bus_gnt_state; logic d_bus_gnt_ok;

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

    initial clk=0;
    always #5 clk=~clk;

    task automatic clear_all();
        i0_req_valid=0; i0_req_cmd=0; i0_req_addr=0; i0_req_src=0;
        i1_req_valid=0; i1_req_cmd=0; i1_req_addr=0; i1_req_src=0;
        d0_req_valid=0; d0_req_cmd=0; d0_req_addr=0; d0_req_src=0;
        d1_req_valid=0; d1_req_cmd=0; d1_req_addr=0; d1_req_src=0;

        d0_snp_rsp_valid=0; d0_snp_rsp_hit=0; d0_snp_rsp_state=0; d0_snp_rsp_has_data=0; d0_snp_rsp_ack=0;
        d1_snp_rsp_valid=0; d1_snp_rsp_hit=0; d1_snp_rsp_state=0; d1_snp_rsp_has_data=0; d1_snp_rsp_ack=0;
        l2_snp_valid=0;  l2_snp_hit=0;  l2_snp_has_data=0;  l2_snp_ack=0;

        d0_sup_valid=0; d0_sup_data=0; d0_sup_beat=0; d0_sup_last=0;
        d1_sup_valid=0; d1_sup_data=0; d1_sup_beat=0; d1_sup_last=0;
        l2_sup_valid=0; l2_sup_data=0; l2_sup_beat=0; l2_sup_last=0;
    endtask

    task automatic pulse_acks(input bit d0_hit, input bit d1_hit, input bit d0_has, input bit d1_has);
        // wait until request broadcasted
        wait(bus_req_valid);
        @(posedge clk);
        d0_snp_rsp_valid <= 1; d0_snp_rsp_hit <= d0_hit; d0_snp_rsp_has_data <= d0_has; d0_snp_rsp_ack <= 1;
        d1_snp_rsp_valid <= 1; d1_snp_rsp_hit <= d1_hit; d1_snp_rsp_has_data <= d1_has; d1_snp_rsp_ack <= 1;
        l2_snp_valid     <= 1; l2_snp_ack <= 1;
        @(posedge clk);
        d0_snp_rsp_valid <= 0; d0_snp_rsp_ack <= 0; d0_snp_rsp_hit <= 0; d0_snp_rsp_has_data <= 0;
        d1_snp_rsp_valid <= 0; d1_snp_rsp_ack <= 0; d1_snp_rsp_hit <= 0; d1_snp_rsp_has_data <= 0;
        l2_snp_valid     <= 0; l2_snp_ack <= 0;
    endtask

    task automatic l2_stream8(input logic [63:0] base, input logic [1:0] expect_dst);
        int b;
        wait(l2_sup_ready);
        for (b=0;b<8;b++) begin
            @(posedge clk);
            l2_sup_valid <= 1;
            l2_sup_beat  <= b[2:0];
            l2_sup_data  <= base + b;
            l2_sup_last  <= (b==7);
            #1;
            assert(bus_dat_valid==1);
            assert(bus_dat_dst==expect_dst);
            assert(bus_dat_beat==b[2:0]);
        end
        @(posedge clk);
        l2_sup_valid <= 0; l2_sup_last <= 0;
    endtask

    task automatic d0_stream8(input logic [63:0] base, input logic [1:0] expect_dst);
        int b;
        wait(d0_sup_ready);
        for (b=0;b<8;b++) begin
            @(posedge clk);
            d0_sup_valid <= 1;
            d0_sup_beat  <= b[2:0];
            d0_sup_data  <= base + b;
            d0_sup_last  <= (b==7);
            #1;
            assert(bus_dat_valid==1);
            assert(bus_dat_dst==expect_dst);
            assert(bus_dat_beat==b[2:0]);
        end
        @(posedge clk);
        d0_sup_valid <= 0; d0_sup_last <= 0;
    endtask

task automatic wait_d_gnt_and_check(input logic [1:0] dst, input logic [31:0] addr, input logic [1:0] st);
    wait(d_bus_gnt_valid);
    #1;
    assert(d_bus_gnt_ok==1) else $fatal(1,"d_bus_gnt_ok not set");
    assert(d_bus_gnt_dst==dst) else $fatal(1,"d_bus_gnt_dst mismatch");
    assert(d_bus_gnt_addr==addr) else $fatal(1,"d_bus_gnt_addr mismatch");
    assert(d_bus_gnt_state==st) else $fatal(1,"d_bus_gnt_state mismatch");

    @(posedge clk);
    #100;  // <-- THIS is the important fix
    assert(d_bus_gnt_valid==0) else $fatal(1,"grant should be 1-cycle pulse");
endtask


    initial begin
        clear_all();
        rst_n = 0;
        repeat(3) @(posedge clk);
        rst_n = 1;

        // TXN1: D1 GETS, no other L1 hit => expect E, L2 supplies 8 beats
        @(posedge clk);
        d1_req_valid <= 1;
        d1_req_cmd   <= CMD_GETS;
        d1_req_addr  <= 32'h4000_0000;
        d1_req_src   <= 2'd1;

        wait(d1_req_ready);
        @(posedge clk);
        d1_req_valid <= 0;

        fork
            pulse_acks(0,0,0,0);
            l2_stream8(64'hAAAA_0000_0000_0000, 2'd1);
        join

        wait_d_gnt_and_check(2'd1, 32'h4000_0000, ST_E);

        // TXN2: D0 GETM, D0 snoopers say has_data=1 => D0 supplies, expect M
        @(posedge clk);
        d0_req_valid <= 1;
        d0_req_cmd   <= CMD_GETM;
        d0_req_addr  <= 32'h3000_0000;
        d0_req_src   <= 2'd0;

        wait(d0_req_ready);
        @(posedge clk);
        d0_req_valid <= 0;

        fork
          pulse_acks(0,0,0,1); // D1 has_data=1
            d0_stream8(64'hBBBB_0000_0000_0000, 2'd0);
        join

        wait_d_gnt_and_check(2'd0, 32'h3000_0000, ST_M);

        // TXN3: D1 UPGR, no data phase, immediate grant M after ACKs
        @(posedge clk);
        d1_req_valid <= 1;
        d1_req_cmd   <= CMD_UPGR;
        d1_req_addr  <= 32'h5000_0000;
        d1_req_src   <= 2'd1;

        wait(d1_req_ready);
        @(posedge clk);
        d1_req_valid <= 0;

        pulse_acks(0,0,0,0);
        wait_d_gnt_and_check(2'd1, 32'h5000_0000, ST_M);

        $display("Step6 PASS: grant/completion works for data + no-data commands.");
        $finish;
    end
  initial begin
    $dumpfile("step_6.vcd");
    $dumpvars(0,tb_snoop_bus_arbiter_step6);
  end

endmodule
