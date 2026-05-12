`timescale 1ns / 1ps

module writeback #(
    parameter int XLEN = 64
)(
    input  logic                 clk, rst,
    input  logic                 w_enW,
    input  logic [1:0]           WBSelW,
    input  logic [4:0]           RDW,
    input  logic [XLEN-1:0]      ALU_OpW,
    input  logic [XLEN-1:0]      PCW_4,
    input  logic [XLEN-1:0]      memop,
    input  logic [31:0]          Instruction_WB,

    output logic [XLEN-1:0]      result,
    output logic [4:0]           RD,
    output logic [31:0]          Instruction_W,
    output logic                 w_en
);

    assign w_en = w_enW;
    assign RD   = RDW;
    assign Instruction_W = Instruction_WB;

    always_comb begin
        case (WBSelW)
            2'b00:   result = memop;
            2'b01:   result = ALU_OpW;
            2'b10:   result = PCW_4;
            default: result = '0;
        endcase
    end

endmodule
