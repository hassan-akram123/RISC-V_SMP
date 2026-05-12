// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_top.h for the primary calling header

#include "Vtb_top__pch.h"
#include "Vtb_top___024root.h"

VL_ATTR_COLD void Vtb_top___024root___eval_initial__TOP(Vtb_top___024root* vlSelf);
VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__0(Vtb_top___024root* vlSelf);
VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__1(Vtb_top___024root* vlSelf);
VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__2(Vtb_top___024root* vlSelf);

void Vtb_top___024root___eval_initial(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial\n"); );
    // Body
    Vtb_top___024root___eval_initial__TOP(vlSelf);
    Vtb_top___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vtb_top___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vtb_top___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__tb_top__DOT__clk__0 
        = vlSelf->tb_top__DOT__clk;
    vlSelf->__Vtrigprevexpr___TOP__tb_top__DOT__reset_n__0 
        = vlSelf->tb_top__DOT__reset_n;
    vlSelf->__Vtrigprevexpr___TOP__tb_top__DOT__illegal_inst__0 
        = vlSelf->tb_top__DOT__illegal_inst;
}

VL_INLINE_OPT VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__0(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    vlSelf->tb_top__DOT__reset_n = 0U;
    co_await vlSelf->__VtrigSched_he3ce33ca__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       114);
    co_await vlSelf->__VtrigSched_he3ce33ca__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       114);
    vlSelf->tb_top__DOT__reset_n = 1U;
}

VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__0(Vtb_top___024root* vlSelf);
VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__1(Vtb_top___024root* vlSelf);

VL_INLINE_OPT VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__1(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Body
    vlSelf->__Vfork_1__sync.init(1U, nullptr);
    Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__0(vlSelf);
    Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__1(vlSelf);
    co_await vlSelf->__Vfork_1__sync.join(nullptr, 
                                          "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                          129);
    co_await vlSelf->__VtrigSched_he3ce3317__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       141);
    vlSelf->tb_top__DOT__i = 1U;
    co_await vlSelf->__VtrigSched_he3ce3317__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       141);
    vlSelf->tb_top__DOT__i = 2U;
    co_await vlSelf->__VtrigSched_he3ce3317__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       141);
    vlSelf->tb_top__DOT__i = 3U;
    co_await vlSelf->__VtrigSched_he3ce3317__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       141);
    vlSelf->tb_top__DOT__i = 4U;
    co_await vlSelf->__VtrigSched_he3ce3317__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge tb_top.clk)", 
                                                       "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                       141);
    vlSelf->tb_top__DOT__i = 5U;
    VL_FINISH_MT("/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 144, "");
}

