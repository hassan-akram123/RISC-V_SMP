`timescale 1ns / 1ps

module memory #(
    parameter int XLEN = 64
)(
    input  logic                 clk, rst,

    input  logic [XLEN-1:0]      OP2M,
    input  logic [XLEN-1:0]      PCM_4,
    input  logic [XLEN-1:0]      ALU_OpM,

    input  logic                 w_enM, wd_enM, rd_enM,
    input  logic [2:0]           op_selM,
    input  logic [1:0]           WBSelM,
    input  logic [4:0]           RDM,
    input  logic [31:0]          Instruction_Mem,

`ifdef tracer
    input  logic [XLEN-1:0]      Op1M,
    output logic [XLEN-1:0]      Op1W,
    output logic [XLEN-1:0]      Op2W,
    input  logic [31:0]          current_pc_e,
    output logic [31:0]          current_pc_m,
    input  logic                 PC_Muxe,
    output logic                 PC_Muxm,
    output logic [XLEN-1:0]      mem_w_data,
    output logic [XLEN-1:0]      mem_addr,
`endif

    output logic                 w_enW,
    output logic [1:0]           WBSelW,
    output logic [4:0]           RDW,
    output logic [XLEN-1:0]      ALU_OpW,
    output logic [XLEN-1:0]      PCW_4,
    output logic [XLEN-1:0]      memop,
    output logic [31:0]          Instruction_WB,

    output logic [XLEN-1:0]      mem_addr_o,
    output logic [XLEN-1:0]      mem_dat_o,
    input  logic [XLEN-1:0]      mem_dat_i,
    output logic                 mem_write_o,
    output logic [7:0]           mem_wstrb_o,
    output logic                 mem_read_o,
    input  logic                 mem_ack_i
);

    // -----------------------------------------------------------------
    // Hold the active MEM-stage request until cache/memory acknowledges it.
    // This fixes the original architectural bug where mem_ack_i was unused.
    // -----------------------------------------------------------------
    logic                 pending_valid;
    logic                 pending_w_en;
    logic                 pending_wd_en;
    logic                 pending_rd_en;
    logic [2:0]           pending_op_sel;
    logic [1:0]           pending_wbsel;
    logic [4:0]           pending_rd;
    logic [31:0]          pending_insn;
    logic [XLEN-1:0]      pending_op2;
    logic [XLEN-1:0]      pending_pc4;
    logic [XLEN-1:0]      pending_alu;
`ifdef tracer
    logic [XLEN-1:0]      pending_op1;
    logic [31:0]          pending_pc;
    logic                 pending_pc_mux;
`endif

    logic                 req_w_en;
    logic                 req_wd_en;
    logic                 req_rd_en;
    logic [2:0]           req_op_sel;
    logic [1:0]           req_wbsel;
    logic [4:0]           req_rd;
    logic [31:0]          req_insn;
    logic [XLEN-1:0]      req_op2;
    logic [XLEN-1:0]      req_pc4;
    logic [XLEN-1:0]      req_alu;
`ifdef tracer
    logic [XLEN-1:0]      req_op1;
    logic [31:0]          req_pc;
    logic                 req_pc_mux;
`endif

    logic                 req_is_mem;
    logic [2:0]           lane;
    logic [7:0]           wstrb;
    logic [XLEN-1:0]      mem_data_aligned;
    logic [XLEN-1:0]      load_extended;
    logic [XLEN-1:0]      shifted;
    logic [7:0]           b;
    logic [15:0]          h;
    logic [31:0]          w;

    always_comb begin
        if (pending_valid) begin
            req_w_en   = pending_w_en;
            req_wd_en  = pending_wd_en;
            req_rd_en  = pending_rd_en;
            req_op_sel = pending_op_sel;
            req_wbsel  = pending_wbsel;
            req_rd     = pending_rd;
            req_insn   = pending_insn;
            req_op2    = pending_op2;
            req_pc4    = pending_pc4;
            req_alu    = pending_alu;
`ifdef tracer
            req_op1    = pending_op1;
            req_pc     = pending_pc;
            req_pc_mux = pending_pc_mux;
