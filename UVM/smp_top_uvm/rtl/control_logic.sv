`timescale 1ns / 1ps

module control_logic(
    input  logic [2:0] func3,
    input  logic [6:0] op_code,
    input  logic       func7_30,
    output logic       BSel,
    output logic       func7,
    output logic       w_en,
    output logic       wd_en,
    output logic       rd_en,
    output logic       Asel,
    output logic       BrUn,
    output logic       Branch,
    output logic       Jump,
    output logic       illegal_inst_o,
    output logic [2:0] ALUSel,
    output logic [2:0] op_sel,
    output logic [1:0] WBSel,
    output logic [2:0] IMMSel
);

    always_comb begin
        // Safe defaults: illegal / bubble-like behavior.
        BSel           = 1'b0;
        func7          = 1'b0;
        w_en           = 1'b0;
        wd_en          = 1'b0;
        rd_en          = 1'b0;
        Asel           = 1'b0;
        BrUn           = 1'b0;
        Branch         = 1'b0;
        Jump           = 1'b0;
        illegal_inst_o = 1'b1;
        ALUSel         = 3'b000;
        op_sel         = 3'b000;
        WBSel          = 2'b00;
        IMMSel         = 3'b000;

        unique case (op_code)
            7'b0110011: begin // R-type
                BSel           = 1'b0;
                ALUSel         = func3;
                func7          = func7_30;
                w_en           = 1'b1;
                op_sel         = func3;
                wd_en          = 1'b0;
                rd_en          = 1'b0;
                WBSel          = 2'b01;
                IMMSel         = 3'b000;
                Asel           = 1'b0;
                BrUn           = 1'b0;
                Jump           = 1'b0;
                Branch         = 1'b0;
                illegal_inst_o = 1'b0;
            end

            7'b0010011: begin // I-type ALU
                BSel   = 1'b1;
                ALUSel = func3;
                func7  = (func3 == 3'b101 || func3 == 3'b001) ? func7_30 : 1'b0;
                w_en   = 1'b1;
                IMMSel = 3'b001;
                op_sel = func3;
                wd_en  = 1'b0;
                rd_en  = 1'b0;
                WBSel  = 2'b01;
                Asel   = 1'b0;
                BrUn   = 1'b0;
                Jump   = 1'b0;
                Branch = 1'b0;
                illegal_inst_o = 1'b0;
            end

            7'b0000011: begin // Load-type
                unique case (func3)
                    3'b000, // LB
                    3'b001, // LH
                    3'b010, // LW
                    3'b100, // LBU
                    3'b101: begin // LHU
                        BSel           = 1'b1;
                        ALUSel         = 3'b000;
                        op_sel         = func3;
                        wd_en          = 1'b0;
                        w_en           = 1'b1;
                        rd_en          = 1'b1;
                        WBSel          = 2'b00;
                        IMMSel         = 3'b001;
                        func7          = 1'b0;
                        Asel           = 1'b0;
                        BrUn           = 1'b0;
                        Jump           = 1'b0;
                        Branch         = 1'b0;
                        illegal_inst_o = 1'b0;
                    end
                    default: ; // keep defaults => illegal
                endcase
            end

            7'b0100011: begin // Store-type
                unique case (func3)
                    3'b000, // SB
                    3'b001, // SH
                    3'b010: begin // SW
                        BSel           = 1'b1;
                        ALUSel         = 3'b000;
                        op_sel         = func3;
                        wd_en          = 1'b1;
                        rd_en          = 1'b0;
                        WBSel          = 2'b01;
                        IMMSel         = 3'b000; // S-type
                        w_en           = 1'b0;
                        func7          = 1'b0;
                        Asel           = 1'b0;
                        BrUn           = 1'b0;
                        Jump           = 1'b0;
                        Branch         = 1'b0;
                        illegal_inst_o = 1'b0;
                    end
                    default: ; // keep defaults => illegal
                endcase
            end

            7'b1101111: begin // JAL
                BSel           = 1'b1;
                ALUSel         = 3'b000;
                op_sel         = 3'b000;
                wd_en          = 1'b0;
                rd_en          = 1'b0;
                WBSel          = 2'b10;
                IMMSel         = 3'b010;
                w_en           = 1'b1;
                func7          = 1'b0;
                Asel           = 1'b1;
                BrUn           = 1'b0;
                Jump           = 1'b1;
                Branch         = 1'b0;
                illegal_inst_o = 1'b0;
            end

            7'b1100111: begin // JALR
                if (func3 == 3'b000) begin
                    BSel           = 1'b1;
                    ALUSel         = 3'b000;
                    op_sel         = 3'b000;
                    wd_en          = 1'b0;
                    rd_en          = 1'b0;
                    WBSel          = 2'b10;
                    IMMSel         = 3'b001;
                    w_en           = 1'b1;
                    func7          = 1'b0;
                    Asel           = 1'b0;
                    BrUn           = 1'b0;
                    Jump           = 1'b1;
                    Branch         = 1'b0;
                    illegal_inst_o = 1'b0;
                end
            end

            7'b1100011: begin // B-type
                unique case (func3)
                    3'b000, // BEQ
                    3'b001, // BNE
                    3'b100, // BLT
                    3'b101, // BGE
                    3'b110, // BLTU
                    3'b111: begin // BGEU
                        BSel   = 1'b1;
                        ALUSel = 3'b000;
                        op_sel = func3;
                        wd_en  = 1'b0;
                        rd_en  = 1'b0;
                        WBSel  = 2'b10;
                        IMMSel = 3'b011;
                        w_en   = 1'b0;
                        func7  = 1'b0;
                        Asel   = 1'b1;
                        BrUn   = func3[1]; // unsigned for BLTU/BGEU only
                        Jump   = 1'b0;
                        Branch = 1'b1;
                        illegal_inst_o = 1'b0;
                    end
                    default: ;
                endcase
            end

            7'b0110111: begin // LUI
                BSel           = 1'b1;
                ALUSel         = 3'b001;
                op_sel         = 3'b000;
                wd_en          = 1'b0;
                rd_en          = 1'b0;
                WBSel          = 2'b01;
                IMMSel         = 3'b100;
                w_en           = 1'b1;
                func7          = 1'b1;
                Asel           = 1'b0;
                BrUn           = 1'b0;
                Jump           = 1'b0;
                Branch         = 1'b0;
                illegal_inst_o = 1'b0;
            end

            7'b0010111: begin // AUIPC
                BSel           = 1'b1;
                ALUSel         = 3'b000;
                op_sel         = 3'b000;
                wd_en          = 1'b0;
                rd_en          = 1'b0;
                WBSel          = 2'b01;
                IMMSel         = 3'b100;
                w_en           = 1'b1;
                func7          = 1'b0;
                Asel           = 1'b1;
                BrUn           = 1'b0;
                Jump           = 1'b0;
                Branch         = 1'b0;
                illegal_inst_o = 1'b0;
            end

            default: begin
                // keep safe defaults
            end
        endcase
    end
endmodule