VL_INLINE_OPT VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__1(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__1\n"); );
    // Body
    vlSelf->tb_top__DOT__i = 0U;
    while (VL_GTS_III(32, 0xd6d8U, vlSelf->tb_top__DOT__i)) {
        co_await vlSelf->__VtrigSched_he3ce3317__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(posedge tb_top.clk)", 
                                                           "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                           135);
        vlSelf->tb_top__DOT__i = ((IData)(1U) + vlSelf->tb_top__DOT__i);
    }
    vlSelf->__Vfork_1__sync.done("/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                 133);
}

VL_INLINE_OPT VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__0(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial__TOP__Vtiming__1____Vfork_1__0\n"); );
    // Body
    while ((1U & (~ (IData)(vlSelf->tb_top__DOT__illegal_inst)))) {
        co_await vlSelf->__VtrigSched_haa702e20__0.trigger(1U, 
                                                           nullptr, 
                                                           "@([changed] tb_top.illegal_inst)", 
                                                           "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                                           131);
    }
    vlSelf->__Vfork_1__sync.done("/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                 130);
}

VL_INLINE_OPT VlCoroutine Vtb_top___024root___eval_initial__TOP__Vtiming__2(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial__TOP__Vtiming__2\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0x1388ULL, 
                                           nullptr, 
                                           "/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 
                                           6);
        vlSelf->tb_top__DOT__clk = (1U & (~ (IData)(vlSelf->tb_top__DOT__clk)));
    }
}

void Vtb_top___024root___eval_act(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vtb_top___024root___nba_sequent__TOP__0(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->__Vdly__tb_top__DOT__tracer_inst__DOT__cycle 
        = vlSelf->tb_top__DOT__tracer_inst__DOT__cycle;
    vlSelf->__Vdly__tb_top__DOT__tracer_inst__DOT__cycle 
        = ((IData)(vlSelf->tb_top__DOT__reset_n) ? 
           ((IData)(1U) + vlSelf->tb_top__DOT__tracer_inst__DOT__cycle)
            : 0U);
}

VL_INLINE_OPT void Vtb_top___024root___nba_sequent__TOP__1(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_sequent__TOP__1\n"); );
    // Init
    IData/*31:0*/ __Vdly__tb_top__DOT__DUT__DOT__PCD;
    __Vdly__tb_top__DOT__DUT__DOT__PCD = 0;
    // Body
    vlSelf->__Vdly__tb_top__DOT__imem_addr = vlSelf->tb_top__DOT__imem_addr;
    vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4 = vlSelf->tb_top__DOT__DUT__DOT__PC4;
    __Vdly__tb_top__DOT__DUT__DOT__PCD = vlSelf->tb_top__DOT__DUT__DOT__PCD;
    vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch 
        = vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch;
    if (vlSelf->tb_top__DOT__reset_n) {
        if ((1U & (~ (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) {
            vlSelf->__Vdly__tb_top__DOT__imem_addr 
                = ((0xffffffffU > vlSelf->tb_top__DOT__imem_addr)
                    ? vlSelf->tb_top__DOT__DUT__DOT__Fetch__DOT__PC_next
                    : 0xffffffffU);
        }
        if (vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) {
            vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4 = 0U;
            __Vdly__tb_top__DOT__DUT__DOT__PCD = 0U;
            vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch = 0x13U;
        } else if (vlSelf->tb_top__DOT__DUT__DOT__Stall) {
            vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4 
                = vlSelf->tb_top__DOT__DUT__DOT__PC4;
            __Vdly__tb_top__DOT__DUT__DOT__PCD = vlSelf->tb_top__DOT__DUT__DOT__PCD;
            vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch 
                = vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch;
        } else {
            vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4 
                = ((IData)(4U) + vlSelf->tb_top__DOT__imem_addr);
            __Vdly__tb_top__DOT__DUT__DOT__PCD = vlSelf->tb_top__DOT__imem_addr;
            vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch 
                = vlSelf->tb_top__DOT__imem_instance__DOT__imem
                [(0x1fffU & ((vlSelf->tb_top__DOT__imem_addr 
                              - (IData)(0x80000000U)) 
                             >> 2U))];
        }
        vlSelf->tb_top__DOT__DUT__DOT__WBSelW = vlSelf->tb_top__DOT__DUT__DOT__WBSelM;
        vlSelf->tb_top__DOT__DUT__DOT__ALU_OpW = vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM;
        vlSelf->tb_top__DOT__DUT__DOT__WBSelM = vlSelf->tb_top__DOT__DUT__DOT__WBSelE;
        if (((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
             | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall))) {
            vlSelf->tb_top__DOT__DUT__DOT__Immediate_E = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__PCE = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__ALUSelE = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__Op1E = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__Op2E = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__WBSelE = 0U;
        } else {
            vlSelf->tb_top__DOT__DUT__DOT__Immediate_E 
                = vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Immediate;
            vlSelf->tb_top__DOT__DUT__DOT__PCE = vlSelf->tb_top__DOT__DUT__DOT__PCD;
            vlSelf->tb_top__DOT__DUT__DOT__ALUSelE 
                = vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ALUSel;
            vlSelf->tb_top__DOT__DUT__DOT__Op1E = (
                                                   (0U 
                                                    == 
                                                    (0x1fU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                        >> 0xfU)))
                                                    ? 0U
                                                    : 
                                                   vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x
                                                   [
                                                   (0x1fU 
                                                    & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                       >> 0xfU))]);
            vlSelf->tb_top__DOT__DUT__DOT__Op2E = (
                                                   (0U 
                                                    == 
                                                    (0x1fU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                        >> 0x14U)))
                                                    ? 0U
                                                    : 
                                                   vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x
                                                   [
                                                   (0x1fU 
                                                    & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                       >> 0x14U))]);
            vlSelf->tb_top__DOT__DUT__DOT__WBSelE = vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__WBSel;
        }
    } else {
        vlSelf->__Vdly__tb_top__DOT__imem_addr = 0x80000000U;
        vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4 = 0U;
        __Vdly__tb_top__DOT__DUT__DOT__PCD = 0U;
        vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Immediate_E = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__PCE = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__ALUSelE = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Op1E = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Op2E = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__WBSelW = 3U;
        vlSelf->tb_top__DOT__DUT__DOT__ALU_OpW = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__WBSelM = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__WBSelE = 0U;
    }
    vlSelf->tb_top__DOT__DUT__DOT__func7E = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                             && ((1U 
                                                  & (~ 
                                                     ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                      | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                 && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__func7)));
    vlSelf->tb_top__DOT__DUT__DOT__BranchE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                              && ((1U 
                                                   & (~ 
                                                      ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                       | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                  && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Branch)));
    vlSelf->tb_top__DOT__DUT__DOT__AselE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && ((1U 
                                                 & (~ 
                                                    ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                     | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ASel)));
    vlSelf->tb_top__DOT__DUT__DOT__BSelE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && ((1U 
                                                 & (~ 
                                                    ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                     | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BSel)));
    vlSelf->tb_top__DOT__DUT__DOT__BrUnE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && ((1U 
                                                 & (~ 
                                                    ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                     | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BrUn)));
    vlSelf->tb_top__DOT__DUT__DOT__JumpE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && ((1U 
                                                 & (~ 
                                                    ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                     | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Jump)));
    vlSelf->tb_top__DOT__DUT__DOT__rd_enM = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                             && (IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enE));
    vlSelf->tb_top__DOT__DUT__DOT__PCD = __Vdly__tb_top__DOT__DUT__DOT__PCD;
    vlSelf->tb_top__DOT__DUT__DOT__rd_enE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                             && ((1U 
                                                  & (~ 
                                                     ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                      | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                 && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__rd_en)));
}

