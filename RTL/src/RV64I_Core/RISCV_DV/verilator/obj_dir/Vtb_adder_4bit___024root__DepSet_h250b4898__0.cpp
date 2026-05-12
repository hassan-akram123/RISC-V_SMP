// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_adder_4bit.h for the primary calling header

#include "Vtb_adder_4bit__pch.h"
#include "Vtb_adder_4bit___024root.h"

VlCoroutine Vtb_adder_4bit___024root___eval_initial__TOP__Vtiming__0(Vtb_adder_4bit___024root* vlSelf);

void Vtb_adder_4bit___024root___eval_initial(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vm_traceActivity[1U] = 1U;
    Vtb_adder_4bit___024root___eval_initial__TOP__Vtiming__0(vlSelf);
}

VL_INLINE_OPT void Vtb_adder_4bit___024root___act_sequent__TOP__0(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___act_sequent__TOP__0\n"); );
    // Body
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa1__DOT__s1 
        = (1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                  ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                 >> 1U));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa2__DOT__s1 
        = (1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                  ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                 >> 2U));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out1 
        = (1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                  & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                 >> 3U));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__s1 
        = (1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                  ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                 >> 3U));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1 
        = (1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                 ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)));
    vlSelf->tb_adder_4bit__DOT__uut__DOT____Vcellout__fa0__sum 
        = ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
           ^ (IData)(vlSelf->tb_adder_4bit__DOT__cin));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__c1 = (1U 
                                                & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                    & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                                   | ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                                                      & (IData)(vlSelf->tb_adder_4bit__DOT__cin))));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__c2 = (1U 
                                                & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                     & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                                    >> 1U) 
                                                   | ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                        ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                                       >> 1U) 
                                                      & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1))));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__c3 = (1U 
                                                & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                     & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                                    >> 2U) 
                                                   | ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                        ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                                       >> 2U) 
                                                      & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2))));
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out2 
        = ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
             ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
            >> 3U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3));
}

void Vtb_adder_4bit___024root___eval_act(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_act\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        Vtb_adder_4bit___024root___act_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
}

void Vtb_adder_4bit___024root___eval_nba(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtb_adder_4bit___024root___act_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
    }
}

void Vtb_adder_4bit___024root___timing_resume(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___timing_resume\n"); );
    // Body
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vtb_adder_4bit___024root___eval_triggers__act(Vtb_adder_4bit___024root* vlSelf);

bool Vtb_adder_4bit___024root___eval_phase__act(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtb_adder_4bit___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vtb_adder_4bit___024root___timing_resume(vlSelf);
        Vtb_adder_4bit___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtb_adder_4bit___024root___eval_phase__nba(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtb_adder_4bit___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__nba(Vtb_adder_4bit___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__act(Vtb_adder_4bit___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_adder_4bit___024root___eval(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtb_adder_4bit___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("tb_adder_4bit.v", 2, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vtb_adder_4bit___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("tb_adder_4bit.v", 2, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vtb_adder_4bit___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vtb_adder_4bit___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtb_adder_4bit___024root___eval_debug_assertions(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
