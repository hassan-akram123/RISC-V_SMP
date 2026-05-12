// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_adder_4bit__Syms.h"


void Vtb_adder_4bit___024root__trace_chg_0_sub_0(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtb_adder_4bit___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_chg_0\n"); );
    // Init
    Vtb_adder_4bit___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder_4bit___024root*>(voidSelf);
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtb_adder_4bit___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtb_adder_4bit___024root__trace_chg_0_sub_0(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgCData(oldp+0,(vlSelf->tb_adder_4bit__DOT__a),4);
        bufp->chgCData(oldp+1,(vlSelf->tb_adder_4bit__DOT__b),4);
        bufp->chgBit(oldp+2,(vlSelf->tb_adder_4bit__DOT__cin));
        bufp->chgIData(oldp+3,(vlSelf->tb_adder_4bit__DOT__pass_cnt),32);
        bufp->chgIData(oldp+4,(vlSelf->tb_adder_4bit__DOT__fail_cnt),32);
        bufp->chgIData(oldp+5,(vlSelf->tb_adder_4bit__DOT__total),32);
        bufp->chgIData(oldp+6,(vlSelf->tb_adder_4bit__DOT__i),32);
        bufp->chgIData(oldp+7,(vlSelf->tb_adder_4bit__DOT__num_tests),32);
        bufp->chgIData(oldp+8,(vlSelf->tb_adder_4bit__DOT__max_fail_logs),32);
        bufp->chgIData(oldp+9,(vlSelf->tb_adder_4bit__DOT__fail_logs),32);
        bufp->chgIData(oldp+10,(vlSelf->tb_adder_4bit__DOT__seed),32);
        bufp->chgCData(oldp+11,(vlSelf->tb_adder_4bit__DOT__exp),5);
        bufp->chgCData(oldp+12,(vlSelf->tb_adder_4bit__DOT__exp_sum),4);
        bufp->chgBit(oldp+13,(vlSelf->tb_adder_4bit__DOT__exp_cout));
        bufp->chgDouble(oldp+14,(vlSelf->tb_adder_4bit__DOT__func_score));
        bufp->chgBit(oldp+16,((1U & (IData)(vlSelf->tb_adder_4bit__DOT__a))));
        bufp->chgBit(oldp+17,((1U & (IData)(vlSelf->tb_adder_4bit__DOT__b))));
        bufp->chgBit(oldp+18,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                     & (IData)(vlSelf->tb_adder_4bit__DOT__b)))));
        bufp->chgBit(oldp+19,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                     >> 1U))));
        bufp->chgBit(oldp+20,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__b) 
                                     >> 1U))));
        bufp->chgBit(oldp+21,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                      ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                     >> 1U))));
        bufp->chgBit(oldp+22,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                      & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                     >> 1U))));
        bufp->chgBit(oldp+23,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                     >> 2U))));
        bufp->chgBit(oldp+24,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__b) 
                                     >> 2U))));
        bufp->chgBit(oldp+25,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                      ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                     >> 2U))));
        bufp->chgBit(oldp+26,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                      & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                     >> 2U))));
        bufp->chgBit(oldp+27,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                     >> 3U))));
        bufp->chgBit(oldp+28,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__b) 
                                     >> 3U))));
        bufp->chgBit(oldp+29,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                      ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                     >> 3U))));
        bufp->chgBit(oldp+30,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                      & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                     >> 3U))));
    }
    if (VL_UNLIKELY((((vlSelf->__Vm_traceActivity[1U] 
                       | vlSelf->__Vm_traceActivity
                       [2U]) | vlSelf->__Vm_traceActivity
                      [3U]) | vlSelf->__Vm_traceActivity
                     [4U]))) {
        bufp->chgCData(oldp+31,(((8U & ((0xfffffff8U 
                                         & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                            ^ (IData)(vlSelf->tb_adder_4bit__DOT__b))) 
                                        ^ ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3) 
                                           << 3U))) 
                                 | ((4U & ((0xfffffffcU 
                                            & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                               ^ (IData)(vlSelf->tb_adder_4bit__DOT__b))) 
                                           ^ ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2) 
                                              << 2U))) 
                                    | ((2U & ((0xfffffffeU 
                                               & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                  ^ (IData)(vlSelf->tb_adder_4bit__DOT__b))) 
                                              ^ ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1) 
                                                 << 1U))) 
                                       | ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                                          ^ (IData)(vlSelf->tb_adder_4bit__DOT__cin)))))),4);
        bufp->chgBit(oldp+32,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                       & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                      >> 3U) | ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                                  ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                                 >> 3U) 
                                                & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3))))));
        bufp->chgBit(oldp+33,(((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                               ^ (IData)(vlSelf->tb_adder_4bit__DOT__cin))));
        bufp->chgBit(oldp+34,(((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                               & (IData)(vlSelf->tb_adder_4bit__DOT__cin))));
        bufp->chgBit(oldp+35,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                       ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                      >> 1U) ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1)))));
        bufp->chgBit(oldp+36,(((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                 ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                >> 1U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1))));
        bufp->chgBit(oldp+37,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                       ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                      >> 2U) ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2)))));
        bufp->chgBit(oldp+38,(((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                 ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                >> 2U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2))));
        bufp->chgBit(oldp+39,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                       ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                      >> 3U) ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3)))));
        bufp->chgBit(oldp+40,(((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                 ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                >> 3U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3))));
    }
    bufp->chgBit(oldp+41,(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1));
    bufp->chgBit(oldp+42,(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2));
    bufp->chgBit(oldp+43,(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3));
    bufp->chgBit(oldp+44,(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1));
}

void Vtb_adder_4bit___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_cleanup\n"); );
    // Init
    Vtb_adder_4bit___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder_4bit___024root*>(voidSelf);
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[4U] = 0U;
}
