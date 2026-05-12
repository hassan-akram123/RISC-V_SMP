`timescale 1ns/1ps

module program_counter #(
    parameter int XLEN = 64,
    parameter logic [XLEN-1:0] PROG_VALUE = {XLEN{1'b1}}
)(
    input  logic            clk,
    input  logic            rst,
    input  logic            Stall,
    input  logic [XLEN-1:0] PC_in,
    output logic [XLEN-1:0] PC_Value
);

    always_ff @(posedge clk or negedge rst) begin
        if (!rst)
            PC_Value <= {{(XLEN-32){1'b0}}, 32'h80000000};
        else if (!Stall)
            PC_Value <= (PC_in <= PROG_VALUE) ? PC_in : PROG_VALUE;
    end
endmodule
