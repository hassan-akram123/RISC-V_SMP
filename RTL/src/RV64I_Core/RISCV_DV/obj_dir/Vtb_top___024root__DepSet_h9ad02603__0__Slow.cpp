// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_top.h for the primary calling header

#include "Vtb_top__pch.h"
#include "Vtb_top___024root.h"

VL_ATTR_COLD void Vtb_top___024root___eval_static__TOP(Vtb_top___024root* vlSelf);

VL_ATTR_COLD void Vtb_top___024root___eval_static(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_static\n"); );
    // Body
    Vtb_top___024root___eval_static__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[4U] = 1U;
    vlSelf->__Vm_traceActivity[3U] = 1U;
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vtb_top___024root___eval_static__TOP(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->tb_top__DOT__clk = 0U;
    vlSelf->tb_top__DOT__tracer_inst__DOT__i = 0U;
}

VL_ATTR_COLD void Vtb_top___024root___eval_final(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__stl(Vtb_top___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vtb_top___024root___eval_phase__stl(Vtb_top___024root* vlSelf);

VL_ATTR_COLD void Vtb_top___024root___eval_settle(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_settle\n"); );
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
            Vtb_top___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("/mnt/c/RV64I_Core/RV64_Core/tb/tb_top.sv", 1, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vtb_top___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__stl(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

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

VL_ATTR_COLD void Vtb_top___024root___stl_sequent__TOP__0(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___stl_sequent__TOP__0\n"); );
    // Init
    CData/*7:0*/ tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0;
    tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha192e6e4__0 = 0;
    CData/*7:0*/ tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0;
    tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha635407e__0 = 0;
    CData/*7:0*/ tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0;
    tb_top__DOT__DUT__DOT__Memory__DOT____VdfgTmp_ha65622a3__0 = 0;
    IData/*31:0*/ __VdfgTmp_h97f8a58f__0;
    __VdfgTmp_h97f8a58f__0 = 0;
    SData/*8:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    // Body
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
    vlSelf->tb_top__DOT__dmem_inst__DOT__local_addr 
        = ((0x80008000U <= vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
            ? (vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM 
               - (IData)(0x80008000U)) : 0U);
    vlSelf->tb_top__DOT__dmem_inst__DOT__word_index 
        = (vlSelf->tb_top__DOT__dmem_inst__DOT__local_addr 
           >> 2U);
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
    __VdfgTmp_h97f8a58f__0 = vlSelf->tb_top__DOT__dmem_inst__DOT__dmem
        [(0x7fffU & vlSelf->tb_top__DOT__dmem_inst__DOT__word_index)];
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

VL_ATTR_COLD void Vtb_top___024root___eval_stl(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vtb_top___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vtb_top___024root___eval_triggers__stl(Vtb_top___024root* vlSelf);

VL_ATTR_COLD bool Vtb_top___024root___eval_phase__stl(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vtb_top___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vtb_top___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__act(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge tb_top.clk or negedge tb_top.reset_n)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(negedge tb_top.clk)\n");
    }
    if ((4ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @(negedge tb_top.clk or negedge tb_top.reset_n)\n");
    }
    if ((8ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 3 is active: @(posedge tb_top.clk)\n");
    }
    if ((0x10ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 4 is active: @([changed] tb_top.illegal_inst)\n");
    }
    if ((0x20ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 5 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_top___024root___dump_triggers__nba(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge tb_top.clk or negedge tb_top.reset_n)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(negedge tb_top.clk)\n");
    }
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @(negedge tb_top.clk or negedge tb_top.reset_n)\n");
    }
    if ((8ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 3 is active: @(posedge tb_top.clk)\n");
    }
    if ((0x10ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 4 is active: @([changed] tb_top.illegal_inst)\n");
    }
    if ((0x20ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 5 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_top___024root___ctor_var_reset(Vtb_top___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->tb_top__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__reset_n = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__imem_addr = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__illegal_inst = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PCD = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PC4 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PC_Mux = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Op1E = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Op2E = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Immediate_E = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PCE = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PCE_4 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__BSelE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__func7E = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__w_enE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__wd_enE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__rd_enE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__AselE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__BrUnE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__BranchE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__JumpE = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__ALUSelE = VL_RAND_RESET_I(3);
    vlSelf->tb_top__DOT__DUT__DOT__op_selE = VL_RAND_RESET_I(3);
    vlSelf->tb_top__DOT__DUT__DOT__WBSelE = VL_RAND_RESET_I(2);
    vlSelf->tb_top__DOT__DUT__DOT__RDE = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__DUT__DOT__OP2M = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PCM_4 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__w_enM = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__wd_enM = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__rd_enM = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__op_selM = VL_RAND_RESET_I(3);
    vlSelf->tb_top__DOT__DUT__DOT__WBSelM = VL_RAND_RESET_I(2);
    vlSelf->tb_top__DOT__DUT__DOT__RDM = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__DUT__DOT__Instruction_Mem = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__w_enW = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Stall = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__WBSelW = VL_RAND_RESET_I(2);
    vlSelf->tb_top__DOT__DUT__DOT__RDW = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__DUT__DOT__ALU_OpW = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__PCW_4 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__memop = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__result = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Forward_A = VL_RAND_RESET_I(2);
    vlSelf->tb_top__DOT__DUT__DOT__Forward_B = VL_RAND_RESET_I(2);
    vlSelf->tb_top__DOT__DUT__DOT__Op1M = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Op1W = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Op2W = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__current_pc_d = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__current_pc_e = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__current_pc_m = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__mem_addr = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__mem_w_data = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__pc_sel = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Fetch__DOT__PC_next = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Immediate = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ALUSel = VL_RAND_RESET_I(3);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BSel = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__w_en = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__func7 = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BrUn = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Lt = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Eq = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__wd_en = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__rd_en = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__op_sel = VL_RAND_RESET_I(3);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__WBSel = VL_RAND_RESET_I(2);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel = VL_RAND_RESET_I(3);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ASel = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__PC_Mux = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Branch = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Jump = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 32; ++__Vi0) {
        vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Eq = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2 = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb = VL_RAND_RESET_I(4);
    vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__load_extended = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs3_addr_t = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs3_rdata_t = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_mem_rmask = VL_RAND_RESET_I(4);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_mem_wmask = VL_RAND_RESET_I(4);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_insn = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs1_addr = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs2_addr = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs3_addr = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs1_rdata = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs2_rdata = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs3_rdata = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rd_addr = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rd_wdata = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_pc_rdata = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_pc_wdata = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__tracer_inst__DOT__file_handle = 0;
    vlSelf->tb_top__DOT__tracer_inst__DOT__cycle = 0;
    vlSelf->tb_top__DOT__tracer_inst__DOT__insn_is_compressed = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__tracer_inst__DOT__data_accessed = VL_RAND_RESET_I(5);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rs1_float = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rs2_float = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rs3_float = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__tracer_inst__DOT__rd_float = VL_RAND_RESET_I(1);
    vlSelf->tb_top__DOT__tracer_inst__DOT__i = 0;
    for (int __Vi0 = 0; __Vi0 < 8192; ++__Vi0) {
        vlSelf->tb_top__DOT__imem_instance__DOT__imem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_idx = 0;
    for (int __Vi0 = 0; __Vi0 < 32768; ++__Vi0) {
        vlSelf->tb_top__DOT__dmem_inst__DOT__dmem[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->tb_top__DOT__dmem_inst__DOT__local_addr = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__dmem_inst__DOT__word_index = VL_RAND_RESET_I(32);
    vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_idx = 0;
    vlSelf->__Vdly__tb_top__DOT__DUT__DOT__Instruction_Fetch = VL_RAND_RESET_I(32);
    vlSelf->__Vdly__tb_top__DOT__DUT__DOT__PC4 = VL_RAND_RESET_I(32);
    vlSelf->__Vdly__tb_top__DOT__imem_addr = VL_RAND_RESET_I(32);
    vlSelf->__Vdly__tb_top__DOT__tracer_inst__DOT__cycle = 0;
    vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v0 = 0;
    vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v1 = 0;
    vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v2 = 0;
    vlSelf->__Vdlyvset__tb_top__DOT__dmem_inst__DOT__dmem__v3 = 0;
    vlSelf->__Vtrigprevexpr___TOP__tb_top__DOT__clk__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__tb_top__DOT__reset_n__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__tb_top__DOT__illegal_inst__0 = VL_RAND_RESET_I(1);
    vlSelf->__VactDidInit = 0;
    for (int __Vi0 = 0; __Vi0 < 5; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
