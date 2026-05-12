`timescale 1ns / 1ps

module rv64i_top #(
    parameter int XLEN = 64
)(
    input  logic clk_i,
    input  logic resetn_i,

    // Illegal Instruction Out
    output logic illegal_inst_o,

    // IMEM Signals (instruction stays 32-bit)
    output logic [31:0] imem_addr_o,
    input  logic [31:0] imem_inst_i,
    input  logic        imem_valid_i,

    // DMEM Signals (64-bit bus)
    output logic [XLEN-1:0] mem_addr_o,
    output logic [XLEN-1:0] mem_dat_o,
    input  logic [XLEN-1:0] mem_dat_i,
    output logic            mem_write_o,
    output logic [7:0]      mem_wstrb_o,
    output logic            mem_read_o,
    input  logic            mem_ack_i
`ifdef tracer
    ,output logic [31:0] rvfi_insn,
    output logic [4:0]  rvfi_rs1_addr,
    output logic [4:0]  rvfi_rs2_addr,
    output logic [31:0] rvfi_rs1_rdata,
    output logic [31:0] rvfi_rs2_rdata,
    output logic [4:0]  rvfi_rd_addr,
    output logic [31:0] rvfi_rd_wdata,
    output logic [31:0] rvfi_pc_rdata,
    output logic [31:0] rvfi_pc_wdata,
    output logic [31:0] rvfi_mem_addr,
    output logic [31:0] rvfi_mem_wdata,
    output logic [31:0] rvfi_mem_rdata,
    output logic        rvfi_valid
`endif
);

    // -----------------------
    // Internal signals
    // -----------------------
    logic [31:0]             Instruction_Fetch;
    logic [31:0]             Instruction_Decode;
    logic [31:0]             Instruction_Mem;
    logic [31:0]             Instruction_WB;
    logic [31:0]             Instruction_W;

    logic [XLEN-1:0]         imem_addr_xlen;
    logic [XLEN-1:0]         PCD;
    logic [XLEN-1:0]         PC4;
    logic [XLEN-1:0]         PCE;
    logic [XLEN-1:0]         PCE_4;
    logic [XLEN-1:0]         PCM_4;
    logic [XLEN-1:0]         PCW_4;
    logic [XLEN-1:0]         PC_Target;

    logic signed [XLEN-1:0]  Op1E;
    logic signed [XLEN-1:0]  Op2E;
    logic signed [XLEN-1:0]  Immediate_E;
    logic [XLEN-1:0]         OP2M;
    logic signed [XLEN-1:0]  ALU_OpM;
    logic [XLEN-1:0]         ALU_OpW;
    logic [XLEN-1:0]         memop;
    logic signed [XLEN-1:0]  result;

    logic                    PC_Mux;
    logic                    BSelE, func7E, w_enE, wd_enE, rd_enE, AselE, BrUnE, BranchE, JumpE;
    logic [2:0]              ALUSelE;
    logic [2:0]              op_selE;
    logic [1:0]              WBSelE;
    logic [4:0]              RDE;

    logic                    w_enM, wd_enM, rd_enM;
    logic [2:0]              op_selM;
    logic [1:0]              WBSelM;
    logic [4:0]              RDM;

    logic                    w_enW;
    logic [1:0]              WBSelW;
    logic [4:0]              RDW;

    logic                    w_en;
    logic [4:0]              RD;
    logic [1:0]              Forward_A;
    logic [1:0]              Forward_B;

    logic                    StallHazard;
    logic                    StallI;
    logic                    StallM;
    logic                    StallPipe;
    logic                    Flush;

    logic                    rst, clk;
    logic                    illegal_inst_d;
    logic                    illegal_inst_q;

`ifdef tracer
    logic [XLEN-1:0] Op1M;
    logic [XLEN-1:0] Op1W;
    logic [XLEN-1:0] Op2W;
    logic [31:0]     current_pc;
    logic [31:0]     current_pc_d;
    logic [31:0]     current_pc_e;
    logic [31:0]     current_pc_m;
    logic [XLEN-1:0] mem_addr;
    logic [XLEN-1:0] mem_w_data;
    logic            pc_sel;
