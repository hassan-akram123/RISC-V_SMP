`timescale 1ns/1ps

// -----------------------------------------------------------------------------
// Behavioral stubs for the Xilinx cache BRAM IPs used by your RTL.
// Use these for pure RTL simulation/regression.
// They implement a simple synchronous single-port memory with byte write enables.
// -----------------------------------------------------------------------------

module blk_mem_gen_0 (
    input  logic         clka,
    input  logic         ena,
    input  logic [63:0]  wea,
    input  logic [5:0]   addra,
    input  logic [511:0] dina,
    output logic [511:0] douta
);
    logic [511:0] mem [0:63];

    initial begin
        for (int i = 0; i < 64; i++) mem[i] = '0;
    end

    always @(posedge clka) begin
        if (ena) begin
            for (int b = 0; b < 64; b++) begin
                if (wea[b]) mem[addra][8*b +: 8] <= dina[8*b +: 8];
            end
            douta <= mem[addra];
        end
        else begin
            douta <= douta;
        end
    end
endmodule

module blk_mem_gen_1 (
    input  logic         clka,
    input  logic         ena,
    input  logic [63:0]  wea,
    input  logic [10:0]  addra,
    input  logic [511:0] dina,
    output logic [511:0] douta
);
    logic [511:0] mem [0:2047];

    initial begin
        for (int i = 0; i < 2048; i++) mem[i] = '0;
    end

    always @(posedge clka) begin
        if (ena) begin
            for (int b = 0; b < 64; b++) begin
                if (wea[b]) mem[addra][8*b +: 8] <= dina[8*b +: 8];
            end
            douta <= mem[addra];
        end
        else begin
            douta <= douta;
        end
    end
endmodule
