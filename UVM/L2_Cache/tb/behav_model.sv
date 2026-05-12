`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name : blk_mem_gen_1
// Description : Behavioral model for L2 Cache BRAM
//               Matches L2_Cache geometry:
//                 - Depth      : 2048 locations (11-bit address)
//                 - Data width : 512 bits
//                 - Byte enable: 64 bits (one per byte in a 64-byte cache line)
//                 - Read latency: 1 cycle (registered output, same as Xilinx BRAM)
//////////////////////////////////////////////////////////////////////////////////

module blk_mem_gen_1 (
    input  wire          clka,
    input  wire          ena,
    input  wire [ 63:0]  wea,
    input  wire [ 10:0]  addra,   // 11-bit: 2048 sets
    input  wire [511:0]  dina,
    output reg  [511:0]  douta
);

    // 2048 locations x 512 bits
    reg [511:0] mem [0:2047];

    integer i;

    // initialise to zero
    initial begin
        for (i = 0; i < 2048; i = i + 1) mem[i] = 512'b0;
        douta = 512'b0;
    end

    always @(posedge clka) begin
        if (ena) begin
            // byte-granule write (wea is 64 bits - one bit per byte of 512-bit line)
            if (|wea) begin
                for (i = 0; i < 64; i = i + 1) begin
                    if (wea[i]) mem[addra][i*8 +: 8] <= dina[i*8 +: 8];
                end
            end
            // 1-cycle read latency - matches Xilinx BRAM behaviour
            douta <= mem[addra];
        end
    end

endmodule
