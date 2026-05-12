.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0xf67cc3c5
                  li x1, 0xa6fe7da0
                  li x2, 0x0
                  li x3, 0x7e1a06e0
                  li x4, 0xe
                  li x5, 0xa
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x78d94dea
                  li x9, 0xe
                  li x10, 0x80000000
                  li x11, 0x43685d57
                  li x12, 0x5
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x7
                  li x16, 0x2bc2362c
                  li x17, 0x7
                  li x18, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0xf
                  li x23, 0x1248ae70
                  li x24, 0xb
                  li x25, 0x20b1033c
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x80000000
                  li x30, 0x3b3a0aa5
                  li x31, 0x0
                  la x29, user_stack_end
main:             la           ra, sub_1
                  xor          s4, s2, t5
                  sub          s5, s8, ra
                  or           a4, s7, t3
                  slti         s4, a2, 1091
                  sltiu        t3, s3, 1766
                  addi         ra, ra, 9
                  srai         a7, s4, 3
                  sll          t1, t4, s11
                  andi         t2, a4, 753
                  xor          a2, s0, s9
main_j2:          jalr         ra, ra, -9 #jump main -> sub_1
                  la           a0, region_1+1060 #start riscv_load_store_rand_instr_stream_0
                  lbu          gp, 10(a0)
                  sb           s6, -27(a0)
                  lbu          ra, -8(a0)
                  lb           t5, 3(a0)
                  sltu         s6, s11, t6
                  sltu         s11, s1, a5
                  sh           s11, -22(a0)
                  sb           s4, -9(a0)
                  sb           a4, -41(a0)
                  auipc        tp, 836657
                  sll          s2, t1, s6
                  sltiu        a6, gp, -985
                  addi         t6, t0, -2001
                  lhu          s4, -64(a0)
                  addi         a3, sp, -381
                  and          ra, a7, gp
                  andi         s2, t3, -1576
                  lbu          s10, 27(a0)
                  sra          t6, ra, s6
                  sw           a7, -16(a0)
                  srli         ra, a2, 12
                  lbu          gp, -11(a0)
                  sra          a3, s9, a6
                  andi         a3, zero, 1035
                  xori         t3, a5, 1175
                  xori         t0, s7, 429
                  sb           sp, 7(a0)
                  and          a6, t6, sp
                  andi         a2, s7, -1386
                  sb           t4, 50(a0)
                  lhu          ra, 52(a0)
                  lb           a2, 6(a0)
                  lbu          t3, -9(a0)
                  lh           t0, 58(a0)
                  nop
                  sb           a6, 0(a0)
                  nop
                  auipc        a4, 849405
                  sb           tp, -31(a0)
                  lhu          s8, 8(a0) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+1836 #start riscv_load_store_hazard_instr_stream_0
                  lb           a5, 1(ra)
                  lbu          s11, 1(ra)
                  lbu          s2, -14(ra)
                  lb           a3, 7(ra)
                  lh           a2, -6(ra)
                  sb           t2, -23(ra)
                  lb           a6, 20(ra)
                  sb           a1, -37(ra)
                  sb           a2, -37(ra)
                  lb           a5, -59(ra)
                  lbu          a7, -59(ra)
                  and          s4, t3, s8
                  lw           s7, 60(ra)
                  lhu          gp, 60(ra)
                  sb           t1, -43(ra)
                  srli         t3, a4, 6
                  lw           gp, -4(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+1238 #start load_store_instr_stream_3
                  la           s5, region_1+1805 #start load_store_instr_stream_2
                  la           t0, region_1+1744 #start load_store_instr_stream_0
                  sw           s7, 6(s8)
                  la           a1, region_1+604 #start load_store_instr_stream_1
                  la           t1, region_1+493 #start load_store_instr_stream_4
                  lb           a0, -109(s5)
                  lbu          s1, 10(t0)
                  sw           t6, -9(s5)
                  lbu          a5, 3(t0)
                  sb           s6, -1(a1)
                  lb           tp, 26(a1)
                  lb           s9, 137(t1)
                  lh           t6, -221(t1)
                  lb           tp, -22(s8)
                  lb           s9, 11(t0)
                  sh           s10, -24(s8)
                  sb           t2, -57(a1)
                  lb           s10, -76(t1)
                  lh           s1, 2(t0)
                  lbu          gp, -238(t1)
                  sh           a1, 58(s8)
                  sh           gp, -56(a1)
                  lbu          t3, 26(s8) #end load_store_instr_stream_3
                  lh           s1, 125(s5)
                  lbu          a5, 15(t0)
                  lbu          t6, -15(t1) #end load_store_instr_stream_4
                  lh           s7, -38(a1)
                  sh           a0, -193(s5)
                  lbu          s9, 5(t0)
                  lb           t3, -59(a1)
                  lbu          t2, -254(s5) #end load_store_instr_stream_2
                  lbu          tp, 8(t0)
                  sb           s5, -41(a1) #end load_store_instr_stream_1
                  lb           s11, 3(t0)
                  sw           s8, 4(t0) #end load_store_instr_stream_0
                  add          a4, s3, a5
                  bltu         s7, a6, 8f
                  beq          t1, s6, 20f
                  nop
                  sltiu        s6, a2, 350
                  xori         a7, a5, -1922
                  srai         a4, s2, 14
                  bne          gp, a2, 14f
8:                sltiu        s8, s6, -974
                  sll          s6, s11, s0
                  blt          s7, s10, 12f
                  srl          a6, t1, t6
12:               bne          s6, gp, 32f
                  or           s4, s6, t5
14:               or           gp, gp, t5
                  bgeu         sp, t2, 20f
                  blt          s9, s0, 24f
                  srai         a4, s9, 20
                  or           s5, s11, s11
                  sltiu        s6, s2, -1176
20:               slli         tp, s3, 26
                  slti         tp, a7, 596
                  la           a7, sub_1
                  addi         a7, a7, 686
                  slt          gp, s9, t5
                  sll          s6, gp, gp
                  nop
                  sltu         s10, s5, a3
                  slti         gp, s0, 1881
main_j1:          jalr         ra, a7, -685 #jump main -> sub_1
                  add          sp, s1, s11
                  or           s5, tp, t1
                  slti         a0, s1, -671
24:               slli         a2, a0, 8
                  sltiu        zero, t6, 725
                  srai         a5, tp, 0
                  and          s5, s10, a7
                  bne          a5, a2, 32f
                  bge          a4, s3, 33f
                  addi         a2, a5, 154
                  slli         t5, a1, 20
32:               srli         t2, ra, 20
33:               addi         a5, sp, 1461
                  xor          s9, s11, a3
                  auipc        s8, 301931
                  and          s9, tp, a5
                  sltiu        s1, tp, 1507
                  sra          s4, t5, s1
                  sltiu        a5, a4, 1606
                  add          s7, a6, t3
                  beq          a0, a1, 56f
                  and          a0, a5, s9
                  or           zero, ra, s4
                  sll          s1, s0, zero
                  andi         t5, t0, -1827
                  addi         t0, a3, -1895
                  ori          t0, a7, -1613
                  bltu         t3, t2, 59f
                  add          t6, a3, zero
                  or           s11, t5, a7
                  auipc        a4, 56624
                  sra          t6, s10, sp
                  bge          t1, a7, 70f
                  srli         gp, zero, 7
                  sub          t3, ra, a2
56:               and          t3, a6, t0
                  sltu         tp, a4, a4
                  srai         t5, gp, 4
59:               bgeu         a3, a6, 76f
                  bltu         s5, s11, 77f
                  andi         t3, a7, 418
                  blt          a0, sp, 69f
                  sll          ra, a7, a1
                  lui          sp, 41618
                  slti         s11, t0, 16
                  and          ra, s11, zero
                  srai         s11, s8, 24
                  xor          s9, s7, s6
69:               slti         a1, tp, -9
70:               srli         ra, zero, 25
                  bltu         tp, s11, 81f
                  sub          a4, s6, sp
                  slti         t2, s0, -2017
                  srl          a4, a5, t4
                  ori          t3, s10, -2037
76:               srli         gp, s2, 22
77:               bgeu         t2, a5, 95f
                  bne          a6, a7, 89f
                  bge          tp, a3, 81f
                  sub          gp, s11, s9
81:               srli         s1, a2, 4
                  ori          t6, s1, -171
                  blt          a3, t6, 101f
                  bne          s9, s1, 96f
                  bne          zero, s10, 103f
                  ori          a6, a7, -1472
                  or           s6, s1, t4
                  bne          s5, s7, 102f
89:               slli         s1, s8, 29
                  srl          tp, t2, t5
                  sub          a1, sp, s5
                  slt          t1, zero, tp
                  add          s9, a2, a1
                  or           a7, s3, s3
95:               and          s7, t5, t4
96:               auipc        a5, 1041987
                  add          s2, a3, t1
                  srai         gp, t3, 21
                  blt          s7, t3, 110f
                  blt          a2, a2, 110f
101:              slli         gp, a2, 18
102:              bne          s6, gp, 105f
103:              slli         a2, t4, 29
                  xori         t1, a3, 752
105:              sub          t2, s8, s7
                  add          s5, s6, a6
                  blt          s7, zero, 110f
                  auipc        s5, 619690
                  srli         t2, s11, 17
110:              sltiu        a3, a2, 1252
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t4, t4, -12
                  srli         a3, s5, 2
                  slti         t5, s7, -389
                  sltiu        t1, s0, -1334
                  and          tp, sp, tp
                  sltiu        a5, a0, -1366
                  and          s10, s6, t4
                  sub          a2, a4, a0
                  sw           ra, 4(t4)
                  srai         a3, s11, 2
                  add          gp, gp, s8
                  lui          tp, 535264
                  la           sp, region_1+1359 #start riscv_load_store_hazard_instr_stream_2
                  lb           a2, -37(sp)
                  sb           a1, -37(sp)
                  sltiu        s6, s9, -1796
                  lb           a7, -6(sp)
                  lbu          s6, -6(sp)
                  lb           s5, -6(sp)
                  lb           a0, 52(sp)
                  sw           s4, 21(sp)
                  lb           s4, 42(sp)
                  sb           a0, -54(sp)
                  add          s5, sp, tp
                  sb           zero, 50(sp)
                  lh           s1, 41(sp)
                  sb           a1, 4(sp)
                  andi         s10, t6, 1011
                  lb           a6, -62(sp)
                  nop
                  sb           tp, -62(sp)
                  lb           a6, -62(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a6, region_0+1275 #start load_store_instr_stream_2
                  la           gp, region_0+387 #start load_store_instr_stream_0
                  lb           t2, -113(gp)
                  lbu          t0, -1236(a6)
                  la           t5, region_0+1663 #start load_store_instr_stream_1
                  lbu          tp, -528(t5)
                  sb           s5, 223(gp)
                  lb           s5, 1320(gp)
                  lb           t6, 391(a6)
                  lhu          s7, 219(gp)
                  lbu          a1, -339(t5)
                  lb           s11, -251(t5)
                  sb           t5, -164(a6)
                  lbu          a4, -1194(t5)
                  lbu          a5, 572(a6)
                  lb           zero, 96(gp)
                  sb           s5, 328(t5)
                  lbu          a4, 157(a6) #end load_store_instr_stream_2
                  sh           t2, -595(t5) #end load_store_instr_stream_1
                  lbu          a1, 1501(gp) #end load_store_instr_stream_0
                  la           a5, region_0+379 #start riscv_load_store_hazard_instr_stream_0
                  sb           s2, -62(a5)
                  lb           zero, -62(a5)
                  lb           t5, -62(a5)
                  lb           s2, -62(a5)
                  sb           s4, -62(a5)
                  lbu          s8, -62(a5)
                  lbu          a2, -62(a5)
                  lb           a1, -62(a5)
                  sb           s10, -62(a5)
                  sra          s9, s9, s2
                  slli         a6, t5, 2
                  sb           s2, -62(a5)
                  sb           s0, -62(a5)
                  lbu          t3, -62(a5)
                  lbu          s2, -62(a5)
                  sub          tp, s8, s9
                  lbu          s8, -62(a5)
                  lbu          gp, -62(a5)
                  lb           s1, -62(a5)
                  sll          t0, a2, t0
                  sb           a4, -62(a5)
                  srli         zero, s9, 1
                  sb           a2, -62(a5)
                  lbu          t0, -62(a5) #end riscv_load_store_hazard_instr_stream_0
                  la           s10, region_0+1290 #start load_store_instr_stream_3
                  lbu          s9, -401(s10)
                  la           s2, region_0+1440 #start load_store_instr_stream_0
                  la           s1, region_0+549 #start load_store_instr_stream_2
                  la           a3, region_0+502 #start load_store_instr_stream_1
                  lbu          a7, -1094(s10)
                  lb           zero, -26(s1)
                  lb           ra, 1(a3)
                  sb           s7, 13(s2)
                  sb           a1, 7(s2)
                  sb           t3, -8(a3)
                  sb           s9, -33(s1)
                  sb           sp, -900(s10)
                  lbu          t1, 15(s2)
                  lb           t1, -60(s1)
                  lh           t2, -404(s10)
                  lb           a7, 4(a3)
                  lh           s9, -2(a3)
                  lbu          a7, -1186(s10)
                  lhu          t2, -226(s10)
                  lw           t2, 59(s1)
                  lb           gp, 31(s2)
                  lbu          ra, 33(s1) #end load_store_instr_stream_2
                  sb           t3, -46(s2)
                  sb           s6, -765(s10) #end load_store_instr_stream_3
                  sb           sp, -5(a3) #end load_store_instr_stream_1
                  sb           a7, 16(s2) #end load_store_instr_stream_0
                  la           t2, region_1+198 #start load_store_instr_stream_2
                  la           s1, region_1+1915 #start load_store_instr_stream_1
                  lhu          zero, 1412(t2)
                  la           gp, region_1+1946 #start load_store_instr_stream_0
                  sb           a1, 1355(t2)
                  sb           ra, 5(gp)
                  sb           a6, -11(s1)
                  sb           s9, 3(gp)
                  sb           s10, 5(gp)
                  lbu          a5, -25(t2)
                  sb           t5, -100(s1)
                  lbu          a2, 1013(t2)
                  lbu          a3, 261(t2)
                  lhu          t0, -8(gp)
                  lhu          a7, 4(gp)
                  sh           t5, -91(s1)
                  sb           s9, -148(s1)
                  lbu          s11, -152(s1)
                  lbu          t3, 1503(t2)
                  sw           s9, -23(s1)
                  sh           s11, 16(gp)
                  sb           sp, 785(t2) #end load_store_instr_stream_2
                  sb           zero, 68(s1) #end load_store_instr_stream_1
                  lh           a4, -8(gp) #end load_store_instr_stream_0
                  la           sp, region_0+1000 #start riscv_load_store_hazard_instr_stream_1
                  sb           t3, 193(sp)
                  lb           t3, 193(sp)
                  srli         s5, a6, 28
                  sra          t3, t4, t4
                  lb           s9, 193(sp)
                  lbu          s6, 193(sp)
                  sb           t3, 193(sp)
                  lb           a1, 193(sp)
                  sb           s2, -907(sp)
                  lbu          a5, -907(sp)
                  lbu          a7, -907(sp)
                  lb           s1, -907(sp)
                  slti         a7, zero, 1492
                  lb           s9, -907(sp)
                  lbu          s10, -907(sp)
                  lb           a6, -907(sp)
                  lbu          t6, -907(sp)
                  sb           ra, -907(sp)
                  lb           a3, -907(sp)
                  lui          t6, 70052
                  lb           t6, -726(sp)
                  lh           s10, -726(sp)
                  ori          s6, s6, -223
                  lbu          s6, -726(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a3, region_0+490 #start riscv_load_store_hazard_instr_stream_3
                  sb           s1, -9(a3)
                  sb           s4, 10(a3)
                  xor          s2, s6, a5
                  lb           zero, 1(a3)
                  lb           t5, 1(a3)
                  lbu          s10, -12(a3)
                  lb           t5, -12(a3)
                  srai         s5, sp, 2
                  auipc        a0, 398297
                  lb           s7, 11(a3)
                  lb           zero, 11(a3)
                  slt          a2, s10, s1
                  lb           a0, 1(a3)
                  or           t2, sp, s0
                  lbu          a7, 1(a3)
                  sb           s6, 1(a3) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1671 #start riscv_load_store_rand_instr_stream_3
                  lui          gp, 153582
                  lbu          s8, 13(sp)
                  sub          t3, t5, t5
                  slli         a3, t2, 9
                  xori         a0, a0, -265
                  sltu         t2, s10, s8
                  lb           s6, -4(sp)
                  slti         a7, s2, 405
                  ori          a2, tp, 821
                  sb           a0, 10(sp)
                  auipc        s6, 199670
                  nop
                  xor          ra, t1, a5
                  slli         a6, s0, 15
                  lbu          t6, 9(sp)
                  sra          t3, a7, a3
                  sll          ra, s10, a4
                  sltiu        s5, ra, -958
                  srai         s4, a6, 8
                  lbu          a1, 2(sp)
                  lbu          tp, 15(sp)
                  lbu          a6, -12(sp)
                  sltiu        ra, t4, 446
                  xor          s9, s2, s5
                  auipc        t5, 749283
                  sltu         a7, a2, sp
                  sb           s6, 0(sp)
                  slt          t6, s5, s9
                  slli         zero, s2, 6
                  sb           t2, 5(sp)
                  or           s8, t5, ra
                  sll          s4, zero, s3
                  lb           t0, -15(sp)
                  lb           gp, -14(sp)
                  lh           s1, 3(sp)
                  lb           s1, 10(sp)
                  nop
                  add          t0, sp, s9
                  sh           t0, 9(sp)
                  lb           t3, -2(sp)
                  lbu          s4, 4(sp)
                  lh           s2, 13(sp)
                  auipc        s9, 152578
                  lbu          s8, 0(sp)
                  sltiu        s10, a6, 1452
                  lhu          s6, 15(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a1, region_0+443 #start riscv_load_store_rand_instr_stream_2
                  lb           a4, -58(a1)
                  lhu          t2, -17(a1)
                  nop
                  ori          s8, t5, -1885
                  lb           t6, -11(a1)
                  ori          t0, a0, 1858
                  lb           a3, 55(a1)
                  sb           a1, -52(a1)
                  slti         zero, s9, 1597
                  lbu          s10, 31(a1)
                  addi         a2, a2, -818
                  andi         s2, tp, 529
                  lb           a2, -11(a1)
                  sh           zero, 43(a1)
                  nop
                  sb           tp, 54(a1)
                  sb           ra, -24(a1)
                  lhu          s8, 27(a1)
                  add          a5, t4, t1
                  sb           t4, 37(a1)
                  srai         s2, s2, 27
                  lb           s7, 62(a1)
                  sb           t6, 23(a1)
                  slli         sp, t4, 31
                  lb           s1, 15(a1)
                  lb           s7, -50(a1)
                  sb           a3, 28(a1)
                  sb           s2, 57(a1)
                  lbu          a0, 32(a1)
                  lbu          a3, 4(a1)
                  lb           s7, 40(a1)
                  slti         s6, tp, 677
                  lb           t6, -27(a1)
                  lbu          a4, -57(a1)
                  srli         s7, s4, 3
                  xor          s9, s5, s7
                  sb           s0, -64(a1)
                  sh           a7, 61(a1)
                  lh           t5, -45(a1)
                  lbu          t6, -55(a1)
                  andi         zero, t6, 614
                  lh           a7, 51(a1)
                  nop
                  lh           t5, -33(a1)
                  slt          a7, s8, a7
                  lb           t6, 8(a1) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1999 #start riscv_load_store_rand_instr_stream_0
                  lbu          s8, -36(sp)
                  lui          t5, 446470
                  lb           s6, -6(sp)
                  add          a1, tp, t2
                  lbu          a4, -220(sp)
                  srli         s6, a5, 30
                  nop
                  sb           tp, -170(sp)
                  addi         a3, s0, -1002
                  sb           a5, -184(sp)
                  addi         a1, s10, 826
                  srli         tp, a4, 14
                  auipc        a7, 52524
                  sh           zero, -121(sp)
                  nop
                  srai         a0, a4, 4
                  sb           t4, -64(sp)
                  slli         t0, t3, 12
                  sb           tp, -68(sp)
                  slli         s5, s0, 11
                  sb           t5, -52(sp)
                  slli         gp, s1, 14
                  slti         a3, t0, -697
                  srl          s6, sp, a0
                  xor          s2, gp, s9
                  addi         a3, s10, 567
                  lhu          a6, -123(sp)
                  xor          a3, a1, s7
                  sltu         a4, a3, t5
                  srai         gp, s2, 27
                  lw           a5, -183(sp)
                  xor          t1, sp, s3
                  lb           s8, -61(sp)
                  sltiu        t6, t5, 1756
                  sb           t4, -141(sp)
                  lb           t1, -116(sp)
                  lw           s11, -3(sp)
                  lbu          t0, -68(sp)
                  sb           a4, -254(sp)
                  auipc        s7, 944116
                  lw           zero, -227(sp)
                  sb           s10, -95(sp)
                  lbu          t5, -57(sp)
                  xor          t0, s8, s10
                  sb           s0, 0(sp)
                  lb           ra, -62(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s7, t6, 181
                  slti         s8, tp, -441
                  srai         s7, a4, 16
                  sltu         s7, s11, s10
                  slt          s9, s7, t5
                  addi         a5, t2, 848
                  sltu         s7, s4, s10
                  addi         a1, s1, 447
                  slti         s6, a0, 498
                  blt          a3, s0, 22f
                  bgeu         t2, s10, 11f
11:               blt          s11, s1, 30f
                  blt          t4, s4, 20f
                  xori         s4, t1, -1447
                  bne          zero, t5, 17f
                  sra          tp, t6, gp
                  sll          ra, a0, s6
17:               bge          s10, a5, 28f
                  nop
                  xor          a7, s2, sp
20:               slti         gp, s8, -101
                  bgeu         t0, s1, 41f
22:               blt          s1, s4, 26f
                  xor          t1, s7, tp
                  andi         a0, s11, -1998
                  srl          a4, zero, s9
26:               slli         s8, t3, 28
                  and          t0, s1, ra
28:               slti         tp, ra, -531
                  sra          a3, s11, s9
30:               sll          t0, a1, s1
                  blt          t0, s10, 43f
                  sltu         zero, gp, zero
                  sll          s9, a7, s0
                  xori         s7, s11, -1815
                  auipc        a6, 430266
                  xori         s5, zero, -654
                  bge          t0, s6, 55f
                  andi         s10, t6, 1097
                  bltu         s3, t6, 41f
                  xor          s2, a3, s2
41:               or           s8, sp, a4
                  addi         a0, t5, 666
43:               sub          s1, t6, t1
                  slt          ra, s2, t6
                  ori          a4, s5, -1060
                  srai         gp, s1, 31
                  sra          a1, sp, s5
                  beq          a2, a4, 49f
49:               add          a4, s8, a6
                  slli         gp, t1, 6
                  blt          a3, s9, 55f
                  sub          tp, a7, t2
                  auipc        a0, 939140
                  or           s5, s0, t4
55:               blt          s8, s5, 67f
                  srli         t6, s6, 31
                  lui          t2, 722638
                  srl          gp, t4, s6
                  slt          t0, a1, a7
                  blt          t4, gp, 78f
                  lui          t3, 328156
                  bgeu         ra, zero, 76f
                  sub          s6, t0, a6
                  blt          t1, a4, 65f
65:               xor          a3, s1, s10
                  xori         t2, s6, -521
67:               bge          s2, a0, 80f
                  beq          sp, s4, 72f
                  slti         a2, a3, -735
                  srai         zero, a3, 23
                  sltu         t3, s6, a1
72:               sltiu        s6, sp, 1214
                  sub          s7, s5, ra
                  sub          zero, a6, zero
                  auipc        a3, 396354
76:               ori          t2, t1, 8
                  bge          s11, s2, 87f
78:               xor          a3, a6, s7
                  andi         s1, s4, -815
80:               sra          a6, sp, a5
                  lui          s9, 136755
                  slti         tp, s11, 1112
                  addi         a7, zero, -872
                  or           s5, s1, s3
                  slti         s11, t6, -1128
                  and          s11, s10, a5
87:               auipc        s8, 513906
                  add          s7, s4, s3
                  xori         t5, s11, 1548
                  blt          s11, s10, 94f
                  sub          s10, a1, tp
                  xor          t1, zero, tp
                  srl          a4, s6, zero
94:               bltu         t1, t1, 100f
                  andi         t0, a6, -362
                  beq          s8, t1, 102f
                  bltu         a1, s1, 103f
                  ori          a4, zero, -855
                  srai         s11, t0, 30
100:              ori          s11, t5, -696
                  and          s1, s8, a5
102:              srai         a5, s0, 12
103:              blt          s5, a6, 112f
                  srli         s8, t0, 5
                  blt          sp, tp, 120f
                  beq          s11, s0, 107f
107:              beq          zero, a0, 126f
                  sra          a2, s6, a1
                  bge          t3, t2, 125f
                  slti         t3, s2, 356
                  sub          a5, a2, t1
112:              xori         s7, a0, -833
                  or           tp, t4, s5
                  slt          s4, a3, zero
                  xori         s6, a2, 92
                  xor          sp, s1, t0
                  add          sp, t0, a0
                  slt          a5, a3, s8
                  xor          s7, a3, s1
120:              bgeu         tp, a4, 124f
                  ori          t0, a3, 740
                  addi         t3, s5, -1206
                  andi         s8, a6, -805
124:              srl          zero, gp, sp
125:              sltu         s9, a2, a2
126:              addi         a4, sp, -1149
                  ori          s10, t6, 1040
                  sra          sp, ra, s11
                  srl          a6, s11, s6
                  bgeu         sp, tp, 149f
                  bgeu         s3, s11, 135f
                  or           s2, s11, s7
                  bge          t4, a2, 139f
                  add          zero, s7, a7
135:              srai         t2, s11, 28
                  add          t5, a7, a3
                  xor          s9, s2, tp
                  sra          t0, ra, t0
139:              srli         s6, a0, 26
                  slli         t1, t3, 17
                  addi         t2, t6, -1903
                  sra          s10, s10, t3
                  bne          a2, t0, 147f
                  bge          sp, a4, 162f
                  sll          a6, s8, t0
                  sub          s7, ra, a7
147:              sltu         s7, t0, a6
                  add          t1, a7, zero
149:              srl          a7, s7, s7
                  bne          zero, gp, 154f
                  andi         gp, t3, 1098
                  blt          s9, ra, 153f
153:              ori          ra, s4, 1555
154:              auipc        a0, 303268
                  blt          s9, t4, 156f
156:              bge          a6, t6, 158f
                  bge          a6, s4, 166f
158:              sra          a5, s9, t3
                  bgeu         s2, zero, 169f
                  srai         t2, s0, 22
                  sra          gp, s9, a2
162:              auipc        t2, 549968
                  sub          tp, t6, a1
                  slti         s11, a1, -403
                  sub          s2, s4, s4
166:              bltu         a4, s0, 181f
                  beq          ra, t1, 179f
                  auipc        a1, 472974
169:              sra          t6, t2, t5
                  andi         a1, a6, -33
                  lui          gp, 719253
                  andi         s11, t4, -782
                  srli         t2, t1, 29
                  sltiu        a5, t4, -937
                  bltu         s11, a4, 183f
                  sub          s6, a1, sp
                  bne          s0, s7, 190f
                  slt          s4, s6, a0
179:              bgeu         t6, t3, 185f
                  ori          a5, t3, 397
181:              bne          sp, a0, 187f
                  la           t0, region_0+1450 #start load_store_instr_stream_2
                  la           s1, region_0+1895 #start load_store_instr_stream_1
                  la           s10, region_0+606 #start load_store_instr_stream_3
                  sb           a7, -19(t0)
                  sb           a0, -241(t0)
                  lb           s11, -1333(s1)
                  lhu          t5, 252(s10)
                  la           s4, region_0+1263 #start load_store_instr_stream_4
                  lb           s6, -1223(s1)
                  la           s2, region_0+709 #start load_store_instr_stream_0
                  sb           a1, -1(t0)
                  lb           a1, -26(s10)
                  lb           a1, 34(s4)
                  lhu          a1, -172(t0)
                  lb           t6, -142(s4)
                  sb           gp, -26(s2)
                  lbu          t6, 38(t0)
                  sb           t1, -49(s4)
                  sb           gp, -137(t0)
                  sb           t6, -407(s1)
                  lbu          s6, -52(s2)
                  lbu          s9, -337(s1)
                  lhu          a3, -146(t0)
                  sb           s1, -406(s1)
                  lh           a0, -40(t0)
                  sb           zero, -1072(s1)
                  lb           s5, 32(s2)
                  lb           t6, -145(s10)
                  lb           s5, -221(s4)
                  lbu          a7, -572(s1)
                  lb           s6, -174(s4)
                  lh           ra, 54(t0)
                  lb           s9, -188(s10)
                  sw           s4, 1(s4)
                  lh           zero, 33(s2)
                  sb           s5, 252(t0) #end load_store_instr_stream_2
                  sb           tp, -104(s4)
                  lb           t5, -108(s4)
                  lhu          zero, 144(s10) #end load_store_instr_stream_3
                  lb           t5, 127(s4)
                  lbu          a0, -26(s4) #end load_store_instr_stream_4
                  sb           a1, -470(s1) #end load_store_instr_stream_1
                  lbu          sp, 16(s2) #end load_store_instr_stream_0
                  srl          a7, t4, s8
183:              andi         s9, t3, 1740
                  xori         t6, a2, -511
185:              slti         sp, t3, 673
                  blt          a5, gp, 187f
187:              bltu         s2, t5, 188f
188:              bge          s11, a4, 204f
                  or           a1, t2, s9
190:              auipc        a3, 141203
                  bgeu         s8, s3, 202f
                  nop
                  blt          t4, a5, 197f
                  bltu         tp, t2, 213f
                  xori         tp, zero, 369
                  slli         t0, t2, 15
197:              bge          s9, a7, 209f
                  beq          s10, t5, 202f
                  srl          a3, t3, s3
                  bne          a3, a3, 218f
                  slti         s11, a1, 722
202:              lui          s1, 1032799
                  sra          a7, t3, a3
204:              xori         a6, t1, 1831
                  addi         t1, s7, -736
                  srai         a5, a2, 0
                  addi         a5, sp, -433
                  sltiu        t2, a4, -1871
209:              sltu         t1, gp, s2
                  or           a4, s2, s7
                  xori         s10, t6, 546
                  ori          sp, s0, -1782
213:              xor          t6, sp, a1
                  lui          s9, 624885
                  bge          s10, s2, 218f
                  blt          zero, s5, 236f
                  srai         t2, t5, 17
218:              bgeu         a0, s6, 232f
                  xor          t2, a1, tp
                  srai         s4, s4, 31
                  xor          s5, a1, a3
                  sra          s6, t6, a3
                  xori         t1, s6, -439
                  srli         a2, t5, 1
                  sub          t3, a4, a2
                  xori         a6, t3, 2006
                  andi         a0, t0, -78
                  bne          s9, a1, 241f
                  sll          sp, s4, zero
                  slli         s5, s7, 22
                  slti         sp, s9, 817
232:              ori          a1, a2, -695
                  bltu         a4, s0, 252f
                  andi         t6, a7, 215
                  srl          sp, a3, s7
236:              bge          a3, a3, 244f
                  auipc        t1, 398766
                  sll          s2, a0, s3
                  andi         a4, s7, -922
                  srai         gp, t0, 16
241:              slli         t5, ra, 26
                  sra          s7, a1, s5
                  slti         s11, s4, -1185
244:              blt          a2, s7, 257f
                  sltu         s11, a6, t6
                  slti         s2, s10, -1612
                  add          a7, a7, ra
                  addi         tp, t0, 506
                  sub          gp, s3, s11
                  ori          s2, t1, 1647
                  ori          s5, a7, 1055
252:              srl          s7, s3, a6
                  xori         s9, t5, 734
                  sra          s4, a4, s6
                  srl          a3, sp, s8
                  nop
257:              add          gp, tp, a0
                  slli         a6, s9, 14
                  srli         t6, t4, 22
                  srl          a2, s0, a7
                  bgeu         s3, s6, 262f
262:              xor          a3, sp, zero
                  sltiu        s8, s11, -928
                  blt          sp, ra, 268f
                  addi         t1, s6, 1317
                  beq          t4, s3, 267f
267:              nop
268:              slti         a5, s6, -744
                  bgeu         a6, s2, 280f
                  bgeu         a6, s8, 271f
271:              blt          t5, s3, 289f
                  bge          t3, a6, 284f
                  addi         t2, t3, 645
                  auipc        t6, 65143
                  auipc        t0, 953120
                  srli         gp, a6, 11
                  add          gp, t2, s3
                  sltu         t2, a5, sp
                  srl          t2, a0, s5
280:              andi         s6, s1, 218
                  ori          zero, s11, -732
                  sub          a2, a2, s6
                  bge          t3, t4, 287f
284:              ori          s2, tp, 1530
                  srai         t1, s8, 4
                  slti         a2, s7, 614
287:              xor          t6, t1, a6
                  bltu         s0, s2, 300f
289:              slt          s4, t3, a3
                  or           s7, s8, ra
                  nop
                  sltiu        t1, t5, -697
                  bne          t3, a2, 303f
                  srl          s7, s3, s11
                  srl          a5, t6, t6
                  slli         s11, t3, 28
                  lui          s9, 335744
                  nop
                  andi         t5, s2, -238
300:              slli         t5, ra, 13
                  lui          t0, 635932
                  bgeu         t0, s6, 308f
303:              bltu         zero, zero, 316f
                  beq          a4, t5, 320f
                  sll          a5, s3, t2
                  bne          t6, sp, 325f
                  bltu         a6, s5, 309f
308:              blt          s7, s2, 312f
309:              andi         t5, s6, 49
                  nop
                  bge          t5, s8, 317f
312:              sltu         t2, s7, s0
                  bne          t0, sp, 316f
                  slli         s4, t2, 20
                  beq          s8, t3, 319f
316:              andi         tp, s11, 127
317:              and          s2, t5, s0
                  addi         s6, zero, -118
319:              nop
320:              sll          a0, a3, s11
                  addi         ra, gp, -1706
                  xori         gp, a5, 1624
                  sltiu        tp, s8, -372
                  bgeu         a2, s3, 344f
325:              bge          a6, zero, 340f
                  bge          t4, s5, 332f
                  bgeu         s1, t0, 341f
                  bltu         a7, t4, 337f
                  blt          t6, tp, 347f
                  auipc        zero, 1024538
                  srl          s5, s9, s11
332:              xori         a1, s7, -767
                  sra          s6, s6, s3
                  and          s1, s10, gp
                  bltu         a5, ra, 336f
336:              bne          a4, a0, 340f
337:              beq          s8, zero, 356f
                  sub          t6, t2, s0
                  add          tp, s7, a7
340:              lui          s8, 498171
341:              add          s11, s6, s4
                  bltu         t6, a1, 348f
                  bne          s3, a4, 345f
344:              bgeu         a4, a7, 352f
345:              slli         a7, s11, 9
                  sra          a0, s1, a1
347:              blt          zero, a2, 362f
348:              sltu         sp, zero, t6
                  srli         a7, ra, 15
                  blt          a3, s4, 369f
                  lui          a2, 570018
352:              srli         s2, s8, 19
                  nop
                  blt          t6, s2, 358f
                  slti         gp, s3, 1802
356:              bge          gp, s9, 360f
                  bne          s5, s6, 370f
358:              andi         t2, s1, -23
                  bge          s6, s2, 370f
360:              sra          a4, a0, zero
                  xori         a6, s5, 168
362:              auipc        s9, 767475
                  lui          t5, 591654
                  sltiu        s11, s5, 160
                  slli         s6, zero, 11
                  slti         s7, a6, -182
                  ori          a0, tp, 1302
                  and          a5, t4, a4
369:              xor          a6, s5, a0
370:              slti         a0, s2, 1192
                  sltiu        s8, gp, -377
                  addi         gp, s1, -1980
                  bltu         a7, t2, 377f
                  sll          gp, ra, a0
                  slli         s6, s0, 2
                  addi         s11, t6, 52
377:              bgeu         sp, a2, 395f
                  slt          s10, t3, s1
                  slt          s8, s5, t1
                  slt          s7, zero, a4
                  nop
                  slti         a3, s0, -1785
                  sltu         t5, s7, zero
                  srl          s4, s9, s3
                  la           sp, region_1+1417 #start riscv_load_store_rand_instr_stream_1
                  sb           s6, 18(sp)
                  add          s8, s0, t1
                  auipc        s5, 191979
                  slli         a2, a4, 26
                  lw           a0, 3(sp)
                  sb           t4, 9(sp)
                  xori         t6, s8, 1060
                  lbu          a4, 32(sp)
                  lbu          a5, 17(sp)
                  sw           a6, 39(sp)
                  sll          s8, gp, t4
                  and          s11, a4, s9
                  sb           a4, -6(sp)
                  srai         t1, a7, 2
                  add          s11, a1, s7
                  nop
                  sra          a5, s5, a1
                  srl          s8, gp, a0
                  sb           a6, -64(sp)
                  slli         a7, t5, 14
                  sltu         s4, s6, t5
                  sub          a3, ra, s4
                  lhu          s2, -23(sp)
                  or           s7, s1, zero
                  sub          gp, s7, a7
                  slli         a2, a3, 6
                  xor          t6, t6, zero
                  and          t0, s6, s10
                  add          a5, s9, s5
                  add          t6, s10, s5
                  lbu          a3, -54(sp)
                  slti         s7, t2, 1169
                  nop
                  lb           a4, 64(sp)
                  sb           s9, -28(sp) #end riscv_load_store_rand_instr_stream_1
                  bgeu         sp, ra, 401f
                  add          s6, t2, a7
                  xor          t6, s7, s11
                  bltu         s0, a2, 389f
389:              xori         a6, s6, 4
                  srli         s2, a0, 26
                  slli         s8, ra, 6
                  xori         t1, s6, -354
                  beq          a0, ra, 411f
                  slt          a4, s7, a2
395:              andi         t2, s6, -645
                  slti         a2, s8, -133
                  xor          t5, zero, s0
                  addi         t1, a4, 720
                  add          s8, s7, t3
                  nop
401:              and          s10, t1, s8
                  bge          a1, s5, 403f
403:              add          ra, a7, t1
                  bltu         a1, a3, 408f
                  srai         a3, a6, 9
                  auipc        t3, 913883
                  andi         s11, tp, -123
408:              sub          a4, a5, t1
                  and          zero, s11, s9
                  xori         a4, a6, -1637
411:              bgeu         s6, a3, 412f
412:              bgeu         s11, t4, 413f
413:              and          s8, a6, a1
                  auipc        a0, 942261
                  slti         a2, t4, -1490
                  add          t6, s11, a6
                  sra          zero, s11, t4
                  lw           ra, 4(t4)
                  addi         t4, t4, 12
                  srl          a0, s5, t6
811:              addi x10, x1, 0
811:              jalr x10, x10, 0
sub_1:            add          gp, s10, s3
                  bgeu         a3, s11, sub_1_stack_p
                  lui          s1, 697851
sub_1_stack_p:    addi         t4, t4, -24
                  addi         sp, gp, 405
                  srai         t1, tp, 8
                  sra          s7, sp, a5
                  lui          s5, 110264
                  xor          t0, ra, s1
                  sw           ra, 4(t4)
                  slt          a0, a5, a1
                  slti         t5, t4, -208
                  srl          s8, a2, a5
                  la           sp, region_0+825 #start riscv_load_store_rand_instr_stream_0
                  addi         s4, s7, -59
                  lh           s10, -11(sp)
                  lb           s7, 2(sp)
                  addi         a1, s8, 921
                  xor          tp, s6, a3
                  lui          s4, 471454
                  lbu          a1, 13(sp)
                  sb           s5, -12(sp)
                  lb           tp, 8(sp)
                  sb           t5, -8(sp)
                  sra          a3, sp, t5
                  lbu          s8, 9(sp)
                  lb           t2, 15(sp)
                  or           a0, t2, tp
                  lb           s10, 6(sp)
                  sb           s11, 6(sp)
                  sll          ra, a5, t3
                  auipc        t6, 346556
                  lbu          t2, 0(sp)
                  lb           s11, 3(sp)
                  lui          tp, 489107
                  sltu         s10, s9, a6
                  lb           tp, 10(sp)
                  lh           s10, 13(sp)
                  sb           zero, 6(sp)
                  lw           t1, 11(sp)
                  xori         a7, s5, 1938
                  lb           t3, -6(sp)
                  lbu          s1, 16(sp)
                  sub          s6, s9, a4
                  auipc        s6, 754072
                  lbu          s10, 11(sp)
                  sb           s11, 2(sp)
                  lbu          a5, 15(sp)
                  or           a3, a4, s11
                  lb           s5, 0(sp)
                  lbu          a3, -1(sp)
                  or           a7, s7, s8
                  sw           a5, 11(sp)
                  sw           a2, 11(sp)
                  auipc        t3, 293393
                  sb           s7, 4(sp)
                  xori         s8, zero, 762
                  nop
                  srli         a3, a2, 2
                  sra          s9, s8, s2
                  sra          s11, a2, t1
                  sb           s6, 0(sp)
                  sb           s2, 11(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+1666 #start load_store_instr_stream_1
                  la           ra, region_1+522 #start load_store_instr_stream_3
                  la           a7, region_1+1558 #start load_store_instr_stream_2
                  sb           s11, -872(a7)
                  la           a1, region_1+784 #start load_store_instr_stream_0
                  sb           a0, 193(a1)
                  lb           s11, 139(ra)
                  sb           a2, -1095(a7)
                  lhu          t2, -178(ra)
                  lbu          a4, 193(a1)
                  lb           a0, 111(t5)
                  sb           t0, -393(a7)
                  sb           s0, 181(a1)
                  sb           s3, -413(a7)
                  lb           t2, 209(ra)
                  sh           a5, -80(a1)
                  sb           t6, -130(ra)
                  lbu          tp, 33(ra)
                  sb           s2, -131(t5)
                  lbu          s5, 85(t5)
                  sh           t3, 102(a1)
                  lb           zero, 153(ra)
                  lbu          t2, 231(a1)
                  lh           t0, -256(ra)
                  sb           zero, 110(t5)
                  sb           s6, -83(a1)
                  sb           a0, 37(ra)
                  sb           s9, 34(a1)
                  sb           t3, 257(a7) #end load_store_instr_stream_2
                  lbu          gp, -93(t5) #end load_store_instr_stream_1
                  lhu          a6, 72(ra) #end load_store_instr_stream_3
                  lh           s5, -100(a1) #end load_store_instr_stream_0
                  la           t3, region_0+608 #start riscv_load_store_hazard_instr_stream_3
                  lui          a7, 56628
                  sltiu        s9, t3, 1956
                  sh           s6, -42(t3)
                  sb           s6, -42(t3)
                  lbu          s1, -42(t3)
                  lhu          a1, -42(t3)
                  lhu          t1, -42(t3)
                  lbu          gp, -42(t3)
                  lh           a4, -42(t3)
                  sltu         a6, a6, a2
                  sh           a6, -42(t3)
                  lbu          tp, -42(t3)
                  ori          tp, gp, -608
                  lhu          s5, -42(t3)
                  lb           a6, -42(t3)
                  lh           t0, -60(t3)
                  lh           s10, -60(t3)
                  lb           s1, -60(t3)
                  lb           t1, 15(t3) #end riscv_load_store_hazard_instr_stream_3
                  la           s2, region_1+213 #start load_store_instr_stream_1
                  sb           a2, 174(s2)
                  la           sp, region_1+267 #start load_store_instr_stream_2
                  la           s9, region_1+1823 #start load_store_instr_stream_0
                  lbu          a3, 109(s2)
                  lbu          tp, -110(s9)
                  sh           t5, -33(sp)
                  lbu          s5, 23(sp)
                  lw           zero, 3(s2)
                  lh           ra, -147(s9)
                  lb           a1, 28(sp)
                  lbu          s6, -5(sp)
                  lbu          s5, -130(s9)
                  lb           zero, 4(sp)
                  lbu          s7, -172(s9)
                  lb           a0, -196(s2)
                  lbu          a2, -68(s9)
                  sh           s0, -15(sp)
                  lhu          s5, 15(s9)
                  lb           a1, -36(s2)
                  lbu          s4, 12(sp) #end load_store_instr_stream_2
                  lb           s4, 84(s9)
                  lbu          ra, -152(s2)
                  lbu          a1, -198(s2)
                  lb           t6, -27(s2) #end load_store_instr_stream_1
                  lb           t2, -109(s9) #end load_store_instr_stream_0
                  la           sp, region_0+720 #start riscv_load_store_rand_instr_stream_3
                  lui          s6, 1041716
                  add          a3, s6, ra
                  or           a0, a1, a5
                  srl          gp, s0, s6
                  sb           s10, -31(sp)
                  lui          s1, 182772
                  lbu          t1, 733(sp)
                  addi         s6, a7, 285
                  xori         s11, s10, -1076
                  ori          gp, s11, -1174
                  lbu          gp, 412(sp)
                  sb           gp, 361(sp)
                  and          a2, t6, s11
                  xor          t3, s11, t0
                  sb           t2, 955(sp)
                  or           a5, a5, s9
                  slti         a6, a5, 1091
                  sll          s8, a4, a4
                  sb           t4, -297(sp)
                  sltiu        t6, t4, -1124
                  slli         s11, s2, 25
                  srai         a3, zero, 0
                  addi         t6, ra, 196
                  srai         gp, s6, 4
                  lbu          a4, -500(sp)
                  srai         ra, a6, 8
                  slli         tp, t0, 0
                  and          tp, gp, sp
                  lui          s10, 384255
                  lb           s4, -606(sp)
                  lb           a2, 803(sp)
                  ori          a5, a6, 388
                  slti         ra, a3, 595
                  lbu          zero, 419(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_0+74 #start load_store_instr_stream_0
                  la           a1, region_0+1293 #start load_store_instr_stream_1
                  lb           s2, -2(a1)
                  lh           s5, 12(s11)
                  sb           s5, -4(a1)
                  la           gp, region_0+600 #start load_store_instr_stream_2
                  lbu          t3, 40(gp)
                  sb           a1, -7(a1)
                  lb           a2, -8(a1)
                  lbu          t5, 41(gp)
                  sb           t3, -44(s11)
                  lbu          s8, 61(gp)
                  sb           t5, 201(s11)
                  lbu          a4, -27(gp)
                  sh           t4, 234(s11)
                  lh           s6, -36(gp)
                  lhu          t5, 15(a1)
                  sb           s0, -16(a1)
                  lbu          t3, 53(s11)
                  lh           a2, 9(a1)
                  lbu          zero, -10(a1) #end load_store_instr_stream_1
                  sh           s7, 20(gp) #end load_store_instr_stream_2
                  sb           a2, 49(s11)
                  lb           zero, 12(s11) #end load_store_instr_stream_0
                  la           s4, region_0+859 #start riscv_load_store_hazard_instr_stream_0
                  sb           a6, 60(s4)
                  lhu          t0, -13(s4)
                  lhu          t1, -13(s4)
                  lhu          s11, -13(s4)
                  sb           s3, -13(s4)
                  sb           s3, -13(s4)
                  andi         s8, s11, -1658
                  sb           tp, -13(s4)
                  lh           a5, -13(s4)
                  sb           s7, -13(s4)
                  sb           a6, -13(s4)
                  lb           t0, -13(s4)
                  lbu          t2, -13(s4)
                  lhu          a4, 53(s4)
                  sw           s6, 53(s4)
                  lb           t1, 53(s4)
                  lbu          a4, 25(s4)
                  lh           tp, 25(s4)
                  lbu          a3, -22(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           tp, region_1+1992 #start riscv_load_store_hazard_instr_stream_1
                  srli         s1, a2, 10
                  sb           t1, -457(tp)
                  lbu          a5, -457(tp)
                  auipc        a2, 330252
                  sw           a2, -980(tp)
                  sw           t1, -980(tp)
                  lb           s1, -1293(tp)
                  sll          s10, gp, a3
                  lb           s4, -238(tp)
                  lb           zero, -238(tp)
                  sb           t2, -238(tp)
                  sh           s4, -238(tp)
                  lhu          a5, -238(tp)
                  sltu         s10, s11, t1
                  lh           s8, -238(tp)
                  lb           a7, -476(tp)
                  lw           a1, -1344(tp)
                  sb           ra, -365(tp)
                  lb           s9, -365(tp)
                  slt          zero, a5, a2
                  sb           a4, -1321(tp)
                  lb           s7, -1196(tp)
                  lhu          s9, -1196(tp) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_0+840 #start riscv_load_store_rand_instr_stream_2
                  and          t0, a7, a3
                  sltiu        t3, s10, 646
                  lh           s9, -6(a6)
                  sh           s10, 14(a6)
                  srl          t3, t3, s5
                  slti         gp, t5, 1484
                  sb           s7, -7(a6)
                  srl          a0, s7, s4
                  lb           a7, 7(a6)
                  sb           ra, -3(a6)
                  slli         zero, a4, 7
                  sb           ra, -10(a6)
                  sb           s2, 10(a6)
                  add          t1, s7, t5
                  lhu          a5, -14(a6)
                  lui          ra, 1047544
                  lhu          a5, -2(a6)
                  lb           s1, -13(a6)
                  slti         s6, a6, -1655
                  xor          s7, a4, t4
                  sub          t3, s5, a4
                  slti         s10, t1, -1789
                  slt          a4, t6, a5
                  and          s5, gp, t5
                  lb           s2, -4(a6)
                  sltiu        s11, a5, -501
                  sb           t6, 1(a6)
                  sltiu        t3, t0, -1553
                  sltiu        s11, s9, 1257
                  add          s1, t2, t2
                  lbu          gp, 15(a6)
                  slt          gp, a4, s11
                  sb           gp, -1(a6)
                  lh           ra, 4(a6)
                  andi         t5, s0, 326
                  sh           a0, -6(a6)
                  sltiu        s10, s9, -1346
                  lh           a0, -12(a6)
                  slli         s2, t1, 18
                  sb           a4, -15(a6)
                  srl          a3, s1, a7
                  sh           t5, -10(a6)
                  lui          t0, 794883
                  sh           sp, 12(a6)
                  slti         t0, gp, -1935
                  sub          t2, a1, zero
                  lbu          s9, 9(a6)
                  andi         sp, t2, 237
                  andi         s4, a7, 1808
                  lbu          a2, -15(a6)
                  lb           a3, 2(a6) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_0+1995 #start riscv_load_store_rand_instr_stream_1
                  srli         s7, s4, 7
                  sltiu        a5, s0, 1715
                  lui          s11, 464638
                  xori         a5, t0, 2011
                  lui          s5, 745853
                  sb           s10, -56(a1)
                  sra          s7, tp, a6
                  sltiu        t1, a0, -880
                  lbu          s4, -64(a1)
                  lw           s7, -51(a1)
                  xori         s10, sp, 648
                  sub          tp, s10, tp
                  sb           s6, -50(a1)
                  sb           s5, -44(a1)
                  and          a6, s5, a6
                  xor          a3, t4, t0
                  or           a7, s8, s0
                  lbu          s2, -6(a1)
                  sb           t6, -43(a1)
                  andi         s11, a3, -291
                  sb           t0, -26(a1)
                  andi         s9, ra, -943
                  lui          a3, 815527
                  lb           t0, 0(a1)
                  sra          gp, t4, t0
                  sw           a6, -31(a1)
                  lbu          t5, -6(a1)
                  auipc        ra, 1040734
                  sb           a3, -11(a1)
                  slti         a0, zero, -1205
                  lb           sp, -50(a1)
                  add          a0, t4, s2
                  sh           a2, -9(a1)
                  auipc        a5, 738643
                  sh           a5, -51(a1)
                  srl          t2, s1, s3
                  sb           t6, -18(a1)
                  and          s2, s2, a5
                  lb           s9, -17(a1)
                  sltiu        ra, t6, -1662
                  sb           t0, -2(a1) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+239 #start riscv_load_store_hazard_instr_stream_2
                  lhu          s7, 13(t0)
                  lb           a4, 13(t0)
                  srl          a5, gp, t0
                  lbu          a1, 13(t0)
                  lh           a1, 13(t0)
                  xori         a5, t3, -1057
                  lb           t3, 13(t0)
                  lhu          s5, 13(t0)
                  sh           a5, 13(t0)
                  sb           gp, 13(t0)
                  lhu          s1, 13(t0)
                  lbu          a5, 13(t0)
                  lbu          s9, 13(t0)
                  lb           a1, 13(t0)
                  lw           t2, 13(t0)
                  lh           t6, 13(t0)
                  srai         s2, a1, 4
                  srl          s9, a6, s4
                  sltiu        t5, a3, -1593
                  sw           a6, 13(t0)
                  lb           s7, 13(t0)
                  lb           a2, 13(t0)
                  lb           a5, 13(t0)
                  lbu          s5, 13(t0) #end riscv_load_store_hazard_instr_stream_2
                  slli         s2, s9, 18
                  ori          t6, s11, -186
                  addi         t0, sp, -813
                  bltu         s10, s3, 7f
                  addi         t6, a6, 1257
                  bne          a2, t5, 20f
                  add          s8, s11, s6
7:                bge          t4, s8, 21f
                  blt          zero, s0, 17f
                  nop
                  sra          s6, a2, a1
                  beq          gp, a3, 30f
                  ori          a1, a2, 1862
                  srli         tp, s1, 7
                  addi         tp, s4, 1291
                  srli         zero, s3, 14
                  srai         a4, t3, 24
17:               and          a2, s8, s11
                  or           s2, s7, s0
                  add          t2, t0, t4
20:               lui          s2, 550353
21:               srl          s6, tp, a5
                  ori          t0, t3, 2046
                  sra          s6, a7, s11
                  xor          s8, t3, s7
                  xori         s9, s8, -257
                  bltu         t0, t1, 46f
                  bltu         s0, s10, 42f
                  bltu         s6, gp, 31f
                  ori          s2, ra, -431
30:               blt          a6, ra, 42f
31:               nop
                  ori          t2, s0, 867
                  sll          t6, s1, s7
                  slli         s7, a0, 16
                  xor          a6, t2, zero
                  xori         a4, t2, -1989
                  nop
                  and          s11, a5, t3
                  sub          a0, a2, t0
                  slli         s2, s5, 2
                  slt          a0, s2, t6
42:               beq          ra, s8, 62f
                  slt          s6, gp, s11
                  sll          s4, t4, tp
                  srai         s11, ra, 7
46:               slt          s6, t6, gp
                  xori         gp, s10, 813
                  beq          a5, t5, 52f
                  bgeu         s6, t3, 61f
                  lui          a6, 841203
                  slti         t3, s9, 65
52:               bne          t0, gp, 65f
                  lui          zero, 655556
                  slt          s8, a6, s4
                  xori         t6, a6, 420
                  sll          a5, a2, s0
                  srli         s1, t2, 12
                  sltiu        s2, s9, 1308
                  add          s1, a3, t2
                  bgeu         s0, a4, 79f
61:               srai         s8, a1, 9
62:               sub          s4, a7, t4
                  sltiu        a0, s9, 634
                  nop
65:               sub          t3, tp, t4
                  sltu         s6, s10, t5
                  slli         a1, s4, 21
                  bltu         gp, a5, 80f
                  sra          a6, s1, a4
                  bgeu         s5, s0, 77f
                  and          a6, gp, t5
                  nop
                  sra          s11, t4, s7
                  andi         s6, a0, 1517
                  srai         s11, s10, 4
                  sra          a1, a5, s5
77:               srai         t5, a4, 18
                  slli         t6, t1, 17
79:               blt          s1, a7, 83f
80:               srl          t6, t2, tp
                  addi         t6, s8, -604
                  srai         s1, s11, 10
83:               nop
                  xor          s6, a0, t5
                  xori         t5, zero, -986
                  add          a7, s0, a7
                  addi         s6, a0, 2017
                  auipc        t5, 484952
                  ori          t5, t3, 693
                  and          a4, t1, s3
                  add          t1, a2, a6
                  add          a0, s0, s6
                  slti         tp, s3, 314
                  beq          t1, a5, 101f
                  bge          ra, a1, 109f
                  sub          a5, a2, s11
                  bge          s8, s4, 100f
                  addi         s5, s4, -1297
                  bltu         t3, tp, 119f
100:              lui          t6, 826042
101:              beq          s9, t6, 109f
                  ori          s1, a0, -977
                  bgeu         a3, t5, 120f
                  lui          t3, 122650
                  sra          t6, sp, t5
                  bne          a1, s1, 122f
                  srai         gp, s11, 14
                  addi         tp, tp, -1089
109:              bgeu         a1, s6, 114f
                  sltu         a5, t1, s2
                  and          a7, t3, s10
                  beq          s4, a6, 113f
113:              bne          tp, zero, 128f
114:              bge          t5, s4, 128f
                  sra          a3, zero, s3
                  lui          t1, 415874
                  nop
                  andi         a1, a1, -762
119:              slti         a6, t0, -1760
120:              xori         s7, s1, -83
                  auipc        a2, 6865
122:              nop
                  sll          s6, a1, s1
                  blt          s3, s0, 144f
                  addi         s8, s1, 1044
                  sub          a2, s7, t3
                  beq          a4, t3, 136f
128:              addi         s8, s9, -1073
                  auipc        s7, 144512
                  srl          t0, a3, a4
                  and          t2, t1, t0
                  srai         t0, s9, 24
                  xor          s7, t0, s6
                  ori          s1, a3, -173
                  xor          a6, a1, a1
136:              slti         s11, t0, -1014
                  sra          s9, a6, a4
                  bgeu         a1, s0, 141f
                  and          s9, a0, a5
                  sra          a0, gp, t3
141:              beq          s4, s2, 144f
                  bne          t1, zero, 158f
                  slli         tp, a6, 25
144:              bltu         s5, a3, 164f
                  sll          s7, t0, gp
                  andi         s2, s4, -125
                  sub          s1, s10, t5
                  blt          a3, a4, 163f
                  sltiu        s4, a3, -67
                  bne          s4, s6, 162f
                  srl          gp, a5, a0
                  slt          s1, s3, a3
                  bgeu         t6, s8, 160f
                  addi         s1, a5, -645
                  and          a5, t3, tp
                  sltiu        s1, a4, 563
                  auipc        t0, 1021898
158:              and          t3, a3, t6
                  slli         a6, zero, 14
160:              bge          s8, t5, 174f
                  add          t6, t6, a6
162:              blt          s7, t2, 167f
163:              auipc        a5, 894816
164:              xor          a5, s7, a2
                  bltu         gp, s0, 180f
                  nop
167:              beq          s2, t3, 168f
168:              or           ra, t4, sp
                  lui          t0, 690614
                  sub          ra, t4, s4
                  andi         tp, a2, -961
                  bltu         a6, a6, 180f
                  sub          t1, a1, s6
174:              sltiu        s7, s7, -300
                  slt          a5, t6, t6
                  sltu         zero, a3, a2
                  slli         s4, s1, 28
                  add          t2, a7, s6
                  srai         s5, a7, 19
180:              add          s1, s10, tp
                  srli         a4, sp, 14
                  srai         a1, ra, 31
                  bgeu         t6, a4, 202f
                  slli         s7, t5, 31
                  lui          s5, 678469
                  beq          s5, a6, 199f
                  andi         t0, tp, -171
                  addi         s7, s10, 406
                  ori          t1, tp, 1894
                  sub          t3, a2, t5
                  addi         t1, tp, 55
                  blt          a0, t6, 212f
                  xori         t0, s6, 490
                  nop
                  bge          s7, s6, 199f
                  auipc        tp, 824453
                  sltu         s6, a5, s1
                  andi         s2, s7, 667
199:              slt          a6, a2, t1
                  bgeu         a5, t3, 220f
                  sub          s9, s10, t2
202:              andi         t1, a4, 1116
                  sra          s7, t4, a1
                  auipc        sp, 751489
                  srai         sp, s3, 16
                  xor          a7, t2, a6
                  sltiu        a3, a7, 384
                  beq          a1, a0, 225f
                  slli         zero, s10, 20
                  slli         tp, s7, 16
                  sltiu        s4, a3, -111
212:              lui          s4, 1010012
                  nop
                  ori          a1, ra, 883
                  or           a7, s1, s10
                  bltu         t0, a4, 236f
                  bltu         a3, t4, 229f
                  and          t5, s8, t5
                  ori          t3, t2, 667
220:              xor          s9, s5, a3
                  auipc        t5, 714654
                  xori         ra, s11, 990
                  slt          t0, ra, a2
                  auipc        ra, 661145
225:              lui          a1, 421322
                  addi         t6, s4, -905
                  srai         t1, s3, 11
                  sra          ra, s0, t4
229:              nop
                  add          ra, t0, s0
                  slti         a1, t5, 1659
                  xor          a5, s0, s9
                  slti         t0, a0, -1479
                  blt          s8, a5, 241f
                  and          s9, t1, s9
236:              srli         ra, s7, 31
                  bne          s0, a5, 252f
                  ori          a5, s9, 95
                  bgeu         t1, a0, 248f
                  nop
241:              blt          s4, s4, 245f
                  sltiu        s6, s10, -1875
                  xor          a6, t4, s9
                  sltiu        s8, a6, 1864
245:              sltiu        s8, t2, -1941
                  xori         a2, s10, -1399
                  srai         t5, s9, 2
248:              or           zero, t2, a4
                  sltu         a0, s0, s8
                  lui          a3, 56761
                  slli         sp, a4, 26
252:              blt          s11, s0, 266f
                  bge          a5, a3, 262f
                  lui          a1, 204018
                  bltu         s8, t3, 259f
                  slt          ra, zero, a1
                  slti         s2, s6, 530
                  srai         t5, s8, 5
259:              xori         a5, s5, 1328
                  srl          t0, s4, s5
                  xori         gp, a0, 1933
262:              srli         zero, t0, 29
                  sltiu        zero, t4, 1795
                  bgeu         gp, s1, 283f
                  sll          s10, a4, t2
266:              xori         a0, a2, 200
                  nop
                  or           a6, a3, ra
                  xori         s7, a3, 67
                  lui          a5, 442770
                  sltiu        s9, t2, 217
                  beq          a4, s5, 284f
                  bltu         ra, sp, 287f
                  sltu         a0, a3, s6
                  blt          a4, t0, 283f
                  slli         a1, sp, 13
                  srli         sp, s4, 23
                  add          tp, t4, s11
                  sll          t0, a4, s8
                  ori          s11, a3, 885
                  srai         t1, a0, 28
                  sltu         s9, s3, a6
283:              lui          s5, 588169
284:              srl          a4, s2, ra
                  auipc        s1, 933812
                  or           s5, ra, t4
287:              beq          zero, a3, 291f
                  slli         a5, zero, 9
                  auipc        s10, 252663
                  sub          a5, a2, a7
291:              slt          a5, a4, a0
                  nop
                  srli         a5, s10, 4
                  ori          s6, s3, -663
                  beq          zero, a4, 308f
                  sub          a5, s2, a5
                  addi         s11, s0, -1594
                  sra          s9, a4, ra
                  lui          s11, 267959
                  auipc        t5, 313400
                  bgeu         s10, t0, 316f
                  beq          s9, t0, 316f
                  sltiu        tp, a7, -376
                  or           sp, s7, a3
                  bgeu         a7, ra, 325f
                  nop
                  beq          s0, s5, 327f
308:              slli         a7, s9, 30
                  slti         t2, a4, 139
                  xor          t6, a5, t5
                  bne          a2, a5, 325f
                  addi         s7, t2, 586
                  sltiu        a3, a1, -629
                  nop
                  ori          s5, s6, 567
316:              lui          t5, 686171
                  or           t5, s11, t1
                  xor          a4, t2, s7
                  sub          a5, a7, a5
                  bltu         ra, zero, 332f
                  beq          s7, s4, 326f
                  slti         a5, s7, -457
                  sub          ra, a0, a0
                  ori          a3, a1, 113
325:              and          s4, s5, s9
326:              sltiu        s2, zero, 1206
327:              ori          a7, gp, -270
                  lui          a7, 144022
                  beq          s2, t6, 338f
                  auipc        t5, 913071
                  addi         s2, t2, -477
332:              beq          s0, s11, 339f
                  srai         a4, s6, 4
                  sub          zero, s11, a2
                  andi         sp, a7, 1292
                  srai         s6, t0, 8
                  ori          a6, gp, 1396
338:              xor          a5, s9, a1
339:              sra          sp, t3, s5
                  bltu         t2, s4, 344f
                  addi         a1, t0, -1069
                  srai         s2, s3, 16
                  sltu         ra, a1, s7
344:              sltu         s9, a6, gp
                  andi         s2, a4, 891
                  bgeu         s4, t5, 349f
                  bltu         s11, a1, 367f
                  sub          t6, t4, a2
349:              bgeu         a6, gp, 361f
                  bge          s8, a4, 365f
                  blt          s11, s4, 370f
                  andi         ra, s6, 943
                  auipc        s4, 434683
                  sra          zero, s4, zero
                  srai         s7, ra, 12
                  blt          s2, a5, 359f
                  sub          a0, s2, t1
                  auipc        a3, 278306
359:              slli         a4, s10, 5
                  andi         a7, s3, -322
361:              or           a0, t5, tp
                  sltu         t0, sp, s10
                  srl          ra, s10, s11
                  or           s8, a6, t2
365:              addi         s2, s8, 1885
                  sll          zero, a3, zero
367:              and          ra, a1, s7
                  xori         s5, ra, 1169
                  sltiu        ra, a1, 700
370:              nop
                  bne          s10, t6, 387f
                  xori         s1, t0, -1870
                  xor          a7, s1, t5
                  xor          s9, s5, s0
                  auipc        a3, 776984
                  auipc        a3, 99434
                  slli         t0, t1, 6
                  bltu         t6, t0, 382f
                  srl          s11, s9, a4
                  bltu         t0, s5, 381f
381:              slti         t3, s0, 1964
382:              addi         s7, s4, -1774
                  addi         s11, a1, -1632
                  lui          s9, 589403
                  bgeu         s10, s2, 404f
                  slli         s6, s7, 21
387:              addi         a6, a6, 1179
                  slli         a0, t1, 6
                  srai         s5, s5, 30
                  nop
                  sltiu        sp, zero, 914
                  slt          s4, t3, t6
                  xori         sp, s4, 398
                  sra          a5, a7, s2
                  sub          s5, zero, t3
                  slti         zero, s1, 581
                  and          t3, tp, a7
                  xor          gp, s6, sp
                  sra          t6, a1, sp
                  srli         t2, s10, 16
                  auipc        s10, 667636
                  xor          a4, a4, zero
                  sltu         t3, a3, t1
                  blt          s9, s9, sub_1_j3 #branch to jump instr
                  or           t0, a1, a7
                  andi         t2, tp, -1610
                  or           t2, gp, s8
                  sltu         t1, t0, t1
                  slli         s11, tp, 7
                  or           s11, a5, s6
                  sra          a1, tp, s9
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  sll          a3, s5, s3
                  beq          a3, a6, 410f
404:              beq          s9, s1, 419f
                  xor          tp, s0, a6
                  xori         t2, zero, -720
                  ori          a1, a5, 1872
                  srai         s9, s10, 10
                  addi         s9, t5, -381
410:              slti         s8, a3, 979
                  slt          zero, a0, zero
                  beq          gp, s6, 432f
                  sra          ra, sp, s9
                  sltu         t5, t1, s2
                  andi         t1, s4, -640
                  slli         s7, s6, 19
                  bge          t3, s0, 429f
                  nop
419:              xori         a3, a1, -1109
                  bge          a1, t2, 434f
                  beq          a7, a2, 430f
                  xori         t2, a7, -123
                  sub          a0, s10, a6
                  sll          s10, sp, s2
                  blt          a3, s11, 442f
                  and          zero, a1, a6
                  nop
                  bne          a7, t1, 436f
429:              ori          s6, t1, -1205
430:              srli         a0, ra, 24
                  auipc        s7, 655913
432:              slli         s8, s5, 14
                  nop
434:              or           t3, s5, a4
                  xor          t1, t3, sp
436:              srli         s7, a3, 14
                  or           s5, s8, a5
                  addi         s8, ra, -882
                  auipc        a7, 481471
                  xori         a4, sp, 697
                  slt          t1, s6, s5
442:              slli         s2, tp, 3
                  lui          t5, 889783
                  and          s5, ra, s9
                  auipc        a3, 995465
                  bne          a1, s10, 460f
                  slti         s11, ra, 589
                  or           s1, t0, a0
                  sub          s8, s5, s10
                  srl          a6, a1, t4
                  bne          t4, t2, 456f
                  bgeu         t6, a4, 468f
                  xor          zero, zero, a6
                  and          s10, t3, s8
                  xori         s5, t4, -1923
456:              or           a1, s11, s4
                  nop
                  lui          s7, 102252
                  slti         s11, s10, 347
460:              slli         s2, a6, 30
                  bge          a3, t1, 471f
                  sra          t6, a3, t3
                  la           a7, region_0+956 #start load_store_instr_stream_1
                  lbu          s2, -11(a7)
                  la           s10, region_0+1649 #start load_store_instr_stream_0
                  lw           s5, -12(a7)
                  lb           s4, -1127(s10)
                  la           a0, region_0+286 #start load_store_instr_stream_2
                  lb           a2, 647(a0)
                  lb           t1, 1193(a0)
                  lb           sp, -976(s10)
                  lhu          a4, -283(s10)
                  lbu          s9, 1386(a0)
                  lbu          s6, 0(a7)
                  lbu          a6, 1175(a0)
                  lhu          s5, 240(a0)
                  lhu          gp, 12(a7)
                  sw           t5, 16(a7)
                  lhu          a4, 1652(a0)
                  lb           ra, -7(a7)
                  sb           t3, -1018(s10)
                  lb           t3, -140(a0)
                  lbu          sp, 11(a7)
                  lbu          a5, -1074(s10)
                  lb           s7, 11(a7)
                  sw           a6, 770(a0) #end load_store_instr_stream_2
                  lb           s8, -1(a7)
                  lbu          t3, -1218(s10)
                  lbu          gp, -11(a7) #end load_store_instr_stream_1
                  lhu          s7, 81(s10) #end load_store_instr_stream_0
                  beq          t2, s5, 471f
                  sub          a1, s1, a6
                  bge          s7, a3, 471f
                  bge          s6, a2, 470f
                  srl          a0, a3, s0
468:              sra          gp, s6, s10
                  bgeu         t5, s10, 471f
470:              or           a5, s9, s2
471:              srli         a6, ra, 8
                  srli         t5, a0, 3
                  auipc        s2, 93360
                  lw           ra, 4(t4)
                  addi         t4, t4, 24
                  sll          zero, t0, a1
                  or           t1, s3, ra
                  sra          s8, a1, t6
                  add          s6, t4, zero
                  sub          t2, a2, a6
                  ori          a2, s4, 1060
884:              addi x28, x1, 1
884:              jalr x28, x28, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x16, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x16, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x16, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x16, x20, ecall_handler
                  li x20, 0x1
                  beq x16, x20, instr_fault_handler
                  li x20, 0x5
                  beq x16, x20, load_fault_handler
                  li x20, 0x7
                  beq x16, x20, store_fault_handler
                  li x20, 0xc
                  beq x16, x20, pt_fault_handler
                  li x20, 0xd
                  beq x16, x20, pt_fault_handler
                  li x20, 0xf
                  beq x16, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
