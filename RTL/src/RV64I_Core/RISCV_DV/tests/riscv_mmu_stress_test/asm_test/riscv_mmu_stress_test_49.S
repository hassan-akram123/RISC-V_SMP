.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x173e4042
                  li x1, 0x0
                  li x2, 0xf920ba9a
                  li x3, 0x80000000
                  li x4, 0xf98908e1
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x2
                  li x8, 0xff7cc8d4
                  li x9, 0x80000000
                  li x10, 0xfc958422
                  li x11, 0xe
                  li x12, 0x0
                  li x13, 0x2
                  li x14, 0x7
                  li x15, 0xf1af9f39
                  li x16, 0xb
                  li x17, 0x80000000
                  li x18, 0xe
                  li x19, 0xb
                  li x20, 0x80000000
                  li x22, 0xc0e52fce
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xff0595d1
                  li x26, 0xfd1ebded
                  li x27, 0xa
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  la x31, user_stack_end
main:             la           t1, region_1+1709 #start load_store_instr_stream_4
                  la           s7, region_1+403 #start load_store_instr_stream_3
                  lbu          a7, -170(s7)
                  la           ra, region_1+1753 #start load_store_instr_stream_1
                  sb           sp, -1068(t1)
                  la           a4, region_1+775 #start load_store_instr_stream_0
                  sb           a5, -67(ra)
                  sb           s9, -1(ra)
                  sw           s9, -71(s7)
                  lbu          s9, 56(s7)
                  la           s1, region_1+889 #start load_store_instr_stream_2
                  sh           s10, 195(ra)
                  lbu          a3, 134(s7)
                  lb           a5, -1136(t1)
                  lbu          gp, 183(a4)
                  lb           s0, 1100(s1)
                  lb           t2, 91(t1)
                  sb           sp, 64(ra)
                  lb           t3, -1416(t1)
                  lbu          tp, -92(s7)
                  sb           a5, 53(t1)
                  sb           s9, 611(a4)
                  lb           s0, 320(a4)
                  lh           a3, -475(s1)
                  lbu          t0, -136(a4)
                  sb           sp, -1136(t1)
                  lh           t0, -77(s7)
                  sb           s4, -180(s7)
                  sb           s8, 626(s1)
                  sb           a5, 7(ra) #end load_store_instr_stream_1
                  lbu          tp, -100(t1)
                  sh           s1, 891(s1)
                  sb           t0, -1133(t1) #end load_store_instr_stream_4
                  lbu          s8, 484(s1) #end load_store_instr_stream_2
                  sb           s5, -108(s7) #end load_store_instr_stream_3
                  sb           s0, 995(a4) #end load_store_instr_stream_0
                  la           t0, region_1+1544 #start riscv_load_store_hazard_instr_stream_4
                  sb           s0, -228(t0)
                  auipc        a4, 654888
                  lbu          s10, -228(t0)
                  lbu          a1, -228(t0)
                  lb           gp, -228(t0)
                  lw           a3, -228(t0)
                  sb           a7, -228(t0)
                  sb           a5, -228(t0)
                  lbu          s0, -228(t0)
                  sb           s7, -49(t0)
                  lbu          s1, -49(t0)
                  sb           s8, -49(t0)
                  lbu          a3, -49(t0)
                  addi         a2, a5, -2036
                  lbu          s3, -49(t0) #end riscv_load_store_hazard_instr_stream_4
                  la           t0, region_0+1027 #start riscv_load_store_hazard_instr_stream_1
                  lhu          s6, -63(t0)
                  lh           s11, -63(t0)
                  lb           sp, 437(t0)
                  lb           s4, 279(t0)
                  lhu          tp, 279(t0)
                  lhu          t5, 279(t0)
                  xori         zero, s7, 1339
                  sh           sp, 279(t0)
                  lw           s10, -119(t0)
                  ori          a3, a3, -242
                  or           t3, t3, t3
                  sb           t1, -119(t0)
                  sb           t2, 128(t0)
                  lbu          s3, 824(t0)
                  lbu          s0, 824(t0) #end riscv_load_store_hazard_instr_stream_1
                  la           s3, region_1+1826 #start riscv_load_store_hazard_instr_stream_5
                  lbu          s10, -127(s3)
                  srai         tp, s0, 20
                  sltu         gp, sp, t2
                  sb           a1, -183(s3)
                  lbu          sp, -183(s3)
                  xori         t0, t6, -427
                  lb           s0, -183(s3)
                  sltiu        ra, a7, -1098
                  slti         zero, a2, 421
                  sb           gp, -183(s3)
                  sb           s8, -183(s3)
                  lbu          s8, -183(s3)
                  sb           s7, -183(s3)
                  lb           ra, -183(s3)
                  lbu          s4, -183(s3)
                  lb           t3, -183(s3)
                  lbu          s0, -183(s3)
                  lbu          t1, -183(s3) #end riscv_load_store_hazard_instr_stream_5
                  la           a5, region_1+1216 #start load_store_instr_stream_1
                  la           s9, region_1+700 #start load_store_instr_stream_2
                  la           a0, region_1+720 #start load_store_instr_stream_4
                  lbu          t5, 161(a5)
                  sb           gp, 456(a5)
                  lbu          s7, 586(a5)
                  la           a7, region_1+317 #start load_store_instr_stream_3
                  sb           s8, -7(a0)
                  lb           ra, 27(s9)
                  lb           s10, -1117(a5)
                  lb           t5, -39(a0)
                  lb           s11, 43(s9)
                  la           t2, region_1+750 #start load_store_instr_stream_0
                  sb           a7, -56(s9)
                  lb           a3, 43(a0)
                  lhu          sp, -62(a0)
                  lh           t3, -4(s9)
                  lbu          tp, -7(a0)
                  sb           s5, 84(a7)
                  lbu          s11, 1(t2)
                  lhu          t0, 39(a7)
                  sb           tp, -40(a0)
                  lw           zero, -56(s9)
                  sb           s9, -53(a0)
                  sb           s8, -20(a7)
                  lb           s3, 45(s9)
                  lb           s11, -606(a5)
                  lbu          s3, 4(s9)
                  lhu          s11, -48(t2)
                  sb           a3, -45(s9)
                  sb           t5, 34(s9)
                  sh           s1, -6(a0)
                  lbu          s1, -854(a5)
                  lb           ra, -47(t2)
                  sb           tp, 60(s9) #end load_store_instr_stream_2
                  lb           t1, -29(a0)
                  sb           a1, -1060(a5)
                  sh           s8, 64(t2)
                  lbu          s2, 116(a7)
                  lb           t4, -839(a5) #end load_store_instr_stream_1
                  lbu          s6, 56(t2)
                  lb           s6, -12(a0) #end load_store_instr_stream_4
                  lbu          a4, -110(a7) #end load_store_instr_stream_3
                  lbu          ra, -38(t2) #end load_store_instr_stream_0
                  la           a3, region_1+833 #start riscv_load_store_hazard_instr_stream_2
                  sb           a6, -403(a3)
                  sub          zero, gp, s3
                  lhu          s4, -403(a3)
                  sh           t3, -403(a3)
                  lhu          a1, -403(a3)
                  sh           t1, -243(a3)
                  sh           s1, -171(a3)
                  lb           s6, 676(a3)
                  sb           s5, 1072(a3)
                  sb           s6, 19(a3)
                  ori          a4, gp, 80
                  lbu          a1, 19(a3)
                  sh           a4, 19(a3)
                  sw           s7, -33(a3)
                  sb           s3, 631(a3)
                  lb           a2, 631(a3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+213 #start riscv_load_store_rand_instr_stream_4
                  sb           s7, 201(sp)
                  add          t1, t5, sp
                  and          a3, t6, s7
                  nop
                  slti         s1, s9, -987
                  lh           zero, 41(sp)
                  sb           t5, 61(sp)
                  lbu          a2, 154(sp)
                  addi         s9, t2, -1948
                  xor          s1, t1, a7
                  and          a1, a2, a5
                  sb           s3, -18(sp)
                  and          t4, s3, t1
                  lbu          s9, 164(sp)
                  nop
                  sh           s7, 111(sp)
                  sh           s5, 41(sp)
                  sltu         a1, t2, s2
                  lb           tp, -102(sp)
                  sll          a7, a5, a6
                  sub          s0, t1, a3
                  sh           s9, -93(sp)
                  sra          s2, a7, s3
                  sltiu        s10, a7, -1696
                  slli         t4, a6, 29
                  lbu          s2, 233(sp)
                  sltiu        ra, a3, 614
                  slti         s3, a1, 1932
                  slti         t3, s4, -66
                  lb           a7, 135(sp)
                  sb           s7, -95(sp)
                  lbu          a4, -112(sp)
                  xor          a7, s4, a7
                  sh           s4, 117(sp)
                  lb           t2, 1(sp)
                  sh           s6, 233(sp)
                  lui          s10, 789121
                  sub          s11, t3, s9
                  lb           a2, 199(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a5, region_0+350 #start riscv_load_store_hazard_instr_stream_0
                  nop
                  sb           s9, -5(a5)
                  sb           s11, -5(a5)
                  lbu          t3, -5(a5)
                  lbu          a3, -5(a5)
                  sb           t1, -5(a5)
                  lb           s0, -5(a5)
                  lbu          s3, -5(a5)
                  lbu          a4, -5(a5)
                  sb           s4, -5(a5)
                  sb           sp, -5(a5)
                  ori          s0, a0, -1750
                  lb           t3, -5(a5)
                  lb           s1, -5(a5)
                  sb           s3, -5(a5)
                  lhu          s8, 4(a5)
                  lh           t4, 4(a5)
                  sltiu        s9, s10, 962
                  lh           t1, 6(a5)
                  sb           s7, 6(a5)
                  lb           t5, 6(a5)
                  lhu          s11, 6(a5) #end riscv_load_store_hazard_instr_stream_0
                  la           ra, region_0+43 #start riscv_load_store_rand_instr_stream_2
                  lbu          s6, 16(ra)
                  lb           t0, 1(ra)
                  nop
                  lb           t1, 0(ra)
                  lh           a2, -5(ra)
                  addi         s2, s9, 868
                  sb           zero, -2(ra)
                  lbu          s2, -6(ra)
                  lui          s7, 99821
                  slt          s1, s11, t5
                  slli         a4, s11, 30
                  sb           s7, 13(ra)
                  sb           t0, 11(ra)
                  sb           s7, 3(ra)
                  lb           a5, 4(ra)
                  sltiu        t4, zero, 440
                  slti         a2, s2, 640
                  slti         a2, s2, -362
                  lbu          a1, 3(ra)
                  lbu          t2, 6(ra)
                  and          t1, s7, t0
                  lbu          s0, 9(ra)
                  ori          s9, tp, 1596
                  ori          t1, a4, -1194
                  sb           t3, 8(ra)
                  sb           s2, 14(ra)
                  lhu          s3, -13(ra) #end riscv_load_store_rand_instr_stream_2
                  la           t4, region_1+1836 #start load_store_instr_stream_3
                  la           s11, region_1+1314 #start load_store_instr_stream_2
                  la           s4, region_1+101 #start load_store_instr_stream_4
                  la           s6, region_1+754 #start load_store_instr_stream_1
                  lbu          t2, -30(t4)
                  lh           a2, -152(s11)
                  lb           s0, 9(t4)
                  sb           t4, 180(s11)
                  la           sp, region_1+415 #start load_store_instr_stream_0
                  lbu          a4, 3(t4)
                  sh           s10, 11(s4)
                  lb           t1, -52(s6)
                  sh           t6, -240(s11)
                  lbu          a0, -243(s11)
                  sb           s6, 56(s4)
                  lw           gp, 38(s6)
                  lb           s7, 59(s6)
                  lb           a5, -39(s6)
                  lhu          a7, 54(t4)
                  lbu          s7, -34(s4)
                  sh           a6, 11(sp)
                  lbu          s0, -63(s6)
                  lbu          t0, -17(s4)
                  lb           a1, -10(sp)
                  lh           zero, 96(s11)
                  lb           gp, 28(s4)
                  sb           a4, -35(t4) #end load_store_instr_stream_3
                  lw           s3, 10(s6)
                  lb           t5, 27(s6)
                  lb           gp, 32(s6)
                  sb           t4, 19(s4)
                  lb           s8, 41(s4)
                  lb           s1, -12(sp)
                  lb           t3, 15(s6)
                  lh           s2, -24(s11)
                  lb           t1, 54(s4) #end load_store_instr_stream_4
                  sb           t0, 0(sp)
                  sh           a1, -178(s11) #end load_store_instr_stream_2
                  lb           a2, 59(s6) #end load_store_instr_stream_1
                  lb           t3, -1(sp) #end load_store_instr_stream_0
                  la           sp, region_0+492 #start riscv_load_store_rand_instr_stream_5
                  lbu          ra, 39(sp)
                  slli         t2, zero, 28
                  lbu          ra, -49(sp)
                  nop
                  srai         t3, t3, 8
                  sb           s3, 58(sp)
                  sll          gp, s6, s4
                  lb           s0, -6(sp)
                  ori          t4, s5, -872
                  sh           tp, 40(sp)
                  lhu          s9, -26(sp)
                  lhu          s1, 26(sp)
                  sh           s1, -62(sp)
                  srai         s4, s0, 16
                  lb           s2, 57(sp)
                  addi         s1, s5, 1504
                  srl          s2, t3, s9
                  or           s2, s10, s11
                  lb           a5, 41(sp)
                  lui          t2, 1040885
                  addi         t1, s3, 1899
                  add          t2, s11, zero
                  sb           s9, -15(sp)
                  sb           a4, -50(sp)
                  sh           s2, 62(sp)
                  sh           t1, 46(sp)
                  and          s6, gp, s9
                  sw           ra, 48(sp)
                  sb           s0, -35(sp)
                  lh           s8, 62(sp)
                  srli         a0, a1, 24
                  lb           a1, -8(sp)
                  slli         t0, s3, 31
                  slti         a1, s3, -1463
                  lb           s9, 39(sp)
                  lb           t5, 16(sp)
                  lh           s2, -38(sp)
                  slti         a4, t5, -1776
                  sltu         s4, t2, a5
                  srai         s8, ra, 18
                  add          t0, t1, s9
                  nop
                  and          t4, s0, a3
                  sll          s4, t3, gp
                  and          tp, a2, zero
                  srli         t0, s2, 24
                  srl          s2, t3, s7
                  sub          a7, t6, t6
                  sh           s10, 18(sp)
                  xori         t5, a4, -736
                  lbu          gp, -49(sp) #end riscv_load_store_rand_instr_stream_5
                  la           t3, region_0+330 #start load_store_instr_stream_1
                  lhu          t1, 46(t3)
                  lhu          s10, -28(t3)
                  la           t5, region_0+893 #start load_store_instr_stream_0
                  lbu          t2, -19(t3)
                  lb           a2, 6(t5)
                  lbu          a4, -12(t3)
                  sw           s10, 38(t3)
                  lbu          t0, -57(t3)
                  lbu          s10, -8(t5)
                  lb           a2, 52(t3)
                  sh           a6, -11(t5)
                  lb           a0, -15(t5)
                  sb           a5, -10(t3)
                  sb           t5, -23(t3) #end load_store_instr_stream_1
                  lh           s2, 15(t5) #end load_store_instr_stream_0
                  la           s10, region_1+737 #start riscv_load_store_rand_instr_stream_0
                  xori         t2, s5, -1689
                  lb           ra, -60(s10)
                  sltiu        a4, t1, 814
                  lb           t0, -35(s10)
                  sub          s1, s7, s6
                  slt          tp, a7, s2
                  lbu          t2, -26(s10)
                  or           s1, zero, a6
                  sb           a6, 10(s10)
                  nop
                  sll          t1, s9, s10
                  lbu          gp, 45(s10)
                  lbu          a0, 16(s10)
                  slt          t4, s8, a2
                  sh           s2, -1(s10)
                  srl          gp, tp, s4
                  lhu          ra, -51(s10)
                  lbu          gp, 2(s10)
                  lbu          s9, -24(s10)
                  sltiu        s9, t2, 962
                  lb           a4, 40(s10)
                  lbu          sp, 14(s10) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1194 #start riscv_load_store_hazard_instr_stream_3
                  auipc        a4, 595520
                  sb           s4, 437(sp)
                  lb           t3, 437(sp)
                  lb           a1, 556(sp)
                  lb           a3, -819(sp)
                  sb           s9, 467(sp)
                  sb           s3, 467(sp)
                  lb           a1, 233(sp)
                  srli         t4, tp, 19
                  lh           s8, 564(sp)
                  lbu          gp, 564(sp)
                  lb           a3, 501(sp)
                  sb           ra, 501(sp)
                  sb           a3, 655(sp)
                  lbu          s4, -805(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s2, region_0+1034 #start riscv_load_store_rand_instr_stream_1
                  xori         t5, s0, -1005
                  auipc        gp, 17262
                  sub          t2, tp, t6
                  lbu          t4, -133(s2)
                  sh           sp, -160(s2)
                  lb           tp, -231(s2)
                  add          s7, t4, t4
                  sltiu        s11, t0, -1511
                  sltiu        t2, s3, -984
                  lhu          s11, 184(s2)
                  xor          t3, a1, t3
                  srai         a1, a4, 22
                  lhu          s6, -148(s2)
                  srli         s8, s2, 3
                  lb           a2, -37(s2)
                  lb           a0, -176(s2)
                  and          s9, t4, t4
                  xor          a5, s0, s3
                  lb           s11, -120(s2)
                  sub          t2, a2, s8
                  lh           sp, 154(s2)
                  srai         gp, t3, 23
                  lbu          t1, -218(s2)
                  lhu          a3, 234(s2)
                  srli         tp, t2, 28
                  lbu          zero, 192(s2) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_1+658 #start load_store_instr_stream_1
                  la           s11, region_1+1741 #start load_store_instr_stream_0
                  lb           t4, -6(s11)
                  lbu          a4, -521(a3)
                  sh           a1, -9(s11)
                  lbu          ra, 367(a3)
                  lb           s2, 7(s11)
                  lb           s3, 211(a3)
                  lb           t2, -247(a3)
                  sb           t4, 12(s11)
                  lbu          ra, 1016(a3)
                  lb           t1, 187(a3)
                  sh           s10, 9(s11)
                  lb           sp, -14(s11)
                  lbu          a0, 10(s11)
                  lbu          a2, 700(a3)
                  lb           t0, 0(s11)
                  lbu          s8, -397(a3)
                  lbu          s6, -169(a3)
                  lb           ra, -497(a3) #end load_store_instr_stream_1
                  sb           s10, 6(s11)
                  lh           t4, 7(s11) #end load_store_instr_stream_0
                  xor          t5, s5, s5
                  bge          a2, t1, 18f
                  lui          a4, 452619
                  xor          gp, s4, t4
                  beq          s10, t2, 19f
                  and          a7, a6, s7
                  lui          gp, 138396
                  or           s6, sp, a6
                  ori          t4, t1, -1995
                  blt          s10, s9, 12f
                  xori         s9, a7, 1961
                  bge          t1, t4, 15f
12:               sra          t3, a7, sp
                  slt          a4, gp, ra
                  addi         gp, s4, -1024
15:               slli         s11, s7, 31
                  bltu         a1, tp, 25f
                  andi         s4, s1, -824
18:               slt          t2, s1, a5
19:               srli         a1, gp, 28
                  bge          ra, s7, 37f
                  lui          s11, 525433
                  srl          s1, t6, t4
                  slli         a7, s0, 1
                  andi         sp, t3, 945
25:               slt          s7, a5, s1
                  add          a2, s11, a7
                  sltu         a3, zero, a3
                  bge          t1, t5, 43f
                  bge          ra, zero, 35f
                  xor          a3, a3, t4
                  addi         a2, a4, -1967
                  sub          zero, t0, s8
                  nop
                  ori          s3, t2, 705
35:               slti         s0, tp, -1643
                  sltiu        tp, a7, -244
37:               auipc        zero, 256704
                  slti         a7, ra, -1553
                  xor          s10, t2, s4
                  and          sp, a4, a1
                  bge          t1, s3, 59f
                  nop
43:               or           sp, s4, t5
                  blt          a4, zero, 50f
                  srl          s9, s6, ra
                  srli         s10, a2, 24
                  bgeu         s9, t0, 57f
                  andi         a3, ra, 741
                  bgeu         s11, t4, 59f
50:               slli         gp, a1, 14
                  andi         ra, t5, 1074
                  slti         s11, tp, -377
                  lui          a3, 550892
                  and          a0, a6, zero
                  sll          t1, a2, t2
                  sub          a5, s7, tp
57:               sub          t0, s2, a5
                  slti         gp, s1, 1233
59:               slt          s7, s9, tp
                  xori         a2, s2, -1858
                  srai         gp, s7, 22
                  slli         s8, t3, 17
                  slti         s0, t4, -915
                  bgeu         s4, s8, 67f
                  addi         s7, s10, 529
                  srli         s8, t3, 5
67:               addi         s7, zero, 1581
                  sra          t4, s10, sp
                  lui          a3, 22620
                  beq          a3, gp, 74f
                  bge          t1, s0, 88f
                  and          s4, t6, a7
                  slli         s7, gp, 20
74:               sll          s8, ra, s6
                  srli         ra, a2, 8
                  sub          s0, s9, a7
                  sltiu        s0, a7, 956
                  bltu         a4, t6, 90f
                  and          a4, sp, s5
                  srl          t2, a0, sp
                  add          t3, s7, t1
                  lui          sp, 771365
                  sub          t1, t3, tp
                  bne          a5, gp, 100f
                  blt          s9, a4, 93f
                  auipc        s11, 605688
                  sltu         s7, t2, a5
88:               slli         a5, a6, 0
                  ori          tp, s6, 19
90:               beq          ra, t2, 103f
                  bne          sp, s9, 98f
                  or           t0, a5, s6
93:               xori         s6, s4, -144
                  add          a3, s2, s0
                  and          t3, s0, zero
                  xori         s11, s1, 1251
                  srai         a1, s1, 5
98:               nop
                  srl          s6, t5, a6
100:              sub          s10, s8, a7
                  slli         a7, a7, 16
                  srli         s7, a0, 1
103:              slti         tp, s7, -1449
                  auipc        zero, 814902
                  beq          a5, a6, 121f
                  add          s3, a2, t0
                  srai         s7, s7, 29
                  srl          t0, s3, s8
                  bne          gp, s8, 118f
                  slli         s10, t6, 29
                  srl          a2, t2, t3
                  or           t1, t2, a0
                  nop
                  srai         s10, a3, 16
                  bge          s8, s1, 130f
                  sra          a5, s2, s7
                  slti         t2, a3, 845
118:              add          s9, a0, s10
                  andi         s2, tp, 263
                  ori          s9, t1, -1576
121:              beq          a7, t1, 125f
                  slti         ra, a5, -1495
                  sltiu        t0, s1, 244
                  nop
125:              xor          a2, a0, s3
                  lui          s7, 1009161
                  ori          s0, t0, -81
                  bne          s1, t3, 139f
                  xor          ra, s6, t2
130:              xori         t1, s2, -1095
                  ori          tp, ra, -1489
                  sltiu        t2, s4, -1502
                  sltiu        t5, a3, -1257
                  blt          s0, s1, 137f
                  bne          gp, s9, 146f
                  xor          s0, s9, zero
137:              or           t0, a3, tp
                  xor          a2, s9, s2
139:              blt          t4, a0, 143f
                  or           ra, gp, a2
                  bge          s5, ra, 154f
                  sra          a1, gp, a1
143:              sltiu        s6, s11, 1363
                  nop
                  srai         sp, s10, 24
146:              sltiu        a1, a1, 215
                  add          s0, s5, t6
                  sltiu        a7, s1, 1989
                  sub          t4, t6, a7
                  bge          s9, t5, 170f
                  nop
                  srl          t4, s3, a7
                  auipc        zero, 64488
154:              srai         t2, t5, 2
                  slti         a1, s8, 205
                  ori          a7, s4, 332
                  and          a3, t4, s8
                  and          a2, s0, a4
                  bne          a3, s0, 169f
                  ori          a2, s11, -1909
                  addi         s7, s0, 217
                  slti         t3, a0, 646
                  beq          s10, t4, 169f
                  sltiu        tp, t6, -1876
                  nop
                  blt          s5, a5, 175f
                  bge          t6, a0, 171f
                  or           a2, tp, a1
169:              xori         a1, a2, 191
170:              sub          s4, zero, a1
171:              beq          sp, s3, 184f
                  sub          s11, a2, s11
                  sra          s10, s1, tp
                  xori         sp, s8, -968
175:              nop
                  addi         s4, a3, -2005
                  sltu         tp, a4, s7
                  xori         t4, a5, -1781
                  xori         t1, a7, 1873
                  slti         s7, s9, 530
                  beq          t3, t5, 185f
                  and          t5, s1, s6
                  srl          s7, sp, s4
184:              auipc        ra, 1008283
185:              sltiu        tp, s8, -117
                  sll          s9, t2, a1
                  srli         t3, a7, 30
                  ori          sp, s5, -1793
                  la           a2, sub_2
                  addi         a1, gp, -1497
                  addi         a2, a2, 445
                  srai         t2, a3, 30
                  beq          tp, s5, main_j1 #branch to jump instr
                  sltu         sp, s2, t4
main_j1:          jalr         ra, a2, -444 #jump main -> sub_2
                  and          a5, a5, gp
                  slti         gp, sp, 1490
                  lui          s3, 557859
                  or           t5, s3, a1
                  sub          t1, a4, s3
                  bge          gp, t1, 207f
                  slli         t5, t2, 26
                  blt          a5, a5, 210f
                  xor          s0, t4, gp
                  bne          a3, tp, 215f
                  xori         tp, s10, -1878
                  beq          gp, s3, 209f
                  sltiu        a5, a5, 61
                  bne          a0, s4, 203f
                  bge          s7, s5, 217f
                  ori          t3, s5, 1639
                  lui          a3, 442869
203:              or           s0, s11, s4
                  add          a1, t0, s8
                  sub          s11, sp, t6
                  beq          t0, s6, 210f
207:              add          gp, gp, tp
                  bltu         s0, tp, 211f
209:              lui          zero, 699717
210:              ori          s0, s8, -478
                  la           s1, region_0+951 #start load_store_instr_stream_2
                  la           a4, region_0+133 #start load_store_instr_stream_0
                  la           t5, region_0+1833 #start load_store_instr_stream_1
                  lb           s11, 127(a4)
                  sb           s1, 1373(a4)
                  lbu          t1, 33(s1)
                  lb           s11, 847(a4)
                  lb           s2, -17(t5)
                  lhu          a5, 75(t5)
                  lbu          zero, 36(s1)
                  lbu          s11, 126(t5)
                  lhu          s7, -123(t5)
                  lb           s6, 693(a4)
                  sh           s9, 35(s1)
                  sb           a1, -254(t5)
                  sh           sp, 1569(a4)
                  lbu          s9, -40(t5)
                  lb           a2, 1348(a4)
                  lhu          zero, -145(t5)
                  lb           s2, 61(s1)
                  sb           t2, -182(t5)
                  sb           zero, -30(s1)
                  lb           s0, 1439(a4)
                  sb           s0, 54(s1)
                  lw           s4, 895(a4)
                  lbu          s0, 52(s1) #end load_store_instr_stream_2
                  lbu          sp, 30(t5)
                  sb           s0, 878(a4)
                  lbu          a0, -93(t5) #end load_store_instr_stream_1
                  lbu          t4, 1427(a4) #end load_store_instr_stream_0
211:              sra          s2, s2, a2
                  bgeu         s7, a7, 223f
                  srl          s8, t5, s5
                  bne          s7, tp, 222f
215:              sll          tp, a1, s5
                  nop
217:              sltiu        s4, a4, -963
                  or           s2, a4, s4
                  xori         t5, a5, 412
                  addi         gp, t2, -405
                  sltu         a0, t6, s11
222:              and          a2, t5, s11
223:              bgeu         t3, s11, 241f
                  xor          s6, a0, a1
                  sltiu        s6, ra, 970
                  addi         s0, a4, -781
                  or           a5, t4, t0
                  sra          s1, s5, t1
                  andi         t5, s3, 1533
                  srl          a7, t6, t0
                  srl          tp, t3, a3
                  xor          ra, gp, a7
                  xor          a1, sp, s11
                  andi         a2, s2, -1189
                  ori          t4, s9, -659
                  srl          gp, s6, zero
                  xor          zero, a2, gp
                  addi         t4, gp, 338
                  bltu         t1, s1, 242f
                  ori          s3, t4, 1082
241:              slli         ra, zero, 12
242:              sll          a4, sp, t6
                  bgeu         t2, gp, 249f
                  lui          a0, 66974
                  ori          s8, s2, 2001
                  andi         a5, s3, 192
                  add          t4, a7, t1
                  bltu         a4, a5, 265f
249:              and          s9, tp, t1
                  addi         ra, s6, 1590
                  srai         s9, a2, 2
                  sll          a3, s0, s4
                  srl          a4, a1, a0
                  bgeu         s5, s1, 269f
                  xori         s9, s2, 1015
                  addi         s3, t6, 1022
                  sltu         s6, t1, t6
                  bltu         zero, t3, 265f
                  beq          t2, s4, 272f
                  slli         zero, s8, 27
                  bltu         a7, s0, 264f
                  beq          s2, gp, 277f
                  bltu         a7, s1, 272f
264:              srl          s10, s11, s10
265:              bge          s8, a1, 275f
                  slli         a5, a4, 15
                  lui          a1, 4546
                  xori         tp, zero, 889
269:              andi         s1, s0, -1692
                  slli         a7, s6, 6
                  sltiu        s6, s6, 1023
272:              sll          a0, t6, s2
                  bltu         s2, zero, 288f
                  sll          s3, s8, a1
275:              xori         zero, ra, 892
                  blt          s11, s6, 292f
277:              srl          sp, a1, sp
                  auipc        a7, 921575
                  auipc        a0, 887271
                  sll          a4, t2, s5
                  sub          t5, a6, t4
                  auipc        s7, 177149
                  slt          tp, t2, s2
                  beq          a4, s3, 295f
                  blt          s1, a7, 298f
                  and          s1, t1, t0
                  sub          s0, a6, t2
288:              auipc        t4, 29289
                  xori         s10, s10, -218
                  or           s7, t2, s9
                  bge          a1, a4, 308f
292:              blt          s10, s11, 301f
                  slli         s0, t4, 23
                  addi         a5, a4, 503
295:              bge          gp, t1, 313f
                  xor          gp, s11, zero
                  beq          sp, t6, 303f
298:              add          a1, a5, s7
                  bne          t1, s10, 315f
                  lui          a3, 879440
301:              sltu         a7, s3, a1
                  sra          a5, t1, a2
303:              sll          a1, a4, gp
                  slt          tp, a2, s5
                  sltiu        a0, t1, -1401
                  bge          ra, s5, 315f
                  srai         t1, a4, 24
308:              srai         a2, t3, 12
                  bltu         s0, a4, 322f
                  sltiu        s8, s1, -936
                  addi         s0, s5, 847
                  auipc        a4, 264482
313:              slli         s11, a2, 9
                  ori          t2, a5, 199
315:              or           s1, s1, s2
                  slt          s10, s3, a6
                  andi         s4, t6, -1405
                  bne          s8, t0, 333f
                  slli         s1, s6, 6
                  srai         sp, s4, 30
                  add          a5, s7, s8
322:              bgeu         a0, zero, 325f
                  sub          s2, a3, a3
                  sltu         s1, t6, a7
325:              sra          s11, t2, t6
                  ori          s0, a1, 242
                  slli         s8, s6, 28
                  sltu         a0, s9, s7
                  sub          s8, t5, s5
                  beq          a6, s8, 341f
                  sltiu        s1, sp, 202
                  bltu         a3, t1, 352f
333:              srl          s8, s2, t2
                  add          a2, s9, a2
                  beq          zero, t6, 338f
                  beq          s4, s8, 340f
                  sltiu        s11, t1, -724
338:              bge          gp, a7, 349f
                  nop
340:              slt          a5, t2, a1
341:              add          a2, s1, s0
                  and          s3, ra, s7
                  srli         s6, t2, 31
                  bge          s2, tp, 350f
                  sltiu        s6, s9, 257
                  sub          s0, a7, t2
                  xori         t5, s0, 186
                  beq          s6, s5, 352f
349:              slli         sp, a5, 20
350:              sra          a3, a4, s6
                  sltiu        a1, s7, 309
352:              srl          s9, tp, a1
                  srai         s11, a4, 1
                  sub          a1, gp, a1
                  slt          s11, s11, s2
                  srl          a7, a1, s11
                  and          zero, tp, a3
                  sll          s9, gp, s9
                  sra          a5, s6, a6
                  slli         s8, a4, 5
                  slti         a5, gp, 1658
                  bge          zero, t5, 365f
                  srai         sp, gp, 30
                  xor          s9, tp, t5
365:              xor          s6, a3, zero
                  xori         t5, t5, -1531
                  srli         zero, t1, 15
                  bltu         a1, a5, 380f
                  slt          ra, t5, ra
                  bltu         s7, a3, 387f
                  sltiu        s4, a1, 1993
                  srli         s7, s10, 16
                  bltu         s0, a6, 389f
                  bltu         t4, s1, 384f
                  bgeu         s6, s3, 390f
                  sltiu        a4, s5, 1458
                  andi         a7, zero, -1765
                  nop
                  slti         a3, s7, 1066
380:              bge          s10, t0, 390f
                  auipc        t3, 458719
                  sltu         s11, t3, s7
                  blt          a1, s1, 390f
384:              or           t3, a2, a7
                  addi         t1, s2, 535
                  sltiu        a2, t6, 2016
387:              srl          t4, gp, s1
                  bgeu         a1, s3, 392f
389:              slt          s2, gp, s7
390:              nop
                  lui          s2, 114903
392:              srli         s6, s7, 20
                  or           a4, a7, t3
                  slli         a5, t3, 4
                  auipc        s9, 1026603
                  bltu         t2, s2, 400f
                  blt          s11, s10, 414f
                  srai         t3, s4, 29
                  slti         a2, t0, 1252
400:              slli         s1, s11, 24
                  add          t0, s6, t3
                  andi         gp, t3, -745
                  bne          t3, s2, 418f
                  bne          t4, s3, 412f
                  blt          s1, s1, 408f
                  sub          s8, a0, a7
                  bgeu         tp, s7, 410f
408:              ori          a7, s0, -1572
                  bne          gp, t3, 424f
410:              srli         t3, t2, 14
                  slt          s7, s3, s1
412:              nop
                  srl          tp, s8, a1
414:              add          t4, gp, a7
                  bltu         t0, a1, 419f
                  sll          s2, t0, t5
                  sltu         s8, s7, s6
418:              andi         zero, a4, -19
419:              slti         a1, t6, 341
                  ori          s10, s4, 2013
                  srli         a2, a4, 9
                  slti         a1, t3, 1970
                  sra          a1, s8, t1
424:              andi         s1, a2, -1498
                  srai         s0, s10, 24
                  bge          s11, t1, 446f
                  sll          s9, t6, s8
                  sltu         t4, a5, t5
                  blt          a3, a3, 435f
                  lui          s3, 295404
                  xor          a3, s2, s1
                  srli         a7, a4, 8
                  nop
                  nop
435:              sll          s6, ra, t3
                  addi         t1, a4, 1269
                  slli         t1, t1, 0
                  xor          s11, s3, s7
                  xori         gp, s7, -478
                  beq          t0, a0, 447f
                  auipc        s3, 71116
                  and          s11, a3, s5
                  xori         a4, ra, -1765
                  auipc        a3, 371627
                  add          s0, t4, gp
446:              sra          s1, s9, a4
447:              bgeu         t4, a7, 455f
                  lui          s10, 682172
                  slti         s9, a0, -1615
                  sltiu        t2, a3, -441
                  bltu         t0, s0, 461f
                  or           s3, a1, s5
                  nop
                  bge          a1, s0, 458f
455:              sltiu        tp, zero, -1709
                  sra          s7, s9, s1
                  bge          zero, a4, 461f
458:              auipc        s0, 357476
                  srl          gp, t6, s7
                  add          t5, t1, t5
461:              beq          t2, a5, 474f
                  slti         a4, t0, -699
                  sltiu        t5, s6, -1017
                  srl          gp, t4, s1
                  ori          gp, t2, -105
                  andi         t2, a5, -1922
                  slti         a5, a6, -694
                  ori          a0, gp, 926
                  xor          s9, sp, a1
                  srli         s11, s6, 5
                  bne          a5, zero, 487f
                  auipc        s2, 353514
                  sub          ra, s0, t6
474:              nop
                  sll          t1, a4, s0
                  bltu         t0, t6, 480f
                  bltu         a4, a6, 494f
                  sra          t4, t4, a3
                  la           s11, region_1+692 #start riscv_load_store_rand_instr_stream_3
                  xor          a5, s1, zero
                  sll          t4, a0, a2
                  srl          s3, tp, tp
                  srl          a1, a3, sp
                  andi         a2, t0, -1058
                  slli         t4, s2, 26
                  lbu          gp, 1(s11)
                  sltu         sp, s8, s6
                  sra          s3, t0, gp
                  lbu          t2, -8(s11)
                  sub          t2, gp, s5
                  addi         t4, s3, 1940
                  lbu          s8, 7(s11)
                  lbu          s10, -3(s11)
                  sltu         s3, s3, s11
                  lhu          t3, -2(s11)
                  lh           t5, -4(s11)
                  srl          a4, zero, s8
                  sb           t2, -5(s11)
                  sll          a7, s9, s7
                  lbu          zero, 4(s11)
                  sltu         s6, s4, s5
                  sll          s0, tp, s4
                  slli         s2, a5, 3
                  xor          t2, ra, t5
                  sltu         sp, ra, a2
                  lbu          s6, 2(s11)
                  slli         a3, a2, 3
                  sll          t1, s1, a5
                  lui          s0, 335712
                  sb           s0, 1(s11)
                  lb           s1, 11(s11)
                  xori         s9, s6, 1917
                  add          s9, a7, a2
                  xori         s7, a2, 289
                  sltu         a7, t5, s9
                  xor          a3, zero, t4
                  andi         s7, s11, -989
                  lbu          s6, -11(s11) #end riscv_load_store_rand_instr_stream_3
                  xor          s0, a0, s10
480:              beq          t4, gp, 483f
                  xor          s7, s6, s4
                  sltiu        ra, s6, -1893
483:              ori          zero, s10, -1396
                  slti         a5, s11, 208
                  sltu         s3, t0, t3
                  slli         t5, s1, 29
487:              ori          t4, a5, -1810
                  auipc        a2, 666487
                  xori         s4, s7, -362
                  slti         s4, s5, -1979
                  lui          a2, 529578
                  lui          s11, 497446
                  srli         a3, tp, 17
494:              xori         a1, s0, -271
                  srai         s3, ra, 9
                  sub          tp, t6, a6
                  srli         a2, s8, 29
                  slli         s7, a4, 19
                  sub          s7, t1, s8
                  ori          gp, s4, 473
                  sll          s3, t6, s5
                  bltu         t3, s6, 519f
                  add          t2, gp, a2
                  addi         t1, s5, 301
                  and          s8, s5, a1
                  andi         t4, a5, -1152
                  bge          s8, s10, 518f
                  la           s0, sub_1
                  ori          a3, zero, 1281
                  srli         s8, s6, 21
                  addi         s0, s0, -991
                  bgeu         a7, s10, main_j2 #branch to jump instr
                  addi         s9, t6, -2027
                  andi         t0, s2, -1771
                  add          a5, tp, t0
main_j2:          jalr         ra, s0, 991 #jump main -> sub_1
                  slli         t1, t0, 29
                  sltu         gp, t4, a5
                  bge          t2, ra, 519f
                  and          a5, ra, a4
                  ori          sp, a1, 492
                  and          t0, s9, t0
                  auipc        a1, 854615
                  add          a1, t3, zero
                  slt          gp, s1, s4
                  ori          s2, t1, -879
518:              beq          a3, s1, 533f
519:              andi         a1, a2, 1703
                  sltiu        s9, s4, 732
                  andi         s11, a0, -939
                  lui          s9, 413193
                  slli         t1, gp, 21
                  andi         tp, sp, -1375
                  srai         s6, s1, 18
                  sltiu        a3, s5, -1117
                  xori         t0, s0, -196
                  beq          s6, sp, 537f
                  bgeu         tp, t2, 544f
                  auipc        a2, 485029
                  sra          ra, t5, t2
                  ori          a7, t5, -1867
533:              and          s3, s1, s9
                  or           t4, t4, zero
                  srl          gp, a2, a0
                  bge          sp, t6, 553f
537:              bgeu         s11, s8, 543f
                  bne          s4, s0, 554f
                  andi         a3, t3, -546
                  nop
                  slti         sp, s8, 1786
                  srl          s10, t1, s4
543:              slli         s4, s10, 12
544:              sltu         s0, sp, ra
                  ori          a7, gp, 1156
                  sra          sp, t3, a5
                  srai         ra, sp, 20
                  sltiu        a5, s10, -1359
                  sub          t3, s11, s10
                  slti         t2, a5, -2039
                  srli         t0, s2, 14
                  auipc        sp, 400109
553:              nop
554:              sra          t4, s8, a5
                  xor          s2, s5, a3
                  auipc        s10, 221800
                  sub          a4, s5, s8
                  sltiu        s3, t3, 55
                  nop
                  slli         s3, a2, 18
                  andi         s0, s8, 154
                  lui          t3, 819836
                  bge          a1, a1, 574f
                  blt          t1, s8, 576f
                  bge          s9, a5, 583f
                  srai         a5, s0, 0
                  bge          t4, t1, 577f
                  sub          s1, t3, a4
                  xor          gp, s10, s0
                  add          a7, a1, a3
                  auipc        s10, 927401
                  slli         s3, t6, 20
                  slti         s2, ra, 1785
574:              andi         s8, s7, 1611
                  sll          zero, s2, zero
576:              and          s8, s6, s8
577:              sltiu        gp, sp, 337
                  sltiu        t3, s11, -219
                  auipc        s2, 166430
                  blt          t4, t0, 593f
                  and          s11, s9, a1
                  sub          gp, sp, a6
583:              sra          s2, s5, t0
                  xori         t2, gp, 1390
                  srli         s2, s1, 20
                  andi         a7, sp, -1053
                  xori         s2, zero, -1602
                  slti         s1, t5, -1638
                  beq          gp, s5, 593f
                  sll          a1, s4, s6
                  slli         sp, s5, 7
                  add          a2, zero, a5
593:              andi         tp, t5, -1356
                  ori          zero, a1, 1764
                  sub          s10, s7, a5
                  and          s6, t3, gp
                  sltiu        s9, t1, -1615
                  lui          s0, 733436
                  or           a3, zero, s6
                  bne          gp, sp, 610f
                  srli         a5, s9, 10
                  sub          s2, t3, s5
                  srl          t0, tp, s0
                  andi         a0, s4, -1739
                  xor          t0, t0, s1
                  beq          t2, s1, 619f
                  xori         s9, t1, -1213
                  srai         s1, t4, 23
                  sltiu        s7, t2, -626
610:              add          s10, ra, tp
                  srl          s8, s7, a6
                  ori          s8, t3, -1952
                  lui          ra, 854913
                  srli         s0, s9, 18
                  sra          s1, s3, ra
                  slti         s6, a6, 589
                  sltu         a3, s11, s3
                  xor          a4, zero, s9
619:              ori          s2, zero, 289
                  and          t2, s9, s7
                  srli         t3, s7, 7
                  srli         s3, s2, 14
                  bltu         t0, s4, 627f
                  addi         a2, t2, 848
                  nop
                  auipc        s10, 865761
627:              srl          a0, s5, t3
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bge          s6, t1, sub_1_stack_p
                  slli         tp, s8, 7
                  and          tp, s9, s5
sub_1_stack_p:    addi         t6, t6, -48
                  sw           ra, 4(t6)
                  ori          a2, s2, -869
                  sltiu        gp, a1, -1946
                  la           s6, region_0+1286 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a5, -4(s6)
                  sh           a5, -4(s6)
                  sltu         s4, ra, t3
                  lh           zero, -4(s6)
                  sb           s11, -4(s6)
                  lhu          s0, -4(s6)
                  sb           s6, -15(s6)
                  lb           s1, 15(s6)
                  sh           s3, 14(s6)
                  srl          t1, s6, gp
                  lb           t2, 14(s6)
                  sltiu        gp, a2, -1509
                  lbu          s3, 14(s6)
                  lw           s2, -14(s6)
                  lh           a3, -16(s6)
                  lw           a5, 6(s6)
                  addi         a4, a1, 913
                  lbu          s11, -4(s6)
                  sb           s4, -1(s6) #end riscv_load_store_hazard_instr_stream_1
                  la           a2, region_1+947 #start riscv_load_store_hazard_instr_stream_0
                  lb           s8, 510(a2)
                  lui          s3, 1034503
                  sltiu        s7, a4, -240
                  lbu          s0, 671(a2)
                  lb           a7, 804(a2)
                  lb           s8, 804(a2)
                  sb           a5, 804(a2)
                  srli         sp, s4, 25
                  srai         s7, a5, 5
                  srl          ra, s4, t5
                  lbu          s4, 804(a2)
                  sb           tp, 804(a2)
                  lbu          s8, 446(a2)
                  sb           a5, 740(a2)
                  lbu          t0, 740(a2)
                  lbu          s11, -195(a2)
                  and          zero, s10, s6
                  lh           s4, 975(a2)
                  sb           s10, -811(a2)
                  sh           a5, 321(a2)
                  lbu          s2, 964(a2) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1975 #start riscv_load_store_rand_instr_stream_0
                  sh           zero, -171(sp)
                  lbu          s10, -10(sp)
                  sra          s11, t1, zero
                  slt          t2, s2, zero
                  ori          s9, s11, -348
                  ori          s7, s6, 1408
                  lbu          gp, -42(sp)
                  lhu          s9, -157(sp)
                  sub          s9, zero, t0
                  sll          s1, s7, t4
                  sra          a0, s1, s9
                  sw           a7, -159(sp)
                  lbu          s2, 4(sp)
                  or           a5, t1, s3
                  sh           s2, -209(sp)
                  and          s6, s2, a7
                  xor          s0, zero, s4
                  lb           s11, -60(sp)
                  lh           a4, -31(sp)
                  xor          s1, s10, a4
                  nop
                  ori          s2, a4, 866
                  lbu          s11, -248(sp)
                  slli         a3, t4, 14
                  lbu          tp, -84(sp)
                  sb           a1, -52(sp)
                  sh           s0, -99(sp)
                  sb           s2, -253(sp)
                  lbu          t3, 22(sp)
                  slt          ra, s1, s3
                  srli         a7, t5, 29
                  lb           a1, -119(sp)
                  srl          s7, s5, a3
                  lbu          s0, -155(sp)
                  srl          a2, t2, a5
                  sw           s5, -203(sp)
                  addi         s7, s3, -148
                  slt          s1, a3, zero
                  slli         a3, s1, 3
                  addi         a4, t1, -1101
                  lbu          s0, -236(sp)
                  slli         a3, t1, 17
                  lbu          s0, -40(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_0+1115 #start load_store_instr_stream_1
                  sb           a2, 811(t0)
                  la           t2, region_0+790 #start load_store_instr_stream_0
                  lbu          s3, 9(t2)
                  lb           ra, -45(t2)
                  sb           t2, 34(t0)
                  lb           a4, -769(t0)
                  lbu          zero, -16(t2)
                  lb           gp, -54(t2)
                  sb           t1, 403(t0)
                  lbu          gp, -31(t2)
                  sw           a0, -22(t2)
                  lw           tp, -62(t2)
                  sb           t3, 251(t0)
                  lw           s9, -30(t2)
                  sb           tp, 186(t0)
                  lh           ra, -85(t0) #end load_store_instr_stream_1
                  sb           s10, 21(t2) #end load_store_instr_stream_0
                  la           sp, region_0+593 #start riscv_load_store_rand_instr_stream_1
                  lb           a4, 585(sp)
                  nop
                  srai         a5, t5, 17
                  sh           t2, -351(sp)
                  lhu          a7, 239(sp)
                  sb           s3, -434(sp)
                  lh           t1, 565(sp)
                  lb           a7, 200(sp)
                  lhu          s4, 573(sp)
                  srli         s2, a3, 5
                  lbu          s4, 494(sp)
                  lh           a4, 501(sp)
                  lh           t3, 345(sp)
                  srli         s8, s5, 1
                  auipc        t1, 344314
                  srl          s11, s1, s10
                  xor          t5, zero, s3
                  srli         zero, s9, 22
                  sub          tp, s4, s4
                  sb           s9, 1352(sp)
                  sb           t2, 1388(sp)
                  sltu         s2, ra, a4
                  lb           a3, -570(sp)
                  andi         a1, s9, 505
                  addi         gp, t1, -741
                  sra          gp, zero, a3
                  lb           s4, -250(sp)
                  lb           a0, 1252(sp)
                  sh           s10, 511(sp)
                  lbu          ra, 940(sp)
                  lhu          s6, 355(sp)
                  lh           s3, 1241(sp)
                  sub          s1, s11, s11
                  srai         t5, t5, 17
                  sh           zero, 893(sp)
                  lbu          s7, 1009(sp)
                  lb           t5, 180(sp)
                  lb           ra, 222(sp)
                  and          t3, a3, a1
                  or           a5, s9, a5
                  sltu         t0, t5, s5
                  lb           gp, 936(sp)
                  lb           a3, 828(sp) #end riscv_load_store_rand_instr_stream_1
                  slli         t5, tp, 29
                  sltiu        s4, s9, -64
                  andi         s6, t6, 939
                  sltiu        s9, a3, -224
                  or           ra, s6, a1
                  nop
                  addi         sp, s10, -1157
                  nop
                  blt          t3, t0, 17f
                  nop
                  slt          s8, s5, t1
                  blt          a0, t5, 19f
                  sra          s11, t6, a6
                  beq          s11, s7, 24f
                  sll          t0, a1, a2
                  slti         s1, s3, -1606
                  bltu         s7, s7, 29f
17:               bltu         t3, tp, 29f
                  srli         ra, a2, 0
19:               addi         a2, a7, 1568
                  slli         a3, ra, 27
                  sltiu        s6, s9, -1365
                  auipc        s0, 215607
                  bne          s2, a3, 32f
24:               bltu         t0, s4, 44f
                  bne          ra, s2, 36f
                  xor          t4, s1, a4
                  beq          a5, s0, 30f
                  sltu         t0, a5, a1
29:               sra          gp, tp, ra
30:               slli         s11, s6, 15
                  bne          a4, a3, 46f
32:               sltiu        a5, zero, -454
                  sltu         s0, a5, a3
                  andi         t1, zero, 752
                  srai         s0, s3, 11
36:               srl          ra, gp, s4
                  beq          a3, t6, 49f
                  bne          ra, s7, 41f
                  xori         a1, t1, -1098
                  xori         s7, s2, -445
41:               xor          s11, t0, zero
                  slli         a5, ra, 26
                  slt          s0, gp, a0
44:               ori          gp, s10, -434
                  srli         s4, a0, 27
46:               auipc        gp, 327779
                  bltu         s6, gp, 67f
                  or           s11, a1, t0
49:               slli         t0, t4, 9
                  srli         t2, t4, 25
                  slt          a5, a2, s7
                  srai         s8, a0, 20
                  auipc        a2, 673716
                  bge          a1, t6, 57f
                  beq          tp, tp, 73f
                  bge          t2, a6, 57f
57:               sltiu        a4, t1, -943
                  or           s7, t5, s3
                  or           a2, t0, s8
                  slt          a3, s1, sp
                  ori          s3, s0, -1762
                  bge          ra, a5, 81f
                  bltu         a7, s2, 80f
                  bgeu         s6, t1, 68f
                  sll          tp, zero, t6
                  srai         s4, a2, 23
67:               addi         s10, s4, 1974
68:               slli         a2, t0, 12
                  add          t2, s2, tp
                  slti         s2, s5, 824
                  sll          s2, s9, s6
                  nop
73:               or           a2, s7, t1
                  or           a1, a1, s5
                  addi         t3, t2, -754
                  beq          s1, t5, 82f
                  ori          t5, t2, -1017
                  srl          a7, tp, t6
                  beq          a2, s1, 98f
80:               slli         t4, s8, 20
81:               bgeu         s7, a3, 88f
82:               srai         a2, t1, 13
                  andi         s6, t1, -1670
                  slli         s6, a5, 28
                  add          t4, zero, a5
                  bne          a0, s11, 106f
                  xor          a3, s7, gp
88:               beq          a2, s6, 97f
                  lui          t4, 915833
                  blt          a1, a7, 109f
                  slli         s4, a1, 6
                  bge          a2, a2, 103f
                  xori         s3, a0, -425
                  or           a4, t6, sp
                  slti         s0, s1, -754
                  srai         t4, gp, 1
97:               slt          s7, t3, zero
98:               nop
                  and          s11, sp, s4
                  bltu         a0, t4, 111f
                  blt          s3, t6, 121f
                  andi         a3, a5, 334
103:              sltu         s4, t6, a4
                  add          s6, s0, a2
                  bge          s9, s1, 112f
106:              srli         s11, s5, 26
                  slti         t2, gp, 1255
                  ori          sp, t4, -61
109:              andi         t4, a4, 1383
                  srl          t3, gp, s7
111:              xor          t5, s2, a4
112:              ori          zero, a7, -369
                  sra          s3, t6, s8
                  ori          s2, t6, -210
                  srl          gp, sp, s10
                  and          t3, sp, s1
                  srl          s0, t0, t3
                  sra          ra, t4, a2
                  bgeu         a4, a5, 136f
                  srai         t0, t4, 20
121:              sltu         t4, s7, s9
                  ori          t0, a1, -1182
                  sub          a0, s7, s9
                  sra          s2, s2, s2
                  sub          a1, t3, s1
                  sra          a1, gp, s9
                  or           zero, s7, a7
                  addi         t1, a7, -961
                  blt          s0, s9, 149f
                  slt          a0, s3, t0
                  blt          t4, sp, 140f
                  add          s0, s2, a6
                  slt          s9, a6, s10
                  sub          t0, sp, a7
                  srai         a4, t6, 4
136:              sra          a4, a6, s4
                  slti         s11, s3, -1256
                  blt          a4, s11, 144f
                  beq          a3, s7, 154f
140:              xor          s6, a4, a3
                  sra          s7, s3, s4
                  la           a5, region_0+1257 #start load_store_instr_stream_4
                  la           s9, region_0+669 #start load_store_instr_stream_1
                  la           t3, region_0+599 #start load_store_instr_stream_3
                  la           t0, region_0+1755 #start load_store_instr_stream_0
                  la           a7, region_0+167 #start load_store_instr_stream_2
                  lb           a4, -6(a7)
                  lb           a1, 222(t3)
                  lhu          s11, 207(t3)
                  lh           a1, -55(a5)
                  lh           zero, 3(s9)
                  lbu          a1, -12(a7)
                  lbu          t1, 56(a5)
                  lb           t4, -10(t0)
                  lhu          a4, -9(a7)
                  sb           s3, -8(s9)
                  lhu          s11, -205(t3)
                  lbu          s1, 28(t0)
                  lh           zero, 13(s9)
                  lb           sp, -2(a7)
                  lh           a3, -15(s9)
                  lb           a1, 10(s9)
                  lw           a3, 29(t0)
                  lb           zero, -2(a7)
                  sb           a3, -144(t3)
                  sb           a0, 15(s9)
                  lbu          a3, 66(t3)
                  lb           s3, -6(a7)
                  lh           s0, -3(a7)
                  sh           s9, -15(a5)
                  lbu          s0, 13(s9)
                  lh           ra, -81(t3) #end load_store_instr_stream_3
                  sh           s7, -23(t0)
                  sb           s3, -58(a5)
                  lbu          s4, -15(s9) #end load_store_instr_stream_1
                  lbu          t4, -10(a5) #end load_store_instr_stream_4
                  lb           a0, -14(a7)
                  lh           ra, -5(a7)
                  lw           gp, 9(a7) #end load_store_instr_stream_2
                  lb           s6, 28(t0) #end load_store_instr_stream_0
                  auipc        a2, 314502
                  srai         a1, t5, 0
144:              bgeu         a1, ra, 164f
                  srl          t0, s3, a5
                  beq          s2, a5, 159f
                  blt          sp, ra, 158f
                  add          tp, a7, a4
149:              ori          a0, t3, 976
                  slli         a0, a5, 30
                  slt          s1, a4, t2
                  lui          t4, 951880
                  ori          t2, s1, 1803
154:              blt          s2, sp, 171f
                  andi         ra, ra, 1157
                  sltiu        a1, t5, -1331
                  lui          zero, 282524
158:              andi         s8, t6, 340
159:              sltu         s2, s0, a5
                  andi         zero, t5, 1836
                  sltiu        t1, s9, -929
                  ori          s3, tp, 689
                  nop
164:              ori          a2, s7, -2035
                  srai         s4, s4, 12
                  sll          tp, a7, a6
                  sll          t0, t3, a4
                  ori          s0, sp, -1724
                  bgeu         s4, s1, 187f
                  slt          a2, t2, a2
171:              sub          t2, t0, s2
                  sll          a7, sp, t0
                  andi         t5, s11, 1638
                  andi         t0, s6, 42
                  sub          s3, zero, s2
                  sra          s7, s9, a2
                  bge          s11, s5, 186f
                  add          sp, t6, a7
                  and          s0, a3, a7
                  sltu         t1, s2, t3
                  andi         s4, a2, -1011
                  ori          a0, s0, -1322
                  bge          a5, s6, 194f
                  srl          gp, t0, ra
                  sltiu        t0, t1, -1137
186:              add          zero, tp, a1
187:              bne          t4, s3, 199f
                  sll          t3, a2, s3
                  xor          s2, tp, t2
                  sra          t2, a6, s2
                  bge          t5, t6, 198f
                  auipc        s7, 498658
                  and          s8, a3, s3
194:              add          s3, a3, ra
                  slli         a3, a5, 0
                  beq          t6, s11, 213f
                  slt          s7, a0, a6
198:              addi         sp, s9, -1998
199:              sub          sp, s1, a0
                  slli         tp, s4, 3
                  add          s11, sp, a7
                  addi         t0, zero, 167
                  addi         t3, a7, 907
                  andi         a2, a6, 1339
                  auipc        t1, 314629
                  sll          s11, ra, t5
                  srl          t3, tp, zero
                  ori          s10, s3, -8
                  lui          a5, 686484
                  bgeu         a5, t6, 218f
                  or           s7, gp, gp
                  slti         tp, s5, 1462
213:              bne          s4, a6, 216f
                  slti         s6, s4, -2024
                  sll          s1, zero, a1
216:              sltu         a0, s11, ra
                  srli         s7, t4, 23
218:              and          a7, sp, s7
                  nop
                  bgeu         s3, s7, 231f
                  srl          a1, t5, s3
                  ori          s3, s2, 951
                  bne          t0, s0, 227f
                  xori         tp, s3, -1702
                  bltu         tp, t4, 226f
226:              andi         s4, t2, 788
227:              sll          a3, a6, zero
                  ori          s11, tp, 866
                  beq          s10, t0, 232f
                  xori         gp, a4, 324
231:              xori         a0, zero, -690
232:              auipc        a3, 656502
                  sub          s8, s3, s6
                  xor          s0, zero, t3
                  xor          t0, s1, t5
                  addi         s11, s10, -405
                  auipc        s7, 490980
                  auipc        s10, 689593
                  bltu         a1, t3, 259f
                  auipc        a0, 365219
                  sub          tp, s2, sp
                  srl          gp, s3, t4
                  bltu         t1, a3, 263f
                  addi         t2, s3, 1499
                  sltiu        t3, a6, 1994
                  or           t5, a3, t1
                  ori          t2, t1, 1947
                  sltiu        t5, s10, 291
                  blt          ra, a4, 264f
                  srl          a0, a2, t4
                  andi         s10, t6, -138
                  or           s4, s5, t0
                  addi         s10, sp, 876
                  srai         s9, a2, 17
                  auipc        a5, 158249
                  slt          t3, t5, ra
                  bge          tp, t6, 264f
                  andi         t4, tp, 712
259:              or           s2, t6, t0
                  xori         t5, gp, -1181
                  andi         t3, a2, 121
                  lui          t1, 93261
263:              nop
264:              andi         t3, s10, 1203
                  srai         tp, s2, 19
                  slli         a2, ra, 24
                  auipc        s3, 181987
                  add          s11, a2, t5
                  lw           ra, 4(t6)
                  addi         t6, t6, 48
                  ori          s4, t4, -907
466:              addi x2, x1, 1
466:              jalr x2, x2, 0
sub_2:            srli         t4, tp, 4
                  addi         t6, t6, -16
                  sw           ra, 4(t6)
                  srli         t4, a2, 28
                  slti         t1, t1, -1915
                  andi         s9, s10, -1762
                  xori         t3, t1, -963
                  la           s10, region_1+977 #start load_store_instr_stream_1
                  sb           s2, -152(s10)
                  sb           s0, -125(s10)
                  la           a5, region_1+260 #start load_store_instr_stream_0
                  lbu          ra, 42(s10)
                  lb           t1, 48(s10)
                  sb           t5, -47(a5)
                  lb           a4, -90(s10)
                  lbu          a2, 139(a5)
                  lbu          t2, 82(s10)
                  lbu          s3, 208(a5)
                  lb           s1, -211(a5)
                  lb           t0, 126(s10)
                  sb           a6, -181(a5)
                  lbu          s9, -18(s10)
                  lb           s0, 156(s10) #end load_store_instr_stream_1
                  lb           s8, 113(a5) #end load_store_instr_stream_0
                  la           sp, region_0+138 #start riscv_load_store_hazard_instr_stream_0
                  lb           ra, -105(sp)
                  lb           a7, -105(sp)
                  lb           a4, 144(sp)
                  sh           zero, 144(sp)
                  srai         s6, a7, 13
                  lbu          s1, 144(sp)
                  lbu          zero, 144(sp)
                  lh           a7, 144(sp)
                  lb           s0, 144(sp)
                  or           s6, s4, a4
                  lb           a3, 144(sp)
                  sb           tp, 144(sp)
                  lb           a7, 253(sp)
                  sb           t3, 253(sp)
                  xori         a7, t4, 463
                  lb           t4, 253(sp)
                  lbu          s1, 253(sp)
                  sb           s11, 253(sp)
                  lbu          s2, 253(sp)
                  lb           t1, 253(sp)
                  nop
                  addi         s9, zero, -818
                  lb           s9, -63(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s9, region_0+422 #start riscv_load_store_rand_instr_stream_0
                  lb           s1, 60(s9)
                  sb           s0, -15(s9)
                  sltiu        s8, a2, 1751
                  nop
                  lbu          sp, 7(s9)
                  xori         s7, sp, 509
                  sb           s9, 33(s9)
                  add          a1, a1, t0
                  and          a1, a1, s1
                  auipc        s1, 866613
                  lb           s3, -4(s9)
                  or           ra, s2, t5
                  sltu         s0, s1, ra
                  sh           a6, 48(s9)
                  sra          tp, a7, s2
                  srl          zero, s6, a0
                  slli         t3, tp, 13
                  lb           t2, 27(s9)
                  auipc        s10, 763146
                  add          a1, a2, t0
                  sb           sp, 23(s9)
                  lbu          s7, -48(s9)
                  lbu          t4, -49(s9)
                  sb           a0, 29(s9)
                  lb           s1, -50(s9)
                  sb           a7, 1(s9)
                  lb           t4, -32(s9)
                  lbu          s2, 35(s9)
                  srai         a1, tp, 23
                  addi         s11, t3, 1154
                  lb           s3, 61(s9)
                  lb           s10, -11(s9)
                  sll          tp, s7, s3
                  sh           s0, -64(s9)
                  nop
                  and          a2, s4, t1
                  lbu          t1, -57(s9)
                  lb           s8, 25(s9)
                  sb           s9, 59(s9) #end riscv_load_store_rand_instr_stream_0
                  sltu         s4, s0, s9
                  srl          t5, s10, a3
                  sub          s1, ra, t1
                  xor          t4, s8, tp
                  auipc        t0, 427841
                  ori          s9, gp, -684
                  add          s4, t0, t3
                  or           a3, s11, a0
                  sub          gp, s5, a3
                  xori         ra, a6, 1673
                  sra          a2, s2, t0
                  srl          zero, a1, s3
                  sub          s6, s0, s11
                  sub          s8, s8, t5
                  blt          t2, s0, 31f
                  and          a7, t5, gp
                  xor          t1, s11, t5
                  auipc        a2, 269871
                  and          a3, t6, s4
                  sub          s8, tp, s8
                  slli         zero, s6, 13
                  andi         a0, t6, -198
                  bltu         s1, a5, 42f
                  nop
                  and          zero, t2, s8
                  srl          gp, ra, t4
                  slti         t2, t2, 180
                  sltu         tp, a7, a7
                  sub          s8, s8, t5
                  bge          a4, s10, 43f
                  ori          t5, a1, 92
31:               or           ra, a5, s10
                  andi         t2, t4, -1641
                  srl          a1, a0, sp
                  auipc        a5, 674114
                  beq          s7, t3, 53f
                  bge          gp, a5, 53f
                  bne          t5, a5, 40f
                  slt          zero, zero, s1
                  sub          s1, a5, a4
40:               sll          s2, t6, a5
                  blt          sp, sp, 57f
42:               nop
43:               or           sp, a7, a4
                  xor          s0, a0, s10
                  auipc        ra, 366222
                  ori          s11, zero, 1716
                  srli         s6, s11, 31
                  slti         s2, s3, 424
                  blt          s3, s2, 51f
                  and          a5, s4, zero
51:               add          a1, a6, ra
                  sltu         s9, t4, a3
53:               srl          a4, s3, gp
                  slt          zero, sp, a4
                  ori          s1, t5, 621
                  bgeu         s7, a0, 63f
57:               andi         a2, t5, 549
                  srli         t3, a4, 0
                  sub          s10, t3, s7
                  or           a4, s3, ra
                  bgeu         s11, s7, 68f
                  srl          ra, zero, t3
63:               slli         s1, s6, 27
                  sra          a7, t0, gp
                  xor          t2, s11, s10
                  slt          s6, s5, s4
                  lui          s9, 396139
68:               xor          a7, s5, a5
                  xori         s4, t2, 1012
                  slli         t0, s5, 22
                  bgeu         s11, gp, 77f
                  bne          s0, a4, 90f
                  slt          a3, a1, a1
                  bgeu         t1, t1, 87f
                  sltiu        t1, tp, 633
                  or           s9, s0, s8
77:               nop
                  bgeu         a1, s10, 81f
                  beq          s8, a0, 92f
                  add          s0, s6, s2
81:               beq          s4, t1, 88f
                  bge          s2, s3, 87f
                  beq          t0, t6, 94f
                  bltu         s6, sp, 85f
85:               beq          a3, a6, 87f
                  andi         a0, s6, -8
87:               bgeu         s5, s9, 100f
88:               beq          s1, ra, 95f
                  slti         zero, t2, 1630
90:               slt          a5, a4, a5
                  sra          s8, t3, s9
92:               nop
                  auipc        t5, 12781
94:               slti         t3, a4, -1858
95:               slti         t4, t2, 94
                  srl          t1, gp, s8
                  bne          s1, s9, 104f
                  bne          t6, s11, 104f
                  and          s7, s1, s8
100:              sll          s0, a3, s8
                  or           s2, a0, a3
                  srai         s7, a1, 11
                  or           a3, t1, t6
104:              srli         zero, t0, 9
                  and          s1, gp, tp
                  lw           ra, 4(t6)
                  slt          s11, ra, a0
                  andi         tp, s4, 977
                  srl          s8, s10, t2
                  slli         s1, s1, 23
                  auipc        s3, 999586
                  addi         t6, t6, 16
                  srai         t1, a6, 9
                  auipc        t0, 891850
                  sltu         t4, s10, t1
204:              addi x8, x1, 1
204:              jalr x8, x8, 0
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
.align           2
mtvec_handler:    
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x21, x31, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x30, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x30, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x30, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x30, x22, ecall_handler
                  li x22, 0x1
                  beq x30, x22, instr_fault_handler
                  li x22, 0x5
                  beq x30, x22, load_fault_handler
                  li x22, 0x7
                  beq x30, x22, store_fault_handler
                  li x22, 0xc
                  beq x30, x22, pt_fault_handler
                  li x22, 0xd
                  beq x30, x22, pt_fault_handler
                  li x22, 0xf
                  beq x30, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x31, x21, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
