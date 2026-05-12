// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_top.h for the primary calling header

#ifndef VERILATED_VTB_TOP___024ROOT_H_
#define VERILATED_VTB_TOP___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_top__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_top___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ tb_top__DOT__clk;
        CData/*0:0*/ tb_top__DOT__reset_n;
        CData/*0:0*/ tb_top__DOT__illegal_inst;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__PC_Mux;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__BSelE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__func7E;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__w_enE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__wd_enE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__rd_enE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__AselE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__BrUnE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__BranchE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__JumpE;
        CData/*2:0*/ tb_top__DOT__DUT__DOT__ALUSelE;
        CData/*2:0*/ tb_top__DOT__DUT__DOT__op_selE;
        CData/*1:0*/ tb_top__DOT__DUT__DOT__WBSelE;
        CData/*4:0*/ tb_top__DOT__DUT__DOT__RDE;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__w_enM;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__wd_enM;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__rd_enM;
        CData/*2:0*/ tb_top__DOT__DUT__DOT__op_selM;
        CData/*1:0*/ tb_top__DOT__DUT__DOT__WBSelM;
        CData/*4:0*/ tb_top__DOT__DUT__DOT__RDM;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__w_enW;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Stall;
        CData/*1:0*/ tb_top__DOT__DUT__DOT__WBSelW;
        CData/*4:0*/ tb_top__DOT__DUT__DOT__RDW;
        CData/*1:0*/ tb_top__DOT__DUT__DOT__Forward_A;
        CData/*1:0*/ tb_top__DOT__DUT__DOT__Forward_B;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__pc_sel;
        CData/*2:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__ALUSel;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__BSel;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__w_en;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__func7;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__BrUn;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__Lt;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__Eq;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__wd_en;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__rd_en;
        CData/*2:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__op_sel;
        CData/*1:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__WBSel;
        CData/*2:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__ASel;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__PC_Mux;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__Branch;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__Jump;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__Lt;
        CData/*0:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__Eq;
        CData/*3:0*/ tb_top__DOT__DUT__DOT__Memory__DOT__wstrb;
        CData/*4:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs3_addr_t;
        CData/*3:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_mem_rmask;
        CData/*3:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_mem_wmask;
        CData/*4:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs1_addr;
        CData/*4:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs2_addr;
        CData/*4:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs3_addr;
        CData/*4:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rd_addr;
        CData/*0:0*/ tb_top__DOT__tracer_inst__DOT__insn_is_compressed;
        CData/*4:0*/ tb_top__DOT__tracer_inst__DOT__data_accessed;
        CData/*0:0*/ tb_top__DOT__tracer_inst__DOT__rs1_float;
        CData/*0:0*/ tb_top__DOT__tracer_inst__DOT__rs2_float;
        CData/*0:0*/ tb_top__DOT__tracer_inst__DOT__rs3_float;
        CData/*0:0*/ tb_top__DOT__tracer_inst__DOT__rd_float;
        CData/*0:0*/ __Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v0;
        CData/*0:0*/ __Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v1;
    };
    struct {
        CData/*0:0*/ __Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v2;
        CData/*0:0*/ __Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v3;
        CData/*0:0*/ __VstlFirstIteration;
        CData/*0:0*/ __Vtrigprevexpr___TOP__tb_top__DOT__clk__0;
        CData/*0:0*/ __Vtrigprevexpr___TOP__tb_top__DOT__reset_n__0;
        CData/*0:0*/ __Vtrigprevexpr___TOP__tb_top__DOT__illegal_inst__0;
        CData/*0:0*/ __VactDidInit;
        CData/*0:0*/ __VactContinue;
        IData/*31:0*/ tb_top__DOT__imem_addr;
        IData/*31:0*/ tb_top__DOT__i;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Instruction_Fetch;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__PCD;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__PC4;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Instruction_Decode;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Op1E;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Op2E;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Immediate_E;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__PCE;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__PCE_4;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__OP2M;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__PCM_4;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__ALU_OpM;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Instruction_Mem;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__ALU_OpW;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__PCW_4;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__memop;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Instruction_WB;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__result;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Op1M;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Op1W;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Op2W;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__current_pc_d;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__current_pc_e;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__current_pc_m;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__mem_addr;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__mem_w_data;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Fetch__DOT__PC_next;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Decode__DOT__Immediate;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__result_data;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__Op1;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__Op2;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__In1;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Execute__DOT__In2;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Memory__DOT__load_extended;
        IData/*31:0*/ tb_top__DOT__DUT__DOT__Memory__DOT__word_in;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs3_rdata_t;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_insn;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs1_rdata;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs2_rdata;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rs3_rdata;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_rd_wdata;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_pc_rdata;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__rvfi_pc_wdata;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__file_handle;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__cycle;
        IData/*31:0*/ tb_top__DOT__tracer_inst__DOT__i;
        IData/*31:0*/ tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_idx;
        IData/*31:0*/ tb_top__DOT__dmem_inst__DOT__local_addr;
        IData/*31:0*/ tb_top__DOT__dmem_inst__DOT__word_index;
        IData/*31:0*/ tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_idx;
        IData/*31:0*/ __Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch;
        IData/*31:0*/ __Vdly__tb_top__DOT__DUT__DOT__PC4;
        IData/*31:0*/ __Vdly__tb_top__DOT__imem_addr;
        IData/*31:0*/ __Vdly__tb_top__DOT__tracer_inst__DOT__cycle;
    };
    struct {
        IData/*31:0*/ __VactIterCount;
        VlUnpacked<IData/*31:0*/, 32> tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x;
        VlUnpacked<IData/*31:0*/, 8192> tb_top__DOT__imem_instance__DOT__imem;
        VlUnpacked<IData/*31:0*/, 32768> tb_top__DOT__dmem_inst__DOT__dmem;
        VlUnpacked<CData/*0:0*/, 5> __Vm_traceActivity;
    };
    std::string tb_top__DOT__tracer_inst__DOT__file_name;
    std::string tb_top__DOT__tracer_inst__DOT__decoded_str;
    std::string tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_name;
    std::string tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_name;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_he3ce33ca__0;
    VlTriggerScheduler __VtrigSched_haa702e20__0;
    VlTriggerScheduler __VtrigSched_he3ce3317__0;
    VlForkSync __Vfork_1__sync;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<6> __VactTriggered;
    VlTriggerVec<6> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtb_top__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_top___024root(Vtb_top__Syms* symsp, const char* v__name);
    ~Vtb_top___024root();
    VL_UNCOPYABLE(Vtb_top___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
