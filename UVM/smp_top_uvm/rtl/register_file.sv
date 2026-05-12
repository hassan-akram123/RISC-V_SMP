`timescale 1ns / 1ps

module register_file #(
    parameter int REGF_WIDTH = 64   // set to 64 for your design
)(
    input  logic                   clk,
    input  logic                   w_en,
    input  logic [4:0]             rs1,
    input  logic [4:0]             rs2,
    input  logic [4:0]             rd,
    input  logic [REGF_WIDTH-1:0]  data_w,
    output logic [REGF_WIDTH-1:0]  Op1,
    output logic [REGF_WIDTH-1:0]  Op2
);

    // 32 registers, REGF_WIDTH bits each
    logic [REGF_WIDTH-1:0] x [0:31];

    // Read ports (x0 always reads as zero)
    assign Op1 = (rs1 == 5'd0) ? '0 : x[rs1];
    assign Op2 = (rs2 == 5'd0) ? '0 : x[rs2];

    // Write port (negedge, same as your original)
    always_ff @(negedge clk) begin
        if (w_en && rd != 5'd0) begin
            x[rd] <= data_w;
        end
        // keep x0 hard-wired to zero
        x[5'd0] <= '0;
    end

`ifdef SIM
    integer i, fd;
    final begin
        fd = $fopen("regfile.dump", "w");
        $fdisplay(fd, "=== Register File Dump ===");
        for (i = 0; i < 32; i = i + 1) begin
            $fdisplay(fd, "x[%0d] = 0x%0h", i, x[i]);
        end
        $fclose(fd);
    end
`endif

endmodule