`endif

    always_comb begin
        clk = clk_i;
        rst = resetn_i;
    end

    // -----------------------------------------------------------------
    // Core-wide instruction/data wait handling
    // -----------------------------------------------------------------
    // Hold fetch/decode when the instruction side has not returned a valid word.
    // Hold the whole pipe when a load/store in MEM is waiting for cache/memory ack.
    assign StallI    = ~imem_valid_i;
    assign StallM    = (rd_enM | wd_enM) & ~mem_ack_i;
    assign StallPipe = StallHazard | StallI | StallM;

    // -----------------------
    // FETCH STAGE
    // -----------------------
    fetch #(.XLEN(XLEN)) Fetch (
        .clk              (clk),
        .rst              (rst),
        .Stall            (StallPipe),
        .Flush            (Flush),
        .PC_Mux           (PC_Mux),
        .PC_Target        (PC_Target),
        .Instruction      (imem_inst_i),
        .Instruction_Fetch(Instruction_Fetch),
        .PCD              (PCD),
        .PC_4             (PC4),
        .PC_Value         (imem_addr_xlen)
`ifdef tracer
        ,.current_pc      (current_pc)
`endif
    );

    assign imem_addr_o = imem_addr_xlen[31:0];

    // -----------------------
    // DECODE STAGE
    // -----------------------
    decode #(.XLEN(XLEN)) Decode (
        .clk                (clk),
        .rst                (rst),
        .Stall              (StallPipe),
        .Flush              (Flush),
        .illegal_inst_o     (illegal_inst_d),
        .Instruction_Decode (Instruction_Fetch),
        .PCD                (PCD),
        .PC_4               (PC4),
        .w_enW              (w_en),
        .RDW                (RD),
        .result             (result),
        .Instruction_Execute(Instruction_Decode),
        .Op1E               (Op1E),
        .Op2E               (Op2E),
        .Immediate_E        (Immediate_E),
        .PCE                (PCE),
        .PCE_4              (PCE_4),
        .BSelE              (BSelE),
        .func7E             (func7E),
        .w_enE              (w_enE),
        .wd_enE             (wd_enE),
        .rd_enE             (rd_enE),
        .AselE              (AselE),
        .BrUnE              (BrUnE),
        .BranchE            (BranchE),
        .JumpE              (JumpE),
        .ALUSelE            (ALUSelE),
        .op_selE            (op_selE),
        .WBSelE             (WBSelE),
        .RDE                (RDE)
`ifdef tracer
        ,.current_pc        (current_pc)
        ,.current_pc_d      (current_pc_d)
`endif
    );

    // Register illegal-instruction status in the decode stage so it is not\n    // exported as a raw combinational signal while the front end is still\n    // settling around fetch/flush/stall events.\n    always_ff @(posedge clk or negedge resetn_i) begin\n        if (!resetn_i)\n            illegal_inst_q <= 1'b0;\n        else if (Flush)\n            illegal_inst_q <= 1'b0;\n        else if (!StallPipe)\n            illegal_inst_q <= illegal_inst_d;\n    end\n\n    assign illegal_inst_o = illegal_inst_q;\n\n    // -----------------------
    // EXECUTE STAGE
    // -----------------------
    execute #(.XLEN(XLEN)) Execute (
        .clk              (clk),
        .rst              (rst),
        .StallM           (StallM),
        .Instruction_Execute(Instruction_Decode),
        .Op1E             (Op1E),
        .Op2E             (Op2E),
        .OpM              (ALU_OpM),
        .OpW              (result),
        .Immediate_E      (Immediate_E),
        .PCE              (PCE),
        .PCE_4            (PCE_4),
        .BSelE            (BSelE),
        .func7E           (func7E),
        .w_enE            (w_enE),
        .wd_enE           (wd_enE),
        .rd_enE           (rd_enE),
        .AselE            (AselE),
        .BrUnE            (BrUnE),
        .BranchE          (BranchE),
        .JumpE            (JumpE),
        .ALUSelE          (ALUSelE),
        .op_selE          (op_selE),
        .WBSelE           (WBSelE),
        .RDE              (RDE),
        .Forward_A        (Forward_A),
        .Forward_B        (Forward_B),
        .OP2M             (OP2M),
        .PCM_4            (PCM_4),
        .ALU_OpM          (ALU_OpM),
        .PC_Target        (PC_Target),
        .w_enM            (w_enM),
        .wd_enM           (wd_enM),
        .rd_enM           (rd_enM),
        .PC_Mux           (PC_Mux),
        .op_selM          (op_selM),
        .WBSelM           (WBSelM),
        .RDM              (RDM),
        .Instruction_Mem  (Instruction_Mem)
`ifdef tracer
        ,.OP1M            (Op1M)
        ,.current_pc_d    (current_pc_d)
        ,.current_pc_e    (current_pc_e)