`endif
        end else begin
            req_w_en   = w_enM;
            req_wd_en  = wd_enM;
            req_rd_en  = rd_enM;
            req_op_sel = op_selM;
            req_wbsel  = WBSelM;
            req_rd     = RDM;
            req_insn   = Instruction_Mem;
            req_op2    = OP2M;
            req_pc4    = PCM_4;
            req_alu    = ALU_OpM;
`ifdef tracer
            req_op1    = Op1M;
            req_pc     = current_pc_e;
            req_pc_mux = PC_Muxe;
`endif
        end
    end

    assign req_is_mem  = req_wd_en | req_rd_en;
    assign lane        = req_alu[2:0];
    assign mem_addr_o  = req_alu;
    assign mem_write_o = pending_valid ? pending_wd_en : wd_enM;
    assign mem_read_o  = pending_valid ? pending_rd_en : rd_enM;

    always_comb begin
        wstrb = 8'b0;
        unique case (req_op_sel)
            3'b000: wstrb = (8'b0000_0001 << lane);                 // SB
            3'b001: wstrb = (8'b0000_0011 << {lane[2:1], 1'b0});    // SH
            3'b010: wstrb = (8'b0000_1111 << {lane[2],   2'b00});   // SW
            default: wstrb = 8'b0;
        endcase
    end

    assign mem_wstrb_o = req_wd_en ? wstrb : 8'b0;

    always_comb begin
        mem_data_aligned = '0;
        unique case (req_op_sel)
            3'b000: mem_data_aligned = ({{(XLEN-8 ){1'b0}}, req_op2[7:0]}  << {lane, 3'b000});
            3'b001: mem_data_aligned = ({{(XLEN-16){1'b0}}, req_op2[15:0]} << {{lane[2:1],1'b0}, 3'b000});
            3'b010: mem_data_aligned = ({{(XLEN-32){1'b0}}, req_op2[31:0]} << {{lane[2],2'b00}, 3'b000});
            default: mem_data_aligned = '0;
        endcase
    end

    assign mem_dat_o = req_wd_en ? mem_data_aligned : '0;

    always_comb begin
        load_extended = mem_dat_i;
        shifted       = '0;
        b             = '0;
        h             = '0;
        w             = '0;

        if (req_rd_en) begin
            unique case (req_op_sel)
                3'b000: begin // LB
                    shifted       = (mem_dat_i >> {lane, 3'b000});
                    b             = shifted[7:0];
                    load_extended = {{(XLEN-8){b[7]}}, b};
                end
                3'b001: begin // LH
                    shifted       = (mem_dat_i >> {{lane[2:1],1'b0}, 3'b000});
                    h             = shifted[15:0];
                    load_extended = {{(XLEN-16){h[15]}}, h};
                end
                3'b010: begin // LW
                    shifted       = (mem_dat_i >> {{lane[2],2'b00}, 3'b000});
                    w             = shifted[31:0];
                    load_extended = {{(XLEN-32){w[31]}}, w};
                end
                3'b100: begin // LBU
                    shifted       = (mem_dat_i >> {lane, 3'b000});
                    b             = shifted[7:0];
                    load_extended = {{(XLEN-8){1'b0}}, b};
                end
                3'b101: begin // LHU
                    shifted       = (mem_dat_i >> {{lane[2:1],1'b0}, 3'b000});
                    h             = shifted[15:0];
                    load_extended = {{(XLEN-16){1'b0}}, h};
                end
                default: load_extended = '0;
            endcase
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            pending_valid   <= 1'b0;
            pending_w_en    <= 1'b0;
            pending_wd_en   <= 1'b0;
            pending_rd_en   <= 1'b0;
            pending_op_sel  <= 3'b000;
            pending_wbsel   <= 2'b00;
            pending_rd      <= 5'h00;
            pending_insn    <= 32'h00000000;
            pending_op2     <= '0;
            pending_pc4     <= '0;
            pending_alu     <= '0;
`ifdef tracer
            pending_op1     <= '0;
            pending_pc      <= 32'h80000000;
            pending_pc_mux  <= 1'b0;
