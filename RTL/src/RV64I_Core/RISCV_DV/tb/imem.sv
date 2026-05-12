`timescale 1ns / 1ps

module imem #(
    parameter IMEM_DEPTH = 32*256,
    parameter BASE_ADDR = 32'h80000000,
    parameter string DEFAULT_TEST = "riscv_arithmetic_basic_test",
    parameter int    DEFAULT_IDX  = 0
)(
    input logic clk, 
    input logic [31:0] addr,
    output logic [31:0] inst
);

logic [31:0] address;
assign address = addr - BASE_ADDR;
logic [31:0] imem [0:IMEM_DEPTH-1];

always_comb begin
    inst = imem[address >> 2];
end

// initialize the imem using imem.mem file
initial begin
    `ifdef verilator
        string test_name;
            int    test_idx;
            string fname;
    
            // Get test name from plusargs or use default
            if (!$value$plusargs("TEST=%s", test_name)) begin
                test_name = DEFAULT_TEST;
            end
    
            // Get index from plusargs or use default
            if (!$value$plusargs("IDX=%d", test_idx)) begin
                test_idx = DEFAULT_IDX;
            end
    
            // Build file path dynamically
            fname = $sformatf("/mnt/c/RV64I_Core/RV64_Core/tests/%s/imem_%0d.mem", test_name, test_idx);
    
            $display("IMEM: Loading memory from %s", fname);
            $readmemh(fname, imem);
    `else
        $readmemh("/mnt/c/RV64I_Core/RV64_Core/tests/riscv_mmu_stress_test/imem_0.mem", imem);
    `endif
end



endmodule

