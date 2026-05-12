`timescale 1ns / 1ps

module branch_comp #(
    parameter int XLEN = 64
)(
    input  logic signed [XLEN-1:0] Op1,
    input  logic signed [XLEN-1:0] Op2,
    input  logic                   BrUn,
    output logic                   Eq,
    output logic                   Lt
);

    always_comb begin
        Eq = (Op1 == Op2);

        if (BrUn) begin
            Lt = ($unsigned(Op1) < $unsigned(Op2));
        end else begin
            Lt = (Op1 < Op2);
        end
    end

endmodule
