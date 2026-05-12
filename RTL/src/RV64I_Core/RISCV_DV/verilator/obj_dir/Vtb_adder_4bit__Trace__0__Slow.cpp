// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_adder_4bit__Syms.h"


VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_init_sub__TOP__0(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("tb_adder_4bit", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+1,0,"a",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+2,0,"b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+3,0,"cin",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+32,0,"sum",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+33,0,"cout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+4,0,"pass_cnt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+5,0,"fail_cnt",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+6,0,"total",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+7,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+8,0,"num_tests",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+9,0,"max_fail_logs",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+10,0,"fail_logs",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+11,0,"seed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+12,0,"exp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+13,0,"exp_sum",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+14,0,"exp_cout",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declDouble(c+15,0,"func_score",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->pushPrefix("uut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+1,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+2,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+3,0,"cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+32,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+33,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+42,0,"c1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+43,0,"c2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"c3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("fa0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+17,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+18,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+3,0,"cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+42,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+45,0,"s1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"c_out1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+35,0,"c_out2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("ha1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+17,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+18,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+45,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("ha2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+45,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+3,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+35,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("fa1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+20,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+42,0,"cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+36,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+43,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"s1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"c_out1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+37,0,"c_out2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("ha1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+20,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("ha2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+22,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+42,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+36,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+37,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("fa2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+24,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+25,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+43,0,"cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+38,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+26,0,"s1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"c_out1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"c_out2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("ha1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+24,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+25,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+26,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("ha2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+26,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+43,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+38,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("fa3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+28,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+29,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+40,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"s1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+31,0,"c_out1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+41,0,"c_out2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("ha1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+28,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+29,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+30,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+31,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("ha2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+30,0,"a",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+44,0,"b",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+40,0,"sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+41,0,"cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_init_top(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_init_top\n"); );
    // Body
    Vtb_adder_4bit___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_adder_4bit___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_adder_4bit___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_register(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vtb_adder_4bit___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vtb_adder_4bit___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vtb_adder_4bit___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vtb_adder_4bit___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_const_0\n"); );
    // Init
    Vtb_adder_4bit___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder_4bit___024root*>(voidSelf);
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
}

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_full_0_sub_0(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_full_0\n"); );
    // Init
    Vtb_adder_4bit___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder_4bit___024root*>(voidSelf);
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vtb_adder_4bit___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtb_adder_4bit___024root__trace_full_0_sub_0(Vtb_adder_4bit___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_adder_4bit__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder_4bit___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullCData(oldp+1,(vlSelf->tb_adder_4bit__DOT__a),4);
    bufp->fullCData(oldp+2,(vlSelf->tb_adder_4bit__DOT__b),4);
    bufp->fullBit(oldp+3,(vlSelf->tb_adder_4bit__DOT__cin));
    bufp->fullIData(oldp+4,(vlSelf->tb_adder_4bit__DOT__pass_cnt),32);
    bufp->fullIData(oldp+5,(vlSelf->tb_adder_4bit__DOT__fail_cnt),32);
    bufp->fullIData(oldp+6,(vlSelf->tb_adder_4bit__DOT__total),32);
    bufp->fullIData(oldp+7,(vlSelf->tb_adder_4bit__DOT__i),32);
    bufp->fullIData(oldp+8,(vlSelf->tb_adder_4bit__DOT__num_tests),32);
    bufp->fullIData(oldp+9,(vlSelf->tb_adder_4bit__DOT__max_fail_logs),32);
    bufp->fullIData(oldp+10,(vlSelf->tb_adder_4bit__DOT__fail_logs),32);
    bufp->fullIData(oldp+11,(vlSelf->tb_adder_4bit__DOT__seed),32);
    bufp->fullCData(oldp+12,(vlSelf->tb_adder_4bit__DOT__exp),5);
    bufp->fullCData(oldp+13,(vlSelf->tb_adder_4bit__DOT__exp_sum),4);
    bufp->fullBit(oldp+14,(vlSelf->tb_adder_4bit__DOT__exp_cout));
    bufp->fullDouble(oldp+15,(vlSelf->tb_adder_4bit__DOT__func_score));
    bufp->fullBit(oldp+17,((1U & (IData)(vlSelf->tb_adder_4bit__DOT__a))));
    bufp->fullBit(oldp+18,((1U & (IData)(vlSelf->tb_adder_4bit__DOT__b))));
    bufp->fullBit(oldp+19,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                  & (IData)(vlSelf->tb_adder_4bit__DOT__b)))));
    bufp->fullBit(oldp+20,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                  >> 1U))));
    bufp->fullBit(oldp+21,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__b) 
                                  >> 1U))));
    bufp->fullBit(oldp+22,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                   ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                  >> 1U))));
    bufp->fullBit(oldp+23,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                   & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                  >> 1U))));
    bufp->fullBit(oldp+24,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                  >> 2U))));
    bufp->fullBit(oldp+25,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__b) 
                                  >> 2U))));
    bufp->fullBit(oldp+26,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                   ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                  >> 2U))));
    bufp->fullBit(oldp+27,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                   & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                  >> 2U))));
    bufp->fullBit(oldp+28,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                  >> 3U))));
    bufp->fullBit(oldp+29,((1U & ((IData)(vlSelf->tb_adder_4bit__DOT__b) 
                                  >> 3U))));
    bufp->fullBit(oldp+30,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                   ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                  >> 3U))));
    bufp->fullBit(oldp+31,((1U & (((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                   & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                  >> 3U))));
    bufp->fullCData(oldp+32,(((8U & ((0xfffffff8U & 
                                      ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                       ^ (IData)(vlSelf->tb_adder_4bit__DOT__b))) 
                                     ^ ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3) 
                                        << 3U))) | 
                              ((4U & ((0xfffffffcU 
                                       & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                          ^ (IData)(vlSelf->tb_adder_4bit__DOT__b))) 
                                      ^ ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2) 
                                         << 2U))) | 
                               ((2U & ((0xfffffffeU 
                                        & ((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                           ^ (IData)(vlSelf->tb_adder_4bit__DOT__b))) 
                                       ^ ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1) 
                                          << 1U))) 
                                | ((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                                   ^ (IData)(vlSelf->tb_adder_4bit__DOT__cin)))))),4);
    bufp->fullBit(oldp+33,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                    & (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                   >> 3U) | ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                               ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                              >> 3U) 
                                             & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3))))));
    bufp->fullBit(oldp+34,(((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                            ^ (IData)(vlSelf->tb_adder_4bit__DOT__cin))));
    bufp->fullBit(oldp+35,(((IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1) 
                            & (IData)(vlSelf->tb_adder_4bit__DOT__cin))));
    bufp->fullBit(oldp+36,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                    ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                   >> 1U) ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1)))));
    bufp->fullBit(oldp+37,(((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                              ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                             >> 1U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1))));
    bufp->fullBit(oldp+38,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                    ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                   >> 2U) ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2)))));
    bufp->fullBit(oldp+39,(((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                              ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                             >> 2U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2))));
    bufp->fullBit(oldp+40,((1U & ((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                                    ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                                   >> 3U) ^ (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3)))));
    bufp->fullBit(oldp+41,(((((IData)(vlSelf->tb_adder_4bit__DOT__a) 
                              ^ (IData)(vlSelf->tb_adder_4bit__DOT__b)) 
                             >> 3U) & (IData)(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3))));
    bufp->fullBit(oldp+42,(vlSelf->tb_adder_4bit__DOT__uut__DOT__c1));
    bufp->fullBit(oldp+43,(vlSelf->tb_adder_4bit__DOT__uut__DOT__c2));
    bufp->fullBit(oldp+44,(vlSelf->tb_adder_4bit__DOT__uut__DOT__c3));
    bufp->fullBit(oldp+45,(vlSelf->tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1));
}
