// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_adder_4bit.h for the primary calling header

#include "Vtb_adder_4bit__pch.h"
#include "Vtb_adder_4bit__Syms.h"
#include "Vtb_adder_4bit___024root.h"

VL_INLINE_OPT VlCoroutine Vtb_adder_4bit___024root___eval_initial__TOP__Vtiming__0(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Init
    VlWide<4>/*127:0*/ __Vtemp_1;
    VlWide<3>/*95:0*/ __Vtemp_2;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x34626974U;
    __Vtemp_1[2U] = 0x6465725fU;
    __Vtemp_1[3U] = 0x6164U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(4, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    vlSelf->tb_adder_4bit__DOT__num_tests = 0x3e8U;
    vlSelf->tb_adder_4bit__DOT__max_fail_logs = 0x14U;
    vlSelf->tb_adder_4bit__DOT__fail_logs = 0U;
    vlSelf->tb_adder_4bit__DOT__seed = 1U;
    __Vtemp_2[0U] = 0x533d2564U;
    __Vtemp_2[1U] = 0x54455354U;
    __Vtemp_2[2U] = 0x4e554d5fU;
    if (VL_VALUEPLUSARGS_INI(32, VL_CVT_PACK_STR_NW(3, __Vtemp_2), 
                             vlSelf->tb_adder_4bit__DOT__num_tests)) {
    }
    if (VL_VALUEPLUSARGS_INI(32, std::string{"SEED=%d"}, 
                             vlSelf->tb_adder_4bit__DOT__seed)) {
    }
    VL_WRITEF("Testing 4-bit adder with %0d randomized cases (SEED=%0d)\n",
              32,vlSelf->tb_adder_4bit__DOT__num_tests,
              32,vlSelf->tb_adder_4bit__DOT__seed);
    vlSelf->tb_adder_4bit__DOT__a = 0U;
    vlSelf->tb_adder_4bit__DOT__b = 0U;
    vlSelf->tb_adder_4bit__DOT__cin = 0U;
    co_await vlSelf->__VdlySched.delay(0x3e8ULL, nullptr, 
                                       "tb_adder_4bit.v", 
                                       52);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->tb_adder_4bit__DOT__i = 0U;
    while (VL_LTS_III(32, vlSelf->tb_adder_4bit__DOT__i, vlSelf->tb_adder_4bit__DOT__num_tests)) {
        vlSelf->tb_adder_4bit__DOT__a = (0xfU & VL_RANDOM_SEEDED_II(vlSelf->tb_adder_4bit__DOT__seed));
        vlSelf->tb_adder_4bit__DOT__b = (0xfU & VL_RANDOM_SEEDED_II(vlSelf->tb_adder_4bit__DOT__seed));
        vlSelf->tb_adder_4bit__DOT__cin = (1U & VL_RANDOM_SEEDED_II(vlSelf->tb_adder_4bit__DOT__seed));
        co_await vlSelf->__VdlySched.delay(0x3e8ULL, 
                                           nullptr, 
                                           "tb_adder_4bit.v", 
                                           61);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->tb_adder_4bit__DOT__exp = (0x1fU & 
                                           (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                             + (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                            + (IData)(vlSelf->tb_adder_4bit__DOT__cin)));
        vlSelf->tb_adder_4bit__DOT__exp_sum = (0xfU 
                                               & (IData)(vlSelf->tb_adder_4bit__DOT__exp));
        vlSelf->tb_adder_4bit__DOT__exp_cout = (1U 
                                                & ((IData)(vlSelf->tb_adder_4bit__DOT__exp) 
                                                   >> 4U));
        if (((((((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__s1) 
                 ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3)) 
                << 3U) | ((((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa2__DOT__s1) 
                            ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2)) 
                           << 2U) | ((((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa1__DOT__s1) 
                                       ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1)) 
                                      << 1U) | (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT____Vcellout__fa0__sum)))) 
              == (IData)(vlSelf->tb_adder_4bit__DOT__exp_sum)) 
             & (((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out1) 
                 | (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out2)) 
                == (IData)(vlSelf->tb_adder_4bit__DOT__exp_cout)))) {
            vlSelf->tb_adder_4bit__DOT__pass_cnt = 
                ((IData)(1U) + vlSelf->tb_adder_4bit__DOT__pass_cnt);
        } else {
            vlSelf->tb_adder_4bit__DOT__fail_cnt = 
                ((IData)(1U) + vlSelf->tb_adder_4bit__DOT__fail_cnt);
            if (VL_UNLIKELY(VL_LTS_III(32, vlSelf->tb_adder_4bit__DOT__fail_logs, vlSelf->tb_adder_4bit__DOT__max_fail_logs))) {
                VL_WRITEF("FAIL: a=%0# b=%0# cin=%0# -> got sum=%0# cout=%0#, exp sum=%0# cout=%0#\n",
                          4,vlSelf->tb_adder_4bit__DOT__a,
                          4,(IData)(vlSelf->tb_adder_4bit__DOT__b),
                          1,vlSelf->tb_adder_4bit__DOT__cin,
                          4,((((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__s1) 
                               ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3)) 
                              << 3U) | ((((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa2__DOT__s1) 
                                          ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2)) 
                                         << 2U) | (
                                                   (((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa1__DOT__s1) 
                                                     ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1)) 
                                                    << 1U) 
                                                   | (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT____Vcellout__fa0__sum)))),
                          1,((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out1) 
                             | (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out2)),
                          4,(IData)(vlSelf->tb_adder_4bit__DOT__exp_sum),
                          1,vlSelf->tb_adder_4bit__DOT__exp_cout);
                vlSelf->tb_adder_4bit__DOT__fail_logs 
                    = ((IData)(1U) + vlSelf->tb_adder_4bit__DOT__fail_logs);
            }
        }
        vlSelf->tb_adder_4bit__DOT__total = ((IData)(1U) 
                                             + vlSelf->tb_adder_4bit__DOT__total);
        vlSelf->tb_adder_4bit__DOT__i = ((IData)(1U) 
                                         + vlSelf->tb_adder_4bit__DOT__i);
    }
    vlSelf->tb_adder_4bit__DOT__func_score = (VL_LTS_III(32, 0U, vlSelf->tb_adder_4bit__DOT__total)
                                               ? ((1.0 
                                                   * 
                                                   VL_ISTOR_D_I(32, vlSelf->tb_adder_4bit__DOT__pass_cnt)) 
                                                  / 
                                                  VL_ISTOR_D_I(32, vlSelf->tb_adder_4bit__DOT__total))
                                               : 0.0);
    VL_WRITEF("FUNC_SUMMARY pass=%0d fail=%0d total=%0d\nFUNC_SCORE: %0.6f\n",
              32,vlSelf->tb_adder_4bit__DOT__pass_cnt,
              32,vlSelf->tb_adder_4bit__DOT__fail_cnt,
              32,vlSelf->tb_adder_4bit__DOT__total,
              64,vlSelf->tb_adder_4bit__DOT__func_score);
    VL_FINISH_MT("tb_adder_4bit.v", 99, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder_4bit___024root___dump_triggers__act(Vtb_adder_4bit___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb_adder_4bit___024root___eval_triggers__act(Vtb_adder_4bit___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, vlSelf->__VdlySched.awaitingCurrentTime());
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_adder_4bit___024root___dump_triggers__act(vlSelf);
    }
#endif
}