`endif

            w_enW           <= 1'b0;
            WBSelW          <= 2'b11;
            RDW             <= 5'h00;
            PCW_4           <= '0;
            ALU_OpW         <= '0;
            memop           <= '0;
            Instruction_WB  <= 32'h00000000;
`ifdef tracer
            Op1W            <= '0;
            Op2W            <= '0;
            current_pc_m    <= 32'h80000000;
            mem_w_data      <= '0;
            mem_addr        <= '0;
            PC_Muxm         <= 1'b0;
`endif
        end else begin
            // Default: no new WB commit this cycle unless we explicitly commit below.
            w_enW <= 1'b0;

            if (pending_valid) begin
                if (mem_ack_i) begin
                    // Outstanding memory transaction completes now.
                    pending_valid  <= 1'b0;
                    w_enW          <= pending_w_en;
                    WBSelW         <= pending_wbsel;
                    RDW            <= pending_rd;
                    PCW_4          <= pending_pc4;
                    ALU_OpW        <= pending_alu;
                    memop          <= load_extended;
                    Instruction_WB <= pending_insn;
`ifdef tracer
                    Op1W         <= pending_op1;
                    Op2W         <= pending_op2;
                    current_pc_m <= pending_pc;
                    mem_w_data   <= mem_dat_o;
                    mem_addr     <= pending_alu;
                    PC_Muxm      <= pending_pc_mux;
`endif
                end
            end else if (rd_enM || wd_enM) begin
                if (mem_ack_i) begin
                    // Zero-wait memory response.
                    w_enW          <= w_enM;
                    WBSelW         <= WBSelM;
                    RDW            <= RDM;
                    PCW_4          <= PCM_4;
                    ALU_OpW        <= ALU_OpM;
                    memop          <= load_extended;
                    Instruction_WB <= Instruction_Mem;
`ifdef tracer
                    Op1W         <= Op1M;
                    Op2W         <= OP2M;
                    current_pc_m <= current_pc_e;
                    mem_w_data   <= mem_dat_o;
                    mem_addr     <= ALU_OpM;
                    PC_Muxm      <= PC_Muxe;
`endif
                end else begin
                    // Start waiting for cache/memory response. Hold full MEM-stage request.
                    pending_valid   <= 1'b1;
                    pending_w_en    <= w_enM;
                    pending_wd_en   <= wd_enM;
                    pending_rd_en   <= rd_enM;
                    pending_op_sel  <= op_selM;
                    pending_wbsel   <= WBSelM;
                    pending_rd      <= RDM;
                    pending_insn    <= Instruction_Mem;
                    pending_op2     <= OP2M;
                    pending_pc4     <= PCM_4;
                    pending_alu     <= ALU_OpM;
`ifdef tracer
                    pending_op1     <= Op1M;
                    pending_pc      <= current_pc_e;
                    pending_pc_mux  <= PC_Muxe;
`endif
                end
            end else begin
                // Regular non-memory instruction: pass straight through.
                w_enW          <= w_enM;
                WBSelW         <= WBSelM;
                RDW            <= RDM;
                PCW_4          <= PCM_4;
                ALU_OpW        <= ALU_OpM;
                memop          <= '0;
                Instruction_WB <= Instruction_Mem;
`ifdef tracer
                Op1W         <= Op1M;
                Op2W         <= OP2M;
                current_pc_m <= current_pc_e;
                mem_w_data   <= '0;
                mem_addr     <= ALU_OpM;
                PC_Muxm      <= PC_Muxe;
`endif
            end
        end
    end

endmodule