VL_INLINE_OPT void Vtb_top___024root___nba_sequent__TOP__2(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_sequent__TOP__2\n"); );
    // Init
    CData/*4:0*/ __Vdlyvdim0__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0;
    __Vdlyvdim0__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 = 0;
    IData/*31:0*/ __Vdlyvval__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0;
    __Vdlyvval__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 = 0;
    CData/*0:0*/ __Vdlyvset__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0;
    __Vdlyvset__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 = 0;
    // Body
    __Vdlyvset__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 = 0U;
    if (vlSelf->tb_top__DOT__DUT__DOT__w_enW) {
        __Vdlyvval__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 
            = ((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDW))
                ? 0U : vlSelf->tb_top__DOT__DUT__DOT__result);
        __Vdlyvset__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 = 1U;
        __Vdlyvdim0__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0 
            = vlSelf->tb_top__DOT__DUT__DOT__RDW;
    }
    if (__Vdlyvset__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0) {
        vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[__Vdlyvdim0__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0] 
            = __Vdlyvval__tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x__v0;
    }
}

VL_INLINE_OPT void Vtb_top___024root___nba_sequent__TOP__4(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_sequent__TOP__4\n"); );
    // Init
    SData/*14:0*/ __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v0;
    __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v0 = 0;
    CData/*4:0*/ __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v0;
    __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v0 = 0;
    CData/*7:0*/ __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v0;
    __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v0 = 0;
    SData/*14:0*/ __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v1;
    __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v1 = 0;
    CData/*4:0*/ __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v1;
    __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v1 = 0;
    CData/*7:0*/ __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v1;
    __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v1 = 0;
    SData/*14:0*/ __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v2;
    __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v2 = 0;
    CData/*4:0*/ __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v2;
    __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v2 = 0;
    CData/*7:0*/ __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v2;
    __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v2 = 0;
    SData/*14:0*/ __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v3;
    __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v3 = 0;
    CData/*4:0*/ __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v3;
    __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v3 = 0;
    CData/*7:0*/ __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v3;
    __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v3 = 0;
    // Body
    vlSelf->tb_top__DOT__tracer_inst__DOT__i = 0U;
    if (vlSelf->tb_top__DOT__DUT__DOT__wd_enM) {
        if ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb))) {
            __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v0 
                = (0xffU & ((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                             ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                 ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                     ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                        << 0x18U) : 
                                    (0xff0000U & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                  << 0x10U)))
                                 : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                     ? (0xff00U & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                   << 8U))
                                     : (0xffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M)))
                             : ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                 ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                     ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                        << 0x10U) : 
                                    (0xffffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M))
                                 : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                     ? vlSelf->tb_top__DOT__DUT__DOT__OP2M
                                     : 0U))));
            vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v0 = 1U;
            __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v0 = 0U;
            __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v0 
                = (0x7fffU & vlSelf->tb_top__DOT__dmem_inst__DOT__word_index);
        }
        if ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb))) {
            __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v1 
                = (0xffU & (((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                              ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                  ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                         << 0x18U) : 
                                     (0xff0000U & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                   << 0x10U)))
                                  : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? (0xff00U & 
                                         (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                          << 8U)) : 
                                     (0xffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M)))
                              : ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                  ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                         << 0x10U) : 
                                     (0xffffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M))
                                  : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                      ? vlSelf->tb_top__DOT__DUT__DOT__OP2M
                                      : 0U))) >> 8U));
            vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v1 = 1U;
            __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v1 = 8U;
            __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v1 
                = (0x7fffU & vlSelf->tb_top__DOT__dmem_inst__DOT__word_index);
        }
        if ((4U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb))) {
            __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v2 
                = (0xffU & (((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                              ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                  ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                         << 0x18U) : 
                                     (0xff0000U & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                   << 0x10U)))
                                  : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? (0xff00U & 
                                         (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                          << 8U)) : 
                                     (0xffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M)))
                              : ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                  ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                         << 0x10U) : 
                                     (0xffffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M))
                                  : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                      ? vlSelf->tb_top__DOT__DUT__DOT__OP2M
                                      : 0U))) >> 0x10U));
            vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v2 = 1U;
            __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v2 = 0x10U;
            __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v2 
                = (0x7fffU & vlSelf->tb_top__DOT__dmem_inst__DOT__word_index);
        }
        if ((8U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb))) {
            __Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v3 
                = (((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                     ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                         ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                             ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                << 0x18U) : (0xff0000U 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                << 0x10U)))
                         : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                             ? (0xff00U & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                           << 8U)) : 
                            (0xffU & vlSelf->tb_top__DOT__DUT__DOT__OP2M)))
                     : ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                         ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                             ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                << 0x10U) : (0xffffU 
                                             & vlSelf->tb_top__DOT__DUT__DOT__OP2M))
                         : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                             ? vlSelf->tb_top__DOT__DUT__DOT__OP2M
                             : 0U))) >> 0x18U);
            vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v3 = 1U;
            __Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v3 = 0x18U;
            __Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v3 
                = (0x7fffU & vlSelf->tb_top__DOT__dmem_inst__DOT__word_index);
        }
    }
    if (vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v0) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__dmem[__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v0] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v0))) 
                & vlSelf->tb_top__DOT__dmem_inst__DOT__dmem
                [__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v0]) 
               | (0xffffffffULL & ((IData)(__Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v0) 
                                   << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v0))));
    }
    if (vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v1) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__dmem[__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v1] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v1))) 
                & vlSelf->tb_top__DOT__dmem_inst__DOT__dmem
                [__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v1]) 
               | (0xffffffffULL & ((IData)(__Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v1) 
                                   << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v1))));
    }
    if (vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v2) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__dmem[__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v2] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v2))) 
                & vlSelf->tb_top__DOT__dmem_inst__DOT__dmem
                [__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v2]) 
               | (0xffffffffULL & ((IData)(__Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v2) 
                                   << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v2))));
    }
    if (vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v3) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__dmem[__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v3] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v3))) 
                & vlSelf->tb_top__DOT__dmem_inst__DOT__dmem
                [__Vdlyvdim0__tb_top__DOT__dmem_inst__DOT__dmem__v3]) 
               | (0xffffffffULL & ((IData)(__Vdlyvval__tb_top__DOT__dmem_inst__DOT__dmem__v3) 
                                   << (IData)(__Vdlyvlsb__tb_top__DOT__dmem_inst__DOT__dmem__v3))));
    }
}

extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_hcbdb209b_0;
extern const VlUnpacked<CData/*2:0*/, 512> Vtb_top__ConstPool__TABLE_h1df19a13_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_hc34f0a92_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_h7da29fe6_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_h3a2ed9c4_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_h753dea71_0;
extern const VlUnpacked<CData/*1:0*/, 512> Vtb_top__ConstPool__TABLE_h711ce566_0;
extern const VlUnpacked<CData/*2:0*/, 512> Vtb_top__ConstPool__TABLE_h300b6ab6_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_hba5c9b1d_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_hcf660d64_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_h09b44643_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_he1ebf836_0;
extern const VlUnpacked<CData/*0:0*/, 512> Vtb_top__ConstPool__TABLE_h5bb30c48_0;
extern const VlUnpacked<SData/*13:0*/, 512> Vtb_top__ConstPool__TABLE_heedf2755_0;
extern const VlUnpacked<CData/*2:0*/, 512> Vtb_top__ConstPool__TABLE_ha9f56a8d_0;

VL_INLINE_OPT void Vtb_top___024root___nba_sequent__TOP__5(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_sequent__TOP__5\n"); );
    // Init
    SData/*8:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
    vlSelf->tb_top__DOT__DUT__DOT__pc_sel = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                             && (IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux));
    if (vlSelf->tb_top__DOT__reset_n) {
        vlSelf->tb_top__DOT__DUT__DOT__Op1W = vlSelf->tb_top__DOT__DUT__DOT__Op1M;
        vlSelf->tb_top__DOT__DUT__DOT__Op2W = vlSelf->tb_top__DOT__DUT__DOT__OP2M;
        vlSelf->tb_top__DOT__DUT__DOT__mem_w_data = vlSelf->tb_top__DOT__DUT__DOT__OP2M;
        vlSelf->tb_top__DOT__DUT__DOT__memop = vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__load_extended;
        vlSelf->tb_top__DOT__DUT__DOT__current_pc_m 
            = vlSelf->tb_top__DOT__DUT__DOT__current_pc_e;
        vlSelf->tb_top__DOT__DUT__DOT__PCW_4 = vlSelf->tb_top__DOT__DUT__DOT__PCM_4;
        vlSelf->tb_top__DOT__DUT__DOT__mem_addr = vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM;
        vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB 
            = vlSelf->tb_top__DOT__DUT__DOT__Instruction_Mem;
        vlSelf->tb_top__DOT__DUT__DOT__RDW = vlSelf->tb_top__DOT__DUT__DOT__RDM;
        vlSelf->tb_top__DOT__DUT__DOT__op_selM = vlSelf->tb_top__DOT__DUT__DOT__op_selE;
        vlSelf->tb_top__DOT__DUT__DOT__Op1M = vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1;
        vlSelf->tb_top__DOT__DUT__DOT__OP2M = vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2;
        vlSelf->tb_top__DOT__DUT__DOT__current_pc_e 
            = vlSelf->tb_top__DOT__DUT__DOT__current_pc_d;
        vlSelf->tb_top__DOT__DUT__DOT__PCM_4 = vlSelf->tb_top__DOT__DUT__DOT__PCE_4;
        vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM = vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data;
        vlSelf->tb_top__DOT__DUT__DOT__Instruction_Mem 
            = vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode;
        vlSelf->tb_top__DOT__DUT__DOT__RDM = vlSelf->tb_top__DOT__DUT__DOT__RDE;
        if (((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
             | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall))) {
            vlSelf->tb_top__DOT__DUT__DOT__op_selE = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__current_pc_d = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__PCE_4 = 0U;
            vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode = 0x13U;
            vlSelf->tb_top__DOT__DUT__DOT__RDE = 0U;
        } else {
            vlSelf->tb_top__DOT__DUT__DOT__op_selE 
                = vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__op_sel;
            vlSelf->tb_top__DOT__DUT__DOT__current_pc_d 
                = vlSelf->tb_top__DOT__imem_addr;
            vlSelf->tb_top__DOT__DUT__DOT__PCE_4 = vlSelf->tb_top__DOT__DUT__DOT__PC4;
            vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                = vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch;
            vlSelf->tb_top__DOT__DUT__DOT__RDE = (0x1fU 
                                                  & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                     >> 7U));
        }
    } else {
        vlSelf->tb_top__DOT__DUT__DOT__Op1W = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Op2W = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__mem_w_data = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__memop = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__current_pc_m = 0x80000000U;
        vlSelf->tb_top__DOT__DUT__DOT__PCW_4 = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__mem_addr = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__RDW = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__op_selM = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Op1M = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__OP2M = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__current_pc_e = 0x80000000U;
        vlSelf->tb_top__DOT__DUT__DOT__PCM_4 = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Instruction_Mem = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__RDM = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__op_selE = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__current_pc_d = 0x80000000U;
        vlSelf->tb_top__DOT__DUT__DOT__PCE_4 = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__RDE = 0U;
    }
    vlSelf->tb_top__DOT__DUT__DOT__w_enW = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && (IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enM));
    vlSelf->tb_top__DOT__DUT__DOT__wd_enM = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                             && (IData)(vlSelf->tb_top__DOT__DUT__DOT__wd_enE));
    vlSelf->tb_top__DOT__DUT__DOT__result = ((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__WBSelW))
                                              ? vlSelf->tb_top__DOT__DUT__DOT__memop
                                              : ((1U 
                                                  == (IData)(vlSelf->tb_top__DOT__DUT__DOT__WBSelW))
                                                  ? vlSelf->tb_top__DOT__DUT__DOT__ALU_OpW
                                                  : 
                                                 ((2U 
                                                   == (IData)(vlSelf->tb_top__DOT__DUT__DOT__WBSelW))
                                                   ? vlSelf->tb_top__DOT__DUT__DOT__PCW_4
                                                   : 0U)));
    vlSelf->tb_top__DOT__DUT__DOT__w_enM = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && (IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enE));
    vlSelf->tb_top__DOT__DUT__DOT__wd_enE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                             && ((1U 
                                                  & (~ 
                                                     ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                      | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                 && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__wd_en)));
    vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb = 0U;
    if ((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))) {
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb 
            = ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                    ? 8U : 4U) : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                   ? 2U : 1U));
    } else if ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))) {
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb 
            = ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                ? 0xcU : 3U);
    } else if ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))) {
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb = 0xfU;
    }
    vlSelf->tb_top__DOT__dmem_inst__DOT__local_addr 
        = ((0x80008000U <= vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
            ? (vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM 
               - (IData)(0x80008000U)) : 0U);
    vlSelf->tb_top__DOT__dmem_inst__DOT__word_index 
        = (vlSelf->tb_top__DOT__dmem_inst__DOT__local_addr 
           >> 2U);
    vlSelf->tb_top__DOT__DUT__DOT__w_enE = ((IData)(vlSelf->tb_top__DOT__reset_n) 
                                            && ((1U 
                                                 & (~ 
                                                    ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux) 
                                                     | (IData)(vlSelf->tb_top__DOT__DUT__DOT__Stall)))) 
                                                && (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__w_en)));
    vlSelf->tb_top__DOT__imem_addr = vlSelf->__Vdly__tb_top__DOT__imem_addr;
    vlSelf->tb_top__DOT__DUT__DOT__PC4 = vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4;
    vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
        = vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch;
    vlSelf->tb_top__DOT__DUT__DOT__Forward_A = ((((
                                                   (0x1fU 
                                                    & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                       >> 0xfU)) 
                                                   == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDM)) 
                                                  & (IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enM)) 
                                                 & (0U 
                                                    != 
                                                    (0x1fU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                        >> 0xfU))))
                                                 ? 2U
                                                 : 
                                                (((((0x1fU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                        >> 0xfU)) 
                                                    == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDW)) 
                                                   & (IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enW)) 
                                                  & (0U 
                                                     != 
                                                     (0x1fU 
                                                      & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                         >> 0xfU))))
                                                  ? 1U
                                                  : 0U));
    vlSelf->tb_top__DOT__DUT__DOT__Forward_B = ((((
                                                   (0x1fU 
                                                    & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                       >> 0x14U)) 
                                                   == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDM)) 
                                                  & (IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enM)) 
                                                 & (0U 
                                                    != 
                                                    (0x1fU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                        >> 0x14U))))
                                                 ? 2U
                                                 : 
                                                (((((0x1fU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                        >> 0x14U)) 
                                                    == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDW)) 
                                                   & (IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enW)) 
                                                  & (0U 
                                                     != 
                                                     (0x1fU 
                                                      & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                         >> 0x14U))))
                                                  ? 1U
                                                  : 0U));
    vlSelf->tb_top__DOT__DUT__DOT__Stall = 0U;
    if (((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enE) 
         & (0U != (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDE)))) {
        if ((((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                        >> 0xfU)) == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDE)) 
             | ((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                          >> 0x14U)) == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDE)))) {
            vlSelf->tb_top__DOT__DUT__DOT__Stall = 1U;
        }
    }
    __Vtableidx1 = ((0x100U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                               >> 0x16U)) | ((0xe0U 
                                              & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                 >> 7U)) 
                                             | (0x1fU 
                                                & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                   >> 2U))));
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BSel 
        = Vtb_top__ConstPool__TABLE_hcbdb209b_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ALUSel 
        = Vtb_top__ConstPool__TABLE_h1df19a13_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__func7 
        = Vtb_top__ConstPool__TABLE_hc34f0a92_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__w_en 
        = Vtb_top__ConstPool__TABLE_h7da29fe6_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__wd_en 
        = Vtb_top__ConstPool__TABLE_h3a2ed9c4_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__rd_en 
        = Vtb_top__ConstPool__TABLE_h753dea71_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__WBSel 
        = Vtb_top__ConstPool__TABLE_h711ce566_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel 
        = Vtb_top__ConstPool__TABLE_h300b6ab6_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ASel 
        = Vtb_top__ConstPool__TABLE_hba5c9b1d_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BrUn 
        = Vtb_top__ConstPool__TABLE_hcf660d64_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Jump 
        = Vtb_top__ConstPool__TABLE_h09b44643_0[__Vtableidx1];
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Branch 
        = Vtb_top__ConstPool__TABLE_he1ebf836_0[__Vtableidx1];
    vlSelf->tb_top__DOT__illegal_inst = Vtb_top__ConstPool__TABLE_h5bb30c48_0
        [__Vtableidx1];
    if ((0x2000U & Vtb_top__ConstPool__TABLE_heedf2755_0
         [__Vtableidx1])) {
        vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__op_sel 
            = Vtb_top__ConstPool__TABLE_ha9f56a8d_0
            [__Vtableidx1];
    }
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1 
        = ((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__Forward_A))
            ? vlSelf->tb_top__DOT__DUT__DOT__Op1E : 
           ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__Forward_A))
             ? vlSelf->tb_top__DOT__DUT__DOT__result
             : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__Forward_A))
                 ? vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM
                 : vlSelf->tb_top__DOT__DUT__DOT__Op1E)));
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2 
        = ((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__Forward_B))
            ? vlSelf->tb_top__DOT__DUT__DOT__Op2E : 
           ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__Forward_B))
             ? vlSelf->tb_top__DOT__DUT__DOT__result
             : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__Forward_B))
                 ? vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM
                 : vlSelf->tb_top__DOT__DUT__DOT__Op2E)));
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Immediate 
        = ((4U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel))
            ? ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel))
                ? ((vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                    >> 0x1fU) ? (0xfffff000U | (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                >> 0x14U))
                    : (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                       >> 0x14U)) : ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel))
                                      ? ((vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                          >> 0x1fU)
                                          ? (0xfffff000U 
                                             | (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                >> 0x14U))
                                          : (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                             >> 0x14U))
                                      : (0xfffff000U 
                                         & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch)))
            : ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel))
                ? ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel))
                    ? ((vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                        >> 0x1fU) ? (0xffffe000U | 
                                     ((0x1000U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                  >> 0x13U)) 
                                      | ((0x800U & 
                                          (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                           << 4U)) 
                                         | ((0x7e0U 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                >> 0x14U)) 
                                            | (0x1eU 
                                               & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                  >> 7U))))))
                        : ((0x1000U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                       >> 0x13U)) | 
                           ((0x800U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                       << 4U)) | ((0x7e0U 
                                                   & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                      >> 0x14U)) 
                                                  | (0x1eU 
                                                     & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                        >> 7U))))))
                    : ((vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                        >> 0x1fU) ? (0xffe00000U | 
                                     ((0x100000U & 
                                       (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                        >> 0xbU)) | 
                                      ((0xff000U & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch) 
                                       | ((0x800U & 
                                           (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                            >> 9U)) 
                                          | (0x7feU 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                >> 0x14U))))))
                        : ((0x100000U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                         >> 0xbU)) 
                           | ((0xff000U & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch) 
                              | ((0x800U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                            >> 9U)) 
                                 | (0x7feU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                              >> 0x14U)))))))
                : ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel))
                    ? ((vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                        >> 0x1fU) ? (0xfffff000U | 
                                     (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                      >> 0x14U)) : 
                       (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                        >> 0x14U)) : ((vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                       >> 0x1fU) ? 
                                      (0xfffff000U 
                                       | ((0xfe0U & 
                                           (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                            >> 0x14U)) 
                                          | (0x1fU 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                >> 7U))))
                                       : ((0xfe0U & 
                                           (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                            >> 0x14U)) 
                                          | (0x1fU 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                                >> 7U)))))));
    if (vlSelf->tb_top__DOT__DUT__DOT__AselE) {
        if (vlSelf->tb_top__DOT__DUT__DOT__AselE) {
            vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                = vlSelf->tb_top__DOT__DUT__DOT__PCE;
        }
    } else {
        vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
            = vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1;
    }
    if (vlSelf->tb_top__DOT__DUT__DOT__BSelE) {
        if (vlSelf->tb_top__DOT__DUT__DOT__BSelE) {
            vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2 
                = vlSelf->tb_top__DOT__DUT__DOT__Immediate_E;
        }
    } else {
        vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2 
            = vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2;
    }
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Eq 
        = (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1 
           == vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt 
        = ((IData)(vlSelf->tb_top__DOT__DUT__DOT__BrUnE)
            ? (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1 
               < vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2)
            : VL_LTS_III(32, vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1, vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2));
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data = 0U;
    if ((4U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))) {
        if ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))) {
            vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
                = ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))
                    ? (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                       & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2)
                    : (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                       | vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2));
        } else if ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))) {
            if (vlSelf->tb_top__DOT__DUT__DOT__func7E) {
                if (vlSelf->tb_top__DOT__DUT__DOT__func7E) {
                    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
                        = VL_SHIFTRS_III(32,32,5, vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1, 
                                         (0x1fU & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2));
                }
            } else {
                vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
                    = (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                       >> (0x1fU & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2));
            }
        } else {
            vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
                = (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                   ^ vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2);
        }
    } else if ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))) {
        vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
            = ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))
                ? ((vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                    < vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2)
                    ? 1U : 0U) : (VL_LTS_III(32, vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1, vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2)
                                   ? 1U : 0U));
    } else if ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE))) {
        vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
            = (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
               << (0x1fU & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2));
    } else if (vlSelf->tb_top__DOT__DUT__DOT__func7E) {
        if (vlSelf->tb_top__DOT__DUT__DOT__func7E) {
            vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
                = (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
                   - vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2);
        }
    } else {
        vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
            = (vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 
               + vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2);
    }
    if (((IData)(vlSelf->tb_top__DOT__DUT__DOT__func7E) 
         & (1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE)))) {
        vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data 
            = vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2;
    }
    vlSelf->tb_top__DOT__DUT__DOT__PC_Mux = ((IData)(vlSelf->tb_top__DOT__DUT__DOT__JumpE) 
                                             || ((IData)(vlSelf->tb_top__DOT__DUT__DOT__BranchE) 
                                                 && (1U 
                                                     & ((0x4000U 
                                                         & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode)
                                                         ? 
                                                        ((0x2000U 
                                                          & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode)
                                                          ? 
                                                         ((0x1000U 
                                                           & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode)
                                                           ? 
                                                          (~ (IData)(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt))
                                                           : (IData)(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt))
                                                          : 
                                                         ((0x1000U 
                                                           & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode)
                                                           ? 
                                                          (~ (IData)(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt))
                                                           : (IData)(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt)))
                                                         : 
                                                        ((1U 
                                                          & (~ 
                                                             (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                                              >> 0xdU))) 
                                                         && (1U 
                                                             & ((0x1000U 
                                                                 & vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode)
                                                                 ? 
                                                                (~ (IData)(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Eq))
                                                                 : (IData)(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Eq))))))));
    vlSelf->tb_top__DOT__DUT__DOT__Fetch__DOT__PC_next 
        = ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux)
            ? ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux)
                ? ((IData)(vlSelf->tb_top__DOT__DUT__DOT__JumpE)
                    ? (0xfffffffeU & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data)
                    : vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data)
                : ((IData)(4U) + vlSelf->tb_top__DOT__imem_addr))
            : ((IData)(4U) + vlSelf->tb_top__DOT__imem_addr));
}

VL_INLINE_OPT void Vtb_top___024root___nba_sequent__TOP__6(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_sequent__TOP__6\n"); );
    // Body
    vlSelf->tb_top__DOT__tracer_inst__DOT__cycle = vlSelf->__Vdly__tb_top__DOT__tracer_inst__DOT__cycle;
}

VL_INLINE_OPT void Vtb_top___024root___nba_comb__TOP__0(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___nba_comb__TOP__0\n"); );
    // Init
    CData/*7:0*/ tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0;
    tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0 = 0;
    CData/*7:0*/ tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0;
    tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0 = 0;
    CData/*7:0*/ tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0;
    tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0 = 0;
    IData/*31:0*/ __VdfgTmp_h97f8a58f__0;
    __VdfgTmp_h97f8a58f__0 = 0;
    // Body
    __VdfgTmp_h97f8a58f__0 = vlSelf->tb_top__DOT__dmem_inst__DOT__dmem
        [(0x7fffU & vlSelf->tb_top__DOT__dmem_inst__DOT__word_index)];
    if (vlSelf->tb_top__DOT__DUT__DOT__rd_enM) {
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in 
            = __VdfgTmp_h97f8a58f__0;
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__load_extended 
            = vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in;
        tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0 
            = (0xffU & __VdfgTmp_h97f8a58f__0);
        tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0 
            = (0xffU & (__VdfgTmp_h97f8a58f__0 >> 8U));
        tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0 
            = (0xffU & (__VdfgTmp_h97f8a58f__0 >> 0x10U));
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__load_extended 
            = ((4U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                ? ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                    ? 0U : ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                             ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                 ? (vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in 
                                    >> 0x10U) : (0xffffU 
                                                 & vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in))
                             : ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                 ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                     ? VL_SHIFTR_III(32,32,32, vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in, 0x18U)
                                     : (IData)(tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0))
                                 : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                     ? (IData)(tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0)
                                     : (IData)(tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0)))))
                : ((2U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                    ? ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                        ? 0U : vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in)
                    : ((1U & (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                        ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                            ? (((- (IData)((vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in 
                                            >> 0x1fU))) 
                                << 0x10U) | (vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in 
                                             >> 0x10U))
                            : (((- (IData)((1U & (vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in 
                                                  >> 0xfU)))) 
                                << 0x10U) | (0xffffU 
                                             & vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in)))
                        : ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                            ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                ? (((- (IData)(((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enM) 
                                                & (__VdfgTmp_h97f8a58f__0 
                                                   >> 0x1fU)))) 
                                    << 8U) | ((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enM)
                                               ? (__VdfgTmp_h97f8a58f__0 
                                                  >> 0x18U)
                                               : 0U))
                                : (((- (IData)(((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enM) 
                                                & (__VdfgTmp_h97f8a58f__0 
                                                   >> 0x17U)))) 
                                    << 8U) | (IData)(tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0)))
                            : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                ? (((- (IData)(((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enM) 
                                                & (__VdfgTmp_h97f8a58f__0 
                                                   >> 0xfU)))) 
                                    << 8U) | (IData)(tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0))
                                : (((- (IData)(((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enM) 
                                                & (__VdfgTmp_h97f8a58f__0 
                                                   >> 7U)))) 
                                    << 8U) | (IData)(tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0)))))));
    } else {
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in = 0U;
        vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__load_extended 
            = vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in;
        tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0 = 0U;
        tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0 = 0U;
        tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0 = 0U;
    }
}

