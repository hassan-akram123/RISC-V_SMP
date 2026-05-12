.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x7
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xb0f26ad3
                  li x8, 0xf602ad19
                  li x9, 0x6e51443e
                  li x10, 0x4a8e13b5
                  li x12, 0x1
                  li x13, 0x96e88184
                  li x14, 0xad24d10b
                  li x15, 0x0
                  li x16, 0xd98bd222
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x5bddefc1
                  li x24, 0x80000000
                  li x25, 0xe
                  li x26, 0xf76a3db6
                  li x27, 0x0
                  li x28, 0xd
                  li x29, 0xb65f2979
                  li x30, 0x3f10434c
                  la x11, user_stack_end
main:             la           t1, region_1+1219 #start riscv_load_store_rand_instr_stream_0
                  lh           s6, -919(t1)
                  lbu          s9, -520(t1)
                  sb           a5, -56(t1)
                  lb           a6, -358(t1)
                  sltu         s3, sp, a7
                  lbu          s2, -1181(t1)
                  xor          s4, s0, ra
                  lhu          ra, -129(t1)
                  ori          t3, s11, -506
                  sub          a3, a6, t3
                  sll          a7, s8, s5
                  sh           t5, -93(t1)
                  sh           a1, 225(t1)
                  addi         s1, a3, 1913
                  lbu          t3, -173(t1)
                  ori          gp, s7, 1833
                  ori          zero, s3, 1634
                  sb           a6, 119(t1)
                  lui          t0, 38053
                  auipc        a4, 242536
                  slt          s0, s2, sp
                  slt          s1, s2, t2
                  lbu          a6, 480(t1)
                  lui          s2, 973609
                  addi         s2, t0, -13
                  lb           s10, -705(t1)
                  xori         t2, t0, -1264
                  lh           s11, 739(t1)
                  sw           s4, 349(t1) #end riscv_load_store_rand_instr_stream_0
                  la           s1, region_0+1857 #start riscv_load_store_hazard_instr_stream_0
                  lb           zero, 104(s1)
                  sb           t3, 104(s1)
                  andi         s6, a2, -1957
                  sb           a4, 104(s1)
                  lb           t4, 104(s1)
                  slt          t5, tp, a7
                  lb           gp, 104(s1)
                  sb           gp, 104(s1)
                  lbu          gp, 104(s1)
                  lb           t3, 104(s1)
                  sb           zero, 104(s1)
                  lb           s5, 104(s1)
                  lb           a4, 104(s1)
                  sb           t1, 104(s1)
                  lb           sp, 104(s1)
                  sb           a4, 104(s1)
                  sb           t4, 104(s1)
                  lb           s6, 104(s1)
                  lb           a4, 104(s1)
                  sb           a3, 104(s1) #end riscv_load_store_hazard_instr_stream_0
                  la           a3, region_1+761 #start riscv_load_store_hazard_instr_stream_2
                  sw           s11, -9(a3)
                  lh           s2, -9(a3)
                  lhu          a7, -9(a3)
                  lb           s9, -9(a3)
                  addi         t2, t5, -1174
                  lw           s2, -9(a3)
                  lhu          a5, -9(a3)
                  sh           s2, -9(a3)
                  lhu          a4, -9(a3)
                  sb           a2, -9(a3)
                  sw           sp, -9(a3)
                  sw           s11, -9(a3)
                  sw           s2, -9(a3)
                  lw           s4, -9(a3)
                  lhu          s11, -9(a3) #end riscv_load_store_hazard_instr_stream_2
                  la           t5, region_1+800 #start riscv_load_store_hazard_instr_stream_5
                  xor          t4, a1, s10
                  sb           s5, -8(t5)
                  lh           s11, -8(t5)
                  lh           t2, -10(t5)
                  sb           s1, 7(t5)
                  sb           a7, 0(t5)
                  lh           s1, 0(t5)
                  lb           sp, 0(t5)
                  lhu          a3, -12(t5)
                  sh           t6, -12(t5)
                  sb           t1, 1(t5)
                  sh           a6, 4(t5)
                  lbu          ra, 16(t5)
                  sb           s5, 5(t5)
                  sb           a6, 6(t5)
                  lhu          t3, -2(t5)
                  andi         sp, s4, 143
                  lb           s8, -10(t5)
                  lh           s4, -6(t5)
                  lh           tp, 6(t5) #end riscv_load_store_hazard_instr_stream_5
                  la           sp, region_0+675 #start riscv_load_store_hazard_instr_stream_4
                  sb           a2, 14(sp)
                  lbu          tp, 14(sp)
                  lb           a2, -16(sp)
                  lbu          t4, -16(sp)
                  sltu         t3, a5, t2
                  slti         s2, t6, 1236
                  sb           a0, -16(sp)
                  sb           t4, 2(sp)
                  lbu          s0, 2(sp)
                  srli         s10, s1, 10
                  lbu          t1, 2(sp)
                  lb           s4, 2(sp)
                  slti         s5, a1, -929
                  lbu          a5, 2(sp)
                  lbu          a6, 2(sp)
                  lb           s8, 2(sp)
                  lbu          s0, 2(sp)
                  lb           s8, 2(sp)
                  lbu          ra, -10(sp)
                  lui          s2, 904767
                  xor          s10, a5, s1
                  lbu          s1, -10(sp)
                  lbu          a7, 7(sp)
                  sll          s3, zero, ra
                  sh           sp, 7(sp)
                  lbu          s5, -8(sp)
                  sw           a3, 5(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           a3, region_1+1144 #start load_store_instr_stream_2
                  la           gp, region_1+241 #start load_store_instr_stream_1
                  la           s7, region_1+1027 #start load_store_instr_stream_3
                  sb           s7, -6(gp)
                  la           t3, region_1+487 #start load_store_instr_stream_0
                  lbu          a2, 9(a3)
                  lb           s5, 8(gp)
                  lbu          ra, 446(s7)
                  lhu          s3, 10(a3)
                  lb           s8, -602(s7)
                  sb           a3, -57(t3)
                  lb           s5, -14(a3)
                  lhu          s1, -1(gp)
                  lb           t4, 454(s7)
                  sb           s9, 3(a3)
                  lb           t1, 910(s7)
                  sb           a2, -6(a3)
                  lb           a4, -6(gp)
                  lbu          s4, -122(t3)
                  lbu          s8, 2(gp)
                  lbu          a7, -6(gp)
                  sh           a0, -431(s7)
                  lbu          a4, -513(s7)
                  lb           t5, 0(a3)
                  lhu          t0, 57(t3)
                  sb           ra, -7(a3)
                  lbu          s1, -12(gp)
                  lb           s4, -11(a3)
                  lbu          t0, 173(s7) #end load_store_instr_stream_3
                  lbu          sp, -162(t3)
                  lh           s0, -16(a3) #end load_store_instr_stream_2
                  sh           a5, 9(gp) #end load_store_instr_stream_1
                  lh           s2, 21(t3) #end load_store_instr_stream_0
                  la           sp, region_1+771 #start riscv_load_store_rand_instr_stream_5
                  sll          s7, s4, s3
                  lbu          s7, -46(sp)
                  slti         ra, s1, -893
                  slt          s7, sp, t5
                  lbu          t0, 1091(sp)
                  lbu          s8, -11(sp)
                  sh           a2, -445(sp)
                  sltiu        s9, a1, -1171
                  lh           t0, -135(sp)
                  slti         a7, s1, -153
                  lbu          t4, 469(sp)
                  sw           t1, 1193(sp)
                  lbu          s10, 228(sp)
                  sltu         a4, t0, gp
                  lh           t5, 463(sp)
                  srl          s8, s3, s11
                  sb           s0, 88(sp)
                  lh           a5, -59(sp)
                  ori          tp, a1, 739
                  sb           tp, 380(sp)
                  lb           s0, 266(sp)
                  or           s3, t6, gp
                  sll          a4, t3, t0
                  lbu          s2, 29(sp)
                  xori         t0, s11, 423
                  sra          s10, a7, a6
                  or           t3, a5, a1
                  srai         t0, s6, 20
                  lb           s5, -520(sp)
                  lhu          a5, 125(sp)
                  lb           s2, 1228(sp)
                  lb           t0, 662(sp)
                  lbu          s2, 1078(sp)
                  addi         t5, a7, 2040
                  lh           ra, 891(sp)
                  sltiu        s1, t2, 205
                  slt          a7, a3, tp
                  and          s10, a0, t4
                  sb           s10, 186(sp)
                  sb           a7, 615(sp)
                  lhu          s2, -451(sp)
                  lbu          t5, 171(sp)
                  lhu          a3, -445(sp)
                  sb           tp, -457(sp)
                  lbu          a2, -513(sp)
                  slt          s8, s4, t1
                  lb           a4, 1175(sp)
                  sltiu        s1, s11, -1337
                  slt          gp, a3, s0
                  sw           a2, -755(sp)
                  sh           s6, 197(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1619 #start riscv_load_store_rand_instr_stream_2
                  sb           s5, 2(sp)
                  add          tp, s4, a2
                  andi         t5, sp, 1937
                  sb           t0, -54(sp)
                  sra          t3, s10, t4
                  lw           s1, 5(sp)
                  sra          a6, a5, t2
                  lb           tp, -56(sp)
                  lw           s0, 17(sp)
                  lbu          zero, 45(sp)
                  add          t5, s5, tp
                  add          a4, s5, a5
                  sltiu        s9, ra, -1748
                  andi         a2, t5, -1622
                  sub          t0, ra, s1
                  ori          s7, s6, 2009
                  lui          s0, 351385
                  lb           s2, -34(sp)
                  add          s9, a0, s4
                  sra          s11, s6, t2
                  ori          t3, a1, -1268
                  xori         s1, s7, 748
                  lui          s11, 390427
                  lh           a5, -11(sp)
                  or           tp, ra, s4
                  srli         zero, s9, 25
                  xori         s4, t0, 674
                  sh           s11, 21(sp)
                  sb           a4, 46(sp)
                  andi         s10, s2, 255
                  lh           t3, 13(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_0+1992 #start load_store_instr_stream_2
                  la           gp, region_0+1016 #start load_store_instr_stream_1
                  la           tp, region_0+536 #start load_store_instr_stream_0
                  lbu          s7, -10(a3)
                  lh           a6, 4(a3)
                  sb           tp, -1(a3)
                  lbu          a6, 421(gp)
                  lhu          s3, -516(gp)
                  lh           t5, 482(gp)
                  lbu          a4, -5(a3)
                  sh           s3, 6(a3)
                  lbu          s10, 229(tp)
                  sb           s11, -276(gp)
                  lh           a7, 760(gp)
                  sh           t4, -222(tp)
                  lh           a2, 6(a3)
                  lh           s11, -14(a3)
                  lb           s1, -636(gp) #end load_store_instr_stream_1
                  sh           a1, -224(tp)
                  sb           s8, 90(tp)
                  lb           s10, 242(tp)
                  lbu          a5, -5(a3)
                  lbu          s3, -182(tp)
                  lb           s4, -12(a3)
                  lbu          zero, -1(a3) #end load_store_instr_stream_2
                  sh           s7, 66(tp) #end load_store_instr_stream_0
                  la           a6, region_1+1376 #start load_store_instr_stream_2
                  la           s0, region_1+947 #start load_store_instr_stream_1
                  lbu          t3, 8(a6)
                  lhu          a7, 851(s0)
                  la           s6, region_1+788 #start load_store_instr_stream_3
                  lb           s2, 13(s6)
                  lh           gp, 12(s6)
                  lbu          s8, -460(s0)
                  lhu          sp, 6(s6)
                  sb           a6, 1(a6)
                  la           a5, region_1+1793 #start load_store_instr_stream_0
                  lb           s10, -11(s6)
                  lb           t4, -1(a6)
                  lh           s4, -6(s6)
                  lb           s4, -110(a5)
                  lb           s1, -11(a6)
                  lbu          s1, -624(s0)
                  lbu          s1, 10(a6)
                  lw           a7, -8(s6)
                  sb           a1, 5(a6)
                  sb           s3, -59(a5)
                  lbu          s3, 7(a6) #end load_store_instr_stream_2
                  lbu          t3, 83(s0)
                  lb           s7, -7(s6)
                  lbu          s1, 548(s0) #end load_store_instr_stream_1
                  sb           a6, -107(a5)
                  lhu          s9, 14(s6)
                  sb           a5, -89(a5)
                  lbu          s10, -98(a5)
                  sb           s10, 125(a5)
                  sb           a0, 197(a5)
                  lh           a3, -10(s6) #end load_store_instr_stream_3
                  lb           s10, -6(a5) #end load_store_instr_stream_0
                  la           s7, region_0+1341 #start load_store_instr_stream_1
                  la           s11, region_0+1677 #start load_store_instr_stream_0
                  sb           gp, 62(s7)
                  lb           t4, 116(s11)
                  lbu          gp, 21(s7)
                  la           s2, region_0+432 #start load_store_instr_stream_2
                  lb           a3, -216(s11)
                  lb           s3, -24(s7)
                  lbu          s8, 0(s2)
                  lh           t4, -963(s11)
                  sb           a3, 24(s7)
                  lb           s5, 7(s2)
                  lbu          t4, -260(s11)
                  sb           gp, -648(s11)
                  lbu          t5, -1517(s11)
                  sb           t6, -1(s2)
                  sh           s1, 4(s2)
                  sb           s4, 30(s7)
                  sb           sp, 3(s2)
                  lb           t0, -1308(s11)
                  lbu          a6, 23(s7)
                  lb           tp, 24(s7) #end load_store_instr_stream_1
                  sb           s0, -8(s2) #end load_store_instr_stream_2
                  sh           tp, -663(s11)
                  sh           sp, -613(s11) #end load_store_instr_stream_0
                  la           sp, region_0+756 #start riscv_load_store_rand_instr_stream_1
                  add          t4, t2, s7
                  sll          s4, a2, a5
                  add          s11, a7, s8
                  srl          a5, sp, s4
                  lb           s4, -11(sp)
                  sb           t3, -14(sp)
                  sh           sp, -4(sp)
                  lhu          s2, -10(sp)
                  srli         a6, ra, 22
                  lbu          s1, 13(sp)
                  lb           tp, 6(sp)
                  sb           tp, 16(sp)
                  lh           s4, -8(sp)
                  lhu          a6, -14(sp)
                  srl          t5, t0, ra
                  or           a5, t0, t4
                  and          s8, t1, s8
                  lh           a4, 0(sp)
                  lbu          ra, 13(sp)
                  sltu         t1, t6, s9
                  lbu          a4, 11(sp)
                  lui          s9, 161408
                  lbu          gp, 14(sp)
                  sb           ra, 13(sp)
                  lb           gp, -5(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_1+547 #start load_store_instr_stream_1
                  sb           sp, -158(s9)
                  la           a4, region_1+1914 #start load_store_instr_stream_2
                  sb           a5, -98(s9)
                  lb           tp, -234(s9)
                  la           t1, region_1+1628 #start load_store_instr_stream_0
                  lh           t0, 12(a4)
                  lbu          t5, -231(s9)
                  lbu          t0, 44(t1)
                  sh           t4, 54(t1)
                  sh           a0, 243(s9)
                  lb           a5, 1(a4)
                  lbu          s10, -11(t1)
                  lbu          s3, 9(a4)
                  lb           s5, -25(s9)
                  lbu          t0, -29(t1)
                  lhu          ra, -6(a4)
                  lb           a2, 153(s9)
                  sb           s1, -59(t1)
                  lb           t2, -204(s9) #end load_store_instr_stream_1
                  lb           a6, -3(a4) #end load_store_instr_stream_2
                  lbu          a3, 55(t1) #end load_store_instr_stream_0
                  la           a2, region_1+826 #start load_store_instr_stream_3
                  la           s0, region_1+1306 #start load_store_instr_stream_0
                  la           s11, region_1+219 #start load_store_instr_stream_2
                  sb           a7, 166(a2)
                  la           t0, region_1+263 #start load_store_instr_stream_1
                  lb           t5, 396(a2)
                  lb           s4, 480(t0)
                  sb           s0, -43(s11)
                  lb           s6, 1(s0)
                  sb           a7, 1042(t0)
                  lbu          s6, 4(s11)
                  lh           s10, 1107(t0)
                  sb           a0, 12(s11)
                  lbu          gp, 1548(t0)
                  lhu          s10, 61(s11)
                  lb           s2, 1026(t0)
                  lbu          s10, -367(a2)
                  lb           s8, -16(s0)
                  sb           ra, 483(a2)
                  lbu          tp, 466(t0)
                  lbu          a3, -3(s0)
                  sw           s4, 1125(t0)
                  lb           t4, 1324(t0)
                  sb           a6, -49(s11)
                  sb           a2, 229(a2)
                  sb           t6, -7(s11) #end load_store_instr_stream_2
                  sh           a6, 1463(t0) #end load_store_instr_stream_1
                  lbu          s9, -6(s0)
                  lbu          a3, 507(a2) #end load_store_instr_stream_3
                  sb           a1, 11(s0) #end load_store_instr_stream_0
                  la           a4, region_1+1847 #start riscv_load_store_hazard_instr_stream_3
                  lb           s7, -328(a4)
                  lb           s6, -328(a4)
                  lb           s9, -664(a4)
                  lb           s8, -664(a4)
                  sh           t0, -1235(a4)
                  sll          s8, s1, a6
                  sltiu        t2, s6, 875
                  lb           s10, 41(a4)
                  lbu          s2, -1308(a4)
                  sb           a4, -534(a4)
                  lbu          a3, -534(a4)
                  sb           a6, -583(a4)
                  sw           tp, -583(a4)
                  sb           t4, -583(a4) #end riscv_load_store_hazard_instr_stream_3
                  la           t1, region_0+876 #start riscv_load_store_rand_instr_stream_3
                  sw           t3, 28(t1)
                  sb           a3, -29(t1)
                  sb           ra, -4(t1)
                  xori         t4, s0, 1325
                  xor          ra, zero, t5
                  xor          s2, t6, s3
                  lh           s2, -46(t1)
                  lb           t5, -5(t1)
                  lbu          t2, -55(t1)
                  srai         ra, a4, 20
                  sh           t6, -14(t1)
                  srai         s0, tp, 17
                  and          s11, tp, t3
                  lhu          a2, 50(t1)
                  sb           gp, -7(t1)
                  lui          s1, 805376
                  lbu          zero, 57(t1)
                  lb           a2, 47(t1)
                  sb           s10, -43(t1)
                  xor          s4, s11, a6
                  lhu          t4, 48(t1)
                  sb           a0, 25(t1)
                  lbu          t5, -21(t1)
                  lbu          a3, 55(t1)
                  lh           a5, 46(t1)
                  sh           s11, -6(t1)
                  slt          t3, s8, s5
                  ori          a2, s5, 684
                  lb           t5, -9(t1)
                  lbu          t4, -43(t1)
                  slti         s8, a0, 1671
                  xor          a2, t4, a6
                  lw           s2, 64(t1)
                  lb           zero, 20(t1)
                  sll          t3, a2, t2
                  srli         t2, t4, 24
                  lbu          s3, -23(t1)
                  lb           a7, -10(t1) #end riscv_load_store_rand_instr_stream_3
                  slli         a3, s8, 0
                  bltu         ra, sp, 7f
                  and          zero, t4, s10
                  nop
                  auipc        a7, 538768
                  slti         s9, t0, -374
                  auipc        s7, 190021
7:                sub          s1, a0, t4
                  auipc        s3, 976927
                  srai         ra, s7, 15
                  bge          t2, s9, 15f
                  blt          s4, a1, 20f
                  slli         gp, a0, 16
                  srli         tp, s1, 5
                  nop
15:               ori          s4, s0, 141
                  sltiu        a3, gp, -337
                  srl          t3, a6, zero
                  blt          t3, a6, 38f
                  srai         s4, ra, 20
20:               sub          s2, a6, a5
                  beq          a3, t4, 32f
                  auipc        tp, 767699
                  beq          s10, t1, 42f
                  ori          s10, a0, -1515
                  sll          s7, s4, t2
                  srli         s3, a3, 30
                  add          s3, s2, t0
                  lui          zero, 991759
                  srai         sp, t2, 9
                  srli         sp, a3, 30
                  blt          s6, t5, 32f
32:               bne          s4, s10, 46f
                  sra          s11, t3, s5
                  addi         s5, s6, 1819
                  sltu         ra, s5, s5
                  sltiu        s2, a6, 611
                  bne          s1, sp, 54f
38:               bgeu         s3, a2, 44f
                  ori          a4, s7, 993
                  srl          s0, a7, s2
                  sub          a2, t6, s3
42:               bltu         t2, s1, 59f
                  ori          zero, s11, -57
44:               nop
                  lui          s0, 574626
46:               beq          s11, s6, 47f
47:               xor          t1, s5, a1
                  slti         zero, s5, 1008
                  bge          s6, a4, 60f
                  slli         t2, t0, 8
                  sra          tp, s11, a5
                  or           s8, gp, s2
                  srai         ra, t1, 7
54:               sra          a2, s5, t0
                  sltiu        a3, s9, 1612
                  sra          a7, s3, s4
                  slli         gp, t6, 30
                  auipc        s5, 270277
59:               sltiu        a5, a4, 425
60:               xori         s7, a6, 903
                  slt          a6, a7, s2
                  srai         t3, s4, 0
                  xori         a3, t3, 711
                  xor          s6, t4, s2
                  slt          a5, a2, t3
                  lui          s11, 5576
                  slli         t1, s6, 21
                  xor          t5, s9, s8
                  sltu         s0, a4, a5
                  slti         s1, s1, 1642
                  sra          s10, a2, s10
                  bge          gp, a0, 86f
                  slti         ra, s8, 755
                  bne          t5, s5, 92f
                  xori         s0, s8, 1930
                  nop
                  srli         t4, s3, 14
                  xori         gp, a1, -1384
                  bgeu         t3, t0, 89f
                  sltiu        a5, s1, 1597
                  ori          s7, zero, -1165
                  andi         t0, s3, 21
                  bgeu         t5, s1, 94f
                  xor          s0, t0, t5
                  bltu         ra, zero, 92f
86:               beq          gp, s2, 89f
                  sll          s3, t1, a3
                  srai         s0, a4, 2
89:               bgeu         t3, t6, 93f
                  la           a2, region_0+1819 #start riscv_load_store_rand_instr_stream_4
                  lbu          a7, 124(a2)
                  lh           zero, -1175(a2)
                  sltiu        s8, t3, -877
                  sh           s7, -309(a2)
                  sh           tp, -1563(a2)
                  xori         a5, s11, 959
                  slt          t5, tp, sp
                  lb           a7, 25(a2)
                  xori         s8, a1, 472
                  sh           t0, -961(a2)
                  sub          a4, t6, s2
                  sh           s2, -1475(a2)
                  nop
                  lhu          s8, -1505(a2)
                  slli         s0, s10, 0
                  srl          tp, a4, s4
                  ori          s5, s7, 1528
                  xori         s7, zero, 95
                  sb           tp, -1541(a2)
                  sll          tp, sp, t4
                  sb           tp, 12(a2)
                  lh           a5, -1285(a2)
                  xor          s10, ra, a6
                  lb           a6, -1793(a2)
                  ori          s11, s1, 1196
                  addi         zero, zero, -849
                  sb           t6, -1298(a2)
                  lh           tp, 7(a2)
                  lb           t0, -542(a2)
                  srl          s4, s10, gp
                  slti         t3, t3, -1979
                  lb           s0, -1294(a2)
                  lbu          s0, -1378(a2)
                  sb           ra, -486(a2)
                  andi         s11, gp, 1084
                  sb           s11, -1494(a2)
                  slt          s5, gp, s10
                  sub          s10, a2, s2
                  sb           s11, -1358(a2)
                  add          ra, s2, t2
                  lbu          a6, -850(a2)
                  lh           s4, -1179(a2)
                  sb           s7, 33(a2)
                  nop
                  sb           s1, -500(a2)
                  sw           s10, -307(a2)
                  lbu          s9, 147(a2)
                  sb           s0, 135(a2)
                  sb           a3, -1719(a2) #end riscv_load_store_rand_instr_stream_4
                  and          s10, t0, tp
                  or           s8, a1, t6
92:               beq          t5, a5, 104f
93:               bge          ra, s9, 102f
94:               xori         t4, s4, 73
                  andi         s3, t1, -1643
                  sub          s7, sp, s6
                  slt          t0, t5, s1
                  slli         gp, s3, 15
                  and          a7, s4, a6
                  nop
                  add          s11, t2, gp
102:              bltu         a2, s0, 105f
                  sll          tp, s9, s0
104:              bgeu         a2, gp, 113f
105:              bne          s7, a2, 123f
                  beq          s8, s8, 115f
                  beq          ra, s1, 110f
                  srl          t2, s9, t3
                  srli         a7, t5, 20
110:              srli         sp, a5, 10
                  xori         t3, t0, 1613
                  add          t1, sp, s2
                  la           s9, region_0+1116 #start riscv_load_store_hazard_instr_stream_6
                  lb           s8, -55(s9)
                  sb           s10, -55(s9)
                  sb           s11, -55(s9)
                  lb           zero, -55(s9)
                  lbu          gp, -55(s9)
                  sb           s2, -55(s9)
                  lb           a2, -55(s9)
                  sb           sp, -55(s9)
                  lbu          s6, -55(s9)
                  lbu          s4, -55(s9)
                  lbu          s7, -55(s9)
                  sb           s10, -55(s9)
                  lb           s4, -55(s9)
                  andi         s6, a6, 0
                  sb           s10, -1(s9)
                  or           s8, a6, a5
                  sb           t3, -1(s9)
                  lb           t5, -1(s9) #end riscv_load_store_hazard_instr_stream_6
113:              bge          a2, s5, 130f
                  bne          s6, sp, 123f
115:              bge          s0, tp, 126f
                  bltu         t4, a5, 122f
                  beq          s7, a5, 128f
                  blt          a2, ra, 121f
                  blt          a5, a1, 128f
                  bltu         t6, a6, 132f
121:              andi         a6, a5, 932
122:              srli         s3, s2, 15
123:              bne          a1, t0, 137f
                  blt          s6, s6, 128f
                  nop
126:              slt          gp, t5, t5
                  ori          s3, a5, 90
128:              add          s5, s3, a1
                  blt          tp, gp, 138f
130:              bltu         a5, a3, 148f
                  bne          s6, t0, 134f
132:              sltu         a4, s8, s3
                  sltiu        a7, s0, 380
134:              beq          t2, a7, 148f
                  slti         s1, s8, -1674
                  add          a7, sp, s5
137:              bge          s3, s4, 143f
138:              auipc        s2, 153244
                  srai         t1, s5, 20
                  srli         s8, t3, 2
                  sub          a4, t0, a0
                  sltiu        t1, a4, -1549
143:              and          t2, t2, s10
                  slti         s7, s9, -1631
                  or           t1, s11, s4
                  bgeu         gp, a1, 149f
                  auipc        tp, 535901
148:              bltu         a3, sp, 157f
149:              blt          s1, t5, 166f
                  srl          s4, ra, a5
                  beq          t0, s1, 162f
                  slli         gp, s10, 10
                  and          t3, s3, zero
                  bgeu         s11, a7, 172f
                  sra          s9, s9, t4
                  srl          s7, zero, a0
157:              and          t3, zero, t5
                  ori          t4, t6, -895
                  sll          a2, t4, s5
                  xor          s2, a5, tp
                  srl          t2, s4, a0
162:              srli         sp, a5, 10
                  slli         t1, s6, 10
                  addi         t1, a4, 735
                  sltu         s5, s8, s4
166:              sub          s7, a6, t1
                  sltiu        a4, t6, -891
                  bne          a0, gp, 169f
169:              lui          a2, 205090
                  addi         s1, s4, -466
                  andi         s4, s9, 612
172:              slli         tp, s2, 16
                  andi         s11, a1, -1825
                  or           a4, s8, a0
                  sltu         tp, s3, t0
                  bne          a0, tp, 187f
                  sltiu        t2, t5, -1448
                  srli         t3, t4, 30
                  blt          ra, s7, 186f
                  beq          tp, s6, 190f
                  bge          a7, t3, 198f
                  sltu         a2, zero, s10
                  sra          t4, s8, a0
                  sll          a5, t3, s2
                  slti         gp, s7, -1434
186:              bge          s8, s3, 197f
187:              xor          sp, s0, a3
                  bne          a5, s8, 189f
189:              srai         s0, t6, 23
190:              addi         a2, s11, 1781
                  sll          tp, s3, s11
                  lui          s10, 589681
                  ori          s3, s1, 859
                  srli         s0, s4, 25
                  sltu         s4, s7, s5
                  srli         t4, a5, 1
197:              lui          zero, 677496
198:              slti         s3, ra, -1630
                  beq          s9, a5, 219f
                  nop
                  srli         s11, ra, 10
                  sub          tp, a3, sp
                  beq          t6, zero, 222f
                  srai         t4, a2, 19
                  slt          t0, tp, s2
                  or           s11, s2, s5
                  bgeu         a1, zero, 224f
                  sltu         a3, a1, gp
                  bgeu         s9, a1, 218f
                  xor          ra, t4, a7
                  la           sp, region_1+1818 #start riscv_load_store_hazard_instr_stream_1
                  slt          s2, a6, a0
                  addi         a4, s7, 255
                  and          t4, s8, s3
                  lb           t1, -13(sp)
                  lbu          s0, 0(sp)
                  lhu          gp, 0(sp)
                  lb           t1, 0(sp)
                  lbu          s9, 0(sp)
                  lhu          a3, 0(sp)
                  sb           a4, 0(sp)
                  lh           s10, 0(sp)
                  lh           s9, 0(sp)
                  lb           a2, 0(sp)
                  lbu          s7, 0(sp)
                  lb           s3, 0(sp)
                  sh           t4, 0(sp)
                  lh           s5, 0(sp)
                  sb           s1, 0(sp)
                  lbu          t0, 0(sp)
                  lhu          tp, 0(sp)
                  sh           a1, 0(sp) #end riscv_load_store_hazard_instr_stream_1
                  ori          a5, t0, 1230
                  andi         t0, s10, -502
                  xori         s8, a1, 1764
                  sltu         s10, s4, s4
                  bltu         s4, t4, 224f
                  addi         t4, a4, -1039
                  nop
                  addi         gp, s0, -1439
                  sll          s11, t4, t3
                  la           s0, sub_1
                  srl          tp, s2, s3
                  lui          t0, 119190
                  addi         s0, s0, 380
                  andi         s7, s7, 299
                  slti         t1, s6, -1474
                  slt          a6, s3, s3
                  sltu         t3, t1, s8
                  or           t0, t5, s4
main_j1:          jalr         ra, s0, -380 #jump main -> sub_1
                  lui          a2, 246478
218:              lui          t4, 140505
219:              srli         s4, a4, 30
                  add          s5, s0, s5
                  sub          a3, t3, t5
222:              and          s4, a1, s4
                  srl          t0, a7, s7
224:              xor          a3, ra, s7
                  bge          s9, s5, 230f
                  sltu         a5, s0, tp
                  sltiu        s1, s11, 1054
                  andi         tp, a4, -1985
                  bltu         a3, ra, 236f
230:              auipc        a5, 765098
                  and          s2, t0, a1
                  xori         s2, t2, -721
                  sltiu        a7, a4, 1474
                  bge          gp, s10, 253f
                  auipc        a4, 897456
236:              sub          s8, ra, s5
                  srli         tp, s1, 29
                  sll          a3, sp, t5
                  nop
                  blt          s3, t4, 258f
                  srai         s1, t0, 8
                  nop
                  beq          a2, zero, 246f
                  ori          t2, s6, 1953
                  slli         a6, a7, 25
246:              bltu         t2, s11, 260f
                  addi         t3, ra, 674
                  sll          t2, a0, s4
                  slt          s1, s3, s6
                  bge          zero, ra, 267f
                  sll          s2, s11, s9
                  sub          s9, sp, t1
253:              srl          s2, s10, a6
                  xor          t1, a1, s6
                  bltu         t2, t4, 264f
                  andi         a4, s5, 1283
                  beq          sp, s3, 260f
258:              xor          ra, s4, s8
                  srai         t4, t5, 5
260:              or           t2, s10, t3
                  ori          t0, t1, -1591
                  sra          t4, a2, s1
                  slli         zero, tp, 22
264:              add          s6, a7, ra
                  srl          zero, s7, t3
                  or           t3, s10, a4
267:              sll          s8, a3, s6
                  add          s8, ra, t6
                  blt          s6, s6, 278f
                  nop
                  bgeu         s10, a3, 276f
                  srli         gp, t1, 20
                  beq          t5, gp, 293f
                  xori         a3, gp, -225
                  sll          a5, s9, t1
276:              sltiu        a2, s7, -521
                  bne          gp, a1, 283f
278:              beq          a6, t6, 284f
                  bge          a0, zero, 288f
                  nop
                  bge          s8, a4, 298f
                  andi         s2, t5, -500
283:              lui          s3, 499729
284:              addi         ra, a7, 2024
                  slli         s0, s0, 24
                  ori          gp, t5, 1847
                  sll          s2, s7, t0
288:              sra          s0, s5, s3
                  sra          s8, a5, s5
                  lui          tp, 880135
                  sra          t1, s2, a4
                  andi         s3, a1, -960
293:              auipc        a3, 237503
                  slti         s11, zero, 1734
                  sltu         s5, s11, s11
                  ori          t3, a0, -352
                  srl          ra, t1, a1
298:              srli         t4, a3, 0
                  bne          a1, a3, 303f
                  xori         s11, a4, -1057
                  srli         t3, t1, 25
                  srl          s3, s2, s2
303:              srl          s9, s4, a2
                  slt          t5, s0, a0
                  bne          s1, a4, 308f
                  andi         sp, s6, 289
                  bge          a1, t4, 318f
308:              auipc        a3, 818025
                  xori         sp, t0, -581
                  bge          s7, a7, 324f
                  andi         a6, a3, -1074
                  xori         a4, s10, -144
                  ori          sp, t5, -1665
                  auipc        s8, 296069
                  auipc        s10, 195890
                  bge          a3, a3, 317f
317:              slt          zero, t6, s8
318:              auipc        s4, 700600
                  ori          a3, t4, -1638
                  sltiu        s8, a7, 918
                  bltu         a6, t0, 339f
                  andi         sp, t5, -603
                  lui          a3, 792604
324:              andi         s6, s4, 650
                  lui          s9, 661476
                  and          t0, sp, ra
                  bge          s6, sp, 336f
                  andi         sp, t2, -909
                  sltu         t4, zero, s0
                  or           t5, gp, s9
                  sub          tp, s10, a7
                  srli         s5, s9, 31
                  xor          t1, sp, t4
                  srl          sp, a1, s2
                  slt          s0, s3, a4
336:              xori         s7, t3, -1116
                  bgeu         t6, sp, 348f
                  srli         s9, t2, 13
339:              xor          zero, t2, a2
                  ori          gp, a5, 1469
                  slli         s11, t1, 24
                  slti         s7, s6, -759
                  or           s0, s5, s7
                  lui          ra, 53004
                  add          s4, s3, s5
                  and          t1, t5, a4
                  sub          s7, a6, gp
348:              bne          s9, s9, 359f
                  bltu         a2, s4, 366f
                  xor          tp, zero, zero
                  srli         s11, sp, 12
                  xor          t0, a5, s4
                  slti         a5, tp, -355
                  auipc        sp, 469027
                  beq          a3, s5, 367f
                  sltu         s6, t6, s2
                  lui          tp, 329416
                  or           a5, a5, s2
359:              xori         s1, s3, -1697
                  bne          s3, s5, 371f
                  andi         t3, s11, -1915
                  bge          a5, s1, 363f
363:              bne          a2, s5, 373f
                  auipc        s9, 408313
                  sub          s10, s9, s9
366:              or           tp, s4, t0
367:              slli         a7, a1, 26
                  add          s5, s7, sp
                  slt          s10, t4, a3
                  or           s1, sp, a5
371:              bge          a4, tp, 380f
                  srli         s9, s9, 12
373:              sll          t0, a1, s4
                  xori         t1, s6, -1442
                  or           tp, zero, a1
                  bgeu         a1, tp, 381f
                  bge          t1, a1, 380f
                  sltu         s8, zero, s4
                  srl          a7, s11, s6
380:              xor          t1, s9, s7
381:              lui          s10, 1031381
                  srl          ra, a2, s0
                  bltu         s7, s9, 401f
                  xor          t2, a5, ra
                  slt          a3, t2, s3
                  or           s11, a2, s10
                  sra          s3, s1, s0
                  srli         a6, ra, 9
                  xori         t4, s11, -1541
                  srl          s3, t1, s3
                  slti         a5, t5, -468
                  nop
                  beq          sp, s3, 410f
                  xor          ra, s0, s6
                  beq          s10, zero, 399f
                  la           ra, region_1+1416 #start riscv_load_store_rand_instr_stream_6
                  andi         s0, s5, 1205
                  sb           s8, -3(ra)
                  lh           s6, -10(ra)
                  sll          s6, zero, s1
                  lb           a2, -15(ra)
                  xori         t0, t0, -477
                  sh           a5, -6(ra)
                  sh           s3, -10(ra)
                  lbu          s9, 6(ra)
                  lb           s6, 13(ra)
                  srl          t5, t1, a5
                  add          s10, s10, a5
                  lb           t1, 5(ra)
                  auipc        a3, 69714
                  lbu          s9, 0(ra)
                  lhu          s7, 12(ra)
                  lb           a6, -13(ra)
                  addi         a4, s7, 1945
                  lb           s3, -11(ra)
                  sh           s2, 2(ra)
                  lw           a2, -12(ra)
                  lbu          s7, 2(ra)
                  sb           a3, 7(ra)
                  sb           s3, 3(ra)
                  lh           s1, -8(ra)
                  lhu          tp, -10(ra)
                  sltu         t0, s5, t3
                  sll          s3, s8, a5
                  lui          s11, 940805
                  sb           s3, -5(ra)
                  lbu          s2, -13(ra)
                  sh           t4, 8(ra)
                  sh           a1, -4(ra)
                  xor          t4, a6, t1
                  lbu          a6, -14(ra) #end riscv_load_store_rand_instr_stream_6
                  and          s2, a6, sp
                  ori          s0, s1, -953
                  bne          a6, gp, 409f
399:              srai         a3, s6, 8
                  sll          gp, s3, t4
401:              blt          s8, s4, 410f
                  auipc        a3, 691278
                  blt          a5, s11, 404f
404:              sltiu        s7, a4, -1041
                  srl          a3, s5, a2
                  sra          s3, s1, t2
                  ori          sp, s0, 439
                  auipc        t4, 21998
409:              lui          ra, 251430
410:              or           t3, t0, t3
                  or           s0, tp, tp
                  sltiu        sp, t1, -737
                  bltu         s5, s11, 427f
                  auipc        s5, 303283
                  auipc        sp, 980473
                  ori          t2, a6, 1803
                  beq          s2, t6, 420f
                  xor          t3, a0, a2
                  srli         a3, s6, 19
420:              srl          gp, s9, tp
                  and          s8, s6, a1
                  xori         t5, a5, -391
                  auipc        t4, 151432
                  bge          zero, s4, 436f
                  srl          a5, t1, ra
                  srli         s7, a6, 17
427:              addi         gp, a5, 54
                  auipc        s4, 957517
                  sra          s5, t1, t1
                  blt          s11, a7, 448f
                  beq          t5, t3, 441f
                  bne          t6, s7, 443f
                  addi         t3, gp, 1469
                  slti         t0, a0, 276
                  add          s4, s1, s0
436:              bne          a6, a2, 442f
                  or           a2, s7, s11
                  sltiu        t3, s3, 1856
                  and          s3, t5, t5
                  sltu         a3, a3, s8
441:              blt          s7, a5, 458f
442:              bne          s0, s7, 445f
443:              andi         a3, s3, 1963
                  sltu         t4, s2, a2
445:              xori         t2, s5, 1476
                  lui          a4, 199106
                  sltiu        t1, zero, -575
448:              xor          s1, a7, s8
                  and          zero, s10, a1
                  bge          t4, a3, 461f
                  srl          s11, zero, a0
                  or           a3, t5, a7
                  slli         s9, s11, 2
                  nop
                  beq          gp, s9, 472f
                  and          sp, t1, t1
                  bge          t6, a5, 466f
458:              beq          a6, t4, 467f
                  sltu         t5, s3, zero
                  xori         t5, s10, -1542
461:              lui          t4, 410679
                  add          s3, s2, s5
                  auipc        zero, 20895
                  auipc        s0, 869949
                  srl          s6, t2, t2
466:              add          sp, s3, t3
467:              lui          t2, 635837
                  sltiu        s3, s9, 122
                  andi         s2, a2, -1535
                  sll          t1, s8, s1
                  srli         s8, s8, 4
472:              bgeu         t4, s2, 481f
                  lui          t3, 119465
                  or           s4, s0, s5
                  slt          s2, s4, s6
                  slli         t0, t5, 8
                  srl          s0, a4, s3
                  bgeu         t1, t3, 489f
                  xori         a4, t6, 1510
                  sra          t1, a7, s11
481:              slti         s4, a1, 1875
                  slt          s10, gp, t4
                  or           s5, a7, a7
                  slli         a5, sp, 26
                  bltu         t4, t2, 499f
                  add          s8, s4, s9
                  ori          gp, t0, 509
                  sra          a2, s7, gp
489:              srl          t4, s6, t5
                  bge          s5, zero, 509f
                  xor          a6, gp, s4
                  xori         a6, t4, 69
                  blt          t5, a3, 502f
                  or           s0, t0, s0
                  sra          s11, t2, tp
                  auipc        s0, 427437
                  bltu         t0, s1, 504f
                  andi         s2, s2, -1223
499:              slt          s3, s10, s2
                  or           t1, s1, t2
                  sltu         zero, s6, sp
502:              sltu         a5, s11, s5
                  add          a6, a3, s0
504:              srli         a3, a4, 14
                  sub          gp, a6, zero
                  slli         s7, a6, 5
                  blt          a4, s11, 513f
                  ori          s4, t5, 988
509:              xori         a4, s10, 43
                  srl          s10, s5, s11
                  or           sp, t2, s10
                  xor          s10, a3, a5
513:              blt          t0, s7, 514f
514:              sub          a7, t1, s11
                  or           a5, t5, ra
                  bltu         a1, t5, 536f
                  blt          gp, sp, 523f
                  auipc        t0, 501090
                  or           gp, s11, s0
                  sltiu        gp, s3, 1482
                  sll          gp, t3, tp
                  lui          a4, 228089
523:              sltu         a5, s7, t3
                  nop
                  srai         a6, s9, 26
                  xori         t3, s10, 175
                  sra          s4, t5, t6
                  xor          ra, s4, t4
                  sltiu        t5, t1, -929
                  srl          t4, a0, s6
                  ori          s10, s7, -863
                  srai         a6, a6, 24
                  bltu         a0, t1, 536f
                  beq          a0, s11, 548f
                  xor          t4, t6, s10
536:              sub          a6, a0, a7
                  sltu         t5, a5, zero
                  la           t3, region_1+709 #start load_store_instr_stream_3
                  lb           s5, 252(t3)
                  la           s10, region_1+1574 #start load_store_instr_stream_0
                  la           gp, region_1+195 #start load_store_instr_stream_4
                  la           t0, region_1+1441 #start load_store_instr_stream_2
                  lbu          s7, -251(s10)
                  lh           a4, -7(gp)
                  lb           t5, -6(gp)
                  sb           a3, -123(t0)
                  lbu          sp, -216(t3)
                  la           s2, region_1+1641 #start load_store_instr_stream_1
                  sb           a3, 60(t3)
                  lb           s4, -41(s2)
                  sh           t0, 9(gp)
                  lb           a2, -21(s10)
                  lbu          a2, 1235(t3)
                  lbu          s11, 16(gp)
                  lbu          zero, 144(t0)
                  sb           s5, 558(t3)
                  sb           s8, -194(t0)
                  lbu          a2, 99(s10)
                  lh           t4, -21(s2)
                  lbu          t2, -72(t3)
                  lb           a2, -14(gp)
                  sb           a3, 213(s10)
                  lh           t4, -148(s10)
                  lh           s11, -555(t3)
                  lbu          s3, -50(s2)
                  lw           t4, 75(t0)
                  sb           t4, 49(s2)
                  lh           t2, 3(gp)
                  lb           tp, 12(gp)
                  sb           s0, 227(t0)
                  lbu          a6, 134(t0)
                  sb           s2, -37(s10)
                  lb           a7, 9(t3)
                  lbu          a2, -12(gp)
                  lhu          s5, 11(t0) #end load_store_instr_stream_2
                  sb           sp, 876(t3)
                  lb           t4, 6(s2) #end load_store_instr_stream_1
                  sh           s3, 1187(t3) #end load_store_instr_stream_3
                  lbu          s9, 11(gp) #end load_store_instr_stream_4
                  sh           ra, -88(s10) #end load_store_instr_stream_0
                  srl          s0, t1, s2
                  andi         a6, ra, -469
                  ori          ra, a0, 933
                  sra          s9, s9, a2
                  bge          tp, s2, 556f
                  srli         s6, s10, 31
                  beq          gp, t1, 561f
                  add          s8, a1, a7
                  slt          t0, a6, a7
                  bne          a7, t4, 556f
548:              and          s7, a2, s10
                  sltu         s7, t3, a4
                  lui          s7, 1046585
                  sltu         sp, t6, t3
                  sub          s10, a7, t5
                  slti         a4, s3, 1865
                  and          a7, ra, t5
                  bne          s0, s8, 573f
556:              srli         s7, s5, 16
                  xori         t2, t0, 1108
                  srai         t1, a5, 31
                  add          t1, t0, s3
                  add          s8, s1, s2
                  ori          a6, t2, 1268
                  srli         zero, s0, 21
                  slli         t1, a4, 20
                  sra          a2, s6, s0
                  la           s6, sub_1
                  srli         s8, t6, 24
                  addi         s6, s6, 185
                  slli         gp, a7, 16
main_j2:          jalr         ra, s6, -185 #jump main -> sub_1
                  auipc        a4, 278847
                  addi         s3, t0, -1680
561:              beq          t0, a3, 568f
                  bltu         a7, tp, 563f
563:              auipc        s6, 522042
                  xor          a5, a6, s3
                  or           s7, a4, s10
                  and          s6, tp, t5
                  xor          s2, a4, a0
568:              srai         s3, zero, 26
                  srli         a6, a1, 25
                  srai         a3, a5, 9
                  beq          a0, t3, 580f
                  blt          tp, sp, 589f
573:              bge          t3, a2, 574f
574:              srai         s5, ra, 1
                  slt          ra, tp, a2
                  srl          tp, s7, s9
                  sra          s9, s6, s6
                  slt          s10, s5, s7
                  auipc        s9, 365664
580:              xor          s0, t6, a3
                  and          a4, a4, a6
                  bge          s3, a5, 602f
                  blt          a0, sp, 593f
                  beq          t2, sp, 593f
                  sll          a2, a7, t5
                  slt          s10, s10, ra
                  bge          s6, s9, 590f
                  blt          a7, a1, 606f
589:              bge          a1, s0, 608f
590:              sra          a4, sp, s4
                  sltiu        sp, t2, -549
                  blt          s1, t1, 609f
593:              beq          a3, s10, 604f
                  bgeu         t1, t5, 600f
                  slt          s0, a3, sp
                  srli         s9, gp, 30
                  and          s2, s9, a6
                  srai         s3, a5, 14
                  xor          tp, t6, s0
600:              sub          s10, s4, s11
                  sll          a2, s2, a1
602:              sltu         t0, a4, t4
                  andi         a6, sp, 772
604:              slli         s9, t3, 11
                  srai         s6, s0, 17
606:              slt          a4, s10, a0
                  sra          a2, s9, a6
608:              lui          t5, 1008945
609:              nop
                  srai         ra, t3, 14
                  xori         s1, t6, -1937
                  sltu         t2, t6, t2
                  sltu         t5, s5, gp
                  xor          t5, t5, ra
                  ori          tp, a0, -1900
                  and          sp, t4, s4
                  slti         a4, s7, 618
                  bgeu         a5, a3, 627f
                  andi         s6, s11, 1000
                  bge          a7, a0, 624f
                  srl          t3, s8, s8
                  bltu         s9, s8, 633f
                  blt          s10, t5, 632f
624:              add          s2, t0, t2
                  sub          t1, s3, s6
                  or           ra, s11, gp
627:              slli         s9, ra, 26
                  slt          ra, tp, t6
                  sra          zero, s2, t3
                  slli         zero, a6, 26
                  addi         s2, tp, -1119
632:              srl          a3, a1, a2
633:              srl          s8, s2, t3
                  xori         tp, t0, 884
                  auipc        s0, 735114
                  bne          s0, sp, 647f
                  srl          tp, t2, a6
                  bltu         sp, t4, 649f
                  beq          t2, s4, 642f
                  addi         s11, s1, -1241
                  sub          t4, s3, t2
642:              andi         a3, s11, -987
                  xori         t3, s7, -26
                  add          ra, a4, a3
                  sub          a7, a5, a3
                  nop
647:              andi         s10, t5, -1185
                  slt          s1, a3, a2
649:              srl          s1, s2, s5
                  bgeu         s3, s7, 655f
                  lui          t5, 774105
                  blt          a0, a5, 664f
                  sub          t4, t6, gp
                  or           t1, s8, s8
655:              sltiu        gp, s6, 701
                  addi         a4, t2, 2022
                  srl          t2, s10, s6
                  sra          s1, s8, t0
                  bge          t2, s4, 662f
                  blt          a3, a1, 669f
                  auipc        s8, 581426
662:              blt          s0, t4, 671f
                  add          s2, s3, s10
664:              bgeu         s6, s0, 681f
                  nop
                  xori         t1, t0, 688
                  sltu         t3, a2, ra
                  slti         a2, a1, 2023
669:              sub          s8, sp, s4
                  and          a6, s2, s4
671:              bne          s4, s3, 680f
                  sra          a3, t0, t1
                  bgeu         sp, a3, 679f
                  slli         t5, s1, 25
                  bgeu         s4, s7, 686f
                  bge          gp, a0, 693f
                  bgeu         zero, s4, 695f
                  bltu         t3, s6, 690f
679:              srli         a4, t2, 31
680:              sltu         a7, a7, s4
681:              or           t1, s6, s2
                  ori          s7, a6, -540
                  slti         t3, zero, -492
                  sltiu        t3, a1, -1530
                  slt          s3, a4, s3
686:              nop
                  andi         tp, s2, -44
                  srli         a2, s10, 27
                  lui          t4, 801351
690:              slli         s8, t5, 25
                  auipc        s0, 317912
                  and          s1, t3, s5
693:              auipc        s6, 954826
                  sltu         a3, gp, a1
695:              slli         ra, s3, 8
                  sltu         t5, a3, a5
                  or           a3, ra, t5
                  sltiu        s9, zero, -253
                  lui          zero, 540740
                  sltu         t5, ra, a3
                  bne          a5, zero, 707f
                  bge          a1, a2, 713f
                  srli         s6, zero, 3
                  bge          t5, s2, 722f
                  slt          tp, gp, s2
                  srli         zero, s3, 12
707:              bltu         a3, s4, 708f
708:              bge          tp, a1, 711f
                  blt          s8, s0, 716f
                  lui          s10, 552095
711:              slt          a4, a1, s6
                  ori          s3, s5, 1813
713:              blt          a7, t3, 727f
                  sltiu        s1, a4, 1088
                  srli         sp, s11, 14
716:              blt          s7, t3, 736f
                  slt          sp, s9, a3
                  andi         t0, s9, 596
                  slti         s2, s1, 79
                  sltiu        s7, s1, 873
                  andi         s1, s9, -1704
722:              srli         s11, a4, 12
                  bgeu         a0, s11, 732f
                  auipc        a5, 49147
                  lui          a4, 865354
                  sub          s0, gp, a1
727:              bltu         a7, t2, 741f
                  lui          s8, 370927
                  bne          t3, t6, 740f
                  addi         a5, t3, -1951
                  andi         s5, a0, 556
732:              slti         a3, a7, -175
                  auipc        a5, 193864
                  srli         sp, t5, 10
                  sll          s9, zero, s3
736:              sra          t1, sp, s10
                  nop
                  slli         s4, s8, 18
                  sltiu        tp, s7, 159
740:              slli         t1, s9, 24
741:              sll          a4, t3, s6
                  slt          t0, t4, s4
                  xor          t3, a4, zero
                  sltu         t5, s8, s8
                  andi         a3, s1, -1493
                  slti         a6, a3, -1583
                  slti         s2, s3, 173
                  srl          t3, s2, s0
                  andi         s11, s5, -350
                  nop
                  sltiu        a3, a0, 1381
                  srl          t4, gp, zero
                  sra          s9, s5, t4
                  sub          s5, a5, s6
                  beq          a7, s0, 756f
756:              or           a4, zero, a3
                  andi         s3, s1, -1320
                  beq          a1, a2, 767f
                  sub          t5, s4, a3
                  bge          s8, tp, 764f
                  lui          s9, 762605
                  sra          a5, s7, t4
                  auipc        gp, 827847
764:              lui          s2, 691595
                  nop
                  ori          gp, a2, 1966
767:              sltiu        s2, s10, -1914
                  slt          sp, s11, sp
                  or           tp, t1, s10
                  srl          s0, a2, t6
                  auipc        t1, 595852
                  sra          a4, s4, t4
                  srl          sp, t3, s2
                  andi         t2, ra, 923
                  sra          a6, s8, tp
                  beq          t0, s2, 783f
                  bltu         t3, a5, 783f
                  slti         a6, s6, 409
                  sra          s5, s1, t5
                  srl          s11, t0, t5
                  ori          s3, s3, -771
                  xori         a3, s2, -526
783:              xor          t2, a1, ra
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            and          s11, s4, sp
                  auipc        s3, 484925
                  nop
                  addi         a1, a1, -40
                  lui          a6, 125661
                  srli         a5, s9, 15
                  sw           ra, 4(a1)
                  addi         t5, s5, -517
                  xori         s2, t5, 1828
                  andi         s8, s3, 1034
                  slti         s1, s8, -778
                  sra          s3, s5, s2
                  la           t2, sub_2
                  ori          sp, s4, 991
                  srl          s6, s0, a5
                  addi         t2, t2, -194
                  slt          s5, s9, a7
                  or           ra, sp, s10
                  sltu         s6, s11, a6
                  bne          t2, a4, sub_1_j3 #branch to jump instr
                  lui          s0, 411687
                  xori         s4, t5, -701
                  srli         s6, s10, 14
                  xori         zero, a5, -1167
sub_1_j3:         jalr         ra, t2, 195 #jump sub_1 -> sub_2
                  bgeu         tp, s3, 1f
1:                bne          s3, s1, 10f
                  auipc        zero, 210947
                  xori         s8, a1, -976
                  sltiu        a3, s9, -1306
                  srli         s4, sp, 7
                  srl          s2, ra, sp
                  and          s8, s4, a1
                  sra          t2, s8, t6
                  add          s3, a2, s5
10:               sub          a4, t2, t1
                  sltiu        s2, s5, -884
                  add          s7, a7, a6
                  sra          s4, zero, t5
                  and          s10, t2, t1
                  bge          a0, s3, 20f
                  blt          tp, s9, 19f
                  bltu         a7, t0, 18f
18:               sltiu        s6, t0, -1614
19:               andi         a4, s3, 594
20:               bltu         a0, tp, 29f
                  xori         t1, s9, 514
                  slti         s7, s1, 477
                  ori          a5, a0, -1227
                  xori         ra, t5, -1519
                  bne          a4, s6, 34f
                  bltu         a3, s6, 30f
                  srl          s3, sp, t5
                  bgeu         t3, a6, 34f
29:               sra          t0, t5, a6
30:               srl          s9, a1, a2
                  bgeu         gp, s7, 40f
                  and          ra, t2, t5
                  srli         sp, s11, 17
34:               add          s4, a2, s2
                  srai         s6, a5, 26
                  nop
                  sltu         t4, t5, a2
                  slti         t3, t3, -928
                  and          t3, tp, s11
40:               ori          sp, t2, -1571
                  bne          a7, t0, 59f
                  slli         a6, s7, 24
                  andi         s11, t3, -1545
                  bgeu         a7, t4, 46f
                  blt          gp, t3, 52f
46:               auipc        gp, 533002
                  bge          tp, s1, 61f
                  beq          s0, t4, 51f
                  xor          t3, ra, tp
                  slli         a6, a0, 11
51:               slt          a3, a1, s8
52:               or           t2, t3, t4
                  bgeu         s1, a7, 60f
                  beq          sp, t6, 56f
                  srli         gp, s8, 14
56:               bltu         s2, s4, 60f
                  bne          a2, t1, 72f
                  slti         tp, a3, -1769
59:               beq          s7, t3, 71f
60:               bltu         s0, t5, 66f
61:               sub          a3, a1, gp
                  sltu         a3, s0, s4
                  bge          gp, s3, 76f
                  lui          tp, 291971
                  andi         s3, s0, -1227
66:               srl          s4, t0, a3
                  addi         t4, a7, 825
                  sll          a5, t2, s8
                  sltiu        a7, t1, 962
                  xori         t0, a5, -888
71:               andi         t4, s11, -1420
72:               bgeu         s10, a4, 76f
                  sub          t1, a5, s11
                  slli         s11, t1, 22
                  nop
76:               sltiu        a6, t2, -817
                  bne          tp, t1, 84f
                  lui          s7, 183345
                  sll          s6, gp, s11
                  slli         s1, s11, 25
                  nop
                  srai         a4, t3, 19
                  sub          s2, s9, t2
84:               srai         t3, tp, 12
                  lw           ra, 4(a1)
                  slt          s4, t5, tp
                  slli         t3, t4, 11
                  slt          gp, s4, s5
                  nop
                  add          a3, s7, t0
                  addi         a1, a1, 40
                  sub          s2, s2, zero
                  sltu         sp, ra, s4
                  sltiu        gp, s5, -107
                  srli         t4, tp, 26
121:              addi x28, x1, 1
121:              jalr x28, x28, 0
sub_2:            xor          zero, zero, s8
                  andi         s5, s6, 1799
                  srl          a4, a4, a3
                  add          s2, gp, gp
                  addi         a1, a1, -48
                  sw           ra, 4(a1)
                  or           s0, s8, s7
                  la           tp, region_0+664 #start load_store_instr_stream_1
                  la           s9, region_0+1889 #start load_store_instr_stream_3
                  la           s11, region_0+1407 #start load_store_instr_stream_0
                  lbu          s2, -1364(s9)
                  lbu          a5, -968(s11)
                  sh           t4, 4(tp)
                  sb           a1, -1802(s9)
                  la           t0, region_0+746 #start load_store_instr_stream_2
                  lb           sp, -13(t0)
                  lb           s0, 15(tp)
                  sb           tp, -14(t0)
                  lb           s6, -264(s11)
                  lbu          t2, -9(t0)
                  lb           a6, -5(tp)
                  lb           t2, 15(t0)
                  sb           a4, -286(s9)
                  lh           s4, -1247(s11)
                  lbu          a3, 3(t0)
                  lbu          sp, -1284(s9)
                  lbu          s1, -15(tp)
                  sb           t3, -994(s11)
                  lbu          s7, 15(t0)
                  lbu          sp, -7(tp)
                  lb           a7, -16(tp)
                  lhu          a2, -2(t0)
                  lb           a2, 9(tp) #end load_store_instr_stream_1
                  sb           t5, -1666(s9)
                  lbu          s2, 9(t0) #end load_store_instr_stream_2
                  sb           s2, -757(s9) #end load_store_instr_stream_3
                  sb           zero, 174(s11) #end load_store_instr_stream_0
                  la           s11, region_1+90 #start riscv_load_store_hazard_instr_stream_0
                  sh           a5, 426(s11)
                  lbu          s1, 426(s11)
                  srl          a4, a0, t0
                  sw           a7, 426(s11)
                  lb           a2, 426(s11)
                  lw           ra, 426(s11)
                  sw           t6, 426(s11)
                  lb           s2, 343(s11)
                  lbu          tp, 343(s11)
                  lbu          s1, 1204(s11)
                  and          t0, tp, s11
                  sltiu        a4, s6, 1613
                  sb           s4, 417(s11)
                  lb           s3, 417(s11)
                  lbu          s0, 1247(s11)
                  lb           a4, 1247(s11)
                  sb           s5, 1247(s11)
                  lhu          t1, 656(s11)
                  lb           t1, 1555(s11)
                  lhu          s5, 1862(s11)
                  sw           tp, 1862(s11)
                  lbu          s9, 777(s11) #end riscv_load_store_hazard_instr_stream_0
                  and          tp, t2, t3
                  bne          sp, a6, 6f
                  blt          zero, s3, 9f
                  bgeu         s11, s8, 23f
                  and          a3, t6, a4
                  auipc        s4, 980294
6:                or           s2, ra, s9
                  sltu         zero, a4, sp
                  auipc        t3, 473084
9:                srai         ra, s9, 21
                  sra          a2, a4, t2
                  auipc        t4, 564285
                  bge          gp, a1, 22f
                  add          s10, t3, s4
                  sltu         s6, t0, ra
                  xor          ra, s2, t6
                  andi         t3, zero, 672
                  srai         s5, s3, 16
                  xor          s4, s9, a1
                  and          s6, t2, t3
                  lui          ra, 896297
                  sltiu        s10, s6, 1081
22:               beq          s5, ra, 29f
23:               srli         s3, a7, 17
                  nop
                  blt          s4, sp, 42f
                  srai         s1, a0, 31
                  blt          s2, t6, 46f
                  srl          t5, sp, t1
29:               lui          a4, 1036079
                  sll          s8, sp, a5
                  andi         gp, s0, -1242
                  slt          zero, a5, a0
                  ori          ra, zero, -1706
                  xori         s9, a4, -583
                  andi         t5, t6, -1344
                  srli         s6, a2, 14
                  blt          a5, sp, 48f
                  slt          s6, s9, a4
                  bltu         t5, s5, 46f
                  slli         a2, s1, 12
                  sltiu        zero, t2, -763
42:               addi         t3, a7, 396
                  slt          s9, s11, s7
                  nop
                  slli         a3, sp, 12
46:               slt          t2, s11, a3
                  slt          a3, s1, t6
48:               srai         gp, s4, 19
                  sra          gp, s0, t3
                  or           t3, sp, t3
                  nop
                  and          t3, tp, a5
                  andi         s1, a0, 1515
                  ori          s11, t3, -1195
                  add          s4, t3, s7
                  ori          s4, a6, 18
                  sub          sp, t5, t5
                  beq          t4, t0, 61f
                  srl          a4, a1, t4
                  srl          s11, s0, t3
61:               sra          s3, tp, a3
                  andi         t0, a0, 1679
                  addi         t3, s5, 656
                  slt          t3, sp, s11
                  srai         s11, s2, 10
                  slli         a6, a1, 16
                  and          t1, s5, t5
                  slti         a4, t5, 1027
                  bge          tp, a7, 77f
                  auipc        t2, 581369
                  beq          s2, a5, 72f
72:               bge          s2, s11, 89f
                  sub          sp, s2, zero
                  xor          s7, a0, s0
                  ori          zero, t6, -1378
                  lui          s7, 165658
77:               beq          zero, s3, 96f
                  bgeu         s1, s3, 79f
79:               beq          a0, tp, 98f
                  nop
                  nop
                  sub          s10, s0, s11
                  or           s3, s5, s8
                  xor          t2, t2, s8
                  xori         s7, t6, 643
                  add          sp, a1, t0
                  nop
                  or           s3, t4, a3
89:               andi         s0, gp, 1565
                  bge          s4, t3, 93f
                  or           t0, s9, t1
                  andi         t2, t3, 1591
93:               addi         a2, s7, 1362
                  beq          s0, a0, 110f
                  bgeu         s0, t4, 114f
96:               srl          t0, a4, t6
                  srai         tp, s0, 10
98:               bltu         t4, s2, 105f
                  sltu         a4, s5, s1
                  and          s7, t1, a0
                  xor          a2, s8, s11
                  sltiu        s7, s5, -1071
                  blt          tp, a0, 114f
                  nop
105:              ori          t3, a3, -568
                  ori          s5, s4, -652
                  bgeu         tp, a2, 111f
                  slli         s11, a5, 12
                  slt          s4, t2, a0
110:              auipc        s8, 24372
111:              auipc        tp, 862653
                  bltu         t5, t5, 130f
                  slt          t0, zero, t6
114:              xor          gp, s4, s6
                  auipc        a6, 104895
                  nop
                  la           ra, region_1+1296 #start riscv_load_store_rand_instr_stream_0
                  auipc        t3, 73152
                  lb           t3, 4(ra)
                  lb           s8, 16(ra)
                  sb           a4, -15(ra)
                  lui          s8, 729992
                  lhu          s6, 16(ra)
                  lbu          t2, 1(ra)
                  slti         s1, s4, 1046
                  lbu          s10, 1(ra)
                  lhu          zero, 0(ra)
                  lbu          s4, -3(ra)
                  andi         a3, gp, 547
                  lb           s0, 11(ra)
                  sb           s3, 4(ra)
                  lb           s4, 15(ra)
                  nop
                  slt          a6, s2, t4
                  sb           t4, -9(ra)
                  lui          t2, 843381
                  lbu          t5, -5(ra)
                  sb           s2, -5(ra)
                  lb           sp, 8(ra)
                  sh           s9, -4(ra)
                  lbu          s2, 7(ra)
                  sh           a3, 14(ra)
                  sub          t4, t5, s3
                  sra          s4, s10, s6
                  slti         a7, a5, 864
                  lw           sp, 4(ra)
                  sw           a3, 4(ra)
                  lb           sp, 8(ra)
                  xor          t1, t2, a7
                  lui          s2, 760966
                  nop
                  lbu          a5, -11(ra)
                  lhu          zero, -16(ra)
                  slt          t1, s10, s11
                  lui          s7, 91661
                  sb           a6, -2(ra)
                  lb           s4, -10(ra)
                  srai         s4, s7, 0
                  lui          sp, 776296
                  sub          a7, s6, s4
                  sb           a2, -9(ra)
                  or           s3, a4, t4
                  sb           a7, -16(ra) #end riscv_load_store_rand_instr_stream_0
                  xor          s0, t1, t6
                  bgeu         s10, t2, 130f
                  bltu         a2, sp, 130f
                  srli         t4, sp, 6
                  srl          s3, sp, a7
                  or           s2, a0, s1
                  srli         a6, t4, 10
                  bltu         s3, s11, 130f
                  blt          t5, sp, 126f
126:              srli         tp, a6, 2
                  srli         tp, sp, 13
                  srai         s5, a5, 16
                  or           zero, a1, s11
130:              slt          sp, t5, s0
                  srai         gp, a0, 19
                  lw           ra, 4(a1)
                  slli         t4, t5, 18
                  addi         a1, a1, 48
                  srli         gp, sp, 19
243:              addi x5, x1, 1
243:              jalr x5, x5, 0
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
.word 0x34b8e7fa, 0x4bee7a8a, 0x88dbccc3, 0x7976daeb, 0x5073399b, 0x71732d8c, 0x047f1a7e, 0x0f9cadbd
.word 0xfd0ee470, 0xd8f4b498, 0xfc87dc84, 0xc8ef8796, 0xf84548e0, 0x05604f64, 0xeb2ea2ba, 0x7a53a64f
.word 0x9d8dce34, 0x0f700d1f, 0x68fcf0f7, 0xc3ebda82, 0xcc9fdd91, 0xfdefff69, 0xd6559ce5, 0x6d2c1117
.word 0x60c955ca, 0x19d93aca, 0x35700c6c, 0xb70d8bc8, 0x28786d6a, 0x5e99cc4c, 0x95716521, 0x09000e5c
.word 0x2dac45fb, 0xc91511a5, 0x3e77c2d1, 0x130a6d72, 0x0e603fce, 0xd3e829ae, 0xd865b33b, 0x3124fdda
.word 0x84fccfeb, 0x49285f16, 0x56de3fda, 0x0fa1c9f5, 0xf86e59ad, 0x7d88e1d9, 0x2b239efa, 0xa091f97d
.word 0xb3253bda, 0x7337c3a4, 0x9a37cc59, 0x6071f9c5, 0x3b9fe494, 0x683d9975, 0xb7135f34, 0x35c494f3
.word 0x4d71bdb3, 0xa2ef5b38, 0xcd215cc4, 0x9cd1f498, 0x47eca30c, 0xa8917d17, 0x68c9e7a7, 0x5a255182
.word 0x7963fdbe, 0x8c1b48d7, 0xc79758c9, 0x7ee92e72, 0x1d6ecc64, 0x93070e80, 0x0b7562fe, 0xfa77a051
.word 0xcf32c786, 0x769bd8ca, 0x591da286, 0xe471ac38, 0x999c9b28, 0x205e940d, 0x46f24755, 0xb7f27e7a
.word 0xa2f86876, 0x86c407e7, 0x5239e481, 0x5617d758, 0x6f126eed, 0x41bf851f, 0x95ba4491, 0x40a72053
.word 0xc88d1e34, 0xf5e08269, 0xdd96a147, 0xdbbdca91, 0x7c9fa1b0, 0x105e63f5, 0xb91c85ea, 0x6bef50e6
.word 0xc964b486, 0x286cfe07, 0xfeea8c35, 0x3b1fb8a1, 0x9bbb067a, 0xec545484, 0x87056da8, 0xb5a548ac
.word 0xc750917d, 0x2f51e881, 0xdbe527a5, 0xdb16f053, 0x373063ed, 0xc89d84db, 0xec4cf171, 0x6157e4a9
.word 0x16195e81, 0x8396b982, 0x2165c58f, 0x14bc16de, 0xa0aa20dd, 0x8a1097bf, 0x4bed790c, 0xd282164c
.word 0x17a29cab, 0x52cdcd5b, 0xaec8d4db, 0x80caaf27, 0x5879ed1e, 0xfd0f7547, 0x60916460, 0x8554c604
.word 0x23c8d57b, 0xa83cdc2b, 0x8ec64918, 0x8facc6bb, 0xd08b41c0, 0x9d0e14bf, 0x0dda6071, 0xbad92963
.word 0x245601ec, 0x4fca4fe2, 0x2984f314, 0x3de23ed0, 0xebd95285, 0x8c740af6, 0x865649bb, 0x0e0275a1
.word 0xfb14dbb4, 0x0167bf92, 0x52dac6ae, 0xa92f0db3, 0xd68b9544, 0x4b34ad65, 0xaad8de4f, 0x227ca127
.word 0x35e101b4, 0xc45ebc70, 0xbf89f67b, 0x51633a67, 0x8812a8a7, 0xf59701ca, 0x1b4fe015, 0x85358737
.word 0x83bebdd6, 0x285c4b16, 0x468f76e5, 0x4e3d1b91, 0xa6900acb, 0xbe3bab0c, 0x1c4d1a10, 0x0148f3ad
.word 0x5288d564, 0x8acbae68, 0xf2c5a710, 0x772e4a32, 0x39cc6498, 0xfcbf48d1, 0x5cba0b00, 0x7471bc19
.word 0x44dc1e4b, 0xf453baf8, 0xc9e6335c, 0x753b1abb, 0x0d358287, 0x7fa49e89, 0xcc9883da, 0xb16af577
.word 0x8e681c42, 0x7b730a32, 0x38898992, 0xd0c85752, 0x5a2277ff, 0x03a3d27e, 0x5c9bc911, 0x5394883c
.word 0xabdf3ee1, 0x85c82b2a, 0x52fdc2a6, 0x30f78f9c, 0xb14a627a, 0x5cb0b649, 0xc7e65459, 0xa38cad22
.word 0x92412240, 0xf78fe8a3, 0x94f16850, 0x0e7d3cae, 0xb7ae81ac, 0xe5d7378f, 0x86bcf1c3, 0x6e5ec9bd
.word 0x7aeb2219, 0x8da31600, 0xb7f026dd, 0x6409e9e6, 0xa62d2e1d, 0xcb6189c1, 0x573a4de7, 0x0d2d44cb
.word 0xeee812df, 0xd1399736, 0xb887b063, 0xf58af443, 0xe27d9dbf, 0x1da6a5d4, 0x61f69a30, 0xa4b37087
.word 0x66d3c860, 0xb1e37103, 0xd95a4a88, 0x0cc42be8, 0x085e234c, 0x014c85fb, 0x1b670d51, 0x31329238
.word 0x374d31a6, 0x7695c348, 0xa4adbec0, 0x3b0f0191, 0x10e2bc69, 0x02f512be, 0xf9bd4ef6, 0xff7de01e
.word 0xde03642c, 0x01ce0a0e, 0xafeaac40, 0x95e1f9bb, 0xa015f0c9, 0x59a9f836, 0xdc2fda9b, 0xf0d77d26
.word 0xecbc147c, 0x95490b9a, 0xeffd5ef0, 0xab017e39, 0xa06c46db, 0x61d8bf6b, 0x89e2a4fd, 0xca702234
.word 0x540a9f33, 0xdc8247b5, 0x68a3bd0a, 0x92275ae6, 0x2a810bfa, 0x38dceea6, 0x218146c1, 0x6484ec4f
.word 0x03b1843b, 0xc906b38e, 0xb78223b0, 0xbb4321e1, 0xbb815bb9, 0xebda9c42, 0x823cc116, 0x9c57c3b5
.word 0x2fc7127d, 0x1cd647de, 0x402be947, 0x1fcd7a35, 0x604a8b6c, 0x7c1dba73, 0x3974a2ee, 0x8203dcb5
.word 0xc7d6a4b1, 0x44e70803, 0x482de0e6, 0x606bb1c5, 0xe0defa45, 0x2ed0c627, 0x21d5a538, 0x12527255
.word 0x9b85f17c, 0xeb8fedab, 0x1c8bb105, 0xb6060037, 0x402386a8, 0x7eedcd34, 0x8d26127c, 0x3f57e2da
.word 0xe68c3ef7, 0x83b6a794, 0x4b561292, 0x44be58e5, 0x07216f72, 0x8bb05036, 0xf37d366b, 0xe5a2803f
.word 0x4d5e4a97, 0x1b5c052d, 0xffc62065, 0xc1980610, 0xc13e4c31, 0xfdb9651f, 0xe61776ec, 0x5f467874
.word 0x38ca614c, 0x058747e7, 0x37f06b24, 0x846ba2da, 0xb1bc6d2c, 0xa649b6a0, 0x48e61991, 0x34e92857
.word 0x676478bf, 0xa4baaccd, 0xfa42baaf, 0xd72f6978, 0xe4fe8580, 0xabe3f5f4, 0xcf3b0497, 0xe16d9f81
.word 0x2f2dce08, 0xd4e099aa, 0x6be98fb8, 0x377a6b46, 0x10e2ca9a, 0xdd7dc216, 0x606e2c32, 0x0bdb26b8
.word 0x0fd7ae4a, 0x7d60500b, 0xa52a509d, 0x7996bd15, 0xc4fea90c, 0xbc7c69af, 0x593512c9, 0x6cf05a1c
.word 0x390f5fad, 0x5250bc53, 0x8dc96d9a, 0x102d8148, 0x271909fd, 0x1bdfd0d4, 0x5d19845d, 0x0df5b691
.word 0x5931f114, 0x9e94d639, 0xb298efb0, 0xb304cc4f, 0xccd91a07, 0x6097fc3b, 0xb4336c08, 0x58bbdf64
.word 0x442ae0ad, 0x6751c555, 0x10545851, 0x224f48ea, 0xb0cc5315, 0x84c4e2c5, 0xc4505e89, 0x31717a46
.word 0xec409e91, 0x6fe4cb68, 0x795b7820, 0x52ca0c5c, 0xce6bab95, 0x19497f07, 0x073f2390, 0x1eea63b8
.word 0x05711334, 0xc882e264, 0x129d6a7f, 0x6fa745d0, 0xe1dc70d3, 0x710e5bf0, 0x5322a0d3, 0x91f3af65
.word 0x01f76462, 0xc9b6bf90, 0xb3619a7a, 0xd33931e4, 0x4af86d67, 0xe0bf83e6, 0xbc771f8d, 0xe67bb4f9
.word 0xe579fe8e, 0x0407a1f9, 0xa9074a4c, 0x5a3d2540, 0x060c944e, 0x3561be4f, 0xd769d689, 0x4e926fc1
.word 0x284e782e, 0xb98acea1, 0xa6fd567b, 0x1cab8241, 0x86bd79d8, 0xd2fc4c1a, 0x8ef3d38d, 0x759eb1a0
.word 0x039ba2c7, 0x11fb1b50, 0x7d850927, 0x6817a01b, 0x8d35c6b3, 0x94b47dbe, 0xd8315eb8, 0xb2e30fb5
.word 0x4dc0c9fd, 0x384c8d3d, 0x19937acc, 0x7df81d7c, 0x77955014, 0xe3e0bbfc, 0x35eeb2f2, 0xcfe9a5bb
.word 0x9b5c86d7, 0x861fe65d, 0x3b4a649a, 0x3663238c, 0x63894337, 0x132f8087, 0xe7873c7f, 0x0fe791e4
.word 0xd872658a, 0x2da3809c, 0x61819afd, 0xa39f91e0, 0xd15f1edb, 0x2ad75cf2, 0xf0b5cc3e, 0x1686cfa6
.word 0x53263666, 0x2161978b, 0x53a47701, 0x8fff9c5c, 0x168065fd, 0xbd947827, 0xcc86f967, 0x7564eb7a
.word 0x003e3c84, 0xb71d65cc, 0xf433f546, 0x4d3b211b, 0xca612920, 0xa9b0a213, 0x163c823c, 0x8920340c
.word 0x46efd71f, 0x85a761dd, 0x904e9f4b, 0x1689a5fa, 0xaea5009f, 0xb81ad3bb, 0x7b0e0bf5, 0xcb27e160
.word 0x6037f580, 0xa2bc9c2b, 0x79cdec2c, 0x2f4b3603, 0xbf5c3bf3, 0xadc5a850, 0xeb7934ed, 0x3854c4c2
.word 0xcc6ae8cd, 0xaa4d84e6, 0xf3ae5476, 0x5d7b1e13, 0xea37211a, 0x7737e681, 0x9db53283, 0xc93e2955
.word 0xa1c95fc4, 0x2349174a, 0xe3f2c67d, 0xd87261cd, 0x043ac3eb, 0x6ac3f66c, 0xc6816e2a, 0x359db30d
.word 0x917ae8ea, 0xaba48a5f, 0x4c2a61f2, 0x21a96ed7, 0x72809d12, 0xc9e5366e, 0x48857f36, 0x5a4c9e27
.word 0x7e21a924, 0x0e9d2739, 0x1b65353e, 0x621a903d
.section .region_1,"aw",@progbits;
region_1:
.word 0xa3d63f4f, 0xb7c2b39a, 0x8e99d513, 0x9177a6fb, 0xa8e8892d, 0x291cb031, 0xb5605f18, 0x34454b26
.word 0x62de4d9b, 0x633a166b, 0x3b9eb2e5, 0xa721d00c, 0x8a69465d, 0x71d1b8fe, 0x7a34ea3e, 0xf917f72d
.word 0x3d035d66, 0x85b68d7a, 0xb387e46d, 0x1f343c43, 0x17979e3a, 0xe9a3a37a, 0x44fcd655, 0x7675299a
.word 0xfac8c9ea, 0x5bf713fb, 0x027ddaa2, 0x75246013, 0xa5712e52, 0xa7dd83c7, 0x9dbf3051, 0x81848cd9
.word 0x7e18ed9e, 0xa8bfc8c6, 0xfa795d06, 0xdb6226d5, 0xfc2309c4, 0x80c39e04, 0x70b8a8ce, 0x3deccfbc
.word 0x7dc8f50b, 0x4cbfe20d, 0x1d8a84cb, 0x58264c23, 0x1b9115e8, 0xe92daff5, 0x6dd0aca1, 0xf364fd1b
.word 0x2ab4ce0d, 0x7a4b0fb8, 0xc03faf3c, 0x8fffdb53, 0xf40998f2, 0x3e77b398, 0x6a37ec33, 0x3cd7b69d
.word 0xffdb49eb, 0xff541620, 0x832c552c, 0x792c542c, 0xf211a78f, 0x2621ea3d, 0xd5ce484a, 0xd233ae7f
.word 0x639315b1, 0x9db45fdc, 0x88d53861, 0x78b69928, 0x883357ef, 0x15f7cb89, 0x057a4f7c, 0xf7672481
.word 0x7a60b5d0, 0x064e3005, 0xa039a544, 0x8f0ea958, 0x4c62546e, 0x5f0fdee0, 0x58a359fc, 0x2112db5c
.word 0xa445297d, 0x1021e603, 0x899321c2, 0x3d88160b, 0x3f29a157, 0xa8d4967d, 0x3ab3aeee, 0x40b420d8
.word 0x6e98779d, 0x18f7e34e, 0xe4c9a9d1, 0x833699b8, 0xf5762a01, 0x230329c0, 0xc40547ff, 0xdbce5267
.word 0x6841c845, 0x7c882011, 0xd7594ec0, 0x5cdfe3c8, 0xfa774fe4, 0x0dd80046, 0xc1db5697, 0x8ecbc3fe
.word 0x9bab7ee8, 0x506b8163, 0x2420044b, 0xe1e40c70, 0xd60c9272, 0xeef83bdc, 0xb235702d, 0xcee77b7d
.word 0xe93000a6, 0x89684457, 0xe6f33b85, 0xc13a4834, 0x7bed77f7, 0xd643d7c8, 0x20a2b97a, 0x065fbbcf
.word 0xa95fb4fa, 0xf6f850cd, 0x1a52a91e, 0x50dfddb8, 0x536d05a1, 0xaa1b96f4, 0xaa9246f4, 0xc1bf69c5
.word 0x1b50d367, 0x4e89008f, 0x9c6c28dc, 0x76465c7e, 0xf3fc6106, 0x1be37d5e, 0xd14eb374, 0x9e3e6edd
.word 0x18a53fd7, 0x18d98ffc, 0x588a8560, 0x1989ffa9, 0x23db0084, 0x0373ae7c, 0xbd294455, 0xd6c93096
.word 0xab09250c, 0x53cbf09b, 0x77e55544, 0xa4c2ead1, 0x8e9e0ebb, 0x33c8ee53, 0x2f2a5760, 0x434c53a8
.word 0x6ff50821, 0x8073093e, 0x01818b91, 0x36102a07, 0xb2fc6e4e, 0x8e677322, 0x4154f0b0, 0x2ae53ebb
.word 0x627d2d82, 0xf0b50037, 0x9e7a0f00, 0x2e66d04e, 0x486d1c77, 0x644da6ae, 0x6fa8540d, 0x47f44797
.word 0xa51ef03f, 0xde0a6361, 0xaf92f73e, 0x4dc03beb, 0x5ad387bc, 0x417d9d4c, 0x170674fd, 0x5f592802
.word 0x70d2d036, 0x64fc5dab, 0x11f1d5f1, 0x59f5c9a4, 0x7378bf1c, 0x5d2ceb1a, 0xd2bcd4e0, 0x2fb4443c
.word 0xd55372c0, 0x6b899763, 0xf30ef4a2, 0x669a48b1, 0x6c1d0d2e, 0xaba7f8a8, 0x50d6f08a, 0xf2d136f0
.word 0x8a0d4da4, 0x3a156f2f, 0xb80509fb, 0xc2936b2b, 0xd3fe31c7, 0x67283090, 0x1b341a20, 0x48ad5d62
.word 0xb650b333, 0x5f6e4f15, 0x3860a283, 0xfcb98190, 0xc179c522, 0x4c19ed26, 0x123201eb, 0x213c4d3b
.word 0xa5abb2b7, 0x2e2a3628, 0x5bd3d579, 0xfae3a4f2, 0x6555d1b3, 0x766c1736, 0xd3867869, 0x2795482e
.word 0xa00257d2, 0xf4ad18e2, 0x8115086f, 0x69276347, 0xaa45cacd, 0xd070b6be, 0x8227b83b, 0x799bd9c3
.word 0x1bb38f2e, 0x09be9efc, 0x2c6bac67, 0xd683e1ea, 0xbb72370b, 0x150683fc, 0x62e681f6, 0x9f06f090
.word 0x51675a2a, 0xdecf053e, 0x734d46fb, 0xdf58e163, 0x50e085f4, 0x29c49b57, 0x7bf8bbd5, 0x9b2bc333
.word 0x7387f3d0, 0xb844dc9c, 0x9f088284, 0xed831f8a, 0x0810d8c9, 0x243c8c22, 0x56cfac69, 0x670c197f
.word 0x33702133, 0x6e7fa552, 0x846ce027, 0x0d2f28d8, 0xc9aadc42, 0xd8e57d3f, 0xb247efcb, 0x5b4f5271
.word 0xd49c4945, 0x4da327fe, 0xba3a7754, 0x79532257, 0x9ead37f6, 0xade4502b, 0xf9880daa, 0xc117cb5b
.word 0xe4b5afb2, 0x3a7038ee, 0x9c5f0615, 0x19e86f95, 0x4def802e, 0xbceed132, 0x04e67fec, 0x7869edad
.word 0x77ac1318, 0x3647e657, 0x7a67e132, 0xbe9a0bb6, 0x660a8a66, 0xea167ea1, 0x9c5b7331, 0x2b97554b
.word 0xc473d80e, 0x7481874b, 0x473d6662, 0x1883d740, 0x08a9d4cf, 0x5fd6c676, 0x62038236, 0x1061e2ad
.word 0xf7799065, 0xa54977c8, 0xf9775311, 0xd6abda99, 0x600745d8, 0x47f29e7c, 0xdc7b527f, 0xd7f543d1
.word 0xa3357449, 0x4aa29263, 0x3829c985, 0xfa1819fd, 0x28b075c8, 0xb486cad3, 0xa14c39cd, 0x6d9980ee
.word 0xd72713b3, 0x2bf3ca6d, 0x5aaa13c7, 0xb7097aed, 0xa10d76ec, 0x14d88728, 0xb250d7c5, 0x81db5985
.word 0x626efba9, 0x8e8e743f, 0xfa9f11aa, 0x0571d3e0, 0xdd217eb7, 0x55ff2d96, 0x2acedc35, 0x7b622c85
.word 0x82ee7acd, 0x1e7aabe2, 0x93e8e4e6, 0x017e252f, 0x5b8b1e02, 0xd8563b32, 0xefc984de, 0xe5921f6a
.word 0xe242f715, 0x7acbda80, 0x55b9ab20, 0xe667da08, 0x321f54c0, 0x6a2e0335, 0xb78a388c, 0x32d2fbf7
.word 0xbaf9dde3, 0x3cc5074f, 0xdc98db38, 0x764663d5, 0x3b3f5413, 0x6268418f, 0x07fe5df6, 0x0c4f70cb
.word 0xe47b7149, 0xc3e2d860, 0xd281d7e2, 0x0a31b31a, 0x8514d600, 0x1896b2b7, 0x21e72ea2, 0xddfe3a1b
.word 0x8da50fa3, 0xe44af314, 0x6ccc281e, 0xd447a9d8, 0xa293654e, 0x68125cfa, 0x6d12cfab, 0xfa085ac0
.word 0xba6d3ff7, 0x4fa19e60, 0x7ccef819, 0x0988d5d7, 0x9d453012, 0xabafb302, 0x8249e044, 0x688f6e2b
.word 0x9dd67343, 0xf49652cd, 0x1ede58e6, 0xe9970b28, 0xb8f2dabd, 0x3d8cb6cd, 0xc2c62e5a, 0x8f70d06a
.word 0x1846c2b0, 0x59bbf180, 0x52fa4dfc, 0x89c779d3, 0xc7e04bd8, 0x1aa75b54, 0xe40f822d, 0x412ed721
.word 0xbd7cd98f, 0xab79d8c4, 0xbc23cbe0, 0x2c4adcc2, 0x1ce793c8, 0xf7af0c5c, 0xcdf68d15, 0x78f34cf9
.word 0xaeb46a18, 0xb687d649, 0x4b3985e0, 0x44dfbf5d, 0xe05bebf6, 0x9c9f8afe, 0xf241ecd3, 0xac40b9c8
.word 0xb0bccaef, 0xe898c11b, 0xc39ac9f9, 0x7ff7838c, 0x62734233, 0xfb0416c5, 0x7c5383da, 0xd0cc444a
.word 0x3847e6d9, 0xcfae6167, 0x2e65a33c, 0xd33ebe84, 0xa9ed13f8, 0x5d479d22, 0x37d38a46, 0x2132142b
.word 0xde110344, 0xa4aba0a2, 0xfa0c1358, 0xf08005f0, 0x37e2f285, 0x0a01fd8e, 0x457fa341, 0xc310c9cb
.word 0x156f8e39, 0x855788c7, 0x5fe83f77, 0x8bd8815d, 0xe5af7089, 0xe8b6dd25, 0xa7857d3a, 0x254b463a
.word 0xe93f2ee8, 0x7ac10762, 0x26942d5c, 0xdf00308f, 0x261d35a1, 0x5092db37, 0xddeb4d4b, 0x34d00961
.word 0x65c2b0d5, 0x920708d8, 0xe2e3f50d, 0x2927ea8c, 0xa3771832, 0xa4d98d22, 0xf9f97fc2, 0x44325d91
.word 0xd97cf06a, 0xeed0239c, 0x4151440d, 0x58e492b5, 0x42c59240, 0x5a53d01c, 0xb47e1c38, 0x3059b53e
.word 0xcb67a273, 0xee90e7a2, 0x6a603950, 0xf0d65f1a, 0x0e588718, 0x71878550, 0xf42b6d66, 0x9bdd7944
.word 0x0ec9bf69, 0xcefd5e80, 0x24a686a3, 0xe4d8fc99, 0x15b7d99e, 0x6e4f58a2, 0x5e10d31c, 0x1bd467ba
.word 0x8f950c67, 0xec7c91eb, 0x1353eeb9, 0x37a94b99, 0x75bee049, 0x3442f3f2, 0x402aa63e, 0x0b668b80
.word 0x2100f303, 0xa8fc6402, 0x9422c372, 0xc59488be, 0x81267abd, 0xdb2313aa, 0xf62a7c7c, 0xee5c7149
.word 0x7b964e59, 0x16a15a65, 0xd28688c6, 0x61aeae5f, 0x4b37df4a, 0xda1cb51f, 0x403869bb, 0x39399d8c
.word 0x7d69b318, 0x5fc18bdf, 0x0d0587e2, 0xd8ed11b0
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
.align           2
mtvec_handler:    
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x31, x11, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x29, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x29, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x29, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x29, x12, ecall_handler
                  li x12, 0x1
                  beq x29, x12, instr_fault_handler
                  li x12, 0x5
                  beq x29, x12, load_fault_handler
                  li x12, 0x7
                  beq x29, x12, store_fault_handler
                  li x12, 0xc
                  beq x29, x12, pt_fault_handler
                  li x12, 0xd
                  beq x29, x12, pt_fault_handler
                  li x12, 0xf
                  beq x29, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x11, x31, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x31, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x31, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x11, x31, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x11, x31, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x11, x31, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