`endif
    );

    // -----------------------
    // MEMORY STAGE
    // -----------------------
    memory #(.XLEN(XLEN)) Memory (
        .clk              (clk),
        .rst              (rst),
        .OP2M             (OP2M),
        .PCM_4            (PCM_4),
        .ALU_OpM          (ALU_OpM),
        .w_enM            (w_enM),
        .wd_enM           (wd_enM),
        .rd_enM           (rd_enM),
        .op_selM          (op_selM),
        .WBSelM           (WBSelM),
        .RDM              (RDM),
        .Instruction_Mem  (Instruction_Mem),
        .w_enW            (w_enW),
        .WBSelW           (WBSelW),
        .RDW              (RDW),
        .ALU_OpW          (ALU_OpW),
        .PCW_4            (PCW_4),
        .memop            (memop),
        .Instruction_WB   (Instruction_WB),
        .mem_addr_o       (mem_addr_o),
        .mem_dat_o        (mem_dat_o),
        .mem_dat_i        (mem_dat_i),
        .mem_write_o      (mem_write_o),
        .mem_wstrb_o      (mem_wstrb_o),
        .mem_read_o       (mem_read_o),
        .mem_ack_i        (mem_ack_i)
`ifdef tracer
        ,.Op1M            (Op1M)
        ,.Op1W            (Op1W)
        ,.Op2W            (Op2W)
        ,.current_pc_e    (current_pc_e)
        ,.current_pc_m    (current_pc_m)
        ,.PC_Muxe         (PC_Mux)
        ,.PC_Muxm         (pc_sel)
        ,.mem_w_data      (mem_w_data)
        ,.mem_addr        (mem_addr)
`endif
    );

    // -----------------------
    // WRITEBACK STAGE
    // -----------------------
    writeback #(.XLEN(XLEN)) WriteBack (
        .clk            (clk),
        .rst            (rst),
        .w_enW          (w_enW),
        .WBSelW         (WBSelW),
        .RDW            (RDW),
        .ALU_OpW        (ALU_OpW),
        .PCW_4          (PCW_4),
        .memop          (memop),
        .Instruction_WB (Instruction_WB),
        .result         (result),
        .RD             (RD),
        .Instruction_W  (Instruction_W),
        .w_en           (w_en)
    );

    // -----------------------
    // HAZARD UNIT
    // -----------------------
    data_hazard_unit hazard_unit(
        .RS1E      (Instruction_Decode[19:15]),
        .RS2E      (Instruction_Decode[24:20]),
        .PC_Mux    (PC_Mux),
        .RDM       (RDM),
        .RDW       (RDW),
        .RDE       (RDE),
        .RS1D      (Instruction_Fetch[19:15]),
        .RS2D      (Instruction_Fetch[24:20]),
        .w_enW     (w_enW),
        .w_enM     (w_enM),
        .rd_en     (rd_enE),
        .Forward_A (Forward_A),
        .Forward_B (Forward_B),
        .Stall     (StallHazard),
        .Flush     (Flush)
    );

`ifdef tracer
    assign rvfi_insn      = Instruction_W;
    assign rvfi_rs1_addr  = Instruction_W[19:15];
    assign rvfi_rs2_addr  = Instruction_W[24:20];
    assign rvfi_rd_addr   = w_en ? RDW : 5'b00000;

    assign rvfi_rs1_rdata = Op1W[31:0];
    assign rvfi_rs2_rdata = Op2W[31:0];

    assign rvfi_rd_wdata  = (RDW == 5'b00000) ? 32'h00000000 : result[31:0];

    assign rvfi_pc_rdata  = current_pc_m;
    assign rvfi_pc_wdata  = pc_sel ? current_pc_d : PCW_4[31:0];

    assign rvfi_mem_addr  = mem_addr[31:0];
    assign rvfi_mem_rdata = memop[31:0];
    assign rvfi_mem_wdata = mem_w_data[31:0];

    assign rvfi_valid = (Instruction_W != 32'h00000000);
`endif

endmodule