void Vtb_top___024root___nba_sequent__TOP__3(Vtb_top___024root* vlSelf);

void Vtb_top___024root___eval_nba(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_nba\n"); );
    // Body
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_sequent__TOP__0(vlSelf);
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_sequent__TOP__1(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    if ((8ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_sequent__TOP__3(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
        Vtb_top___024root___nba_sequent__TOP__4(vlSelf);
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_sequent__TOP__5(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
    }
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_sequent__TOP__6(vlSelf);
    }
    if ((9ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_top___024root___nba_comb__TOP__0(vlSelf);
    }
}

void Vtb_top___024root___timing_resume(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___timing_resume\n"); );
    // Body
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_he3ce33ca__0.resume("@(negedge tb_top.clk)");
    }
    if ((0x10ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_haa702e20__0.resume("@([changed] tb_top.illegal_inst)");
    }
    if ((8ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_he3ce3317__0.resume("@(posedge tb_top.clk)");
    }
    if ((0x20ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vtb_top___024root___timing_commit(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___timing_commit\n"); );
    // Body
    if ((! (2ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_he3ce33ca__0.commit("@(negedge tb_top.clk)");
    }
    if ((! (0x10ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_haa702e20__0.commit("@([changed] tb_top.illegal_inst)");
    }
    if ((! (8ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_he3ce3317__0.commit("@(posedge tb_top.clk)");
    }
}

void Vtb_top___024root___eval_triggers__act(Vtb_top___024root* vlSelf);

bool Vtb_top___024root___eval_phase__act(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<6> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtb_top___024root___eval_triggers__act(vlSelf);
    Vtb_top___024root___timing_commit(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vtb_top___024root___timing_resume(vlSelf);
        Vtb_top___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtb_top___024root___eval_phase__nba(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtb_top___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__nba(Vtb_top___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__act(Vtb_top___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_top___024root___eval(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtb_top___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vtb_top___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 1, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vtb_top___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vtb_top___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtb_top___024root___eval_debug_assertions(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
