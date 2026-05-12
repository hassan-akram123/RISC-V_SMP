// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_adder_4bit.h for the primary calling header

#include "Vtb_adder_4bit__pch.h"
#include "Vtb_adder_4bit___024root.h"

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_static__TOP(Vtb_adder_4bit___024root* vlSelf);

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_static(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_static\n"); );
    // Body
    Vtb_adder_4bit___024root___eval_static__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[4U] = 1U;
    vlSelf->__Vm_traceActivity[3U] = 1U;
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_static__TOP(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->tb_adder_4bit__DOT__pass_cnt = 0U;
    vlSelf->tb_adder_4bit__DOT__fail_cnt = 0U;
    vlSelf->tb_adder_4bit__DOT__total = 0U;
}

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_final(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__stl(Vtb_adder_4bit___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtb_adder_4bit___024root___eval_phase__stl(Vtb_adder_4bit___024root* vlSelf);

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_settle(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vtb_adder_4bit___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("tb_adder_4bit.v", 2, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtb_adder_4bit___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__stl(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void Vtb_adder_4bit___024root___act_sequent__TOP__0(Vtb_adder_4bit___024root* vlSelf);

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_stl(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vtb_adder_4bit___024root___act_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vtb_adder_4bit___024root___eval_triggers__stl(Vtb_adder_4bit___024root* vlSelf);

VL_ATTR_COLD bool Vtb_adder_4bit___024root___eval_phase__stl(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtb_adder_4bit___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vtb_adder_4bit___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__act(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__nba(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_adder_4bit___024root___ctor_var_reset(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->tb_adder_4bit__DOT__a = VL_RAND_RESET_I(4);
    vlSelf->tb_adder_4bit__DOT__b = VL_RAND_RESET_I(4);
    vlSelf->tb_adder_4bit__DOT__cin = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__pass_cnt = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__fail_cnt = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__total = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__num_tests = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__max_fail_logs = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__fail_logs = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__seed = VL_RAND_RESET_I(32);
    vlSelf->tb_adder_4bit__DOT__exp = VL_RAND_RESET_I(5);
    vlSelf->tb_adder_4bit__DOT__exp_sum = VL_RAND_RESET_I(4);
    vlSelf->tb_adder_4bit__DOT__exp_cout = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__func_score = 0;
    vlSelf->tb_adder_4bit__DOT__uut__DOT__c1 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__c2 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__c3 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT____Vcellout__fa0__sum = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa1__DOT__s1 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa2__DOT__s1 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__s1 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out1 = VL_RAND_RESET_I(1);
    vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out2 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 5; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
