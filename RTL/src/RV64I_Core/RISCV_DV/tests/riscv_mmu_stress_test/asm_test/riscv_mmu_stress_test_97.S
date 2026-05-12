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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0xd
                  li x1, 0xf1ba5b0a
                  li x2, 0xf6dc7dec
                  li x3, 0x0
                  li x4, 0xf73c60de
                  li x5, 0x80000000
                  li x6, 0xf96b7ebf
                  li x7, 0x80000000
                  li x9, 0xf
                  li x10, 0x6
                  li x11, 0x3
                  li x13, 0x0
                  li x14, 0xd
                  li x15, 0x80000000
                  li x16, 0xfacd5a50
                  li x17, 0xf48f8a6b
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0xa8f4aa21
                  li x21, 0xc50b8fa9
                  li x22, 0x1
                  li x23, 0xb
                  li x24, 0x9
                  li x25, 0x0
                  li x26, 0x8
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x12, user_stack_end
main:             la           s7, region_1+354 #start riscv_load_store_rand_instr_stream_2
                  lb           s5, 1172(s7)
                  lb           s3, -301(s7)
                  sb           a3, 1363(s7)
                  slt          ra, t3, s4
                  lbu          s6, -239(s7)
                  srli         gp, s8, 0
                  lb           s11, 299(s7)
                  sb           s3, -334(s7)
                  lbu          s8, -5(s7)
                  lw           s5, 814(s7)
                  addi         zero, ra, -453
                  srai         s4, s4, 18
                  sh           a6, 320(s7)
                  sb           s4, 863(s7)
                  slli         a1, a7, 14
                  and          s11, a3, s7
                  slti         t2, a2, -1990
                  lbu          a5, 1285(s7)
                  lw           zero, 1098(s7)
                  lh           gp, -280(s7)
                  srai         t0, a5, 30
                  lb           t3, 301(s7)
                  sltu         s5, gp, s10
                  sb           a6, 1005(s7)
                  lb           a1, 276(s7)
                  sb           sp, -279(s7)
                  xor          t0, a0, a5
                  lhu          s10, 1366(s7)
                  sb           a0, 865(s7)
                  lbu          s5, 400(s7)
                  lb           tp, 1484(s7)
                  sll          s2, gp, a3
                  lbu          s9, 1063(s7)
                  sw           a5, 958(s7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1563 #start riscv_load_store_rand_instr_stream_4
                  lbu          a1, 157(sp)
                  lbu          a0, 202(sp)
                  slti         s10, s11, -1121
                  add          s10, gp, s11
                  andi         s9, a2, -204
                  xor          s8, a0, a6
                  srl          s5, s6, s8
                  auipc        a0, 970804
                  ori          t2, a6, 146
                  lh           t4, -127(sp)
                  sh           t2, -243(sp)
                  sb           t6, -36(sp)
                  sll          s10, t3, s5
                  andi         a1, zero, -2042
                  andi         s8, t4, 625
                  sltu         s8, a0, zero
                  sb           a3, -200(sp)
                  srli         zero, s11, 12
                  lh           a1, 7(sp)
                  lb           s2, -168(sp)
                  lb           s5, -192(sp)
                  srli         s2, t3, 22
                  sb           s5, 251(sp)
                  sll          zero, t1, a2
                  andi         s10, a5, -76
                  or           tp, a5, s0
                  lb           s6, -238(sp)
                  lb           a3, 138(sp)
                  add          s9, gp, t0
                  or           t6, a6, zero
                  slti         s5, tp, 247
                  lb           gp, -172(sp)
                  sra          t6, s2, a2
                  sh           s7, 235(sp)
                  lw           a3, 77(sp)
                  xor          t4, s6, ra
                  slt          s10, a5, a5
                  lhu          gp, -47(sp)
                  slt          s10, s2, t6
                  sltu         t6, s0, t2
                  sub          zero, s3, s11
                  lw           t3, -151(sp)
                  ori          t5, s5, 1962
                  lh           a4, 159(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+430 #start riscv_load_store_rand_instr_stream_0
                  lbu          zero, -13(sp)
                  lb           ra, 11(sp)
                  sb           s6, 5(sp)
                  sb           a6, 16(sp)
                  lbu          ra, -7(sp)
                  sub          s2, zero, a7
                  lh           s8, -2(sp)
                  lbu          s11, -11(sp)
                  lh           s2, 16(sp)
                  sltu         s3, a0, gp
                  slt          s9, t1, s7
                  slti         a5, s7, -766
                  sb           a6, -9(sp)
                  lbu          a1, -9(sp)
                  lh           t6, -8(sp)
                  lbu          t3, -9(sp)
                  sb           t1, -13(sp)
                  lh           t4, 12(sp)
                  sb           a2, -5(sp)
                  andi         t4, s0, 794
                  lbu          s1, 9(sp)
                  lb           a7, 3(sp)
                  or           a5, zero, s8
                  lb           a1, -12(sp)
                  sra          s11, gp, t5
                  addi         s4, s11, -1055
                  lbu          s6, 6(sp)
                  lb           s7, 15(sp)
                  sub          t2, sp, s2
                  lbu          t2, 7(sp)
                  lb           a5, 15(sp)
                  slt          a0, s11, ra
                  lbu          s8, 3(sp)
                  lh           a0, 12(sp)
                  sh           tp, 0(sp)
                  lb           gp, 5(sp)
                  add          tp, s2, s0
                  lbu          t2, 15(sp)
                  lb           a5, 7(sp) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+838 #start load_store_instr_stream_1
                  la           s8, region_0+752 #start load_store_instr_stream_2
                  la           tp, region_0+771 #start load_store_instr_stream_3
                  la           a5, region_0+137 #start load_store_instr_stream_4
                  sb           a1, -745(tp)
                  sb           s3, 361(s8)
                  la           s2, region_0+1964 #start load_store_instr_stream_0
                  lb           gp, -34(a5)
                  lb           a4, -270(tp)
                  lbu          t2, -3(ra)
                  sb           t0, -242(s8)
                  lhu          s5, -170(s2)
                  sb           gp, 13(ra)
                  lbu          a7, -236(s8)
                  lbu          sp, 1(ra)
                  lb           t0, 7(a5)
                  lw           t5, -460(s8)
                  sw           s4, 159(a5)
                  lb           s5, 212(a5)
                  lb           gp, -43(s2)
                  lhu          a0, 2(ra)
                  lb           a4, 1107(s8)
                  sb           t3, 1009(s8)
                  lb           zero, 393(tp)
                  sb           zero, 4(tp)
                  lb           s1, -27(s2)
                  lb           gp, -149(s2)
                  lh           s4, 160(s8)
                  sb           a0, -418(s8)
                  lb           s11, 14(ra)
                  lbu          t4, -152(s2)
                  lb           t2, 134(a5)
                  sw           a0, 921(tp) #end load_store_instr_stream_3
                  sh           s4, 1054(s8)
                  lh           s11, 2(ra) #end load_store_instr_stream_1
                  sb           a2, 18(a5) #end load_store_instr_stream_4
                  lb           s11, 25(s8) #end load_store_instr_stream_2
                  lbu          s9, -240(s2) #end load_store_instr_stream_0
                  la           s10, region_1+1762 #start load_store_instr_stream_3
                  la           t2, region_1+115 #start load_store_instr_stream_2
                  la           a0, region_1+1429 #start load_store_instr_stream_1
                  lb           s8, -11(s10)
                  la           a7, region_1+967 #start load_store_instr_stream_0
                  lhu          a5, -6(s10)
                  lbu          t5, 34(a0)
                  sb           s3, -59(a0)
                  sb           a2, -14(a7)
                  lbu          t1, -8(s10)
                  sb           a1, 40(a0)
                  lbu          t4, -4(a7)
                  sb           s9, 40(a0)
                  lhu          s9, 13(a7)
                  lb           s6, -28(t2)
                  lb           s8, -24(t2)
                  lb           gp, 5(s10)
                  lw           a5, 9(a7)
                  sh           t1, -21(a0)
                  lb           s7, 37(a0)
                  lb           t6, 5(t2)
                  lbu          s11, -6(s10)
                  lbu          t6, 2(a7)
                  lb           s4, 6(s10)
                  lbu          s1, 10(t2)
                  lhu          t1, 4(s10)
                  lbu          s9, 0(a7)
                  sb           a0, -3(s10)
                  sh           s10, -19(a0)
                  sh           s10, -15(a7)
                  lbu          s7, 39(t2)
                  lb           t6, -30(t2) #end load_store_instr_stream_2
                  lb           t5, -8(a7)
                  lhu          a3, -45(a0)
                  sb           t2, 3(s10) #end load_store_instr_stream_3
                  lb           s1, 8(a7)
                  sb           a1, 8(a0)
                  sh           s2, 13(a0) #end load_store_instr_stream_1
                  lb           a5, -9(a7) #end load_store_instr_stream_0
                  la           a3, region_0+338 #start load_store_instr_stream_0
                  la           sp, region_0+287 #start load_store_instr_stream_1
                  lbu          s9, 135(a3)
                  sb           a0, -7(a3)
                  sb           t5, 831(a3)
                  lh           s9, -5(sp)
                  lhu          s8, -57(sp)
                  lbu          a1, -108(a3)
                  lb           t2, -18(sp)
                  sb           s5, 1038(a3)
                  sb           t3, -42(sp)
                  lbu          t0, 623(a3)
                  sw           t1, 37(sp)
                  sb           t3, 893(a3)
                  lh           gp, 522(a3)
                  lbu          a4, -25(sp) #end load_store_instr_stream_1
                  lb           s7, 637(a3)
                  lbu          a1, 1264(a3) #end load_store_instr_stream_0
                  la           t1, region_1+1163 #start riscv_load_store_hazard_instr_stream_2
                  lh           s7, -15(t1)
                  lbu          a0, 6(t1)
                  ori          s9, s6, -200
                  lhu          s5, -37(t1)
                  lbu          a3, -37(t1)
                  lhu          a5, -37(t1)
                  slli         sp, s6, 24
                  lbu          t4, -37(t1)
                  sh           t3, 19(t1)
                  lb           t2, -22(t1)
                  sb           s0, -15(t1)
                  lbu          t4, -15(t1)
                  lhu          a3, 55(t1)
                  lbu          t6, 58(t1)
                  lbu          ra, 58(t1)
                  srl          t2, t4, s10
                  srli         gp, a1, 9
                  slti         a0, a7, -1760
                  lh           a1, 43(t1)
                  and          s11, s4, s3
                  lbu          a3, 43(t1)
                  sb           s5, 43(t1) #end riscv_load_store_hazard_instr_stream_2
                  la           t0, region_1+568 #start riscv_load_store_hazard_instr_stream_4
                  sh           tp, 200(t0)
                  lhu          t1, 200(t0)
                  sltiu        s6, a4, -1562
                  lbu          zero, -117(t0)
                  lhu          s11, 254(t0)
                  sb           s8, 1(t0)
                  lhu          s6, -46(t0)
                  lw           s4, 56(t0)
                  sb           a1, -51(t0)
                  sltiu        a5, a4, 1527
                  lhu          s2, 94(t0)
                  lbu          s4, 100(t0)
                  lbu          a1, 100(t0) #end riscv_load_store_hazard_instr_stream_4
                  la           s5, region_0+18 #start load_store_instr_stream_1
                  la           t2, region_0+1048 #start load_store_instr_stream_4
                  la           s2, region_0+160 #start load_store_instr_stream_0
                  lbu          s8, -16(s5)
                  la           t3, region_0+736 #start load_store_instr_stream_2
                  lbu          a7, -151(t2)
                  lbu          zero, -811(t2)
                  la           s10, region_0+273 #start load_store_instr_stream_3
                  lhu          zero, 21(s10)
                  sb           a2, 15(s2)
                  lb           a4, 21(s5)
                  lb           s8, -39(s10)
                  lb           a0, 0(s5)
                  sb           zero, 441(t2)
                  lhu          s9, -764(t2)
                  lhu          s7, -66(t3)
                  sh           t6, 950(t2)
                  lbu          a4, 10(s2)
                  lbu          tp, 819(t2)
                  lw           s9, 39(s10)
                  lbu          a0, 828(t2)
                  sh           s8, -53(s10)
                  lbu          t6, 9(s5)
                  sh           s7, 63(s10)
                  lh           t6, 116(t3)
                  sb           s10, -4(s10)
                  lb           zero, -8(s2)
                  sb           gp, -26(s10)
                  lb           a4, -89(t3)
                  sw           a0, 4(s2)
                  lbu          a1, 103(t3)
                  lb           a5, 665(t2)
                  sb           s9, 133(t3)
                  lb           s11, 37(t3)
                  lhu          zero, -39(s10) #end load_store_instr_stream_3
                  lbu          s11, -9(t3)
                  lhu          sp, 290(t2) #end load_store_instr_stream_4
                  lb           zero, -73(t3)
                  lb           a4, -11(s5)
                  lhu          s7, 6(s5) #end load_store_instr_stream_1
                  lb           s8, -177(t3) #end load_store_instr_stream_2
                  lb           s9, 9(s2) #end load_store_instr_stream_0
                  la           sp, region_0+261 #start riscv_load_store_rand_instr_stream_3
                  lbu          a5, 16(sp)
                  lh           a3, 1(sp)
                  slli         t4, t6, 19
                  lbu          s2, 4(sp)
                  lui          t1, 779108
                  lb           s9, -8(sp)
                  sra          ra, s8, s7
                  lb           a0, 8(sp)
                  lb           t4, 4(sp)
                  lhu          a3, 11(sp)
                  lh           s2, 11(sp)
                  sh           t0, 3(sp)
                  sll          a5, a0, s0
                  lh           t4, -3(sp)
                  sb           a2, -2(sp)
                  srli         a7, tp, 30
                  xori         a1, t0, 107
                  lhu          a3, 15(sp)
                  lb           t4, 12(sp)
                  lhu          t6, 13(sp)
                  lb           s7, 12(sp)
                  lbu          a3, -2(sp)
                  slti         s5, tp, -495
                  lb           s10, -3(sp)
                  add          s2, s9, s2
                  xor          s6, a7, s9
                  sw           s6, -1(sp)
                  lb           zero, -15(sp)
                  sb           a0, -4(sp)
                  lb           s8, -1(sp)
                  xori         a4, a2, -1624
                  sub          a4, t4, gp
                  lh           s2, 7(sp)
                  lb           t5, -4(sp)
                  srai         t2, s10, 4
                  sb           s7, -4(sp)
                  add          ra, ra, s0
                  lb           t5, 14(sp)
                  lb           s10, -2(sp)
                  sb           s6, 10(sp)
                  lbu          ra, 2(sp) #end riscv_load_store_rand_instr_stream_3
                  la           gp, region_0+865 #start load_store_instr_stream_2
                  lw           a0, 3(gp)
                  la           s3, region_0+608 #start load_store_instr_stream_1
                  la           s11, region_0+687 #start load_store_instr_stream_3
                  la           a3, region_0+1840 #start load_store_instr_stream_0
                  lbu          s7, -407(s3)
                  sb           gp, 777(s3)
                  lw           t6, -48(a3)
                  lb           s8, -327(s3)
                  lbu          sp, 97(s3)
                  sb           s2, -10(s11)
                  lb           s10, -4(gp)
                  lb           a4, -377(s3)
                  lhu          t1, -15(s11)
                  lb           ra, 16(gp)
                  lbu          t2, -352(s3)
                  lbu          a4, 16(s11)
                  lh           s4, -2(a3)
                  lb           ra, -23(a3)
                  lb           a4, 9(s11)
                  sb           zero, 15(s11)
                  sb           s7, 7(gp)
                  lhu          a4, 324(s3)
                  lh           t2, -3(s11)
                  lw           s4, -600(s3)
                  lb           s6, 29(a3)
                  lbu          a7, 15(gp)
                  sh           a6, -8(a3)
                  lbu          a5, -16(gp)
                  sb           s5, 15(s11)
                  lhu          t3, 70(s3)
                  lb           t4, 1145(s3) #end load_store_instr_stream_1
                  lbu          s5, 2(gp) #end load_store_instr_stream_2
                  lb           a7, 6(s11)
                  lb           a1, -59(a3)
                  lb           a4, -2(s11)
                  sb           zero, -2(s11) #end load_store_instr_stream_3
                  sb           gp, -53(a3)
                  sh           a3, 16(a3) #end load_store_instr_stream_0
                  la           a0, region_1+1653 #start riscv_load_store_hazard_instr_stream_5
                  or           s4, t0, a0
                  lb           a5, -12(a0)
                  lb           s3, -12(a0)
                  lw           s5, 11(a0)
                  and          s9, s8, t1
                  sw           s6, 11(a0)
                  sh           s3, 11(a0)
                  lbu          zero, 6(a0)
                  lbu          s5, 6(a0)
                  lbu          t5, 6(a0)
                  sb           s11, 6(a0)
                  sltiu        a7, a3, 516
                  sb           a7, 6(a0)
                  lw           t4, 7(a0)
                  sw           s4, 7(a0)
                  lb           t3, 7(a0)
                  lhu          t3, 7(a0)
                  lh           zero, 7(a0)
                  sw           t2, 7(a0)
                  lw           s2, 7(a0)
                  sw           a1, 7(a0) #end riscv_load_store_hazard_instr_stream_5
                  la           t4, region_1+1209 #start load_store_instr_stream_4
                  sh           s11, -567(t4)
                  la           a1, region_1+149 #start load_store_instr_stream_1
                  la           s7, region_1+1596 #start load_store_instr_stream_0
                  la           t1, region_1+536 #start load_store_instr_stream_2
                  lbu          s8, -717(t4)
                  lhu          a7, -7(a1)
                  la           ra, region_1+236 #start load_store_instr_stream_3
                  sb           s5, 572(t4)
                  lhu          t3, 16(s7)
                  lh           zero, 51(a1)
                  lb           t2, -179(t4)
                  sb           t0, -2(a1)
                  lbu          s2, -50(a1)
                  lb           t2, 1(ra)
                  lhu          sp, 1242(t1)
                  lh           s3, -12(s7)
                  sw           sp, -25(a1)
                  lbu          s8, -29(t1)
                  lhu          t0, -2(s7)
                  lbu          a3, 789(t4)
                  lb           s9, -52(a1)
                  lbu          zero, -1(ra)
                  lb           s11, -11(a1)
                  lb           s8, 6(s7)
                  lb           t5, -2(a1)
                  lhu          s5, 9(a1)
                  lb           s1, -6(s7)
                  lbu          gp, 503(t1)
                  lbu          a7, 730(t4)
                  lh           tp, -6(ra)
                  lb           s11, -143(t1)
                  lbu          t6, -284(t4)
                  lb           t5, 42(a1) #end load_store_instr_stream_1
                  sb           sp, -11(ra)
                  lb           s5, 216(t4)
                  lb           a0, -254(t4) #end load_store_instr_stream_4
                  lhu          a7, 328(t1)
                  lhu          sp, -10(s7)
                  lbu          s9, 1215(t1) #end load_store_instr_stream_2
                  sh           a1, -4(ra)
                  lbu          a3, -16(ra) #end load_store_instr_stream_3
                  lw           s10, 12(s7) #end load_store_instr_stream_0
                  la           sp, region_0+1532 #start riscv_load_store_rand_instr_stream_1
                  srli         a7, t6, 29
                  andi         s9, t4, -810
                  lbu          a0, -3(sp)
                  sb           t6, -31(sp)
                  xori         a3, sp, 1503
                  srl          s9, s3, tp
                  andi         s7, sp, -1330
                  lh           s11, 12(sp)
                  sh           t2, -28(sp)
                  andi         t4, t5, -1894
                  auipc        s1, 536243
                  lbu          s7, 29(sp)
                  lbu          s8, 17(sp)
                  srli         a3, a5, 26
                  sb           gp, -53(sp)
                  lh           s2, 38(sp)
                  lb           t0, 4(sp)
                  lb           t2, -19(sp)
                  andi         s1, t5, -1086
                  or           t6, t5, s8
                  lui          s10, 573569
                  lbu          s10, 23(sp)
                  lbu          t3, -7(sp)
                  lbu          a0, 1(sp)
                  sb           sp, 53(sp)
                  or           s7, a5, sp
                  lb           s8, 18(sp)
                  lb           s10, -20(sp)
                  sub          s9, s1, s7
                  lui          s1, 680578
                  xori         s3, s6, -922
                  nop
                  sb           s10, -50(sp)
                  srl          a7, t2, s5
                  sb           a6, 21(sp)
                  sra          s8, a4, s1
                  sltiu        t0, a4, -365
                  slli         a1, a6, 0
                  lbu          a4, 51(sp)
                  ori          tp, s9, -942
                  sb           s5, 2(sp)
                  slti         t2, s1, 1884
                  sra          s1, s2, t6
                  srl          a1, t0, s6
                  sb           s3, -51(sp)
                  ori          s3, a1, -152
                  lh           t5, 54(sp)
                  lh           ra, 24(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1534 #start riscv_load_store_hazard_instr_stream_3
                  auipc        s4, 965050
                  addi         s9, s9, -1494
                  lb           s7, 41(sp)
                  sb           s5, -59(sp)
                  sh           a0, -54(sp)
                  sw           a0, -54(sp)
                  lbu          a4, 3(sp)
                  lb           a1, 3(sp)
                  sb           s3, -32(sp)
                  lbu          s6, -9(sp)
                  slli         s6, s10, 9
                  sb           t4, -21(sp)
                  lhu          tp, 8(sp)
                  xor          t2, t4, s6
                  lbu          gp, 17(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_0+993 #start riscv_load_store_hazard_instr_stream_1
                  lhu          a5, 5(sp)
                  sh           s1, 5(sp)
                  lbu          a5, -16(sp)
                  lbu          s7, 6(sp)
                  sub          a4, gp, t4
                  or           tp, s0, s3
                  srli         a0, s8, 27
                  add          ra, s11, s0
                  addi         s8, s9, 1158
                  lb           t2, 6(sp)
                  addi         ra, s11, -674
                  sw           t6, -5(sp)
                  sw           s4, -5(sp)
                  lhu          a0, -3(sp)
                  sll          s7, s0, tp
                  lh           a3, -15(sp)
                  sh           a3, -5(sp)
                  lbu          s8, 3(sp)
                  lbu          s11, 10(sp)
                  lbu          s2, -12(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+1610 #start riscv_load_store_rand_instr_stream_5
                  lb           zero, 39(sp)
                  addi         s10, s0, 1110
                  lb           gp, 3(sp)
                  lhu          s8, -18(sp)
                  sb           t5, -28(sp)
                  lh           s9, 34(sp)
                  lbu          t2, 44(sp)
                  or           a1, s9, a2
                  srl          s6, s7, s10
                  lbu          s1, 45(sp)
                  nop
                  sra          s1, s7, s5
                  xori         s2, s8, 560
                  xori         s9, a3, -505
                  sra          t3, t5, s11
                  lb           tp, -38(sp)
                  sb           a0, -11(sp)
                  sub          a4, s1, s8
                  sh           t3, -44(sp)
                  lbu          s11, 35(sp)
                  add          gp, s10, a2
                  lbu          s5, 29(sp)
                  srai         s6, t3, 25
                  lbu          t0, -27(sp)
                  sb           a6, 63(sp)
                  auipc        a3, 758698
                  lhu          s9, 2(sp)
                  or           tp, sp, s3
                  lbu          s7, 27(sp)
                  add          s7, a2, a1
                  srli         a4, s5, 0
                  lbu          s3, 41(sp)
                  and          t0, a1, t3
                  srl          t0, s1, sp
                  lb           s2, -61(sp)
                  lb           s5, 19(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s5, region_1+1027 #start riscv_load_store_hazard_instr_stream_0
                  ori          t4, a4, 1338
                  lbu          s3, 248(s5)
                  lbu          s1, -204(s5)
                  sltiu        gp, a7, -1544
                  lbu          s1, -204(s5)
                  lb           a5, -204(s5)
                  lbu          s9, 91(s5)
                  lhu          s9, 91(s5)
                  sb           s11, 91(s5)
                  xori         s6, t5, 1948
                  lb           a3, 91(s5)
                  lbu          s8, 91(s5)
                  lbu          ra, 91(s5)
                  lhu          a3, 91(s5) #end riscv_load_store_hazard_instr_stream_0
                  xori         t0, a3, -1418
                  xor          t0, t3, sp
                  xori         sp, s4, -947
                  and          s7, s4, s1
                  bltu         s6, s8, 5f
5:                bltu         a6, t0, 23f
                  slli         ra, t4, 26
                  srai         a1, t4, 20
                  sll          t4, tp, s7
                  srai         a5, s6, 19
                  auipc        gp, 341939
                  bltu         s7, s10, 24f
                  bne          a0, gp, 15f
                  srli         s1, s11, 25
                  slli         s1, a4, 25
15:               xor          s8, tp, t5
                  xori         tp, s8, -280
                  addi         t6, a7, 1411
                  sra          a1, s7, a1
                  xori         s10, s10, -1817
                  xori         s1, s4, 1305
                  or           zero, s2, s6
                  la           a1, sub_1
                  srai         sp, sp, 30
                  srai         t0, t0, 5
                  addi         a1, a1, -496
                  sub          tp, s1, a5
                  srli         tp, s5, 27
main_j1:          jalr         t1, a1, 497 #jump main -> sub_1
                  slli         a1, s1, 20
                  ori          s11, s9, 892
                  and          s4, s9, t0
                  beq          s8, s11, 24f
23:               bltu         a1, a4, 24f
24:               sub          t2, s11, t3
                  and          s3, t3, s2
                  bltu         s1, a1, 39f
                  bltu         a1, t5, 33f
                  bge          s11, t4, 31f
                  sra          s10, s6, a4
                  sltiu        gp, s11, -1510
31:               nop
                  bgeu         s0, s4, 44f
33:               sll          s8, a4, a3
                  bltu         s2, t6, 43f
                  bltu         s5, a3, 48f
                  sltiu        a5, s6, -1115
                  sltiu        a1, sp, -1457
                  xor          t5, sp, s0
39:               ori          sp, a2, 739
                  slli         s6, t4, 19
                  sra          ra, ra, t0
                  xori         gp, t2, 2010
43:               sltiu        ra, a1, 1131
44:               lui          s3, 733431
                  bne          s10, t2, 62f
                  sub          a3, s1, s3
                  srai         gp, s2, 7
48:               nop
                  sll          s8, s7, a2
                  and          t1, s5, t5
                  ori          sp, zero, -2036
                  auipc        t0, 420933
                  sltu         s10, a0, a4
                  sltu         t3, s9, s8
                  sll          a4, sp, a4
                  slli         t6, s3, 12
                  add          s1, a3, s11
                  bge          s2, a4, 69f
                  beq          s1, a6, 77f
                  beq          a5, a1, 76f
                  slti         t6, s0, -1423
62:               or           s5, a5, zero
                  slti         sp, gp, 2009
                  srai         t4, t6, 3
                  ori          t6, gp, 1145
                  slt          s3, s6, ra
                  blt          s3, a3, 78f
                  lui          t2, 680516
69:               sub          s6, t2, t0
                  ori          a4, s1, 1935
                  add          s3, s2, s0
                  bltu         a5, s11, 78f
                  add          t4, s8, t2
                  srai         s3, a5, 2
                  slli         a5, s7, 19
76:               srli         t4, s1, 30
77:               srli         ra, s1, 15
78:               nop
                  sltiu        t3, t3, -781
                  sll          a7, s6, a5
                  bge          s9, t3, 84f
                  sra          gp, s9, s11
                  or           a3, a5, t3
84:               sub          t2, a6, tp
                  bne          a1, s2, 94f
                  srl          sp, s5, sp
                  xori         s7, s1, 525
                  nop
                  sltiu        t1, s1, 1664
                  sltu         t2, zero, a7
                  bge          s3, s3, 106f
                  bne          a7, a6, 112f
                  nop
94:               sll          zero, a3, s3
                  srai         t2, s5, 2
                  slt          t0, s4, t3
                  blt          a7, a5, 114f
                  sra          s2, s5, a4
                  srl          s8, s4, tp
                  bgeu         zero, a0, 113f
                  srli         t0, tp, 23
                  bgeu         a5, s0, 122f
                  beq          s3, s5, 105f
                  sub          t6, s1, t2
105:              srai         s9, s0, 15
106:              andi         t4, s8, -906
                  beq          a5, t2, 116f
                  ori          t3, t6, -1536
                  ori          gp, a7, 1524
                  bgeu         ra, s9, 130f
                  andi         ra, s11, -546
112:              srai         a5, t1, 15
113:              or           sp, s1, s6
114:              bge          s5, a0, 126f
                  auipc        s6, 23035
116:              srl          a1, t5, a0
                  beq          s1, a0, 137f
                  srli         t2, a5, 1
                  blt          s10, a4, 130f
                  sltiu        zero, s3, 379
                  addi         zero, s4, 1440
122:              sub          ra, s11, s2
                  sltiu        t3, sp, -1226
                  sra          s6, t2, t4
                  srli         t2, t3, 25
126:              addi         s7, a2, 569
                  bltu         a1, a4, 147f
                  ori          ra, t0, 268
                  beq          s1, t1, 144f
130:              slti         s9, t1, 697
                  blt          a0, s10, 151f
                  slli         s6, a5, 21
                  nop
                  nop
                  slt          a3, s7, t5
                  nop
137:              add          a7, t3, ra
                  andi         s11, t6, -1484
                  bne          t0, s0, 159f
                  sra          s1, t4, zero
                  xori         ra, t0, 1353
                  andi         s10, t6, -127
                  slli         t3, a5, 28
144:              add          s6, s8, a7
                  sltu         s8, t1, ra
                  srai         s9, zero, 27
147:              sub          ra, a5, s4
                  sll          t3, s2, t0
                  sltiu        zero, a6, 1398
                  nop
151:              beq          s2, s7, 169f
                  bltu         t4, s11, 161f
                  sltiu        s3, s7, -1621
                  bgeu         t5, t0, 157f
                  ori          a4, s0, 1423
                  ori          s2, t2, 844
157:              add          s7, gp, s0
                  addi         a5, gp, -1850
159:              andi         t1, s2, 240
                  bgeu         a0, t2, 163f
161:              bgeu         zero, t5, 162f
162:              sra          s6, sp, a2
163:              srli         a5, s9, 25
                  or           s5, s0, s0
                  nop
                  xor          ra, a2, a1
                  bgeu         s5, s2, 185f
                  sltiu        s4, s4, 1728
169:              blt          t0, a4, 171f
                  beq          a2, s10, 176f
171:              srli         zero, a6, 24
                  bge          tp, s0, 192f
                  bgeu         s2, s5, 185f
                  sll          ra, t1, s3
                  lui          gp, 883162
176:              sra          t1, a2, sp
                  slli         a4, a6, 5
                  sll          a7, s0, t2
                  sltu         tp, s6, t6
                  xori         tp, s10, 1623
                  slt          s10, a6, s6
                  bgeu         s6, s6, 191f
                  bgeu         s3, a0, 184f
184:              add          t6, s2, s8
185:              or           t6, s3, a3
                  sll          s9, a0, gp
                  add          s5, s11, s1
                  andi         t6, sp, 1303
                  nop
                  and          t6, t6, s4
191:              blt          s2, s5, 207f
192:              xor          a7, s1, sp
                  blt          s4, s0, 206f
                  and          a3, a0, s6
                  bgeu         a0, a3, 212f
                  srl          s11, t5, a1
                  srl          s2, a7, t3
                  beq          t0, a2, 201f
                  slti         s2, s9, 1977
                  auipc        t4, 202447
201:              or           t2, s4, t5
                  bge          s0, s8, 204f
                  srl          t3, t4, s5
204:              blt          gp, t1, 217f
                  or           t6, a6, s4
206:              lui          gp, 940019
207:              sub          zero, s9, a5
                  srl          s6, s0, a0
                  nop
                  add          s3, s7, t3
                  lui          a7, 240262
212:              ori          a3, t0, 607
                  bltu         s6, a0, 226f
                  slti         s5, t5, 960
                  xori         s2, s4, -227
                  xor          s3, a7, zero
217:              add          a0, a3, gp
                  bne          tp, t6, 230f
                  sub          s8, a4, a4
                  bgeu         t3, s4, 237f
                  add          t5, s1, s8
                  bge          sp, a0, 228f
                  lui          s7, 1030710
                  and          a1, sp, sp
                  xor          t1, a4, a0
226:              bne          tp, t5, 239f
                  bltu         a2, s10, 236f
228:              slli         t1, s6, 19
                  sra          s7, sp, s5
230:              bne          s3, gp, 241f
                  andi         s1, s0, -1034
                  sub          t4, t0, t0
                  srli         a7, t0, 2
                  addi         s3, a0, 1951
                  slli         s1, s4, 17
236:              bne          a6, t5, 249f
237:              auipc        t3, 427431
                  slti         t6, s5, -86
239:              sltiu        t3, s9, 1195
                  and          a5, a2, t3
241:              srli         t3, a7, 31
                  nop
                  bne          t2, s11, 246f
                  bltu         sp, sp, 255f
                  addi         zero, a2, -667
246:              xor          t3, s10, a1
                  sra          a4, ra, s3
                  blt          s0, a6, 268f
249:              add          t3, ra, s4
                  srli         a0, a4, 30
                  bne          s11, s7, 271f
                  or           sp, t4, t0
                  sltiu        s1, gp, 1991
                  slli         a3, s9, 2
255:              bne          sp, s5, 268f
                  bgeu         t0, a3, 259f
                  xori         ra, s1, -539
                  blt          s8, gp, 274f
259:              bge          s7, t6, 268f
                  srai         s4, s11, 26
                  addi         a4, t3, -523
                  lui          s6, 1041954
                  auipc        a1, 731943
                  add          sp, ra, a1
                  and          s3, s5, a7
                  add          t2, s10, a6
                  addi         a3, a5, -1982
268:              bne          s7, a4, 281f
                  add          sp, s6, a5
                  srai         sp, a2, 11
271:              nop
                  slt          s3, s6, gp
                  sltu         s9, t1, t6
274:              beq          a4, s9, 280f
                  sltu         s8, a5, a7
                  slti         s5, s4, -1815
                  beq          sp, s11, 279f
                  bne          t4, a4, 293f
279:              slt          tp, a0, s5
280:              sltiu        a7, s2, -1514
281:              blt          s0, a1, 294f
                  xori         t3, s0, -1009
                  lui          sp, 597184
                  slt          a1, t3, s0
                  sra          s8, s7, s10
                  or           gp, t4, t0
                  nop
                  beq          sp, s10, 300f
                  bge          s1, s10, 306f
                  and          tp, t3, t2
                  addi         a0, s7, -220
                  bne          t1, gp, 310f
293:              addi         s7, t1, 1463
294:              slti         s1, a6, -77
                  auipc        s10, 292631
                  slti         sp, s2, -771
                  auipc        s10, 670170
                  addi         t4, sp, 1568
                  addi         a3, s4, -936
300:              blt          s10, a4, 320f
                  xori         s9, t4, -1114
                  slti         t6, s10, 1124
                  beq          s5, a1, 309f
                  slt          a4, a7, t1
                  blt          ra, s9, 308f
306:              xor          s4, tp, s10
                  bne          gp, a1, 309f
308:              bge          s11, t4, 317f
309:              xor          a1, t2, a0
310:              slti         s1, a5, 23
                  sll          a7, t1, t6
                  slt          a1, t1, t5
                  or           s11, a4, a6
                  lui          s6, 736089
                  bge          s8, t0, 326f
                  sltu         a4, t1, a7
317:              or           a3, zero, s4
                  sll          sp, t4, tp
                  srai         a0, a4, 9
320:              slt          t2, s5, t3
                  srai         ra, a1, 19
                  bgeu         t4, a2, 323f
323:              xori         t2, s3, -849
                  nop
                  ori          s6, a2, -5
326:              bge          gp, s6, 335f
                  bge          t3, s10, 345f
                  slt          a5, s6, gp
                  sra          a7, t6, ra
                  lui          s5, 849215
                  srli         sp, a6, 6
                  xor          t6, sp, gp
                  sub          s4, s11, s3
                  xori         s8, a7, 1755
335:              sltu         s6, t6, a3
                  slli         t2, t3, 19
                  sub          s6, s2, s11
                  srl          s4, tp, s9
                  auipc        zero, 736473
                  sltiu        a4, s5, 774
                  slli         a5, t3, 29
                  srai         s9, s10, 20
                  slt          tp, a4, t2
                  slti         t5, s5, -1451
345:              slt          s9, tp, a6
                  bgeu         a5, s2, 358f
                  nop
                  or           s8, s3, s2
                  blt          t0, a5, 366f
                  lui          sp, 968189
                  addi         a5, t1, -1599
                  sltiu        t6, a7, 1845
                  nop
                  la           a3, sub_2
                  and          gp, t4, sp
                  addi         a3, a3, -749
                  sub          s3, a4, a3
                  srli         gp, a2, 10
                  bltu         t6, s6, main_j2 #branch to jump instr
                  slti         t4, s10, 918
                  sra          s9, a2, a4
                  sra          a7, sp, s9
main_j2:          jalr         t1, a3, 749 #jump main -> sub_2
                  srli         a3, s9, 3
                  bge          t2, s9, 354f
354:              slli         t6, s11, 3
                  or           s7, s8, zero
                  sub          s2, t2, a5
                  bgeu         t3, sp, 377f
358:              slti         a0, s1, 130
                  xor          t0, a7, s1
                  or           s11, t2, s7
                  sltu         s6, s0, s8
                  slt          t5, s6, zero
                  auipc        zero, 975653
                  bne          a6, t0, 367f
                  andi         t1, t1, -190
366:              srli         t4, t4, 23
367:              bge          s9, t5, 384f
                  sra          a0, zero, s10
                  addi         s6, t4, -1255
                  beq          t5, t4, 386f
                  sub          a4, a1, t4
                  bge          s5, s9, 373f
373:              xori         t1, s11, 935
                  nop
                  sra          s1, t2, s5
                  la           a7, sub_2
                  sltu         s5, s4, s7
                  addi         s8, s7, -1442
                  or           gp, s6, s5
                  srl          a4, t2, t0
                  add          a4, a2, t3
                  addi         a7, a7, 593
                  slli         sp, a1, 10
main_j3:          jalr         t1, a7, -593 #jump main -> sub_2
                  nop
377:              lui          t3, 961364
                  bne          t5, s11, 384f
                  srli         a0, s10, 22
                  sra          ra, t2, s8
                  auipc        ra, 309937
                  lui          a3, 834445
                  and          sp, a3, a6
384:              xori         s3, a5, -867
                  slli         a4, t4, 20
386:              auipc        a0, 880088
                  or           t0, s4, a5
                  lui          s1, 755444
                  ori          t6, t1, 1502
                  slti         a7, s10, -707
                  srl          a1, s4, s10
                  bne          t4, s3, 407f
                  srli         s1, s5, 24
                  slt          a3, gp, s6
                  and          s8, ra, s0
                  sll          a4, t2, a4
                  xor          a7, a6, s3
                  sltu         s6, s6, tp
                  bltu         s11, t5, 419f
                  ori          s3, t3, 1568
                  slt          s9, t0, s2
                  slli         s4, t6, 19
                  srai         s8, gp, 1
                  bgeu         t5, t4, 417f
                  or           a1, a0, a2
                  sub          s7, a4, a0
407:              slli         t5, t5, 8
                  or           a3, s2, t5
                  slti         t4, a4, 1302
                  beq          t3, t4, 428f
                  lui          s2, 988023
                  beq          gp, s5, 430f
                  lui          a1, 550894
                  xori         t5, sp, 206
                  xori         s8, zero, 1002
                  srli         s8, t6, 12
417:              sub          s10, a6, a4
                  ori          a4, a4, 1952
419:              bge          a1, s5, 421f
                  bgeu         s3, s4, 440f
421:              sub          s11, tp, s5
                  sub          a1, t0, t6
                  xor          sp, t6, a4
                  sub          ra, s8, a4
                  slt          t6, t3, a1
                  srli         s8, t0, 18
                  nop
428:              srl          a1, t2, a4
                  andi         a7, t0, -1254
430:              bltu         s10, s3, 450f
                  andi         s11, s6, 8
                  and          s6, t4, a3
                  bge          s9, s5, 434f
434:              add          gp, a0, t6
                  bge          s1, s7, 438f
                  and          ra, s0, a5
                  ori          s7, a6, -1314
438:              addi         s4, t4, -1637
                  xor          gp, ra, zero
440:              srai         s3, t3, 12
                  bne          zero, a4, 444f
                  xori         zero, ra, 362
                  auipc        s3, 841863
444:              xori         zero, s3, 987
                  srai         t6, s8, 25
                  bne          s10, s4, 455f
                  bne          a3, t1, 459f
                  sub          t5, a5, a5
                  srl          t5, s11, a6
450:              slti         t5, t1, 1014
                  slt          a3, tp, a7
                  bne          gp, ra, 465f
                  slt          s10, s6, a5
                  beq          t2, t1, 467f
455:              sll          s11, s4, s9
                  lui          s4, 15354
                  slli         ra, s1, 13
                  blt          s2, a7, 469f
459:              beq          a6, s10, 472f
                  slt          t2, s6, s6
                  sub          s3, a1, s1
                  slt          s5, ra, t6
                  and          t1, ra, a5
                  sltu         s5, s3, a6
465:              ori          s7, s4, -814
                  nop
467:              xori         t6, t4, 458
                  slti         zero, s5, -297
469:              srli         s8, s0, 18
                  add          a3, t4, s11
                  blt          a2, gp, 482f
472:              sltu         t1, a7, s1
                  bltu         t0, s5, 479f
                  slt          gp, t3, s5
                  andi         s9, t1, -1845
                  sub          s8, s10, t6
                  andi         a7, s10, -1466
                  sltu         a4, s2, t0
479:              andi         t5, a0, 1813
                  srli         a1, tp, 16
                  bge          a3, t6, 501f
482:              slti         zero, t0, -993
                  or           s8, a2, gp
                  sll          t3, s11, a7
                  auipc        s8, 112996
                  srli         a4, sp, 14
                  slti         s9, a0, -1856
                  sll          s4, s0, a0
                  or           s3, gp, t4
                  andi         s7, ra, -142
                  or           t6, t6, a5
                  nop
                  sra          s7, t1, ra
                  sub          s9, a7, s0
                  nop
                  slt          a0, s3, a4
                  sra          gp, t2, ra
                  bge          s9, s4, 515f
                  sltiu        s11, s11, -1618
                  bge          t4, t2, 509f
501:              bgeu         tp, t1, 503f
                  sltiu        s11, ra, 1641
503:              addi         gp, t5, 603
                  srai         t3, s5, 7
                  bltu         s3, s1, 514f
                  sltiu        a7, a0, -539
                  sltu         s9, tp, sp
                  xori         sp, s2, 865
509:              nop
                  bne          t3, t4, 522f
                  and          s6, s7, t3
                  slli         t0, t1, 8
                  lui          a3, 637530
514:              add          zero, t2, a6
515:              srli         t2, a4, 9
                  xor          t1, a0, a6
                  lui          a7, 719620
                  srai         s7, a1, 23
                  bgeu         s5, a4, 521f
                  sltiu        t6, t0, -1796
521:              add          ra, s10, a5
522:              addi         tp, t6, 1509
                  auipc        tp, 988397
                  lui          s10, 950029
                  add          tp, ra, a5
                  sub          s5, a7, tp
                  blt          a1, s7, 533f
                  srli         t6, s8, 3
                  xor          t3, t6, tp
                  ori          zero, s3, -1671
                  andi         t2, s11, 1380
                  sltu         t1, ra, t0
533:              auipc        a7, 372460
                  sub          s5, s8, t6
                  or           s5, s2, t2
                  ori          a1, a6, -1391
                  addi         s2, a1, 383
                  add          a3, t4, tp
                  addi         t3, tp, -2023
                  sltu         s8, a2, a0
                  slli         a4, a5, 17
                  sra          s7, a7, s7
                  srli         ra, s1, 1
                  ori          a7, a0, 1863
                  slt          s1, s5, sp
                  sll          s9, t2, s1
                  slli         t4, s5, 16
                  or           a7, s7, s5
                  slti         s1, a7, 1060
                  bne          s7, a2, 553f
                  beq          t2, t4, 562f
                  addi         a3, t4, 1408
553:              blt          a0, s8, 554f
554:              or           a1, gp, a7
                  srai         t5, s3, 12
                  sub          t2, a2, s5
                  nop
                  xor          s9, a7, s0
                  and          sp, s1, t1
                  or           a0, a4, s1
                  andi         a0, s9, -1101
562:              and          t0, t3, a0
                  bgeu         gp, t6, 580f
                  slli         zero, a1, 5
                  slt          a7, tp, t4
                  srai         s6, t0, 22
                  sra          a1, tp, gp
                  sra          s6, a5, a6
                  bne          zero, t5, 581f
                  bgeu         a6, t1, 585f
                  nop
                  bgeu         a0, s4, 575f
                  xori         a0, sp, 354
                  bltu         s6, s6, 575f
575:              nop
                  slti         s5, t1, 853
                  sra          s2, t1, s2
                  lui          s10, 28733
                  srl          ra, t3, sp
580:              srli         a3, s1, 31
581:              nop
                  slt          t3, t1, s4
                  sub          a5, s11, t5
                  and          a3, a5, s8
585:              and          zero, tp, s0
                  sll          tp, a2, ra
                  nop
                  slti         a7, sp, 1082
                  blt          s4, s6, 598f
                  sll          sp, s10, s6
                  ori          s1, s3, 521
                  sra          s11, zero, s10
                  sub          t2, t0, a5
                  add          s2, s9, s0
                  or           sp, s6, s4
                  sltu         s9, gp, t2
                  slli         s11, t0, 30
598:              xori         s11, t4, -1448
                  beq          s11, t5, 608f
                  sub          s11, t3, a5
                  bge          s4, t3, 621f
                  bne          s5, t3, 620f
                  ori          s1, s5, -926
                  sub          zero, s1, s7
                  sltiu        t0, zero, -2033
                  xor          t5, s3, s3
                  srli         s8, a4, 29
608:              xori         s10, ra, 498
                  lui          tp, 180866
                  sra          t6, ra, a4
                  xori         s5, s4, -190
                  srli         s8, a5, 16
                  and          a4, s1, a3
                  xori         t2, t0, 229
                  andi         s1, sp, 1275
                  andi         a7, t1, -1259
                  beq          a0, tp, 630f
                  lui          s5, 788152
                  xori         s4, s6, -1975
620:              add          a5, t0, s0
621:              sltiu        s7, s7, -719
                  sra          s3, t2, a3
                  bgeu         ra, s4, 641f
                  bge          a1, s7, 640f
                  slli         t6, s9, 11
                  andi         zero, s3, 451
                  srl          s6, s3, s5
                  and          t3, t0, t5
                  andi         t3, sp, 136
630:              srl          a0, tp, s11
                  slli         t0, t3, 15
                  blt          t4, ra, 638f
                  slti         t0, gp, -1902
                  lui          t3, 781026
                  ori          tp, a4, -1359
                  or           a3, t1, t4
                  bne          s7, t0, 657f
638:              slti         s8, a2, -255
                  beq          s10, zero, 652f
640:              xori         t4, t4, 1537
641:              ori          t0, t3, -1844
                  lui          s6, 879558
                  beq          a0, t3, 656f
                  lui          t5, 941797
                  addi         t5, a0, 216
                  slt          t0, s10, a0
                  andi         t4, ra, -1065
                  srl          zero, a7, a3
                  nop
                  sll          a3, a2, s2
                  sltu         t5, s6, a4
652:              add          t2, s4, s0
                  bltu         zero, s0, 661f
                  sltu         s3, s5, sp
                  bge          t3, s3, 661f
656:              sra          s1, s10, t6
657:              bne          s9, s11, 661f
                  srai         s11, s5, 7
                  auipc        s6, 294590
                  srl          t0, s3, t0
661:              xor          a3, a3, a6
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            add          t3, t5, t3
                  xori         a7, s7, 264
                  addi         a2, a2, -52
                  srai         a7, t1, 18
                  sw           t1, 4(a2)
                  sra          a3, t2, sp
                  xori         s9, s1, -266
                  slli         s4, a7, 6
                  xori         t6, zero, 1140
                  la           s2, region_1+1577 #start load_store_instr_stream_4
                  la           s1, region_1+1538 #start load_store_instr_stream_1
                  la           s11, region_1+38 #start load_store_instr_stream_3
                  la           s10, region_1+1200 #start load_store_instr_stream_2
                  la           t3, region_1+1515 #start load_store_instr_stream_0
                  lbu          a4, 190(t3)
                  sb           t2, -1(s11)
                  lh           s7, -33(t3)
                  lb           t0, -96(t3)
                  sb           t4, 163(s1)
                  sb           a4, 147(s10)
                  lhu          a0, 5(s2)
                  sh           zero, 174(s10)
                  lh           s8, 24(s11)
                  lb           ra, 181(s1)
                  lw           a1, 198(s11)
                  sb           s11, -103(s1)
                  lh           a7, 86(s11)
                  lbu          sp, -11(s2)
                  lb           zero, -2(s2)
                  lb           s8, 77(t3)
                  sb           a2, 200(t3)
                  lhu          s6, -2(s11)
                  sb           t2, 168(s1)
                  lbu          t5, 4(s2)
                  lbu          a0, -169(s1)
                  lb           ra, -49(t3)
                  lbu          a4, -44(t3)
                  lbu          a5, -1(s2)
                  lb           sp, 4(s2)
                  lbu          t2, -167(s1)
                  sh           a6, -9(s2)
                  lw           ra, -124(s10)
                  sb           a0, -118(t3)
                  lbu          s7, 110(s10)
                  lh           a4, 70(s11)
                  lbu          s7, -88(t3)
                  lhu          a0, 10(s1)
                  sb           a2, -223(s1) #end load_store_instr_stream_1
                  lb           a4, 125(s11) #end load_store_instr_stream_3
                  lbu          t5, -8(s2)
                  sw           a6, -56(s10) #end load_store_instr_stream_2
                  lb           t1, -14(s2) #end load_store_instr_stream_4
                  lbu          t6, -14(t3) #end load_store_instr_stream_0
                  la           sp, region_1+1587 #start riscv_load_store_rand_instr_stream_0
                  slti         t3, a5, -1735
                  sb           a5, -142(sp)
                  addi         t4, a6, 325
                  sh           a3, -1333(sp)
                  or           a3, a7, s7
                  lbu          t1, -358(sp)
                  sh           t6, -225(sp)
                  lhu          a1, 131(sp)
                  lbu          s10, -762(sp)
                  srl          t6, s9, t2
                  lui          ra, 448919
                  lbu          gp, -425(sp)
                  addi         a5, s2, -1083
                  and          gp, s6, a4
                  lbu          zero, -206(sp)
                  sb           s1, -446(sp)
                  sra          s5, t5, t4
                  sb           zero, -330(sp)
                  sll          a4, sp, t6
                  lb           zero, -1316(sp)
                  slt          s7, a5, s0
                  auipc        a4, 167689
                  andi         s10, s8, -1626
                  andi         a0, t3, 1071
                  srl          s2, s0, t4
                  andi         s7, s9, 716
                  lh           ra, -119(sp)
                  ori          s5, t4, 986
                  lb           t3, -914(sp)
                  or           s9, gp, s7
                  sh           a7, -703(sp)
                  sltiu        s4, s1, 1330
                  lb           t2, -698(sp)
                  sb           t0, -24(sp)
                  lb           a3, 279(sp)
                  sra          t0, t4, a2
                  lw           s3, -643(sp)
                  slt          s11, t5, a5
                  lbu          ra, -674(sp)
                  sb           gp, -566(sp)
                  srl          s5, s4, s4
                  lb           s10, -396(sp)
                  sb           a1, -533(sp)
                  lui          s11, 67817
                  lbu          t1, -764(sp)
                  sb           s8, -1502(sp)
                  lb           s2, -1142(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_1+415 #start riscv_load_store_hazard_instr_stream_0
                  lb           s3, 5(a3)
                  sh           a1, 5(a3)
                  sb           s0, 5(a3)
                  lbu          ra, 8(a3)
                  and          t3, a7, a0
                  lb           a4, 10(a3)
                  lbu          a7, -12(a3)
                  sb           a4, -12(a3)
                  lb           s5, -4(a3)
                  lbu          s11, -10(a3)
                  lb           zero, 7(a3)
                  sltiu        s11, t4, -1679
                  sb           a6, -6(a3)
                  lbu          t5, -6(a3)
                  lbu          s3, 6(a3)
                  lb           s6, 12(a3) #end riscv_load_store_hazard_instr_stream_0
                  xor          a3, t6, a1
                  bge          t1, a1, 19f
                  slli         s9, s0, 4
                  xor          s8, t0, s11
                  beq          s8, a7, 7f
                  bne          sp, a6, 20f
                  or           s3, t4, t0
7:                sltu         s7, t3, s7
                  sra          s1, a6, tp
                  bgeu         t4, t0, 14f
                  srli         t2, t5, 2
                  sltu         t6, a1, a1
                  xor          t5, a0, t0
                  bgeu         s10, a7, 32f
14:               lui          tp, 5947
                  add          a4, a3, s4
                  and          s3, t5, s1
                  beq          s3, a6, 31f
                  srl          zero, s1, s0
19:               beq          s0, zero, 31f
20:               ori          sp, a2, 1447
                  nop
                  auipc        ra, 726113
                  srli         a5, a5, 31
                  nop
                  bne          s3, s8, 30f
                  xor          s11, s10, a5
                  addi         s9, a5, -799
                  slti         a3, a6, -973
                  add          sp, a2, s11
30:               bgeu         a6, sp, 46f
31:               sra          s4, zero, s0
32:               srai         t1, t4, 3
                  sub          s11, s9, s7
                  auipc        s3, 409746
                  bltu         a7, t2, 46f
                  sltiu        tp, s4, 309
                  beq          s4, a0, 53f
                  sltiu        t5, sp, 188
                  srli         t4, t2, 22
                  blt          t4, tp, 47f
                  bgeu         a6, s5, 50f
                  blt          s11, s3, 55f
                  and          s9, sp, a4
                  srli         s10, a5, 24
                  addi         s1, a3, -860
46:               sltu         s6, a5, zero
47:               sll          a3, s10, s10
                  slli         t4, a4, 17
                  bgeu         s0, gp, 69f
50:               bge          a6, a0, 64f
                  xori         tp, a1, -1914
                  add          s2, zero, a0
53:               srai         t6, s7, 27
                  ori          s1, s2, 115
55:               addi         sp, a4, 595
                  srai         ra, t6, 10
                  xori         t3, t4, -1187
                  sra          t5, s3, a5
                  xori         a1, t6, -1539
                  srl          t1, s0, s4
                  slt          s5, s5, a0
                  xori         s4, ra, -284
                  bge          s5, s4, 71f
64:               ori          s2, ra, -67
                  bne          s10, a0, 85f
                  or           s3, sp, s2
                  slli         s10, gp, 24
                  beq          s5, a4, 78f
69:               srli         s1, t2, 18
                  sub          ra, s0, t6
71:               xori         t0, t0, 1214
                  addi         s11, a3, 1892
                  bge          a5, s3, 79f
                  bge          zero, a1, 81f
                  beq          zero, s0, 83f
                  sltiu        a5, a1, 2043
                  addi         a0, s11, 1473
78:               sll          s11, sp, t1
79:               srli         s2, t1, 18
                  sub          s10, s8, s0
81:               add          t1, s10, s9
                  nop
83:               srai         a1, t5, 13
                  bltu         t1, t5, 90f
85:               srai         t0, s5, 12
                  srl          s8, t3, tp
                  slli         s11, a1, 5
                  add          zero, s8, s11
                  and          a1, tp, t5
90:               bge          t0, a6, 99f
                  blt          s0, t0, 104f
                  blt          t3, s11, 103f
                  sltu         t1, t2, t5
                  blt          gp, s4, 98f
                  srl          ra, a3, s0
                  and          s3, t3, a6
                  slt          s8, s1, a5
98:               srl          t2, a6, s1
99:               auipc        s8, 880157
                  sub          a0, s8, s2
                  sub          tp, t0, s0
                  beq          t4, t6, 122f
103:              xori         tp, s2, 954
104:              xori         a7, s3, 406
                  slli         s8, s8, 10
                  bge          gp, t6, 125f
                  beq          t6, t1, 114f
                  and          gp, a7, s11
                  slti         a4, a4, -1736
                  xor          ra, a7, s2
                  sll          t0, gp, gp
                  srli         t6, t4, 28
                  srl          s5, t1, a2
114:              nop
                  bge          s9, s5, 119f
                  srl          s8, s10, a7
                  or           gp, s11, s5
                  blt          a4, t0, 125f
119:              auipc        s3, 650968
                  slti         s9, s11, 1329
                  andi         s10, s7, -1291
122:              andi         a4, a3, -1804
                  srai         a7, t6, 8
                  and          t0, s2, s10
125:              auipc        t0, 345827
                  beq          t3, s6, 135f
                  lui          s10, 611853
                  addi         a3, s0, -223
                  auipc        s1, 502149
                  bltu         s11, s9, 138f
                  srli         s9, a3, 17
                  auipc        s7, 544079
                  bltu         a1, a4, 136f
                  bge          sp, zero, 148f
135:              slli         s8, t6, 29
136:              blt          s6, s3, 142f
                  slti         ra, a0, -574
138:              slti         gp, a1, 1241
                  xor          s2, s3, s7
                  srli         s5, t2, 29
                  and          t2, s7, a2
142:              add          s7, a7, zero
                  and          a0, s1, s10
                  sll          a3, a2, s7
                  ori          s7, s5, -844
                  slti         zero, a4, 379
                  andi         s1, a3, 202
148:              or           tp, t6, s7
                  xor          t3, s7, s5
                  bne          t5, s0, 152f
                  xor          a0, t4, s10
152:              add          s5, s9, t3
                  slli         s9, s3, 10
                  lw           t1, 4(a2)
                  xori         t3, s4, 1792
                  addi         s5, a1, -1803
                  sub          t3, s11, ra
                  ori          tp, a2, -770
                  auipc        t4, 59260
                  slli         s9, t3, 22
                  addi         a2, a2, 52
                  slli         tp, s5, 12
                  nop
282:              addi x1, x6, 1
282:              jalr x1, x1, 0
sub_2:            beq          s10, a7, sub_2_stack_p
sub_2_stack_p:    addi         a2, a2, -32
                  and          tp, s6, gp
                  lui          a1, 455345
                  sw           t1, 4(a2)
                  sltiu        t0, t5, 1251
                  andi         sp, s11, 888
                  slli         s3, s3, 29
                  sra          s1, sp, s0
                  srli         t6, sp, 2
                  auipc        s4, 352706
                  slt          s7, t2, gp
                  la           t2, region_0+324 #start riscv_load_store_rand_instr_stream_0
                  lh           a3, -12(t2)
                  and          t0, s3, a3
                  sb           a5, 13(t2)
                  or           s10, s10, t1
                  and          s9, gp, t3
                  lbu          a0, 1(t2)
                  auipc        a3, 299007
                  and          s11, a7, s6
                  or           gp, zero, s6
                  lhu          t4, -4(t2)
                  lui          s8, 713663
                  sh           t4, 12(t2)
                  sltiu        zero, s8, -1729
                  lb           a5, -5(t2)
                  lui          t4, 1041027
                  lb           tp, -9(t2)
                  srli         s5, t2, 26
                  auipc        t4, 307869
                  sltiu        s8, gp, 1430
                  lbu          ra, -5(t2)
                  sw           t6, 8(t2)
                  sltu         t1, s11, t2
                  lbu          s3, -1(t2)
                  sltiu        zero, s5, -1170
                  add          gp, a5, s6
                  nop
                  andi         a7, a7, 830
                  sb           ra, 1(t2)
                  sll          t4, a0, t6
                  srli         a4, t3, 15
                  addi         t4, s10, -728
                  lb           a7, 7(t2)
                  andi         s2, s0, -1419
                  srl          s3, tp, s5
                  or           s10, a6, s9
                  slt          a4, a3, a4
                  sub          s6, ra, a4
                  xori         t3, s11, 2036
                  lui          gp, 959593
                  sh           zero, 14(t2)
                  nop
                  lh           t3, 8(t2) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_1+1498 #start riscv_load_store_hazard_instr_stream_0
                  lh           zero, 186(s11)
                  sw           s1, 186(s11)
                  sb           s8, 186(s11)
                  lw           s8, 186(s11)
                  sh           a1, 186(s11)
                  sh           s4, 186(s11)
                  lw           s2, 186(s11)
                  sb           tp, 186(s11)
                  sltu         sp, a4, t3
                  sltiu        t0, s0, -1622
                  lb           t1, 186(s11)
                  sb           a4, 186(s11)
                  lw           t1, 186(s11)
                  lbu          a1, 186(s11)
                  sw           t0, 186(s11)
                  sh           s5, 186(s11)
                  sra          a0, t0, t3
                  lbu          tp, 186(s11)
                  lw           t0, 186(s11)
                  addi         gp, t4, 1881
                  lh           a7, 186(s11)
                  lb           s7, 186(s11)
                  lbu          a5, 186(s11) #end riscv_load_store_hazard_instr_stream_0
                  la           s4, region_0+761 #start load_store_instr_stream_2
                  sh           t3, 33(s4)
                  la           t3, region_0+1062 #start load_store_instr_stream_1
                  lb           gp, -218(t3)
                  lbu          t0, -99(t3)
                  lbu          a0, 158(s4)
                  sb           a5, -193(t3)
                  la           tp, region_0+555 #start load_store_instr_stream_0
                  sw           s8, 142(t3)
                  lh           s1, 227(s4)
                  lb           sp, 918(tp)
                  sb           a3, -119(t3)
                  lh           s1, -92(t3)
                  sh           a6, 195(s4)
                  lbu          s8, -45(s4)
                  lh           s7, 467(tp)
                  sw           zero, -230(t3)
                  lhu          t5, -231(tp)
                  sb           t4, 50(s4)
                  lb           s9, 151(t3)
                  lbu          sp, -176(s4)
                  lhu          s3, 1327(tp)
                  lw           t2, 39(s4) #end load_store_instr_stream_2
                  lbu          s6, 107(t3) #end load_store_instr_stream_1
                  sb           t4, 994(tp) #end load_store_instr_stream_0
                  add          sp, s4, s7
                  srli         t5, s7, 3
                  sltiu        zero, sp, 228
                  lui          gp, 658783
                  sra          t0, gp, s6
                  addi         s1, t0, -178
                  or           s1, s2, s4
                  auipc        s2, 29391
                  bltu         s2, sp, 21f
                  blt          t5, zero, 22f
                  sll          a7, s1, tp
                  slli         s5, s10, 31
                  sub          s9, t2, gp
                  bgeu         a0, a0, 32f
                  xor          t6, t2, t0
                  bge          sp, s9, 23f
                  bge          sp, a0, 19f
                  addi         gp, s10, -936
                  or           t6, a7, s5
19:               srl          a0, s8, t5
                  bge          a0, s10, 24f
21:               srli         t0, a0, 22
22:               blt          s7, tp, 31f
23:               slli         s2, a3, 6
24:               nop
                  lui          s10, 679627
                  srl          s10, t1, s9
                  ori          s1, t6, 1165
                  srl          sp, a7, t6
                  lui          s3, 239481
                  lui          a4, 118797
31:               lui          s3, 30502
32:               xori         a3, t3, 1145
                  srl          t4, a2, s3
                  or           s6, t3, t1
                  slt          gp, a0, gp
                  ori          s4, a5, -649
                  bge          s0, ra, 43f
                  bgeu         a2, s9, 51f
                  xori         sp, s2, -782
                  andi         s2, ra, -1520
                  sub          s1, gp, a6
                  and          a3, s2, s9
43:               bgeu         s1, s1, 54f
                  srl          t5, t5, a2
                  nop
                  xor          s5, s6, a3
                  nop
                  bge          s5, t3, 66f
                  sub          tp, t2, t1
                  slli         a1, a1, 3
51:               bne          t2, tp, 60f
                  beq          s10, s11, 54f
                  sll          s3, t2, s8
54:               xori         zero, a3, 971
                  sub          t6, s4, s3
                  sra          a5, s0, sp
                  lui          sp, 881141
                  bge          s1, t1, 62f
                  bne          gp, sp, 63f
60:               nop
                  sub          t0, a4, s10
62:               addi         a1, a5, -274
63:               sll          tp, s5, s0
                  slli         s2, a0, 18
                  sub          s8, t0, s4
66:               bgeu         a2, s4, 73f
                  sltiu        a3, s9, -1995
                  slli         s4, t5, 30
                  beq          t5, s11, 79f
                  ori          s7, t5, -590
                  xori         s1, a6, 58
                  or           s8, a7, s3
73:               sra          s2, t1, a7
                  slt          a0, a4, a2
                  ori          s3, a0, 1612
                  add          s7, a2, t6
                  slli         t5, s7, 14
                  bge          a0, t4, 92f
79:               lui          a4, 942409
                  sltu         t3, a2, s7
                  sltiu        s2, a2, 1777
                  bge          t4, s3, 100f
                  auipc        t3, 49367
                  and          a0, s10, t4
                  add          s7, s5, s2
                  slli         t6, tp, 4
                  sltiu        t0, tp, -99
                  beq          a7, t4, 106f
                  lui          t4, 180291
                  bne          t6, t6, 100f
                  sltu         t5, t0, t5
92:               or           a3, s11, ra
                  srl          s3, tp, t5
                  sub          tp, t4, t2
                  srli         a4, s6, 13
                  xor          zero, a2, s5
                  beq          s10, gp, 115f
                  andi         t5, ra, -109
                  addi         s11, a4, 791
100:              beq          s11, s3, 118f
                  bne          t2, s8, 115f
                  bgeu         t3, a5, 113f
                  ori          a0, t5, -517
                  and          s4, s3, s10
                  sltu         t0, a4, a1
106:              bgeu         ra, s8, 122f
                  bgeu         t0, t0, 117f
                  srai         gp, s11, 28
                  xori         t2, s2, 1735
                  andi         tp, a6, 1235
                  beq          gp, t2, 119f
                  slt          s11, s7, s0
113:              xor          s7, s3, a2
                  sub          s11, a4, a4
115:              bge          a6, s3, 127f
                  nop
117:              bne          s11, a0, 122f
118:              bne          gp, sp, 134f
119:              nop
                  and          t4, t6, s2
                  srl          s7, a7, s1
122:              blt          s0, ra, 141f
                  xor          a1, sp, tp
                  lui          s3, 364181
                  bgeu         t6, t3, 129f
                  sll          s8, gp, t6
127:              beq          t2, s4, 140f
                  blt          s2, ra, 132f
129:              beq          s2, t2, 137f
                  nop
                  bgeu         t5, s2, 133f
132:              sra          a0, t3, s3
133:              auipc        zero, 877619
134:              andi         s5, s9, 1376
                  or           s4, sp, tp
                  sub          a1, t5, t3
137:              srai         tp, s9, 26
                  srl          a5, s7, t0
                  blt          s11, a4, 151f
140:              auipc        s4, 917295
141:              slti         a4, s3, -1012
                  bgeu         tp, a3, 147f
                  slt          s11, ra, t3
                  sub          t3, a5, s6
                  slt          s9, t5, t1
                  slti         s4, s10, 446
147:              or           a5, a4, s7
                  srai         s6, ra, 14
                  ori          zero, tp, 195
                  srli         s10, a5, 8
151:              xori         s9, s4, 342
                  ori          t6, s3, -692
                  bge          ra, t3, 171f
                  slli         a0, a3, 10
                  and          gp, s1, s3
                  beq          s1, a6, 166f
                  sub          t6, s2, t4
                  sub          a0, s11, s0
                  add          a4, t6, t3
                  ori          s9, t2, 1935
                  xori         s6, tp, -650
                  bgeu         t5, s4, 168f
                  slti         t4, a3, 1795
                  xor          s9, a7, zero
                  lui          gp, 230403
166:              srli         a4, s11, 29
                  srai         t3, s8, 24
168:              xor          t1, zero, a1
                  auipc        t1, 857653
                  andi         sp, a3, 1148
171:              bge          t2, tp, 182f
                  ori          s11, a1, -1137
                  sll          s4, t2, s7
                  bge          s0, s7, 184f
                  and          s1, s8, s7
                  auipc        a5, 806335
                  slt          s2, s11, t2
                  bgeu         t6, tp, 184f
                  ori          a0, t5, -1517
                  and          t2, s11, t0
                  bgeu         s6, s7, 184f
182:              bgeu         s0, s8, 184f
                  xori         s6, a1, 1519
184:              and          a3, s7, s1
                  slli         t0, t5, 26
                  or           t5, a4, t4
                  lw           t1, 4(a2)
                  or           t3, s10, t5
                  nop
                  addi         a2, a2, 32
                  and          s5, t4, ra
296:              addi x30, x6, 1
296:              jalr x30, x30, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x8, x12, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x31, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x31, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x31, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x31, x6, ecall_handler
                  li x6, 0x1
                  beq x31, x6, instr_fault_handler
                  li x6, 0x5
                  beq x31, x6, load_fault_handler
                  li x6, 0x7
                  beq x31, x6, store_fault_handler
                  li x6, 0xc
                  beq x31, x6, pt_fault_handler
                  li x6, 0xd
                  beq x31, x6, pt_fault_handler
                  li x6, 0xf
                  beq x31, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x12, x8, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x8, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x8, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x12, x8, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x12, x8, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x12, x8, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
