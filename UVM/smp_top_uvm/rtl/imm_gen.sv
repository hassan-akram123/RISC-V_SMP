`timescale 1ns / 1ps

module imm_gen #(
    parameter int XLEN = 64
)(
    input  logic [31:0] imm,
    input  logic [2:0]  IMMSel,
    output logic [XLEN-1:0] immediate
);

    always_comb begin
        case (IMMSel)

            3'b001: begin // I-type
                if (imm[31]) begin
                    immediate = {{(XLEN-12){1'b1}}, imm[31:20]};
                end else begin
                    immediate = {{(XLEN-12){1'b0}}, imm[31:20]};
                end
            end

            3'b000: begin // S-type
                if (imm[31]) begin
                    immediate = {{(XLEN-12){1'b1}}, imm[31:25], imm[11:7]};
                end else begin
                    immediate = {{(XLEN-12){1'b0}}, imm[31:25], imm[11:7]};
                end
            end

            3'b010: begin // JAL (J-type immediate is 21 bits incl. <<1)
                if (imm[31]) begin
                    immediate = {{(XLEN-21){1'b1}}, imm[31], imm[19:12], imm[20], imm[30:21], 1'b0};
                end else begin
                    immediate = {{(XLEN-21){1'b0}}, imm[31], imm[19:12], imm[20], imm[30:21], 1'b0};
                end
            end

            3'b011: begin // B-type (13 bits incl. <<1)
                if (imm[31]) begin
                    immediate = {{(XLEN-13){1'b1}}, imm[31], imm[7], imm[30:25], imm[11:8], 1'b0};
                end else begin
                    immediate = {{(XLEN-13){1'b0}}, imm[31], imm[7], imm[30:25], imm[11:8], 1'b0};
                end
            end

            3'b100: begin // U-type (upper 20 << 12)
                // U-type should keep top bits, and low 12 are zeros
                // For XLEN=64 we zero-extend above bit31 (keeping behavior simple)
                immediate = {{(XLEN-32){1'b0}}, imm[31:12], 12'b0};
            end

            default: begin // Default I-type
                if (imm[31]) begin
                    immediate = {{(XLEN-12){1'b1}}, imm[31:20]};
                end else begin
                    immediate = {{(XLEN-12){1'b0}}, imm[31:20]};
                end
            end

        endcase
    end

endmodule
