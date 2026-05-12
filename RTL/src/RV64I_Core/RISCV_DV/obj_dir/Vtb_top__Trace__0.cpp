// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_top__Syms.h"


void Vtb_top___024root__trace_chg_0_sub_0(Vtb_top___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtb_top___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root__trace_chg_0\n"); );
    // Init
    Vtb_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_top___024root*>(voidSelf);
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vtb_top___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtb_top___024root__trace_chg_0_sub_0(Vtb_top___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelf->tb_top__DOT__DUT__DOT__rd_enM));
        bufp->chgIData(oldp+1,(vlSelf->tb_top__DOT__DUT__DOT__PCD),32);
        bufp->chgIData(oldp+2,(vlSelf->tb_top__DOT__DUT__DOT__Op1E),32);
        bufp->chgIData(oldp+3,(vlSelf->tb_top__DOT__DUT__DOT__Op2E),32);
        bufp->chgIData(oldp+4,(vlSelf->tb_top__DOT__DUT__DOT__Immediate_E),32);
        bufp->chgIData(oldp+5,(vlSelf->tb_top__DOT__DUT__DOT__PCE),32);
        bufp->chgBit(oldp+6,(vlSelf->tb_top__DOT__DUT__DOT__BSelE));
        bufp->chgBit(oldp+7,(vlSelf->tb_top__DOT__DUT__DOT__func7E));
        bufp->chgBit(oldp+8,(vlSelf->tb_top__DOT__DUT__DOT__rd_enE));
        bufp->chgBit(oldp+9,(vlSelf->tb_top__DOT__DUT__DOT__AselE));
        bufp->chgBit(oldp+10,(vlSelf->tb_top__DOT__DUT__DOT__BrUnE));
        bufp->chgBit(oldp+11,(vlSelf->tb_top__DOT__DUT__DOT__BranchE));
        bufp->chgBit(oldp+12,(vlSelf->tb_top__DOT__DUT__DOT__JumpE));
        bufp->chgCData(oldp+13,(vlSelf->tb_top__DOT__DUT__DOT__ALUSelE),3);
        bufp->chgCData(oldp+14,(vlSelf->tb_top__DOT__DUT__DOT__WBSelE),2);
        bufp->chgCData(oldp+15,(vlSelf->tb_top__DOT__DUT__DOT__WBSelM),2);
        bufp->chgCData(oldp+16,(vlSelf->tb_top__DOT__DUT__DOT__WBSelW),2);
        bufp->chgIData(oldp+17,(vlSelf->tb_top__DOT__DUT__DOT__ALU_OpW),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        bufp->chgIData(oldp+18,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[0]),32);
        bufp->chgIData(oldp+19,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[1]),32);
        bufp->chgIData(oldp+20,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[2]),32);
        bufp->chgIData(oldp+21,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[3]),32);
        bufp->chgIData(oldp+22,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[4]),32);
        bufp->chgIData(oldp+23,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[5]),32);
        bufp->chgIData(oldp+24,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[6]),32);
        bufp->chgIData(oldp+25,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[7]),32);
        bufp->chgIData(oldp+26,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[8]),32);
        bufp->chgIData(oldp+27,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[9]),32);
        bufp->chgIData(oldp+28,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[10]),32);
        bufp->chgIData(oldp+29,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[11]),32);
        bufp->chgIData(oldp+30,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[12]),32);
        bufp->chgIData(oldp+31,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[13]),32);
        bufp->chgIData(oldp+32,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[14]),32);
        bufp->chgIData(oldp+33,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[15]),32);
        bufp->chgIData(oldp+34,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[16]),32);
        bufp->chgIData(oldp+35,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[17]),32);
        bufp->chgIData(oldp+36,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[18]),32);
        bufp->chgIData(oldp+37,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[19]),32);
        bufp->chgIData(oldp+38,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[20]),32);
        bufp->chgIData(oldp+39,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[21]),32);
        bufp->chgIData(oldp+40,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[22]),32);
        bufp->chgIData(oldp+41,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[23]),32);
        bufp->chgIData(oldp+42,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[24]),32);
        bufp->chgIData(oldp+43,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[25]),32);
        bufp->chgIData(oldp+44,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[26]),32);
        bufp->chgIData(oldp+45,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[27]),32);
        bufp->chgIData(oldp+46,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[28]),32);
        bufp->chgIData(oldp+47,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[29]),32);
        bufp->chgIData(oldp+48,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[30]),32);
        bufp->chgIData(oldp+49,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x[31]),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgIData(oldp+50,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_insn),32);
        bufp->chgCData(oldp+51,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs1_addr),5);
        bufp->chgCData(oldp+52,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs2_addr),5);
        bufp->chgCData(oldp+53,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs3_addr),5);
        bufp->chgIData(oldp+54,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs1_rdata),32);
        bufp->chgIData(oldp+55,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs2_rdata),32);
        bufp->chgIData(oldp+56,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rs3_rdata),32);
        bufp->chgCData(oldp+57,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rd_addr),5);
        bufp->chgIData(oldp+58,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_rd_wdata),32);
        bufp->chgIData(oldp+59,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_pc_rdata),32);
        bufp->chgIData(oldp+60,(vlSelf->tb_top__DOT__tracer_inst__DOT__rvfi_pc_wdata),32);
        bufp->chgIData(oldp+61,(vlSelf->tb_top__DOT__tracer_inst__DOT__file_handle),32);
        bufp->chgBit(oldp+62,(vlSelf->tb_top__DOT__tracer_inst__DOT__insn_is_compressed));
        bufp->chgCData(oldp+63,(vlSelf->tb_top__DOT__tracer_inst__DOT__data_accessed),5);
        bufp->chgBit(oldp+64,(vlSelf->tb_top__DOT__tracer_inst__DOT__rs1_float));
        bufp->chgBit(oldp+65,(vlSelf->tb_top__DOT__tracer_inst__DOT__rs2_float));
        bufp->chgBit(oldp+66,(vlSelf->tb_top__DOT__tracer_inst__DOT__rs3_float));
        bufp->chgBit(oldp+67,(vlSelf->tb_top__DOT__tracer_inst__DOT__rd_float));
        bufp->chgIData(oldp+68,(vlSelf->tb_top__DOT__tracer_inst__DOT__i),32);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[4U])) {
        bufp->chgIData(oldp+69,(vlSelf->tb_top__DOT__imem_addr),32);
        bufp->chgIData(oldp+70,(vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM),32);
        bufp->chgIData(oldp+71,(((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                  ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                      ? ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                          ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                             << 0x18U)
                                          : (0xff0000U 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                << 0x10U)))
                                      : ((1U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                          ? (0xff00U 
                                             & (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                                << 8U))
                                          : (0xffU 
                                             & vlSelf->tb_top__DOT__DUT__DOT__OP2M)))
                                  : ((1U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                      ? ((2U & vlSelf->tb_top__DOT__DUT__DOT__ALU_OpM)
                                          ? (vlSelf->tb_top__DOT__DUT__DOT__OP2M 
                                             << 0x10U)
                                          : (0xffffU 
                                             & vlSelf->tb_top__DOT__DUT__DOT__OP2M))
                                      : ((2U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__op_selM))
                                          ? vlSelf->tb_top__DOT__DUT__DOT__OP2M
                                          : 0U)))),32);
        bufp->chgBit(oldp+72,(vlSelf->tb_top__DOT__DUT__DOT__wd_enM));
        bufp->chgCData(oldp+73,(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__wstrb),4);
        bufp->chgBit(oldp+74,(vlSelf->tb_top__DOT__illegal_inst));
        bufp->chgIData(oldp+75,(vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB),32);
        bufp->chgCData(oldp+76,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB 
                                          >> 0xfU))),5);
        bufp->chgCData(oldp+77,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB 
                                          >> 0x14U))),5);
        bufp->chgIData(oldp+78,(vlSelf->tb_top__DOT__DUT__DOT__Op1W),32);
        bufp->chgIData(oldp+79,(vlSelf->tb_top__DOT__DUT__DOT__Op2W),32);
        bufp->chgCData(oldp+80,(((IData)(vlSelf->tb_top__DOT__DUT__DOT__w_enW)
                                  ? (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDW)
                                  : 0U)),5);
        bufp->chgIData(oldp+81,(((0U == (IData)(vlSelf->tb_top__DOT__DUT__DOT__RDW))
                                  ? 0U : vlSelf->tb_top__DOT__DUT__DOT__result)),32);
        bufp->chgIData(oldp+82,(vlSelf->tb_top__DOT__DUT__DOT__current_pc_m),32);
        bufp->chgIData(oldp+83,(((IData)(vlSelf->tb_top__DOT__DUT__DOT__pc_sel)
                                  ? vlSelf->tb_top__DOT__DUT__DOT__current_pc_d
                                  : vlSelf->tb_top__DOT__DUT__DOT__PCW_4)),32);
        bufp->chgIData(oldp+84,(vlSelf->tb_top__DOT__DUT__DOT__mem_addr),32);
        bufp->chgIData(oldp+85,(vlSelf->tb_top__DOT__DUT__DOT__mem_w_data),32);
        bufp->chgIData(oldp+86,(vlSelf->tb_top__DOT__DUT__DOT__memop),32);
        bufp->chgBit(oldp+87,((0U != vlSelf->tb_top__DOT__DUT__DOT__Instruction_WB)));
        bufp->chgIData(oldp+88,(vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch),32);
        bufp->chgIData(oldp+89,(vlSelf->tb_top__DOT__DUT__DOT__PC4),32);
        bufp->chgBit(oldp+90,(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux));
        bufp->chgIData(oldp+91,(vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode),32);
        bufp->chgIData(oldp+92,(vlSelf->tb_top__DOT__DUT__DOT__PCE_4),32);
        bufp->chgBit(oldp+93,(vlSelf->tb_top__DOT__DUT__DOT__w_enE));
        bufp->chgBit(oldp+94,(vlSelf->tb_top__DOT__DUT__DOT__wd_enE));
        bufp->chgCData(oldp+95,(vlSelf->tb_top__DOT__DUT__DOT__op_selE),3);
        bufp->chgCData(oldp+96,(vlSelf->tb_top__DOT__DUT__DOT__RDE),5);
        bufp->chgIData(oldp+97,(vlSelf->tb_top__DOT__DUT__DOT__OP2M),32);
        bufp->chgIData(oldp+98,(vlSelf->tb_top__DOT__DUT__DOT__PCM_4),32);
        bufp->chgBit(oldp+99,(vlSelf->tb_top__DOT__DUT__DOT__w_enM));
        bufp->chgCData(oldp+100,(vlSelf->tb_top__DOT__DUT__DOT__op_selM),3);
        bufp->chgCData(oldp+101,(vlSelf->tb_top__DOT__DUT__DOT__RDM),5);
        bufp->chgIData(oldp+102,(vlSelf->tb_top__DOT__DUT__DOT__Instruction_Mem),32);
        bufp->chgBit(oldp+103,(vlSelf->tb_top__DOT__DUT__DOT__w_enW));
        bufp->chgBit(oldp+104,(vlSelf->tb_top__DOT__DUT__DOT__Stall));
        bufp->chgCData(oldp+105,(vlSelf->tb_top__DOT__DUT__DOT__RDW),5);
        bufp->chgIData(oldp+106,(vlSelf->tb_top__DOT__DUT__DOT__PCW_4),32);
        bufp->chgIData(oldp+107,(vlSelf->tb_top__DOT__DUT__DOT__result),32);
        bufp->chgCData(oldp+108,(vlSelf->tb_top__DOT__DUT__DOT__Forward_A),2);
        bufp->chgCData(oldp+109,(vlSelf->tb_top__DOT__DUT__DOT__Forward_B),2);
        bufp->chgIData(oldp+110,(vlSelf->tb_top__DOT__DUT__DOT__Op1M),32);
        bufp->chgIData(oldp+111,(vlSelf->tb_top__DOT__DUT__DOT__current_pc_d),32);
        bufp->chgIData(oldp+112,(vlSelf->tb_top__DOT__DUT__DOT__current_pc_e),32);
        bufp->chgBit(oldp+113,(vlSelf->tb_top__DOT__DUT__DOT__pc_sel));
        bufp->chgIData(oldp+114,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Immediate),32);
        bufp->chgCData(oldp+115,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ALUSel),3);
        bufp->chgBit(oldp+116,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BSel));
        bufp->chgBit(oldp+117,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__w_en));
        bufp->chgBit(oldp+118,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__func7));
        bufp->chgBit(oldp+119,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__BrUn));
        bufp->chgBit(oldp+120,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__wd_en));
        bufp->chgBit(oldp+121,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__rd_en));
        bufp->chgCData(oldp+122,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__op_sel),3);
        bufp->chgCData(oldp+123,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__WBSel),2);
        bufp->chgCData(oldp+124,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__IMMSel),3);
        bufp->chgBit(oldp+125,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__ASel));
        bufp->chgBit(oldp+126,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Branch));
        bufp->chgBit(oldp+127,(vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__Jump));
        bufp->chgCData(oldp+128,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                           >> 0xfU))),5);
        bufp->chgCData(oldp+129,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                           >> 0x14U))),5);
        bufp->chgCData(oldp+130,((7U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                        >> 0xcU))),3);
        bufp->chgCData(oldp+131,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                           >> 2U))),5);
        bufp->chgBit(oldp+132,((1U & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                      >> 0x1eU))));
        bufp->chgIData(oldp+133,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data),32);
        bufp->chgIData(oldp+134,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op1),32);
        bufp->chgIData(oldp+135,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Op2),32);
        bufp->chgBit(oldp+136,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Lt));
        bufp->chgBit(oldp+137,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__Eq));
        bufp->chgIData(oldp+138,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In1),32);
        bufp->chgIData(oldp+139,(vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__In2),32);
        bufp->chgIData(oldp+140,(((IData)(4U) + vlSelf->tb_top__DOT__imem_addr)),32);
        bufp->chgCData(oldp+141,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                           >> 0xfU))),5);
        bufp->chgCData(oldp+142,((0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Decode 
                                           >> 0x14U))),5);
        bufp->chgIData(oldp+143,(vlSelf->tb_top__DOT__dmem_inst__DOT__local_addr),32);
        bufp->chgIData(oldp+144,(vlSelf->tb_top__DOT__dmem_inst__DOT__word_index),32);
        bufp->chgIData(oldp+145,((vlSelf->tb_top__DOT__imem_addr 
                                  - (IData)(0x80000000U))),32);
    }
    bufp->chgBit(oldp+146,(vlSelf->tb_top__DOT__clk));
    bufp->chgBit(oldp+147,(vlSelf->tb_top__DOT__reset_n));
    bufp->chgIData(oldp+148,(vlSelf->tb_top__DOT__imem_instance__DOT__imem
                             [(0x1fffU & ((vlSelf->tb_top__DOT__imem_addr 
                                           - (IData)(0x80000000U)) 
                                          >> 2U))]),32);
    bufp->chgIData(oldp+149,(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__word_in),32);
    bufp->chgBit(oldp+150,(((IData)(vlSelf->tb_top__DOT__DUT__DOT__rd_enM) 
                            | (IData)(vlSelf->tb_top__DOT__DUT__DOT__wd_enM))));
    bufp->chgIData(oldp+151,(vlSelf->tb_top__DOT__i),32);
    bufp->chgIData(oldp+152,(((IData)(vlSelf->tb_top__DOT__DUT__DOT__JumpE)
                               ? (0xfffffffeU & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data)
                               : vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data)),32);
    bufp->chgIData(oldp+153,(((0U == (0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                               >> 0xfU)))
                               ? 0U : vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x
                              [(0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                         >> 0xfU))])),32);
    bufp->chgIData(oldp+154,(((0U == (0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                               >> 0x14U)))
                               ? 0U : vlSelf->tb_top__DOT__DUT__DOT__Decode__DOT__RF__DOT__x
                              [(0x1fU & (vlSelf->tb_top__DOT__DUT__DOT__Instruction_Fetch 
                                         >> 0x14U))])),32);
    bufp->chgIData(oldp+155,(((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux)
                               ? ((IData)(vlSelf->tb_top__DOT__DUT__DOT__PC_Mux)
                                   ? ((IData)(vlSelf->tb_top__DOT__DUT__DOT__JumpE)
                                       ? (0xfffffffeU 
                                          & vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data)
                                       : vlSelf->tb_top__DOT__DUT__DOT__Execute__DOT__result_data)
                                   : ((IData)(4U) + vlSelf->tb_top__DOT__imem_addr))
                               : ((IData)(4U) + vlSelf->tb_top__DOT__imem_addr))),32);
    bufp->chgIData(oldp+156,(vlSelf->tb_top__DOT__DUT__DOT__Memory__DOT__load_extended),32);
    bufp->chgIData(oldp+157,(vlSelf->tb_top__DOT__dmem_inst__DOT__unnamedblk1__DOT__test_idx),32);
    bufp->chgIData(oldp+158,(vlSelf->tb_top__DOT__imem_instance__DOT__unnamedblk1__DOT__test_idx),32);
    bufp->chgIData(oldp+159,(vlSelf->tb_top__DOT__tracer_inst__DOT__cycle),32);
}

void Vtb_top___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_top___024root__trace_cleanup\n"); );
    // Init
    Vtb_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_top___024root*>(voidSelf);
    Vtb_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[4U] = 0U;
}
