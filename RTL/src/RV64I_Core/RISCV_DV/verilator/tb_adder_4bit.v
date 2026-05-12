`timescale 1ns/1ps
module tb_adder_4bit;
    // DUT I/O
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    // DUT
    adder_4bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Stats
    integer pass_cnt = 0;
    integer fail_cnt = 0;
    integer total    = 0;

    // Control
    integer i, num_tests, max_fail_logs, fail_logs;
    integer seed;
    reg [4:0] exp;           // 5-bit expected (sum+carry)
    reg [3:0] exp_sum;
    reg       exp_cout;
    real      func_score;

    initial begin
        // VCD
        $dumpfile("adder_4bit.vcd");
        $dumpvars(0, tb_adder_4bit);

        // Defaults
        num_tests     = 1000;
        max_fail_logs = 20;
        fail_logs     = 0;
        seed          = 32'h1;

        // Plusargs (Verilog-2001 friendly)
        if ($value$plusargs("NUM_TESTS=%d", num_tests)) ;
        if ($value$plusargs("SEED=%d", seed)) ;

        $display("Testing 4-bit adder with %0d randomized cases (SEED=%0d)", num_tests, seed);

        // Initialize inputs to known values
        a   = 4'd0;
        b   = 4'd0;
        cin = 1'b0;
        #1;

        // Randomized testing
        for (i = 0; i < num_tests; i = i + 1) begin
            // Randomize inputs (use only lower bits)
            a   = $random(seed) & 4'hF;
            b   = $random(seed) & 4'hF;
            cin = $random(seed) & 1'b1;

            #1; // allow combinational settle

            // Compute expected reference explicitly 5-bit wide
            exp      = {1'b0, a} + {1'b0, b} + cin;
            exp_sum  = exp[3:0];
            exp_cout = exp[4];

            // Treat X/Z on outputs as fail
            if ((^sum === 1'bx) || (cout === 1'bx)) begin
                fail_cnt = fail_cnt + 1;
                if (fail_logs < max_fail_logs) begin
                    $display("FAIL(X): a=%0d b=%0d cin=%0d -> got sum=%0b cout=%b, exp sum=%0d cout=%0d",
                             a, b, cin, sum, cout, exp_sum, exp_cout);
                    fail_logs = fail_logs + 1;
                end
            end else if (sum === exp_sum && cout === exp_cout) begin
                pass_cnt = pass_cnt + 1;
            end else begin
                fail_cnt = fail_cnt + 1;
                if (fail_logs < max_fail_logs) begin
                    $display("FAIL: a=%0d b=%0d cin=%0d -> got sum=%0d cout=%0d, exp sum=%0d cout=%0d",
                             a, b, cin, sum, cout, exp_sum, exp_cout);
                    fail_logs = fail_logs + 1;
                end
            end

            total = total + 1;
        end

        // Summary + canonical score line
        if (total > 0)
            func_score = pass_cnt * 1.0 / total;
        else
            func_score = 0.0;

        $display("FUNC_SUMMARY pass=%0d fail=%0d total=%0d", pass_cnt, fail_cnt, total);
        $display("FUNC_SCORE: %0.6f", func_score);  // <- gateway parses this

        $finish;
    end
endmodule
