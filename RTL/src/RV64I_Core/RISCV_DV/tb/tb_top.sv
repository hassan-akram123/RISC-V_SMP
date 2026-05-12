module tb_top;


logic        clk = 0; 

always #5 clk = ~clk;

logic        reset_n; 
logic [31:0] imem_addr;
logic [31:0] imem_inst;
logic [31:0] mem_addr;
logic [31:0] mem_wdata;
logic [31:0] mem_rdata;
logic        mem_write;
logic [3:0]  mem_wstrb;
logic        mem_read;
logic        mem_ack;

logic        illegal_inst;

`ifdef tracer
         logic [31:0] rvfi_insn;
         logic [4:0]  rvfi_rs1_addr;
         logic [4:0]  rvfi_rs2_addr;
         logic [31:0] rvfi_rs1_rdata;
         logic [31:0] rvfi_rs2_rdata;
         logic [4:0]  rvfi_rd_addr;
         logic [31:0] rvfi_rd_wdata;
         logic [31:0] rvfi_pc_rdata;
         logic [31:0] rvfi_pc_wdata;
         logic [31:0] rvfi_mem_addr;
         logic [31:0] rvfi_mem_wdata;
         logic [31:0] rvfi_mem_rdata;
         logic rvfi_valid;
 `endif

rv32i_top DUT (
  .clk_i(clk),
  .resetn_i(reset_n),
  .illegal_inst_o(illegal_inst),
  .imem_addr_o(imem_addr),
  .imem_inst_i(imem_inst),
  .mem_addr_o(mem_addr),
  .mem_dat_o(mem_wdata),
  .mem_dat_i(mem_rdata),
  .mem_write_o(mem_write),
  .mem_wstrb_o(mem_wstrb),
  .mem_read_o(mem_read),
  .mem_ack_i(mem_ack)
  `ifdef tracer
          ,.rvfi_insn(rvfi_insn),
          .rvfi_rs1_addr(rvfi_rs1_addr),
          .rvfi_rs2_addr(rvfi_rs2_addr),
          .rvfi_rs1_rdata(rvfi_rs1_rdata),
          .rvfi_rs2_rdata(rvfi_rs2_rdata),
          .rvfi_rd_addr(rvfi_rd_addr),
          .rvfi_rd_wdata(rvfi_rd_wdata),
          .rvfi_pc_rdata(rvfi_pc_rdata),
          .rvfi_pc_wdata(rvfi_pc_wdata),
          .rvfi_mem_addr(rvfi_mem_addr),
          .rvfi_mem_wdata(rvfi_mem_wdata),
          .rvfi_mem_rdata(rvfi_mem_rdata),
          .rvfi_valid(rvfi_valid)
      `endif
);

`ifdef tracer 
    tracer tracer_inst (
        .clk_i           (clk),
        .rst_ni          (reset_n),
        .hart_id_i       (1),
        .rvfi_insn_t     (rvfi_insn),
        .rvfi_rs1_addr_t (rvfi_rs1_addr),
        .rvfi_rs2_addr_t (rvfi_rs2_addr),
        .rvfi_rs3_addr_t (),
        .rvfi_rs3_rdata_t(),
        .rvfi_mem_rmask  (),
        .rvfi_mem_wmask  (),
        .rvfi_rs1_rdata_t(rvfi_rs1_rdata),
        .rvfi_rs2_rdata_t(rvfi_rs2_rdata),
        .rvfi_rd_addr_t  (rvfi_rd_addr),
        .rvfi_rd_wdata_t (rvfi_rd_wdata),
        .rvfi_pc_rdata_t (rvfi_pc_rdata),
        .rvfi_pc_wdata_t (rvfi_pc_wdata),
        .rvfi_mem_addr   (rvfi_mem_addr),
        .rvfi_mem_wdata  (rvfi_mem_wdata),
        .rvfi_mem_rdata  (rvfi_mem_rdata),
        .rvfi_valid      (rvfi_valid)
    );
`endif


imem imem_instance (
    .clk(clk),
    .addr(imem_addr),
    .inst(imem_inst)
);

dmem dmem_inst (
    .clk(clk),
    .reset_n(reset_n),
    .addr(mem_addr),
    .wstrb(mem_wstrb),
    .write_en(mem_write),
    .read_en(mem_read),
    .rdata(mem_rdata),
    .wdata(mem_wdata),
    .ack(mem_ack)
);


initial begin
    reset_n = 0;
    repeat(2) @(negedge clk);
    reset_n = 1;
end


// Dump file and ending the simulation conditionally 

initial begin
    $dumpfile("tb_top.vcd");
    $dumpvars(0, tb_top);
end


integer i;
initial begin
    fork
    begin
        wait(illegal_inst); // wait for any unknown inst
    end
    begin
        for (i = 0; i < 55000; i = i + 1) begin
            @(posedge clk);
        end
    end
    join_any

    for (i = 0; i < 5; i = i + 1) begin
        @(posedge clk);
    end
    
    $finish;
end

endmodule

/*
module rv32i_top(
  input         clk_i,
  input         resetn_i,
  output        illegal_inst_o,
  output [31:0] imem_addr_o,
  input  [31:0] imem_inst_i,
  output [31:0] mem_addr_o,
  output [31:0] mem_dat_o,
  input  [31:0] mem_dat_i,
  output        mem_write_o,
  output [3:0]  mem_wstrb_o,
  output        mem_read_o,
  input         mem_ack_i
);

*/

