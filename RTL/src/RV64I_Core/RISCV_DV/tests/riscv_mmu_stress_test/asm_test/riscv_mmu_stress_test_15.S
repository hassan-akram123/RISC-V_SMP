.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x381111f7
                  li x1, 0x981d1e48
                  li x2, 0x9
                  li x3, 0x3
                  li x4, 0xd
                  li x5, 0xd
                  li x6, 0x4
                  li x7, 0x8
                  li x8, 0xe
                  li x9, 0xf271d400
                  li x10, 0x0
                  li x11, 0xf96a75fa
                  li x12, 0x6f31f532
                  li x13, 0x5
                  li x14, 0x104fac34
                  li x15, 0xf30d4244
                  li x16, 0xc
                  li x17, 0xfe781c39
                  li x18, 0xf9d02192
                  li x19, 0xfc922b86
                  li x20, 0x0
                  li x21, 0x28513336
                  li x22, 0xf332a5ee
                  li x24, 0x0
                  li x25, 0x4
                  li x26, 0xc
                  li x27, 0x3
                  li x29, 0x0
                  li x30, 0x2
                  li x31, 0x0
                  la x28, user_stack_end
main:             la           sp, region_0+1023 #start riscv_load_store_rand_instr_stream_4
                  sw           a0, 41(sp)
                  sb           s3, -45(sp)
                  lh           t0, 27(sp)
                  sb           s10, 32(sp)
                  lhu          t0, 29(sp)
                  or           s2, t5, t3
                  sll          s6, s0, t3
                  sltu         s10, s5, t5
                  lb           ra, 2(sp)
                  sh           a7, -43(sp)
                  slt          a2, a3, a3
                  slli         s1, a2, 27
                  lh           s0, 49(sp)
                  slti         s0, s3, 1071
                  lh           a2, 27(sp)
                  lb           a7, -4(sp)
                  lb           s1, 58(sp)
                  lb           s5, -40(sp)
                  lbu          s1, 27(sp)
                  sltiu        a3, sp, 1547
                  sh           s2, -7(sp)
                  andi         gp, a5, 357
                  add          s6, s2, a7
                  lh           s5, -7(sp)
                  sb           s1, 12(sp)
                  slt          s10, a5, t6
                  sll          s8, t6, a7
                  sra          s9, s7, t0
                  nop
                  sb           ra, 15(sp)
                  lh           s2, -13(sp)
                  lhu          a2, 43(sp)
                  sw           a0, 21(sp)
                  slti         t1, s5, 1077
                  slt          t0, s3, s0
                  addi         s1, s5, 1823
                  add          tp, s8, s7
                  sb           s2, -44(sp)
                  lbu          s10, -46(sp)
                  lhu          a3, -41(sp)
                  sw           s0, 33(sp)
                  xor          a7, s11, zero
                  slt          t6, t6, s8
                  lh           t0, 27(sp)
                  sb           tp, -29(sp)
                  sb           gp, -28(sp)
                  lb           s5, 2(sp)
                  nop
                  srli         s8, zero, 16
                  xori         zero, a4, 946
                  lw           s3, -11(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s8, region_1+407 #start load_store_instr_stream_3
                  la           sp, region_1+1352 #start load_store_instr_stream_2
                  lh           s5, 1129(s8)
                  la           s6, region_1+507 #start load_store_instr_stream_0
                  lbu          tp, 1311(s8)
                  lw           t0, 169(s6)
                  la           s3, region_1+716 #start load_store_instr_stream_1
                  lhu          s9, 0(sp)
                  lbu          a4, 19(sp)
                  lbu          t6, -41(sp)
                  lb           zero, -306(s8)
                  lbu          t6, 117(s6)
                  lbu          s5, -5(sp)
                  lbu          a5, -14(s3)
                  lhu          a4, -34(sp)
                  lb           a1, 1102(s8)
                  lbu          t2, 498(s8)
                  sb           gp, 778(s8)
                  lb           tp, -26(s6)
                  sb           s0, 10(s3)
                  sb           tp, -7(sp)
                  lbu          s5, -94(s6)
                  sb           s5, 664(s8)
                  lb           gp, 33(sp)
                  lb           s5, 15(s3)
                  lb           s9, -66(s8)
                  lb           s0, -21(s6)
                  sb           t5, -31(sp)
                  lh           s10, 155(s6)
                  lbu          s2, 1(s3)
                  lhu          s1, -4(s3)
                  lb           s5, 1086(s8)
                  sw           a4, -83(s6)
                  lb           t2, -193(s6)
                  sb           zero, 27(sp) #end load_store_instr_stream_2
                  lbu          gp, 541(s8) #end load_store_instr_stream_3
                  sb           s4, 7(s3) #end load_store_instr_stream_1
                  sb           t5, -106(s6) #end load_store_instr_stream_0
                  la           t1, region_0+1973 #start load_store_instr_stream_1
                  la           a7, region_0+1623 #start load_store_instr_stream_2
                  la           a4, region_0+691 #start load_store_instr_stream_0
                  lbu          a1, 12(t1)
                  sh           s5, -211(a4)
                  lb           tp, 12(a7)
                  lhu          s11, 1(t1)
                  sb           s10, -2(t1)
                  lbu          a0, -16(a4)
                  lhu          s2, -5(a7)
                  lw           s6, -7(a7)
                  lb           tp, -82(a4)
                  sw           a5, 241(a4)
                  lw           t2, 3(t1)
                  lb           s0, -7(a7)
                  lb           s10, 7(t1)
                  lbu          zero, 10(t1)
                  lbu          a2, -252(a4)
                  sb           s4, -16(a7)
                  lbu          a5, -12(t1)
                  sw           s5, -5(t1)
                  sb           s4, 92(a4)
                  lbu          s9, 7(a7) #end load_store_instr_stream_2
                  lh           t6, -9(t1) #end load_store_instr_stream_1
                  lh           s9, 167(a4) #end load_store_instr_stream_0
                  la           t0, region_1+1142 #start riscv_load_store_rand_instr_stream_3
                  srli         t6, s4, 6
                  slti         t1, a4, 1056
                  auipc        a0, 1040043
                  sra          t5, t1, a4
                  sb           t5, -73(t0)
                  slli         s8, s0, 2
                  andi         tp, a2, 2012
                  ori          s10, a0, 36
                  xor          a0, s8, zero
                  sll          a1, a5, a6
                  add          ra, a7, s9
                  lb           a2, -225(t0)
                  andi         s10, tp, 198
                  sltiu        s2, s9, -39
                  lb           t1, -256(t0)
                  ori          s6, s11, -1970
                  srli         s8, t5, 24
                  slli         a6, t4, 21
                  lbu          t1, 191(t0)
                  lw           a4, 110(t0)
                  sb           a5, 147(t0)
                  sltu         a4, a4, s9
                  lbu          s5, -64(t0)
                  xori         a3, a1, -648
                  auipc        s11, 804548
                  and          s1, s3, t6
                  lh           t2, 228(t0)
                  xor          a5, t0, a1
                  sh           t1, -142(t0)
                  sh           t6, -44(t0)
                  lbu          s6, 157(t0)
                  srl          t6, s3, s6
                  lh           t6, 12(t0) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_0+481 #start riscv_load_store_hazard_instr_stream_5
                  sb           s0, 34(t1)
                  sb           a3, 3(t1)
                  sh           s9, 3(t1)
                  lh           tp, -33(t1)
                  lb           s3, 38(t1)
                  sb           s10, 4(t1)
                  sub          a3, s1, t3
                  lb           zero, 4(t1)
                  lb           s9, 53(t1)
                  lhu          s5, 53(t1)
                  slti         t2, a6, 1223
                  sb           a7, 46(t1)
                  sltiu        t6, a2, -658
                  sb           tp, -14(t1)
                  lbu          s10, 35(t1)
                  sb           s1, 2(t1)
                  lb           s2, 2(t1)
                  sb           a7, 12(t1)
                  sw           gp, 15(t1) #end riscv_load_store_hazard_instr_stream_5
                  la           a0, region_1+1773 #start load_store_instr_stream_1
                  la           s5, region_1+1554 #start load_store_instr_stream_3
                  la           s11, region_1+1437 #start load_store_instr_stream_0
                  sb           t5, -6(a0)
                  la           s4, region_1+1208 #start load_store_instr_stream_2
                  sh           s3, 196(s5)
                  sb           t0, -134(s11)
                  lhu          s3, 88(s4)
                  lbu          ra, 8(a0)
                  sb           t3, 152(s11)
                  lb           sp, 239(s4)
                  lb           gp, -5(a0)
                  lb           sp, 2(a0)
                  sh           s5, 237(s11)
                  sb           a0, -245(s5)
                  lbu          s1, 193(s5)
                  lb           tp, 21(s5)
                  sb           s4, 13(a0)
                  lb           s3, -223(s11)
                  lw           zero, -9(a0)
                  lw           a5, 48(s4)
                  sb           s2, 196(s11)
                  sb           s7, 5(a0)
                  sh           a4, 118(s5)
                  lhu          zero, 100(s4)
                  lb           s1, 111(s4) #end load_store_instr_stream_2
                  lbu          ra, 239(s5)
                  lb           a6, -24(s11)
                  sb           s0, -16(s5) #end load_store_instr_stream_3
                  sh           sp, 11(a0) #end load_store_instr_stream_1
                  lhu          s9, 31(s11)
                  sb           t2, -236(s11)
                  sb           sp, -204(s11) #end load_store_instr_stream_0
                  la           t6, region_0+1171 #start load_store_instr_stream_2
                  la           s1, region_0+1885 #start load_store_instr_stream_1
                  lh           gp, -15(t6)
                  lbu          s0, -8(s1)
                  la           a7, region_0+414 #start load_store_instr_stream_0
                  lbu          a4, -59(a7)
                  lb           a6, -1(s1)
                  sb           s7, -9(s1)
                  lbu          s11, 16(t6)
                  lhu          a1, -3(s1)
                  sb           s6, 1333(a7)
                  lb           s4, -10(t6)
                  sh           s6, -3(s1)
                  lbu          ra, 1201(a7)
                  lb           t2, -8(t6)
                  lbu          s2, -10(s1)
                  sh           zero, 7(s1)
                  lw           zero, -3(t6)
                  lbu          ra, 12(s1)
                  lhu          t0, 5(t6)
                  lhu          a4, -5(s1) #end load_store_instr_stream_1
                  sb           gp, 783(a7)
                  lbu          t1, -6(t6) #end load_store_instr_stream_2
                  lh           gp, 376(a7) #end load_store_instr_stream_0
                  la           gp, region_0+74 #start load_store_instr_stream_4
                  la           s5, region_0+1385 #start load_store_instr_stream_1
                  lbu          a5, -15(s5)
                  la           a6, region_0+1393 #start load_store_instr_stream_3
                  la           s0, region_0+201 #start load_store_instr_stream_0
                  lbu          a5, 13(s5)
                  sb           s1, 51(gp)
                  lb           a1, -14(s5)
                  la           s6, region_0+1177 #start load_store_instr_stream_2
                  lb           t2, -569(s6)
                  lbu          t1, 79(s0)
                  lhu          zero, 15(s5)
                  lb           ra, 50(a6)
                  lw           a7, -153(s6)
                  sh           s9, 45(s0)
                  lb           tp, 52(gp)
                  sh           a0, -43(a6)
                  sb           a6, 4(s5)
                  sb           s9, 4(gp)
                  lbu          a4, 247(s6)
                  lb           a1, 25(gp)
                  sb           s7, 14(s5)
                  lh           a1, -39(a6)
                  lh           t1, -619(s6)
                  lh           a5, 115(s0)
                  lb           tp, -11(a6)
                  lbu          tp, -41(gp) #end load_store_instr_stream_4
                  lbu          ra, 10(s0)
                  lhu          tp, -95(s0)
                  sb           t6, 9(s5)
                  lb           t1, 100(s0)
                  lw           s4, -9(s5)
                  sh           s4, 685(s6) #end load_store_instr_stream_2
                  lbu          a3, -16(s5)
                  sb           a0, -15(s0)
                  sb           zero, 1(s5) #end load_store_instr_stream_1
                  sb           tp, 16(a6) #end load_store_instr_stream_3
                  sb           a5, -188(s0) #end load_store_instr_stream_0
                  la           sp, region_1+1424 #start riscv_load_store_rand_instr_stream_2
                  lui          s4, 201508
                  sb           t4, -60(sp)
                  sb           t1, 25(sp)
                  sub          t0, t6, s4
                  lb           s8, 32(sp)
                  sb           sp, 56(sp)
                  lb           a7, 52(sp)
                  lhu          zero, 4(sp)
                  xor          a4, t6, a4
                  srli         a1, s6, 0
                  lb           tp, -55(sp)
                  sb           t5, -47(sp)
                  lb           s1, 31(sp)
                  lw           tp, -40(sp)
                  auipc        a1, 71682
                  lb           a1, -18(sp)
                  or           tp, ra, a6
                  lbu          s6, -41(sp)
                  sb           s3, -22(sp)
                  or           t2, a6, sp
                  sh           s2, -10(sp)
                  or           a1, s0, s8
                  sh           t4, 34(sp)
                  auipc        s2, 669867
                  and          a4, zero, t5
                  lhu          s2, 60(sp)
                  sb           t5, -40(sp)
                  add          a4, t0, s2
                  nop
                  sb           a5, 23(sp)
                  srl          a5, s2, a6
                  sb           tp, -33(sp)
                  or           zero, a6, a3
                  sra          a7, a2, tp
                  lhu          t5, 54(sp)
                  sw           s7, 60(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1578 #start riscv_load_store_rand_instr_stream_1
                  sb           s3, 367(sp)
                  ori          a5, t3, -1594
                  slti         a3, t0, 488
                  lbu          a0, -559(sp)
                  lb           t5, -330(sp)
                  srli         s4, s11, 15
                  slt          s5, a1, t1
                  lh           s4, 248(sp)
                  or           t0, zero, a5
                  lw           zero, -558(sp)
                  nop
                  lbu          s3, -946(sp)
                  lhu          t2, 304(sp)
                  lhu          a0, -1336(sp)
                  sb           a5, -922(sp)
                  slti         s6, s4, -649
                  sb           t6, -161(sp)
                  sb           zero, -23(sp)
                  lb           a4, 140(sp)
                  xor          zero, a1, a3
                  lbu          a2, -812(sp)
                  lhu          a5, -300(sp)
                  sw           tp, 26(sp)
                  lw           s8, -1330(sp)
                  lb           a6, -1271(sp)
                  lbu          s6, -451(sp)
                  nop
                  andi         s2, tp, -1143
                  lbu          t5, -1365(sp)
                  sh           t1, -484(sp)
                  auipc        s10, 779836
                  addi         a3, a7, -1650
                  sll          a5, s6, t3
                  add          s10, s10, a0
                  addi         tp, s10, -1869
                  sb           s10, -291(sp)
                  lb           a4, 117(sp)
                  xor          a0, a2, s1
                  lb           t0, -1083(sp)
                  sb           s10, -433(sp)
                  lb           a4, -1578(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+481 #start riscv_load_store_hazard_instr_stream_4
                  sb           sp, -64(sp)
                  lbu          s4, -64(sp)
                  and          s10, a4, zero
                  lbu          t5, 164(sp)
                  sh           sp, 1(sp)
                  lbu          a5, 1(sp)
                  lbu          tp, 78(sp)
                  sb           s10, 62(sp)
                  sltiu        a7, t2, -556
                  sb           s3, 142(sp)
                  srl          a4, a7, a6
                  lb           s10, 142(sp)
                  sb           s11, 142(sp)
                  sub          a6, s3, s4
                  lbu          a0, 142(sp)
                  lb           s9, 142(sp)
                  addi         t1, s9, -692
                  lbu          a5, 142(sp)
                  lbu          s10, 142(sp)
                  ori          zero, t5, 1859
                  lbu          a3, 142(sp)
                  lbu          a2, 142(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_0+1004 #start riscv_load_store_hazard_instr_stream_0
                  slli         s8, s6, 28
                  sll          a0, t2, s7
                  sra          tp, s6, s3
                  andi         a3, s10, -16
                  sb           s8, -34(sp)
                  sb           gp, -34(sp)
                  lhu          ra, -34(sp)
                  addi         t6, s10, -1348
                  lh           s2, -34(sp)
                  lh           t5, -34(sp)
                  sh           s2, -34(sp)
                  sh           s1, -10(sp)
                  lhu          a6, -10(sp)
                  andi         s2, s1, 1777
                  sb           s6, -10(sp)
                  lb           s11, -10(sp)
                  sb           a3, -17(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a6, region_1+357 #start load_store_instr_stream_2
                  la           a5, region_1+1270 #start load_store_instr_stream_1
                  sb           t4, 1044(a6)
                  lhu          t5, -110(a5)
                  lbu          a7, -1206(a5)
                  lbu          tp, 643(a6)
                  lb           a4, 844(a6)
                  la           s10, region_1+1284 #start load_store_instr_stream_0
                  lbu          s1, -294(a6)
                  lh           t1, -350(a5)
                  lbu          s11, 298(a6)
                  sb           s4, 136(a5)
                  lh           t6, 6(s10)
                  sb           ra, -16(s10)
                  lbu          zero, -5(s10)
                  sh           a5, 579(a6)
                  lb           ra, -953(a5)
                  lw           s8, -1258(a5)
                  lbu          zero, -1246(a5) #end load_store_instr_stream_1
                  lb           t6, -13(s10)
                  lb           a3, 11(s10)
                  sb           tp, -4(s10)
                  sb           ra, 14(s10)
                  sb           a3, 647(a6)
                  lbu          a2, 1030(a6) #end load_store_instr_stream_2
                  sb           t2, -3(s10) #end load_store_instr_stream_0
                  la           s5, region_1+1889 #start riscv_load_store_rand_instr_stream_5
                  sb           ra, -1459(s5)
                  lbu          s4, -1111(s5)
                  xor          sp, t5, sp
                  xori         a5, t5, -427
                  add          ra, s4, s0
                  sb           a1, -602(s5)
                  lhu          zero, -335(s5)
                  sw           tp, -29(s5)
                  sb           a6, -701(s5)
                  slli         sp, a1, 19
                  addi         s4, s0, 943
                  sb           s0, -1121(s5)
                  lb           s8, -230(s5)
                  sw           a3, -801(s5)
                  lb           a5, -1589(s5)
                  lb           a5, -457(s5)
                  lbu          s8, -1412(s5)
                  lbu          t6, -294(s5)
                  and          sp, t2, a4
                  sb           zero, -567(s5)
                  sb           a7, -918(s5)
                  lbu          a6, -443(s5)
                  sb           a2, -1364(s5)
                  lb           s8, -1229(s5)
                  ori          s4, t0, 40
                  sb           s11, -980(s5)
                  sltiu        t2, s0, 908
                  and          t6, s1, a6
                  sb           s0, -532(s5)
                  lbu          a1, -1872(s5)
                  sw           s1, -1453(s5)
                  sb           zero, -130(s5)
                  lb           ra, -1140(s5)
                  sra          a6, a2, a4
                  sb           a5, -1487(s5)
                  lb           a2, -281(s5)
                  lw           tp, -945(s5) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+138 #start riscv_load_store_hazard_instr_stream_1
                  sh           a2, 16(sp)
                  sb           s9, -17(sp)
                  lb           s9, -17(sp)
                  lb           t5, -17(sp)
                  lb           s6, -29(sp)
                  lbu          s9, -32(sp)
                  sh           sp, -32(sp)
                  lhu          t5, -32(sp)
                  lb           s4, 50(sp)
                  lh           t2, 50(sp)
                  sh           t3, 14(sp)
                  srai         a4, a4, 20
                  srli         tp, a0, 13
                  lbu          a4, -48(sp)
                  sltiu        s5, a5, -318
                  srli         s11, ra, 14
                  lb           t5, -48(sp)
                  lb           a0, 38(sp)
                  lb           a3, 38(sp)
                  lbu          s2, 38(sp)
                  lh           t6, 42(sp) #end riscv_load_store_hazard_instr_stream_1
                  sltu         gp, t2, s3
                  srl          sp, s1, s11
                  lui          s0, 860908
                  xor          t0, tp, a4
                  slt          s9, s11, s6
                  bge          t3, a3, 12f
                  or           s11, a2, ra
                  sltu         a5, a5, t4
                  add          s0, t3, s7
                  bne          a4, t6, 15f
                  bge          t3, a1, 17f
                  bltu         s1, ra, 22f
12:               sub          s2, a2, a7
                  andi         gp, s11, -147
                  and          s10, s2, zero
15:               blt          s2, s0, 21f
                  xor          t5, s10, tp
17:               nop
                  sltu         t6, a7, a3
                  la           sp, region_0+556 #start riscv_load_store_rand_instr_stream_0
                  sll          a6, s5, a5
                  lbu          t6, 1175(sp)
                  sb           s10, 327(sp)
                  srai         s10, a7, 27
                  lb           a3, 1115(sp)
                  xori         s9, ra, 1922
                  ori          a1, t0, 1848
                  sb           a6, 1265(sp)
                  auipc        t6, 222319
                  sll          s8, a4, a4
                  lb           a0, -24(sp)
                  lui          t5, 157462
                  xor          s9, s9, gp
                  lbu          t0, 867(sp)
                  slli         s2, s1, 8
                  sll          s11, t2, gp
                  slt          a5, t3, sp
                  and          zero, s10, s4
                  auipc        s4, 904306
                  slli         a6, s1, 21
                  sub          a4, s10, s2
                  lb           s8, 516(sp)
                  ori          s5, zero, 668
                  srai         a3, a0, 5
                  slti         s9, a0, 1205
                  sll          tp, ra, s3
                  lbu          s11, 1182(sp)
                  srl          s2, a3, t1
                  lb           a3, 879(sp)
                  and          t2, s5, s2
                  lb           tp, -406(sp)
                  nop
                  sb           a4, -508(sp)
                  andi         a1, zero, -212
                  slli         s9, t5, 21
                  sb           s2, 1344(sp)
                  lb           a2, 1043(sp)
                  sb           tp, 136(sp)
                  auipc        tp, 271312
                  slli         s10, s4, 3
                  srli         a0, s1, 29
                  srl          zero, a1, a6
                  sltiu        s0, s3, 290
                  lb           s3, 1103(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         a3, a6, s9
                  or           s5, s5, t0
21:               ori          s10, a2, -1764
22:               ori          s1, a0, 1187
                  nop
                  sll          s8, s11, s1
                  beq          gp, a4, 42f
                  bltu         s5, a1, 39f
                  lui          s10, 822828
                  nop
                  srai         s5, s3, 0
                  bne          s11, s11, 32f
                  srai         a5, t0, 12
32:               add          sp, sp, s0
                  auipc        a2, 895728
                  sra          a1, s8, a5
                  bltu         t1, s4, 47f
                  slt          a0, t0, t4
                  andi         s5, s1, 2042
                  blt          s11, t1, 46f
39:               nop
                  slt          s10, t3, s10
                  andi         s3, s5, 1687
42:               slti         s3, a4, 114
                  sltiu        tp, tp, 903
                  or           a0, s0, t1
                  auipc        a2, 687651
46:               slli         sp, ra, 12
47:               sltiu        s1, gp, 1782
                  beq          zero, t6, 59f
                  ori          a7, s3, -1876
                  srli         gp, a4, 29
                  slli         t6, s1, 3
                  addi         s3, a7, 138
                  slt          a6, a4, a6
                  add          s4, t5, s9
                  bgeu         s7, s1, 71f
                  xor          t6, t5, s10
                  srli         t5, s1, 11
                  add          s3, t6, t2
59:               blt          s11, s10, 73f
                  bgeu         a3, a6, 63f
                  or           sp, s7, a2
                  slli         t5, s2, 14
63:               bltu         tp, s5, 72f
                  sub          s8, s9, a6
                  nop
                  sll          t6, sp, zero
                  bltu         a0, t0, 83f
                  and          t5, t6, gp
                  srli         t0, a4, 30
                  auipc        t5, 838544
71:               addi         a6, s0, 1531
72:               srl          s6, t2, a6
73:               srai         t1, a1, 12
                  addi         a3, a3, 636
                  slli         a4, a3, 20
                  add          t2, a4, t1
                  andi         ra, t3, 662
                  srl          s10, tp, t1
                  srai         a4, s6, 0
                  xor          s8, s7, s7
                  sub          zero, s2, t4
                  slt          s9, a0, t2
83:               auipc        s5, 51136
                  sra          gp, s3, a5
                  or           a0, t4, t2
                  bge          t6, t1, 89f
                  xor          ra, t6, tp
                  lui          s3, 628598
89:               srl          sp, t1, gp
                  or           tp, gp, a2
                  add          a4, s4, t6
                  xor          tp, s9, a5
                  sra          s3, gp, s4
                  xori         tp, s3, -242
                  sll          s5, a2, s11
                  add          sp, tp, s10
                  sub          a7, t6, s7
                  sra          a4, s10, t2
                  srai         s2, t4, 20
                  bge          s2, a1, 118f
                  nop
                  sltiu        a1, s7, 1710
                  lui          a2, 95302
                  xor          a5, t1, t5
                  andi         a3, t0, -98
                  addi         t2, s6, 828
                  bltu         s3, s11, 126f
                  blt          a4, a5, 116f
                  ori          a3, s0, 952
                  sll          a2, t0, a3
                  nop
                  xor          s1, t2, s5
                  slti         t6, s0, 812
                  beq          s10, s2, 125f
                  bge          s11, s9, 119f
116:              sub          s9, a0, s3
                  ori          s9, t5, -629
118:              bgeu         s1, tp, 120f
119:              addi         gp, a6, 1626
120:              srai         a0, s7, 27
                  blt          s0, s2, 134f
                  and          s3, t4, s9
                  sltiu        s4, t2, -1992
                  add          t6, a2, a1
125:              sra          gp, t0, gp
126:              bgeu         s8, a1, 140f
                  bgeu         a4, a2, 131f
                  bge          s8, a0, 130f
                  sltu         s3, s6, t5
130:              add          a4, t3, s9
131:              srai         s2, s4, 19
                  nop
                  sub          a7, t2, a6
134:              bge          s10, tp, 147f
                  ori          zero, s9, -959
                  or           tp, a2, s2
                  addi         a1, s9, -1637
                  sll          t5, zero, s8
                  addi         s3, s7, -736
140:              beq          t4, a6, 152f
                  and          zero, s4, tp
                  sub          t1, gp, t1
                  slti         ra, a6, -872
                  slli         t2, a5, 21
                  xor          a1, a2, t0
                  bne          ra, s1, 151f
147:              sltiu        a1, t6, 1819
                  bltu         s2, sp, 161f
                  blt          t2, a1, 155f
                  slti         ra, s4, -1582
151:              sltu         a6, t3, t5
152:              lui          s3, 202741
                  auipc        a7, 201371
                  beq          gp, tp, 165f
155:              and          s5, s10, s11
                  srli         a4, t2, 23
                  slt          s10, t1, a6
                  bgeu         t6, zero, 175f
                  bltu         t6, gp, 163f
                  nop
161:              bge          t0, a6, 177f
                  bge          s7, s1, 174f
163:              srl          t0, a2, gp
                  bge          t0, a1, 166f
165:              slli         s1, s1, 17
166:              xor          a5, s0, a7
                  bne          a3, a0, 170f
                  sll          a7, tp, s5
                  slt          a2, a7, t2
170:              bgeu         ra, a1, 186f
                  sub          s1, zero, a4
                  blt          s7, a1, 178f
                  blt          s1, t0, 175f
174:              lui          s6, 777655
175:              slli         s9, s3, 0
                  slli         t1, s7, 2
177:              nop
178:              auipc        s1, 670590
                  addi         s2, zero, 925
                  bge          s4, a6, 182f
                  sra          t2, s3, ra
182:              slt          s6, t3, t3
                  lui          s8, 838653
                  bne          t2, s5, 192f
                  nop
186:              lui          s9, 660337
                  slli         t1, a5, 6
                  nop
                  slti         t2, s2, -79
                  bltu         s9, s10, 201f
                  addi         s0, s4, -835
192:              srai         s6, t6, 8
                  beq          s6, s7, 201f
                  and          t0, a6, a1
                  slli         t1, s4, 29
                  bne          a6, s10, 210f
                  sltu         ra, a7, t0
                  sub          s3, tp, t3
                  nop
                  sltu         tp, s3, s2
201:              addi         a1, s2, -845
                  bge          s6, s7, 216f
                  or           a2, s3, t6
                  sltiu        t2, s6, 1254
                  srli         a4, t4, 26
                  sltu         s0, s7, t3
                  srl          s3, t4, a0
                  auipc        s4, 386908
                  slli         sp, s4, 15
210:              slli         t5, gp, 24
                  nop
                  slt          s2, s3, a7
                  addi         a0, t5, 487
                  slti         s3, tp, 537
                  xori         s2, t2, -586
216:              bne          a6, s7, 227f
                  and          s11, s9, t4
                  sub          s8, t6, s5
                  slli         s0, t0, 16
                  add          a5, s11, s6
                  bne          a4, t5, 230f
                  sltu         ra, ra, ra
                  slti         a2, s4, -577
                  sll          a1, t5, a7
                  blt          gp, t1, 237f
                  sll          s1, a0, s0
227:              nop
                  beq          sp, s3, 247f
                  sltu         t5, t3, a2
230:              or           a0, t1, a4
                  bne          s6, s5, 234f
                  slti         s3, s0, -222
                  xor          a7, s7, t3
234:              addi         sp, s9, 1741
                  sra          s10, s5, s7
                  slli         s9, s8, 4
237:              lui          s9, 671485
                  slti         s6, a0, 552
                  lui          s8, 958667
                  bltu         s7, s5, 245f
                  bne          a5, s0, 254f
                  bltu         a4, s1, 249f
                  beq          a0, a3, 256f
                  or           a4, s7, s1
245:              bgeu         a2, gp, 249f
                  srli         s1, s2, 22
247:              bgeu         a6, ra, 265f
                  sll          a3, a2, s9
249:              or           t2, zero, t3
                  nop
                  xori         a6, t6, 1103
                  sltiu        a7, s9, -1666
                  slli         s3, a4, 4
254:              sltu         t5, a3, s3
                  bltu         t4, a1, 262f
                  la           sp, region_0+1649 #start riscv_load_store_hazard_instr_stream_2
                  auipc        ra, 1033154
                  lb           ra, -1424(sp)
                  sh           s11, -267(sp)
                  sltiu        s0, zero, 1602
                  lhu          gp, -267(sp)
                  sub          s1, a0, tp
                  lbu          ra, -1429(sp)
                  lw           a3, -1121(sp)
                  lbu          s1, -1121(sp)
                  sb           t4, -589(sp)
                  sw           ra, 307(sp)
                  lbu          s8, 307(sp)
                  sw           tp, 307(sp)
                  lb           tp, -1453(sp)
                  lb           s9, -625(sp)
                  lbu          t1, -625(sp) #end riscv_load_store_hazard_instr_stream_2
256:              andi         sp, s10, 261
                  beq          s11, s1, 259f
                  blt          a6, s10, 264f
259:              add          a6, s4, s1
                  srai         s5, s2, 19
                  add          s4, t2, s4
262:              add          s1, s0, sp
                  or           zero, s6, a5
264:              slt          t0, s8, a2
265:              sub          t0, s3, a0
                  beq          a0, s9, 277f
                  sltiu        s2, a1, 1539
                  sltiu        a0, t5, 1750
                  sll          tp, a7, s1
                  slli         zero, s7, 8
                  bge          s2, sp, 273f
                  sra          s0, s0, t1
273:              slli         s10, s3, 21
                  bne          a4, s4, 281f
                  sll          t5, a6, a6
                  lui          a1, 324921
277:              xori         s4, s10, -619
                  addi         a0, t5, 1365
                  slt          s2, s0, gp
                  add          t1, t1, a3
281:              sra          s0, zero, s7
                  blt          t5, a7, 293f
                  bgeu         t3, s10, 291f
                  slti         t2, s2, 1877
                  slt          sp, s9, s0
                  lui          a6, 1030805
                  lui          a7, 797728
                  sltiu        s5, s10, -562
                  bge          a0, t3, 293f
                  sra          t6, s4, gp
291:              xori         s4, s3, 963
                  nop
293:              bltu         s2, s7, 299f
                  srli         t6, t5, 18
                  sra          s2, t5, a5
                  srai         t5, t6, 25
                  srli         t0, t4, 26
                  addi         a7, s7, 2040
299:              add          sp, zero, a7
                  sltiu        s2, t0, 380
                  sltiu        a1, a0, -1063
                  xor          t1, s4, ra
                  andi         s1, s2, 1930
                  sltiu        t2, t2, 866
                  ori          s3, s7, -664
                  bltu         ra, s6, 318f
                  nop
                  add          t1, a2, a0
                  ori          t2, sp, 429
                  srl          gp, ra, t3
                  andi         s6, s3, 1811
                  sll          t2, t3, t2
                  sltu         a7, s2, a3
                  la           ra, sub_2
                  addi         ra, ra, 184
                  sra          t1, s2, t3
                  xor          s8, t4, s11
                  sltu         t6, a2, a7
                  bltu         t6, gp, main_j2 #branch to jump instr
                  slti         s6, t5, -652
                  srai         t0, s7, 9
main_j2:          jalr         sp, ra, -184 #jump main -> sub_2
                  bgeu         tp, t1, 325f
                  nop
                  andi         a7, a3, 1333
                  and          a3, s3, gp
                  srli         s11, a0, 5
                  nop
                  srl          t5, tp, sp
318:              blt          s7, s0, 337f
                  ori          a6, a4, 1135
                  sltiu        s5, a7, -64
                  la           t2, region_1+1990 #start riscv_load_store_hazard_instr_stream_3
                  xori         a2, t4, -1634
                  lhu          s5, -24(t2)
                  slli         s10, t3, 25
                  sh           s0, -64(t2)
                  lhu          s3, -28(t2)
                  sub          a7, t4, t2
                  lhu          s5, -28(t2)
                  lhu          s6, -28(t2)
                  srl          s6, a6, a1
                  lhu          s9, -28(t2)
                  and          a5, t3, a2
                  sb           a7, -51(t2)
                  lbu          tp, -59(t2)
                  lbu          s4, -59(t2)
                  srl          s10, s3, s5
                  sb           a3, -37(t2)
                  lb           t5, 5(t2)
                  lb           s6, -53(t2)
                  sb           a5, -53(t2)
                  sb           s2, -53(t2)
                  sh           s9, -12(t2)
                  lbu          s11, -51(t2)
                  and          a1, sp, s7
                  sb           t4, -51(t2) #end riscv_load_store_hazard_instr_stream_3
                  beq          s10, t2, 332f
                  blt          s0, s11, 339f
                  and          s2, s11, s11
                  srl          a3, t6, s2
325:              ori          t5, s4, -158
                  xori         s0, ra, -858
                  sll          a6, t1, s3
                  slt          t6, a1, s5
                  addi         a3, s1, 2033
                  bltu         t5, s10, 339f
                  lui          s9, 419085
332:              blt          a6, t4, 345f
                  xori         t1, a4, -1653
                  and          s9, s2, t3
                  and          a3, t1, s5
                  srai         a6, s9, 22
337:              auipc        s10, 343238
                  addi         ra, t1, 684
339:              slli         s5, gp, 20
                  slli         s3, t6, 31
                  sll          t1, s0, a6
                  addi         zero, t0, -1988
                  lui          a7, 647552
                  nop
345:              auipc        s3, 290724
                  blt          sp, a4, 362f
                  sll          a0, gp, t6
                  slt          s9, a5, s11
                  sra          tp, a6, a1
                  beq          s3, ra, 362f
                  slli         a4, t3, 25
                  ori          s11, s1, 1653
                  srl          ra, a6, s4
                  slt          a4, s2, a2
                  add          t1, a6, s8
                  lui          s0, 633502
                  add          s0, s1, a6
                  sll          t1, a4, s2
                  sll          s10, a4, t5
                  sltiu        a3, t0, -1241
                  blt          zero, t3, 377f
362:              add          gp, tp, t1
                  slt          s3, s10, s10
                  sltu         s4, s1, a5
                  slti         s11, t2, 1791
                  sub          t0, a4, a1
                  sll          zero, s6, a6
                  auipc        zero, 660092
                  bgeu         t2, a1, 383f
                  xori         s11, t5, 559
                  srl          s1, t1, s4
                  xori         a0, tp, -794
                  beq          s3, zero, 375f
                  sll          s5, a6, a1
375:              xori         s9, zero, 1715
                  beq          a2, a1, 379f
377:              beq          a3, a1, 384f
                  ori          s0, gp, -125
379:              sra          a0, sp, s9
                  sra          s3, s9, a2
                  bltu         t1, a6, 394f
                  auipc        s8, 804040
383:              sltiu        tp, tp, -1250
384:              sra          a3, s1, s3
                  bgeu         t5, ra, 403f
                  and          t1, t0, zero
                  and          sp, tp, s10
                  srli         t1, s1, 12
                  addi         s9, s9, 996
                  sltiu        s3, s10, -57
                  nop
                  auipc        t6, 392466
                  bgeu         a4, zero, 398f
394:              lui          tp, 1027467
                  bne          a6, zero, 398f
                  sub          a1, a2, a2
                  bge          s4, a3, 410f
398:              sll          tp, a1, a3
                  bgeu         s6, s7, 407f
                  addi         tp, s0, 312
                  addi         a4, gp, 225
                  srai         s9, a3, 4
403:              srli         t5, tp, 25
                  lui          a2, 355491
                  ori          s4, a4, -1910
                  xori         a0, a2, -1451
407:              andi         s10, a2, 1240
                  srl          t6, gp, s6
                  lui          s3, 556099
410:              lui          t0, 350784
                  sltiu        a4, a4, -787
                  andi         zero, s0, 1154
                  or           a3, s5, s2
                  bltu         zero, gp, 418f
                  beq          a2, s11, 424f
                  xor          s5, a4, s3
                  srl          gp, s0, a7
418:              srli         s6, a1, 9
                  nop
                  slt          a6, t4, a5
                  lui          t1, 283509
                  lui          a4, 191076
                  sltu         t6, s0, a1
424:              lui          a3, 545002
                  sll          a4, t5, s11
                  sub          a3, s9, s4
                  srl          a1, a0, s6
                  srli         a2, s0, 9
                  slli         t1, t0, 14
                  xor          s10, t5, t1
                  bne          s3, s11, 443f
                  beq          sp, s8, 439f
                  slti         s11, s9, -401
                  bge          a0, t5, 437f
                  sltiu        t1, a0, 1821
                  or           tp, s4, ra
437:              blt          s11, s7, 450f
                  sltu         t0, t5, t6
439:              sll          sp, s11, sp
                  nop
                  bltu         s8, a4, 454f
                  xor          s2, t3, a7
443:              beq          t0, sp, 449f
                  sub          tp, t3, s4
                  slt          a4, a2, a3
                  add          t6, s0, t6
                  or           s6, t2, tp
                  and          sp, a3, sp
449:              lui          s10, 337342
450:              sltu         t6, ra, s5
                  nop
                  srli         a7, t0, 11
                  ori          zero, t5, 1197
454:              auipc        a0, 766513
                  andi         s11, a4, 810
                  andi         a6, zero, -266
                  slli         a2, tp, 31
                  sltu         a0, t6, t5
                  auipc        a4, 761202
                  sltu         s11, a5, a4
                  ori          t0, t0, 658
                  lui          a4, 894748
                  addi         zero, s10, 926
                  xori         t2, s9, -323
                  la           a0, sub_1
                  nop
                  ori          gp, s4, -268
                  addi         a0, a0, 727
                  and          s2, s6, zero
                  sra          t0, a1, t6
main_j1:          jalr         sp, a0, -726 #jump main -> sub_1
                  ori          s3, tp, -1532
                  bge          a1, s1, 480f
                  slt          t0, s10, a4
                  nop
                  slti         sp, s2, 1180
                  bgeu         t0, gp, 481f
                  bne          sp, s9, 483f
                  nop
                  auipc        a2, 979815
                  xori         s8, s7, 59
                  bltu         a7, s4, 475f
                  sltu         a4, sp, a2
475:              bgeu         s5, s1, 482f
                  or           s4, a1, a6
                  sub          s9, a6, sp
                  bgeu         a2, a2, 480f
                  auipc        s5, 328653
480:              xor          t2, s9, t2
481:              srai         a4, s8, 9
482:              bltu         zero, t1, 493f
483:              slti         gp, t1, -602
                  and          a0, ra, s6
                  xori         s3, t2, 1513
                  sltiu        s11, s9, 508
                  srai         s8, s5, 22
                  sltu         a1, t6, s10
                  xori         a7, zero, 771
                  bge          t6, ra, 494f
                  sltu         t6, s0, sp
                  bne          s10, gp, 506f
493:              ori          t1, t5, -1742
494:              srli         ra, a7, 3
                  addi         s9, s8, -1034
                  blt          a3, gp, 512f
                  bltu         t1, a0, 515f
                  lui          s9, 1026699
                  sltiu        t0, a7, -63
                  sra          s5, s3, a0
                  addi         tp, t5, -378
                  or           a2, s7, s2
                  slti         s5, t0, 1184
                  bltu         tp, t1, 507f
                  sra          gp, s10, a4
506:              slti         a3, gp, 1326
507:              sub          ra, a5, s7
                  auipc        tp, 249957
                  sra          s3, a6, t2
                  slti         t6, a7, -79
                  xori         s5, s9, 1178
512:              nop
                  bne          s3, s0, 532f
                  sltu         a1, gp, t3
515:              ori          a3, t1, -1818
                  slli         s6, ra, 26
                  blt          s4, a1, 529f
                  sll          a0, t1, t5
                  bne          t0, s1, 524f
                  sra          zero, t6, zero
                  and          s3, t6, t6
                  beq          a3, s2, 528f
                  beq          s4, t2, 534f
524:              slti         s8, sp, 925
                  bne          a4, s6, 536f
                  srl          gp, t6, a7
                  sub          a4, gp, s7
528:              or           s4, gp, a2
529:              sub          a2, t2, a4
                  slti         s8, a5, -367
                  sll          ra, s9, t4
532:              bne          a6, a0, 540f
                  xori         s5, s9, 1484
534:              sltiu        a1, sp, 1626
                  sltu         s2, tp, s9
536:              sltiu        a5, a7, -986
                  srli         s3, s0, 1
                  beq          s6, a4, 540f
                  blt          t3, a1, 543f
540:              slt          a7, t1, t2
                  nop
                  slt          s3, s7, ra
543:              slt          a4, a3, s4
                  slti         tp, s11, -577
                  or           a0, tp, s6
                  beq          a1, a2, 554f
                  sll          a3, t4, s6
                  lui          ra, 920627
                  srai         s4, t5, 26
                  xor          a1, s10, a7
                  xori         t2, s6, 2018
                  slti         a5, ra, -967
                  beq          a4, t2, 570f
554:              auipc        gp, 861122
                  nop
                  sltu         s9, t5, t6
                  slli         tp, t6, 8
                  ori          s10, t0, 2026
                  bne          s2, t4, 575f
                  sltu         s11, sp, t2
                  srl          tp, s3, t5
                  ori          a3, t0, -1932
                  slti         a2, t5, 1898
                  slti         gp, s8, 798
                  andi         ra, t5, -1898
                  nop
                  bgeu         zero, s3, 580f
                  addi         tp, a0, 650
                  sll          a4, s11, t1
570:              sra          t5, a1, s9
                  srl          s10, s0, a1
                  auipc        s2, 145158
                  bge          gp, s3, 576f
                  add          ra, a1, t4
575:              slli         s0, a0, 5
576:              sltu         a2, a5, tp
                  nop
                  beq          t5, s9, 592f
                  srai         tp, a1, 29
580:              addi         ra, ra, -785
                  lui          s3, 471845
                  xor          sp, gp, a6
                  blt          t2, s10, 585f
                  bne          a3, s8, 590f
585:              beq          a0, s3, 592f
                  beq          t5, a6, 604f
                  slt          a4, s4, t1
                  bgeu         t1, zero, 595f
                  beq          s2, s2, 592f
590:              xor          t2, t1, s2
                  bne          gp, ra, 603f
592:              blt          t6, s2, 600f
                  sub          s9, s1, t5
                  and          a5, tp, s7
595:              sltu         s0, s8, s10
                  add          sp, s0, s7
                  sll          s4, a7, s5
                  and          a7, s1, s6
                  slli         s2, t0, 26
600:              beq          tp, t6, 617f
                  beq          s10, t3, 613f
                  blt          s7, s4, 606f
603:              sra          s10, s3, t0
604:              or           a7, s7, s2
                  or           s4, s10, a0
606:              blt          t6, t4, 610f
                  add          s3, a7, zero
                  andi         a6, s7, -800
                  bgeu         s2, a0, 617f
610:              bne          s5, a2, 617f
                  and          a6, t2, s0
                  sra          t6, s3, s8
613:              slti         a3, s10, 169
                  bge          s4, a5, 617f
                  beq          zero, s2, 617f
                  srli         t0, tp, 6
617:              sltiu        s10, s7, -706
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xori         s4, a6, 381
                  xor          a1, s7, s8
                  sra          t5, t3, a6
                  srai         s2, s8, 8
                  xor          a7, t4, s7
                  ori          a4, a2, -1648
                  bgeu         s7, a5, sub_1_stack_p
                  slt          a6, zero, gp
                  sub          t6, a2, t4
sub_1_stack_p:    addi         t3, t3, -28
                  sw           sp, 4(t3)
                  sub          t1, a4, t0
                  la           tp, region_1+1593 #start load_store_instr_stream_3
                  la           s0, region_1+1188 #start load_store_instr_stream_1
                  lb           t5, -58(s0)
                  la           sp, region_1+1153 #start load_store_instr_stream_4
                  la           s5, region_1+1430 #start load_store_instr_stream_0
                  lbu          a1, -51(s5)
                  sh           sp, -163(tp)
                  lb           ra, 38(sp)
                  lw           s1, -57(sp)
                  sb           a7, 202(tp)
                  lb           a1, -28(s0)
                  la           a6, region_1+849 #start load_store_instr_stream_2
                  lb           s4, 3(s0)
                  lhu          t5, -64(s5)
                  sb           s9, 1(s5)
                  lh           s3, -15(a6)
                  sb           s8, -48(s0)
                  sb           a3, -10(a6)
                  sw           s8, 15(a6)
                  sb           s1, 72(tp)
                  lb           a4, 17(s0)
                  lbu          s1, 38(sp)
                  sb           s8, -28(s5)
                  lb           a7, 20(tp)
                  lb           s11, 15(tp)
                  sb           s2, -14(s5)
                  lw           t6, -237(tp)
                  sb           sp, -1(tp)
                  lbu          a1, -49(s0)
                  lbu          a0, 40(sp)
                  lbu          s4, 47(s5)
                  lb           a5, 6(a6)
                  sb           tp, 25(s5)
                  lb           a0, 96(tp) #end load_store_instr_stream_3
                  lb           s3, 53(sp)
                  lbu          zero, -25(s0)
                  lbu          s8, 12(a6)
                  sb           gp, 4(a6)
                  lbu          t2, -57(s5)
                  lbu          s4, 6(a6)
                  lb           t1, -10(a6)
                  lb           s2, 10(a6) #end load_store_instr_stream_2
                  sb           s5, -41(s0)
                  lb           gp, -20(sp) #end load_store_instr_stream_4
                  sb           a0, 5(s0) #end load_store_instr_stream_1
                  lbu          s8, 5(s5)
                  sb           s9, -53(s5) #end load_store_instr_stream_0
                  la           sp, region_1+406 #start riscv_load_store_hazard_instr_stream_1
                  ori          gp, s1, -631
                  sb           t2, -101(sp)
                  sb           t3, -101(sp)
                  lb           s0, -101(sp)
                  sb           t2, -69(sp)
                  lb           a0, -69(sp)
                  addi         a0, zero, 603
                  slli         s2, t6, 5
                  lh           ra, -138(sp)
                  sh           zero, 212(sp)
                  lbu          a1, 212(sp)
                  sb           s8, 212(sp)
                  sltu         a5, a7, s2
                  sh           s7, 212(sp)
                  sh           s0, 212(sp)
                  lbu          a3, -234(sp)
                  sh           s7, -234(sp)
                  lb           a2, -234(sp)
                  lb           a0, -85(sp)
                  lbu          t1, -85(sp)
                  sb           a1, -85(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t1, region_1+865 #start load_store_instr_stream_1
                  la           s8, region_1+1315 #start load_store_instr_stream_4
                  sb           t3, 4(t1)
                  lbu          a5, -6(t1)
                  la           s1, region_1+589 #start load_store_instr_stream_3
                  la           t0, region_1+1073 #start load_store_instr_stream_0
                  la           tp, region_1+923 #start load_store_instr_stream_2
                  lw           a7, 1355(s1)
                  sb           a1, -15(t1)
                  lh           s6, -203(s8)
                  lbu          s10, 365(s1)
                  lh           s11, 45(tp)
                  sb           a6, -50(tp)
                  lhu          gp, 187(s1)
                  sh           sp, -15(t1)
                  lb           gp, -192(s8)
                  lhu          s4, -19(tp)
                  lb           a2, -3(t1)
                  lbu          s0, 775(s1)
                  lbu          t5, 80(s8)
                  lh           a1, 1255(s1)
                  lb           a2, 18(s8)
                  lb           a1, -4(t1)
                  lb           s2, 1(t0)
                  lh           s2, -33(tp)
                  lh           a6, -125(s8)
                  sb           s5, 1098(s1)
                  lbu          s5, -217(s8)
                  sb           t5, -10(t1)
                  lh           ra, 865(s1)
                  lhu          s5, 47(tp)
                  lbu          a7, 3(t1)
                  lbu          s5, -114(s8)
                  lbu          a2, -34(tp) #end load_store_instr_stream_2
                  lb           s5, -894(t0)
                  lbu          s5, -11(t1)
                  sh           s7, 891(t0)
                  lhu          s10, -13(t1) #end load_store_instr_stream_1
                  lh           s5, -519(s1)
                  lb           a1, 140(s8) #end load_store_instr_stream_4
                  sb           s2, 499(t0)
                  lbu          s11, 52(t0)
                  lb           ra, -170(s1) #end load_store_instr_stream_3
                  lb           a6, -68(t0) #end load_store_instr_stream_0
                  la           s8, region_1+1539 #start riscv_load_store_rand_instr_stream_1
                  lbu          s1, 211(s8)
                  or           zero, s10, s6
                  sltu         s4, s4, a0
                  slt          a2, tp, s6
                  add          s3, a7, t2
                  lb           s3, -1165(s8)
                  sltu         s1, s1, tp
                  andi         a7, s2, 778
                  sb           t0, -19(s8)
                  lb           s1, -185(s8)
                  sh           s3, -1319(s8)
                  sb           t0, 14(s8)
                  addi         s3, s11, 485
                  add          s3, s5, s5
                  sh           s9, -561(s8)
                  addi         a2, t6, 1927
                  sh           s6, -439(s8)
                  lhu          sp, -963(s8)
                  slti         a2, ra, 541
                  lb           t1, 52(s8)
                  lbu          ra, 254(s8)
                  lb           sp, -536(s8)
                  lbu          s11, -857(s8)
                  sb           s5, -1096(s8)
                  ori          a2, a5, 442
                  sb           zero, 3(s8)
                  xori         s6, a1, -867
                  slti         s3, a5, 584
                  sb           s1, -816(s8)
                  nop
                  lb           s2, -1004(s8)
                  lbu          s2, -914(s8)
                  auipc        s3, 974167
                  and          s9, s9, s6
                  xor          s9, s9, t2
                  lhu          zero, -197(s8)
                  ori          a0, a7, 1734
                  lhu          a3, 141(s8)
                  andi         s10, a4, -604
                  lb           s11, 58(s8)
                  lh           s10, -1159(s8)
                  sh           s3, -1143(s8)
                  sb           a6, 440(s8)
                  lh           a6, -821(s8)
                  sb           t6, -1054(s8)
                  sh           s6, -1383(s8)
                  lbu          s9, -486(s8)
                  lbu          s10, -954(s8)
                  sh           ra, -99(s8) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+153 #start riscv_load_store_rand_instr_stream_0
                  lb           s4, 200(sp)
                  sb           a5, 30(sp)
                  slt          s8, s4, a7
                  sltiu        t6, s8, 324
                  xori         s10, t5, -324
                  lb           a0, 82(sp)
                  lb           s5, 160(sp)
                  addi         tp, a4, 1536
                  lh           a0, 135(sp)
                  slli         a2, t1, 14
                  auipc        a0, 965437
                  sb           s5, -127(sp)
                  or           a7, a6, s10
                  andi         t0, t6, 1545
                  xor          zero, a2, s5
                  lbu          s5, -9(sp)
                  sb           gp, 245(sp)
                  lb           t6, -59(sp)
                  lbu          s10, 76(sp)
                  lui          t0, 772194
                  sltu         a4, s11, t0
                  lhu          a1, 145(sp)
                  add          t5, t1, a6
                  auipc        s10, 626618
                  sb           s9, 218(sp)
                  sltu         s6, zero, s1
                  sub          s2, s5, zero
                  lhu          t5, -29(sp)
                  slt          t1, ra, s6
                  sub          s4, s6, a3
                  lhu          tp, -21(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_1+1161 #start riscv_load_store_hazard_instr_stream_0
                  sw           t5, -229(a4)
                  sb           s10, -229(a4)
                  nop
                  sw           s5, -229(a4)
                  sh           t2, -229(a4)
                  srl          t6, a3, t6
                  lbu          t0, -229(a4)
                  addi         s6, a7, 727
                  sb           a6, -229(a4)
                  slti         t0, a3, -1168
                  lb           a6, -229(a4)
                  sb           gp, -203(a4)
                  lb           s10, -203(a4)
                  lh           s2, -203(a4)
                  lh           t6, -203(a4)
                  sltu         s1, a5, s8
                  lh           zero, -203(a4)
                  sh           t0, -203(a4)
                  lh           t2, -203(a4) #end riscv_load_store_hazard_instr_stream_0
                  or           t2, sp, t5
                  srai         t5, t4, 28
                  add          s2, sp, a6
                  sltu         t2, s3, t5
                  slt          s3, a2, a6
                  addi         s3, s0, -501
                  bltu         s5, s9, 19f
                  srl          zero, s1, a2
                  slli         s0, s7, 2
                  bgeu         a6, s4, 17f
                  xori         a5, s3, 43
                  ori          s10, a2, 887
                  and          a0, s7, t2
                  beq          a2, a2, 28f
                  blt          s3, a7, 25f
                  srai         a7, a2, 10
                  xor          s3, s0, s8
17:               xor          s2, sp, zero
                  sltu         s9, s10, a6
19:               beq          zero, t6, 25f
                  xori         t5, sp, -1532
                  and          t0, a2, s3
                  slli         tp, t2, 20
                  bgeu         s1, s1, 24f
24:               bgeu         s6, gp, 31f
25:               or           s0, t0, zero
                  ori          t2, s10, 1031
                  nop
28:               slti         s6, t2, 814
                  lui          s5, 884389
                  andi         s5, t2, 1758
31:               sra          zero, gp, a0
                  blt          zero, s7, 35f
                  nop
                  nop
35:               sll          s11, s2, s9
                  sub          sp, t4, a5
                  xori         s1, a7, -31
                  ori          a1, s2, 1026
                  slti         a2, t4, 1912
                  lui          s1, 198860
                  nop
                  nop
                  xor          a1, a3, a4
                  sra          t5, s10, gp
                  nop
                  and          t5, s9, s4
                  andi         a2, s10, -984
                  srli         ra, s1, 6
                  add          a7, s10, s10
                  beq          a5, a3, 67f
                  slti         sp, s5, -201
                  srl          a4, a2, t4
                  nop
                  srai         ra, a1, 13
                  addi         tp, s8, 1811
                  sltiu        a2, s9, -1119
                  bne          s6, a6, 63f
                  srli         a7, s1, 6
                  ori          t5, s11, -1975
                  blt          s8, a7, 79f
                  xori         a1, a7, 765
                  bltu         t1, sp, 66f
63:               srai         s3, s4, 28
                  slli         t1, a4, 25
                  bge          a0, t5, 72f
66:               srai         ra, s5, 1
67:               sll          s4, a5, s1
                  sub          t1, a4, s10
                  srl          zero, t3, s4
                  auipc        a3, 524711
                  or           t6, t4, s2
72:               ori          gp, s3, 373
                  ori          s8, a7, -735
                  bgeu         s9, a0, 83f
                  slli         a3, zero, 1
                  sub          s9, a6, t2
                  slt          zero, t0, a0
                  addi         s10, t2, 1347
79:               sltu         s9, a7, sp
                  srai         t0, s5, 1
                  ori          s0, a6, -863
                  bge          t0, s2, 86f
83:               bltu         t0, sp, 89f
                  sub          t1, a3, a3
                  andi         a0, a0, 1970
86:               srli         s1, a0, 10
                  add          t5, a4, t4
                  andi         t1, s10, 329
89:               sltiu        s9, s3, -267
                  srl          ra, s7, tp
                  sub          ra, s5, t0
                  xor          a3, tp, s10
                  bne          t0, t6, 112f
                  bltu         sp, a2, 112f
                  sll          tp, t3, t4
                  bge          s9, s7, 107f
                  or           s11, t0, s1
                  sltu         t6, zero, t2
                  lui          ra, 410854
                  srli         s9, s8, 11
                  sub          s3, s9, s6
                  xor          s2, t3, gp
                  ori          s4, s10, -1247
                  xori         gp, s0, 2006
                  sub          s9, a0, s3
                  slt          t5, t2, a5
107:              srli         t2, s11, 16
                  xor          s4, ra, s0
                  slli         s8, t1, 30
                  andi         a2, s8, -1761
                  bltu         t5, a2, 129f
112:              addi         s9, a7, 662
                  add          s10, s11, s10
                  blt          zero, t4, 123f
                  ori          zero, s2, -1942
                  add          s6, t1, a3
                  bne          s1, s3, 126f
                  and          t6, a5, s0
                  and          s0, a2, t4
                  bne          t1, a7, 132f
                  srli         a3, s6, 27
                  andi         t2, sp, -354
123:              sub          a5, s9, gp
                  srai         s5, zero, 7
                  bltu         s2, t3, 130f
126:              bne          t6, s6, 129f
                  srai         gp, a0, 5
                  nop
129:              sltiu        s4, t5, -2003
130:              auipc        a1, 309142
                  sltu         s1, s9, t3
132:              slt          s0, zero, a3
                  srli         a7, t3, 28
                  andi         t2, a3, 787
                  lui          a5, 677480
                  sltu         a6, s11, s3
                  srl          t5, s11, t4
                  auipc        tp, 612096
                  sltu         a5, a3, a5
                  sltu         s10, t1, t6
                  xor          a2, a4, s11
                  sra          a5, s0, s5
                  slt          a1, a2, a5
                  lui          a1, 776855
                  addi         a4, a0, -567
                  add          s0, s8, s2
                  sra          a0, a7, a0
                  xori         s1, s11, 964
                  bne          a2, a4, 159f
                  addi         s1, a6, -1850
                  xori         a1, ra, 686
                  lui          t5, 654847
                  add          t6, s8, a1
                  add          s2, zero, s4
                  beq          zero, s0, 167f
                  sll          s10, a0, t1
                  sll          a1, a0, ra
                  sub          s10, s5, s6
159:              bne          s9, tp, 168f
                  and          t5, a4, ra
                  sll          zero, a2, s6
                  bne          s9, sp, 170f
                  nop
                  slt          s1, t0, s4
                  slti         t5, ra, 1756
                  andi         s5, s8, -262
167:              xor          t1, s7, t2
168:              bgeu         t4, t2, 172f
                  xori         s10, t2, -600
170:              nop
                  slti         tp, a5, -1203
172:              bltu         t1, t4, 176f
                  slt          sp, t2, a6
                  blt          a1, s7, 182f
                  bgeu         gp, s3, 187f
176:              sra          s1, a3, s8
                  auipc        a5, 722930
                  or           a3, a0, a4
                  beq          zero, s3, 189f
                  andi         s4, a6, -1956
                  ori          t2, s6, -164
182:              bne          t1, a3, 191f
                  nop
                  slt          s6, s10, s5
                  srl          sp, a3, t4
                  sltiu        t2, s0, 1289
187:              sll          a4, s4, a5
                  srli         s2, s2, 15
189:              addi         s2, t1, -2032
                  sra          s6, t2, t4
191:              andi         s4, sp, -462
                  addi         s1, s2, 1086
                  slli         t5, a1, 22
                  bge          s8, s1, 195f
195:              bgeu         s7, t4, 214f
                  bne          s5, a5, 202f
                  beq          t3, a0, 206f
                  andi         s3, s6, 1300
                  slt          t5, a0, s2
                  sltiu        t5, s5, 1378
                  xori         s4, t3, 1908
202:              andi         ra, s5, 2047
                  sub          s1, gp, s6
                  addi         tp, t0, -1845
                  auipc        gp, 157755
206:              slt          s8, t3, a2
                  addi         t6, s8, 1997
                  sltiu        t0, s3, 1111
                  slt          a5, a0, t3
                  ori          sp, s6, -815
                  sltiu        s11, s6, -476
                  srli         s2, a3, 2
                  auipc        s10, 818248
214:              nop
                  slli         s3, s2, 0
                  and          s2, s11, a7
                  bne          s11, t6, 218f
218:              or           sp, zero, s10
                  srl          a3, a2, tp
                  lw           sp, 4(t3)
                  lui          s0, 832111
                  addi         t3, t3, 28
                  sub          a3, s5, s9
451:              addi x18, x2, 1
451:              jalr x18, x18, 0
sub_2:            or           s3, s2, s5
                  sra          s9, a0, s7
                  beq          s3, a6, sub_2_stack_p
                  slt          a0, t3, ra
                  slt          tp, gp, t5
sub_2_stack_p:    addi         t3, t3, -52
                  sw           sp, 4(t3)
                  srai         a4, s8, 25
                  sll          s8, t1, s8
                  la           sp, region_0+557 #start riscv_load_store_rand_instr_stream_0
                  sb           a5, 191(sp)
                  lbu          s6, 44(sp)
                  lb           ra, -22(sp)
                  lbu          s9, -156(sp)
                  sb           gp, -96(sp)
                  sb           s9, 201(sp)
                  add          ra, s9, s7
                  sub          a5, s1, t6
                  sb           s2, 76(sp)
                  sltu         a0, a4, s6
                  lbu          zero, -32(sp)
                  lb           s8, 227(sp)
                  auipc        a4, 909504
                  sltu         s1, s3, zero
                  lh           a6, -21(sp)
                  srli         s10, a6, 11
                  lbu          s8, -120(sp)
                  lb           tp, -247(sp)
                  lw           tp, -145(sp)
                  lbu          s0, -124(sp)
                  srai         gp, s3, 13
                  xor          s6, sp, t3
                  and          ra, t6, t6
                  slti         s6, zero, 186
                  lw           a3, 163(sp)
                  sltu         s3, a4, zero
                  sh           sp, -227(sp)
                  lb           s2, 134(sp)
                  lb           t6, 45(sp)
                  lbu          t1, 204(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_0+709 #start load_store_instr_stream_3
                  la           s9, region_0+103 #start load_store_instr_stream_1
                  lbu          s2, 178(s9)
                  lbu          s3, -2(t5)
                  la           sp, region_0+447 #start load_store_instr_stream_2
                  lhu          s0, -13(s9)
                  la           a1, region_0+1752 #start load_store_instr_stream_0
                  lbu          tp, 37(a1)
                  lbu          zero, -69(s9)
                  lbu          t6, 53(a1)
                  sb           zero, 3(sp)
                  lh           s6, -13(t5)
                  sb           a3, 19(a1)
                  lhu          a6, 237(s9)
                  lbu          a0, -16(sp)
                  lhu          t2, -50(a1)
                  lbu          s10, 56(sp)
                  lh           s5, -4(a1)
                  lh           a7, 163(s9)
                  lhu          a6, 26(a1)
                  lb           s5, 58(sp)
                  sb           gp, 236(s9)
                  sb           s2, -10(sp)
                  sb           s4, 128(s9)
                  lb           t0, 4(t5)
                  lbu          ra, 20(sp)
                  lhu          t2, 52(a1)
                  lbu          s1, 12(t5)
                  sb           a0, 150(s9)
                  sh           t4, 5(t5) #end load_store_instr_stream_3
                  lbu          a0, -18(sp) #end load_store_instr_stream_2
                  lhu          t2, -2(a1)
                  sb           tp, 60(s9)
                  lw           t2, 157(s9) #end load_store_instr_stream_1
                  lbu          a0, -63(a1) #end load_store_instr_stream_0
                  la           s10, region_1+860 #start riscv_load_store_hazard_instr_stream_0
                  sb           gp, 21(s10)
                  lb           s9, 23(s10)
                  lb           s2, 23(s10)
                  sb           s7, -98(s10)
                  lbu          s2, -46(s10)
                  sb           zero, 186(s10)
                  slli         a4, t1, 1
                  sw           s11, -232(s10)
                  add          s11, s4, ra
                  sw           tp, -232(s10)
                  lbu          gp, 5(s10)
                  addi         s6, a4, -2020
                  lb           a7, -139(s10)
                  sub          s8, a2, a3
                  lbu          s1, 185(s10)
                  add          s2, s1, t1
                  ori          t5, s3, -1313
                  lbu          t2, -255(s10) #end riscv_load_store_hazard_instr_stream_0
                  xori         s10, s6, -738
                  lui          ra, 128393
                  beq          a0, t5, 8f
                  or           t5, zero, t3
                  ori          s5, t1, -1766
                  or           zero, a4, s0
                  sltu         s9, a0, ra
                  andi         ra, a6, -355
8:                sltiu        a1, t1, 933
                  sll          a2, a1, a3
                  bne          a3, s1, 20f
                  srli         a1, a3, 9
                  and          s8, ra, t0
                  bne          s11, a0, 29f
                  bge          a0, a5, 16f
                  sra          s9, t5, a7
16:               or           s9, tp, s2
                  xor          a1, a5, s1
                  sll          t1, t3, zero
                  bgeu         tp, a3, 21f
20:               auipc        a7, 1008639
21:               blt          s5, s4, 29f
                  lui          s9, 836616
                  blt          s5, ra, 40f
                  ori          sp, t6, -982
                  beq          gp, sp, 31f
                  slt          ra, s6, a4
                  ori          s8, s10, 1742
                  lui          s10, 1046003
29:               slti         a5, t5, -807
                  or           s6, s10, s9
31:               srl          s8, t3, s7
                  xor          a2, a4, gp
                  slli         t2, s8, 0
                  ori          s5, zero, 1528
                  srli         sp, s0, 10
                  slt          s10, a3, a1
                  slt          t1, zero, s8
                  srli         s10, s9, 13
                  add          s4, s10, a2
40:               slt          t1, a5, a7
                  sub          gp, s0, s11
                  srli         s3, s0, 30
                  sra          ra, s11, s9
                  and          s5, a2, s7
                  sub          a0, s2, zero
                  sltiu        t0, s10, 639
                  blt          t3, zero, 60f
                  xor          a5, s4, s3
                  srl          a7, a6, t4
                  sub          gp, a2, s3
                  sll          s4, t1, a7
                  nop
                  auipc        s0, 665318
                  or           sp, a1, a3
                  ori          gp, ra, 263
                  sra          s1, t3, t2
                  sub          a6, a5, a1
                  slt          a1, t4, t5
                  srli         a7, s4, 7
60:               slt          zero, t2, s5
                  slt          s8, s5, a6
                  nop
                  sra          zero, s2, a7
                  slli         t2, s5, 1
                  and          s3, s2, a1
                  add          s8, t2, t4
                  auipc        s6, 513592
                  slti         t5, s8, 823
                  addi         a5, s2, -280
                  and          a1, a3, s8
                  andi         s6, a3, 1366
                  lui          s1, 540598
                  auipc        a0, 165972
                  sra          a4, t5, t3
                  bne          sp, tp, 78f
                  andi         s2, s7, -175
                  slti         t5, a3, -235
78:               slt          t1, sp, t3
                  slti         s9, a5, -845
                  sub          a1, a1, s1
                  srai         s0, s3, 28
                  ori          t5, t3, 52
                  nop
                  nop
                  ori          a6, t5, -1832
                  bne          sp, t1, 101f
                  srli         s1, a6, 6
                  lui          s5, 861029
                  bne          a1, a2, 102f
                  and          sp, s8, t1
                  addi         gp, s2, -419
                  add          t6, s3, s10
                  bne          t2, s0, 98f
                  bgeu         s8, s5, 111f
                  add          s1, a3, sp
                  sltu         a0, a5, s6
                  ori          s5, t6, -1719
98:               bltu         t3, s0, 103f
                  sltu         s5, a6, s0
                  srai         s0, s9, 19
101:              and          s10, t0, s8
102:              addi         a5, s6, -91
103:              bgeu         t0, a5, 108f
                  lui          s4, 309514
                  nop
                  and          t1, a2, a1
                  addi         s6, a7, -1813
108:              xori         a3, s10, -1547
                  blt          t1, a6, 114f
                  or           s4, s11, s9
111:              sltiu        zero, a1, -1685
                  add          a7, s5, t0
                  bge          a6, s5, 127f
114:              andi         t2, t3, -1967
                  srl          tp, s7, s4
                  or           t2, ra, a1
                  and          t6, s9, sp
                  lui          a5, 1076
                  sltiu        a0, a1, -115
                  xori         a0, t4, 764
                  srli         s3, s7, 5
                  slti         s11, s11, 1197
                  slli         a7, a2, 3
                  and          s11, a4, s0
                  sltu         s1, t4, t1
                  sltiu        s4, gp, -923
127:              sll          s1, s2, a6
                  xori         s11, sp, -116
                  andi         s11, s9, -1450
                  xor          s9, s0, s4
                  sll          a2, a7, s0
                  auipc        a5, 812567
                  slli         s6, t1, 14
                  srl          s1, ra, sp
                  srl          s5, zero, s0
                  lui          a2, 862609
                  bgeu         a0, ra, 139f
                  srl          t5, a5, s10
139:              sub          s3, t0, a7
                  slt          s4, s1, zero
                  bne          a2, tp, 154f
                  slli         zero, sp, 4
                  slli         s5, s1, 2
                  andi         gp, s5, 529
                  beq          a6, t4, 156f
                  xori         s5, gp, 1817
                  sltu         s4, s10, s2
                  sltu         s4, a2, s8
                  nop
                  nop
                  nop
                  bgeu         t5, s1, 161f
                  bne          a6, t5, 161f
154:              bne          t1, t3, 161f
                  bltu         t6, s8, 161f
156:              srli         s6, ra, 16
                  srli         a3, a6, 13
                  srl          a6, t2, zero
                  xori         t1, s9, 38
                  bgeu         a2, t3, 161f
161:              slli         a1, t6, 13
                  sltu         s5, t0, s6
                  addi         t6, a2, -110
                  lw           sp, 4(t3)
                  srl          t2, t3, s10
                  sll          a0, s0, a0
                  sra          a3, t5, s0
                  addi         t3, t3, 52
                  add          a4, a4, s10
                  srl          zero, t6, t0
265:              addi x31, x2, 0
265:              jalr x31, x31, 0
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .region_0,"aw",@progbits;
region_0:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x23, x28, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x19, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x19, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x19, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x19, x5, ecall_handler
                  li x5, 0x1
                  beq x19, x5, instr_fault_handler
                  li x5, 0x5
                  beq x19, x5, load_fault_handler
                  li x5, 0x7
                  beq x19, x5, store_fault_handler
                  li x5, 0xc
                  beq x19, x5, pt_fault_handler
                  li x5, 0xd
                  beq x19, x5, pt_fault_handler
                  li x5, 0xf
                  beq x19, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x28, x23, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x23, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x23, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x28, x23, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x28, x23, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x28, x23, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 15
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
