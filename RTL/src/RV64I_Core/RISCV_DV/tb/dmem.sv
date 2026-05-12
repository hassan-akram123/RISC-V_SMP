module dmem #(
    parameter DMEM_DEPTH = 32*1024,
    parameter BASE_ADDR  = 32'h8000_8000,   // SRAM base address
    parameter string DEFAULT_TEST = "riscv_arithmetic_basic_test",
    parameter int    DEFAULT_IDX  = 0
)(
    input logic clk,
    input logic reset_n,
    input logic [31:0] addr,    // external address
    input logic [31:0] wdata,
    input logic [3:0] wstrb,
    input logic write_en,
    input logic read_en,
    output logic [31:0] rdata,
    output logic ack
);

logic [31:0] dmem [0:DMEM_DEPTH-1];
logic [31:0] local_addr;  // address mapped to memory array
logic [31:0] word_index;

// compute the local index in memory
always_comb begin
    if (addr >= BASE_ADDR)
        local_addr = addr - BASE_ADDR;
    else
        local_addr = 32'd0; // optional: default/fault for out-of-range access
    word_index = local_addr[31:2];  // divide by 4 for word indexing
end

// write operation
always_ff @(posedge clk) begin
    if (write_en) begin
        if (wstrb[0]) dmem[word_index][7:0]   <= wdata[7:0];
        if (wstrb[1]) dmem[word_index][15:8]  <= wdata[15:8];
        if (wstrb[2]) dmem[word_index][23:16] <= wdata[23:16];
        if (wstrb[3]) dmem[word_index][31:24] <= wdata[31:24];
    end
end

// read operation
always_comb begin
    if (read_en)
        rdata = dmem[word_index];
    else
        rdata = 32'b0;
end


// acknowledge the transaction
always_comb begin
    ack = write_en | read_en;
end

// initialize the memory using dmem.mem
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
        fname = $sformatf("/mnt/c/RV64I_Core/RV64_Core/tests/%s/dmem_%0d.mem", test_name, test_idx);

        $display("IMEM: Loading memory from %s", fname);
        $readmemh(fname, dmem);

    `else
        $readmemh("/mnt/c/RV64I_Core/RV64_Core/tests/riscv_mmu_stress_test/dmem_0.mem", dmem);
    `endif
end

endmodule

