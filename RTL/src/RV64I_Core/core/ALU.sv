`timescale 1ns/1ps

module alu #(
    parameter int ALU_WIDTH = 64
)(
    input  logic [2:0]               ALUSel,
    input  logic                     func7,
    input  logic [ALU_WIDTH-1:0]      Op1,
    input  logic [ALU_WIDTH-1:0]      Op2,
    output logic [ALU_WIDTH-1:0]      Result
);

    logic [ALU_WIDTH-1:0] temp; // keep, but width-correct

    always_comb begin
        temp   = '0;
        Result = '0;

        case (ALUSel)
            3'b000: begin
                case (func7)
                    1'b0: Result = Op1 + Op2;
                    1'b1: Result = Op1 - Op2;
                endcase
            end

            3'b001: begin
                // Keep RV32 shift behavior: use only [4:0]
                Result = Op1 << Op2[4:0];
            end

            3'b010: begin
                Result = ($signed(Op1) < $signed(Op2)) ? {{(ALU_WIDTH-1){1'b0}},1'b1} : '0;
            end

            3'b011: begin
                Result = (Op1 < Op2) ? {{(ALU_WIDTH-1){1'b0}},1'b1} : '0;
            end

            3'b100: begin
                Result = Op1 ^ Op2;
            end

            3'b101: begin
                case (func7)
                    1'b0: Result = Op1 >>  Op2[4:0];
                    1'b1: Result = $signed(Op1) >>> Op2[4:0];
                endcase
            end

            3'b110: begin
                Result = Op1 | Op2;
            end

            3'b111: begin
                Result = Op1 & Op2;
            end
        endcase

        // Keep your original special-case behavior exactly
        if (func7 == 1'b1 && ALUSel == 3'b001) begin
            Result = Op2;
        end
    end

endmodule
