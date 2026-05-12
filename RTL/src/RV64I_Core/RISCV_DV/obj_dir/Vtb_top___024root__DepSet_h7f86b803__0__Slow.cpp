// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_top.h for the primary calling header

#include "Vtb_top__pch.h"
#include "Vtb_top__Syms.h"
#include "Vtb_top___024root.h"

VL_ATTR_COLD void Vtb_top___024root___eval_initial__TOP(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_initial__TOP\n"); );
    // Init
    std::string tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__fname;
    std::string tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__fname;
    VlWide<3>/*95:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x2e766364U;
    __Vtemp_1[1U] = 0x5f746f70U;
    __Vtemp_1[2U] = 0x7462U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(3, __Vtemp_1));
    vlSymsp->_traceDumpOpen();
    if ((! VL_VALUEPLUSARGS_INN(64, std::string{"TEST=%s"}, 
                                vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_name))) {
        vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_name = 
            std::string{"riscv_arithmetic_basic_test"};
    }
    if ((! VL_VALUEPLUSARGS_INI(32, std::string{"IDX=%d"}, 
                                vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_idx))) {
        vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_idx = 0U;
    }
    tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__fname 
        = VL_SFORMATF_NX("/mnt/c/RV64I_Core/RV64_Core/tests/%@/imem_%0d.mem",
                         -1,&(vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_name),
                         32,vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_idx) ;
    VL_WRITEF("IMEM: Loading memory from %@\n",-1,&(tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__fname));
    VL_READMEM_N(true, 32, 8192, 0, VL_CVT_PACK_STR_NN(tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__fname)
                 ,  &(vlSelf->tb_top__DOT__imem_instance__DOT__imem)
                 , 0, ~0ULL);
    if ((! VL_VALUEPLUSARGS_INN(64, std::string{"TEST=%s"}, 
                                vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_name))) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_name = 
            std::string{"riscv_arithmetic_basic_test"};
    }
    if ((! VL_VALUEPLUSARGS_INI(32, std::string{"IDX=%d"}, 
                                vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_idx))) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_idx = 0U;
    }
    tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__fname 
        = VL_SFORMATF_NX("/mnt/c/RV64I_Core/RV64_Core/tests/%@/dmem_%0d.mem",
                         -1,&(vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_name),
                         32,vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_idx) ;
    VL_WRITEF("IMEM: Loading memory from %@\n",-1,&(tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__fname));
    VL_READMEM_N(true, 32, 32768, 0, VL_CVT_PACK_STR_NN(tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__fname)
                 ,  &(vlSelf->tb_top__DOT__dmem_inst__DOT__dmem)
                 , 0, ~0ULL);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__stl(Vtb_top___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_top___024root___eval_triggers__stl(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_top___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
