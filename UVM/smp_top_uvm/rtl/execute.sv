`timescale 1ns / 1ps

module execute #(
    parameter int XLEN = 64
)(
    input  logic                   clk,
    input  logic                   rst,
    input  logic                   StallM,

    input  logic [31:0]            Instruction_Execute,

    input  logic signed [XLEN-1:0] Op1E,
    input  logic signed [XLEN-1:0] Op2E,
    input  logic signed [XLEN-1:0] OpM,
    input  logic signed [XLEN-1:0] OpW,
    input  logic signed [XLEN-1:0] Immediate_E,

    input  logic [XLEN-1:0]        PCE,
    input  logic [XLEN-1:0]        PCE_4,

    input  logic                   BSelE,
    input  logic                   func7E,
    input  logic                   w_enE,
    input  logic                   wd_enE,
    input  logic                   rd_enE,
    input  logic                   AselE,
    input  logic                   BrUnE,
    input  logic                   BranchE,
    input  logic                   JumpE,
    input  logic [2:0]             ALUSelE,
    input  logic [2:0]             op_selE,
    input  logic [1:0]             WBSelE,
    input  logic [4:0]             RDE,
    input  logic [1:0]             Forward_A,
    input  logic [1:0]             Forward_B,

`ifdef tracer
    output logic [XLEN-1:0]        OP1M,
    input  logic [31:0]            current_pc_d,
    output logic [31:0]            current_pc_e,
`endif

    output logic [XLEN-1:0]        OP2M,
    output logic [XLEN-1:0]        PCM_4,
    output logic [XLEN-1:0]        ALU_OpM,
    output logic [XLEN-1:0]        PC_Target,

    output logic                   w_enM,
    output logic                   wd_enM,
    output logic                   rd_enM,
    output logic                   PC_Mux,
    output logic [2:0]             op_selM,
    output logic [1:0]             WBSelM,
    output logic [4:0]             RDM,
    output logic [31:0]            Instruction_Mem
);

    logic [XLEN-1:0]        result_data;
    logic [XLEN-1:0]        Op1;
    logic [XLEN-1:0]        Op2;
    logic                   Lt;
    logic                   Eq;
    logic signed [XLEN-1:0] In1;
    logic signed [XLEN-1:0] In2;

    always_comb begin
        if (JumpE) begin
            PC_Mux = 1'b1;
        end else if (BranchE) begin
            case (Instruction_Execute[14:12])
                3'b000: PC_Mux = Eq;
                3'b001: PC_Mux = ~Eq;
                3'b100: PC_Mux = Lt;
                3'b101: PC_Mux = ~Lt;
                3'b110: PC_Mux = Lt;
                3'b111: PC_Mux = ~Lt;
                default: PC_Mux = 1'b0;
            endcase
        end else begin
            PC_Mux = 1'b0;
        end
    end

    always_comb begin
        case (Forward_A)
            2'b00:   Op1 = Op1E;
            2'b01:   Op1 = OpW;
            2'b10:   Op1 = OpM;
            default: Op1 = Op1E;
        endcase

        case (Forward_B)
            2'b00:   Op2 = Op2E;
            2'b01:   Op2 = OpW;
            2'b10:   Op2 = OpM;
            default: Op2 = Op2E;
        endcase
    end

    always_comb begin
        case (BSelE)
            1'b0:    In2 = Op2;
            1'b1:    In2 = Immediate_E;
            default: In2 = Op2;
        endcase
    end

    always_comb begin
        case (AselE)
            1'b0:    In1 = Op1;
            1'b1:    In1 = PCE;
            default: In1 = Op1;
        endcase
    end

    alu #(.ALU_WIDTH(XLEN)) ALU (
        .Op1    (In1),
        .Op2    (In2),
        .ALUSel (ALUSelE),
        .func7  (func7E),
        .Result (result_data)
    );

    branch_comp #(.XLEN(XLEN)) COMP (
        .Op1  (Op1),
        .Op2  (Op2),
        .BrUn (BrUnE),
        .Eq   (Eq),
        .Lt   (Lt)
    );

    always_comb begin
        if (JumpE) begin
            PC_Target = result_data & ~{{(XLEN-1){1'b0}}, 1'b1};
        end else begin
            PC_Target = result_data;
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            w_enM           <= 1'b0;
            wd_enM          <= 1'b0;
            rd_enM          <= 1'b0;
            WBSelM          <= 2'b00;
            RDM             <= 5'h00;
            PCM_4           <= '0;
            ALU_OpM         <= '0;
            OP2M            <= '0;
            Instruction_Mem <= 32'h00000000;
            op_selM         <= 3'b000;
`ifdef tracer
            OP1M            <= '0;
            current_pc_e    <= 32'h80000000;
`endif
        end else if (StallM) begin
            w_enM           <= w_enM;
            wd_enM          <= wd_enM;
            rd_enM          <= rd_enM;
            WBSelM          <= WBSelM;
            RDM             <= RDM;
            PCM_4           <= PCM_4;
            ALU_OpM         <= ALU_OpM;
            OP2M            <= OP2M;
            Instruction_Mem <= Instruction_Mem;
            op_selM         <= op_selM;
`ifdef tracer
            OP1M            <= OP1M;
            current_pc_e    <= current_pc_e;
`endif
        end else begin
            w_enM           <= w_enE;
            wd_enM          <= wd_enE;
            rd_enM          <= rd_enE;
            WBSelM          <= WBSelE;
            RDM             <= RDE;
            PCM_4           <= PCE_4;
            ALU_OpM         <= result_data;
            OP2M            <= Op2;
            Instruction_Mem <= Instruction_Execute;
            op_selM         <= op_selE;
`ifdef tracer
            OP1M            <= Op1;
            current_pc_e    <= current_pc_d;
`endif
        end
    end

endmodule
