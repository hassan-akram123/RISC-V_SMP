module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    // Internal wires to connect the half adders
    wire s1, c_out1, c_out2;

    // Instantiate two half adders
    half_adder ha1 (
        .a(a),
        .b(b),
        .sum(s1),
        .cout(c_out1)
    );

    half_adder ha2 (
        .a(s1),
        .b(cin),
        .sum(sum),
        .cout(c_out2)
    );

    // Final carry-out is the OR of the two half adder carry-outs
    assign cout = c_out1 | c_out2;
endmodule