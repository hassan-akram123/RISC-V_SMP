.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xcb05c130
                  li x2, 0xc272c76f
                  li x3, 0xfc8a3a60
                  li x4, 0x0
                  li x6, 0xf35b6d7a
                  li x7, 0x94b9de65
                  li x8, 0xa63d51fb
                  li x10, 0x6
                  li x11, 0xf944d3df
                  li x12, 0xc83ae683
                  li x13, 0xf84f3ede
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0xe79564a1
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xfb6be816
                  li x25, 0x80000000
                  li x26, 0x4
                  li x27, 0x0
                  li x28, 0xf8309041
                  li x29, 0x80000000
                  li x30, 0xfb50e6c4
                  li x31, 0xd4688d43
                  la x5, user_stack_end
main:             nop
                  la           t6, sub_3
                  srai         a5, a0, 14
                  sra          gp, s0, gp
                  and          a7, t2, a3
                  sltiu        a2, a6, -1633
                  addi         t6, t6, -520
                  lui          a1, 834250
                  slli         a5, t1, 27
main_j2:          jalr         t1, t6, 520 #jump main -> sub_3
                  la           t1, sub_1
                  lui          s3, 796573
                  addi         s0, a3, -1139
                  addi         t1, t1, -891
                  sll          a6, a5, s4
                  sll          a0, ra, a0
                  slli         a5, s11, 23
                  sll          a7, s11, s5
main_j3:          jalr         t1, t1, 891 #jump main -> sub_1
                  la           s7, sub_1
                  sll          sp, t2, s5
                  nop
                  sltu         s6, t0, s1
                  addi         s7, s7, -197
                  sltu         a0, s0, gp
                  bne          a0, ra, main_j4 #branch to jump instr
                  srai         t4, s0, 1
main_j4:          jalr         t1, s7, 198 #jump main -> sub_1
                  la           sp, region_1+76 #start riscv_load_store_rand_instr_stream_0
                  sh           a0, 10(sp)
                  lb           t1, 14(sp)
                  sub          s3, a4, a6
                  sb           a3, -1(sp)
                  sw           t3, -4(sp)
                  sll          s10, s2, s6
                  sub          t5, a1, t0
                  lw           a1, -4(sp)
                  sub          t2, s3, t6
                  sh           a3, 0(sp)
                  add          s4, ra, a1
                  sltiu        t5, s11, -514
                  ori          a2, t2, -802
                  lb           t5, -15(sp)
                  srl          a4, s5, a1
                  lbu          s4, -12(sp)
                  sb           s9, -14(sp)
                  lw           a3, -16(sp)
                  lb           a2, 2(sp)
                  lh           t3, 0(sp)
                  sh           t1, 12(sp)
                  lbu          a4, 8(sp)
                  srl          ra, s6, t3
                  sltu         t6, s11, s10
                  lbu          tp, 6(sp)
                  lb           a5, 13(sp)
                  lbu          t2, 16(sp)
                  srai         s11, a5, 30
                  lb           zero, -3(sp)
                  slti         t2, t1, -942
                  sltiu        s0, a2, -375
                  sltiu        s7, s11, -1241
                  lh           s2, -6(sp)
                  andi         gp, ra, 1900
                  lbu          s5, 14(sp)
                  lb           tp, 7(sp)
                  lb           t2, 1(sp)
                  lb           zero, -3(sp)
                  lb           a6, 13(sp)
                  sb           s2, 9(sp)
                  lbu          zero, -7(sp) #end riscv_load_store_rand_instr_stream_0
                  srai         a4, zero, 31
                  la           t5, sub_2
                  sub          gp, zero, tp
                  sll          s8, a2, tp
                  sltu         s0, a4, s8
                  sll          a6, s6, a6
                  slt          tp, a3, t4
                  addi         t5, t5, 477
                  and          a7, t6, a2
                  add          zero, a0, a0
                  bne          t0, a3, main_j1 #branch to jump instr
                  slt          a6, a0, a0
                  xor          t1, s3, ra
main_j1:          jalr         t1, t5, -477 #jump main -> sub_2
                  ori          sp, s7, 1310
                  sub          a4, sp, tp
                  sub          t1, t4, t5
                  sltiu        zero, a0, 274
                  bltu         s1, sp, 9f
                  sra          s7, a2, t5
                  srli         t5, s6, 1
                  or           zero, s9, s9
9:                lui          s8, 474693
                  sll          gp, a7, a7
                  bltu         a3, s7, 12f
12:               andi         s2, s7, -1943
                  bgeu         a1, t2, 15f
                  bge          s7, tp, 15f
