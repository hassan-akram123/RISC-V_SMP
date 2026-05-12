`timescale 1ns / 1ps

module fetch #(
    parameter int XLEN = 64
)(
    input  logic                 clk, rst, Flush,
    input  logic                 PC_Mux, Stall,
    input  logic [XLEN-1:0]      PC_Target,
    input  logic [31:0]          Instruction,

    output logic [31:0]          Instruction_Fetch,
    output logic [XLEN-1:0]      PCD,
    output logic [XLEN-1:0]      PC_4,
    output logic [XLEN-1:0]      PC_Value
`ifdef tracer
    ,output logic [31:0]         current_pc
`endif
);

    logic [XLEN-1:0] PC_In;
    logic [XLEN-1:0] PC_next;

`ifdef tracer
    // Keep tracer as 32-bit (unchanged behavior)
    assign current_pc = PC_Value[31:0];
`endif

    // PC+4 (64-bit)
    assign PC_In = PC_Value + {{(XLEN-3){1'b0}}, 3'd4};

    // Next PC mux (unchanged)
    always_comb begin
        case (PC_Mux)
            1'b0: PC_next = PC_In;
            1'b1: PC_next = PC_Target;
            default: PC_next = PC_In;
        endcase
    end

    // Program counter (now XLEN-wide)
    program_counter #(
        .XLEN(XLEN),
        .PROG_VALUE({XLEN{1'b1}})   // equivalent to 0xFFFF... (was 32'hFFFFFFFF)
    ) PC (
        .clk     (clk),
        .rst     (rst),
        .Stall   (Stall),
        .PC_in   (PC_next),
        .PC_Value(PC_Value)
    );

    // Fetch stage pipeline regs (Instruction stays 32-bit)
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            Instruction_Fetch <= 32'h00000000;
            PCD              <= '0;
            PC_4             <= '0;
        end
        else if (Flush) begin
            Instruction_Fetch <= 32'h00000013; // NOP unchanged
            PCD              <= '0;
            PC_4             <= '0;
        end
        else if (Stall) begin
            Instruction_Fetch <= Instruction_Fetch;
            PCD              <= PCD;
            PC_4             <= PC_4;
        end
        else begin
            Instruction_Fetch <= Instruction;
            PCD              <= PC_Value;
            PC_4             <= PC_In;
        end
    end

endmodule
