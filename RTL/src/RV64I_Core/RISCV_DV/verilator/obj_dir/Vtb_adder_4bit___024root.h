// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_adder_4bit.h for the primary calling header

#ifndef VERILATED_VTB_ADDER_4BIT___024ROOT_H_
#define VERILATED_VTB_ADDER_4BIT___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_adder_4bit__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_adder_4bit___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*3:0*/ tb_adder_4bit__DOT__a;
    CData/*3:0*/ tb_adder_4bit__DOT__b;
    CData/*0:0*/ tb_adder_4bit__DOT__cin;
    CData/*4:0*/ tb_adder_4bit__DOT__exp;
    CData/*3:0*/ tb_adder_4bit__DOT__exp_sum;
    CData/*0:0*/ tb_adder_4bit__DOT__exp_cout;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__c1;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__c2;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__c3;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT____Vcellout__fa0__sum;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__fa0__DOT__s1;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__fa1__DOT__s1;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__fa2__DOT__s1;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__fa3__DOT__s1;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out1;
    CData/*0:0*/ tb_adder_4bit__DOT__uut__DOT__fa3__DOT__c_out2;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ tb_adder_4bit__DOT__pass_cnt;
    IData/*31:0*/ tb_adder_4bit__DOT__fail_cnt;
    IData/*31:0*/ tb_adder_4bit__DOT__total;
    IData/*31:0*/ tb_adder_4bit__DOT__i;
    IData/*31:0*/ tb_adder_4bit__DOT__num_tests;
    IData/*31:0*/ tb_adder_4bit__DOT__max_fail_logs;
    IData/*31:0*/ tb_adder_4bit__DOT__fail_logs;
    IData/*31:0*/ tb_adder_4bit__DOT__seed;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 5> __Vm_traceActivity;
    double tb_adder_4bit__DOT__func_score;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtb_adder_4bit__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_adder_4bit___024root(Vtb_adder_4bit__Syms* symsp, const char* v__name);
    ~Vtb_adder_4bit___024root();
    VL_UNCOPYABLE(Vtb_adder_4bit___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
