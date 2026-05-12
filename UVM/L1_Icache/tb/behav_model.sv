`timescale 1ns / 1ps

module blk_mem_gen_0 (
    input  wire         clka,
    input  wire         ena,
    input  wire [ 63:0] wea,
    input  wire [  5:0] addra,
    input  wire [511:0] dina,
    output reg  [511:0] douta
);
  // memory — 64 locations x 512 bits
  // matches C_WRITE_DEPTH_A=64, C_WRITE_WIDTH_A=512
  reg [511:0] mem[0:63];

  integer i;

  // initialize to zero
  initial begin
    for (i = 0; i < 64; i = i + 1) mem[i] = 512'b0;
    douta = 512'b0;
  end

  always @(posedge clka) begin
    if (ena) begin
      // write with byte enables
      // wea is 64 bits — one bit per byte of 512-bit data
      if (|wea) begin
        for (i = 0; i < 64; i = i + 1) begin
          if (wea[i]) mem[addra][i*8+:8] <= dina[i*8+:8];
        end
      end
      // read - 1 cycle latency matches BRAM behavior
      douta <= mem[addra];
    end
  end

endmodule