15:               sra          a7, s11, a2
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            srai         a4, s4, 27
                  or           a1, a1, a3
                  sltu         zero, t5, s11
                  slt          a2, s4, a4
                  addi         t0, t0, -52
                  slti         a3, a2, -1235
                  or           ra, s2, t0
                  and          gp, ra, s9
                  sw           t1, 4(t0)
                  sub          s7, s5, s4
                  la           sp, region_1+825 #start riscv_load_store_rand_instr_stream_12
                  lb           t6, -34(sp)
                  lb           s4, -36(sp)
                  slt          s5, s7, t3
                  xor          s4, s8, gp
                  lui          s5, 113566
                  andi         a1, a6, 1166
                  lbu          a6, 44(sp)
                  sub          t5, s1, a1
                  and          s8, t6, t1
                  sltiu        t6, s5, 891
                  sub          s6, s11, s4
                  addi         s10, t0, 1307
                  xori         s4, s9, -1715
                  sw           s9, -13(sp)
                  sw           a4, -41(sp)
                  sb           t4, -35(sp)
                  lbu          a7, -55(sp)
                  andi         zero, s9, -422
                  slli         a4, s0, 21
                  sh           a3, 9(sp)
                  sb           s10, -5(sp)
                  xori         s5, s8, -414
                  lbu          a0, -3(sp)
                  sra          t2, s11, s6
                  lw           a6, 19(sp)
                  addi         a1, s1, -354
                  xori         t3, s2, 1011
                  srl          gp, zero, sp
                  andi         t3, s0, -398
                  slt          t4, s11, t2
                  lb           s3, -28(sp)
                  or           t2, sp, a3
                  lb           t1, -15(sp)
                  sh           a5, 13(sp) #end riscv_load_store_rand_instr_stream_12
                  la           s10, region_1+906 #start riscv_load_store_rand_instr_stream_3
                  or           s7, ra, s2
                  slti         sp, t0, 1583
                  auipc        t1, 32703
                  sltu         a2, t1, a4
                  addi         s5, a5, 1997
                  sra          t5, t2, s6
                  and          tp, s2, gp
                  sw           s8, 6(s10)
                  sh           a2, -8(s10)
                  sb           s6, -7(s10)
                  slli         tp, t3, 31
                  add          a1, s11, s7
                  sll          tp, t3, a1
                  lbu          t6, -15(s10)
                  sb           a2, -9(s10)
                  sltu         sp, t4, t1
                  lb           zero, -4(s10)
                  srli         tp, s9, 2
                  srai         a1, a1, 13
                  sb           t1, -3(s10)
                  srai         t6, s2, 20
                  lb           a0, -16(s10)
                  lbu          a0, -9(s10)
                  lb           ra, -6(s10)
                  sltiu        t3, a1, -324
                  srl          s5, tp, s9
                  sw           s8, 6(s10)
                  lb           a0, 3(s10)
                  slt          a6, s6, sp
                  ori          t2, t0, -531
                  lb           t3, 16(s10)
                  sh           a5, -4(s10)
                  nop
                  sb           s6, 15(s10)
                  sb           s1, 1(s10) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_0+577 #start riscv_load_store_rand_instr_stream_14
                  lb           s3, -450(a7)
                  sh           a4, -353(a7)
                  lh           t3, 1165(a7)
                  slti         a1, t0, -642
                  sb           s9, 224(a7)
                  or           t1, t6, s10
                  add          s10, a0, s6
                  sh           a6, 1325(a7)
                  lb           zero, 46(a7)
                  lb           s2, 1352(a7)
                  lhu          s7, 1337(a7)
                  sb           zero, 1052(a7)
                  lb           s8, -456(a7)
                  lb           s6, 154(a7)
                  ori          a5, a1, -1672
                  slli         s2, t1, 8
                  sw           t3, -345(a7)
                  lhu          s7, 859(a7)
                  sb           t3, -41(a7)
                  sw           tp, -161(a7)
                  sh           s6, 73(a7)
                  ori          sp, t3, 405
                  lb           gp, 1274(a7)
                  lb           a4, -330(a7)
                  nop
                  srl          tp, s10, a3
                  lb           s5, 512(a7)
                  sb           s0, 103(a7)
                  lb           s0, 310(a7)
                  lh           t2, 301(a7)
                  sub          a3, s11, a4
                  lbu          t2, -315(a7)
                  xori         t6, a5, -1963
                  lbu          s6, 1101(a7)
                  slli         s4, sp, 19
                  sh           s10, 399(a7)
                  lbu          s2, -421(a7)
                  sb           t3, 996(a7)
                  lhu          t3, 865(a7)
                  slli         s2, s6, 14
                  sub          a0, t0, s9
                  lhu          a2, 431(a7)
                  xor          s0, s10, a3
                  and          s7, s9, a1
                  lb           t5, 943(a7) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_0+386 #start riscv_load_store_rand_instr_stream_6
                  addi         gp, t3, -1716
                  sra          s0, s2, s0
                  lb           t2, 9(sp)
                  slti         t6, a6, 1272
                  auipc        t3, 658960
                  lui          ra, 747411
                  sll          s7, s2, t1
                  lb           ra, -3(sp)
                  lh           a4, -14(sp)
                  xori         s5, t2, -460
                  xor          a7, s0, sp
                  lhu          a5, 6(sp)
                  lbu          t5, -7(sp)
                  slli         s8, t1, 2
                  add          t1, tp, s11
                  lb           a4, -8(sp)
                  lbu          a0, 11(sp)
                  srli         t1, t4, 22
                  sw           s4, 2(sp)
                  andi         s7, s4, 902
                  lbu          s7, 15(sp)
                  lbu          tp, 15(sp)
                  auipc        a5, 697038
                  nop
                  lui          s6, 720264
                  nop
                  lbu          a4, -6(sp)
                  lb           a0, -11(sp)
                  lbu          t5, -9(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1824 #start riscv_load_store_rand_instr_stream_9
                  add          s0, s0, s11
                  sh           s7, 16(sp)
                  lb           t5, 51(sp)
                  lb           s5, 31(sp)
                  lui          zero, 572248
                  andi         t4, s9, 1844
                  lh           ra, 22(sp)
                  xori         s2, s3, -498
                  sb           t6, -27(sp)
                  add          t1, s3, a2
                  or           s7, t6, a2
                  add          a5, s0, s8
                  auipc        a1, 153096
                  slli         t5, sp, 18
                  lb           a4, -19(sp)
                  lbu          s2, -31(sp)
                  addi         t4, t5, -126
                  sb           a7, -45(sp)
                  srl          s5, s0, s4
                  sltu         a5, gp, t2
                  lbu          s11, -1(sp)
                  add          s11, a5, a2
                  andi         t4, s8, 1303
                  lbu          a7, -25(sp)
                  sb           s2, -50(sp)
                  slti         a1, s1, 96
                  lb           a2, 37(sp)
                  sub          s7, sp, a5
                  sb           a0, -33(sp)
                  srai         a3, sp, 4
                  lbu          zero, -61(sp)
                  lb           a0, 17(sp)
                  sb           sp, 18(sp)
                  lbu          t2, -7(sp)
                  sb           a4, 18(sp)
                  addi         s6, s0, -1139
                  lbu          t5, 19(sp)
                  slti         s4, s5, 1288
                  sw           a3, -24(sp)
                  sb           s9, -25(sp)
                  lbu          t4, -13(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+842 #start riscv_load_store_rand_instr_stream_4
                  srl          t4, ra, s9
                  slti         a7, t0, 670
                  lh           s7, 16(sp)
                  sb           a6, 28(sp)
                  sltu         a4, s11, s0
                  sub          s8, a1, s5
                  lb           t6, 89(sp)
                  sb           a0, 60(sp)
                  and          s0, s9, t3
                  sltu         t4, ra, s9
                  lui          s7, 924738
                  lbu          t3, -187(sp)
                  or           t3, s0, a3
                  lh           gp, -144(sp)
                  nop
                  sb           t0, 55(sp)
                  sub          s8, t6, gp
                  andi         a1, t1, -434
                  add          gp, s7, t5
                  srai         a7, a0, 5
                  lh           a5, -188(sp)
                  lui          gp, 133786
                  auipc        t6, 837351
                  srai         s4, zero, 5
                  lbu          a5, 209(sp)
                  sll          a3, a5, s9
                  xori         t6, a3, 352
                  sltiu        t2, t6, 1253
                  sb           a6, -6(sp)
                  lhu          s6, -116(sp)
                  slli         a4, t0, 28
                  lh           s2, -112(sp)
                  sb           tp, 39(sp)
                  addi         gp, zero, 217
                  sub          t1, a3, s10
                  lb           a6, 247(sp)
                  srai         s10, a3, 28
                  and          s7, a7, s2
                  lbu          a3, -240(sp)
                  slli         a0, t5, 10
                  sub          t6, ra, a5
                  sltiu        s3, s1, -271
                  sltu         s5, zero, s6
                  sb           a2, -161(sp)
                  sh           s3, -170(sp)
                  lbu          s3, -228(sp)
                  lbu          a0, -107(sp)
                  lbu          s8, -226(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1947 #start riscv_load_store_rand_instr_stream_8
                  sh           t6, -29(sp)
                  lb           s4, 51(sp)
                  lb           a1, 11(sp)
                  auipc        s4, 72250
                  and          gp, t3, a3
                  sb           sp, -56(sp)
                  sb           t2, -43(sp)
                  sh           t4, 25(sp)
                  add          s11, tp, t2
                  sltiu        gp, a7, -1942
                  lb           s7, -38(sp)
                  lbu          a2, 42(sp)
                  andi         t2, t2, -1692
                  lbu          s7, -10(sp)
                  and          s0, s0, s3
                  addi         a0, s8, 287
                  add          a4, a6, s4
                  lb           ra, 4(sp)
                  lhu          a3, -23(sp)
                  slti         s10, sp, -929
                  auipc        t6, 599059
                  sb           s7, -36(sp)
                  sltiu        s2, s5, 1236
                  andi         t4, t4, 2028
                  srai         s11, sp, 0
                  sub          t6, tp, s2
                  lbu          zero, -1(sp)
                  sltu         zero, s9, a1
                  lhu          a2, 39(sp)
                  lbu          s4, -49(sp)
                  srl          t5, s3, zero
                  addi         s7, ra, 265
                  add          t2, s6, s9
                  lbu          a0, 34(sp)
                  sb           a6, 4(sp)
                  lb           a3, 46(sp)
                  xor          s3, a0, s4
                  slli         s3, s11, 7
                  auipc        s6, 818511
                  lb           t3, -16(sp)
                  lb           gp, 12(sp)
                  slti         tp, a3, 1287
                  srli         a1, a0, 26
                  sb           a7, 14(sp)
                  lui          a3, 752537
                  sub          a2, t3, a1
                  ori          a6, s0, -935
                  sltiu        ra, s6, -1155
                  lbu          s2, -50(sp)
                  sb           tp, 50(sp)
                  lbu          s4, 16(sp)
                  lb           s2, -16(sp)
                  addi         a1, t5, 538
                  lb           t5, -2(sp)
                  addi         a6, s1, 1271
                  lbu          s6, -20(sp)
                  lbu          t1, 35(sp)
                  xor          t3, tp, s0
                  lb           s2, -44(sp)
                  lbu          t5, -62(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+1794 #start riscv_load_store_rand_instr_stream_7
                  lbu          t6, -52(sp)
                  lbu          s11, -62(sp)
                  lui          t5, 702879
                  xor          ra, a3, a1
                  lh           s7, 46(sp)
                  srl          a4, s10, s4
                  sb           t6, -16(sp)
                  nop
                  nop
                  nop
                  sra          s2, a6, tp
                  auipc        a4, 763553
                  srl          s11, s0, t5
                  lh           zero, -36(sp)
                  srli         zero, t6, 29
                  lb           t3, 43(sp)
                  sb           s6, 27(sp)
                  sll          t3, s7, t4
                  sltiu        s8, s9, -1394
                  auipc        s5, 965320
                  and          s6, s4, t3
                  sb           sp, 33(sp)
                  sw           sp, 34(sp)
                  srai         s4, a7, 25
                  lbu          s0, -57(sp)
                  sb           s5, -48(sp)
                  sra          zero, t5, s11
                  and          t4, t5, a3
                  lbu          t5, -28(sp)
                  lb           t1, -61(sp)
                  lbu          a6, 3(sp)
                  lbu          a5, 27(sp)
                  sb           a1, -51(sp)
                  sb           t1, -9(sp)
                  slli         t5, s6, 2
                  nop
                  slti         t1, t2, 997
                  xor          a5, a2, s2
                  sb           a7, -59(sp)
                  lui          s8, 183172
                  sll          ra, gp, s11
                  lb           s0, 14(sp)
                  sb           a7, 7(sp)
                  andi         s6, ra, 676
                  lb           s6, 61(sp)
                  lb           t3, 53(sp)
                  auipc        s5, 592484
                  ori          tp, t5, -544
                  lhu          s11, -12(sp)
                  nop
                  sb           a3, 64(sp) #end riscv_load_store_rand_instr_stream_7
                  beq          t6, a3, 2f
                  bge          s6, t2, 16f
2:                ori          tp, s8, -1615
                  addi         a4, sp, 1410
                  bgeu         tp, a0, 17f
                  add          s0, a2, a0
                  sra          s7, t5, tp
                  sra          a6, s9, t2
                  sltiu        s3, tp, -749
                  srai         t1, a7, 15
                  lui          sp, 620652
                  slti         sp, tp, -782
                  srl          a5, s0, s3
                  and          s6, s9, a7
                  bge          t0, a5, 16f
                  srai         t3, a4, 20
16:               xor          t4, s8, s3
17:               sltiu        a3, s1, -1981
                  sub          a5, a3, gp
                  andi         s3, a5, 459
                  and          s6, a3, s5
                  bltu         a2, zero, 29f
                  sltiu        t4, t1, 524
                  slli         tp, t1, 31
                  srli         sp, t4, 0
                  sub          s6, s10, a5
                  xor          t6, s5, a3
                  sll          a4, t2, s0
                  bltu         a7, t6, 30f
29:               lui          t2, 779402
30:               srai         a4, t5, 11
                  nop
                  sub          gp, s9, t3
                  and          a1, s7, a5
                  bne          gp, s9, 42f
                  nop
                  srli         s11, t3, 25
                  bgeu         a5, t3, 43f
                  sub          t3, s3, s9
                  srli         sp, t3, 28
                  slli         s6, a7, 0
                  sll          a2, s3, s11
42:               srli         s8, a0, 29
43:               sra          sp, zero, t0
                  xori         sp, s11, -1585
                  xori         gp, s3, -524
                  bge          a4, s4, 57f
                  nop
                  bgeu         s11, s6, 60f
                  slti         s0, a0, -642
                  sll          t4, s3, s4
                  bgeu         zero, s0, 60f
                  srl          a5, s7, t4
                  la           t5, region_1+1179 #start riscv_load_store_rand_instr_stream_10
                  srli         s11, s5, 29
                  slti         a4, t2, 437
                  slti         s6, a4, 379
                  andi         s2, t3, 1797
                  sll          t6, tp, a7
                  andi         t4, a0, 614
                  srl          s8, s8, a6
                  sltiu        s10, s10, -1519
                  srli         ra, s10, 17
                  slti         t3, ra, -1520
                  lui          a7, 561730
                  sh           t6, 247(t5)
                  lbu          s10, 88(t5)
                  srli         a0, s6, 1
                  lbu          zero, 130(t5)
                  addi         a3, s9, 75
                  lui          s10, 77266
                  slti         s4, s5, -58
                  sltiu        t6, tp, 380
                  lh           s11, -135(t5)
                  sw           s1, -63(t5)
                  sll          a0, zero, s0
                  lb           s2, -166(t5)
                  lb           zero, 147(t5)
                  srl          s11, s0, tp
                  lbu          t4, 127(t5)
                  and          a3, a5, t2
                  srl          t2, t1, s7
                  sra          sp, t3, s5
                  sub          a4, s10, s4
                  andi         s8, a1, 1807
                  srai         a5, a7, 7
                  srai         s10, a3, 31
                  addi         t3, t1, -1895
                  sb           t3, -67(t5)
                  auipc        s10, 257900
                  sub          s4, t5, a3
                  lbu          s2, -144(t5)
                  sub          t4, t6, a6
                  slti         s8, t0, 282
                  lbu          a0, 32(t5) #end riscv_load_store_rand_instr_stream_10
                  addi         t3, s1, 956
                  beq          a6, s3, 55f
55:               add          s4, a5, t6
                  sll          s7, gp, t2
57:               sltiu        s11, gp, 1803
                  sltiu        s10, s11, -1929
                  srl          s11, s11, a7
60:               add          s10, sp, t4
                  or           s5, s9, gp
                  sub          s4, t0, s11
                  lui          gp, 1007744
                  slt          a3, s6, tp
                  andi         t5, s6, 22
                  add          a7, a6, gp
                  add          a0, a3, t4
                  bgeu         s10, a4, 69f
69:               lui          a6, 1012835
                  nop
                  lui          s10, 945726
                  sltu         s7, t0, s0
                  ori          s8, a7, -494
                  sub          a1, s7, s5
                  addi         s11, s7, -439
                  sltiu        t2, ra, -813
                  sra          s3, s5, a6
                  bge          ra, t6, 80f
                  lui          a1, 449605
80:               auipc        s3, 659145
                  nop
                  bltu         s9, t6, 100f
                  sltu         s7, s3, a5
                  ori          t5, tp, 1593
                  ori          s10, a0, -1246
                  and          a7, zero, zero
                  srl          t3, a4, t3
                  nop
                  sub          t4, a5, a7
                  srai         ra, a3, 6
                  beq          s9, s8, 108f
                  bgeu         a5, s8, 108f
                  bne          t0, a7, 106f
                  bltu         s6, a3, 97f
                  and          s3, s1, sp
                  or           s0, sp, s1
97:               srli         zero, s6, 28
                  addi         ra, s2, -1335
                  sll          a6, t4, a1
100:              ori          s2, t2, -326
                  blt          a4, s9, 120f
                  bgeu         a1, sp, 119f
                  sltu         tp, zero, s8
                  slt          s3, tp, t2
                  sltiu        gp, a2, -381
106:              blt          zero, t6, 107f
107:              or           s5, s6, a6
108:              srl          s5, sp, s0
                  sub          s6, s0, a3
                  xori         sp, a1, 34
                  sltiu        s8, s10, 963
                  xori         t4, a1, -1531
                  xori         t1, gp, 1699
                  nop
                  srl          s11, t0, a5
                  and          t5, s8, t1
                  srai         a5, s10, 21
                  and          t5, a0, t2
119:              sltiu        s6, tp, 1778
120:              beq          t1, s5, 129f
                  srli         ra, t2, 24
                  xor          s10, gp, t6
                  nop
                  lui          a7, 749549
                  add          zero, s2, a4
                  bge          a6, s8, 139f
                  bge          s9, a6, 141f
                  ori          s8, a1, 1894
129:              bgeu         a3, t6, 132f
                  sll          sp, t1, a2
                  sltu         s0, t3, a4
132:              bge          s11, a5, 133f
133:              slli         t4, a5, 26
                  slt          s11, s6, t1
                  bgeu         s3, s9, 153f
                  beq          s3, t5, 144f
                  ori          s7, tp, 280
                  bltu         a6, a7, 151f
139:              bne          s4, s11, 158f
                  srli         a6, s10, 21
141:              or           gp, s3, s8
                  bgeu         s9, s1, 154f
                  addi         a4, t0, 422
144:              srli         a4, t2, 2
                  slli         t4, a7, 24
                  auipc        a2, 189309
                  xor          gp, a2, s8
                  sub          gp, s4, a1
                  srl          s3, t6, gp
                  sub          a4, sp, t3
151:              sub          s2, t6, tp
                  srai         t5, s10, 20
153:              sll          s5, a0, sp
154:              auipc        a6, 266065
                  beq          a2, t0, 171f
                  and          s8, a4, t1
                  srli         t5, a7, 17
158:              xor          a1, a4, a4
                  beq          t0, t6, 168f
                  srli         a5, s0, 26
                  ori          gp, s1, 339
                  nop
                  add          zero, a6, s9
                  bge          s0, s1, 166f
                  and          a6, t6, tp
166:              andi         a3, s8, -1933
                  ori          zero, a3, -27
168:              sub          s7, s0, zero
                  sltiu        s10, s10, 1023
                  slli         s6, t1, 12
171:              ori          s8, a7, -1202
                  auipc        s2, 515704
                  bltu         s8, s1, 174f
174:              bgeu         a7, t5, 176f
                  bltu         zero, s1, 176f
176:              bltu         s4, a5, 193f
                  srli         s11, zero, 18
                  bgeu         s4, t5, 191f
                  srl          ra, s7, s6
                  lui          a5, 49900
                  ori          a2, s0, -988
                  slt          s11, s2, gp
                  srli         ra, s3, 8
                  xor          s0, a2, t1
                  lui          s8, 902451
                  or           s2, s7, a7
                  and          t1, s11, zero
                  srl          a3, ra, ra
                  beq          s8, a2, 192f
                  slli         s7, t0, 31
191:              bgeu         t5, s7, 202f
192:              sltiu        s10, s0, -1871
193:              nop
                  beq          sp, tp, 212f
                  auipc        s6, 475676
                  and          a7, s1, a5
                  sltiu        a0, s11, 52
                  and          a0, sp, t5
                  bne          s9, s0, 201f
                  add          t3, ra, s8
201:              sub          s4, s1, s6
202:              sub          a1, a5, a4
                  xor          a2, t4, a7
                  bgeu         t3, t5, 217f
                  bltu         s10, s5, 206f
206:              sra          a4, tp, t2
                  blt          s3, t0, 213f
                  sll          s0, s11, t0
                  bne          s5, s0, 227f
                  srl          s4, s6, a1
                  sub          t2, s0, s4
212:              and          t6, a3, sp
213:              srl          a4, ra, tp
                  auipc        a5, 370768
                  sll          s0, s11, a3
                  bne          t4, t1, 230f
217:              srai         a3, s6, 19
                  blt          a3, s8, 219f
219:              sltiu        a1, zero, 1102
                  sra          s7, a2, s5
                  bne          s4, a5, 229f
                  add          t3, s9, s4
                  or           a1, gp, s4
                  slli         a3, t2, 30
                  addi         t6, s0, -1926
                  andi         a0, ra, -1450
227:              beq          s8, a0, 229f
                  addi         t2, s0, 297
229:              slli         s11, s2, 18
230:              bge          t3, t6, 239f
                  lui          s10, 318924
                  bgeu         sp, a0, 235f
                  slti         zero, s6, 1007
                  nop
235:              sll          s11, s5, s6
                  sra          a3, t3, t2
                  sll          a4, t4, s6
                  srai         s2, s3, 27
239:              ori          t4, a6, 819
                  blt          zero, t2, 248f
                  bge          t2, s3, 254f
                  sltu         a7, sp, ra
                  blt          a0, tp, 258f
                  ori          s11, t1, -1705
                  ori          s8, s8, -70
                  sub          a0, t6, s2
                  sltu         s5, tp, gp
248:              slli         sp, sp, 18
                  sra          gp, t3, tp
                  srl          t6, s6, s8
                  and          s10, ra, tp
                  sll          a3, t1, t1
                  sll          a1, s10, s2
254:              sub          t5, t5, s1
                  xori         a3, s0, -5
                  slti         a2, t0, -268
                  ori          a0, s10, -629
258:              bgeu         s5, t1, 275f
                  lui          t5, 792158
                  ori          s6, s10, -1515
                  bgeu         a3, a4, 274f
                  ori          ra, s6, 650
                  auipc        a6, 94663
                  sra          t5, s8, a2
                  lui          gp, 886681
                  sub          tp, s8, s0
                  or           tp, s5, t5
                  sra          gp, a1, t1
                  bgeu         s8, t6, 277f
                  auipc        t3, 85089
                  ori          t2, s7, 1382
                  auipc        s10, 886260
                  sra          sp, s0, s6
274:              xor          a3, s3, s9
275:              bne          a3, a0, 290f
                  bge          a0, ra, 279f
277:              blt          t2, s0, 290f
                  nop
279:              sltu         a0, a4, t6
                  lui          s0, 541267
                  srl          s3, a6, a1
                  slti         tp, sp, -1338
                  nop
                  srli         s10, s3, 14
                  lui          s5, 705029
                  slti         a6, gp, 578
                  sra          t5, s5, zero
                  sltiu        t5, s8, 730
                  bne          a5, a4, 305f
290:              slt          a2, t0, s4
                  ori          s0, s6, -727
                  srai         gp, gp, 1
                  beq          a6, s8, 294f
294:              sll          s10, s11, t6
                  la           t4, region_1+1302 #start riscv_load_store_rand_instr_stream_0
                  lbu          s0, 51(t4)
                  srli         a7, gp, 10
                  sh           s11, -2(t4)
                  lh           a1, 22(t4)
                  sltiu        s2, a6, -1207
                  sb           a7, 7(t4)
                  srl          a0, s10, a3
                  srli         sp, t4, 17
                  lb           zero, 3(t4)
                  sb           a2, 7(t4)
                  slli         a2, s4, 23
                  sltu         s8, sp, s8
                  lb           t2, -25(t4)
                  lhu          a6, 38(t4)
                  slt          a1, a6, s10
                  sb           t6, -23(t4)
                  sll          t1, t5, s8
                  slli         gp, t3, 27
                  slt          t1, a2, s4
                  lb           s0, 21(t4)
                  or           s7, a2, a1
                  xor          t3, tp, s9
                  sb           sp, -51(t4)
                  nop
                  slt          s7, gp, s0
                  lh           a7, 56(t4)
                  lh           t3, 52(t4)
                  lb           tp, -17(t4)
                  xori         ra, s6, -289
                  lbu          s10, 5(t4)
                  sh           a2, 20(t4)
                  slti         t6, s6, 132
                  addi         t1, s4, 1808
                  lhu          s6, 26(t4)
                  lbu          zero, -37(t4)
                  lb           t3, -37(t4)
                  sb           s6, -63(t4)
                  lb           s7, -2(t4)
                  andi         a0, a7, -487
                  lbu          a2, 25(t4)
                  lh           a1, 40(t4)
                  sub          s4, s9, ra
                  slti         s6, s9, 1506
                  lbu          t1, 4(t4)
                  sra          t6, a6, tp
                  auipc        t1, 1040703
                  sb           t6, 61(t4)
                  lbu          a2, 48(t4)
                  sw           s5, 34(t4)
                  lb           a6, 49(t4)
                  sltu         t2, zero, s1
                  lbu          gp, -60(t4) #end riscv_load_store_rand_instr_stream_0
                  srli         t3, a0, 0
                  auipc        s2, 612092
                  bne          t4, a0, 311f
                  bltu         t4, gp, 315f
                  sltiu        t1, ra, -785
                  add          a5, gp, s7
                  srai         a2, tp, 13
                  sra          a3, a7, t0
                  sub          a3, s1, s4
                  bne          zero, a6, 306f
305:              slti         a2, t3, -1807
306:              sltu         a1, s4, a2
                  srl          a0, a3, s6
                  srli         gp, a1, 20
                  slti         t4, sp, 1725
                  blt          s11, s10, 313f
311:              xori         t3, a0, 666
                  bge          a6, s3, 330f
313:              slt          s0, gp, s3
                  nop
315:              slt          s10, s10, t3
                  srai         t5, t2, 19
                  and          a2, t1, a0
                  slti         s6, ra, 312
                  lui          gp, 478004
                  sltu         s10, a5, t3
                  sra          a6, a1, t1
                  srai         t4, s11, 17
                  nop
                  and          a3, sp, s3
                  blt          zero, t2, 334f
                  beq          zero, s10, 328f
                  or           t6, t1, s3
328:              sub          tp, t2, t6
                  xor          a7, a5, t4
330:              xori         t2, a6, 1519
                  addi         a5, a4, 738
                  srl          zero, a3, a7
                  and          sp, a5, t0
334:              slt          s8, t6, ra
                  srli         s7, tp, 26
                  srl          a7, s8, tp
                  xor          sp, ra, tp
                  sub          a4, a0, sp
                  add          t1, s6, s9
                  blt          t6, ra, 348f
                  blt          s1, a0, 342f
342:              bgeu         s0, s2, 360f
                  blt          s1, s0, 354f
                  srli         tp, t5, 29
                  srli         gp, a1, 19
                  bltu         ra, t0, 352f
                  andi         a6, s11, 554
348:              xori         a7, a4, 793
                  srli         a3, a7, 31
                  beq          s10, s10, 358f
                  bgeu         a4, a4, 353f
352:              slt          s10, t0, s9
353:              srai         a3, t0, 6
354:              xori         a0, a6, 965
                  ori          s4, t1, -1522
                  lui          s0, 297390
                  addi         gp, t0, -1895
358:              lui          a0, 57941
                  andi         a6, a3, -389
360:              ori          a2, s0, 926
                  beq          s4, t4, 363f
                  and          ra, a3, t0
363:              slt          s3, a3, s6
                  sll          a6, a7, a5
                  sltu         zero, s8, s2
                  slti         t1, t3, 1506
                  bne          tp, a7, 380f
                  srl          s7, s10, a5
                  bltu         s6, a3, 378f
                  or           t1, a2, a6
                  slti         a1, zero, -1810
                  nop
                  sra          a3, s1, a7
                  srli         zero, t1, 20
                  add          s2, s11, a5
                  sra          s8, a0, s3
                  add          s11, s7, s1
378:              slti         s4, s2, -1174
                  xori         s0, s5, -1795
380:              srl          t3, t1, s10
                  nop
                  srai         s0, s3, 18
                  add          s11, t4, tp
                  lui          a1, 594088
                  blt          gp, sp, 402f
                  blt          s6, s5, 387f
387:              blt          s3, a7, 400f
                  sltu         a1, t6, s9
                  or           ra, a7, a6
                  xori         sp, sp, -941
                  addi         gp, s6, 629
                  sltiu        s7, s6, -241
                  lui          t6, 145021
                  sltu         s0, tp, a5
                  lui          s11, 965613
                  xori         zero, s3, -956
                  andi         t5, s9, -809
                  sltu         t4, s6, s4
                  lui          a0, 233658
400:              lui          a4, 725660
                  sltu         ra, s4, t0
402:              and          s3, s1, t3
                  auipc        t2, 917293
                  slti         s10, sp, 1899
                  beq          s7, a0, 417f
                  or           sp, a4, zero
                  bne          a4, a1, 415f
                  sra          t5, zero, a1
                  or           s7, s5, sp
                  andi         s5, ra, 207
                  bge          ra, s0, 430f
                  bge          a4, a4, 425f
                  sltiu        s2, t5, 1249
                  or           t4, s7, a2
415:              srl          t2, s2, a5
                  sltiu        t2, a3, -290
417:              bge          t2, zero, 418f
418:              sltu         s0, a1, s1
                  slt          a4, t6, t3
                  lui          s8, 465330
                  and          t1, a3, a1
                  sltu         s2, gp, t2
                  sra          s6, t5, sp
                  lui          t1, 698458
425:              sltiu        tp, s8, -522
                  beq          t6, a3, 427f
427:              blt          a5, a7, 436f
                  and          t4, a0, s0
                  sltu         zero, s0, a6
430:              andi         gp, a0, -132
                  blt          s10, a7, 449f
                  blt          zero, s5, 440f
                  sra          t5, a6, s8
                  or           s7, s5, s2
                  bge          t2, s11, 438f
436:              nop
                  bge          s3, a6, 439f
438:              nop
439:              slt          s2, s6, s4
440:              slt          a1, gp, t3
                  sll          s0, a4, a2
                  nop
                  xor          a4, zero, tp
                  ori          s5, tp, -1357
                  addi         t6, s9, 67
                  addi         t3, s2, 1209
                  beq          sp, a1, 459f
                  auipc        sp, 227358
449:              bge          s11, a6, 451f
                  blt          a1, t3, 463f
451:              and          s7, s3, a4
                  ori          a0, a6, -659
                  sll          s10, s5, a0
                  srli         a4, t4, 9
                  bne          s4, s7, 468f
                  ori          a2, a4, -752
                  nop
                  sub          a6, sp, tp
459:              add          ra, a0, s1
                  beq          s2, a0, 479f
                  bltu         a7, t1, 462f
462:              nop
463:              addi         s4, s2, -468
                  bgeu         t4, ra, 467f
                  andi         a1, tp, 956
                  slt          a2, t1, a7
467:              sltu         s5, a7, a2
468:              sltiu        a7, a5, -170
                  addi         t5, gp, -1182
                  sub          s5, s7, t0
                  auipc        s7, 303221
                  sltu         a7, gp, a4
                  lui          s3, 975598
                  beq          a7, t5, 476f
                  addi         s3, ra, 1158
476:              xor          a0, a7, s10
                  bgeu         t5, tp, 479f
                  sll          a6, tp, s4
479:              sra          a7, s5, a3
                  slli         t6, s6, 27
                  slt          t2, s10, tp
                  slt          ra, gp, a3
                  slli         a2, s2, 24
                  srli         s4, a5, 17
                  beq          t5, s1, 502f
                  slt          s10, zero, a3
                  slti         s10, a4, 1142
                  srli         s4, s3, 29
                  beq          gp, s11, 503f
                  srl          s11, s10, s5
                  sub          t4, s10, s0
                  andi         a7, a2, -703
                  addi         s8, t2, 1168
                  srl          a6, s3, s9
                  blt          t2, a7, 508f
                  slli         tp, a5, 28
                  beq          a4, s6, 508f
                  bltu         a1, t6, 513f
                  addi         a6, t6, 1793
                  srai         a7, s10, 2
                  sltiu        s4, t6, -712
502:              srli         t1, t2, 15
503:              sltiu        t6, t6, 9
                  lui          s11, 735272
                  slt          a0, t5, a1
                  srl          s8, s7, t4
                  sll          s11, s8, s10
508:              blt          s4, sp, 526f
                  bge          t2, sp, 522f
                  blt          t1, s2, 518f
                  bgeu         s5, a2, 512f
512:              bne          t3, ra, 518f
513:              beq          s4, t5, 529f
                  auipc        s7, 975419
                  slt          s8, t1, a6
                  srl          s0, s7, s1
                  blt          s3, s2, 526f
518:              bge          t6, s5, 519f
519:              sub          s11, a5, t6
                  add          t2, s5, a1
                  sll          a1, s6, s7
522:              srai         a1, s3, 5
                  and          gp, t3, t2
                  sub          a3, s6, t2
                  andi         t2, a5, -1560
526:              beq          s0, a1, 534f
                  sra          a0, s6, t2
                  bgeu         s4, s5, 545f
529:              addi         s4, s8, -797
                  slli         s10, t0, 20
                  blt          t6, a0, 548f
                  bgeu         s10, s4, 534f
                  lui          s8, 645458
534:              srli         a0, s5, 18
                  auipc        a0, 776842
                  andi         a3, a4, -1233
                  slli         t2, a4, 9
                  auipc        t5, 142715
                  sltu         s4, s1, a7
                  bne          t3, a4, 552f
                  sra          t2, s5, s8
                  andi         s6, t1, 1355
                  xori         ra, s6, -303
                  srai         t1, s1, 23
545:              bgeu         s7, s6, 558f
                  bltu         s9, a1, 557f
                  srli         s5, t1, 21
548:              addi         sp, tp, 1140
                  andi         a7, ra, -154
                  bltu         s6, s2, 558f
                  lui          s7, 668670
552:              sltiu        s3, a1, -1331
                  srai         ra, s2, 21
                  andi         s4, a2, 139
                  and          a1, t0, t3
                  xori         tp, t5, 1079
557:              srli         sp, t0, 4
558:              beq          s9, s5, 560f
                  sra          t6, s0, a4
560:              bgeu         t4, s8, 566f
                  slti         s3, s9, 1646
                  andi         s5, s0, -1596
                  sub          s0, t5, s3
                  lui          a3, 953006
                  slt          gp, a0, t3
566:              bne          gp, a2, 569f
                  slt          t1, s11, s8
                  lui          s11, 381978
569:              addi         t1, a1, 14
                  nop
                  sub          t6, zero, a1
                  andi         a7, s10, -1923
                  nop
                  addi         a1, a3, 776
                  lui          s0, 978643
                  sub          a0, s2, zero
                  andi         tp, t4, 823
                  blt          t6, s11, 591f
                  sltu         sp, ra, s4
                  bgeu         s9, ra, 598f
                  blt          s4, ra, 590f
                  sub          ra, s9, ra
                  srai         t6, a3, 25
                  bgeu         s8, a7, 600f
                  sra          t1, s6, sp
                  sltiu        t5, tp, -961
                  andi         a5, s9, -1346
                  and          s4, t5, s9
                  sll          a4, gp, a5
590:              slti         s0, a0, -388
591:              and          a1, s3, t2
                  blt          a2, s10, 606f
                  blt          s0, t4, 612f
                  add          s3, s7, a5
                  slli         s3, t1, 25
                  or           s5, a7, ra
                  srli         t5, t0, 27
598:              or           gp, a6, a5
                  sltiu        t3, s10, -1516
600:              sltiu        t3, gp, -8
                  bgeu         t0, a2, 616f
                  ori          s10, t1, 1365
                  nop
                  addi         sp, tp, 1742
                  and          s8, zero, s3
606:              sltiu        a7, s5, -1044
                  sltiu        zero, s2, 346
                  bne          a5, a6, 609f
609:              srai         gp, s8, 6
                  ori          a4, s11, 1082
                  blt          s0, a2, 612f
612:              blt          s7, a2, 615f
                  srl          s10, s1, s3
                  beq          zero, sp, 627f
615:              sltiu        a2, sp, 1071
616:              add          ra, s6, a3
                  beq          s11, a2, 635f
                  lui          t6, 122247
                  add          zero, t6, ra
                  add          t5, sp, a6
                  bge          s7, ra, 623f
                  srli         sp, t6, 14
623:              bltu         t6, s4, 636f
                  bge          s4, t5, 625f
625:              sltu         gp, a1, sp
                  bltu         s11, s6, 634f
627:              addi         s4, t4, -1559
                  slti         tp, s10, 1040
                  and          sp, sp, s9
                  and          a1, t3, ra
                  sra          t2, t6, s8
                  bne          a5, t2, 640f
                  add          gp, a7, s2
634:              add          s8, sp, t4
635:              slti         a2, t6, -880
636:              xor          a1, s8, zero
                  addi         t5, s4, -1267
                  sll          s5, zero, t2
                  xor          s4, s2, t5
640:              auipc        a1, 108777
                  xor          s7, sp, s11
                  bgeu         s7, a5, 651f
                  add          t3, s4, s10
                  bgeu         s11, a7, 645f
645:              bge          a0, s5, 647f
                  nop
647:              and          s11, t3, t6
                  bltu         a6, t6, 665f
                  blt          t6, a2, 652f
                  or           sp, s5, s8
651:              sra          a3, s0, a5
652:              slli         a1, s8, 8
                  bltu         a7, tp, 655f
                  sra          t1, a7, zero
655:              blt          a7, zero, 663f
                  ori          s10, a1, 196
                  lui          t5, 416657
                  xori         s8, tp, -288
                  slti         s0, a0, 1621
                  sra          s2, sp, a0
                  slt          s0, a0, a6
                  auipc        s2, 462084
663:              srl          a3, t0, t0
                  sra          s3, s2, gp
665:              xori         ra, t5, 419
                  sltu         a7, a2, s6
                  beq          s4, a0, 686f
                  addi         t6, s8, -1132
                  slt          zero, gp, t4
                  bltu         s0, a1, 683f
                  addi         a5, a4, -1878
                  blt          s6, s3, 673f
                  slti         tp, a0, -1788
                  la           a0, sub_5
                  addi         a0, a0, 437
                  slli         s8, s10, 8
                  sltiu        t4, a7, -1343
                  sra          a6, a6, t5
                  sub          a4, a2, t6
                  addi         gp, zero, 1578
                  lui          s10, 199251
                  slti         s4, s7, -1488
                  nop
                  add          s10, s10, a4
sub_4_j7:         jalr         t1, a0, -437 #jump sub_4 -> sub_5
673:              slti         t6, t3, 1954
                  xor          s3, sp, t6
                  srli         ra, t0, 14
                  bltu         s9, a5, 689f
                  slti         s5, s10, -1818
                  slli         tp, s2, 9
                  blt          s9, ra, 690f
                  ori          s4, t2, -338
                  slt          t3, a1, gp
                  addi         a5, s1, -1728
683:              srl          s0, a2, s5
                  ori          a1, gp, -594
                  sll          s6, a5, s10
686:              bne          a2, a5, 703f
                  slt          s2, a5, t0
                  bltu         t1, a4, 700f
689:              sll          t3, s5, t5
690:              slti         ra, t1, 1856
                  beq          s11, t0, 700f
                  auipc        a3, 558493
                  sll          a6, a3, s10
                  sra          zero, a5, t5
                  andi         sp, zero, 1409
                  xor          t2, gp, gp
                  bne          gp, s2, 710f
                  sub          a0, s5, s11
                  beq          t3, s10, 700f
700:              andi         zero, a4, 1738
                  xori         s2, a0, 2015
                  bgeu         a3, s10, 704f
703:              lui          s10, 13152
704:              bne          t1, t3, 717f
                  sltiu        s10, t4, 1397
                  beq          a3, s11, 723f
                  or           s2, a3, t5
                  bgeu         t0, a4, 711f
                  xor          s6, t5, s2
710:              sltu         t4, a4, s1
711:              bgeu         zero, a4, 726f
                  srl          a3, s6, a0
                  slti         t3, a3, 2035
                  sra          s8, s7, s1
                  sub          s0, tp, t4
                  sub          s8, gp, s4
717:              sub          ra, s10, a6
                  srli         sp, a0, 10
                  bltu         a1, t2, 737f
                  ori          sp, s11, 1963
                  sltiu        a0, s5, 1603
                  blt          ra, t6, 736f
723:              slti         s0, s1, -448
                  bgeu         t2, a5, 732f
                  sra          zero, t3, sp
726:              or           sp, t6, s8
                  blt          ra, ra, 729f
                  sll          a0, a1, t1
729:              sltu         a6, gp, a7
                  slt          t4, t2, t4
                  sltu         sp, a4, s5
732:              xor          s6, a7, s11
                  sltu         gp, t0, sp
                  slt          s2, s5, s3
                  srl          s8, a4, t5
736:              or           a7, s10, a4
737:              bne          tp, a3, 745f
                  andi         s10, a0, 893
                  blt          sp, s7, 757f
                  xor          t3, s0, sp
                  sra          s3, s5, tp
                  bne          a0, s6, 743f
743:              slt          s3, sp, a7
                  sltiu        a2, s3, -275
745:              srli         a1, t2, 23
                  sra          zero, s6, s10
                  and          t5, s0, t1
                  bge          t2, gp, 764f
                  sra          t5, t0, s2
                  blt          s8, a6, 752f
                  and          s8, s11, a5
752:              sll          t4, a5, t1
                  bge          s9, s0, 759f
                  addi         a7, a6, 223
                  xori         t6, s5, 400
                  addi         s6, a1, 1082
757:              and          a2, a2, a7
                  beq          s7, t5, 759f
759:              slli         a0, s7, 29
                  sll          t6, ra, a5
                  ori          s0, a7, 1761
                  xor          a5, zero, s3
                  addi         a2, a6, 61
764:              blt          a2, a3, 773f
                  slti         s4, s3, 1562
                  auipc        gp, 865859
                  sra          s3, t4, gp
                  addi         t6, a1, 622
                  ori          zero, zero, -1138
                  bltu         a4, a5, 772f
                  xori         s6, t1, 393
772:              nop
773:              bne          t1, s6, 790f
                  nop
                  sra          s7, s3, t5
                  srli         t5, s6, 22
                  xor          ra, s9, s2
                  sltu         a2, t6, a3
                  bgeu         a1, a0, 788f
                  srl          s5, ra, t2
                  xor          s3, s8, s10
                  slti         t1, tp, -1858
                  addi         a3, t3, 1619
                  xor          a4, s8, s8
                  srli         s2, s2, 27
                  addi         t2, s11, -952
                  xor          t4, s8, s5
788:              sra          a2, t3, s3
                  sltu         t2, a3, a7
790:              blt          s0, s9, 804f
                  sll          a0, s11, a2
                  srai         sp, gp, 27
                  addi         t5, a4, -1537
                  slti         t5, a7, -1943
                  ori          t2, a4, 851
                  and          t6, a7, s6
                  sltiu        s6, a5, -1845
                  slt          t6, sp, t5
                  andi         t4, a3, -564
                  and          t3, s7, zero
                  sub          sp, t0, s11
                  beq          ra, tp, 803f
803:              slt          a3, s10, t6
804:              srli         a6, t0, 21
                  auipc        a1, 269778
                  blt          s1, a4, 807f
807:              sra          t6, a2, t3
                  srl          a1, s6, a0
                  blt          s2, s2, 811f
                  srli         a6, s1, 30
811:              bgeu         s1, gp, 824f
                  bge          a0, s0, 825f
                  bge          a5, a7, 828f
                  xori         a1, s6, -1654
                  add          a7, s9, tp
                  auipc        s10, 901241
                  sltu         a4, a6, sp
                  bgeu         t2, a7, 821f
                  lui          s10, 934772
                  slti         a0, s1, 1168
821:              sub          t4, s6, s8
                  xori         s6, a3, -786
                  andi         s8, ra, 622
824:              bgeu         a3, t6, 832f
825:              bltu         tp, a3, 827f
                  srai         t5, a0, 28
827:              ori          a2, ra, -1242
828:              addi         a4, s7, -1035
                  auipc        s0, 505857
                  srai         s4, a1, 24
                  sltu         s5, t1, t6
832:              sltu         t1, tp, gp
                  sltu         s0, t1, a5
                  bltu         a6, a2, 852f
                  blt          s2, ra, 847f
                  beq          zero, s1, 849f
                  xor          t3, t3, s7
                  andi         zero, t4, 2035
                  nop
                  slli         tp, a5, 15
                  bltu         t2, s6, 849f
                  andi         a5, t6, 1806
                  nop
                  nop
                  sll          s0, gp, s2
                  lui          tp, 354020
847:              blt          a6, ra, 858f
                  auipc        a3, 451377
849:              sltiu        a0, s3, 1514
                  nop
                  sub          a7, s5, t5
852:              beq          t1, s0, 853f
853:              bge          a5, s6, 870f
                  beq          t3, t3, 857f
                  and          ra, a6, a3
                  slt          s0, s2, t1
857:              blt          s5, zero, 866f
858:              srai         t3, s3, 21
                  bge          ra, t2, 878f
                  slli         a4, t4, 1
                  add          s2, a6, gp
                  xor          a2, s4, a5
                  slti         s8, gp, -1946
                  auipc        s2, 458459
                  srli         t3, a4, 12
866:              xor          t3, s6, t3
                  auipc        sp, 328624
                  add          t2, s7, s5
                  andi         s7, sp, 892
870:              blt          a1, zero, 878f
                  sub          sp, t1, ra
                  srli         a5, a0, 4
                  srl          zero, a5, s8
                  sltiu        a7, ra, 1916
                  sltu         a5, a7, t5
                  sll          s7, a0, a7
                  or           t6, a3, tp
878:              sltu         a3, a3, s4
                  add          a6, s3, s6
                  sltiu        s0, a4, 1721
                  andi         gp, t4, 2026
                  blt          s9, tp, 898f
                  blt          t1, s6, 901f
                  nop
                  bgeu         a4, a3, 886f
886:              slli         a2, s3, 14
                  bne          t0, s0, 893f
                  xor          s4, s4, tp
                  bgeu         t6, a7, 891f
                  nop
891:              addi         s4, t1, 188
                  xori         tp, a0, 344
893:              slti         s7, a0, -603
                  addi         s6, s7, 1489
                  lui          t3, 376847
                  bge          sp, s3, 909f
                  add          s4, a4, zero
898:              sltu         a0, s3, s1
                  slt          s8, s9, a2
                  nop
901:              ori          gp, a0, -1432
                  la           a3, region_1+1490 #start riscv_load_store_rand_instr_stream_5
                  lui          ra, 583678
                  sltu         tp, t6, s11
                  sltu         s8, s7, t5
                  nop
                  sltiu        s5, s0, -882
                  lw           t1, -10(a3)
                  sra          gp, a4, t3
                  lbu          tp, 61(a3)
                  lui          s2, 217688
                  sb           a5, -10(a3)
                  auipc        t2, 556502
                  add          s10, s2, a7
                  lb           t1, -9(a3)
                  sb           t2, -44(a3)
                  andi         s0, s1, -1349
                  sra          s4, s8, a7
                  lw           a7, -18(a3)
                  sb           a0, -10(a3)
                  slli         sp, sp, 2
                  sll          t3, a3, s1
                  lh           s4, -6(a3)
                  lbu          a5, -58(a3)
                  add          s8, a3, t0
                  sb           tp, 15(a3)
                  slti         s4, s2, 1183
                  srli         s2, a1, 27
                  sub          sp, s0, s9
                  or           t5, sp, a1
                  srai         t1, a3, 22
                  auipc        s2, 244506
                  lb           t2, 11(a3)
                  lbu          t5, -35(a3)
                  slt          s11, s1, s1
                  addi         s4, s8, -1559
                  lh           s8, 0(a3)
                  auipc        a0, 587540
                  sb           s10, 55(a3)
                  add          tp, s11, s4
                  xori         a5, s11, 32
                  sb           s4, 52(a3)
                  sb           s10, -49(a3)
                  srai         a4, t4, 22
                  lbu          a7, -7(a3)
                  lb           s11, -3(a3)
                  sh           a6, -40(a3) #end riscv_load_store_rand_instr_stream_5
                  andi         a2, zero, -75
                  xori         s2, s11, 1532
                  srl          t6, sp, tp
                  xori         t4, a5, -1410
                  sra          s8, sp, a2
                  slli         zero, a4, 26
                  srai         a0, s6, 12
909:              srai         t3, s10, 25
                  xor          a5, tp, t6
                  srl          t3, t3, tp
                  nop
                  blt          s10, s2, 932f
                  blt          s3, s10, 930f
                  bge          t1, a0, 929f
                  sltu         a6, s7, t2
                  sll          s6, a6, s11
                  bltu         a2, t0, 920f
                  srl          ra, a7, a4
920:              auipc        s2, 337709
                  or           zero, tp, s3
                  srli         s8, s4, 15
                  ori          s2, t2, -963
                  sub          s4, t2, s10
                  bgeu         tp, s7, 934f
                  auipc        a5, 355456
                  sub          a4, t4, a3
                  and          a4, t5, a3
929:              nop
930:              and          s6, a4, ra
                  and          s2, t4, a0
932:              blt          s8, a3, 947f
                  sltu         s4, s5, s2
934:              slti         s3, s6, 1105
                  bge          a7, a2, 947f
                  bltu         a4, a0, 944f
                  andi         t5, a3, -1379
                  bgeu         t5, a5, 949f
                  beq          s7, a5, 952f
                  slti         t6, a4, 1812
                  sltiu        s11, s9, 269
                  andi         a3, ra, -1808
                  sll          s6, t3, a0
944:              slli         a5, t1, 7
                  addi         t3, s4, -760
                  or           a0, a1, s6
947:              add          s11, gp, a4
                  addi         a0, a7, 1164
949:              sra          a2, t6, t2
                  bne          s9, t6, 968f
                  blt          t4, t0, 968f
952:              srai         t6, a6, 11
                  auipc        s5, 525358
                  add          a4, ra, s1
                  nop
                  sra          s0, s11, s0
                  or           t3, a1, a2
                  ori          s6, s0, 1242
                  nop
                  andi         gp, a3, 1721
                  srl          a3, s3, ra
                  sltiu        t4, a6, -1334
                  srl          a2, s11, tp
                  bltu         sp, s0, 966f
                  andi         a7, s5, 272
966:              slli         zero, t1, 26
                  slli         a0, s8, 7
968:              andi         s11, t3, 401
                  and          s10, a3, t2
                  bgeu         t2, a7, 971f
971:              beq          s0, a2, 972f
972:              blt          s3, t3, 974f
                  andi         t4, gp, 1211
974:              xori         s8, zero, 1907
                  or           s3, s2, zero
                  slti         s10, s11, -1058
                  bgeu         zero, s0, 990f
                  lui          a7, 707787
                  bge          zero, s5, 985f
                  srai         s0, t6, 11
                  slti         t2, t3, -107
                  bge          t5, s2, 984f
                  add          zero, s9, a2
984:              srl          s7, s5, s10
985:              bgeu         a2, a5, 988f
                  slt          ra, t4, t6
                  andi         a7, tp, -1515
988:              auipc        a7, 364244
                  add          a5, zero, a2
990:              xori         s7, s3, 1750
                  blt          a7, a1, 1008f
                  andi         s4, ra, -547
                  srai         a2, s0, 30
                  bltu         s7, a6, 1003f
                  slt          a1, s3, s5
                  sll          t5, ra, t0
                  srai         s2, s7, 10
                  add          t1, tp, a2
                  and          s10, s1, s3
                  srl          s8, s8, t4
                  sll          a1, t0, s7
                  nop
1003:             srai         s10, t0, 5
                  bne          s2, s3, 1022f
                  sub          a2, t1, ra
                  xori         a5, ra, 1151
                  nop
1008:             and          s11, s5, s11
                  srl          t6, s8, s0
                  or           s4, s2, a0
                  auipc        t2, 279203
                  bltu         t5, t4, 1020f
                  bge          ra, s9, 1026f
                  auipc        s11, 1045553
                  add          ra, s7, s7
                  bltu         s11, s9, 1029f
                  or           a4, s9, a2
                  slti         s10, a7, -320
                  add          a2, s11, t0
1020:             xor          tp, a0, t6
                  ori          a2, t6, 1367
1022:             lui          s7, 73539
                  sll          tp, a4, zero
                  xori         s8, a6, -1585
                  xor          sp, s10, a2
1026:             ori          t1, t1, -2047
                  andi         tp, s9, -886
                  auipc        t2, 615830
1029:             addi         a2, s7, -276
                  sltiu        s11, gp, 295
                  srl          a0, t5, s1
                  bgeu         t5, s5, 1040f
                  and          s2, t4, zero
                  sltu         a5, t1, s10
                  srli         t2, s4, 17
                  bgeu         s9, s0, 1037f
1037:             andi         s11, t1, 640
                  slt          zero, a3, a5
                  srli         s3, a6, 28
1040:             xor          s0, s1, zero
                  xori         a2, a4, 1981
                  xori         s8, s6, -1573
                  addi         a2, a4, 1267
                  sll          a3, s6, t4
                  addi         tp, ra, -1078
                  lui          t6, 49183
                  slt          s0, t3, a7
                  auipc        s4, 730034
                  lui          s8, 131247
                  bgeu         a1, s7, 1051f
1051:             srai         tp, t5, 9
                  slli         t1, t1, 8
                  and          a1, sp, s11
                  nop
                  sra          a2, s11, s9
                  blt          s4, s8, 1059f
                  srl          a4, ra, t1
                  slt          s3, s0, s10
1059:             srai         ra, s4, 11
                  beq          s7, a3, 1072f
                  andi         s10, a5, 667
                  sltiu        t6, s0, -1150
                  bgeu         s6, sp, 1076f
                  sltu         s8, a2, t0
                  auipc        t2, 113635
                  bgeu         t2, a7, 1067f
1067:             blt          sp, s9, 1080f
                  xor          t5, s6, a6
                  srli         s6, s3, 19
                  beq          t4, t5, 1084f
                  slti         t6, s2, 1010
1072:             bne          a6, a6, 1075f
                  and          a4, t6, s9
                  sra          a0, a4, s2
1075:             lui          s6, 534162
1076:             or           a1, s6, t3
                  slti         a6, a7, 125
                  slli         t6, a5, 24
                  lui          s10, 71489
1080:             beq          t2, s7, 1082f
                  bge          t0, a7, 1083f
1082:             auipc        s11, 183114
1083:             sll          a2, a6, s2
1084:             bne          s2, s1, 1090f
                  srl          a3, s10, a4
                  sub          a0, a2, a0
                  bltu         a7, s10, 1095f
                  bltu         sp, t5, 1089f
1089:             slt          a6, s7, a0
1090:             slti         t4, t0, -1507
                  and          a0, a1, s8
                  auipc        a3, 289778
                  xor          s8, a6, gp
                  nop
1095:             sub          a7, a4, s0
                  blt          t0, zero, 1104f
                  srl          tp, a0, a4
                  and          sp, sp, t6
                  xori         a0, zero, -1401
                  blt          a2, t0, 1113f
                  auipc        s6, 435333
                  andi         a2, s2, -154
                  sltiu        t6, s0, 101
1104:             lui          t3, 498847
                  auipc        s11, 118075
                  sltu         zero, a6, t6
                  srai         a0, t6, 20
                  bgeu         s1, gp, 1116f
                  bne          s7, s0, 1124f
                  sltu         ra, a1, s7
                  bltu         a7, gp, 1120f
                  auipc        s0, 733969
1113:             slli         zero, s7, 13
                  srai         s10, s7, 8
                  xori         s10, a6, 1316
1116:             sltu         s3, zero, a0
                  beq          a2, s5, 1135f
                  auipc        a6, 348226
                  sll          tp, a6, s8
1120:             sra          t5, s6, a2
                  or           s3, t4, s11
                  add          s11, a1, s8
                  sll          t6, s11, a1
1124:             bltu         zero, s0, 1140f
                  bltu         s0, gp, 1127f
                  slt          a5, t2, ra
1127:             sub          a4, s2, s11
                  sub          t4, t4, a7
                  sll          tp, a6, s2
                  andi         gp, a3, -1839
                  xori         t6, s8, -1175
                  la           gp, region_0+1521 #start riscv_load_store_rand_instr_stream_2
                  auipc        t1, 740386
                  auipc        t5, 1015751
                  sub          a0, a3, a5
                  sb           a5, 9(gp)
                  lbu          s11, 4(gp)
                  lw           s10, -9(gp)
                  slti         t4, s1, 76
                  lbu          t2, -12(gp)
                  lui          t3, 141985
                  sb           t0, 1(gp)
                  lbu          t5, 2(gp)
                  lb           a5, 10(gp)
                  lbu          a0, 12(gp)
                  lbu          ra, -11(gp)
                  sb           s3, 8(gp)
                  sh           s10, -7(gp)
                  lh           sp, 13(gp)
                  lb           a3, -2(gp)
                  lb           sp, -6(gp)
                  slti         zero, s11, -417
                  lb           sp, -4(gp)
                  slti         s5, t0, -379
                  sub          a5, t4, t5
                  lhu          a0, -1(gp)
                  lb           s11, -11(gp)
                  lb           t4, 14(gp)
                  sb           t3, 16(gp)
                  xor          s6, s5, gp
                  auipc        a5, 716368
                  ori          s3, a2, -422
                  sb           a4, 6(gp)
                  lb           t2, -14(gp)
                  sltu         s10, s7, t5
                  sb           gp, -6(gp)
                  andi         s10, s3, 1116
                  xor          t1, s11, zero
                  sb           s10, -14(gp)
                  sb           a4, -16(gp)
                  sll          s2, a7, t1
                  lui          s7, 14678
                  slti         a6, a4, 1402
                  lb           s8, 11(gp)
                  lb           tp, 2(gp)
                  lbu          s8, 11(gp)
                  sw           s7, 15(gp)
                  sb           a1, 15(gp) #end riscv_load_store_rand_instr_stream_2
                  slt          tp, s0, s11
                  and          t5, a4, a4
                  andi         a6, t4, -1189
1135:             and          sp, a2, t2
                  sub          a2, ra, tp
                  xori         t1, t2, -1196
                  beq          a5, a6, 1141f
                  nop
1140:             or           s6, a2, a4
1141:             bge          s4, a2, 1152f
                  or           a0, s0, a0
                  addi         t2, s8, 51
                  sra          s7, ra, a7
                  slti         gp, t4, -1071
                  sltiu        s10, a3, -100
                  bge          t5, s8, 1164f
                  beq          t1, sp, 1161f
                  nop
                  bne          t1, a5, 1167f
                  blt          s7, t6, 1153f
1152:             srl          s7, zero, a6
1153:             bne          a3, s8, 1162f
                  sltu         t1, s4, t1
                  xori         a7, s8, 696
                  bgeu         t2, s5, 1175f
                  bgeu         a5, gp, 1158f
1158:             bltu         t2, sp, 1159f
1159:             or           a3, ra, gp
                  sltu         a1, s1, s4
1161:             srl          a5, s3, a3
1162:             ori          s6, s6, -1647
                  srai         gp, a4, 8
1164:             sub          t3, tp, t2
                  bne          t1, s11, 1183f
                  slli         a5, t3, 8
1167:             ori          a3, t0, 1243
                  xori         a2, t1, -716
                  add          a3, s1, s2
                  bne          a5, s4, 1183f
                  xori         sp, t6, 1702
                  ori          s6, a2, 907
                  slli         a7, sp, 3
                  andi         t2, a6, 1423
1175:             and          gp, s3, a3
                  slli         t3, s5, 26
                  xor          s4, tp, gp
                  srai         a5, s10, 25
                  slt          t6, a3, tp
                  addi         s3, a3, -1541
                  sll          a3, s0, s8
                  or           s11, a5, s5
1183:             sltu         a7, t6, s2
                  bge          t0, a4, 1186f
                  srai         a3, s7, 28
1186:             sll          a5, t0, t2
                  slti         sp, s0, -10
                  ori          t6, s3, 1344
                  blt          a0, s2, 1195f
                  and          s3, s1, t0
                  srli         gp, gp, 13
                  slt          a7, ra, s3
                  bne          t3, s7, 1208f
                  xor          s10, s2, s0
1195:             nop
                  or           t4, a4, zero
                  sltiu        tp, s7, -1117
                  sltu         s8, s1, a4
                  or           s11, s7, t0
                  bne          s2, a2, 1213f
                  sltiu        t3, t1, -1990
                  bltu         t5, sp, 1215f
                  bgeu         s6, s10, 1216f
                  xor          a0, a6, t6
                  sra          a4, s5, gp
                  and          s3, a2, s7
                  xori         t5, zero, 1610
1208:             nop
                  blt          s7, s7, 1218f
                  add          tp, t3, a1
                  xor          s3, s6, s10
                  xori         s2, ra, -48
1213:             or           gp, s5, t6
                  srli         a2, a2, 31
1215:             bne          a6, s1, 1232f
1216:             sra          s8, s5, a3
                  srli         t3, a1, 9
1218:             sub          t3, sp, a0
                  xori         t6, a5, -277
                  sra          s8, sp, t3
                  sltiu        s2, a2, 624
                  sub          a6, a7, a4
                  ori          sp, gp, 1209
                  sub          a0, a2, t5
                  add          a1, s1, tp
                  slt          s3, ra, gp
                  and          a7, gp, a5
                  sltu         tp, t3, s10
                  bltu         a1, a2, 1240f
                  bne          a0, s2, 1242f
                  ori          s4, a5, 354
1232:             sub          a2, ra, s2
                  or           gp, sp, a7
                  srli         zero, a4, 12
                  sub          s3, s4, s10
                  sub          t2, s8, s0
                  andi         zero, sp, -480
                  bgeu         s5, a5, 1240f
                  slli         s3, zero, 29
1240:             blt          ra, s7, 1259f
                  lui          a7, 522207
1242:             srai         s10, t1, 26
                  xori         tp, s6, -427
                  addi         t4, a4, -1174
                  slli         a7, s11, 23
                  sll          s2, s4, s0
                  sltiu        s8, t2, 120
                  lui          t3, 110905
                  and          t3, s11, a1
                  srai         a6, s0, 22
                  beq          s5, t1, 1269f
                  bgeu         s5, s9, 1260f
                  slt          s10, t0, ra
                  sub          a0, tp, t6
                  bgeu         t4, a0, 1258f
                  blt          a1, t5, 1265f
                  srai         a1, s7, 16
1258:             nop
1259:             slli         t5, a7, 21
1260:             sltiu        t3, gp, -103
                  bne          t1, s2, 1262f
1262:             beq          a7, a4, 1270f
                  slti         s8, gp, 520
                  blt          s2, a2, 1272f
1265:             bne          t4, a2, 1281f
                  bltu         t1, ra, 1267f
1267:             sltu         a3, s3, t2
                  bne          s9, t2, 1270f
1269:             sltu         gp, s1, t2
1270:             add          a5, s2, t1
                  srai         a7, a2, 28
1272:             bge          zero, t2, 1286f
                  sra          tp, s1, a6
                  auipc        t4, 394436
                  bne          t5, a0, 1292f
                  beq          s5, s11, 1278f
                  nop
1278:             add          a3, t3, gp
                  andi         s8, s2, 575
                  sltu         t2, s0, a5
1281:             lui          tp, 937104
                  nop
                  sll          sp, t5, s4
                  and          t1, a4, a3
                  slli         s4, t0, 8
1286:             srli         s0, tp, 20
                  bgeu         sp, s7, 1288f
1288:             addi         a5, s6, 1433
                  addi         a6, s6, -778
                  xor          a1, a3, s10
                  and          a5, ra, a2
1292:             lui          s7, 41458
                  xor          t6, t5, t5
                  auipc        a5, 928311
                  add          s6, sp, s10
                  sltiu        s8, t4, -508
                  bgeu         a3, a3, 1300f
                  sra          t5, t4, t5
                  and          s5, s8, s8
1300:             andi         ra, t6, -1326
                  andi         s0, s8, 1339
                  ori          a2, s7, 1979
                  ori          s6, t2, 781
                  slti         ra, s9, 344
                  slli         a7, t3, 1
                  ori          t6, t2, 1258
                  add          a7, s3, a7
                  slt          t1, t6, ra
                  slt          a0, a1, a3
                  or           a7, a7, s0
                  add          s10, a6, s1
                  sltu         s6, s11, a5
                  and          s7, t3, t6
                  xor          s2, s0, t3
                  nop
                  slti         t1, t0, -894
                  sub          s0, t0, a3
                  andi         s2, s10, -1756
                  sltu         s10, s0, zero
                  bne          sp, s0, 1321f
1321:             sub          a6, s11, t5
                  srl          s3, s0, s10
                  beq          s4, t0, 1341f
                  slli         a6, sp, 29
                  xor          a2, ra, s4
                  andi         a2, t6, 1277
                  blt          a4, s5, 1340f
                  sll          s3, a7, s8
                  srl          a2, s6, a4
                  blt          t1, s6, 1333f
                  andi         tp, t6, -181
                  and          s3, s5, s4
1333:             auipc        sp, 139347
                  xor          tp, a2, t1
                  bne          a3, s11, 1338f
                  lui          s8, 411790
                  srai         s6, s3, 5
1338:             sll          s2, s0, t5
                  bltu         s10, a5, 1348f
1340:             sra          t2, s10, s1
1341:             srai         s2, s0, 23
                  xor          t2, s6, s10
                  slli         t1, s10, 14
                  slti         s7, a5, 1126
                  la           a1, region_1+1113 #start riscv_load_store_rand_instr_stream_13
                  sb           a2, 10(a1)
                  lbu          a2, -16(a1)
                  sb           s2, -4(a1)
                  nop
                  lb           a0, 8(a1)
                  sb           t6, 6(a1)
                  andi         a6, zero, 599
                  sra          t1, a1, tp
                  sb           t3, -11(a1)
                  or           s11, t6, tp
                  xor          s8, s4, a5
                  xori         s8, ra, -1679
                  lbu          a0, -12(a1)
                  nop
                  lb           s11, -9(a1)
                  lh           sp, -9(a1)
                  lb           t5, -10(a1)
                  srl          a3, s0, sp
                  sb           s7, 3(a1)
                  sltu         tp, t0, s0
                  lui          zero, 133558
                  lhu          t6, -3(a1)
                  lb           s0, 0(a1)
                  lbu          a0, -14(a1)
                  lhu          s0, -15(a1)
                  sb           tp, -12(a1)
                  sra          t2, s4, s7
                  lbu          a2, 16(a1)
                  sltu         s5, s4, s4
                  xor          t2, a0, t1
                  sb           tp, 4(a1)
                  add          a2, s10, s0
                  ori          ra, a1, -1308
                  lbu          t3, -5(a1)
                  lbu          ra, 2(a1)
                  sb           t5, -15(a1)
                  lbu          a3, -16(a1)
                  auipc        s0, 814515
                  slti         t2, sp, 407
                  lb           s5, -12(a1)
                  nop
                  srai         s4, a2, 8
                  sub          a2, s3, s8
                  sb           a5, 6(a1)
                  lhu          a0, 9(a1)
                  lb           t4, -13(a1) #end riscv_load_store_rand_instr_stream_13
                  andi         s5, a1, -1792
                  sltu         s11, s3, t5
                  slt          s6, s0, a2
1348:             bltu         s4, s10, 1356f
                  add          a5, a2, a2
                  add          t5, t4, t2
                  slt          a3, t1, t2
                  bgeu         a6, t3, 1367f
                  srl          t3, s8, s4
                  auipc        a6, 615254
                  add          s2, a7, a0
1356:             srai         a3, s7, 15
                  bne          a0, a5, 1359f
                  srl          a0, t5, a3
1359:             blt          a0, s4, 1360f
1360:             andi         t3, t5, -1897
                  slti         a1, a7, 329
                  sltiu        t4, t3, -1257
                  andi         a2, a5, -637
                  auipc        t5, 597583
                  bge          ra, gp, 1382f
                  auipc        tp, 426548
1367:             ori          a4, s9, -1469
                  bne          s8, gp, 1369f
1369:             lui          ra, 435374
                  auipc        t1, 364609
                  and          sp, a3, t2
                  beq          s3, ra, 1374f
                  andi         a2, t5, 2017
1374:             beq          s7, sp, 1382f
                  lui          tp, 97036
                  ori          s3, a5, 666
                  srl          tp, a1, s8
                  sll          a5, s4, ra
                  or           s0, t1, t1
                  nop
                  andi         a6, t1, 1880
1382:             sra          t6, tp, s7
                  srli         t1, s9, 1
                  and          s10, s3, sp
                  bltu         s11, a1, 1399f
                  or           a3, a7, s10
                  sra          t1, s11, tp
                  auipc        s0, 477054
                  srl          s10, s8, t0
                  xor          a1, zero, ra
                  ori          sp, t0, -970
                  addi         a1, t2, -1146
                  srli         a0, zero, 4
                  sub          a2, s4, zero
                  blt          s1, a2, 1404f
                  add          s10, a5, s7
                  slli         t2, tp, 7
                  or           gp, s5, a3
1399:             sra          a2, s2, zero
                  ori          t6, t5, 544
                  sltu         t3, s5, s1
                  xori         t3, s8, 1870
                  sltu         a5, t3, ra
1404:             lui          s4, 140881
                  slli         sp, a0, 8
                  srli         tp, s3, 0
                  slli         t4, t5, 0
                  addi         a2, t2, 836
                  lui          a1, 513406
                  nop
                  slli         s11, s9, 12
                  xor          a0, t1, s6
                  lui          s6, 734971
                  and          t4, zero, tp
                  or           t6, a0, t5
                  addi         s6, s7, -1953
                  bne          a6, zero, 1418f
1418:             bne          t2, s5, 1419f
1419:             add          tp, s1, a1
                  andi         gp, zero, -180
                  bne          tp, a4, 1434f
                  add          s7, a0, s5
                  slt          s6, s1, zero
                  sra          t5, a1, t1
                  xori         s3, t2, -203
                  srl          s8, t5, s11
                  andi         a5, t4, 1426
                  auipc        a7, 88295
                  sltu         a3, zero, tp
                  or           t5, a7, s11
                  xori         gp, t5, 1628
                  sra          s8, s3, t4
                  srl          a5, s6, sp
1434:             and          s11, gp, s0
                  andi         s2, s6, -562
                  and          t6, t1, tp
                  or           sp, s5, s9
                  sltu         s6, s2, s7
                  blt          s0, a7, 1456f
                  and          t2, s6, s9
                  srli         a2, a0, 15
                  bgeu         t3, s11, 1448f
                  slt          s0, t2, a6
                  and          s10, t2, a7
                  addi         s8, a7, -481
                  srli         t4, t3, 1
                  xori         a0, sp, -472
1448:             bltu         t3, zero, 1450f
                  xori         a1, a7, -1182
1450:             xori         a1, tp, 486
                  srli         s3, t3, 20
                  xori         zero, a3, 1960
                  sltu         s7, s9, a2
                  blt          s1, a5, 1472f
                  addi         t2, ra, 1395
1456:             slli         s5, s7, 8
                  addi         sp, a1, -1822
                  srl          t5, sp, s2
                  auipc        t1, 920604
                  slli         s2, s5, 24
                  and          s8, s4, t3
                  sll          s5, a6, t5
                  slt          s11, s2, tp
                  srli         a5, t5, 23
                  sltu         s2, a0, t0
                  sltiu        zero, t1, 836
                  blt          t2, s1, 1469f
                  add          a6, t6, s2
1469:             xori         t1, s9, 650
                  addi         a5, s7, -17
                  nop
1472:             srli         s2, a6, 12
                  sll          s4, gp, t6
                  addi         s6, s5, -323
                  ori          s4, t2, -1469
                  sll          a7, t4, s4
                  bne          s1, a7, 1485f
                  slti         t3, a2, -1770
                  slli         tp, s11, 0
                  ori          ra, s4, -357
                  bge          a3, t0, 1494f
                  bge          a4, s5, 1500f
                  slli         s5, s10, 15
                  nop
1485:             srli         a6, gp, 5
                  sra          s7, s2, tp
                  addi         s8, s6, -1355
                  bltu         a4, a6, 1504f
                  slti         a7, a0, -1039
                  sll          s8, s4, s10
                  xori         a4, sp, 970
                  slli         a2, a2, 7
                  andi         a0, sp, 1483
1494:             bltu         s4, gp, 1506f
                  ori          a0, s3, -176
                  sltiu        s6, ra, 588
                  or           sp, t6, t1
                  auipc        t4, 706997
                  addi         t1, t4, -148
1500:             beq          a5, sp, 1519f
                  blt          a6, ra, 1512f
                  lui          t4, 820774
                  and          a6, s5, s2
1504:             bge          s11, t0, 1517f
                  add          sp, a6, ra
1506:             sra          a4, s2, s4
                  sra          s5, a0, a0
                  bne          a4, s11, 1521f
                  slt          t5, s10, zero
                  slt          s2, s0, tp
                  bgeu         ra, ra, 1523f
1512:             bge          sp, gp, 1513f
1513:             sub          t3, t3, s8
                  or           t2, s3, a1
                  andi         a7, a5, -740
                  add          s4, a3, s6
1517:             blt          s2, s9, 1528f
                  or           t3, s8, s4
1519:             ori          s2, t4, -174
                  sll          sp, t2, a0
1521:             bgeu         s5, s3, 1534f
                  lui          s10, 489177
1523:             and          t3, s4, zero
                  ori          s8, a6, 802
                  or           a7, a2, a0
                  sra          s8, s5, t4
                  beq          t5, t3, 1529f
1528:             slti         s8, t4, -1985
1529:             beq          t3, a7, 1547f
                  ori          s5, a6, -785
                  nop
                  sll          t5, s0, s11
                  bgeu         tp, t4, 1548f
1534:             auipc        sp, 1027498
                  slt          a2, s2, a3
                  bne          a7, a2, 1545f
                  beq          s8, t4, 1551f
                  sra          a6, s10, s8
                  sll          t1, a4, a1
                  xori         a4, s6, 2037
                  srli         s7, t3, 27
                  srli         a2, tp, 3
                  beq          t6, s8, 1545f
                  srli         s4, s1, 22
1545:             addi         s0, a6, -834
                  beq          t5, t4, 1548f
1547:             or           gp, t3, a1
1548:             srli         a1, t3, 27
                  sub          s2, s0, t3
                  bge          s5, s3, 1566f
1551:             beq          s0, s10, 1568f
                  add          s3, a6, a1
                  and          t3, s2, s3
                  sub          a7, t6, t3
                  and          s0, s1, t0
                  bne          t2, ra, 1565f
                  slti         a0, s2, 316
                  slli         a3, sp, 7
                  bgeu         a5, s5, 1567f
                  sub          s2, s11, a3
                  ori          s11, t4, -79
                  slli         s11, t1, 25
                  bltu         t6, s3, 1582f
                  sll          a3, gp, a3
1565:             blt          t6, zero, 1568f
1566:             nop
1567:             sra          a7, a7, a7
1568:             xori         s11, gp, 70
                  slti         a4, s11, 1724
                  sll          zero, s2, t1
                  bge          ra, s3, 1579f
                  lui          a5, 474606
                  bgeu         s5, s0, 1575f
                  srli         gp, t1, 11
1575:             srai         zero, s3, 11
                  sltu         gp, s2, s11
                  bge          a5, s3, 1580f
                  srli         t3, s8, 20
1579:             sra          a5, t3, a7
1580:             or           tp, t5, t1
                  or           s8, a4, s9
1582:             add          s5, t6, s6
                  sltu         a2, a3, t0
                  srai         t2, t5, 10
                  sll          a4, t4, s3
                  bltu         zero, a2, 1603f
                  bne          s7, t1, 1605f
                  sra          a4, t2, s4
                  la           s7, region_1+1348 #start riscv_load_store_rand_instr_stream_11
                  sb           a5, -1155(s7)
                  lui          a1, 237715
                  lbu          s11, 150(s7)
                  sb           sp, -837(s7)
                  lb           t4, -1056(s7)
                  xori         s0, t1, 425
                  sw           a7, -144(s7)
                  sb           sp, -577(s7)
                  sb           s11, 268(s7)
                  sh           s2, 140(s7)
                  auipc        s0, 467821
                  lui          a0, 797243
                  andi         s0, s1, -1922
                  xori         a3, t0, 1102
                  lbu          s0, -227(s7)
                  srai         s6, s7, 22
                  slli         s0, a5, 5
                  sub          s0, t5, t5
                  or           s5, t4, s4
                  sub          tp, t2, s5
                  lhu          a4, -1152(s7)
                  lui          a3, 558704
                  slt          sp, s8, s11
                  lh           a0, -356(s7)
                  lbu          s10, -678(s7)
                  lh           a2, -80(s7) #end riscv_load_store_rand_instr_stream_11
                  xori         t6, t3, 1398
                  bne          zero, s4, 1591f
1591:             srai         t1, a5, 12
                  lui          s2, 1034906
                  and          a5, s3, s7
                  and          t5, s7, s2
                  blt          s7, s5, 1596f
1596:             sll          a4, s2, zero
                  auipc        s4, 321665
                  slli         s10, a7, 3
                  srl          a1, ra, s3
                  bne          a3, s11, 1606f
                  slt          a1, sp, s0
                  xori         t3, s4, 367
1603:             bltu         s11, s9, 1604f
1604:             and          s11, tp, a5
1605:             nop
1606:             or           a2, t2, s0
                  sra          t4, s6, tp
                  beq          s2, s6, 1621f
                  andi         a6, s3, -1023
                  and          s2, t4, t2
                  bge          a4, s7, 1624f
                  srai         zero, t4, 10
                  sll          s6, s7, t5
                  xori         a4, s3, -872
                  add          tp, zero, s1
                  slli         s3, t0, 16
                  sltiu        s5, a6, 1561
                  sltiu        ra, s8, 1754
                  bltu         a1, sp, 1627f
                  ori          t1, s7, 870
1621:             srl          ra, s4, s3
                  and          t5, sp, s1
                  auipc        a0, 370715
1624:             lui          t5, 964759
                  sra          t6, ra, t2
                  auipc        s4, 182206
1627:             add          a2, a0, s1
                  bltu         a2, t2, 1646f
                  bne          t2, s3, 1630f
1630:             slt          s4, s11, ra
                  srli         a3, t0, 8
                  nop
                  bge          s5, zero, 1635f
                  sll          s7, s3, t4
1635:             xor          t4, t2, a3
                  sltiu        t5, a4, 123
                  sll          tp, s4, sp
                  addi         t5, s7, -1367
                  sra          s10, t0, tp
                  xor          ra, t2, a3
                  blt          s0, ra, 1642f
1642:             lui          t4, 385259
                  bne          s2, sp, 1662f
                  bne          sp, a4, 1650f
                  slti         t2, a1, -282
1646:             beq          s3, t6, 1663f
                  sltu         s3, a2, s3
                  and          a4, a0, a0
                  andi         t6, a4, -293
1650:             slti         s8, a2, 1689
                  nop
                  xor          s10, sp, t1
                  ori          zero, a0, -307
                  xori         t6, tp, -209
                  bge          zero, t6, 1667f
                  slli         t6, s2, 24
                  bne          ra, s5, 1670f
                  nop
                  add          s0, t5, s10
                  and          s5, s1, s1
                  srli         s4, s11, 23
1662:             srli         t5, t5, 4
1663:             and          s4, s7, a1
                  andi         s10, t4, 103
                  sltu         s0, a3, t6
                  xori         s6, a4, -1269
1667:             bgeu         a1, s8, 1669f
                  sub          a4, a6, t6
1669:             sra          t2, a1, sp
1670:             addi         s2, s9, -930
                  slt          s2, s2, a1
                  bne          a4, s5, 1680f
                  bge          s8, t4, 1681f
                  blt          t3, ra, 1676f
                  srl          sp, tp, t0
1676:             ori          s7, s3, -459
                  nop
                  sltiu        s2, t5, -362
                  bge          s4, a0, 1692f
1680:             and          t3, s10, s11
1681:             beq          zero, s11, 1695f
                  ori          t4, t2, -1362
                  andi         a4, t0, 1093
                  ori          t1, s10, 3
                  slli         s10, gp, 5
                  andi         ra, t3, -1579
                  slli         zero, t1, 6
                  srli         t3, gp, 25
                  slt          a4, a0, a3
                  sltu         a2, s11, t5
                  sltiu        s8, s10, 969
1692:             nop
                  srl          a6, s6, gp
                  bge          zero, s3, 1711f
1695:             beq          s3, gp, 1704f
                  nop
                  srli         t5, s11, 31
                  andi         a2, s1, 542
                  ori          a0, t5, -232
                  sltu         a3, a3, t2
                  srai         a7, a0, 30
                  lui          a0, 368026
                  srl          sp, s4, s1
1704:             addi         t4, ra, -1651
                  bltu         s11, t4, 1723f
                  add          s8, a7, a3
                  srai         s3, s7, 19
                  and          a3, t5, a1
                  blt          s10, s6, 1722f
                  bgeu         a1, t3, 1718f
1711:             sltu         a3, s1, a6
                  or           t6, a7, ra
                  sltu         s10, s3, gp
                  srl          s5, s0, s11
                  and          s7, ra, t0
                  slt          zero, s9, s8
                  ori          a4, t0, 389
1718:             sltu         s4, a2, sp
                  bltu         s2, s8, 1722f
                  sltiu        a2, s0, 2033
                  bgeu         a4, s11, 1722f
1722:             sltiu        s10, s2, -406
1723:             slt          tp, sp, a6
                  slti         sp, s11, -1479
                  srl          t6, s1, a7
                  sltiu        a7, a1, 1795
                  beq          t4, s9, 1736f
                  sub          a1, s4, gp
                  sll          a4, a3, s10
                  sltiu        s11, s8, 1815
                  beq          a0, s5, 1734f
                  addi         t3, s3, 701
                  srai         t4, ra, 24
1734:             bne          a2, a4, 1750f
                  bgeu         a5, s3, 1746f
1736:             beq          t6, t1, 1749f
                  ori          sp, s9, 432
                  andi         ra, s3, 593
                  sub          a5, a5, zero
                  blt          t2, s6, 1742f
                  beq          s8, t6, 1756f
1742:             addi         gp, zero, -1786
                  sll          a2, s11, t6
                  and          a3, s9, a1
                  sltu         a4, s1, s1
1746:             slt          a2, t2, a7
                  srl          s3, tp, s0
                  srli         a2, tp, 2
1749:             nop
1750:             xor          a2, a2, ra
                  slt          t2, a5, a1
                  slli         s5, tp, 2
                  sll          t6, s7, s1
                  andi         s5, t6, 1773
                  bgeu         s10, t3, 1756f
1756:             or           s10, t4, s2
                  srli         s6, s6, 15
                  sltiu        s7, t5, 1775
                  sltu         a4, a4, t2
                  sll          gp, s9, s3
                  sltu         a4, s9, a2
                  addi         s0, s1, 282
                  lui          sp, 856102
                  sra          s7, a3, s3
                  slti         t2, s9, 705
                  srl          a5, s5, t6
                  lui          a3, 937486
                  sll          a5, t2, s11
                  bltu         a1, a4, 1770f
1770:             xori         a1, s6, -1286
                  sltiu        a7, a2, -1376
                  xor          s6, t5, s8
                  ori          s7, s6, 522
                  lui          t3, 360724
                  xor          tp, s0, s7
                  slti         gp, a4, 728
                  auipc        s7, 969683
                  nop
                  blt          sp, s5, 1795f
                  bne          s9, a3, 1793f
                  la           sp, region_1+949 #start riscv_load_store_rand_instr_stream_1
                  sb           a7, -462(sp)
                  lbu          a1, -148(sp)
                  srai         t4, a3, 26
                  ori          a0, a3, -849
                  lb           ra, 944(sp)
                  lbu          gp, -174(sp)
                  sh           t5, 751(sp)
                  add          s10, gp, s3
                  lh           a7, -683(sp)
                  lbu          gp, 292(sp)
                  sh           s6, 1017(sp)
                  add          a6, s9, a6
                  addi         a5, t0, 1325
                  lbu          tp, 374(sp)
                  sub          zero, s8, zero
                  sub          s8, s7, ra
                  xori         s3, s0, -1467
                  slt          t1, zero, a2
                  srli         s5, s0, 31
                  lbu          s4, -162(sp)
                  sltiu        s6, s1, 1528
                  lb           s2, 874(sp)
                  sltiu        s11, t2, 1193
                  add          s11, a2, t3
                  sb           s3, 836(sp)
                  lb           t3, 686(sp)
                  lb           t4, 278(sp)
                  lbu          s2, -5(sp)
                  lbu          s11, -755(sp)
                  xor          a4, a6, t3
                  auipc        a4, 728627
                  sb           a7, -582(sp)
                  or           a1, tp, ra
                  addi         s7, s10, 1452
                  srli         t4, s9, 11
                  lb           a4, -560(sp)
                  or           s0, s10, s2
                  slt          zero, zero, s3
                  lbu          a5, -573(sp)
                  sb           s8, 341(sp)
                  lb           s4, 373(sp)
                  lb           t5, 392(sp)
                  lb           s11, -886(sp)
                  sh           a5, -33(sp)
                  lbu          s2, -599(sp)
                  sb           s7, -94(sp)
                  and          ra, t4, ra
                  lhu          a4, -789(sp)
                  sb           s7, -472(sp)
                  lb           a5, -845(sp)
                  sb           s9, -334(sp) #end riscv_load_store_rand_instr_stream_1
                  addi         s4, a6, -242
                  blt          a4, t6, 1784f
                  bne          a5, ra, 1784f
1784:             sra          t6, s4, a7
                  auipc        s2, 804805
                  sltiu        a4, t2, 592
                  sll          s5, s9, t0
                  sll          t1, s7, ra
                  or           a5, sp, sp
                  bgeu         s4, s11, 1796f
                  ori          t3, s0, -725
                  sltu         s2, a1, ra
1793:             beq          s1, a4, 1805f
                  bge          s11, s7, 1808f
1795:             lui          a3, 401170
1796:             nop
                  sra          s2, s4, t5
                  lui          a1, 188325
                  bltu         t1, s4, 1808f
                  lui          sp, 613226
                  add          sp, t1, a3
                  srli         a1, t1, 28
                  auipc        s7, 345372
                  ori          tp, s3, 554
1805:             ori          s5, t3, 212
                  ori          t4, zero, -730
                  sub          gp, s2, gp
1808:             xor          a4, t0, a1
                  bne          s7, a2, 1822f
                  sltu         s0, a0, s7
                  sll          s4, ra, tp
                  ori          s10, a5, 1701
                  add          a2, s9, s2
                  andi         s5, t4, 923
                  ori          t6, a2, 1265
                  beq          s1, ra, 1834f
                  add          s8, t6, s2
                  nop
                  auipc        a6, 341613
                  xori         a4, s3, 1802
                  slt          a2, s4, a4
1822:             auipc        s2, 191510
                  xori         t1, t4, -742
                  beq          ra, s3, 1837f
                  slti         a2, s6, 1926
                  auipc        s3, 392472
                  and          t2, sp, t1
                  ori          a6, s4, -1919
                  auipc        a1, 106249
                  blt          a4, s3, 1847f
                  and          t5, a2, a5
                  bgeu         s4, s3, 1847f
                  and          s7, s8, a7
1834:             addi         t6, ra, -187
                  beq          s9, t2, 1854f
                  nop
1837:             bltu         a4, t1, 1839f
                  srai         sp, s11, 30
1839:             beq          a6, s6, 1841f
                  sltu         s4, a0, tp
1841:             sll          t1, a3, s10
                  andi         s10, t1, 593
                  lui          a1, 420169
                  lui          s3, 91813
                  add          s10, s9, s10
                  sltu         s11, t5, s6
1847:             auipc        s11, 108344
                  nop
                  srl          s8, zero, s6
                  srl          a6, s0, s6
                  slti         a7, s1, -1822
                  sll          t3, gp, a3
                  xor          a7, s4, t4
1854:             beq          t2, s8, 1871f
                  slti         tp, a3, 1227
                  andi         a2, t2, -1079
                  srl          s0, t2, t6
                  addi         ra, tp, -1429
                  bne          a2, a0, 1862f
                  slti         t3, s2, 637
                  lui          a5, 732582
1862:             and          a7, t6, t1
                  xori         a5, a1, -1725
                  sub          s8, t4, s3
                  sll          t6, s2, sp
                  slt          s4, s2, t4
                  sll          t3, zero, a5
                  beq          a4, s9, 1886f
                  srli         t1, t3, 29
                  andi         t4, t6, 877
1871:             nop
                  slti         s7, s0, -450
                  andi         s4, s3, -748
                  slli         a6, sp, 17
                  auipc        a0, 1007588
                  srai         s0, a1, 25
                  nop
                  andi         s6, s8, -2007
                  beq          s4, t0, 1890f
                  bltu         a5, a4, 1889f
                  slli         a2, a6, 7
                  sltiu        a2, t4, 646
                  or           s8, a5, s9
                  bne          s10, s0, 1885f
1885:             bne          gp, s8, 1888f
1886:             add          s3, t5, s1
                  bge          a5, t4, 1895f
1888:             auipc        a4, 823881
1889:             ori          t4, s9, 1152
1890:             slti         t6, a2, -1889
                  lui          s8, 614913
                  srl          a3, gp, a0
                  andi         s11, t4, 1836
                  xori         ra, t3, -373
1895:             or           s5, a4, s9
                  bgeu         t4, t5, 1898f
                  sra          s3, s7, s5
1898:             sltiu        zero, t5, 1292
                  andi         s2, a1, 1201
                  bge          s6, s0, 1907f
                  add          s4, t2, t6
                  lui          s7, 372884
                  slti         a4, s9, 566
                  and          s4, a1, a7
                  bne          a3, t2, 1907f
                  add          s8, a0, a2
1907:             xor          t2, a3, s6
                  sub          s4, gp, s6
                  slli         s11, s0, 28
                  sra          t2, s1, s10
                  sltiu        a0, s8, 1692
                  xor          t5, s10, a4
                  sub          ra, s6, s9
                  nop
                  lw           t1, 4(t0)
                  addi         t0, t0, 52
                  nop
                  and          s3, a4, zero
                  srai         gp, t0, 26
2608:             addi x4, x6, 0
2608:             jalr x4, x4, 0
sub_1:            slt          s8, s11, sp
                  xori         s7, s7, -516
                  addi         t0, t0, -24
                  slli         s2, t5, 14
                  and          a7, s6, s11
                  add          t5, s6, a4
                  or           a5, a2, a1
                  andi         t2, t6, 742
                  srai         t2, a0, 23
                  sw           t1, 4(t0)
                  sltu         a4, s11, t0
                  srai         zero, s11, 28
                  la           sp, region_0+1926 #start riscv_load_store_rand_instr_stream_2
                  lh           t6, -46(sp)
                  sll          a2, t5, s8
                  lb           s10, -16(sp)
                  slt          s7, t0, a5
                  lbu          ra, -17(sp)
                  slli         ra, s3, 9
                  lb           s6, -18(sp)
                  lhu          a5, -40(sp)
                  and          a2, sp, t5
                  lb           s4, 38(sp)
                  lh           s10, -52(sp)
                  ori          s10, s5, -287
                  srli         s7, s8, 21
                  lh           zero, 14(sp)
                  lbu          a0, 5(sp)
                  lb           s10, 59(sp)
                  lh           gp, -14(sp)
                  srli         t3, s4, 6
                  sw           sp, 62(sp)
                  slli         s10, s11, 29
                  lb           s7, -32(sp)
                  lbu          ra, 33(sp)
                  lb           t1, -39(sp)
                  sltu         a3, t6, a2
                  xori         a2, a4, 592
                  lb           s2, 54(sp)
                  nop
                  lbu          t4, 43(sp)
                  nop
                  nop
                  sh           t0, -58(sp)
                  lb           t4, -11(sp)
                  sll          s8, t6, s1
                  xor          s8, sp, s8
                  sll          t5, s9, sp
                  sll          a3, s11, s5
                  srli         s6, gp, 30
                  lb           a6, -63(sp)
                  sb           s10, 39(sp)
                  slli         a6, s0, 2
                  xor          a3, a5, s2
                  srli         s10, s9, 31
                  lbu          a1, -36(sp)
                  lbu          zero, -17(sp)
                  lhu          t6, -16(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1798 #start riscv_load_store_rand_instr_stream_0
                  or           a6, s11, ra
                  sltu         a1, s4, t3
                  sh           s5, 2(sp)
                  sh           a7, -8(sp)
                  sb           s0, 11(sp)
                  auipc        t5, 5719
                  lb           ra, -7(sp)
                  sb           t6, 7(sp)
                  slti         a1, a1, -743
                  ori          ra, a3, 334
                  sb           a4, 9(sp)
                  lb           a5, -7(sp)
                  sb           s2, -3(sp)
                  lbu          a2, -12(sp)
                  add          s10, t0, s3
                  lbu          a2, 15(sp)
                  andi         s8, a1, -423
                  slti         s6, gp, 1963
                  lb           zero, 9(sp)
                  sw           zero, 10(sp)
                  add          s11, a3, s11
                  or           a4, a2, t2
                  sb           ra, 13(sp)
                  sub          s4, s5, ra
                  sra          a1, t2, s10
                  srai         a3, s10, 25
                  sh           s1, 2(sp)
                  ori          a5, t5, 750
                  ori          gp, s7, -259
                  xor          t3, a6, s2
                  sh           t0, -8(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_0+1196 #start riscv_load_store_rand_instr_stream_1
                  sra          a3, t0, t3
                  add          a6, a3, s2
                  lb           s7, 10(s8)
                  lb           s7, -14(s8)
                  lw           s3, 0(s8)
                  sll          t5, s3, s7
                  lbu          sp, -11(s8)
                  slli         sp, zero, 18
                  sltu         zero, s1, t6
                  xori         t5, a6, -164
                  srl          a0, s4, s10
                  sltiu        s7, a1, 334
                  sra          s11, sp, t6
                  andi         a0, s1, -187
                  srli         s6, s3, 19
                  sb           a0, 6(s8)
                  srl          s0, tp, ra
                  sb           gp, -12(s8)
                  addi         a4, t3, 545
                  lhu          a3, 12(s8)
                  xor          s6, t2, s2
                  sll          t1, t5, s4
                  auipc        sp, 105054
                  slli         s10, s4, 15
                  lh           s5, -10(s8)
                  and          t5, t6, t0
                  srli         t3, t5, 7
                  xor          a0, s9, s8
                  sb           s3, -6(s8)
                  srai         a5, t6, 24
                  sb           tp, 15(s8) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_1+1094 #start riscv_load_store_rand_instr_stream_3
                  lw           gp, 30(ra)
                  auipc        s0, 215841
                  slt          tp, zero, t3
                  srli         a1, a5, 29
                  sb           s9, -45(ra)
                  lhu          t3, 40(ra)
                  lbu          a6, -45(ra)
                  xori         a4, t1, 459
                  lbu          tp, -35(ra)
                  sb           s0, 28(ra)
                  lb           t5, 18(ra)
                  lb           a4, -25(ra)
                  lb           s7, -31(ra)
                  lbu          tp, 63(ra)
                  sb           zero, 33(ra)
                  sra          a6, s6, a7
                  or           s7, a0, a4
                  sra          s0, a0, sp
                  sh           zero, 64(ra)
                  sll          gp, ra, a7
                  srai         a4, s6, 13
                  sh           s6, -62(ra)
                  lh           a4, -4(ra)
                  ori          a3, t3, -1205
                  lw           t3, -22(ra)
                  lbu          a3, -43(ra)
                  lb           a2, 50(ra)
                  xori         t3, gp, 691
                  lbu          t2, 51(ra)
                  sb           ra, -43(ra)
                  or           a3, a4, a2
                  add          t6, s4, a0
                  slti         a7, s4, 1911
                  lb           a7, 58(ra)
                  sh           gp, 52(ra)
                  lb           s3, 11(ra)
                  or           tp, s9, sp
                  sub          s10, s11, a4
                  lhu          a4, -18(ra) #end riscv_load_store_rand_instr_stream_3
                  beq          s3, a1, 13f
                  srli         a6, s8, 22
                  srai         s3, t0, 31
                  beq          s5, s7, 10f
                  ori          s0, t2, -33
                  sltu         a2, t4, t4
                  xor          a1, s10, a5
                  bne          a5, zero, 24f
                  srai         s0, s8, 7
                  bge          t1, s7, 17f
10:               xori         gp, a5, -1187
                  add          a6, s1, s8
                  slti         a7, s10, -200
13:               sub          tp, s8, s11
                  sltu         s3, s1, a3
                  auipc        sp, 119112
                  and          a6, t5, zero
17:               slli         a4, s5, 10
                  addi         t2, a3, -279
                  and          a0, a4, a0
                  lui          s4, 863083
                  lui          t1, 416160
                  bge          s10, a4, 32f
                  srl          a2, a2, s7
24:               blt          gp, t3, 29f
                  and          gp, s4, s11
                  add          s6, a2, s10
                  xor          s5, t0, tp
                  bltu         s4, s0, 36f
29:               srl          a3, s5, s1
                  slti         t3, tp, -1074
                  addi         sp, a6, -673
32:               bltu         a0, s0, 33f
33:               bne          a1, sp, 37f
                  beq          s0, gp, 53f
                  slt          t3, s3, ra
36:               bne          t6, s8, 51f
37:               and          a0, a4, gp
                  srai         sp, s4, 8
                  srl          s2, s9, s10
                  bgeu         a4, ra, 41f
41:               bgeu         s10, a4, 51f
                  addi         a1, sp, -427
                  add          s5, s4, s3
                  addi         t4, s6, -1636
                  ori          s4, t6, -1584
                  and          t5, a5, ra
                  blt          a0, s8, 56f
                  add          t1, t3, t5
                  lui          a7, 904379
                  lui          s2, 812626
51:               andi         s3, tp, 1759
                  sltu         s2, s11, t2
53:               sltu         s2, s6, a1
                  srai         a5, s2, 4
                  bne          s7, t4, 58f
56:               bltu         t1, s8, 69f
                  slli         s5, s8, 3
58:               slti         a7, s7, 701
                  xor          s11, t6, t2
                  bltu         s8, s5, 75f
                  add          s2, a6, sp
                  xori         a1, t3, -458
                  lui          s8, 976813
                  nop
                  addi         t1, a1, 1105
                  lui          sp, 725657
                  srai         gp, s3, 27
                  xor          s0, zero, tp
69:               bge          s8, t0, 85f
                  xori         zero, s9, -85
                  srli         s3, s1, 27
                  bgeu         a2, s5, 82f
                  add          s3, t6, a7
                  blt          a6, t1, 87f
75:               bge          t4, gp, 90f
                  addi         tp, s5, 651
                  slli         t1, t1, 11
                  addi         a2, a1, -913
                  nop
                  slt          tp, t3, t5
                  srli         sp, t0, 6
82:               slt          zero, a2, t4
                  srai         t6, s1, 28
                  xor          t3, a4, s5
85:               srli         a7, s6, 28
                  addi         t5, zero, -654
87:               blt          t3, s1, 94f
                  nop
                  sub          a2, s1, a1
90:               slti         s3, a1, -820
                  xori         a0, s6, 975
                  add          s2, t5, s9
                  and          s8, a4, a0
94:               xori         a5, a6, 1507
                  ori          ra, s8, 1195
                  sll          s7, s0, a6
                  sltu         s6, tp, a5
                  bltu         t0, ra, 114f
                  andi         a7, s9, 1300
                  bltu         t1, s3, 101f
101:              sll          a7, t1, t4
                  bne          gp, t1, 109f
                  srli         s8, s9, 4
                  bltu         gp, a3, 111f
                  beq          s5, s1, 110f
                  and          a3, ra, a5
                  sltu         t1, s8, a7
                  lui          t5, 861685
109:              bgeu         a3, gp, 119f
110:              blt          s0, s7, 120f
111:              auipc        sp, 215871
                  srai         s5, t2, 1
                  srai         t5, zero, 10
114:              bne          a4, s8, 121f
                  xor          t1, t1, t0
                  srli         t6, gp, 29
                  srli         a2, s8, 9
                  srai         sp, s3, 27
119:              or           s7, s2, s6
120:              bge          t4, a2, 136f
121:              sra          s6, t1, ra
                  lui          t6, 455124
                  sra          a1, a6, a1
                  ori          a7, a7, 292
                  lui          a2, 19811
                  slt          sp, a5, s3
                  blt          s11, s11, 144f
                  addi         s8, gp, 1894
                  sra          s0, s7, t3
                  sub          s10, s6, s1
                  xor          a6, s0, a4
                  andi         s11, gp, -656
                  srli         t1, t0, 16
                  bge          s10, a6, 139f
                  slt          zero, a2, s2
136:              sra          zero, a1, a5
                  or           s2, s9, s10
                  bge          t6, t1, 153f
139:              bne          s8, gp, 149f
                  xori         zero, s7, 1617
                  slt          a0, a7, s11
                  sltiu        t2, s4, 266
                  sub          a7, s11, a5
144:              sub          s10, s11, a7
                  andi         a6, t1, -1236
                  sub          s7, s9, a1
                  bltu         s2, a4, 154f
                  auipc        s4, 593891
149:              beq          a7, tp, 157f
                  srai         t2, a3, 16
                  and          t6, s0, s11
                  la           t4, sub_4
                  ori          t5, t1, 114
                  auipc        ra, 649620
                  srli         s4, t5, 26
                  andi         s2, a7, -1001
                  addi         t4, t4, 169
                  srai         s0, sp, 24
sub_1_j5:         jalr         t1, t4, -168 #jump sub_1 -> sub_4
                  auipc        t3, 779051
153:              sub          zero, s6, a1
154:              lui          s4, 842544
                  blt          s4, a2, 170f
                  sltiu        s3, a3, -1673
157:              nop
                  slti         a1, a2, 290
                  nop
                  blt          s10, s0, 161f
161:              slti         sp, s11, -1868
                  xori         a4, s0, -1556
                  bltu         s11, s1, 170f
                  sra          s3, a7, s8
                  slli         a2, t5, 31
                  bgeu         s1, a4, 173f
                  beq          a1, a7, 183f
                  lui          gp, 536688
                  andi         a1, a2, 1029
170:              slti         tp, a3, -1548
                  sltiu        a6, s8, -28
                  slt          s8, a7, a4
173:              or           gp, s0, s4
                  sltu         t5, ra, zero
                  sra          s2, s5, sp
                  auipc        s11, 312616
                  xori         s4, a6, -1314
                  sra          s11, t3, a5
                  nop
                  bgeu         t3, t6, 193f
                  sll          s5, s0, ra
                  ori          t6, zero, 589
183:              ori          s6, s9, 456
                  andi         tp, t6, -1984
                  ori          s7, s10, 396
                  auipc        tp, 944594
                  lui          t2, 769199
                  slli         t1, s3, 22
                  sltiu        a0, t1, 164
                  nop
                  sltiu        s7, s11, 1476
                  bne          sp, tp, 202f
193:              lui          s5, 693174
                  slt          s2, s7, t0
                  slt          tp, sp, s5
                  addi         s3, s8, 1317
                  lui          s4, 700330
                  addi         s5, s0, -929
                  ori          t6, s8, 969
                  srli         a3, t0, 22
                  sub          s7, s1, ra
202:              xor          s10, t3, t0
                  srl          a0, s4, a4
                  srli         t2, s2, 8
                  addi         tp, s5, -61
                  bgeu         a6, t6, 219f
                  lui          t1, 186161
                  addi         t5, gp, -1770
                  slti         sp, s3, -1232
                  bgeu         a7, tp, 229f
                  add          a0, t3, zero
                  bge          sp, s8, 222f
                  srai         tp, t0, 2
                  bgeu         a1, sp, 221f
                  sra          s4, a1, t1
                  bge          ra, t4, 229f
                  sll          a5, s6, t6
                  or           s6, s5, t1
219:              addi         s11, a6, 1116
                  lui          s0, 158974
221:              sll          s0, s4, t5
222:              bne          s11, t4, 230f
                  srai         t4, t0, 24
                  bltu         t4, s3, 234f
                  add          a6, tp, a2
                  srli         tp, s5, 14
                  sra          a6, a1, a7
                  bltu         s6, tp, 229f
229:              auipc        gp, 658062
230:              or           s6, s6, tp
                  slt          zero, a7, a0
                  slti         gp, ra, 909
                  add          a5, s6, t3
234:              bltu         a4, t4, 241f
                  addi         s7, t2, 1294
                  addi         a6, s8, -118
                  slli         a5, sp, 10
                  slti         gp, t0, -505
                  andi         t5, t4, -1390
                  slt          tp, s11, s1
241:              sll          a2, a4, a6
                  sltiu        gp, s4, 1875
                  bltu         s9, t0, 248f
                  ori          tp, sp, 592
                  sub          a5, s7, a6
                  addi         t4, t4, -915
                  srli         s6, a3, 12
248:              sltu         t5, a2, s9
                  addi         s0, sp, 134
                  lui          s4, 78728
                  nop
                  addi         t2, a5, -600
                  slti         s6, sp, -848
                  beq          t0, a0, 263f
                  lui          tp, 53719
                  bltu         gp, s3, 260f
                  bltu         gp, a4, 258f
258:              or           s7, t0, a2
                  nop
260:              srli         t3, t5, 26
                  auipc        s4, 786198
                  bne          sp, a2, 277f
263:              ori          t1, t6, 994
                  and          a3, t2, tp
                  srli         ra, tp, 24
                  xori         tp, s3, 1594
                  addi         t1, t0, 1933
                  slti         ra, s4, -2010
                  auipc        gp, 27995
                  xor          s10, s1, a5
                  addi         a1, a4, 1891
                  addi         s6, a5, -1602
                  xor          s5, s5, s2
                  auipc        t3, 1038678
                  or           s8, t5, t4
                  xor          t5, s1, s9
277:              auipc        s0, 702002
                  bgeu         s4, t3, 281f
                  srl          s8, s8, tp
                  srl          a0, a1, t5
281:              sltu         ra, zero, s5
                  sub          a2, a2, t3
                  blt          a5, s4, 293f
                  addi         s5, s4, -1290
                  bne          a5, s7, 300f
                  sub          s5, t2, a4
                  addi         sp, s2, -705
                  or           t3, s11, a0
                  bge          tp, a1, 294f
                  blt          ra, a4, 298f
                  ori          s2, t4, 1457
                  bge          zero, gp, 299f
293:              xori         sp, t0, -719
294:              nop
                  srli         a6, s2, 29
                  sub          t3, s2, a6
                  bne          t6, t6, 307f
298:              sub          a3, a5, s4
299:              slti         s0, s0, -193
300:              and          a5, s5, t3
                  bgeu         a5, s7, 308f
                  sltiu        s2, s5, -11
                  slti         s0, zero, -1772
                  auipc        a5, 239091
                  or           a3, t0, a3
                  slli         s11, a0, 25
307:              xor          gp, a7, t1
308:              sltiu        t4, t2, -176
                  srli         zero, t1, 28
                  sra          s6, sp, s3
                  add          s3, tp, a7
                  srl          s10, tp, a3
                  bltu         t0, zero, 326f
                  add          s6, s7, sp
                  sltu         s2, t0, zero
                  srai         s7, a5, 17
                  xor          s3, s11, t4
                  and          a5, a6, sp
                  bge          t2, a5, 324f
                  xor          s10, a6, a5
                  slli         a4, s10, 1
                  or           s4, tp, a6
                  slti         zero, s1, -1581
324:              nop
                  slt          t5, t0, t6
326:              sll          t3, a3, s11
                  bgeu         a2, ra, 331f
                  srai         t1, a3, 15
                  bge          t4, s0, 345f
                  addi         t1, s9, 788
331:              slli         s2, zero, 5
                  andi         a4, sp, 1326
                  sltiu        a0, gp, -765
                  add          s5, a3, t5
                  addi         s2, a6, -846
                  bltu         a0, a2, 353f
                  ori          s3, a2, -303
                  beq          tp, s2, 348f
                  srl          s10, a4, t0
                  and          s0, s2, t1
                  or           s3, s11, t6
                  bltu         t2, s7, 351f
                  xor          tp, ra, s2
                  srai         s0, s9, 19
345:              addi         tp, gp, -7
                  slli         a0, t3, 20
                  beq          sp, tp, 366f
348:              and          s5, sp, a0
                  sltiu        s5, s7, -1502
                  addi         a7, s8, 1700
351:              bge          a7, s7, 367f
                  lui          s2, 587572
353:              addi         t2, t3, -1847
                  add          a1, s4, t4
                  sll          gp, s1, t2
                  ori          ra, t5, 1821
                  sra          zero, a1, s3
                  add          sp, a6, gp
                  srli         zero, tp, 2
                  bltu         s1, s11, 370f
                  beq          s7, t6, 362f
362:              addi         a1, a6, -1011
                  ori          a0, t0, 72
                  or           t3, zero, s2
                  slli         a5, t1, 7
366:              sltu         s5, gp, a0
367:              addi         tp, t4, -571
                  or           a7, s7, s3
                  bltu         zero, t1, 372f
370:              or           a6, a0, a3
                  bge          a3, ra, 378f
372:              beq          s6, t3, 373f
373:              slli         s10, s3, 9
                  sltu         gp, a6, s7
                  slti         s2, s3, 1756
                  xori         a3, a5, -1822
                  bltu         t4, zero, 387f
378:              bltu         s1, t2, 385f
                  beq          s0, s5, 394f
                  sll          a6, a2, t0
                  ori          a0, a2, 231
                  ori          zero, s6, 1639
                  nop
                  sltiu        s5, a5, 257
385:              slti         zero, s3, 666
                  srli         t2, s10, 1
387:              sll          zero, s8, t1
                  srl          a7, zero, s3
                  blt          s6, tp, 402f
                  sltu         sp, t0, s0
                  slti         s10, s2, 1378
                  sub          a0, s4, s6
                  and          a2, zero, zero
394:              xori         t3, s4, 301
                  slt          t5, s2, a5
                  sltiu        zero, s7, 1310
                  beq          a0, a2, 405f
                  addi         t3, s7, 1059
                  or           a0, s3, a4
                  andi         tp, ra, -1883
                  sub          tp, a3, s10
402:              srli         s4, s0, 20
                  srai         s7, a1, 0
                  and          s4, t0, gp
405:              slti         a1, sp, 1245
                  auipc        s2, 500778
                  bne          t0, t1, 420f
                  nop
                  add          s2, t4, s11
                  bne          t3, s5, 420f
                  slti         sp, a0, -1288
                  auipc        s0, 123730
                  slt          t5, s0, s11
                  sub          sp, t5, s8
                  srli         s0, t6, 12
                  bltu         t4, t4, 417f
417:              sltiu        s6, a6, -30
                  addi         tp, ra, -114
                  add          t2, s1, s10
420:              andi         a4, s3, -536
                  srli         s4, tp, 5
                  sltiu        s10, tp, 223
                  sll          s7, s9, t6
                  slti         a3, t1, 975
                  sll          a2, s0, t0
                  ori          t4, s4, -339
                  slti         a2, s11, 871
                  xor          t6, a7, a0
                  or           t1, a6, a6
                  beq          s3, a0, 437f
                  andi         s10, s3, 973
                  bge          s9, s8, 447f
                  nop
                  add          tp, a5, a7
                  addi         s2, t6, -1582
                  add          s11, s7, t1
437:              slti         s0, s11, -718
                  beq          a7, t5, 448f
                  nop
                  or           t5, s2, a1
                  bne          ra, a7, 454f
                  bge          sp, s0, 455f
                  auipc        t1, 183191
                  sub          s0, a5, s11
                  bltu         a3, t0, 448f
                  srli         s3, s4, 4
447:              slli         s4, s0, 30
448:              srl          s7, s0, t6
                  lui          sp, 597974
                  blt          t1, a6, 457f
                  ori          a3, t5, 249
                  srli         t1, s9, 8
                  blt          t2, s6, 463f
454:              xor          ra, a7, a1
455:              sll          t6, s11, a5
                  beq          s2, s4, 465f
457:              xori         s8, t0, -1758
                  sub          t3, t4, a3
                  lui          s11, 571197
                  srai         s5, s6, 9
                  bge          s2, t6, 468f
                  nop
463:              srai         a3, a5, 14
                  nop
465:              bne          a4, t6, 473f
                  sll          t3, a7, a5
                  bgeu         a6, s4, 484f
468:              bne          s0, s3, 469f
469:              nop
                  bltu         s7, t6, 486f
                  beq          tp, a2, 478f
                  and          a2, zero, t3
473:              lui          t6, 788079
                  auipc        s0, 175292
                  sltu         a1, sp, sp
                  bgeu         ra, t1, 489f
                  xor          a2, tp, a0
478:              srai         gp, s11, 0
                  add          s6, s9, t6
                  bge          ra, t3, 487f
                  xor          sp, a4, s0
                  bne          tp, s5, 492f
                  xor          s0, t5, a5
484:              slli         a0, a5, 25
                  bgeu         s0, s6, 495f
486:              bge          t2, a1, 491f
487:              sll          s11, s3, t0
                  bgeu         a3, s0, 489f
489:              andi         a5, s3, 710
                  lui          a5, 18438
491:              add          s6, s2, s7
492:              sra          zero, t3, sp
                  slt          a4, a2, s4
                  xor          t1, s7, s1
495:              sub          t4, s6, a6
                  auipc        s2, 804906
                  xori         s3, a4, -848
                  beq          t0, t6, 517f
                  bge          s8, tp, 515f
                  xor          zero, t6, s11
                  bgeu         a5, s0, 502f
502:              sltiu        zero, sp, 1333
                  sltiu        s4, s2, -499
                  xor          s7, s10, s8
                  sltiu        sp, s6, -481
                  sltu         a5, s2, s3
                  srli         a5, t3, 1
                  blt          t6, s1, 516f
                  slti         s6, s11, -1976
                  srli         ra, s3, 19
                  srli         a1, a2, 15
                  srl          a3, t0, a0
                  slt          zero, s6, a1
                  sltiu        s5, s0, 1793
515:              lui          a5, 92645
516:              add          a4, ra, a6
517:              andi         sp, zero, -580
                  sub          s11, a1, s6
                  sra          s4, ra, s10
                  bne          sp, tp, 535f
                  sub          s7, t3, s3
                  or           t6, ra, s5
                  add          a3, a6, s11
                  slti         t3, tp, -744
                  andi         a1, s5, -674
                  sltiu        t4, a3, -826
                  nop
                  sra          t3, t4, s10
                  blt          s9, tp, 536f
                  addi         a1, t3, 907
                  srli         gp, s3, 4
                  srli         a0, s1, 15
                  srl          a7, t0, s10
                  srli         a3, s5, 19
535:              or           s11, a1, a3
536:              srai         a2, t5, 31
                  sra          a6, tp, gp
                  slti         t3, a7, 545
                  xori         s2, t3, -212
                  srli         s7, s4, 2
                  slt          s10, a5, t1
                  xori         t4, s6, 978
                  sll          gp, s1, t1
                  ori          a0, t6, 185
                  slli         t4, a0, 30
                  srli         t2, s5, 25
                  ori          a5, s10, 930
                  addi         a3, a2, -319
                  srli         ra, zero, 22
                  slt          zero, t0, a5
                  lui          s5, 574625
                  srai         a4, s6, 0
                  sra          s5, s5, s6
                  blt          a4, ra, 558f
                  beq          s4, s10, 560f
                  slt          s7, s4, t6
                  bge          t6, a2, 568f
558:              blt          s10, tp, 568f
                  lui          s6, 57999
560:              bge          a4, s6, 568f
                  slt          s7, a5, s6
                  and          tp, s7, s7
                  ori          s3, t5, 904
                  xori         s10, a3, 1727
                  blt          s1, s4, 568f
                  bltu         t5, a1, 567f
567:              ori          a3, t5, 1105
568:              xor          a7, t3, s1
                  andi         t3, s10, -621
                  slt          s0, t4, sp
                  sll          s10, t1, t5
                  sra          t6, a3, t2
                  lw           t1, 4(t0)
                  addi         t0, t0, 24
                  add          a0, s9, s7
                  andi         a0, a7, -510
                  srl          t5, a5, s1
                  sltu         s8, s7, a5
                  slt          a5, a6, t3
                  addi         a7, t4, -321
751:              addi x18, x6, 0
751:              jalr x18, x18, 0
sub_10:           srli         s6, t1, 26
                  auipc        a1, 620379
                  add          a6, s6, s4
                  slli         a6, s8, 17
                  ori          s7, s7, 1618
                  xori         s2, s8, -835
                  bne          t3, s7, sub_10_stack_p
                  lui          s11, 1032143
sub_10_stack_p:   addi         t0, t0, -20
                  sw           t1, 4(t0)
                  auipc        gp, 902674
                  la           s7, region_1+1904 #start riscv_load_store_rand_instr_stream_0
                  ori          s6, s5, -45
                  ori          a1, s9, -2022
                  sh           t3, -100(s7)
                  nop
                  sb           t4, -149(s7)
                  add          t6, a4, ra
                  andi         a1, t1, -1400
                  srli         a1, s2, 9
                  lhu          s10, -74(s7)
                  sb           gp, -73(s7)
                  sub          a0, t2, a5
                  sh           t1, -228(s7)
                  slt          a1, s1, s6
                  lbu          s3, -83(s7)
                  lw           a5, -48(s7)
                  sra          s2, gp, s8
                  lbu          t2, -149(s7)
                  xor          t1, sp, s1
                  lhu          s10, -56(s7)
                  sb           s10, -105(s7)
                  sb           a3, -218(s7)
                  lbu          t1, -213(s7)
                  sltiu        a7, a3, 1801
                  add          s2, zero, s9
                  slli         gp, a2, 28
                  lbu          sp, -113(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_1+1699 #start riscv_load_store_rand_instr_stream_2
                  add          a6, s9, s9
                  and          a1, t0, s9
                  lb           a4, 7(s5)
                  sw           s0, -11(s5)
                  lbu          s0, -6(s5)
                  sltu         zero, a1, sp
                  add          s4, s10, s3
                  lh           t1, -7(s5)
                  srai         a5, t1, 17
                  sw           t6, -11(s5)
                  lbu          t5, -4(s5)
                  sb           s4, -10(s5)
                  xori         s8, s2, -641
                  or           tp, t4, s2
                  lh           s6, 5(s5)
                  sb           t0, -6(s5)
                  sll          t1, t2, t0
                  lb           s3, 12(s5)
                  sb           a7, 12(s5)
                  lb           a0, -10(s5)
                  ori          t3, a0, 8
                  and          a6, t2, a7
                  lhu          a5, -9(s5)
                  lb           s11, 12(s5)
                  slt          t6, zero, ra
                  andi         a6, s5, -527
                  lb           s4, 8(s5)
                  sh           a1, -1(s5)
                  or           a5, a3, s0
                  auipc        a1, 83310
                  lb           s3, -6(s5)
                  sb           zero, -16(s5)
                  sh           s1, 3(s5)
                  nop
                  srl          t4, zero, a7
                  sltu         a1, s7, a5
                  lbu          zero, 14(s5)
                  sb           ra, -14(s5)
                  lb           t1, 7(s5)
                  lb           t4, -4(s5)
                  lb           s2, -9(s5)
                  lhu          t1, 1(s5)
                  ori          s0, a7, 1798
                  sh           s10, 11(s5)
                  lui          t5, 35058
                  sb           s7, 2(s5)
                  lbu          s11, 10(s5)
                  sltu         t3, t3, t0
                  lbu          s6, 14(s5)
                  add          t5, a2, a1
                  addi         a1, sp, -991
                  sltu         s0, s10, s8
                  lbu          t5, 0(s5) #end riscv_load_store_rand_instr_stream_2
                  lui          s5, 1000092
                  sltu         a6, a4, a6
                  srli         a1, ra, 22
                  sll          a4, s6, s0
                  andi         s6, t6, 461
                  bge          a3, s3, 24f
                  beq          s0, a7, 9f
                  srli         s7, a7, 11
                  xori         s5, t5, -1410
9:                bltu         s9, s3, 23f
                  or           ra, ra, s0
                  slli         t4, s2, 17
                  or           t5, s6, s11
                  sltu         a6, a2, s10
                  sra          a3, sp, t1
                  and          zero, s3, a5
                  slt          a3, t2, s3
                  lui          s7, 160378
                  addi         t6, tp, -1942
                  bltu         s7, s7, 20f
20:               sra          sp, t0, t1
                  slti         s3, t2, -867
                  xori         s6, a4, -395
23:               or           zero, a0, a6
24:               bltu         a3, t3, 39f
                  srai         ra, zero, 29
                  beq          sp, s6, 40f
                  sltiu        s2, s2, 1194
                  bne          zero, a2, 44f
                  lui          s2, 302497
                  beq          gp, a4, 41f
                  sltiu        s6, a6, -647
                  andi         s0, s1, -891
                  ori          a2, t5, -1412
                  bltu         s9, s2, 42f
                  slti         t1, a6, 964
                  add          t5, s9, s5
                  nop
                  or           s10, a1, zero
39:               slti         s10, s6, 1228
40:               srai         a5, zero, 0
41:               bgeu         a7, a2, 59f
42:               blt          a7, a3, 60f
                  xor          tp, a0, a0
44:               xor          a6, t6, zero
                  add          t4, s0, a0
                  slli         a1, s6, 4
                  xor          t2, t5, s9
                  srai         t4, a3, 27
                  blt          s6, a7, 60f
                  srli         a0, a2, 1
                  or           s7, s7, s11
                  sltu         a1, zero, s0
                  bne          s0, s3, 69f
                  slti         ra, s3, -33
                  bltu         s11, s10, 62f
                  slli         a1, s11, 8
                  auipc        s0, 934252
                  sub          s7, a1, t2
59:               auipc        a2, 65074
60:               xor          s10, gp, s7
                  sub          t2, t3, a5
62:               srl          t4, a0, t0
                  beq          a7, s9, 78f
                  bge          zero, a1, 74f
                  sra          s7, s0, s5
                  sltiu        t5, a3, -850
                  bgeu         s10, t3, 73f
                  sll          s8, a3, s7
69:               sll          t1, t5, a6
                  sltu         ra, t1, s6
                  addi         gp, a0, -1806
                  add          s6, s9, s8
73:               sltu         a6, s7, s0
74:               nop
                  and          a1, gp, sp
                  slt          a0, t1, t6
                  bltu         t0, s1, 92f
78:               slli         a0, s10, 2
                  sltu         t2, zero, tp
                  nop
                  xor          t5, s3, t4
                  slt          gp, s4, s1
                  bgeu         a0, a0, 92f
                  blt          s1, t0, 94f
                  srai         s4, t6, 15
                  sub          tp, s0, s9
                  bltu         t2, sp, 103f
                  auipc        s0, 61166
                  slt          zero, a6, tp
                  bne          a2, a4, 104f
                  sll          t2, s10, s11
92:               or           t5, gp, a4
                  slli         a7, ra, 1
94:               sll          a2, a2, s0
                  andi         t2, s3, 656
                  sra          a7, zero, s1
                  add          s6, a4, s5
                  or           s6, s8, s9
                  srl          ra, tp, s5
                  sltu         s6, t2, gp
                  srli         gp, s9, 20
                  bltu         sp, s3, 107f
103:              sub          a7, a2, s2
104:              slli         tp, a6, 18
                  auipc        a2, 721535
                  bltu         a3, a3, 117f
107:              nop
                  nop
                  xor          s11, zero, s9
                  bne          s9, gp, 111f
111:              slti         s0, a6, -1813
                  srl          s2, sp, s9
                  nop
                  sub          t5, a0, s11
                  xori         t5, a7, 1949
                  slti         s2, s7, 76
117:              bltu         s0, t1, 120f
                  bgeu         s7, s10, 120f
                  andi         sp, s4, 506
120:              ori          s5, s5, 1318
                  bgeu         s0, s11, 123f
                  sll          gp, s5, a2
123:              lui          a4, 107481
                  sra          a6, t2, gp
                  xor          a0, s10, a6
                  and          tp, t6, ra
                  slli         a2, t0, 5
                  slli         a2, t3, 23
                  blt          s10, a4, 139f
                  addi         a4, s3, 1008
                  blt          a4, a2, 149f
                  bne          a4, ra, 148f
                  srl          t2, zero, t4
                  sub          s11, a1, s9
                  auipc        t2, 597836
                  xori         t2, gp, -1948
                  andi         s7, a0, -1115
                  srli         s7, a0, 31
139:              xor          ra, a6, t0
                  addi         t4, zero, 1455
                  addi         tp, a2, 960
                  bgeu         zero, t2, 143f
143:              and          t2, zero, a2
                  addi         s4, sp, 1410
                  add          t6, a5, s1
                  ori          s3, a0, -1181
                  slti         zero, s8, -773
148:              addi         gp, s6, -1266
149:              or           tp, s10, s11
                  sra          t2, s9, t2
                  srai         t2, a0, 12
                  beq          a6, tp, 157f
                  beq          t0, a3, 156f
                  bge          tp, a5, 173f
                  ori          a0, t5, -539
156:              auipc        t2, 34189
157:              slt          zero, t6, a2
                  la           s3, region_1+712 #start riscv_load_store_rand_instr_stream_1
                  sltiu        sp, s4, -1934
                  auipc        a4, 951035
                  srl          s6, t4, s10
                  or           s10, s5, s2
                  andi         t2, s9, -707
                  or           t6, a3, a1
                  sw           s3, 672(s3)
                  lbu          t4, -585(s3)
                  and          t5, tp, t3
                  sll          sp, t4, a4
                  sh           s2, 236(s3)
                  srli         gp, t4, 23
                  lw           s2, 680(s3)
                  lhu          s5, 520(s3)
                  slti         a7, s5, 1519
                  andi         a3, s10, 320
                  lbu          s5, -319(s3)
                  lb           t4, 427(s3)
                  nop
                  sb           s8, -578(s3)
                  sb           a3, 649(s3)
                  lhu          s5, -672(s3)
                  sub          a1, s4, s5
                  sll          zero, a5, t0
                  sltiu        ra, s9, -567
                  lbu          s6, 288(s3)
                  addi         s6, a5, -778
                  sb           t0, 301(s3) #end riscv_load_store_rand_instr_stream_1
                  nop
                  slt          s10, a6, s4
                  srli         t1, zero, 19
                  auipc        t2, 965864
                  add          t6, s7, s2
                  addi         s11, a5, 1253
                  nop
                  srli         s2, gp, 22
                  nop
                  bgeu         s1, t3, 178f
                  slt          s5, a0, s3
                  bltu         s7, zero, 180f
                  srli         gp, s2, 14
                  auipc        sp, 71832
                  sra          a6, s10, s8
173:              ori          t1, a3, -1750
                  srai         gp, s0, 12
                  blt          ra, sp, 178f
                  srli         s5, a4, 23
                  sltiu        s0, s0, -250
178:              bne          a0, a5, 184f
                  srl          sp, a7, sp
180:              lui          tp, 195879
                  srl          s7, a4, a2
                  bge          a4, a5, 191f
                  slti         s4, s8, -1810
184:              srai         a3, s2, 0
                  addi         sp, s7, 1461
                  sll          s5, s8, a4
                  or           s11, a4, s11
                  addi         gp, s10, -415
                  sra          t4, gp, s0
                  sltu         a5, ra, a4
191:              andi         t4, a1, 2046
                  slt          t2, s0, a0
                  xor          a1, tp, s7
                  slt          a0, t3, t5
                  lui          a6, 748002
                  beq          s1, t2, 210f
                  srli         t5, s2, 19
                  addi         t5, s0, -433
                  add          a5, zero, tp
                  blt          s2, a6, 202f
                  srli         s0, s1, 10
202:              bgeu         t6, a7, 217f
                  srl          zero, gp, s0
                  addi         zero, zero, 1927
                  addi         a2, a7, -1252
                  slti         a3, a5, -1866
                  sra          sp, s5, t5
                  nop
                  andi         t6, a6, 536
210:              nop
                  srai         s6, s0, 24
                  andi         a1, a1, 630
                  sra          s7, zero, s0
                  blt          a4, zero, 224f
                  sltu         tp, s1, s4
                  and          a6, a1, sp
217:              slli         t1, a5, 24
                  slli         t2, a2, 25
                  lui          s2, 348601
                  andi         a5, a7, 264
                  nop
                  sub          ra, a3, a6
                  bgeu         t0, s11, 241f
224:              blt          s6, s0, 234f
                  bltu         s8, a3, 233f
                  slli         t5, a1, 17
                  sub          t6, s11, s8
                  bgeu         a4, t4, 242f
                  auipc        s11, 589869
                  or           tp, zero, ra
                  slti         s10, t5, -944
                  sra          s8, s3, s6
233:              xor          t1, tp, s4
234:              bgeu         tp, a2, 241f
                  bltu         s4, a4, 250f
                  bltu         s11, s2, 254f
                  lui          a4, 125895
                  addi         t1, s3, -1889
                  xor          zero, a5, s3
                  sltu         t2, s1, t1
241:              ori          tp, s2, 1683
242:              bltu         a0, zero, 256f
                  bltu         t1, a0, 258f
                  sltiu        a0, s11, 1317
                  add          s8, s3, s8
                  bge          s8, t4, 248f
                  or           a2, a2, a1
248:              sll          a1, t1, t2
                  andi         s8, a1, -1592
250:              bne          a5, s0, 266f
                  auipc        s7, 641925
                  bne          a7, ra, 253f
253:              srai         ra, t2, 7
254:              bgeu         s4, ra, 272f
                  slti         t3, sp, 882
256:              add          t2, s9, a2
                  srli         a4, t6, 28
258:              sltu         s10, ra, s11
                  sltu         zero, s7, t6
                  sll          t5, a0, a0
                  xori         s2, t1, -2019
                  andi         a1, s5, -2006
                  sltiu        tp, gp, 490
                  or           s10, s10, s1
                  bgeu         zero, s8, 275f
266:              bgeu         s1, a4, 282f
                  nop
                  addi         s4, a1, -392
                  xor          t2, gp, s0
                  blt          t2, s10, 281f
                  beq          s9, s0, 282f
272:              bgeu         a5, s3, 291f
                  ori          s10, s2, 944
                  lui          s6, 822548
275:              auipc        a6, 206332
                  sltu         s5, a7, a2
                  addi         t1, a4, 697
                  la           t1, region_1+1528 #start riscv_load_store_rand_instr_stream_3
                  slli         sp, s4, 6
                  lb           t2, 101(t1)
                  sltu         a7, s6, s6
                  ori          s4, t3, 1503
                  slli         ra, s7, 2
                  ori          a1, t3, -1019
                  slti         tp, a5, 1276
                  srli         a3, t3, 24
                  sltiu        t2, s10, 143
                  slti         zero, t2, -1258
                  sb           a4, -93(t1)
                  sb           s10, 107(t1)
                  xor          s4, a6, a3
                  sra          s4, s11, s3
                  xori         t5, a5, 493
                  or           s4, s3, s2
                  slt          s10, tp, a5
                  sb           s6, -106(t1)
                  lb           s10, 22(t1)
                  slli         s10, s1, 22
                  nop
                  lb           s6, -142(t1)
                  lb           a3, 132(t1)
                  sra          a7, s7, ra
                  lbu          s10, -245(t1)
                  lbu          ra, 231(t1)
                  lb           t5, -183(t1)
                  lb           a5, -55(t1)
                  nop
                  sh           s10, 36(t1)
                  sll          gp, s8, a3
                  sb           t6, 155(t1)
                  ori          a7, a2, -674
                  lbu          tp, -69(t1)
                  xor          t5, t6, a3
                  lbu          sp, 202(t1)
                  sb           a6, -2(t1)
                  srl          tp, s6, s0
                  ori          sp, s11, -1833
                  srl          gp, a4, s6
                  sb           t2, -74(t1)
                  lbu          a5, 221(t1)
                  andi         a4, a2, -968
                  ori          a0, s4, 1758
                  sh           s4, 14(t1)
                  lbu          s2, 102(t1)
                  lb           s4, -37(t1)
                  lhu          s3, 6(t1)
                  lhu          a4, 242(t1)
                  sb           zero, 65(t1) #end riscv_load_store_rand_instr_stream_3
                  add          a7, t5, s5
                  sll          a0, t3, t6
                  srai         ra, a2, 19
281:              slli         a3, a5, 31
282:              slt          s2, s5, s9
                  sltu         s11, s2, s7
                  sll          t5, a5, s6
                  sub          a6, s9, s2
                  bltu         ra, s0, 301f
                  bltu         s3, s11, 288f
288:              or           a6, zero, t1
                  nop
                  slt          s3, t3, a1
291:              andi         s11, t5, 631
                  xor          a4, t6, a1
                  sltiu        sp, sp, -896
                  nop
                  xor          s8, s5, a7
                  srli         a7, zero, 3
                  sltiu        tp, a3, 1082
                  and          a5, t4, tp
                  bltu         zero, t4, 313f
                  sll          a6, s7, s8
301:              bltu         t0, a1, 312f
                  xori         s2, s11, 116
                  lui          a2, 291222
                  beq          t3, s6, 319f
                  auipc        s6, 339989
                  sra          s11, s6, t4
                  bgeu         s7, t5, 321f
                  beq          a2, s7, 324f
                  xor          gp, s0, a2
                  blt          s2, ra, 321f
                  bltu         t0, s8, 318f
312:              srl          a7, s4, t4
313:              addi         t1, s7, -787
                  srli         a4, t4, 2
                  andi         t2, s6, 431
                  bne          zero, s8, 318f
                  bge          a6, s4, 320f
318:              sltiu        t4, a4, 321
319:              slt          a0, s10, t6
320:              bltu         a3, s7, 338f
321:              sltiu        t4, s6, -659
                  beq          s4, a7, 337f
                  srli         t1, a2, 26
324:              or           s6, ra, a5
                  srl          t4, a0, s7
                  sub          s5, s11, s8
                  sltu         s7, s2, s0
                  srli         a3, tp, 20
                  blt          t1, t1, 331f
                  slti         a4, t3, 64
331:              srli         s5, t5, 2
                  or           sp, t3, s5
                  srl          t2, a7, t3
                  nop
                  nop
                  auipc        s4, 867835
337:              lui          a4, 299653
338:              slti         s6, a0, 1234
                  and          s11, a5, t6
                  srl          a0, a0, a7
                  slli         s5, a6, 1
                  srai         a3, s1, 5
                  ori          t1, t2, 1250
                  xori         tp, t3, 1467
                  or           a4, t1, a7
                  slti         s0, t4, -1828
                  ori          a2, a3, -561
                  addi         s3, s1, 1512
                  andi         s4, ra, -648
                  sltiu        sp, s5, -1973
                  and          s6, s10, s8
                  beq          s3, a7, 368f
                  srai         s3, s11, 5
                  sltu         s11, s11, s1
                  sll          t6, s3, s5
                  beq          tp, a1, 366f
                  slli         s8, s11, 6
                  nop
                  srl          t4, s3, t2
                  add          s3, ra, s0
                  bne          s6, t4, 371f
                  sltu         s7, a0, s10
                  nop
                  sub          s8, s7, a4
                  andi         gp, a6, -57
366:              ori          s7, s0, -837
                  srai         a0, s10, 20
368:              srl          s2, s1, s1
                  add          s7, gp, s6
                  nop
371:              bge          s11, s5, 389f
                  sra          a1, t4, tp
                  xori         a4, tp, 4
                  srli         t4, tp, 4
                  bne          t6, t0, 381f
                  bgeu         t5, t0, 385f
                  sll          t4, s5, sp
                  sra          zero, t0, a4
                  bltu         tp, a5, 393f
                  sltiu        s4, t2, -1855
381:              srl          tp, t0, t1
                  bne          a0, s0, 387f
                  slt          ra, t0, s2
                  andi         t6, s6, -1257
385:              addi         t5, a6, 104
                  srl          s5, s3, s4
387:              srl          s6, s10, s3
                  blt          t4, ra, 398f
389:              bltu         s9, s2, 405f
                  auipc        s6, 404872
                  srai         s4, s0, 8
                  slt          tp, a0, s11
393:              srai         sp, s4, 5
                  andi         s7, a6, -99
                  auipc        s11, 1014367
                  xor          gp, t5, s10
                  add          s10, t1, t5
398:              xor          s10, a4, a4
                  xor          a0, a7, t6
                  sltu         t2, s11, s2
                  blt          s3, t3, 404f
                  ori          t6, a0, -690
                  addi         s5, ra, 602
404:              bltu         a5, a2, 422f
405:              slli         s11, s9, 13
                  srai         s8, s10, 11
                  beq          t4, t3, 415f
                  slti         a5, s10, 844
                  and          a2, s9, gp
                  bge          gp, t4, 411f
411:              xori         a5, s5, -537
                  bge          a2, s6, 423f
                  lui          a0, 897009
                  sltiu        t3, ra, -161
415:              addi         s3, t2, -1051
                  srai         gp, sp, 11
                  add          tp, s8, s3
                  bge          t6, s8, 423f
                  blt          s3, a4, 434f
                  srai         a7, a1, 14
                  sub          t2, sp, s9
422:              slt          s8, t5, a3
423:              sub          a5, t4, a0
                  srai         t2, a3, 11
                  sub          a4, a5, a3
                  srli         s3, a0, 3
                  sltu         a2, s0, a0
                  sltiu        s3, a0, -737
                  andi         s8, t1, 892
                  slti         a2, t4, -555
                  xori         t5, s0, -871
                  blt          t2, a6, 435f
                  bne          t2, s8, 439f
434:              auipc        s2, 242078
435:              blt          t4, s0, 436f
436:              xor          t5, a7, a5
                  slt          t1, a2, s7
                  sltu         s7, s7, t2
439:              addi         zero, a7, 2024
                  bge          t0, t2, 449f
                  xor          t5, t4, s9
                  or           s3, sp, a7
                  sltiu        ra, t3, -1079
                  xori         t1, ra, 244
                  bge          sp, s11, 460f
                  beq          s11, t0, 460f
                  auipc        t3, 217261
                  sltu         t6, a3, a4
449:              sub          t2, s3, a4
                  xor          t1, t3, s6
                  xori         s10, a2, -565
                  slli         s8, t6, 19
                  andi         s10, a0, -248
                  slli         t1, t6, 1
                  srli         s2, s0, 19
                  addi         zero, a0, -872
                  xori         t6, a6, -1587
                  slt          t1, t3, s11
                  bltu         t1, a2, 475f
460:              sll          s5, s8, zero
                  lui          a2, 663003
                  sltiu        t4, s4, 1358
                  slti         a3, s5, 726
                  or           s3, s3, a2
                  sll          a7, s5, a0
                  slt          ra, s8, tp
                  nop
                  srai         t1, t1, 31
                  andi         t6, t6, -1816
                  addi         t1, s7, 1131
                  bgeu         a0, a7, 473f
                  srli         a7, s3, 9
473:              sra          t3, s8, s7
                  nop
475:              slt          ra, a4, t4
                  xor          s5, sp, a2
                  sub          ra, zero, s5
                  ori          a6, gp, 1155
                  slt          s3, tp, s1
                  or           t1, s8, ra
                  nop
                  auipc        s11, 297219
                  beq          s4, s3, 498f
                  sub          s0, tp, a3
                  lui          t2, 140329
                  nop
                  bne          s11, s6, 497f
                  lui          t4, 947770
                  and          s10, gp, t4
                  bne          t0, a4, 501f
                  sltiu        s10, s5, 68
                  and          zero, s7, a2
                  xori         s7, a1, -87
                  ori          a0, t2, -274
                  bgeu         s10, s5, 513f
                  xori         a5, s6, 1108
497:              or           zero, s3, s9
498:              slti         s8, t6, -1406
                  srl          s11, a5, s0
                  xori         s10, a7, -750
501:              xor          a4, a6, a5
                  ori          s4, t2, 973
                  xori         t1, a7, -925
                  srl          s2, s3, t1
                  xor          s4, a7, s7
                  bltu         sp, a7, 514f
                  srai         s2, s6, 2
                  srli         s8, a2, 24
                  srai         s6, t3, 31
                  sub          a2, s6, t5
                  srl          t1, a3, s3
                  srai         s5, s11, 11
513:              lui          a6, 1036051
514:              lui          zero, 133460
                  sltiu        a7, s4, 364
                  sll          sp, ra, s9
                  sub          s3, zero, s6
                  sltu         t2, sp, a1
                  sll          sp, tp, ra
                  auipc        s7, 200602
                  bltu         s0, t0, 524f
                  beq          s10, t2, 524f
                  bgeu         t3, t3, 537f
524:              blt          s0, t4, 531f
                  sub          a5, t6, t0
                  addi         s10, t6, -955
                  bge          a0, a5, 545f
                  bge          sp, gp, 538f
                  blt          tp, s8, 530f
530:              and          s5, s10, t2
531:              sltiu        a3, s9, 158
                  slti         a6, s1, 711
                  bltu         t6, a2, 547f
                  and          a0, t5, t0
                  srl          zero, a4, t6
                  sub          zero, ra, a0
537:              addi         a1, t4, 1041
538:              xor          t1, t2, t2
                  sra          s5, a2, s0
                  sll          s4, a7, s0
                  bltu         t3, s11, 557f
                  lui          zero, 860756
                  lui          s2, 40004
                  nop
545:              blt          s6, a7, 555f
                  lui          t3, 1045758
547:              xori         a3, a1, 781
                  bne          ra, s9, 566f
                  and          gp, t5, tp
                  srai         t1, a3, 18
                  srl          a4, a1, a3
                  slli         s3, gp, 18
                  srai         a7, s11, 9
                  bne          s6, s2, 570f
555:              sll          a6, t5, s7
                  addi         s2, gp, -1988
557:              addi         a4, tp, 586
                  sltu         ra, a6, a4
                  sra          s3, t4, t4
                  blt          t4, a3, 579f
                  slti         a1, s10, 155
                  sra          gp, s5, ra
                  andi         s10, s6, 544
                  xor          a4, t2, a5
                  slli         t5, a6, 24
566:              sltiu        a5, t3, -1606
                  sll          s8, s11, a4
                  sltiu        t1, s8, 95
                  nop
570:              srl          zero, s4, a2
                  bgeu         s2, s0, 582f
                  slti         t2, a4, 1320
                  bne          ra, s1, 584f
                  sltu         s10, a0, s8
                  nop
                  nop
                  bltu         t0, sp, 596f
                  slli         ra, s0, 4
579:              srai         t6, s9, 30
                  lui          a3, 467316
                  add          gp, t1, a4
582:              sub          a0, s6, s1
                  and          s2, zero, a0
584:              xori         s3, s8, -1934
                  slli         t5, s5, 6
                  and          s5, s0, ra
                  sltu         s3, s1, a4
                  ori          t3, s4, -1203
                  sub          a2, s7, t0
                  sltu         t4, ra, s4
                  sub          zero, tp, t6
                  sra          a3, s0, s4
                  srli         s5, s5, 30
                  bltu         t3, s8, 602f
                  sltiu        tp, s4, 793
596:              nop
                  srl          t6, a7, s10
                  auipc        s6, 472782
                  bltu         t1, s3, 602f
                  bgeu         s9, a5, 602f
                  lui          s5, 349697
602:              ori          zero, a4, 105
                  and          a5, a3, s10
                  sub          a7, zero, s4
                  lw           t1, 4(t0)
                  srl          t4, s1, s10
                  addi         t0, t0, 20
                  sll          sp, a5, a3
                  or           t3, s10, a2
                  add          t3, gp, t4
                  lui          gp, 772676
                  srli         t6, ra, 19
785:              addi x2, x6, 0
785:              jalr x2, x2, 0
sub_2:            srl          sp, tp, gp
                  slli         a5, t5, 18
                  auipc        a5, 381967
                  ori          tp, t4, 228
                  nop
                  srl          a2, s9, ra
                  bge          t0, t5, sub_2_stack_p
                  xori         s8, s5, 1606
sub_2_stack_p:    addi         t0, t0, -8
                  xori         t3, s2, 769
                  sw           t1, 4(t0)
                  slli         tp, t1, 13
                  slt          s5, a5, s3
                  sll          zero, s9, s0
                  srl          s7, a1, s4
                  nop
                  slli         s2, t6, 19
                  bltu         a0, t3, 13f
                  bge          s8, a1, 10f
                  blt          a0, a0, 25f
                  sll          sp, ra, a3
                  slti         zero, a1, 745
                  sub          t6, a0, t1
10:               addi         t1, s5, 48
                  or           tp, s4, s4
                  addi         zero, gp, 1974
13:               or           tp, tp, a1
                  bltu         tp, a3, 26f
                  bne          a6, s1, 32f
                  and          a2, t6, tp
                  srli         t6, s3, 1
                  and          t5, t1, tp
                  sltu         s7, s10, s7
                  la           s3, region_1+1580 #start riscv_load_store_rand_instr_stream_0
                  or           a3, s6, gp
                  lbu          a4, -1321(s3)
                  sb           gp, 293(s3)
                  lh           ra, -1250(s3)
                  lbu          gp, -1086(s3)
                  xor          t2, s3, s9
                  lui          a2, 206492
                  ori          a4, zero, 211
                  ori          sp, t4, -558
                  lui          a1, 934820
                  lbu          s5, -599(s3)
                  srli         s0, zero, 24
                  lhu          zero, -902(s3)
                  srl          s11, s2, t6
                  lhu          s10, 414(s3)
                  lh           t4, -834(s3)
                  andi         a4, t4, -1812
                  lb           a7, -1337(s3)
                  slli         s10, s11, 23
                  addi         s8, a0, -2030
                  lbu          ra, -1119(s3)
                  lhu          tp, 194(s3)
                  srai         s6, zero, 21
                  lbu          zero, -936(s3)
                  lbu          s6, -847(s3)
                  add          t5, s6, t4
                  srl          sp, ra, t0
                  lhu          a7, 90(s3) #end riscv_load_store_rand_instr_stream_0
                  bge          a2, s1, 30f
                  blt          s0, s2, 30f
                  bge          t5, s1, 41f
                  srli         t4, a6, 20
                  and          s3, a1, tp
25:               blt          a6, a7, 26f
26:               lui          tp, 127383
                  srai         t6, a4, 25
                  xor          a5, s9, a0
                  auipc        s5, 292384
30:               bge          s4, s1, 47f
                  ori          s0, s9, 673
32:               srai         a3, a1, 20
                  xori         s5, a6, -1281
                  and          t5, s11, t6
                  slti         a3, a6, 1167
                  xor          s2, a3, s11
                  beq          s9, a3, 42f
                  or           a5, a7, sp
                  nop
                  srai         t3, t5, 8
41:               blt          t3, s7, 49f
42:               xor          a6, t4, s8
                  and          s5, a6, s10
                  ori          gp, t0, -844
                  sra          a0, a2, t1
                  srai         s11, gp, 24
47:               sltiu        gp, gp, -1006
                  auipc        t1, 323624
49:               sltiu        a7, a1, 1954
                  andi         s6, t3, -1469
                  sll          t5, t6, s11
                  and          s11, s6, t4
                  sub          a7, t5, a0
                  sub          a3, a5, s3
                  xor          s7, a4, t3
                  sll          s7, s7, t3
                  xor          tp, t0, t4
                  srli         t4, t6, 0
                  xori         zero, a2, 1455
                  andi         ra, sp, 1384
                  xori         s11, t1, 1342
                  lui          sp, 360710
                  andi         a4, s7, 1210
                  addi         s2, s9, -1952
                  slti         a7, s3, -187
                  bge          s9, a1, 84f
                  sltu         a6, gp, s10
                  srl          a3, t1, s2
                  srl          gp, a4, t3
                  slt          a3, t6, a5
                  or           t2, s3, t2
                  bne          t4, t0, 84f
                  sub          s2, gp, t1
                  sra          s8, t5, gp
                  blt          s4, s3, 76f
76:               sra          a2, s1, s8
                  addi         s5, s1, -1442
                  sltu         sp, zero, s6
                  and          t4, s5, sp
                  xori         t6, zero, -1486
                  bne          s7, s7, 100f
                  srai         s5, t1, 26
                  sll          a5, a6, a6
84:               beq          zero, t3, 86f
                  srl          s4, s10, s1
86:               srai         t4, t6, 22
                  srli         gp, a2, 4
                  bltu         s1, zero, 98f
                  beq          a3, tp, 103f
                  beq          ra, a0, 109f
                  srl          sp, t0, zero
                  lui          a0, 205392
                  andi         a1, t6, 1391
                  xori         t4, s2, -1487
                  slli         a0, s6, 24
                  sltiu        t4, s3, 1091
                  beq          gp, s10, 99f
98:               sll          a3, s4, s5
99:               slt          s3, t1, a7
100:              bgeu         s7, s6, 114f
                  bge          sp, t2, 111f
                  bltu         s5, s7, 115f
103:              sltu         s2, s1, s7
                  slti         t1, tp, -1793
                  addi         a2, t5, 1464
                  sub          a7, s10, t1
                  ori          a2, s10, 167
                  xor          s8, t1, s1
109:              slli         sp, t3, 1
                  sub          a1, s0, s5
111:              xor          a1, a7, s3
                  auipc        s6, 733009
                  addi         a4, s0, -1547
114:              beq          tp, s6, 119f
115:              xor          s10, t4, a0
                  blt          a7, s1, 118f
                  add          s10, sp, s11
118:              sll          a5, a7, s6
119:              sub          s11, s9, s9
                  andi         s10, s7, 1543
                  nop
                  or           a4, t5, s0
                  auipc        t4, 96413
                  sll          a5, a1, ra
                  andi         t5, tp, 125
                  andi         sp, s0, -211
                  or           s6, s3, s6
                  bltu         s2, a5, 135f
                  slli         a3, a3, 21
                  srai         t6, a6, 14
                  auipc        a6, 319082
                  beq          tp, a2, 133f
133:              ori          ra, ra, -1890
                  and          a3, t6, s11
135:              slti         a1, a5, 134
                  sra          sp, s3, t6
                  srl          t3, s8, a1
                  lui          s2, 168432
                  and          t3, s10, a7
                  andi         t5, a2, -562
                  slli         s10, s9, 3
                  lw           t1, 4(t0)
                  srai         a0, s8, 23
                  addi         t0, t0, 8
                  nop
                  srli         zero, s4, 4
189:              addi x29, x6, 1
189:              jalr x29, x29, 0
sub_3:            addi         t0, t0, -20
                  sll          a3, a2, s4
                  sll          s10, a3, t6
                  sw           t1, 4(t0)
                  lui          gp, 218289
                  auipc        t6, 82136
                  auipc        zero, 979059
                  lui          t6, 944328
                  srai         s5, zero, 19
                  auipc        s0, 641973
                  la           a5, sub_4
                  auipc        t3, 658942
                  or           a2, zero, a7
                  addi         a5, a5, 39
                  srli         a4, s3, 23
                  beq          t6, a1, sub_3_j6 #branch to jump instr
                  srai         s0, s6, 16
                  lui          s11, 314
                  andi         t5, t1, -1733
                  sub          s11, a4, s1
                  srl          a0, s11, tp
                  xor          t1, t0, a6
sub_3_j6:         jalr         t1, a5, -39 #jump sub_3 -> sub_4
                  la           t6, region_0+1007 #start riscv_load_store_rand_instr_stream_0
                  lui          s11, 797503
                  lhu          s7, -21(t6)
                  addi         a1, s9, 1568
                  sra          a1, t4, s10
                  xor          a5, ra, t5
                  lh           t1, -25(t6)
                  lui          t4, 665663
                  lbu          s10, 25(t6)
                  lb           s5, -64(t6)
                  and          a5, zero, gp
                  sra          s11, s8, t6
                  add          a4, s7, a6
                  sb           t1, -22(t6)
                  sb           s2, -62(t6)
                  sb           a3, 34(t6)
                  nop
                  srli         s5, s5, 26
                  andi         s10, s1, -1418
                  lb           s5, 60(t6)
                  lbu          a2, -48(t6)
                  sltu         s11, a5, t6
                  lhu          t4, 31(t6)
                  and          a1, s10, a6
                  andi         t2, a7, 785
                  lb           s11, 12(t6)
                  sh           s10, -33(t6)
                  slt          a0, s3, a4
                  sh           s5, -57(t6)
                  slti         a0, s11, -1540
                  sll          a7, tp, tp
                  sb           ra, -36(t6)
                  srai         a3, a7, 1
                  lbu          s4, -38(t6)
                  lb           t3, 50(t6)
                  and          sp, t5, t6
                  srl          t3, ra, t1
                  and          sp, zero, s6
                  sw           s8, 9(t6)
                  xori         s6, s7, -670
                  lbu          a3, 55(t6)
                  sll          a7, a7, tp
                  and          a2, s2, s4
                  lui          zero, 811354
                  lbu          s10, 9(t6)
                  lbu          s11, -39(t6) #end riscv_load_store_rand_instr_stream_0
                  srai         t6, zero, 7
                  lui          gp, 912441
                  addi         a7, a1, -745
                  auipc        sp, 784769
                  xor          s6, s1, t1
                  add          s8, t3, s6
                  or           s0, t4, s8
                  sltiu        s2, s3, -1982
                  srai         s5, s11, 4
                  auipc        s5, 661208
                  and          s6, tp, zero
                  srli         s8, t6, 3
                  srai         s11, t0, 3
                  sub          s6, a0, tp
                  auipc        a5, 593523
                  sltiu        tp, s8, 397
                  slt          a1, ra, s9
                  xori         s6, t3, 645
                  xor          sp, sp, a3
                  slli         ra, s4, 2
                  xori         s11, zero, 739
                  addi         a4, a7, 1961
                  slti         sp, a3, 1308
                  blt          t2, s10, 39f
                  lui          sp, 963252
                  auipc        gp, 293684
                  sltiu        gp, tp, 517
                  bge          s11, t6, 32f
                  xori         s0, zero, 226
                  bltu         s8, a6, 47f
                  beq          s0, s4, 40f
                  beq          s1, t2, 45f
32:               xori         gp, s0, 1423
                  sltiu        tp, gp, -298
                  sll          t2, s5, tp
                  bgeu         s4, t5, 51f
                  bge          s5, s6, 37f
37:               and          sp, s10, t6
                  add          s5, s6, t1
39:               addi         t3, t4, 2012
40:               and          s2, a2, s2
                  slt          t1, sp, s4
                  ori          t3, s10, 381
                  beq          s5, ra, 59f
                  bge          t3, a3, 53f
45:               sll          t2, a7, s8
                  sra          a3, t1, zero
47:               sub          a5, s3, a2
                  bge          sp, a7, 64f
                  sltiu        zero, t6, 1927
                  srli         a1, s2, 30
51:               sra          a7, t2, a7
                  or           a6, t2, ra
53:               andi         s5, t0, -756
                  xori         s5, a2, 1846
                  addi         s4, a1, -1778
                  slti         s4, s0, -276
                  auipc        a2, 159215
                  slti         s0, a3, -1622
59:               sub          t1, s6, s0
                  bge          a7, a2, 79f
                  bltu         t5, s0, 64f
                  sll          s11, a5, t0
                  slti         s4, zero, 1013
64:               ori          a6, s8, -957
                  sltu         s2, t6, s2
                  add          a4, a3, a2
                  bgeu         gp, s11, 84f
                  xor          t3, s1, t6
                  xor          a1, a2, s3
                  beq          t6, tp, 73f
                  xor          s3, a4, s5
                  bgeu         sp, s9, 86f
73:               ori          a3, t6, -530
                  bltu         t0, s2, 77f
                  bltu         s8, a5, 82f
                  xor          t3, t1, t3
77:               add          s4, a3, s4
                  blt          zero, s5, 98f
79:               and          t4, a0, s1
                  sltu         a0, zero, s6
                  auipc        a1, 524808
82:               lui          t2, 928933
                  or           t3, s7, a6
84:               add          t5, t0, sp
                  bne          a5, sp, 93f
86:               auipc        a1, 517199
                  srai         s4, s4, 25
                  sltiu        a7, s1, 1359
                  srl          s5, gp, tp
                  auipc        t1, 316080
                  sltiu        s2, s9, -1576
                  blt          s11, a2, 95f
93:               srai         a4, a3, 17
                  nop
95:               blt          t4, gp, 101f
                  sll          sp, ra, s9
                  xor          t1, gp, zero
98:               andi         t6, s2, 1444
                  and          t5, t4, t4
                  sltiu        t3, zero, 764
101:              sub          a2, s3, t6
                  bgeu         s3, zero, 113f
                  beq          t3, t0, 111f
                  srl          s3, s8, t4
                  sltiu        t3, gp, 318
                  xor          s10, ra, s6
                  and          t3, s8, tp
                  or           t2, t0, s4
                  xor          s3, t6, a6
                  slt          t3, t1, a5
111:              nop
                  sra          t6, t2, sp
113:              sra          ra, s6, t1
                  sltu         t3, t3, t4
                  auipc        t4, 492383
                  sltiu        t5, t6, -1910
                  xor          sp, a1, t2
                  add          s7, s3, s8
                  nop
                  slt          s0, s4, s10
                  beq          ra, a7, 130f
                  andi         a7, t2, 340
                  sltiu        tp, s1, 1572
                  xor          s4, s6, s10
                  bge          s8, tp, 130f
                  sra          s5, t4, a3
                  add          t5, tp, a5
                  andi         zero, t6, -465
                  or           s5, t3, s6
130:              srli         s5, t3, 15
                  add          t3, t1, t0
                  lw           t1, 4(t0)
                  sll          s8, t2, t3
                  addi         t0, t0, 20
                  ori          s3, s6, -238
                  sltiu        s8, t6, 1997
206:              addi x30, x6, 1
206:              jalr x30, x30, 0
sub_8:            srl          zero, a2, s1
                  sra          a0, a0, sp
                  addi         t0, t0, -20
                  slli         s10, zero, 15
                  srai         a6, t4, 5
                  sra          a4, a6, s6
                  or           zero, a2, s9
                  sw           t1, 4(t0)
                  srl          t4, t2, t0
                  auipc        zero, 937792
                  srli         s3, a1, 29
                  bltu         a7, s0, 14f
                  xor          gp, s11, a5
                  srai         t6, s9, 30
                  sll          a0, s11, ra
                  ori          s6, tp, 1647
                  beq          s6, s9, 14f
                  sll          s7, s9, a2
                  auipc        s0, 460541
                  sll          t3, t1, sp
                  sltiu        s8, ra, 1234
                  and          s5, s6, a4
                  sll          s10, s1, a5
14:               sra          s11, a0, s0
                  xori         a3, s10, -424
                  sll          a1, a4, t4
                  lw           t1, 4(t0)
                  srl          s4, s9, a5
                  add          s5, a6, a6
                  or           ra, a4, s1
                  addi         t0, t0, 20
                  nop
                  slli         a7, a5, 24
                  lui          a3, 479459
                  sltiu        tp, s9, -2024
                  auipc        s3, 471479
36:               addi x7, x6, 0
36:               jalr x7, x7, 0
sub_9:            and          a3, a1, a6
                  andi         gp, t4, 825
                  addi         t0, t0, -36
                  sw           t1, 4(t0)
                  ori          t3, s8, 1234
                  add          t6, tp, a6
                  andi         ra, a7, 1556
                  la           t4, region_1+1442 #start riscv_load_store_rand_instr_stream_4
                  srai         s10, t0, 12
                  lb           s7, -790(t4)
                  lui          t1, 150593
                  sw           t0, -54(t4)
                  sra          tp, s4, t6
                  add          s0, a0, tp
                  sw           t0, -1378(t4)
                  srl          s10, s3, zero
                  slt          s3, s9, a7
                  lbu          t6, -647(t4)
                  lh           s5, -682(t4)
                  and          s7, s10, t0
                  sb           s0, -129(t4)
                  slli         a2, a5, 17
                  lb           s2, 225(t4)
                  slti         s10, s5, -872
                  auipc        a7, 697239
                  sh           s10, 436(t4)
                  lbu          s3, -434(t4)
                  sltiu        a6, a1, -20
                  sll          s10, zero, t6
                  andi         a7, s0, -1959
                  addi         s3, s10, 506
                  sll          t1, ra, ra
                  auipc        a5, 116188
                  lbu          t1, 311(t4)
                  srli         s11, a7, 2
                  lbu          gp, -277(t4)
                  slt          t2, t0, s8
                  sb           a1, -454(t4)
                  lb           a2, -1048(t4)
                  lb           s3, 383(t4)
                  lb           a2, -282(t4)
                  addi         s2, s3, 1120
                  sra          t5, a3, s0
                  sb           gp, 260(t4)
                  slli         t2, a7, 2
                  lbu          a5, -511(t4)
                  sll          s5, s8, a2
                  sb           s10, -1374(t4)
                  lw           zero, -1438(t4)
                  lw           a0, -346(t4)
                  sub          t2, gp, s0
                  lbu          s4, -129(t4) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+818 #start riscv_load_store_rand_instr_stream_6
                  sra          s0, t2, gp
                  lb           ra, -15(sp)
                  xor          s8, a0, s3
                  sltu         t3, a1, t2
                  lb           s8, -739(sp)
                  sb           a3, -499(sp)
                  lbu          s4, 668(sp)
                  lhu          tp, -96(sp)
                  lb           zero, 41(sp)
                  sb           a0, 338(sp)
                  srli         s11, s1, 30
                  srl          ra, s6, s5
                  sub          a5, sp, a3
                  xori         t5, s0, 715
                  sb           a7, 680(sp)
                  slli         ra, a1, 14
                  sb           a5, 141(sp)
                  lhu          tp, -602(sp)
                  sb           a1, 371(sp)
                  lui          s11, 327095
                  sll          s6, s0, s2
                  ori          a5, s6, -68
                  ori          a0, ra, 553
                  sll          gp, t3, s0
                  lbu          a4, 896(sp)
                  slli         a7, t1, 26
                  lbu          s6, 1090(sp)
                  lbu          s8, 661(sp)
                  sb           s5, -518(sp)
                  slli         gp, a4, 12
                  srli         s0, s9, 29
                  lbu          a4, 657(sp)
                  andi         gp, ra, 1636
                  sb           t1, 952(sp)
                  srli         a6, s11, 18
                  lbu          s4, 259(sp)
                  sltu         s8, s1, s9
                  lhu          a4, 1046(sp)
                  srl          a0, t5, s5
                  lui          zero, 236267
                  lb           s5, 146(sp)
                  andi         s0, a1, 1065
                  sh           s8, 430(sp)
                  lb           s5, -99(sp)
                  xori         tp, a1, -852
                  srl          t5, s9, a2
                  lb           s2, 387(sp)
                  slti         t3, s4, -694
                  lb           a3, 375(sp)
                  lbu          t5, 569(sp)
                  lb           a3, 888(sp)
                  sltu         a1, s6, zero
                  lb           a0, -561(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t2, region_1+1681 #start riscv_load_store_rand_instr_stream_0
                  lh           a1, -187(t2)
                  srai         s2, a6, 19
                  slli         t5, s5, 12
                  lh           t5, 33(t2)
                  sb           t1, 45(t2)
                  andi         sp, a4, -1320
                  srai         ra, a2, 4
                  andi         sp, s5, -1125
                  srl          s7, s9, s0
                  xor          ra, a1, a1
                  lb           s0, -252(t2)
                  srai         a0, s11, 24
                  srli         a3, ra, 14
                  sltiu        s0, s4, 695
                  and          ra, a5, s10
                  auipc        s0, 928774
                  xori         s2, s0, 1446
                  srai         a5, s4, 26
                  auipc        gp, 800300
                  lw           s7, -109(t2)
                  srl          t5, ra, s7
                  lb           a5, 172(t2)
                  nop
                  lbu          a2, 230(t2)
                  srl          s3, a5, zero
                  slti         zero, a4, -285
                  srl          t5, s11, a2
                  slli         s8, zero, 4
                  lbu          a2, 81(t2)
                  srli         sp, tp, 6
                  and          t1, a1, t5
                  lb           a6, 45(t2)
                  lb           s7, -64(t2)
                  srl          a0, t6, a0
                  add          s10, a1, a1
                  lbu          tp, -34(t2) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+305 #start riscv_load_store_rand_instr_stream_1
                  auipc        a4, 36610
                  sra          s8, a1, s11
                  lh           sp, -63(t3)
                  lui          s7, 22768
                  lb           s10, 178(t3)
                  sb           s5, 142(t3)
                  sb           a1, -99(t3)
                  xori         s4, sp, 428
                  ori          a6, zero, -1117
                  srl          a6, t5, s1
                  slt          t4, tp, t2
                  srai         t1, a7, 1
                  sub          s5, s5, a5
                  xor          tp, a5, sp
                  slt          ra, a1, a7
                  sltu         sp, a7, s6
                  srai         s5, s9, 24
                  slli         gp, gp, 13
                  ori          s4, a4, 73
                  srl          t5, t0, zero
                  sra          a0, t4, t4
                  lui          gp, 585461
                  lhu          s4, 25(t3)
                  sb           s5, -2(t3)
                  slli         s5, t5, 12
                  xori         zero, s3, 41
                  add          a2, zero, a2
                  lb           tp, 82(t3)
                  xori         a0, t2, 522
                  sltiu        ra, s2, 947
                  sll          s3, a4, t0
                  sub          gp, ra, s9
                  lbu          a2, -37(t3)
                  lbu          a0, -206(t3)
                  slli         s11, s2, 26
                  xori         s2, gp, -809
                  lb           t6, -131(t3)
                  sb           zero, 154(t3)
                  sltu         t1, gp, a5
                  lbu          s7, -246(t3)
                  lh           t6, 89(t3)
                  lh           s10, 57(t3)
                  srli         gp, s10, 9
                  lbu          a4, 21(t3) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_1+299 #start riscv_load_store_rand_instr_stream_8
                  sb           t1, 2(a3)
                  sltu         a1, s11, s2
                  sltu         t6, a5, a1
                  sb           t0, 16(a3)
                  srai         t4, sp, 6
                  ori          a7, t3, -734
                  sll          s7, s11, tp
                  sb           s6, -4(a3)
                  lui          a1, 393194
                  sh           s8, -1(a3)
                  lb           s2, -16(a3)
                  srai         a7, t4, 29
                  lb           t3, 7(a3)
                  lw           s7, -7(a3)
                  lb           t2, -10(a3)
                  slti         a6, a7, 38
                  lb           t3, 16(a3)
                  lbu          t3, -6(a3)
                  lb           t1, -14(a3)
                  lb           s2, -8(a3)
                  lhu          t3, -7(a3)
                  xor          a4, s6, ra
                  sra          s4, a0, s2
                  sltu         a2, t2, s11
                  sb           s2, 5(a3)
                  sh           sp, -13(a3)
                  lbu          a7, 10(a3)
                  add          a5, t1, s1
                  lb           a6, 14(a3)
                  lui          s8, 628418
                  sll          a5, a7, s6
                  andi         t6, a2, -301
                  lh           s8, 1(a3)
                  slli         a6, a2, 3
                  lbu          s10, 4(a3)
                  sb           s9, -12(a3)
                  lbu          s0, -14(a3)
                  add          t3, t1, s6
                  lb           t6, 4(a3)
                  auipc        s10, 498494
                  lbu          a5, 8(a3)
                  add          s11, a4, a7
                  slti         s2, s11, 173
                  sra          a4, t1, s3
                  lb           a4, 15(a3)
                  lh           a5, -3(a3)
                  lb           a5, 14(a3)
                  sb           tp, 8(a3) #end riscv_load_store_rand_instr_stream_8
                  la           t6, region_0+1365 #start riscv_load_store_rand_instr_stream_7
                  srai         s6, s11, 7
                  srli         t5, s11, 8
                  lw           a1, -49(t6)
                  sb           gp, -12(t6)
                  lbu          ra, -3(t6)
                  lb           tp, -64(t6)
                  lw           ra, 51(t6)
                  slti         ra, s2, -1878
                  auipc        gp, 742572
                  sltu         s6, s4, s3
                  lb           a7, -10(t6)
                  lw           t3, 15(t6)
                  addi         s2, a1, -1056
                  sb           a2, -36(t6)
                  andi         s8, tp, -1283
                  slti         a2, s7, 1142
                  lb           a5, 31(t6)
                  sra          s7, t3, t1
                  slti         s5, a0, 539
                  lbu          s8, -50(t6)
                  sll          s3, s10, zero
                  lb           t4, -21(t6)
                  lbu          a3, 10(t6)
                  add          t3, s10, s11
                  lbu          a7, 53(t6)
                  srli         a1, s4, 13
                  sll          a6, s4, s4
                  srl          a3, a1, zero
                  lh           a0, 13(t6)
                  slti         s10, a5, -1158
                  lb           a2, -45(t6) #end riscv_load_store_rand_instr_stream_7
                  la           s7, region_1+503 #start riscv_load_store_rand_instr_stream_9
                  lbu          t1, 43(s7)
                  lhu          a6, -59(s7)
                  lbu          s4, -16(s7)
                  sb           t0, 42(s7)
                  or           gp, a4, a7
                  and          t3, s6, t4
                  lhu          s5, -63(s7)
                  lb           s0, 60(s7)
                  slli         sp, a6, 8
                  lbu          a0, 8(s7)
                  sb           a4, -44(s7)
                  slli         tp, a3, 2
                  sub          s3, a3, s8
                  auipc        s10, 475390
                  auipc        a2, 131536
                  lbu          s6, 28(s7)
                  lb           tp, -25(s7)
                  addi         a2, t0, 323
                  xori         t1, s6, 43
                  sltiu        t1, s3, 722
                  sub          sp, t3, t1
                  nop
                  sll          t6, a5, zero
                  sb           t3, 7(s7)
                  lbu          t3, 16(s7)
                  xor          t2, a6, s11
                  xori         s2, t3, -1568
                  lbu          t2, -15(s7)
                  lb           a4, 50(s7)
                  lb           s4, -28(s7)
                  lb           s8, -20(s7)
                  sb           s2, -22(s7)
                  lb           t6, -20(s7) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1747 #start riscv_load_store_rand_instr_stream_3
                  sb           t5, 14(sp)
                  slli         s0, s10, 27
                  lhu          t6, 7(sp)
                  sb           t3, 10(sp)
                  andi         a0, a3, -300
                  lhu          t4, 3(sp)
                  add          a1, t2, s9
                  sh           t4, -11(sp)
                  lb           s10, 10(sp)
                  srl          t3, s5, s10
                  or           a7, a5, t5
                  add          s4, s4, t6
                  ori          t1, sp, 609
                  lbu          a1, 16(sp)
                  addi         a3, s1, -1724
                  lui          a5, 476905
                  sra          s3, a0, t3
                  or           a5, a6, zero
                  sb           s10, 7(sp)
                  lbu          ra, -12(sp)
                  sb           s10, 3(sp)
                  sb           tp, 12(sp)
                  lb           s11, 6(sp)
                  addi         t1, tp, 363
                  lh           t1, -5(sp)
                  andi         zero, t0, -1147
                  sra          a0, a7, s5
                  lw           s7, -15(sp)
                  andi         s11, t0, 1767
                  auipc        s11, 271132
                  lbu          t5, -2(sp)
                  srai         t6, s0, 0
                  lbu          t6, 0(sp)
                  or           s0, a1, zero
                  lb           s0, 8(sp)
                  lbu          t6, 16(sp)
                  lbu          ra, 3(sp) #end riscv_load_store_rand_instr_stream_3
                  sll          a4, t5, a7
                  srli         s5, s8, 31
                  lui          tp, 427851
                  sra          a5, t3, s5
                  bgeu         t4, zero, 10f
                  auipc        t1, 96454
                  auipc        s8, 79893
                  slt          a6, s10, s2
                  slli         s3, s0, 24
                  sra          a1, s1, s11
10:               sltu         a7, s5, gp
                  sll          t4, t2, s2
                  bltu         a5, t0, 29f
                  sltiu        s8, s3, -324
                  beq          s3, t6, 18f
                  beq          a7, s5, 19f
                  ori          t6, s9, 158
                  and          zero, a2, s8
18:               sltiu        zero, s7, 1609
19:               srli         a0, s7, 7
                  andi         sp, s4, 659
                  ori          t6, a1, -99
                  sltiu        a4, s0, -1175
                  bltu         a2, t3, 37f
                  sll          s8, t0, a3
                  beq          sp, a2, 32f
                  sltu         s8, s0, ra
                  xori         s4, s6, -746
                  bge          s9, s7, 34f
29:               addi         a0, s2, -1370
                  xori         s6, s11, 550
                  slti         s6, t1, 1782
32:               sll          sp, a0, a3
                  bge          a0, t1, 45f
34:               lui          t6, 626416
                  sltiu        a1, s10, -352
                  bne          a6, s11, 50f
37:               srai         a4, ra, 22
                  sll          gp, t5, t3
                  beq          zero, s2, 55f
                  nop
                  or           a4, s0, s10
                  slt          s4, s5, gp
                  beq          t2, sp, 49f
                  srli         t2, a7, 29
45:               slt          a4, t1, ra
                  xori         a6, s11, 2000
                  and          t6, s7, s11
                  andi         a5, t3, 1305
49:               bge          s11, ra, 53f
50:               addi         s7, sp, 1528
                  la           s0, region_0+714 #start riscv_load_store_rand_instr_stream_5
                  lbu          ra, 13(s0)
                  sb           s5, -9(s0)
                  addi         sp, s11, -1236
                  or           a1, t2, zero
                  sh           t2, 8(s0)
                  sll          zero, a4, a2
                  srl          a0, a0, sp
                  sb           s7, -4(s0)
                  slt          t5, s1, t3
                  lh           a1, 0(s0)
                  lbu          s4, 6(s0)
                  nop
                  lb           s2, 12(s0)
                  srai         s8, t6, 19
                  lh           s4, -12(s0)
                  sll          t6, s9, sp
                  lbu          ra, 13(s0)
                  srl          gp, sp, s3
                  sh           a1, -16(s0)
                  slli         t3, a7, 23
                  lb           a1, -3(s0)
                  lb           a1, 15(s0)
                  lbu          s10, -1(s0)
                  add          s10, a5, t2
                  or           a0, a5, a3
                  sb           zero, 13(s0)
                  lhu          a6, 16(s0)
                  lhu          s5, -6(s0)
                  sb           t6, 4(s0)
                  lb           zero, -1(s0)
                  lb           t3, 7(s0)
                  sb           s8, -9(s0)
                  lbu          t3, -11(s0)
                  slt          t4, s1, s2
                  srai         t3, t5, 12
                  lh           s6, -6(s0)
                  add          s4, a0, s0
                  lh           a5, 0(s0)
                  lhu          s11, 4(s0) #end riscv_load_store_rand_instr_stream_5
                  bltu         s1, a5, 56f
                  bltu         s9, sp, 62f
53:               slti         a7, a0, 1810
                  sltiu        tp, a0, -474
55:               srli         sp, tp, 31
56:               and          t3, s10, s4
                  xori         s0, s5, -1877
                  blt          s4, t5, 76f
                  nop
                  sltiu        a4, s2, 1072
                  blt          gp, t3, 81f
62:               lui          a1, 431448
                  srai         s11, t1, 19
                  slti         t1, a4, -1830
                  andi         a6, ra, 1396
                  lui          tp, 713951
                  sll          t5, s10, t3
                  bne          t3, s7, 84f
                  slt          s5, tp, s8
                  add          t4, s6, s4
                  nop
                  ori          a5, s1, -1207
                  and          t6, s4, ra
                  lui          gp, 514013
                  bne          s9, t2, 88f
76:               bne          s1, t3, 77f
77:               sltiu        a3, gp, -469
                  addi         s4, a3, -1744
                  add          a7, a7, s10
                  sltu         s0, sp, t2
81:               addi         t5, a5, 953
                  ori          t6, ra, 435
                  bne          s0, s11, 84f
84:               auipc        t1, 392517
                  srli         t6, a1, 3
                  srai         sp, s4, 18
                  bne          t4, t5, 103f
88:               xor          s11, a4, s5
                  sra          a7, s4, s11
                  bne          a5, sp, 91f
91:               addi         ra, t5, 572
                  srli         gp, s11, 23
                  nop
                  sll          s4, gp, a3
                  xor          zero, s6, t3
                  srai         s4, ra, 30
                  xor          a3, ra, s2
                  add          t2, sp, a2
                  bge          s11, a0, 102f
                  ori          a5, ra, -1445
                  andi         a5, s7, -574
102:              sltu         s0, s10, s2
103:              slt          t6, s7, a6
                  ori          a6, a0, -1538
                  sltiu        tp, s3, 621
                  add          s7, gp, t5
                  or           gp, sp, s4
                  sub          s2, t6, a6
                  addi         a3, a0, 1871
                  bne          a4, t0, 127f
                  sltu         a6, zero, s0
                  xor          s11, a3, s10
                  bne          s7, t5, 128f
                  add          gp, s11, t6
                  slti         t2, a5, -1107
                  srli         sp, t6, 8
                  add          a5, gp, sp
                  bne          gp, s3, 133f
                  beq          t4, t1, 135f
                  sltiu        s3, s2, 1111
                  bne          gp, t3, 133f
                  bgeu         sp, a4, 131f
                  nop
                  sltu         s3, t5, s5
                  xor          s10, t3, a0
                  lui          a7, 17148
127:              and          a1, a2, a5
128:              add          a7, t2, s4
                  sub          s2, gp, s9
                  sra          s10, a7, s3
131:              slli         a4, t5, 9
                  nop
133:              xori         a0, t3, 1569
                  sltu         a1, t3, a0
135:              bge          gp, s0, 140f
                  slti         s0, t3, -1239
                  bne          a4, tp, 143f
                  sltu         t4, s10, t6
                  sll          t2, a5, a6
140:              srl          t5, s6, t4
                  sltu         a1, a2, tp
                  sll          s0, a2, s5
143:              sll          s10, t2, s3
                  blt          s8, t2, 160f
                  lui          t5, 468248
                  lui          a1, 748196
                  bltu         a4, t0, 167f
                  sltu         a0, s2, t1
                  bne          t4, s10, 164f
                  blt          tp, t2, 151f
151:              andi         s11, s0, -1512
                  srai         ra, t1, 7
                  add          s8, zero, a7
                  bge          a7, t2, 170f
                  auipc        a0, 728336
                  add          s0, s0, a4
                  sltu         t2, s7, ra
                  slt          a0, s3, ra
                  bltu         t0, zero, 173f
160:              sll          t3, t5, gp
                  andi         a0, a3, 1518
                  xor          a2, ra, t6
                  slli         a3, gp, 17
164:              xor          t5, a2, t6
                  sltu         s6, t2, zero
                  bne          t0, s9, 183f
167:              sll          a3, s1, a0
                  nop
                  auipc        s11, 744958
170:              and          s8, s5, a6
                  sll          a2, a6, s9
                  slt          t6, gp, t0
173:              srl          t5, a1, s7
                  bltu         a3, s10, 180f
                  ori          s10, s4, 235
                  bge          gp, t6, 194f
                  sltiu        s0, s5, 1564
                  and          t4, s7, t5
                  slli         gp, a1, 20
180:              bgeu         t1, s1, 196f
                  beq          a2, t3, 185f
                  or           a7, a0, s7
183:              slti         t2, tp, 1041
                  srli         a0, t3, 5
185:              nop
                  andi         t1, ra, -1888
                  sub          s0, a4, a6
                  sltu         sp, t5, a0
                  auipc        a7, 746348
                  beq          s4, t6, 205f
                  bgeu         t0, t5, 200f
                  xor          a0, t5, s10
                  addi         s3, s5, -553
194:              slli         a7, s9, 12
                  slt          t4, t5, gp
196:              sltu         s6, a7, s4
                  slti         a0, a2, 524
                  bne          t4, s0, 210f
                  srl          s5, t3, t6
200:              blt          tp, a6, 205f
                  add          sp, s6, t1
                  or           s8, t2, t3
                  or           a5, s3, s0
                  bne          tp, a7, 205f
205:              slli         ra, s11, 30
                  slli         s0, a1, 7
                  srai         a2, a5, 19
                  srl          a1, a4, s0
                  bltu         t6, s1, 223f
210:              bne          s4, s9, 211f
211:              xor          s7, s7, a6
                  srli         a4, s4, 12
                  beq          s1, s6, 217f
                  andi         gp, a7, -846
                  or           zero, a2, s10
                  lui          t3, 817523
217:              xor          s4, a2, t1
                  sll          a5, s11, s11
                  nop
                  lui          t1, 369344
                  srli         t3, a6, 22
                  bne          t0, ra, 227f
223:              sll          s11, s3, s3
                  bgeu         tp, t1, 227f
                  srai         zero, a4, 8
                  blt          s4, t3, 238f
227:              slti         t4, zero, 687
                  bge          a7, t6, 232f
                  bge          t1, s10, 239f
                  nop
                  sll          t3, sp, a2
232:              sltiu        tp, a7, 1375
                  bne          a7, a5, 239f
                  srai         s2, t3, 14
                  slti         s4, s0, -392
                  or           s6, s9, a5
                  or           t5, a3, t1
238:              slti         t6, s0, 532
239:              srai         s10, t1, 19
                  slt          a7, s5, a4
                  slti         a5, t4, 986
                  bltu         gp, a5, 258f
                  and          s8, a4, a3
                  ori          s7, t2, -1558
                  sll          zero, t4, ra
                  slt          tp, a5, s9
                  blt          s9, sp, 260f
                  ori          ra, gp, -256
                  srl          a2, a0, s2
                  srl          a2, s2, s1
                  xori         t4, a1, -1475
                  nop
                  sltiu        ra, s1, -1144
                  sltiu        a4, tp, -396
                  and          t6, s10, zero
                  addi         ra, s9, 1454
                  nop
258:              sltiu        ra, a0, -1490
                  beq          a5, t2, 266f
260:              bne          s3, t4, 277f
                  bne          a7, sp, 277f
                  sltiu        a1, a6, 1543
                  sra          a1, t2, s11
                  srl          t4, s11, t4
                  slli         s4, s3, 8
266:              sub          ra, a6, s5
                  sll          zero, gp, ra
                  and          s2, t4, a5
                  add          a1, a0, s7
                  sltu         s2, s7, sp
                  bne          s10, t5, 286f
                  ori          zero, s5, -1678
                  slli         zero, gp, 17
                  sub          t2, ra, s0
                  bge          s4, s4, 284f
                  beq          sp, s8, 293f
277:              lui          s0, 925901
                  slt          a2, s8, a6
                  xori         s4, a7, -1066
                  sub          t1, s7, t5
                  addi         a2, t2, 1366
                  sra          sp, s11, s6
                  or           t3, s10, s8
284:              blt          s5, t2, 290f
                  addi         a6, a5, -1519
286:              sltiu        t4, a1, -195
                  xori         s5, t0, 1499
                  auipc        zero, 894978
                  beq          sp, gp, 294f
290:              blt          s6, t3, 304f
                  slli         t5, a6, 29
                  slli         s6, a5, 30
293:              slti         t2, a2, 958
294:              bne          ra, a4, 295f
295:              slti         t1, a1, 1240
                  sltu         t2, s10, zero
                  add          t5, a5, s7
                  srli         s2, ra, 14
                  bge          a0, s3, 314f
                  andi         gp, s1, -270
                  bgeu         t1, a7, 313f
                  bgeu         t5, s10, 303f
303:              srai         tp, s0, 14
304:              blt          a2, a6, 322f
                  bge          t0, a1, 310f
                  slli         sp, a1, 20
                  bgeu         s3, s6, 310f
                  slti         s8, s7, -648
                  bgeu         a7, t1, 313f
310:              blt          a7, s7, 320f
                  bge          t5, t3, 318f
                  andi         s5, t6, 1783
313:              auipc        s3, 590098
314:              bge          s11, a5, 330f
                  sltu         a0, a7, sp
                  bltu         t4, t5, 332f
                  addi         a5, s2, 12
318:              blt          ra, a3, 324f
                  sltu         t6, t1, a0
320:              xor          zero, sp, t6
                  sltu         a5, s11, zero
322:              andi         s3, ra, 677
                  nop
324:              blt          sp, a0, 330f
                  andi         t4, s8, -543
                  andi         a0, a3, 1865
                  slti         s6, t0, -1542
                  srli         t2, s3, 12
                  bge          s11, s7, 333f
330:              andi         a2, s4, 504
                  nop
332:              addi         s3, a6, 1719
333:              sll          s11, a3, a3
                  bge          a3, s4, 354f
                  sltiu        t1, s7, -1454
                  nop
                  sll          tp, s7, s3
                  slt          s4, zero, zero
                  and          t1, sp, s5
                  nop
                  bge          a3, t6, 355f
                  sltiu        s4, s9, -100
                  xor          s2, s3, zero
                  andi         a3, s5, 580
                  nop
                  add          a2, s6, a7
                  add          a0, t5, t4
                  sll          a0, s6, t4
                  srli         sp, t2, 1
                  srai         a1, t5, 24
                  bge          a2, s5, 352f
352:              bgeu         t0, sp, 364f
                  srli         a1, tp, 13
354:              and          gp, s7, t4
355:              sltu         s3, s9, s1
                  bge          t1, a7, 360f
                  andi         s10, s9, 341
                  srli         ra, s8, 19
                  bgeu         s4, a5, 375f
360:              lui          zero, 951736
                  sltu         sp, s0, sp
                  addi         t1, s9, 1896
                  srai         ra, s11, 13
364:              xor          ra, t4, s11
                  slt          t4, sp, s10
                  andi         s10, s8, -621
                  slli         ra, gp, 0
                  bne          a7, sp, 381f
                  addi         s0, tp, 1537
                  bge          t6, ra, 387f
                  auipc        s0, 639889
                  lui          s2, 762012
                  srl          s5, t0, t4
                  sltiu        s8, t4, -910
375:              srai         a0, t1, 1
                  sra          a6, sp, s7
                  andi         s4, s2, -1679
                  add          t5, s1, s7
                  or           a2, s10, s10
                  bge          s7, zero, 400f
381:              bgeu         t3, t5, 393f
                  sltu         s7, a7, a3
                  xor          s11, a5, t5
                  and          s2, s9, s8
                  or           a6, s10, s6
                  andi         s6, zero, 1341
387:              sltu         s5, s6, s8
                  addi         a4, s11, -2042
                  xori         s7, a4, 1051
                  addi         t1, t1, 1922
                  beq          ra, s9, 409f
                  sltu         a3, s2, s1
393:              slti         ra, t3, -1527
                  ori          s0, t3, 1042
                  xor          a6, a5, zero
                  slti         gp, a6, -1197
                  nop
                  add          a2, t2, a4
                  slti         t6, t5, 1416
400:              xor          s4, a5, a2
                  srli         s6, ra, 16
                  slli         t1, t5, 15
                  sltiu        sp, t5, 186
                  or           s6, s5, s0
                  bgeu         a2, s3, 421f
                  or           s10, s2, s4
                  xori         t3, zero, -1951
                  bge          t6, t0, 425f
409:              xor          a7, s5, t5
                  srai         s11, t4, 18
                  xor          t2, t1, s7
                  add          s0, a3, t0
                  nop
                  sltu         zero, s1, zero
                  addi         t4, t4, 1657
                  slli         s10, a2, 24
                  sltiu        a5, a2, 1311
                  or           zero, a6, s0
                  and          s2, a7, t3
                  or           t6, s0, t4
421:              blt          s5, t6, 435f
                  slt          gp, s8, s4
                  slt          t3, s9, s0
                  sll          s0, sp, s4
425:              add          sp, s3, gp
                  ori          s5, gp, -338
                  add          s10, s0, s10
                  ori          ra, a5, -1887
                  ori          gp, s9, 1578
                  bltu         t1, t2, 434f
                  bne          a6, s8, 432f
432:              slt          s3, a7, t4
                  add          s2, t2, t6
434:              andi         gp, t0, -684
435:              or           s8, t0, s11
                  xor          gp, s1, s7
                  bltu         t4, a3, 438f
438:              lui          zero, 649912
                  auipc        s2, 479373
                  beq          s8, s1, 455f
                  sra          s7, t0, tp
                  lui          a6, 388250
                  srli         tp, s8, 13
                  bge          a1, s7, 461f
                  blt          t1, t2, 448f
                  slli         t2, s1, 17
                  sltiu        t5, a5, 1377
448:              beq          s3, a0, 458f
                  blt          s1, s5, 455f
                  lui          a1, 952129
                  sll          s0, a4, s2
                  sll          s0, t0, t6
                  andi         a6, s7, -1271
                  srai         tp, a1, 17
455:              bgeu         s0, t5, 460f
                  slti         s8, sp, -1290
                  beq          s0, s7, 466f
458:              xori         a2, s6, 1369
                  or           s11, ra, t1
460:              xor          a1, sp, a5
461:              xori         sp, a6, -1882
                  bltu         s6, gp, 475f
                  srl          s0, s1, s4
                  sltiu        a1, s7, 502
                  srl          s4, t6, zero
466:              add          a2, t3, sp
                  nop
                  ori          a7, s6, 685
                  addi         a1, sp, 1866
                  srai         a7, s1, 30
                  sltiu        s6, ra, 509
                  la           s7, region_0+353 #start riscv_load_store_rand_instr_stream_11
                  sb           t0, 1075(s7)
                  andi         s8, s5, -869
                  andi         tp, a4, -1785
                  srl          a0, s8, t1
                  and          a4, t5, s8
                  sra          gp, s5, s9
                  lbu          t3, 170(s7)
                  srli         a4, a0, 21
                  slli         sp, s11, 5
                  addi         zero, t0, -1617
                  sh           t5, -309(s7)
                  and          s0, s4, s0
                  lb           s4, 800(s7)
                  lui          s10, 399841
                  xori         a1, a3, -1374
                  andi         t4, a2, -1037
                  sltu         gp, t0, s5
                  sh           a1, 1501(s7)
                  lui          a1, 434526
                  slti         zero, t2, -1306
                  slt          t5, gp, t6
                  srai         s5, zero, 1
                  sb           s6, 1040(s7)
                  add          a5, t5, s3
                  sh           a1, 785(s7)
                  xori         a2, s1, 327
                  andi         tp, t6, 1536
                  lb           a3, 161(s7)
                  lui          s11, 1011977
                  sb           a5, 1090(s7)
                  lbu          tp, 974(s7) #end riscv_load_store_rand_instr_stream_11
                  blt          s5, ra, 488f
                  bltu         s11, a4, 488f
                  blt          t2, a6, 488f
475:              slli         a2, a4, 11
                  auipc        a0, 1014377
                  bltu         t6, gp, 484f
                  nop
                  auipc        a7, 302913
                  auipc        a0, 900047
                  andi         s2, t0, -952
                  or           s11, t0, s11
                  bne          s11, s1, 489f
484:              add          gp, a1, t0
                  sltiu        t1, s5, -602
                  srai         t4, t2, 22
                  srli         sp, t1, 15
488:              srli         t1, s11, 27
489:              sltu         t5, ra, s3
                  lui          s2, 465183
                  beq          s3, zero, 503f
                  bgeu         s9, s4, 497f
                  xor          s7, a0, s3
                  xor          a6, s2, t1
                  andi         s7, s4, -1062
                  nop
497:              sll          ra, t6, s3
                  beq          s2, a4, 502f
                  auipc        s7, 109494
                  sub          tp, sp, s6
                  srli         s10, t3, 26
502:              xor          gp, tp, t3
503:              nop
                  slli         s10, s9, 30
                  sltu         a0, t0, s8
                  blt          gp, s11, 510f
                  bne          a1, s2, 508f
508:              sltu         gp, a7, s8
                  sra          s2, s8, s1
510:              sub          gp, s9, s1
                  ori          tp, s5, 1367
                  auipc        a3, 974075
                  slti         s4, s2, -865
                  xor          a3, a5, a6
                  sub          a6, s7, s8
                  addi         s8, t5, 923
                  ori          s6, a1, 1361
                  sltu         gp, s11, a0
                  bltu         zero, t5, 525f
                  srl          s6, s2, tp
                  andi         tp, s4, -1808
                  xor          a3, s6, t6
                  sll          a5, a3, a4
                  slli         s2, t2, 1
525:              lui          a3, 518933
                  bgeu         s3, a5, 542f
                  srl          tp, gp, s0
                  slli         t4, a0, 15
                  sltu         s7, s7, sp
                  slli         zero, s8, 17
                  beq          t6, s10, 547f
                  sra          s7, a6, tp
                  beq          s2, ra, 537f
                  bltu         a2, s1, 544f
                  ori          t4, a6, -1346
                  sltiu        gp, s10, 1585
537:              bgeu         a5, zero, 543f
                  sub          a1, t5, t3
                  add          ra, s11, s1
                  or           t4, t5, s2
                  sra          s8, ra, s7
542:              addi         s0, s5, 346
543:              ori          a4, s1, -316
544:              addi         t5, a5, -674
                  bltu         a4, tp, 552f
                  slt          s10, s8, s7
547:              add          a5, s8, s8
                  bltu         s2, a5, 568f
                  blt          s1, a7, 564f
                  sltu         tp, s7, s11
                  slli         s11, a1, 11
552:              lui          a1, 274688
                  sltiu        a2, t3, 1004
                  lui          t1, 1034766
                  xori         t4, s5, 68
                  srai         s0, tp, 28
                  andi         s6, a2, 1955
                  bge          s3, t6, 574f
                  add          s0, t1, gp
                  srai         s11, s1, 3
                  and          sp, t2, t6
                  or           a2, s10, zero
                  srai         s5, s5, 20
564:              add          t6, s2, a3
                  andi         s4, ra, 1287
                  blt          a4, t1, 571f
                  slt          s4, a3, t4
568:              auipc        a1, 293360
                  xori         tp, s4, -667
                  srai         a4, a1, 2
571:              andi         zero, gp, -936
                  bltu         s8, t3, 584f
                  xori         t1, a1, -405
574:              nop
                  xor          s0, s8, s2
                  and          t3, t2, t3
                  sll          s8, s3, t0
                  srli         t3, t4, 0
                  xor          a0, a2, a2
                  sub          s7, s8, t2
                  add          s10, a7, t1
                  nop
                  add          s6, t1, t0
584:              sra          ra, s4, s11
                  ori          t4, tp, 1931
                  auipc        s8, 546717
                  bge          gp, t4, 591f
                  ori          a4, s1, -440
                  sra          s11, a3, a2
                  lui          a4, 344344
591:              ori          a1, t0, -1972
                  addi         a5, s3, 727
                  bge          zero, s7, 594f
594:              add          a3, a2, a7
                  xori         t4, t3, -43
                  srai         s3, a4, 22
                  sll          s4, a3, a7
                  sltiu        a4, a3, -1911
                  sltiu        a7, s1, 1638
                  auipc        zero, 652664
                  xor          s2, s10, t6
                  andi         a6, a0, -984
                  sra          s10, t3, s1
                  sll          a5, ra, s9
                  sltu         gp, a4, s11
                  lui          s3, 570893
                  srli         a4, s10, 21
                  bgeu         s5, t5, 617f
                  slti         s8, zero, -190
                  sltiu        a6, s4, -496
                  sub          a5, a6, s5
                  sll          s8, t1, a1
                  sltu         t1, sp, t5
                  auipc        ra, 47165
                  addi         a6, s1, -998
                  ori          t3, s9, -678
617:              addi         s0, a2, 945
                  or           a1, s7, t1
                  bge          ra, s0, 631f
                  bge          s5, a3, 638f
                  slti         s8, ra, -1023
                  xori         a4, t4, 1233
                  ori          t2, t2, -1361
                  sub          s4, a7, t0
                  slli         gp, t0, 15
                  bne          s7, a7, 640f
                  beq          a2, s1, 644f
                  sra          s7, a7, tp
                  sub          s0, a0, s9
                  xor          s10, t6, s1
631:              sll          a7, s10, a5
                  sltu         ra, a3, t0
                  ori          tp, s5, 631
                  beq          t4, a7, 650f
                  xori         a5, t3, -1715
                  bne          t1, zero, 640f
                  and          s0, t4, s8
638:              xori         t2, ra, 392
                  and          t2, a3, s8
640:              andi         a6, a5, 112
                  add          t3, t2, t0
                  addi         a6, s9, 706
                  bge          a5, a0, 644f
644:              sltiu        ra, a4, -124
                  bge          s8, s4, 658f
                  auipc        s5, 174847
                  and          zero, zero, s11
                  blt          s4, s3, 649f
649:              sltu         a5, s5, t6
650:              slt          ra, s1, gp
                  slli         t5, s6, 20
                  xor          a3, s0, ra
                  sltiu        s11, a5, -546
                  ori          s2, s5, 194
                  blt          a4, s8, 658f
                  andi         a7, a0, -296
                  srl          s11, ra, s7
658:              sltu         tp, a6, a5
                  bge          a4, s9, 676f
                  lui          s6, 320886
                  bge          s0, a6, 666f
                  blt          s7, s8, 676f
                  ori          t2, s3, 1064
                  auipc        s6, 31325
                  bltu         t6, tp, 680f
666:              srl          s2, t1, t2
                  bgeu         s9, s4, 673f
                  or           a4, t6, a0
                  andi         t6, s5, 1785
                  auipc        t6, 298449
                  add          ra, a5, t3
                  auipc        a5, 556735
673:              slli         sp, tp, 1
                  blt          s9, s2, 680f
                  bge          s10, s11, 691f
676:              auipc        t1, 402161
                  beq          t5, s1, 693f
                  bge          a3, s7, 694f
                  bne          t0, s8, 689f
680:              addi         a3, s4, -21
                  slli         ra, s5, 4
                  andi         t5, a6, 982
                  bgeu         s8, s5, 699f
                  addi         s4, s1, -1963
                  nop
                  bgeu         s4, s1, 703f
                  xori         ra, tp, 562
                  bge          ra, a5, 693f
689:              beq          a1, a7, 693f
                  andi         a2, a7, 1317
691:              sra          a4, sp, ra
                  blt          s6, t3, 709f
693:              srli         zero, s10, 13
694:              xor          t1, a0, t5
                  xori         s4, t2, 456
                  bge          ra, t0, 711f
                  slli         s0, a1, 29
                  blt          s3, t2, 716f
699:              or           tp, s2, t4
                  xori         sp, t0, -1095
                  srai         s8, a2, 5
                  andi         a4, t3, -460
703:              nop
                  slli         s5, a3, 20
                  sra          sp, s7, t6
                  sra          a7, ra, t5
                  add          s0, s11, s3
                  xor          zero, a5, a4
709:              ori          tp, a6, 890
                  blt          t0, s6, 711f
711:              sub          ra, a1, tp
                  andi         a7, s5, -1583
                  bge          a6, t5, 727f
                  slt          a0, s1, s0
                  bltu         t2, t6, 721f
716:              xori         a5, ra, 1460
                  and          s4, t4, s5
                  bne          a1, s5, 722f
                  nop
                  slt          t6, s0, s11
721:              slli         gp, a6, 13
722:              lui          s4, 577709
                  bltu         s8, ra, 738f
                  bne          zero, t6, 737f
                  nop
                  srli         s4, a5, 5
727:              auipc        a6, 1011179
                  add          t6, s2, s2
                  nop
                  lui          t1, 1040289
                  and          s8, a5, s1
                  bge          s8, t3, 733f
733:              xor          s11, a0, a1
                  slti         t2, tp, -1420
                  ori          a6, s1, 270
                  slli         s4, a7, 12
737:              addi         zero, t4, 1815
738:              bge          t3, t3, 744f
                  bne          a7, gp, 748f
                  beq          a7, s9, 754f
                  sltu         a1, a3, t0
                  slt          ra, t1, s3
                  or           a5, s3, t6
744:              sll          t2, s8, t3
                  bltu         s2, s5, 749f
                  slli         a2, t4, 14
                  beq          s2, a3, 767f
748:              nop
749:              bltu         a0, s2, 750f
750:              bge          s2, a1, 753f
                  slti         t1, zero, -1522
                  sub          s11, s6, s8
753:              xor          s0, s9, t1
754:              slli         sp, gp, 16
                  srl          tp, a5, zero
                  blt          t3, s10, 768f
                  addi         s6, gp, -1333
                  and          t6, t1, zero
                  nop
                  sll          s7, t4, s9
                  beq          s10, a6, 777f
                  lui          zero, 467197
                  and          s0, s3, s4
                  beq          tp, s7, 780f
                  blt          s11, a5, 777f
                  add          a4, a2, tp
767:              andi         s0, s9, 273
768:              sltu         s8, s0, s7
                  blt          a3, a2, 775f
                  slli         s5, t2, 5
                  beq          a5, sp, 776f
                  xor          s8, s0, ra
                  sll          a2, a7, s11
                  add          t6, s0, ra
775:              srli         a2, t5, 22
776:              sra          s4, a7, t5
777:              or           a2, s4, tp
                  sub          a1, t6, s10
                  and          ra, t3, s4
780:              slti         t1, s2, -1848
                  andi         a7, a1, 681
                  andi         a1, s8, 70
                  sltu         gp, s1, s11
                  slt          sp, gp, t4
                  nop
                  slli         s3, s0, 15
                  srai         sp, s1, 24
                  slt          zero, sp, s9
                  add          t1, a7, gp
                  blt          s11, a2, 797f
                  beq          s7, t6, 801f
                  ori          t3, a3, 1844
                  and          t1, s11, a5
                  add          t4, a3, a3
                  or           a3, a3, t4
                  slt          gp, a4, s2
797:              slli         a5, t6, 21
                  lui          t5, 280382
                  slti         s11, t5, 1737
                  srli         s6, s2, 21
801:              sltu         gp, a0, s8
                  beq          zero, t1, 803f
803:              sltu         s2, s5, s11
                  srl          s2, sp, s7
                  ori          t1, s0, -1374
                  xor          gp, a2, a2
                  xor          t1, a0, gp
                  sltiu        gp, s0, 1484
                  bge          ra, sp, 815f
                  sltu         tp, s11, a1
                  lui          s5, 129750
                  slti         a6, t5, 932
                  sltiu        t1, a4, 160
                  srai         a6, s0, 30
815:              and          t4, s8, s0
                  slti         s2, s5, 1472
                  srli         s0, ra, 9
                  beq          s0, t1, 827f
                  sll          t6, t1, s4
                  beq          s7, s5, 832f
                  slti         s2, s11, 1480
                  sltu         sp, s2, ra
                  bge          zero, a6, 824f
824:              or           tp, a0, a7
                  slti         s2, zero, 943
                  sltu         s7, a6, s6
827:              srai         t2, t5, 11
                  xor          a4, s9, a1
                  xori         s3, t0, 1227
                  ori          ra, a0, 805
                  srai         s6, s10, 25
832:              and          ra, gp, a7
                  bltu         a2, zero, 848f
                  sltu         a4, ra, s5
                  and          s6, s4, s0
                  xori         t5, s3, 1457
                  slti         a2, s6, -1397
                  sltu         t5, s11, t6
                  slti         t2, a4, 525
                  sll          s5, s0, t4
                  and          a5, sp, a5
                  bne          s9, tp, 848f
                  andi         gp, s1, -61
                  sltu         gp, s6, a7
                  sll          t1, a2, a4
                  add          t1, a0, a3
                  blt          s9, t3, 862f
848:              sub          s10, a5, s7
                  slli         s5, s0, 23
                  blt          t1, s4, 866f
                  ori          s4, s9, 1248
                  or           s5, s9, s7
                  addi         a4, t0, -625
                  blt          s0, s0, 870f
                  srli         ra, s4, 20
                  xori         sp, t2, 271
                  bgeu         s6, t1, 877f
                  auipc        a5, 621698
                  addi         a5, t5, -859
                  nop
                  sltiu        tp, s3, -750
862:              add          s2, s3, gp
                  sub          a0, s8, s8
                  srai         a2, a6, 4
                  srli         s4, ra, 13
866:              bne          s3, s6, 880f
                  lui          s6, 501413
                  beq          s5, t0, 880f
                  sll          a4, t2, s9
870:              sll          t2, t4, a1
                  andi         s8, t4, 911
                  addi         s10, t6, -73
                  auipc        t4, 866190
                  xori         t3, a7, 160
                  lui          s8, 554009
                  sltiu        a3, tp, 256
877:              xor          t6, s2, t1
                  sra          t1, a1, a5
                  srai         a0, a5, 0
880:              sub          a1, t6, s2
                  nop
                  xori         s0, ra, 1650
                  sub          a2, zero, a6
                  add          s8, s9, gp
                  and          ra, a3, zero
                  bgeu         s5, t5, 900f
                  sltu         s4, t4, s3
                  sub          s2, t0, tp
                  srai         zero, t4, 6
                  lui          a2, 617629
                  or           gp, t3, t1
                  or           s7, a4, t1
                  sub          s11, s8, sp
                  la           ra, sub_10
                  auipc        s10, 854229
                  addi         ra, ra, -397
                  sub          a7, a0, t2
                  srli         t6, s10, 31
                  bge          zero, t1, sub_9_j14 #branch to jump instr
                  slt          t5, gp, t5
sub_9_j14:        jalr         t1, ra, 397 #jump sub_9 -> sub_10
                  xori         s0, a5, -495
                  andi         s10, s11, 1345
                  sub          s8, s7, zero
                  lui          s2, 917574
                  bge          s10, a5, 903f
                  beq          a1, s6, 903f
                  andi         t2, gp, -41
900:              nop
                  slt          a6, s0, s11
                  bge          a3, gp, 903f
903:              nop
                  add          s11, a5, a1
                  bgeu         a2, a2, 922f
                  sra          t4, s0, a6
                  slli         s5, t2, 28
                  andi         s0, gp, -1353
                  srli         a2, zero, 10
                  la           sp, region_1+30 #start riscv_load_store_rand_instr_stream_2
                  xori         a2, a4, -54
                  lb           t3, 605(sp)
                  sub          a7, t1, t4
                  xor          a0, s8, tp
                  lhu          s7, 692(sp)
                  sra          s8, t4, a4
                  xor          a6, s5, tp
                  sh           zero, 810(sp)
                  lui          s10, 686284
                  xori         a6, gp, -1263
                  lbu          ra, 155(sp)
                  add          gp, a4, s7
                  lb           t1, 1431(sp)
                  lb           t5, 405(sp)
                  slt          t4, s2, s7
                  lb           a0, 1837(sp)
                  sb           a0, 445(sp)
                  xor          a0, a5, s10
                  lbu          s10, 1471(sp)
                  lb           s4, 638(sp)
                  auipc        a4, 481166
                  or           s4, s11, s4
                  sll          t6, t1, a6
                  srai         s11, s9, 18
                  sltiu        a3, t5, 1341
                  lb           t1, 21(sp)
                  lhu          zero, 566(sp)
                  auipc        a0, 773025
                  sb           sp, 122(sp)
                  sra          a0, t2, s10
                  sb           a5, 768(sp)
                  srl          a5, a3, tp
                  xori         a7, a3, 1854
                  lbu          s7, 1793(sp)
                  lb           t6, 1897(sp)
                  lbu          t2, 463(sp)
                  lhu          t6, 1440(sp)
                  sltu         s0, t0, s11
                  xori         a7, zero, 1913
                  sb           t3, 139(sp)
                  srli         a5, a7, 2
                  lbu          t5, 607(sp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         ra, t4, 928f
                  blt          s1, s2, 918f
                  add          t3, s10, s9
                  slti         s2, t3, 503
                  add          s11, a6, t0
                  sll          a0, t1, a4
                  bltu         a4, s9, 929f
                  xori         s4, s6, 1401
918:              add          t6, sp, t1
                  slti         t1, a2, -1511
                  srai         a1, s10, 7
                  and          t6, t0, s9
922:              bge          t0, s8, 927f
                  srai         ra, s11, 13
                  addi         a3, s11, -517
                  sltu         gp, a4, a6
                  srli         zero, s5, 0
927:              sltu         s3, a7, a4
928:              sltiu        s5, a6, -670
929:              slli         a6, s3, 27
                  and          zero, a3, a3
                  bne          a1, s0, 947f
                  nop
                  andi         a0, s8, -40
                  lui          t5, 938314
                  bge          gp, a4, 952f
                  ori          a1, zero, -326
                  srli         t3, s3, 2
                  slli         t5, s7, 12
                  blt          s4, a7, 943f
                  nop
                  srl          s3, s11, s11
                  bne          a0, t5, 958f
943:              and          s6, t3, t4
                  sub          s0, zero, zero
                  bltu         ra, ra, 949f
                  auipc        s7, 475277
947:              bne          a3, a0, 950f
                  sra          tp, t4, a7
949:              addi         t5, s10, 1358
950:              beq          a0, s11, 954f
                  sub          a4, s6, t4
952:              sll          t4, s4, t0
                  bne          a2, gp, 970f
954:              bgeu         t2, s2, 959f
                  sub          ra, t6, s10
                  sltu         sp, t6, sp
                  bne          s9, a2, 961f
958:              ori          a2, s0, -1645
959:              or           s2, s1, a3
                  or           t6, s0, ra
                  la           gp, sub_10
                  andi         s7, t2, -740
                  srai         s8, t6, 7
                  addi         gp, gp, 58
                  sltiu        a7, a5, 1280
                  slti         t2, s8, -103
sub_9_j15:        jalr         t1, gp, -57 #jump sub_9 -> sub_10
                  bge          t2, tp, 967f
961:              slli         t6, a1, 22
                  and          s6, s0, s3
                  nop
                  beq          s8, sp, 979f
                  nop
                  nop
967:              srli         a2, s6, 0
                  lui          s7, 194086
                  beq          ra, t5, 973f
970:              or           a0, a5, s6
                  beq          s9, t4, 972f
972:              slli         t5, s1, 9
973:              sub          s5, t1, ra
                  srli         t5, sp, 31
                  and          t5, s11, zero
                  bne          s3, a5, 992f
                  bltu         s4, a5, 993f
                  bgeu         s8, s10, 995f
979:              nop
                  add          a3, t1, zero
                  slli         a3, a4, 22
                  beq          t0, t6, 1000f
                  auipc        a2, 699305
                  nop
                  xor          t5, a5, s6
                  beq          gp, t1, 998f
                  auipc        s8, 170936
                  auipc        a7, 196408
                  bgeu         tp, s3, 998f
                  srl          zero, t0, t1
                  addi         a5, a5, -843
992:              lui          t2, 493021
993:              blt          sp, s3, 1006f
                  auipc        s7, 216511
995:              sltiu        s11, a6, 1854
                  add          t4, s1, t2
                  sll          s2, a5, s8
998:              sub          s6, a3, t4
                  sltu         s7, a3, t2
1000:             blt          a2, t1, 1001f
1001:             srli         s5, s5, 6
                  add          t5, s0, t0
                  sll          tp, t6, t6
                  blt          t6, ra, 1009f
                  bgeu         s5, s0, 1008f
1006:             beq          s7, s4, 1018f
                  bgeu         t4, a4, 1013f
1008:             sltu         zero, t0, zero
1009:             nop
                  sra          s0, s8, s1
                  blt          a0, a0, 1012f
1012:             xori         s3, t1, -1720
1013:             bltu         ra, s1, 1019f
                  bltu         a0, zero, 1034f
                  add          a6, a0, a4
                  ori          a6, a4, 504
                  srli         a0, t3, 10
1018:             lui          gp, 704970
1019:             srli         s11, ra, 1
                  blt          zero, t0, 1036f
                  xori         tp, sp, -1804
                  add          ra, s7, t5
                  blt          a2, s8, 1027f
                  sub          s8, t6, s8
                  sltu         t6, t4, tp
                  add          s2, s8, a6
1027:             or           a6, a2, a3
                  bgeu         a5, s3, 1042f
                  slti         s10, s3, -987
                  slli         zero, t1, 20
                  beq          s0, t3, 1046f
                  ori          a6, s8, 412
                  srai         a4, t1, 9
1034:             sll          a3, t1, ra
                  addi         t4, sp, 78
1036:             addi         t5, s4, 1247
                  srl          t4, gp, a3
                  sltu         t6, a7, t1
                  bge          t4, a3, 1045f
                  and          ra, s0, t2
                  sll          a7, s5, s0
1042:             srai         s3, t5, 25
                  andi         zero, s2, 11
                  slti         s7, t4, -1703
1045:             and          a5, a5, s5
1046:             bge          a6, a4, 1060f
                  and          a4, t4, t2
                  lui          s3, 914505
                  sub          s4, a2, a7
                  srai         zero, s8, 2
                  bne          s7, zero, 1061f
                  andi         a3, t5, -1425
                  lui          s10, 821054
                  sub          t2, s8, gp
                  or           s3, a1, a0
                  slti         t4, s10, 1393
                  xori         s10, t0, -1054
                  srl          s2, sp, sp
                  bgeu         a4, ra, 1075f
1060:             auipc        s0, 347047
1061:             xori         t2, a2, -1985
                  srl          sp, s2, gp
                  auipc        s4, 762724
                  blt          t5, s11, 1069f
                  xori         s5, a1, 890
                  sltu         s10, t6, s7
                  sra          a5, t1, s2
                  sll          t3, s0, a2
1069:             and          a7, a4, s8
                  srl          a1, t3, t3
                  srl          s11, s1, a3
                  nop
                  beq          gp, a6, 1088f
                  sll          a3, s8, a4
1075:             or           s0, t1, s6
                  xori         s5, s0, -1319
                  slli         s5, t0, 3
                  bltu         a0, s0, 1096f
                  xor          a6, a6, s0
                  andi         s10, s3, 383
                  bne          t5, a0, 1093f
                  ori          a5, s10, -1284
                  srli         t3, a4, 19
                  bltu         gp, s9, 1090f
                  add          a5, s2, s2
                  bltu         a2, a3, 1091f
                  and          s10, a4, t6
1088:             bne          s10, a1, 1091f
                  addi         s0, a5, -1282
1090:             ori          a1, t3, -1886
1091:             xori         ra, s10, -1008
                  slti         a3, a5, 1323
1093:             addi         s6, t2, -446
                  srai         a7, a0, 21
                  xor          s5, a0, a3
1096:             lui          s4, 80264
                  andi         a0, a3, 1158
                  srl          t3, ra, a4
                  or           tp, a7, s2
                  srai         tp, t2, 28
                  bne          ra, t4, 1114f
                  sub          s10, s9, s4
                  auipc        s6, 892142
                  slti         s2, a3, 396
                  sltiu        s5, s9, -1927
                  ori          t4, t1, 308
                  slli         s6, gp, 11
                  sra          s6, s9, zero
                  add          a1, t3, s9
                  nop
                  sra          a5, t5, t6
                  bgeu         a1, tp, 1128f
                  bgeu         a7, a3, 1117f
1114:             sltiu        sp, s2, -1783
                  sltu         s10, t6, t6
                  auipc        s6, 386691
1117:             srli         t3, a4, 29
                  sltiu        a6, t4, 1991
                  slli         a7, s0, 31
                  bltu         a3, a1, 1121f
1121:             bltu         s10, ra, 1122f
1122:             addi         ra, a3, -774
                  auipc        s8, 539084
                  bltu         a1, t0, 1139f
                  xor          s8, s8, s10
                  sra          s2, zero, s4
                  ori          s10, s1, -697
1128:             slti         a0, a3, 534
                  sub          s5, a6, s8
                  and          s0, s3, s6
                  or           t6, gp, t4
                  add          t3, s10, s3
                  sra          t4, a6, sp
                  or           s11, s8, t2
                  beq          s1, a2, 1139f
                  lui          s2, 475895
                  sltu         sp, t3, s10
                  add          t3, t4, a2
1139:             or           a2, t1, t1
                  bgeu         a1, s2, 1156f
                  srai         s4, a7, 16
                  srli         s4, t2, 6
                  slt          t4, s4, ra
                  blt          t4, sp, 1161f
                  bne          s8, tp, 1165f
                  sltu         a2, a0, s0
                  addi         a3, t4, 809
                  nop
                  andi         t3, s7, 909
                  xor          s10, a0, s1
                  slti         s6, zero, -83
                  andi         a2, a4, 643
                  bgeu         tp, t4, 1170f
                  xori         t3, t2, -590
                  and          s7, tp, zero
1156:             slti         s0, a2, -229
                  nop
                  srli         s5, t0, 30
                  sra          t5, s0, gp
                  ori          a0, a3, 331
1161:             sltiu        t3, s2, 1325
                  slt          zero, s1, a1
                  bltu         t6, gp, 1179f
                  addi         a6, s5, 1343
1165:             andi         a1, s2, 966
                  xori         sp, s5, 1804
                  beq          s6, a3, 1168f
1168:             add          a3, s0, s0
                  sub          s5, s3, a5
1170:             slti         s7, t0, 1373
                  blt          a4, tp, 1177f
                  sltu         a3, s10, t4
                  sub          s2, a5, t1
                  andi         s6, s6, -1415
                  slli         t6, t4, 5
                  slt          s4, tp, a0
1177:             sltu         s2, t4, s2
                  andi         gp, t5, -577
1179:             sltiu        a4, ra, -87
                  and          s0, s3, s1
                  bge          t4, a2, 1197f
                  auipc        a3, 26038
                  sub          t1, s10, s1
                  andi         a5, t1, 1579
                  srai         s8, gp, 9
                  slt          s11, s11, s7
                  xori         s7, t3, 1801
                  xor          gp, t0, a2
                  bltu         s11, a1, 1198f
                  slli         t5, s1, 9
                  blt          t6, s11, 1197f
                  lui          s10, 293090
                  bge          a3, t4, 1203f
                  sltiu        tp, a7, -558
                  sll          tp, s6, s2
                  add          s8, s7, s0
1197:             sub          s8, s7, s3
1198:             add          a6, s8, a1
                  sra          a4, s1, a6
                  addi         t2, gp, 1401
                  and          tp, s10, s6
                  sra          t2, a1, s6
1203:             srli         a7, gp, 22
                  slli         t1, s4, 15
                  sltu         t4, t3, s9
                  lui          s2, 439946
                  blt          gp, a3, 1221f
                  sll          a6, s10, s1
                  lui          s0, 730809
                  or           s4, s10, s2
                  srli         t5, t5, 26
                  and          a7, a3, a3
                  ori          s5, t6, 1674
                  andi         s6, s11, -943
                  slli         s0, s11, 31
                  or           a2, a1, a0
                  xor          a1, ra, t2
                  srl          t3, a4, s3
                  bgeu         a3, zero, 1223f
                  andi         gp, sp, -898
1221:             addi         t3, s1, -1262
                  beq          s3, s9, 1229f
1223:             xor          s6, s10, s5
                  slt          a2, t1, s8
                  slti         a2, t3, 1750
                  bgeu         s0, a1, 1240f
                  bge          a6, a5, 1239f
                  sra          a5, tp, s3
1229:             nop
                  sltiu        sp, zero, -1263
                  auipc        s5, 723910
                  addi         tp, s7, 161
                  bne          s4, a7, 1249f
                  and          s10, s3, s6
                  and          t4, a2, s2
                  beq          s10, zero, 1250f
                  xori         s3, s10, 480
                  sll          gp, t1, t0
1239:             nop
1240:             beq          s1, a2, 1257f
                  slli         a3, a4, 8
                  xori         a5, s0, 1681
                  sltu         s0, s2, t6
                  xor          t3, s8, s8
                  ori          ra, s3, -199
                  add          s6, a0, a1
                  or           tp, s8, t3
                  sltiu        t6, a4, 44
1249:             blt          s7, sp, 1255f
1250:             auipc        a0, 31752
                  bne          sp, s2, 1263f
                  bge          s8, s8, 1256f
                  add          s5, a3, s7
                  srl          s4, a2, s11
1255:             srl          a7, a1, t1
1256:             addi         s7, gp, 1641
1257:             xori         t3, t1, -1638
                  srai         a5, zero, 11
                  srai         t6, a1, 30
                  sra          t6, t1, s8
                  and          gp, tp, s3
                  slli         t3, s6, 12
1263:             slt          s10, t4, t4
                  and          s11, t3, a0
                  bne          t2, t5, 1269f
                  slli         s4, a7, 23
                  slt          gp, s3, s3
                  sra          a7, zero, tp
1269:             srai         ra, gp, 21
                  sub          a2, t1, s2
                  nop
                  bne          ra, s10, 1278f
                  xor          gp, s1, a1
                  sra          s3, t6, tp
                  bge          s6, zero, 1279f
                  slli         t1, t0, 21
                  lui          a6, 73837
1278:             sra          a4, s6, a4
1279:             xor          sp, s1, s9
                  auipc        s11, 797316
                  slt          a3, gp, a0
                  bgeu         s5, ra, 1283f
1283:             xori         s7, tp, -1679
                  bgeu         a5, t1, 1287f
                  slli         s3, a0, 19
                  auipc        t4, 515567
1287:             nop
                  bgeu         s8, s5, 1303f
                  or           s8, s1, a3
                  srli         t4, zero, 18
                  sub          gp, s4, ra
                  sra          a0, a1, s7
                  auipc        a4, 948132
                  srai         s4, s0, 3
                  bltu         s5, a3, 1308f
                  or           tp, gp, s6
                  sltu         t1, s6, t4
                  auipc        s0, 357578
                  slt          zero, s3, t1
                  and          t2, s2, a2
                  and          s11, a0, a0
                  auipc        s6, 405522
1303:             sub          s4, tp, s5
                  sltu         a2, a7, a2
                  sltu         s7, t2, s0
                  xori         s4, s6, -2006
                  slti         s4, a6, -278
1308:             bge          a3, s2, 1324f
                  slt          s3, s1, s3
                  sub          s7, gp, tp
                  bltu         a0, a6, 1316f
                  sra          t6, s3, s1
                  sra          a7, a4, s5
                  bge          t6, gp, 1321f
                  sll          t5, s7, t1
1316:             sll          s4, gp, s3
                  xori         a5, a7, -1722
                  srli         a1, a7, 19
                  nop
                  sltiu        s11, t1, 2031
1321:             xori         sp, a3, -2002
                  add          a6, s1, s0
                  beq          t5, s4, 1324f
1324:             lui          s4, 460806
                  bne          s10, s2, 1330f
                  bltu         t3, s9, 1336f
                  addi         ra, a5, 1630
                  auipc        s0, 69235
                  bltu         t4, s11, 1345f
1330:             slli         a7, s1, 7
                  bne          s4, tp, 1346f
                  xori         a0, s5, 339
                  auipc        t1, 236682
                  slli         gp, s11, 23
                  sltiu        a2, a2, 873
1336:             sra          s11, s9, a5
                  bge          gp, a4, 1343f
                  slli         a1, s7, 11
                  addi         a6, a6, -1479
                  srl          s5, a3, a2
                  sltu         gp, t6, s8
                  srli         s11, s7, 30
1343:             nop
                  xor          t2, s7, s3
1345:             bge          a3, s9, 1357f
1346:             add          s0, s1, t0
                  and          zero, s6, s4
                  bgeu         t6, t4, 1368f
                  addi         a6, t5, 886
                  bne          t0, tp, 1367f
                  add          t2, tp, s8
                  ori          s10, tp, 1941
                  srl          s2, s2, sp
                  or           t6, s0, a2
                  srai         s5, t2, 5
                  bne          s3, s10, 1372f
1357:             srl          s2, t4, a0
                  slli         t6, s6, 6
                  or           s6, s6, t1
                  srai         a7, s9, 17
                  slt          sp, a2, t4
                  slli         a1, s3, 18
                  sltu         s6, s5, a5
                  sltu         t4, s7, s2
                  auipc        t4, 212627
                  slti         sp, s6, 1639
1367:             bne          s4, zero, 1385f
1368:             bgeu         t6, sp, 1369f
1369:             auipc        t6, 967069
                  xor          s2, t2, tp
                  bgeu         a7, t4, 1380f
1372:             nop
                  beq          t4, s11, 1387f
                  addi         ra, t2, 763
                  lui          t6, 703764
                  sub          a4, sp, s3
                  addi         s2, t4, -790
                  bltu         s9, s10, 1382f
                  bge          t2, a0, 1385f
1380:             bgeu         t1, t5, 1395f
                  or           ra, t1, s5
1382:             xori         s3, s7, -434
                  sub          s7, s9, a2
                  or           s11, t1, s7
1385:             bne          t2, zero, 1386f
1386:             srli         s6, a7, 25
1387:             slli         s7, t4, 21
                  ori          ra, t6, 926
                  bne          s9, a5, 1409f
                  sra          t1, t1, s3
                  beq          ra, a0, 1407f
                  srl          s10, s1, s2
                  srai         t1, a6, 8
                  auipc        s4, 421327
1395:             slli         s11, s0, 13
                  blt          s6, s2, 1408f
                  andi         s10, s2, 950
                  add          s11, a2, s1
                  lui          s10, 99484
                  bge          sp, t1, 1406f
                  auipc        t1, 272992
                  srai         a2, zero, 13
                  ori          a3, s4, -90
                  andi         s3, t2, 1716
                  bge          tp, a2, 1408f
1406:             bgeu         a5, t4, 1422f
1407:             sltu         s0, a7, sp
1408:             bge          gp, s11, 1426f
1409:             bge          ra, s7, 1421f
                  nop
                  sltu         t3, a1, t5
                  bltu         ra, a7, 1417f
                  andi         sp, tp, -99
                  srli         s5, s3, 22
                  bge          s7, tp, 1424f
                  auipc        s11, 1028772
1417:             or           a4, t6, gp
                  srl          t6, s4, s9
                  slti         s5, a5, -1003
                  beq          s11, s3, 1434f
1421:             and          t1, ra, s7
1422:             nop
                  sub          t3, a4, a1
1424:             sltu         a1, a1, s3
                  and          a6, s7, s4
1426:             auipc        a6, 915881
                  srai         s6, ra, 2
                  blt          s2, t5, 1432f
                  addi         ra, a0, -708
                  xor          t2, a4, t0
                  andi         t6, a6, -1386
1432:             sub          gp, a2, s2
                  slt          s7, a3, gp
1434:             bne          s3, s2, 1449f
                  add          tp, a4, s9
                  addi         t6, t2, -1815
                  slti         zero, a3, 2036
                  addi         s0, s9, 1277
                  andi         t5, t2, 370
                  bltu         a4, t3, 1453f
                  bge          a4, a3, 1448f
                  add          t5, gp, a5
                  slli         s6, s9, 7
                  slli         s11, s6, 22
                  nop
                  slti         s3, t5, -540
                  la           tp, region_1+1849 #start riscv_load_store_rand_instr_stream_10
                  sub          zero, tp, s6
                  sb           t2, -1602(tp)
                  and          s11, s0, s2
                  sb           a0, -504(tp)
                  lb           gp, -532(tp)
                  sb           s1, -114(tp)
                  lb           t3, -298(tp)
                  sh           zero, -525(tp)
                  auipc        zero, 671451
                  addi         ra, s4, 1882
                  lhu          sp, -1547(tp)
                  nop
                  sb           t1, -1726(tp)
                  lbu          a7, -552(tp)
                  slt          s3, s4, t4
                  lb           a1, -1416(tp)
                  lb           a7, -155(tp)
                  and          a2, ra, s4
                  lb           s10, 28(tp)
                  slti         sp, s9, 2041
                  slli         a2, t1, 15
                  xor          a5, s2, a7
                  sltiu        t3, s3, 1862
                  lbu          gp, -446(tp)
                  sb           a5, -305(tp)
                  lbu          s4, -1016(tp)
                  sh           s2, -1431(tp) #end riscv_load_store_rand_instr_stream_10
                  addi         a4, t1, -500
1448:             nop
1449:             sltiu        t3, t0, -1478
                  slt          s2, s6, a4
                  slti         a1, s2, -1190
                  sra          t2, t2, zero
1453:             sub          t3, tp, t0
                  auipc        s6, 1021499
                  lui          s10, 830666
                  srli         a4, s6, 27
                  bne          t0, s8, 1473f
                  sra          t1, t1, s5
                  nop
                  sub          a2, s0, a7
                  xor          ra, s1, a2
                  sra          t1, sp, s3
                  bltu         t3, s3, 1477f
                  bgeu         s3, s1, 1465f
1465:             srli         zero, s2, 10
                  bltu         a0, t3, 1470f
                  nop
                  bge          t0, sp, 1469f
1469:             sub          a2, s5, a0
1470:             nop
                  sltu         t6, a2, tp
                  blt          s9, t2, 1489f
1473:             bne          sp, s4, 1489f
                  bltu         s9, s9, 1480f
                  xori         s10, tp, -2041
                  andi         a3, s10, -1306
1477:             bgeu         s6, a6, 1482f
                  sll          t1, s8, t4
                  nop
1480:             and          a2, s5, a2
                  xori         t4, s6, 681
1482:             sltiu        s4, a0, 1979
                  or           t5, s6, t5
                  bne          s4, t0, 1501f
                  bltu         s0, a3, 1495f
                  srai         t3, a0, 13
                  and          s3, sp, t0
                  sll          a5, sp, sp
1489:             addi         a0, t3, -768
                  xor          s2, s2, t1
                  bgeu         a2, s0, 1508f
                  sltu         s3, t2, s8
                  sltiu        t2, tp, -1019
                  xor          s6, s5, t5
1495:             slli         ra, s4, 26
                  sltiu        a4, s5, 1220
                  xor          ra, s3, s9
                  or           a1, tp, t0
                  slli         a6, s8, 10
                  sll          s4, s0, t3
1501:             addi         s4, zero, 1964
                  or           s3, s8, s1
                  auipc        t6, 542166
                  slt          s4, t5, s11
                  xori         s4, tp, 1251
                  andi         t4, t6, -767
                  blt          s3, t2, 1514f
1508:             or           a1, t0, a6
                  nop
                  nop
                  sll          sp, s0, a6
                  blt          s5, a0, 1514f
                  andi         t3, t1, 856
1514:             sltiu        s6, a2, 1400
                  srl          s3, s9, t6
                  sra          s0, s11, s0
                  sltiu        s3, gp, -633
                  slti         a7, t3, -26
                  sll          ra, t4, t0
                  lw           t1, 4(t0)
                  srl          s11, t6, a5
                  andi         a5, s11, 1686
                  addi         t0, t0, 36
                  xor          a4, s11, s5
2026:             addi x14, x6, 1
2026:             jalr x14, x14, 0
sub_6:            sra          a7, s11, tp
                  slti         a2, s4, 1275
                  sltiu        a0, t1, 1802
                  srai         t6, s7, 21
                  srli         a4, s11, 7
                  auipc        t3, 607350
                  bne          a1, a5, sub_6_stack_p
                  andi         t5, t2, 1021
sub_6_stack_p:    addi         t0, t0, -24
                  sw           t1, 4(t0)
                  sub          s7, s11, zero
                  xor          t5, s3, s0
                  bge          a2, t0, 18f
                  auipc        ra, 565355
                  blt          s5, s5, 5f
                  blt          s4, t3, 18f
5:                sltiu        a5, s2, -642
                  ori          tp, s5, -819
                  bltu         a2, t3, 10f
                  srai         s0, t2, 2
                  bltu         s0, a5, 26f
10:               auipc        a3, 599295
                  sltiu        a2, t5, 981
                  andi         gp, s5, -671
                  beq          a5, t0, 26f
                  auipc        a0, 18232
                  add          s11, t1, t2
                  bgeu         s5, ra, 26f
                  xor          t3, a5, s4
18:               sltiu        s4, a1, -1067
                  addi         s10, a5, -304
                  auipc        a2, 43003
                  xori         s0, a5, -371
                  slli         a7, t1, 14
                  sub          a2, s7, a6
                  xori         zero, a3, 353
                  xor          s10, s5, s6
26:               slti         a0, t0, 1808
                  add          s3, sp, t4
                  sltiu        t4, t3, -1186
                  sltiu        a4, ra, -730
                  addi         a3, s7, -802
                  sltu         t2, s4, tp
                  xori         gp, zero, 142
                  lw           t1, 4(t0)
                  addi         t0, t0, 24
                  or           s0, t6, t6
                  ori          sp, gp, 1729
48:               addi x22, x6, 1
48:               jalr x22, x22, 0
sub_5:            addi         t0, t0, -52
                  nop
                  sw           t1, 4(t0)
                  srl          a2, t3, s9
                  sltiu        a6, t6, -290
                  slt          t4, a5, s5
                  slt          s6, s6, t3
                  lui          t2, 79898
                  sra          ra, a3, s3
                  ori          s11, a0, 495
                  srl          t3, t6, s11
                  srl          s11, s0, s2
                  srli         gp, s8, 0
                  srli         t3, s9, 12
sub_5_j8:         jal          t1, sub_7 #jump sub_5 -> sub_7
                  la           a4, sub_7
                  sra          a0, a7, sp
                  sra          s4, s4, a0
                  addi         a4, a4, 780
                  auipc        a7, 198306
                  sub          a3, a0, t1
                  or           a6, a5, a1
sub_5_j9:         jalr         t1, a4, -780 #jump sub_5 -> sub_7
                  sub          sp, s0, t5
                  or           a2, zero, a4
                  la           t5, sub_6
                  sll          ra, tp, zero
                  add          a0, s5, tp
                  addi         s10, a0, 1293
                  add          s0, s10, a0
                  addi         t5, t5, -144
                  srl          s6, s2, t2
                  sltiu        s10, t0, 1677
                  sll          t2, s6, s3
sub_5_j10:        jalr         t1, t5, 144 #jump sub_5 -> sub_6
                  xor          s2, a1, s2
                  and          ra, s3, s10
                  srl          s4, s0, zero
                  sra          t3, s4, sp
                  or           s2, t5, s4
                  nop
sub_5_j11:        jal          t1, sub_8 #jump sub_5 -> sub_8
                  bge          t2, a4, 3f
                  xori         s11, s10, 1500
                  slli         ra, t6, 21
3:                bgeu         a6, gp, 10f
                  slt          s3, s2, t3
                  bne          a1, a4, 10f
                  bge          s0, a3, 10f
                  lui          s8, 507699
                  sltu         s3, a4, s11
                  andi         s10, a4, 287
10:               sll          a0, gp, ra
                  nop
                  lw           t1, 4(t0)
                  srai         a6, s1, 4
                  slli         t5, a7, 28
                  ori          a1, tp, -1862
                  addi         t0, t0, 52
                  lui          t3, 382902
                  slti         s2, sp, -1103
                  nop
                  xori         s3, t5, 1343
63:               addi x26, x6, 1
63:               jalr x26, x26, 0
sub_7:            blt          a7, t0, sub_7_stack_p
                  lui          a5, 651124
                  auipc        s5, 687053
sub_7_stack_p:    addi         t0, t0, -24
                  sw           t1, 4(t0)
                  srai         a5, sp, 31
                  andi         s0, a5, 1911
                  srl          a6, a0, t5
                  srai         t5, t3, 4
                  lui          a3, 444788
                  sltu         a6, a6, s9
                  srai         s6, a1, 20
sub_7_j12:        jal          t1, sub_9 #jump sub_7 -> sub_9
                  auipc        t1, 691526
                  and          a6, s1, s8
                  la           s7, sub_9
                  addi         s7, s7, -229
                  auipc        a2, 738693
                  andi         s3, t0, 1281
                  bne          s6, a6, sub_7_j13 #branch to jump instr
                  sll          s6, a5, s4
                  srli         s3, ra, 17
sub_7_j13:        jalr         t1, s7, 229 #jump sub_7 -> sub_9
                  sltu         t6, t6, t4
                  or           t5, s3, t6
                  or           s6, s4, s2
                  bge          a7, t0, 21f
                  sltu         sp, t2, a3
                  sltu         s3, s10, s2
                  sub          t6, t5, s5
                  blt          s11, a1, 21f
                  ori          a0, t4, 1334
                  lui          a0, 882304
                  lui          s2, 1013628
                  sub          t1, s2, t2
                  slli         a2, gp, 10
                  sltu         a3, s2, tp
                  sra          t3, t4, t1
                  xori         s7, t3, -1532
                  xori         s4, s1, -660
                  beq          a4, zero, 27f
                  sltu         s10, a2, s8
                  slti         t2, a6, 1833
                  sltiu        s0, zero, -1531
21:               sub          a3, a1, sp
                  beq          zero, s8, 33f
                  srli         s7, s2, 19
                  sll          t1, t5, a0
                  slli         s7, a0, 1
                  auipc        a5, 739527
27:               bltu         s6, a5, 38f
                  bne          s10, tp, 29f
29:               blt          t6, s9, 41f
                  bgeu         a6, t0, 49f
                  beq          a2, sp, 36f
                  nop
33:               xori         gp, t6, -702
                  sltiu        s10, s7, -1265
                  or           t3, a4, t6
36:               srai         a0, s5, 16
                  bne          ra, t6, 49f
38:               bgeu         s10, s1, 49f
                  sub          a1, s1, a7
                  bgeu         t0, s3, 45f
41:               or           a5, s9, s9
                  blt          s9, s2, 49f
                  sll          tp, t6, a5
                  beq          t4, a6, 48f
45:               sltiu        a5, ra, -463
                  slli         a5, s9, 29
                  srai         gp, s6, 15
48:               slti         a4, a1, -1958
49:               add          s4, a4, s5
                  slti         zero, t2, -1138
                  andi         t6, s5, 202
                  ori          t6, s6, -1453
                  lui          a1, 219605
                  sra          a1, t4, tp
                  addi         t2, s10, 1734
                  andi         s10, s0, 1268
                  auipc        s7, 279995
                  srl          t4, t1, s6
                  ori          t6, s3, 1381
                  andi         t2, s11, 1027
                  addi         s0, s8, 1023
                  beq          s10, a0, 64f
                  and          a3, t5, a6
64:               lui          a5, 425983
                  or           s3, s7, a5
                  lw           t1, 4(t0)
                  srli         a7, t6, 18
                  xor          a5, t3, a0
                  and          t6, a7, t6
                  and          a7, t4, ra
                  addi         t0, t0, 24
                  srai         t4, s8, 4
96:               addi x14, x6, 1
96:               jalr x14, x14, 0
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
.word 0x3b8237f0, 0xf366f92e, 0xdc206e64, 0x780d6582, 0x8ff7fcd0, 0x298351d4, 0x5e46e836, 0x0dc6fb2a
.word 0xc40c492b, 0x5c6802f3, 0x8bb2ef54, 0x9ef3f800, 0xcf2f16fb, 0x5f6f6334, 0x1028e4ae, 0xc2cf4097
.word 0xc0cc4dac, 0x974b3e1a, 0xe38cbca0, 0xfed31d8d, 0x08fe6dd9, 0xe0d96511, 0x94a860fc, 0xe13f1d17
.word 0x42b9fbc4, 0x78ab8ad8, 0x2c88166f, 0xae9a9bca, 0xb2463c88, 0x1ea3959c, 0xd0322c2c, 0x6d00cd71
.word 0x04b6ecff, 0x4c25885f, 0x55471178, 0x248f50a6, 0x11df78ff, 0x520e45df, 0x50a42987, 0x3297db15
.word 0x4cd0407c, 0x273cec46, 0x54335873, 0x8969bfeb, 0x8aa21071, 0xf92a3c88, 0x36dd6874, 0x96697572
.word 0x0089a899, 0x2e73f6e3, 0x84907800, 0xc8cccf8e, 0x8e271b00, 0x758ee299, 0x799521c1, 0xc690ebde
.word 0x45f04f97, 0xab285c47, 0x1ef90da9, 0x7a8205be, 0xf0a09e7b, 0x17ea8ed6, 0x5018ef7a, 0xacd8369d
.word 0x7b5a7f81, 0x94ae494f, 0x883165f6, 0x90fe2592, 0xbc699c87, 0xb2669f70, 0xc17974a4, 0x7d4039bb
.word 0x28c75b3b, 0x509846e0, 0xa4a3136b, 0x0cbba849, 0x66f3a2aa, 0xf052add2, 0xe3a4b5a4, 0xfcfed216
.word 0xc90a2d04, 0xc2cdd0a8, 0x34c3ef8a, 0x47360e0f, 0x7bfc1cb9, 0xcb0b05d5, 0xc506582d, 0xaac5f567
.word 0x43199907, 0xdab057da, 0xc0988a5f, 0xaeffeb67, 0x4d03ef30, 0x4d56d677, 0x595eac49, 0xdfb6ea35
.word 0x2762c157, 0xc5cb0054, 0x59b29c59, 0x939b355c, 0x0139b567, 0xb7846794, 0x3c9c22ad, 0x57b9008a
.word 0x61b6bbd0, 0x8dd94a73, 0xaa09453a, 0x9146b6db, 0x52453999, 0x87256b35, 0x34123d25, 0xadfce662
.word 0x9e43dd89, 0x61eac90c, 0xcd9576da, 0xf25d41ae, 0xe0245c95, 0x9cfe6142, 0x09892c70, 0x59945c7b
.word 0x6a0a5690, 0xbad0e8b7, 0x3450c29d, 0x8ce8bd17, 0x1adf0dad, 0x1b77bc81, 0xd7396d23, 0x2cfae7b7
.word 0x88e860ee, 0xafc842ee, 0xfec961b5, 0xe0e37b06, 0x7f748891, 0xf64a7986, 0xae57c50c, 0x88aada35
.word 0x03d9de1c, 0x12093248, 0x07d00793, 0xc66bcb17, 0x2898ff7e, 0xc5637fc8, 0xcb9c1606, 0x88fc236e
.word 0x9986871f, 0xa2ebe882, 0xa532f5e0, 0xf90c07be, 0x280d14c9, 0x3d917ebe, 0x568450a1, 0xcd3aa211
.word 0xf2ca1873, 0xe3ab4e80, 0xe3fef6e1, 0xefed16e6, 0xf5e48989, 0x7f29b684, 0x83049aca, 0x059cc12e
.word 0x7f414e78, 0x8867e032, 0xdf738bf2, 0x60d77ccf, 0xabafad27, 0x6be843f5, 0x91f74900, 0xe967feab
.word 0xb62842eb, 0x15db51ec, 0x3cb63eca, 0x02c98033, 0x5d92e5cf, 0x9394f6e9, 0xf4063384, 0x14a927c8
.word 0x0e510fb9, 0x67994261, 0x16c280ec, 0x140ef8e3, 0x27dd1561, 0x7c109925, 0x36056bb2, 0xde2069a9
.word 0xc6a4a9ee, 0x2b6dc8cb, 0xa0b2ac36, 0x0356ef4a, 0x5cbf3b67, 0xf9e4b87e, 0x122fe780, 0xed9b4ebb
.word 0x9b7e7142, 0xf4bc35b6, 0x078109bb, 0xb343b96a, 0x1d9fb1c5, 0xa494a10d, 0x1a4b7e5d, 0xea3b4d9d
.word 0x1e46da0e, 0xaf3d8822, 0x158a8fd1, 0xf0cc13c0, 0xab887479, 0x07e9ec75, 0xc5edc751, 0x3fa9ec80
.word 0x0d7755a7, 0x65bdd1cd, 0x460d8741, 0x1ff8347f, 0x14841d9f, 0x22461e0e, 0x39f27066, 0x79d0f824
.word 0x6934bfa3, 0x8c71a533, 0x430afd04, 0x57e8370f, 0x1f4146e5, 0x46088e73, 0xae08c0e5, 0x5af29d2b
.word 0x4df5e682, 0x25c6fa19, 0x713b1503, 0x0f0a5c09, 0xf639e2b5, 0x15edff91, 0xafd97641, 0xf47f7969
.word 0x0434cdf9, 0x39381efa, 0xd66033e5, 0x7a06e69e, 0x13561d8e, 0xe409cf11, 0xb0d241b3, 0xc3dc0998
.word 0xc9bf9b71, 0xaca2310d, 0xcccef3b8, 0xd05a3efa, 0xc3cc1e25, 0x2ce6ab8f, 0xf1ba0662, 0x335e43ad
.word 0x0b20bfb3, 0x97a324e6, 0x46d837df, 0x9ff6f921, 0x98329571, 0x9884ea65, 0x6ed7fcc3, 0x95906c7f
.word 0x868f08b6, 0xc543b55b, 0x408c5c20, 0x6aee0b75, 0xefe89180, 0xc488424a, 0xbbfe4c34, 0x6c3bce54
.word 0x7a842708, 0xecf7db07, 0x5000f5e7, 0x948cba7f, 0x7e35636e, 0x5d3c122a, 0x1491589b, 0xa3befe47
.word 0x5675ca89, 0x27d781d1, 0xfa9fb7e5, 0x1222e51b, 0x5721537b, 0x599a572e, 0x947f5b0f, 0xc52ec191
.word 0x7bd11bc9, 0x5939e64c, 0x847f0625, 0xeb5ccda2, 0x6c11208c, 0x1e367704, 0x7f180028, 0xbd5dbbcf
.word 0x8b73c171, 0x550e8acc, 0x3f2c7ae3, 0xed940dca, 0x693d5e96, 0x7cdd87d2, 0x6d7e29f9, 0xa136f696
.word 0xc3910745, 0x4444e4a2, 0x79c661b7, 0x07b28122, 0x66e1e6fa, 0x3de00ef1, 0x02fb445b, 0x69d0060a
.word 0xfd48fd2c, 0x3274cd94, 0x5ea99ecf, 0x24973df8, 0x4525af3e, 0xcecdde91, 0x68670aa1, 0x2379b7b5
.word 0x721d6cb2, 0x614424d5, 0x37a09d8b, 0x0bf97207, 0xf8acd68e, 0xf93100a9, 0x45027e83, 0xff8bf14c
.word 0x80b7bb81, 0x0ddb3d53, 0x1b4c3a2a, 0x8ce24eff, 0xe4b96b4b, 0xbbeaf04c, 0xfa58a34a, 0x2a6177b2
.word 0x1b5654bd, 0x0af07657, 0x42b52e0e, 0x4534553b, 0x2312cb21, 0xbc32c325, 0x3a354cf4, 0xb06a317d
.word 0xe25b1b03, 0xd116ba62, 0x3dfe270b, 0x4e44f443, 0x30fbb369, 0xde43486f, 0x3fdfaaf0, 0x06517f0a
.word 0xb79ef6df, 0xe01119e0, 0xeea71e07, 0xdf31c53b, 0x63168c04, 0x85808295, 0xf077eb88, 0x736552a9
.word 0xea7623f5, 0x9c2bcd6a, 0x70227400, 0x98dcea94, 0x6b7b9ba7, 0x17f9cb07, 0x9f513430, 0x0e0b02a2
.word 0xb72d2c45, 0x8f84c6a1, 0xfc89afaa, 0x041e5700, 0x489b4a16, 0xc3ebc907, 0xb5587017, 0xedf60b94
.word 0xdf2c7cd4, 0xcb6a435f, 0xcde621bf, 0x596f1e2a, 0x3d3bf5f4, 0x45db5197, 0x2d0ab263, 0x3764e686
.word 0xd5ab60e2, 0xe051d6b1, 0x73afcdf0, 0x6d5a01fb, 0x33cc931c, 0x9f534256, 0xd5d979f5, 0x1e0d50d9
.word 0x910c272b, 0x180ece54, 0x95227991, 0x8b08daef, 0x7efe476c, 0xa2432639, 0x598f2d75, 0x7efb213f
.word 0xa60b2830, 0xeafe8a28, 0xd5463c95, 0x370a8143, 0x7ba87808, 0xf6461e5e, 0x9ac4d5d7, 0xfb6c2521
.word 0x8ef2e064, 0x2035ed5f, 0xdc7de9cc, 0x2ccd7690, 0xa9592bc0, 0x702bebc1, 0x20cc1a69, 0x249613e9
.word 0xf6a06b6f, 0x6e2c5e25, 0xa2462ead, 0xb2b8baec, 0x38b25bf1, 0x3ebd38e3, 0x83a4c5a2, 0x9e072ef9
.word 0x33491663, 0xed596309, 0x3a8e6cce, 0xc145f27b, 0x7cbbd1f3, 0x57332881, 0x5f7693b1, 0x4d15d562
.word 0xfec683be, 0xeb83702c, 0x5fd5edfd, 0x6c46b08a, 0x9c7fe206, 0x93afc1f9, 0x115012ab, 0x2ab180a0
.word 0xa293a93c, 0x9801daa3, 0xbabaabff, 0x6cc8ec29, 0x3936eab8, 0xbb23b819, 0x6838c3ee, 0x6386ecc0
.word 0x2d2d9971, 0x539129db, 0xf4fb25ea, 0x1b93e568, 0xc7c212fd, 0x9b41d4d8, 0x843b34aa, 0x4c1618f9
.word 0xcbda68bb, 0xcb0dd59f, 0xa6f265b0, 0xf2e0ccf0, 0xfbdedadf, 0x06a78e8f, 0x95d97500, 0xbc13d26f
.word 0xda3a7fd8, 0xabb48909, 0x7ede9771, 0xe038fc88, 0x2b032456, 0x74e87e1c, 0x01f84239, 0x36932ebc
.word 0x579542b3, 0x60f68d93, 0x944fc10d, 0x49d7824f, 0x9e8c979d, 0x31a5e3ed, 0x4ed26ef7, 0x5a2beb3e
.word 0x0ca2bdf3, 0xf8e11202, 0x341499ea, 0xc063e423, 0x36c89029, 0x24ba3141, 0xe6da9422, 0x993134b6
.word 0x6b5c9f8f, 0x635b3739, 0x23a6c763, 0x8f883228, 0x9e0001cc, 0xa214b9ab, 0x87dc1a53, 0xb7b7fa39
.word 0x8dbb2964, 0x631e1ceb, 0x106f1a52, 0x1b756ab0, 0x9c5cbdcf, 0x3f444433, 0x60682b55, 0xe3d77a56
.word 0x7b3eefa4, 0x3f33ff02, 0x16046278, 0x3a89cd4b
.section .region_1,"aw",@progbits;
region_1:
.word 0x4df2a345, 0xf73656c3, 0xa0a144ac, 0x0d7ae848, 0xe7437ade, 0xdd9cafd0, 0x7ad1eab3, 0x8dc24b48
.word 0xd4b88c22, 0xa53cad24, 0xb2b6d8aa, 0x8c70d103, 0x3b4053aa, 0xb9c3f842, 0x07446ec0, 0x928accfa
.word 0xa5c03cb2, 0xafedf483, 0x5108968c, 0x7a409c12, 0x254b43a7, 0xfead2fd2, 0x4de27cd1, 0x71f1d39e
.word 0xd731691f, 0x92d63969, 0x72c27435, 0x31b4b819, 0x77cefd48, 0x3b3f976e, 0x40262f61, 0xa5a50242
.word 0x9b998e1b, 0x2594a79a, 0xbdba1db7, 0xa9f0a7f3, 0x8f322509, 0xf974ddc3, 0x580f5490, 0x70bee4b9
.word 0x12c523bb, 0x588709f1, 0x327126b0, 0x61762200, 0x777daf72, 0x1984608f, 0x7a6a5370, 0xd006d2e1
.word 0xbb0edb99, 0xdbaff1e5, 0x04041d4e, 0x10614a96, 0x3969fe8b, 0x36efdf98, 0x44296e81, 0xb60be76a
.word 0x79f2b065, 0x89caecb5, 0x9fc1dc24, 0x95c91f5c, 0xc65e065a, 0x46d19f80, 0xcf9f2abf, 0x71033d41
.word 0x6d6bf6f0, 0x8d0be0d1, 0x40b4e765, 0x44a68f7b, 0xa7ae5546, 0xc8c53675, 0x9bf7e73a, 0xe2449548
.word 0x18488650, 0x51618b1e, 0x07dbdb55, 0xa0794e6d, 0x3de573a6, 0x9505c353, 0x618f261c, 0xb41bef7f
.word 0x1d0f656e, 0xdeb3f800, 0x9714c1c6, 0x7e321519, 0x43884ebd, 0x7614ba88, 0x99d0bc06, 0xdc438332
.word 0x7127acc7, 0xbd5f8379, 0x5a96db5f, 0x6c270da6, 0x2ea25f9d, 0xae964576, 0x6aa8199d, 0x50ffb5cd
.word 0xdd1993b9, 0x6fd35c6b, 0x7cd6042d, 0xc0a4cf3c, 0xbdd319ba, 0x7e3bcb9e, 0xfa4c744c, 0x4e1043d1
.word 0x8a036c3d, 0xd34477a8, 0x956b8ea4, 0x1da6d5ab, 0xfb831488, 0xec7d108c, 0x9c0f61fa, 0xf90ad28c
.word 0x6cddaf5a, 0x88a1ed26, 0x54145dcf, 0xc65a5730, 0x8b3fb3e2, 0xa4e448a2, 0x79726f8d, 0xfc68230c
.word 0x459e4264, 0xc60a1c34, 0xb837afb6, 0x97e79309, 0x68e5218a, 0x5c9b0555, 0x66525b57, 0xd1376603
.word 0x25082fc4, 0x99d60c67, 0x5ed168af, 0xebfaf382, 0xfee782a9, 0x3d033607, 0xbd79ede0, 0x459c73f5
.word 0xfc553a72, 0x309dabe8, 0x70755def, 0xcc656eac, 0xe7617540, 0xcd2a32f0, 0x7e929681, 0x11db1c23
.word 0xf515607d, 0x1b367825, 0x52a1332b, 0x3781d98d, 0xec1c9814, 0x1908cec7, 0x7cac14b2, 0x813b0caf
.word 0xdf32bc8d, 0xb326b765, 0x94aeb8d3, 0xf8c28756, 0xb84b7663, 0x43025de3, 0xacec6a0c, 0x27c6f358
.word 0xbc303d40, 0x7dc4890c, 0xbe506174, 0x3d4a42f2, 0xb09eeb47, 0x04a11913, 0x2d30706c, 0x21cfda70
.word 0xa87d3087, 0xd08d7ffd, 0x8ad989f2, 0x73f9b425, 0xb48542e9, 0x61de82fc, 0xf20c1742, 0xf4332b9b
.word 0x2f43ce3b, 0x2d07e1bd, 0x699d2a0d, 0x5fbf3962, 0x4629513e, 0xd73fac3d, 0x3bf04f11, 0x796c850c
.word 0x1e1728fe, 0xde5d52c2, 0x4a74c60a, 0x27f02136, 0x12040246, 0x8f081bd0, 0x1a11977f, 0xdbe8b4ea
.word 0x35fe424c, 0x1417ef37, 0x65158828, 0x0efe526b, 0x40c04ef0, 0xc33e79ed, 0x7617ee33, 0xc8fbbd15
.word 0x89853283, 0x1fb682d2, 0x3b85780d, 0xc5303da3, 0x83c2d59d, 0x6083d231, 0x6579d78f, 0x480a0cd1
.word 0x89718f80, 0xc4113d14, 0x60d79d16, 0x84db5895, 0xbaa2b3c7, 0x65dabdd9, 0xef8f8cbc, 0xeac32556
.word 0xc4d49b91, 0xa353bdf5, 0xb78beb52, 0x4e9857d3, 0xded19762, 0xa594cc99, 0xac2a5a9c, 0x51b2e563
.word 0xbc4b969b, 0x664fc7be, 0x9623c2ce, 0xe9d2baee, 0x93ab4a97, 0xd8fec300, 0x8db0a5ac, 0x66802d2c
.word 0x0690db6f, 0x18d8fa18, 0x6811ee55, 0x684a3f35, 0x8cf52132, 0xe0e931fc, 0xccc30cba, 0x34866232
.word 0xc2031ea3, 0xe61d05b5, 0xf3333f81, 0x96c8f1aa, 0x9324312e, 0x303f0fb0, 0x318aeba8, 0xe66d31af
.word 0x90f9b476, 0x762a6a58, 0xfdeedf62, 0x7fe2f223, 0x8b431896, 0xb23a76f9, 0xa22d3311, 0x9fe26622
.word 0x45e9f9ad, 0x60e23192, 0x324ab6ae, 0x6f16dd1e, 0x4b09a7b5, 0x99f30222, 0xe7070751, 0x9b28dcb6
.word 0x3e02fefb, 0x341dc1aa, 0xd6bc499d, 0x4a925e7e, 0xeb86ff98, 0xad9772f9, 0x883e022a, 0x08a9db67
.word 0xe1f1b30e, 0xc3c66763, 0x99df13ff, 0x23d0fd6d, 0x2105b9ef, 0x42b85875, 0x96dce28d, 0x5d3a5ad6
.word 0xe1c1a15f, 0x1b6293ca, 0x6a8a68ee, 0x35832b15, 0xea3f60cd, 0x0e805eac, 0x7fafaa2e, 0x4b614957
.word 0xafa16a6d, 0x7b7122de, 0x83dc6c13, 0x91f23475, 0x2434451a, 0x59eba508, 0x81320937, 0xeae4cd32
.word 0x4cd2fca9, 0xb0804cf7, 0x0579352d, 0x6d46e3e2, 0x58d51c56, 0x43028667, 0xb0549788, 0x63d11bab
.word 0x36646b36, 0x544bd98a, 0x5eb78760, 0x6d74ab86, 0xc77e7e2f, 0x3a4ccaa7, 0x1abc0468, 0x2de8b199
.word 0x2d6f34b1, 0xe6c19d29, 0x6c59c1b7, 0xd65990d1, 0xbdc93522, 0x8cba0d37, 0xd03240f8, 0x4f43a52c
.word 0x023f4a81, 0x47eaaf50, 0x5ffc59ee, 0xe7412ef6, 0x34e7c326, 0x02643e58, 0x9bbbb5c4, 0xcf21691f
.word 0xe7be0df6, 0x83737063, 0x105ead19, 0xa26bffd1, 0x7d681767, 0x0e47e272, 0x53fad612, 0xf99da4e8
.word 0xf1197bdc, 0xe6ec30f0, 0x224f22c0, 0x4bb37be2, 0xf24b651b, 0xfa4a2fd3, 0x85fa3bd6, 0x7581eb92
.word 0x1ec481ea, 0x8575a8ca, 0x0ce1be63, 0xd8d8efb2, 0xece1f1ec, 0xd60e2e79, 0x54056a5b, 0xa8e5fb28
.word 0xe7b3d30e, 0xd50d8306, 0xfb950db3, 0x3caacef1, 0xf12c0fc5, 0x95680f24, 0x5e9faad3, 0x4f92b2cc
.word 0x95191589, 0x464b8c6f, 0xaa633667, 0x37c7b0ef, 0x85b8d3ff, 0x41ea5515, 0x812d3ece, 0x67caaf71
.word 0x0033949f, 0xf4a3f926, 0x47dc7eae, 0x6e927ce8, 0xef541700, 0x365f62ab, 0x6a73c382, 0xd3c6c94e
.word 0x94444df9, 0x55ad9e82, 0x91d46055, 0x7512e287, 0x23185dcb, 0xae28e3b1, 0x4087da52, 0x758bb9f8
.word 0x834ca8ae, 0xaa496aca, 0xcba78c9e, 0xa2d5cb2a, 0x4d5d0a66, 0xca041064, 0x91b9e41a, 0xb8a130d6
.word 0x41ef63d0, 0x17cac6ad, 0x7eb63893, 0x99ff7a67, 0x91b1f60f, 0x1a3a0885, 0x5226a51a, 0xe2df8ea6
.word 0x9bef1765, 0x906f5826, 0x3e20382e, 0x8db2b923, 0xe903da08, 0xe06bc6d6, 0xeb2c3b88, 0x13c21bea
.word 0xbe9d9f95, 0x8300ef71, 0x5882ae93, 0xd834af4b, 0x3dac1fe2, 0x4a16ed7b, 0xd2a9633c, 0x0b5b1fc0
.word 0x2822f42a, 0xa6594f15, 0xf55d30ff, 0x16dd6939, 0xae24c8a9, 0xc8ec18aa, 0x274b5621, 0x46749267
.word 0x7c481dcd, 0x17603d79, 0xc1af11e0, 0x73bba01e, 0x57fe4337, 0xef417a72, 0xedc78005, 0xc06777ae
.word 0x472382c7, 0xddc486ac, 0xe12fd856, 0x61a8f0e9, 0x819653bb, 0x37cace29, 0xe7404298, 0x99f340f6
.word 0xd34b0f0b, 0x074f9b48, 0x14271154, 0xa7f17f8b, 0x767bb642, 0xeface86f, 0x76ffa764, 0xd51a3e81
.word 0x730ff591, 0xee22e4e8, 0x4402bd08, 0x29e9336e, 0xe84b1a0b, 0xc9050616, 0xad10dad5, 0x064a4cb6
.word 0x43535da7, 0x868f8d39, 0x72583b6a, 0x21cbe332, 0x2af5763a, 0x8c420305, 0x57b80238, 0xa4defea7
.word 0x6a41ad2e, 0x60486c8f, 0xbb05345f, 0xf1e82e5a, 0xf9594f17, 0xcdc2df83, 0xd85d6333, 0x7a0421b5
.word 0xb463cc96, 0x71fdadbf, 0x75c04793, 0x72a3b7f3, 0x43a0592f, 0x26a1bd89, 0x02da5fdf, 0x62f4f149
.word 0xbcc8c30b, 0xefec0679, 0x192e2b7c, 0x42c2591b, 0x6821e090, 0x72d239ee, 0x55cb9fd7, 0x403e5026
.word 0xe70f71e8, 0xe7b4ecbf, 0x3bcc9f64, 0x3b22d9d4, 0xa0ca9e99, 0x23a802c8, 0xca798b87, 0x826b36fa
.word 0x6fdc725e, 0xea555b4e, 0xf87ea1dd, 0xe0472a4a
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x9, x5, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x13, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x13, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x13, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x13, x28, ecall_handler
                  li x28, 0x1
                  beq x13, x28, instr_fault_handler
                  li x28, 0x5
                  beq x13, x28, load_fault_handler
                  li x28, 0x7
                  beq x13, x28, store_fault_handler
                  li x28, 0xc
                  beq x13, x28, pt_fault_handler
                  li x28, 0xd
                  beq x13, x28, pt_fault_handler
                  li x28, 0xf
                  beq x13, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x5, x9, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
