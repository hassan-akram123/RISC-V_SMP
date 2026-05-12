.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x30, kernel_stack_end

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
                  li x0, 0xf14503f2
                  li x1, 0xf91a8a67
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x912845cf
                  li x9, 0xf199a48b
                  li x10, 0x0
                  li x11, 0xd
                  li x12, 0x9
                  li x13, 0x0
                  li x14, 0xf9bd9495
                  li x15, 0xf9ded9c2
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x14dceec8
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xc
                  li x31, 0x80000000
                  la x2, user_stack_end
main:             la           s11, region_0+537 #start riscv_load_store_rand_instr_stream_0
                  lb           a5, -319(s11)
                  addi         a3, s5, -182
                  auipc        s3, 827077
                  sb           a6, -343(s11)
                  sll          t3, zero, sp
                  andi         s0, tp, -955
                  srl          a5, s6, ra
                  or           t0, a6, s1
                  sll          s6, s5, s5
                  nop
                  auipc        a2, 941859
                  srl          a0, t2, s4
                  slti         gp, s11, -275
                  sltu         t4, s11, t6
                  sltu         s3, a3, gp
                  auipc        tp, 981029
                  lb           s1, 628(s11)
                  addi         gp, a3, 2020
                  and          gp, t2, a2
                  lui          a6, 635875
                  srli         t6, sp, 23
                  xori         s0, s8, 916
                  lui          s0, 154972
                  sltu         t1, t3, a2
                  lbu          gp, -294(s11)
                  sltu         ra, ra, s11
                  lb           t6, -217(s11)
                  nop
                  srli         t0, s5, 18
                  lhu          s2, 149(s11)
                  lhu          t4, 697(s11)
                  addi         a5, s1, 1493
                  sb           tp, 280(s11)
                  or           s3, s0, gp
                  lb           s0, 708(s11)
                  lb           t6, 391(s11)
                  auipc        s5, 972215
                  lb           s5, 420(s11)
                  lw           a5, 203(s11) #end riscv_load_store_rand_instr_stream_0
                  slti         t4, zero, 390
                  bltu         s6, gp, 7f
                  addi         t1, tp, -1384
                  add          s9, a5, a5
                  srai         a2, s9, 27
                  xori         s6, t4, -562
                  or           ra, s11, tp
7:                nop
                  srai         t3, t3, 4
                  andi         t0, s2, 1734
                  add          s0, s0, t2
                  addi         a3, a1, -1284
                  ori          a4, a6, -1774
                  bltu         s10, a4, 25f
                  bltu         a6, s11, 28f
                  slt          gp, s10, s4
                  slt          tp, t5, a7
                  bltu         s6, a2, 37f
                  sltiu        s3, s1, 147
                  sra          a1, t1, s0
                  srli         s0, a1, 24
                  srai         t0, s9, 13
                  add          s7, a3, s9
                  add          s5, t2, s3
                  ori          s4, s3, -161
25:               blt          s5, zero, 37f
                  nop
                  bltu         sp, s7, 35f
28:               srl          s9, s4, a0
                  srai         a4, a7, 19
                  sltiu        s5, a7, -1810
                  srai         a4, a1, 12
                  sll          a4, s0, gp
                  la           gp, sub_1
                  srai         a2, t6, 21
                  srl          s6, tp, s0
                  addi         gp, gp, -23
                  srai         s2, s1, 1
                  bge          a0, t0, main_j1 #branch to jump instr
                  sltu         t2, s2, s11
main_j1:          jalr         s11, gp, 24 #jump main -> sub_1
                  lui          t4, 889257
                  slti         a1, s6, 317
                  add          s3, t0, t1
                  sub          t6, s4, s4
                  srl          s7, t1, s11
35:               xor          a2, s1, t4
                  xor          a3, s7, a0
37:               sltiu        tp, s2, 1106
                  beq          t6, t1, 42f
                  srai         ra, t4, 31
                  bge          t5, t3, 44f
                  slt          t3, s11, t1
42:               slli         s0, t3, 29
                  slli         s0, a4, 30
44:               lui          gp, 325640
                  bltu         a0, gp, 47f
                  bge          s4, a2, 59f
47:               add          tp, a7, a2
                  bne          zero, s4, 51f
                  sll          a6, s10, t1
                  sub          s7, s6, a5
                  xori         t6, s10, -1201
                  la           s4, sub_1
                  ori          s5, s11, -1442
                  addi         s4, s4, 92
                  sll          s5, s10, t0
                  bgeu         t6, s8, main_j2 #branch to jump instr
                  sra          s11, t1, t1
                  and          tp, a7, s10
                  andi         a3, a7, 349
                  add          t0, a4, a5
main_j2:          jalr         s11, s4, -91 #jump main -> sub_1
                  bltu         ra, a6, 62f
                  slti         s2, a7, -40
51:               srai         s4, ra, 4
                  bge          a3, a2, 54f
                  and          s9, s11, s0
54:               ori          a7, a4, -2015
                  bgeu         s4, gp, 67f
                  nop
                  bgeu         a7, a2, 71f
                  add          a1, t2, a2
59:               srai         a1, a4, 10
                  lui          a6, 525169
                  add          zero, a5, tp
62:               srai         s2, tp, 27
                  slt          a7, s2, s10
                  srli         s2, tp, 29
                  bne          s3, s8, 66f
66:               slli         t3, t3, 18
67:               bne          s6, t0, 71f
                  bne          a6, a0, 77f
                  srli         s4, sp, 19
                  bge          t2, tp, 71f
71:               xori         a2, t5, -1412
                  slli         t4, t5, 16
                  slt          s6, t4, a5
                  addi         s3, a1, 307
                  xori         a4, s10, -232
                  addi         a6, a3, 784
77:               slli         s5, t2, 30
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            addi         sp, sp, -12
                  slt          t4, s2, a6
                  sltu         s4, a4, s11
                  and          s5, s3, s8
                  sub          a4, s4, t5
                  andi         s4, s9, -1057
                  add          t4, s11, gp
                  addi         a4, s8, -156
                  sw           s11, 4(sp)
                  add          gp, a5, t1
                  sll          a6, s2, sp
                  add          a5, s10, t2
                  bne          t5, a4, 7f
                  or           s6, a4, a5
                  addi         a1, zero, -1360
                  bltu         t0, sp, 14f
                  beq          ra, a2, 15f
                  srai         s4, a3, 7
                  sra          a6, t1, tp
7:                xori         t2, t4, -1696
                  beq          sp, a4, 12f
                  slli         a3, t1, 22
                  slli         ra, s8, 29
                  auipc        t2, 1008269
12:               and          ra, zero, a2
                  srai         a5, a1, 6
14:               xor          s0, s6, s10
15:               xor          s6, a2, t3
                  lw           s11, 4(sp)
                  auipc        t2, 881481
                  srai         s3, a0, 1
                  slti         s10, s5, 1163
                  sll          a1, s7, gp
                  addi         sp, sp, 12
                  srai         s5, s0, 9
35:               addi x3, x27, 1
35:               jalr x3, x3, 0
sub_4:            beq          a1, a4, sub_4_stack_p
                  and          a4, s0, t0
sub_4_stack_p:    addi         sp, sp, -52
                  sw           s11, 4(sp)
                  add          s1, t0, t6
                  xor          s1, s5, a5
                  slli         zero, t1, 0
                  la           s2, region_1+750 #start riscv_load_store_rand_instr_stream_18
                  lbu          s7, 85(s2)
                  ori          t1, t1, 1617
                  srli         t2, t6, 18
                  addi         s10, s3, -627
                  lb           a0, -225(s2)
                  lb           s4, 159(s2)
                  nop
                  sw           t1, 250(s2)
                  sb           s4, -4(s2)
                  sb           ra, -12(s2)
                  lh           s1, 204(s2)
                  slti         a2, s1, -936
                  srai         a1, t5, 28
                  and          tp, tp, s0
                  nop
                  auipc        tp, 463476
                  sh           gp, 164(s2)
                  ori          zero, sp, -773
                  lb           a4, 132(s2)
                  nop
                  xor          s10, a2, s2
                  and          s9, a1, s0
                  srl          s3, t0, s8
                  srai         s11, sp, 31
                  srli         a6, sp, 3
                  lh           zero, -208(s2)
                  slt          a5, gp, a7
                  add          a7, t0, t1
                  slli         s3, a5, 31
                  sb           s5, 13(s2)
                  auipc        s6, 709970
                  sb           gp, -120(s2)
                  srli         s5, s8, 2
                  sltiu        tp, s1, -269
                  srl          a1, t2, a6
                  lbu          t6, 71(s2)
                  ori          t0, a2, 1198
                  sb           sp, -16(s2) #end riscv_load_store_rand_instr_stream_18
                  la           t2, region_0+1683 #start riscv_load_store_rand_instr_stream_14
                  andi         a2, ra, -1638
                  lbu          a4, -6(t2)
                  srl          s10, a3, a6
                  or           s3, t0, s1
                  srai         a6, s8, 23
                  sll          a6, s0, tp
                  or           ra, s8, s2
                  lhu          s2, 3(t2)
                  lb           t1, 14(t2)
                  lbu          s3, 6(t2)
                  sra          s1, zero, a3
                  sb           s3, -5(t2)
                  lb           t0, -13(t2)
                  slli         gp, s6, 0
                  sra          s11, a3, a6
                  lbu          t0, -1(t2)
                  xori         a3, gp, 1514
                  and          s6, zero, gp
                  sw           a4, 1(t2)
                  srai         s10, s1, 3
                  xor          s3, t5, s0
                  slti         t0, s11, -72
                  sltiu        s6, gp, -304
                  auipc        s2, 843636
                  srli         t1, ra, 10
                  sra          a7, a3, t6
                  ori          s0, t5, 1153
                  sw           a2, 9(t2)
                  lbu          s0, 12(t2)
                  lui          s9, 547869
                  sra          tp, t6, a1
                  lhu          a0, 7(t2)
                  lhu          s11, -1(t2)
                  sb           tp, 15(t2) #end riscv_load_store_rand_instr_stream_14
                  la           s0, region_1+1011 #start riscv_load_store_rand_instr_stream_27
                  srl          a7, a4, s3
                  lb           t4, -33(s0)
                  or           gp, tp, a1
                  sb           a4, -32(s0)
                  add          s1, t4, s7
                  nop
                  sb           s1, 11(s0)
                  auipc        gp, 188572
                  lh           t1, -49(s0)
                  lb           s9, -38(s0)
                  nop
                  lbu          tp, 9(s0)
                  lbu          zero, 50(s0)
                  slti         s3, s10, -253
                  lbu          a0, -33(s0)
                  sh           t5, 35(s0)
                  sb           s9, 6(s0)
                  sltiu        ra, s4, 1297
                  lh           tp, 43(s0)
                  sb           s11, 9(s0)
                  sb           t5, -44(s0)
                  sra          tp, t2, s10
                  sb           s7, -63(s0)
                  lbu          a1, 30(s0)
                  lb           s2, 14(s0)
                  addi         a1, a5, 1996
                  sh           s11, -37(s0)
                  sltu         a0, s6, a6
                  lb           s5, 3(s0)
                  sub          s3, t2, a3
                  nop
                  sb           s3, 62(s0)
                  sltu         a0, a3, s9
                  lui          a7, 376832
                  srli         s6, t1, 22
                  sb           a0, -58(s0)
                  slli         a3, s4, 20
                  sb           s10, -58(s0) #end riscv_load_store_rand_instr_stream_27
                  la           t2, region_1+556 #start riscv_load_store_rand_instr_stream_2
                  sb           t1, -223(t2)
                  addi         s9, s9, 1801
                  srl          a0, s11, s8
                  lb           a0, 235(t2)
                  lb           s6, -205(t2)
                  slt          s4, tp, zero
                  lw           zero, -28(t2)
                  slt          ra, a2, s10
                  sb           a5, -33(t2)
                  slti         t1, s7, 1624
                  xori         s0, a6, 708
                  slli         tp, s10, 27
                  or           t1, a1, t2
                  srl          ra, t4, t1
                  sltiu        s3, a3, 769
                  lb           a6, -115(t2)
                  lb           a5, 106(t2)
                  sb           zero, 129(t2)
                  lbu          t4, 129(t2)
                  lbu          s4, 235(t2)
                  slt          a5, t2, s2
                  lbu          a2, -119(t2)
                  slt          t4, a2, s1
                  sb           ra, 156(t2)
                  lh           gp, -224(t2)
                  sb           t0, 157(t2)
                  lhu          t4, -236(t2) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_1+1519 #start riscv_load_store_rand_instr_stream_10
                  lhu          a7, 47(t3)
                  lb           s5, -151(t3)
                  lb           a4, 16(t3)
                  andi         tp, a7, -1597
                  lw           s5, -167(t3)
                  sb           a1, 52(t3)
                  lui          t4, 545953
                  lh           a7, -157(t3)
                  add          ra, sp, s10
                  lb           a3, -117(t3)
                  sra          t6, a0, s7
                  lb           s10, -114(t3)
                  ori          a5, t5, 48
                  sub          t4, t0, t3
                  sub          gp, a5, s7
                  xor          ra, tp, s4
                  sub          s1, gp, t4
                  sh           s5, -101(t3)
                  auipc        s1, 246526
                  lb           gp, 7(t3)
                  sb           a6, 182(t3)
                  lbu          tp, -106(t3)
                  lbu          a5, 141(t3)
                  slt          s2, a4, a4
                  or           a3, ra, s0
                  addi         ra, tp, 1416
                  lb           a1, 215(t3)
                  slti         s7, t0, -1795
                  srai         t1, t2, 1
                  sub          a7, a6, a7
                  lb           t4, 206(t3)
                  lb           t4, 7(t3)
                  lhu          t0, 149(t3)
                  srai         t1, a3, 23
                  sb           t3, -215(t3)
                  sltu         s6, s7, a7
                  sub          t1, t3, s10
                  srai         zero, gp, 30
                  lbu          s4, -69(t3)
                  lb           a6, 234(t3)
                  nop
                  slli         t1, s9, 3
                  andi         s0, t6, 461
                  sub          a7, a7, gp
                  srli         a0, tp, 17
                  lbu          a6, -66(t3)
                  ori          zero, a0, -1769
                  lh           a6, 105(t3) #end riscv_load_store_rand_instr_stream_10
                  la           s7, region_1+218 #start riscv_load_store_rand_instr_stream_1
                  srli         tp, a7, 16
                  sub          tp, s9, a3
                  lh           s3, 0(s7)
                  slti         s0, a3, -1954
                  sltiu        s6, s4, 1927
                  sltu         a5, s10, s3
                  sw           s11, 166(s7)
                  sb           s8, -173(s7)
                  andi         gp, zero, 1196
                  ori          s10, a6, 899
                  srai         t3, t3, 8
                  srl          t0, a0, s5
                  ori          ra, s2, -968
                  auipc        s3, 131266
                  slt          a1, a6, a2
                  xori         a4, s2, -617
                  auipc        t2, 806594
                  lb           a5, -132(s7)
                  and          a2, t2, t2
                  lbu          t0, -1(s7)
                  and          a5, t5, s10
                  srl          t6, t2, t6
                  slt          a6, a2, t6
                  lui          s2, 761053
                  srai         ra, a6, 20
                  lhu          t1, 116(s7)
                  auipc        s4, 259755
                  lbu          zero, 79(s7)
                  auipc        t4, 250100
                  lh           a5, -68(s7)
                  lui          t6, 582479
                  srl          s2, s7, tp
                  and          s5, s11, s8
                  sb           t6, -87(s7)
                  sb           zero, 253(s7)
                  sh           t0, -170(s7)
                  or           a7, t4, s3
                  sb           s9, -171(s7) #end riscv_load_store_rand_instr_stream_1
                  la           a5, region_0+1568 #start riscv_load_store_rand_instr_stream_11
                  srl          t4, s6, tp
                  lb           s4, 36(a5)
                  lbu          t4, 29(a5)
                  lb           gp, 41(a5)
                  lbu          s11, 16(a5)
                  sb           zero, 13(a5)
                  lhu          t2, -18(a5)
                  sb           gp, 59(a5)
                  sh           t5, -30(a5)
                  sh           s5, 2(a5)
                  sh           t1, -6(a5)
                  sb           t6, -58(a5)
                  srl          a4, a1, s7
                  sb           s10, 42(a5)
                  lbu          a1, 62(a5)
                  nop
                  slt          t6, tp, a4
                  lw           s9, 24(a5)
                  srli         t0, a1, 29
                  srl          t0, s11, s5
                  sb           t4, 41(a5)
                  srli         zero, s10, 7
                  and          a1, a7, t5
                  lh           t2, -38(a5)
                  sb           s8, -9(a5)
                  srai         t6, sp, 20
                  add          t3, a4, a2
                  srli         s11, a1, 26
                  andi         s5, a4, 226
                  srli         t6, a1, 14
                  addi         t1, s5, -353
                  sh           a2, -14(a5)
                  lb           t4, 47(a5)
                  sh           t4, -16(a5)
                  sra          s9, ra, a1
                  lb           gp, -64(a5)
                  or           s1, s5, a7
                  lb           zero, -60(a5)
                  slli         s0, s5, 27
                  lw           a2, -40(a5)
                  sh           a3, 46(a5)
                  lb           s9, -45(a5)
                  sb           t4, -16(a5) #end riscv_load_store_rand_instr_stream_11
                  la           t0, region_1+1588 #start riscv_load_store_rand_instr_stream_13
                  xori         s6, gp, 2012
                  auipc        a7, 999440
                  lbu          a3, -17(t0)
                  sh           a7, -10(t0)
                  lh           a2, 56(t0)
                  lui          a7, 238473
                  or           a1, ra, t6
                  sb           a7, -23(t0)
                  sb           s5, 53(t0)
                  lb           gp, -15(t0)
                  lbu          a3, 34(t0)
                  lbu          s6, -59(t0)
                  lbu          zero, -7(t0)
                  lbu          s4, -23(t0)
                  sltiu        t1, t6, 774
                  sltiu        t2, t3, -1746
                  lb           a1, -55(t0)
                  add          a0, t0, t1
                  sb           tp, -45(t0)
                  nop
                  sb           a2, 23(t0)
                  sb           s6, 1(t0)
                  slt          s3, ra, t3
                  nop
                  andi         s3, s6, 1801
                  auipc        a6, 109099
                  lbu          s3, -9(t0)
                  sb           s6, 25(t0)
                  lh           a6, -32(t0)
                  lb           t2, -29(t0)
                  lbu          a5, -29(t0)
                  sw           tp, 16(t0)
                  and          s1, a5, t1
                  sb           tp, -23(t0)
                  sh           a6, 14(t0)
                  sh           s5, 20(t0)
                  slli         a4, gp, 28
                  sltiu        s6, t2, -892
                  andi         t1, t1, -727
                  lb           a4, -47(t0)
                  lw           a5, 28(t0)
                  sub          s1, s5, a2
                  srl          t6, t1, s4
                  slti         s6, s10, 790
                  lb           t2, -21(t0)
                  sltiu        ra, a6, 424
                  srli         a6, tp, 17
                  xori         t4, t4, 151
                  srli         a7, a6, 16
                  lb           s2, -14(t0) #end riscv_load_store_rand_instr_stream_13
                  la           s2, region_1+819 #start riscv_load_store_rand_instr_stream_20
                  sll          a0, a6, s8
                  slti         s5, s8, 1132
                  sltu         t4, s5, s5
                  slli         t4, gp, 29
                  sra          s10, a3, t0
                  andi         s6, s9, 62
                  sh           zero, -39(s2)
                  lbu          s10, -36(s2)
                  sltiu        t1, a2, -419
                  auipc        a0, 146897
                  sub          t4, s1, s5
                  sw           a2, 21(s2)
                  slti         a3, s6, 1737
                  sb           gp, -18(s2)
                  sltu         a6, s1, s7
                  and          t3, t1, s10
                  srl          t2, t6, sp
                  lbu          s0, 52(s2)
                  sb           a2, -4(s2)
                  lbu          s4, 50(s2)
                  lbu          s0, -26(s2)
                  add          t2, s3, a0
                  lbu          t2, -54(s2)
                  sh           s2, 23(s2)
                  sltu         s3, ra, a3
                  ori          a6, s2, 279
                  xor          t1, sp, t0
                  lb           s3, 52(s2)
                  addi         s0, s7, -745
                  slti         s4, gp, -1698
                  srai         s6, s4, 1
                  ori          a0, s5, 1563
                  slli         s6, s8, 6
                  xor          a0, sp, ra
                  lh           a3, 19(s2)
                  andi         a2, s9, -458
                  addi         a6, t5, 937
                  sub          s0, sp, a4
                  sb           s10, 20(s2)
                  lb           s7, 34(s2)
                  lbu          t0, -53(s2)
                  lb           ra, -26(s2)
                  sltu         a3, gp, a7
                  sh           s2, -27(s2)
                  lb           s9, 47(s2)
                  sb           a0, 8(s2) #end riscv_load_store_rand_instr_stream_20
                  la           a7, region_0+1246 #start riscv_load_store_rand_instr_stream_12
                  addi         tp, gp, -796
                  lb           a6, -146(a7)
                  lbu          zero, 51(a7)
                  lb           gp, 109(a7)
                  sra          t3, t1, s6
                  lb           s3, -131(a7)
                  lb           a3, 180(a7)
                  srl          t3, gp, t4
                  lb           a0, -3(a7)
                  lbu          a0, -236(a7)
                  lhu          a2, 178(a7)
                  sb           s11, 53(a7)
                  lb           a2, 225(a7)
                  lbu          a6, -63(a7)
                  slli         s6, t2, 9
                  lb           a3, -89(a7)
                  lw           t1, -114(a7)
                  lbu          t2, 200(a7)
                  sb           a7, -161(a7)
                  lh           t3, -64(a7)
                  lhu          t3, 178(a7)
                  sltiu        s10, s2, -114
                  lb           t6, 27(a7)
                  andi         s7, ra, -1383
                  lb           a1, -86(a7)
                  lh           a1, -232(a7)
                  sb           a3, 25(a7)
                  sb           a1, 31(a7)
                  sra          s1, gp, s11
                  sb           a2, 169(a7)
                  xori         s6, zero, -1128
                  lui          t1, 385631
                  lbu          t0, 6(a7)
                  or           a6, a7, a3
                  sb           t5, 191(a7)
                  add          t4, s11, a5
                  lbu          s11, -129(a7)
                  andi         t2, a0, 58
                  sb           zero, 31(a7)
                  sh           t5, 172(a7)
                  sh           s0, -194(a7)
                  lhu          a5, 72(a7) #end riscv_load_store_rand_instr_stream_12
                  la           t6, region_0+262 #start riscv_load_store_rand_instr_stream_22
                  lh           zero, 12(t6)
                  lb           s1, -8(t6)
                  srai         a5, s8, 5
                  slti         t1, a4, 837
                  sltiu        a6, a7, 201
                  lhu          a2, -14(t6)
                  or           s9, a7, tp
                  andi         s10, tp, 28
                  lui          s3, 728895
                  ori          s11, s1, -289
                  sh           s9, 16(t6)
                  xori         zero, s3, -1700
                  sltiu        s5, s10, 1883
                  auipc        s6, 204558
                  nop
                  sh           s5, 6(t6)
                  lb           s0, -3(t6)
                  lhu          ra, 8(t6)
                  srli         a3, s11, 23
                  nop
                  lw           a7, 10(t6)
                  ori          t1, t3, 668
                  lb           t0, -5(t6)
                  sb           a7, -3(t6)
                  lbu          tp, -1(t6)
                  lhu          s9, 10(t6)
                  slt          tp, s11, a7
                  slti         a6, a4, 580
                  lb           ra, 16(t6)
                  lb           a2, -1(t6)
                  srli         s0, a1, 22
                  sb           t1, -8(t6)
                  lb           gp, 11(t6)
                  add          s7, a0, s2
                  slli         a5, t4, 16
                  or           s2, zero, sp
                  add          gp, s4, ra
                  lhu          s9, 6(t6)
                  lhu          s10, -16(t6)
                  lb           s0, 3(t6)
                  sb           s2, 1(t6)
                  lb           t4, 15(t6)
                  lb           s9, 1(t6)
                  sltu         a6, t5, a0
                  addi         a7, gp, -589
                  xori         s5, t5, 1158
                  lhu          s10, -14(t6)
                  sb           s11, -8(t6) #end riscv_load_store_rand_instr_stream_22
                  la           t4, region_1+1663 #start riscv_load_store_rand_instr_stream_24
                  and          s11, tp, gp
                  sb           a0, -8(t4)
                  sb           sp, 16(t4)
                  add          a5, t6, ra
                  or           s4, s9, t3
                  lb           a6, -1(t4)
                  lbu          s7, 7(t4)
                  nop
                  sb           a4, -4(t4)
                  lbu          s1, -6(t4)
                  lh           a5, 3(t4)
                  lb           a1, 10(t4)
                  slti         a1, t4, -1843
                  addi         s0, s1, 1543
                  lh           t1, 13(t4)
                  lhu          a5, -1(t4)
                  sb           s0, -8(t4)
                  addi         s0, tp, 2031
                  lh           s2, 3(t4)
                  lbu          a5, -12(t4)
                  sb           s5, 2(t4)
                  sra          a3, s8, gp
                  lh           t2, -3(t4)
                  addi         a5, s5, -618
                  sra          gp, s10, s4
                  lh           s1, 5(t4)
                  lbu          t1, -10(t4)
                  lhu          a7, -9(t4)
                  lbu          s5, -10(t4)
                  sub          s10, a2, ra
                  sh           sp, -1(t4)
                  sb           t2, -10(t4)
                  lb           s9, 8(t4)
                  lb           s0, -8(t4)
                  xori         a2, a5, -427
                  sb           a6, -10(t4)
                  lbu          t2, -14(t4)
                  lbu          gp, 16(t4)
                  lbu          t3, -2(t4)
                  slt          t0, a5, a0
                  add          s7, a3, t0
                  lbu          s4, -10(t4)
                  lbu          s10, -12(t4)
                  sb           s8, -12(t4) #end riscv_load_store_rand_instr_stream_24
                  la           s3, region_0+1482 #start riscv_load_store_rand_instr_stream_6
                  lbu          s2, -664(s3)
                  sb           s6, 303(s3)
                  sll          s0, s10, s7
                  srai         ra, s10, 11
                  and          gp, t6, zero
                  xor          s6, s2, a4
                  sb           s11, 129(s3)
                  ori          a2, a7, -542
                  xor          a4, s9, t4
                  lhu          s4, 344(s3)
                  sw           t3, -214(s3)
                  srli         a4, a2, 30
                  or           a0, s6, sp
                  sll          s7, s7, s11
                  sw           t6, -162(s3)
                  sb           s7, -415(s3)
                  and          t2, s2, s1
                  lbu          a5, -330(s3)
                  lhu          s6, 344(s3)
                  add          t1, a7, s10
                  lbu          gp, 24(s3)
                  lb           gp, -717(s3) #end riscv_load_store_rand_instr_stream_6
                  la           s6, region_0+587 #start riscv_load_store_rand_instr_stream_4
                  sltiu        gp, a7, -1788
                  lh           s0, 1059(s6)
                  add          t3, t3, t2
                  xori         tp, a6, 1047
                  sltiu        s5, zero, 1465
                  slt          s4, a7, tp
                  slli         t6, t6, 9
                  srl          t0, a2, zero
                  lh           s4, 1199(s6)
                  lhu          s1, 425(s6)
                  xor          a5, a4, a2
                  lb           a4, 1169(s6)
                  srl          s10, a1, a4
                  slti         t2, zero, -488
                  addi         ra, s11, 1631
                  addi         s7, s3, 277
                  lbu          a3, 729(s6)
                  lw           a5, 1(s6)
                  sltu         a0, a0, zero
                  xori         gp, a3, 1421
                  sra          a2, t2, a2
                  lh           t1, -111(s6)
                  xori         s0, zero, 717
                  sltu         s4, s1, a3
                  lbu          s2, 466(s6)
                  sra          s11, t0, a0
                  sb           a3, -551(s6)
                  sltiu        t0, s4, 269
                  or           t1, t3, t1
                  sw           gp, 229(s6)
                  sub          s10, s2, s2
                  srai         a5, s7, 25
                  xor          s3, t5, s5
                  sltu         s4, s1, a4
                  sb           a2, 367(s6)
                  lb           t1, 58(s6)
                  ori          t3, gp, -706
                  lb           s9, -413(s6) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_0+1341 #start riscv_load_store_rand_instr_stream_23
                  nop
                  slt          a0, t3, a6
                  lb           t3, 14(a1)
                  sh           zero, -13(a1)
                  lb           t4, 12(a1)
                  sltu         a6, t6, t0
                  lbu          a6, 14(a1)
                  sb           t2, -15(a1)
                  and          a0, s2, a4
                  addi         a0, s4, -886
                  lb           a3, 14(a1)
                  lb           s10, 10(a1)
                  srl          t1, s8, a3
                  sw           a5, 11(a1)
                  or           a4, t6, s10
                  lb           s6, 2(a1)
                  lbu          tp, 9(a1)
                  sb           sp, -12(a1)
                  lbu          t6, -6(a1)
                  lb           t2, 16(a1)
                  lb           a7, 10(a1)
                  lb           a5, 5(a1)
                  xor          s6, t1, a1
                  slt          gp, sp, t1
                  lbu          a3, 14(a1)
                  lbu          t4, -5(a1)
                  lhu          t1, 1(a1)
                  andi         s7, a6, 1923
                  and          gp, a2, a1
                  lb           a0, -3(a1)
                  slt          a2, gp, t0
                  sb           s1, -2(a1)
                  lhu          s1, 1(a1)
                  lbu          a2, 9(a1)
                  lb           s0, -10(a1)
                  lbu          t3, 8(a1)
                  sll          t0, s2, s8
                  andi         s11, t5, 1749
                  lbu          a3, 3(a1)
                  lh           a7, 5(a1)
                  sb           tp, 13(a1) #end riscv_load_store_rand_instr_stream_23
                  la           s4, region_1+563 #start riscv_load_store_rand_instr_stream_15
                  addi         t2, ra, -575
                  or           t2, a7, t5
                  or           t4, t2, s4
                  add          ra, sp, t6
                  sh           ra, -7(s4)
                  srl          a1, t0, t2
                  sb           t4, -14(s4)
                  lb           t1, 4(s4)
                  sltu         s9, t2, a1
                  sll          t4, a7, t6
                  and          a3, a6, t3
                  lw           a5, -7(s4)
                  xor          zero, ra, a6
                  lb           s3, 11(s4)
                  sb           s7, 13(s4)
                  srai         a4, a4, 5
                  lh           s10, 1(s4)
                  lbu          s2, -7(s4)
                  sll          s3, sp, a7
                  lhu          s9, -1(s4)
                  or           s1, a2, s0
                  xori         s10, s0, -1789
                  lbu          a1, -14(s4)
                  lh           s1, 7(s4)
                  lbu          tp, 11(s4)
                  lbu          zero, 5(s4)
                  lbu          gp, -7(s4)
                  slt          a4, a4, s7
                  add          s6, a4, s3
                  and          t1, ra, a1
                  lbu          s1, 3(s4)
                  lw           zero, -15(s4)
                  auipc        a1, 671547
                  sb           t5, -14(s4)
                  nop
                  lh           s0, -3(s4)
                  slti         a3, s2, 1229
                  sll          a6, a7, s2
                  lb           a6, 7(s4)
                  addi         s1, gp, 765
                  sub          a2, s2, a3
                  lb           a4, -16(s4)
                  sub          t3, s4, s5
                  sb           a2, 14(s4)
                  lw           a1, -3(s4)
                  sb           s9, -11(s4)
                  add          zero, s3, s11
                  lhu          s7, 13(s4)
                  auipc        a1, 721154
                  auipc        t6, 317126
                  lb           a3, 11(s4)
                  or           a7, s2, t3
                  lb           t0, -16(s4)
                  lbu          t0, -8(s4) #end riscv_load_store_rand_instr_stream_15
                  la           s4, region_0+1151 #start riscv_load_store_rand_instr_stream_26
                  lbu          ra, -24(s4)
                  sb           a4, -64(s4)
                  or           s11, s4, t3
                  srai         s6, s3, 25
                  xori         gp, zero, 710
                  sltiu        tp, a5, -2021
                  add          a1, a4, s3
                  lw           gp, 29(s4)
                  lhu          s9, -9(s4)
                  sh           a1, 23(s4)
                  ori          ra, s11, -427
                  slli         s6, a7, 6
                  lb           s2, 42(s4)
                  lb           s0, 14(s4)
                  or           s1, s9, t0
                  xori         gp, s4, 409
                  lb           a7, 60(s4)
                  sb           t2, -45(s4)
                  lb           zero, 55(s4)
                  srai         t6, a3, 2
                  sub          s1, t4, a3
                  sll          t4, a7, t2
                  lbu          a5, 62(s4)
                  add          tp, s11, s4
                  addi         s11, s1, 1456
                  sb           ra, -52(s4)
                  lbu          a6, -29(s4)
                  slli         a1, s4, 9
                  sb           s9, -10(s4) #end riscv_load_store_rand_instr_stream_26
                  la           a3, region_1+79 #start riscv_load_store_rand_instr_stream_28
                  srli         s5, s9, 3
                  xor          s10, a1, zero
                  srl          a6, s5, t0
                  sltu         t3, t5, t6
                  lbu          a4, -9(a3)
                  lb           s10, -6(a3)
                  sw           a0, -7(a3)
                  sltu         s3, s9, s1
                  lb           s6, 8(a3)
                  slli         t6, a0, 11
                  srai         a7, s10, 28
                  sb           s9, 11(a3)
                  sll          ra, zero, s0
                  sll          t4, a3, a4
                  lb           t0, -16(a3)
                  lb           s5, -14(a3)
                  sltiu        a5, s8, 1296
                  sll          tp, tp, a2
                  lb           a1, -10(a3)
                  addi         a0, s6, 1548
                  lhu          zero, 1(a3)
                  lb           t2, 12(a3)
                  and          s1, t6, a2
                  sb           s2, 8(a3)
                  sh           s8, -11(a3)
                  sb           s8, -9(a3)
                  lb           s2, -7(a3)
                  lh           ra, -15(a3)
                  auipc        a2, 175015
                  sb           a6, -6(a3)
                  sltiu        s4, sp, -986
                  sb           t5, -14(a3)
                  sb           s11, 8(a3) #end riscv_load_store_rand_instr_stream_28
                  la           a0, region_0+953 #start riscv_load_store_rand_instr_stream_25
                  add          a3, s2, s9
                  sb           t3, -50(a0)
                  add          t2, s0, a3
                  sb           t0, 60(a0)
                  sb           s2, -1(a0)
                  lb           s0, 34(a0)
                  sb           s9, 23(a0)
                  sb           t4, 40(a0)
                  lhu          t1, 17(a0)
                  sh           t1, 7(a0)
                  xor          s5, s6, a5
                  lbu          a4, -10(a0)
                  or           s4, s9, ra
                  slli         a1, s4, 15
                  srl          t3, t0, t6
                  lb           t3, 4(a0)
                  srli         a6, a4, 2
                  sub          a1, t4, a0
                  sb           a7, 14(a0)
                  ori          s10, s8, -1638
                  lbu          t6, 38(a0)
                  lhu          t6, -15(a0)
                  sltiu        s7, a5, 1548
                  lh           zero, 23(a0)
                  ori          a5, s3, 856
                  lbu          zero, 2(a0)
                  lb           a6, -16(a0)
                  lbu          s2, 61(a0)
                  sb           ra, -26(a0)
                  lhu          a6, 53(a0)
                  sltiu        zero, t5, -184
                  sw           s6, -33(a0)
                  lbu          t0, -23(a0)
                  lbu          s6, 60(a0)
                  lhu          s10, 25(a0)
                  lbu          a3, -47(a0)
                  xor          ra, a7, tp
                  nop
                  lbu          s9, 54(a0) #end riscv_load_store_rand_instr_stream_25
                  la           s3, region_1+1027 #start riscv_load_store_rand_instr_stream_17
                  sb           t4, -96(s3)
                  lbu          zero, 381(s3)
                  slti         a1, s0, 167
                  lb           t4, -377(s3)
                  sltu         s9, s8, a7
                  lb           s9, 504(s3)
                  slli         tp, tp, 2
                  sra          a4, a3, s0
                  addi         a0, a7, -292
                  lb           a5, -500(s3)
                  lb           t0, 176(s3)
                  sub          a2, t6, sp
                  sb           s7, -960(s3)
                  nop
                  sb           t2, 111(s3)
                  sub          a7, t4, t0
                  lbu          a3, 591(s3)
                  lhu          t6, 655(s3)
                  sb           a5, 966(s3)
                  addi         a7, s3, 1113
                  lh           t0, 203(s3)
                  lb           s0, 245(s3)
                  sb           t1, -54(s3)
                  lh           s9, -405(s3)
                  lbu          s5, -704(s3)
                  or           a1, s6, s2
                  add          a6, a0, a2
                  lhu          a5, 619(s3)
                  lhu          s11, 367(s3)
                  lh           s1, -223(s3) #end riscv_load_store_rand_instr_stream_17
                  la           s1, region_1+484 #start riscv_load_store_rand_instr_stream_19
                  sra          a5, a2, a6
                  lb           s3, 61(s1)
                  sw           a1, 4(s1)
                  sltu         s0, s0, s6
                  auipc        t2, 891822
                  andi         tp, tp, -456
                  sb           gp, 15(s1)
                  srai         s3, a6, 12
                  and          t0, s8, s1
                  lbu          a4, 3(s1)
                  slt          a3, t3, t4
                  xor          a4, s7, a1
                  sb           t3, 25(s1)
                  lbu          tp, 17(s1)
                  ori          t1, sp, 34
                  or           t3, s4, a2
                  lbu          s2, -3(s1)
                  lbu          s6, -47(s1)
                  ori          a5, s8, -199
                  ori          a7, sp, 1901
                  sll          s0, a3, s3
                  andi         a4, s8, -1930
                  sltiu        a4, s4, -571
                  sw           s2, 24(s1)
                  lui          a3, 159436
                  slli         zero, sp, 28
                  xori         s4, a2, -1057
                  sb           t6, -45(s1)
                  sll          a5, t6, t0
                  lbu          t0, 61(s1)
                  sb           a4, 29(s1)
                  sra          t6, a5, s4
                  sra          s6, s8, t1
                  lbu          t1, -1(s1)
                  lb           a7, 32(s1)
                  sh           zero, -22(s1)
                  lb           a6, -55(s1)
                  lb           s6, -55(s1)
                  lb           a2, -18(s1)
                  sh           s6, 42(s1)
                  lw           t0, -44(s1)
                  nop
                  andi         a1, s5, 629
                  srai         t6, s1, 29
                  slt          t0, tp, gp
                  or           a1, s2, zero
                  sb           s9, -24(s1)
                  auipc        t6, 912891
                  sltu         s7, a7, a2
                  sh           t3, 64(s1)
                  lb           gp, 18(s1)
                  lb           a7, 18(s1)
                  sh           a0, -62(s1) #end riscv_load_store_rand_instr_stream_19
                  and          s1, t5, s7
                  sra          s0, a6, s9
                  bgeu         s4, s5, 7f
                  sltiu        gp, s6, 1063
                  and          s10, t5, a7
                  bge          s2, a0, 8f
                  slti         s11, a6, -657
7:                and          s1, gp, a0
8:                andi         a1, t1, -879
                  xori         a0, s8, 1901
                  xori         s9, a0, -1049
                  ori          a2, s6, -1437
                  srl          s1, t6, a7
                  sltu         s11, a0, s6
                  bge          a2, s7, 16f
                  ori          t6, t1, -1100
16:               blt          s2, s9, 36f
                  ori          t4, a4, 944
                  slli         s0, a6, 5
                  beq          t4, a3, 24f
                  bge          s9, a3, 21f
21:               bltu         s8, s5, 34f
                  nop
                  andi         s0, s11, 1153
24:               srai         a6, tp, 17
                  sltiu        t1, sp, 894
                  srai         a4, s11, 15
                  or           a1, a1, s9
                  slt          a1, a0, a6
                  nop
                  srli         t2, tp, 0
                  sra          t1, s7, a4
                  srl          s10, s6, a0
                  beq          s0, tp, 42f
34:               beq          s1, t1, 52f
                  auipc        s9, 251341
36:               nop
                  srli         s0, ra, 20
                  bge          t4, a1, 40f
                  nop
40:               ori          s7, s0, -223
                  xori         zero, t0, -151
42:               andi         t4, t2, 776
                  bne          t5, t4, 54f
                  blt          s5, zero, 57f
                  sltiu        s9, ra, -304
                  addi         a7, s8, -454
                  xori         s6, s5, -305
                  sra          t2, s9, s11
                  sltu         a5, t0, s0
                  beq          ra, ra, 65f
                  xori         t4, t5, -1297
52:               sltiu        s11, t1, 675
                  srai         a3, s4, 31
54:               nop
                  nop
                  xor          a0, t3, s10
57:               slli         s7, s0, 3
                  sub          a0, s11, t0
                  lui          s10, 223478
                  add          s7, a2, a0
                  auipc        t0, 888939
                  bgeu         ra, ra, 64f
                  srli         t2, s6, 19
64:               srai         a1, a5, 10
65:               sra          s2, s6, sp
                  lui          a2, 678038
                  srli         s5, ra, 22
                  bge          s5, s7, 74f
                  srai         a0, t1, 10
                  lui          t3, 873353
                  sra          a1, t4, a2
                  bge          a1, s9, 88f
                  ori          s11, s3, 1125
74:               auipc        s3, 703724
                  bge          s4, s9, 90f
                  nop
                  bge          s8, a6, 82f
                  slli         a5, a6, 10
                  sub          a1, s6, sp
                  sltu         gp, zero, a1
                  auipc        a1, 611285
82:               xori         a7, s6, 1592
                  slti         s2, a1, 1438
                  srli         a5, s7, 6
                  sll          a5, a3, s11
                  add          s7, a2, sp
                  auipc        s2, 648177
88:               add          a3, t6, s3
                  sltiu        ra, a2, -506
90:               nop
                  slli         s9, t3, 13
                  bge          s5, s5, 104f
                  sll          s7, a3, s10
                  add          a7, a1, ra
                  ori          s5, a2, 1957
                  sra          a2, a1, tp
                  lui          a1, 466958
                  slti         s3, s6, -2023
                  nop
                  xor          a7, a1, s7
                  slti         t2, s9, 180
                  auipc        s10, 103030
                  beq          s6, a7, 113f
104:              bgeu         t5, t5, 106f
                  sra          a5, s2, s3
106:              slt          zero, t5, s0
                  and          a7, t1, s2
                  bge          s10, t4, 110f
                  sltu         a3, ra, a6
110:              add          ra, t1, zero
                  or           s10, a0, ra
                  sltu         s10, a4, sp
113:              srli         s9, s8, 5
                  slt          a1, t2, a5
                  beq          t6, a0, 127f
                  add          a3, zero, s9
                  sltiu        a5, a5, -1746
                  lui          s1, 516331
                  sra          a1, s8, t4
                  or           s0, a4, zero
                  lui          a2, 83500
                  srai         a5, gp, 8
                  slt          t4, s11, gp
                  xor          s5, s10, a6
                  blt          s9, t3, 145f
                  bltu         s0, t6, 145f
127:              bne          a7, s9, 130f
                  sll          t0, s10, t1
                  slti         s9, t1, -1486
130:              srli         s3, t1, 24
                  add          a6, s1, a0
                  xor          s4, a0, s2
                  sra          t0, t2, s0
                  srai         zero, a1, 4
                  sub          s7, a2, a5
                  sltiu        a7, zero, -1460
                  blt          a4, s8, 152f
                  auipc        s11, 1024901
                  and          s11, s6, a6
                  nop
                  xori         a4, t0, 2003
                  srai         a7, s11, 21
                  beq          a6, t6, 161f
                  srli         a1, t3, 31
145:              nop
                  xori         a7, a5, 557
                  nop
                  ori          ra, a0, -845
                  beq          a4, a5, 161f
                  srli         a4, a2, 10
                  blt          t3, s3, 153f
152:              sltiu        s4, t2, -899
153:              xor          s2, a2, s1
                  srli         s10, a4, 27
                  srai         s9, a5, 28
                  lui          t1, 200060
                  beq          s4, ra, 170f
                  sra          s7, a5, t4
                  slli         t4, s7, 2
                  or           t1, a4, t1
161:              bge          a3, s4, 179f
                  nop
                  sltiu        t1, a5, -139
                  andi         s3, t4, 233
                  sll          a1, a7, s6
                  ori          s5, a3, -1168
                  bltu         t2, a5, 187f
                  bltu         a2, t5, 183f
                  add          a1, a2, s11
170:              bgeu         t2, gp, 183f
                  auipc        a5, 262006
                  srl          a6, a2, s6
                  addi         a0, s7, -901
                  addi         tp, sp, -593
                  ori          a1, t2, 136
                  bltu         sp, a5, 195f
                  xori         s5, a2, -1403
                  srli         t6, s5, 6
179:              sra          s5, t5, a4
                  srl          gp, t5, zero
                  lui          t1, 940825
                  bne          sp, s2, 184f
183:              srli         s11, s4, 29
184:              slli         t3, zero, 5
                  ori          a5, s10, -1928
                  auipc        s2, 567014
187:              bgeu         s3, s5, 199f
                  sub          a2, t3, s5
                  addi         s1, tp, -1481
                  slli         a7, a4, 23
                  bgeu         t0, s0, 196f
                  add          s0, gp, tp
                  srli         s0, a4, 3
                  nop
195:              sub          t1, t5, a5
196:              slti         gp, a0, 1012
                  slti         s0, a0, -1013
                  ori          s10, s8, 1643
199:              nop
                  sltu         zero, s8, s3
                  ori          gp, t0, -755
                  or           a5, tp, t4
                  bge          s3, s7, 212f
                  and          t0, s2, ra
                  add          t2, s1, s10
                  slt          zero, t4, s1
                  bltu         gp, t3, 219f
                  add          ra, a2, a0
                  sltu         t3, s10, s4
                  slli         t1, t5, 19
                  xori         gp, zero, -1751
212:              bge          a4, s5, 227f
                  bltu         t1, t2, 215f
                  xori         s11, s2, -1500
215:              auipc        t6, 178603
                  sltu         t2, t0, a6
                  andi         tp, t1, 498
                  beq          a5, ra, 223f
219:              bne          t5, a0, 230f
                  lui          t1, 101799
                  bgeu         tp, s11, 227f
                  or           t0, s4, a3
223:              srai         s0, s4, 12
                  ori          t3, t2, -1994
                  srli         s3, s4, 9
                  bne          tp, s11, 241f
227:              blt          t3, a2, 229f
                  xor          s11, s8, t4
229:              sltu         t3, t1, t6
230:              and          s7, s2, s1
                  blt          sp, a3, 234f
                  or           s3, s4, s8
                  sra          t0, a1, sp
234:              bgeu         a6, s0, 235f
235:              bltu         s2, s9, 251f
                  or           a7, s5, s6
                  srai         a6, s4, 11
                  add          a6, s1, s5
                  addi         t6, s11, -567
                  slt          a4, a5, s10
241:              ori          s2, s8, 106
                  sra          a3, a2, s0
                  blt          t0, t4, 255f
                  bge          a7, a7, 262f
                  srai         s1, a2, 12
                  addi         a2, t1, -91
                  srli         zero, a4, 17
                  add          t2, zero, a5
                  add          tp, ra, sp
                  ori          zero, a7, -820
251:              srl          a5, t0, s5
                  beq          t2, t0, 257f
                  srai         ra, s5, 19
                  bne          s10, ra, 274f
255:              lui          s3, 189646
                  bge          a1, a1, 259f
257:              beq          t4, ra, 259f
                  or           t2, t0, s4
259:              sub          s10, s11, s0
                  addi         s0, a6, 1264
                  sll          a4, s3, s11
262:              add          a4, s4, gp
                  addi         t6, a3, -189
                  blt          s6, s6, 266f
                  bne          a3, a5, 275f
266:              ori          a1, s9, 372
                  xori         s0, s10, 1494
                  srai         s10, s5, 17
                  ori          a5, tp, -1128
                  xor          s5, tp, ra
                  slli         s6, ra, 15
                  bgeu         s11, a1, 274f
                  sltu         s11, ra, s3
274:              auipc        s0, 689983
275:              sltu         a0, s4, ra
                  lui          t4, 815491
                  sra          a4, s2, ra
                  sub          s10, s8, t2
                  srli         s6, s5, 19
                  xori         s6, a2, -406
                  and          s9, a6, a0
                  sltiu        a3, s0, -161
                  or           s0, t6, s1
                  bgeu         a4, s5, 289f
                  sltiu        t1, s9, 516
                  andi         s4, a0, 1773
                  srl          a0, t2, a2
                  xor          s6, s0, t0
289:              xori         a6, s2, 1508
                  sltu         s10, a3, t0
                  srl          s9, t0, t1
                  nop
                  and          s11, zero, t6
                  bge          a0, s9, 314f
                  bgeu         s11, a1, 296f
296:              blt          s7, a2, 308f
                  auipc        s5, 205072
                  bgeu         a2, zero, 303f
                  andi         a2, s7, -1593
                  nop
                  ori          t4, a6, -550
                  sltiu        s1, a2, 1547
303:              slti         s2, zero, 2045
                  sra          gp, a0, a6
                  auipc        tp, 21963
                  slti         s1, a2, 1703
                  ori          a5, t5, 353
308:              bne          s9, s7, 313f
                  srl          t3, s6, s2
                  srai         s4, a4, 30
                  and          a0, t1, s2
                  bgeu         a3, t6, 314f
313:              add          gp, s2, gp
314:              sub          a5, ra, t6
                  sll          a2, sp, sp
                  bgeu         t3, s10, 332f
                  sra          a4, t2, a2
                  xor          s2, a6, s8
                  andi         s10, t6, 455
                  srli         zero, t1, 11
                  slli         s0, a6, 28
                  slt          a5, s1, s4
                  nop
                  srl          s4, zero, s11
                  srli         a6, s0, 13
                  slti         s9, a4, -2033
                  auipc        s3, 44148
                  srli         a4, sp, 2
                  sra          a5, a2, t0
                  xor          s3, a2, s8
                  bne          s1, s3, 333f
332:              addi         s4, a1, -1406
333:              xori         a6, t4, -32
                  bne          t1, a7, 340f
                  slti         s0, s7, 1341
                  or           a7, s10, a7
                  bgeu         t4, a3, 346f
                  bne          tp, zero, 341f
                  slti         a7, t0, 253
340:              andi         s1, gp, 1651
341:              srai         t4, a0, 4
                  slt          zero, gp, a4
                  ori          s3, gp, -2028
                  add          t0, s9, gp
                  slli         s9, a5, 23
346:              lui          s11, 617091
                  bgeu         s0, s8, 362f
                  lui          a7, 331284
                  slli         a3, t3, 28
                  add          s10, ra, t6
                  lui          a0, 273415
                  sltiu        ra, a5, -24
                  srl          a2, t4, sp
                  ori          s7, s0, 603
                  xori         s11, t4, -1096
                  auipc        s3, 446815
                  ori          t6, t0, -1754
                  xori         s10, t6, 765
                  slti         s6, zero, 738
                  xori         s0, s8, 2005
                  auipc        tp, 444616
362:              srli         t0, s5, 20
                  bgeu         t4, t2, 378f
                  andi         s7, s3, 728
                  sll          a5, t4, s2
                  lui          a5, 139896
                  bge          s5, s9, 370f
                  bgeu         s9, a6, 388f
                  sub          t1, s8, s0
370:              srl          gp, a5, s4
                  addi         t6, a5, 363
                  srl          a4, s6, t6
                  or           s4, s9, t1
                  bge          sp, a5, 376f
                  blt          sp, t2, 377f
376:              beq          s10, a5, 395f
377:              bne          a1, s7, 390f
378:              and          s0, s7, tp
                  addi         ra, sp, -1507
                  or           s11, s10, s6
                  bgeu         ra, s11, 394f
                  or           a1, a3, gp
                  srli         a5, t4, 1
                  bgeu         t4, t3, 394f
                  bne          s0, a5, 403f
                  sra          s9, tp, sp
                  bltu         a6, a0, 399f
388:              slli         t0, t2, 28
                  slt          s6, s10, s11
390:              srai         s6, a2, 8
                  slt          s4, t4, a4
                  andi         a5, t3, 1125
                  slti         gp, s2, 109
394:              srli         s11, a5, 12
395:              andi         t3, a5, -1646
                  bge          s2, a6, 408f
                  sra          ra, tp, s9
                  bne          s1, s4, 413f
399:              andi         s5, s0, -1293
                  sub          a5, t5, t5
                  bltu         tp, s7, 419f
                  ori          t0, tp, -41
403:              beq          tp, a4, 405f
                  srl          a1, a3, s9
405:              srli         s4, a0, 18
                  slt          s0, t5, t1
                  xor          s9, s8, s4
408:              srai         a7, s2, 1
                  slt          t6, sp, s4
                  sltiu        a7, s11, 524
                  bge          s7, a0, 422f
                  sltu         t3, sp, s2
413:              srl          t0, s2, s10
                  slti         t3, a7, 817
                  and          tp, a0, t1
                  andi         t1, s1, 1952
                  andi         s11, t4, 1890
                  bge          s8, t3, 420f
419:              slti         tp, s10, -356
420:              sra          a3, tp, t5
                  slti         a4, sp, 1332
422:              bge          s1, a4, 427f
                  sll          s9, s8, t2
                  srai         a4, a2, 24
                  slt          s5, a7, t5
                  srli         s6, sp, 19
427:              sltu         a1, s2, t5
                  slli         t6, s5, 5
                  srl          t6, s8, a7
                  srli         s2, tp, 12
                  ori          a1, t4, 364
                  srl          s2, a0, t0
                  beq          s7, t5, 435f
                  sra          s9, s4, tp
435:              sltu         gp, a0, sp
                  bltu         s11, tp, 438f
                  and          zero, s8, s1
438:              bltu         t6, gp, 439f
439:              slt          ra, s1, a4
                  slt          t3, s6, a7
                  and          a4, s5, s11
                  bne          a2, zero, 444f
                  add          s9, sp, ra
444:              sltu         t2, t3, a7
                  andi         s7, tp, 568
                  addi         t4, a6, 1392
                  srai         s0, a7, 18
                  srai         s2, a5, 15
                  and          t0, s9, t0
                  slli         s4, t4, 13
                  and          a1, t2, a5
                  bge          sp, t5, 465f
                  slli         a4, a4, 22
                  xori         a2, s3, 1594
                  sub          a3, s1, a3
                  and          tp, ra, t6
                  xori         s9, s7, 1206
                  xor          s6, a7, a4
                  andi         tp, a2, 1109
                  nop
                  slli         zero, s4, 10
                  nop
                  nop
                  sra          s0, a1, s4
465:              blt          t6, a2, 471f
                  add          s2, a2, t3
                  slti         a7, s10, -494
                  andi         s4, a4, -677
                  sub          s6, s4, s2
                  add          s11, zero, a3
471:              srli         s4, a4, 8
                  sltu         s9, s8, a4
                  slti         a1, s0, 1241
                  slt          s10, s11, a3
                  xor          tp, s4, a3
                  bge          t6, gp, 478f
                  blt          a0, a4, 497f
478:              sra          s6, a0, t2
                  xor          s1, s7, s9
                  sltu         t6, s4, ra
                  bge          a5, a5, 496f
                  sll          a7, s3, sp
                  bne          a7, a7, 495f
                  lui          s9, 548704
                  bge          s2, t6, 503f
                  addi         s2, a1, 163
                  bne          s3, a7, 506f
                  or           s3, t5, s10
                  blt          t0, t4, 494f
                  addi         a7, gp, 924
                  blt          s3, s1, 502f
                  srl          a5, s5, s1
                  blt          t1, a3, 508f
494:              bltu         s1, s0, 514f
495:              sub          a6, tp, t6
496:              xori         t6, tp, -1243
497:              sra          a7, s10, t1
                  bge          s9, t0, 503f
                  xor          s11, a1, t6
                  sll          a7, t2, t2
                  xor          a6, ra, s10
502:              srli         s11, s5, 17
503:              srli         ra, a3, 26
                  addi         a7, sp, 453
                  sll          s2, s5, t6
506:              sub          t2, s5, s10
                  sltu         zero, s11, s1
508:              xor          s1, s4, gp
                  sltu         t2, s6, s6
                  xori         a2, t1, 1574
                  ori          tp, t0, 1054
                  slt          s3, s8, a4
                  sltu         t0, s7, s6
514:              bltu         t4, s9, 526f
                  or           s4, t1, ra
                  srli         a1, s9, 29
                  srl          t0, t1, a7
                  andi         s2, s0, -1071
                  srli         s7, a1, 4
                  slti         ra, t6, -1738
                  auipc        a3, 170411
                  slt          ra, t0, gp
                  sra          t6, a0, a5
                  srai         a1, ra, 8
                  slli         t2, t1, 9
526:              add          t1, sp, t3
                  bne          t2, s8, 529f
                  slti         s11, s5, 1887
529:              nop
                  or           a3, s6, t0
                  addi         s10, t4, 347
                  bgeu         a4, s10, 535f
                  sra          t6, s11, s11
                  sll          a0, s10, sp
535:              beq          a2, s10, 538f
                  slti         gp, a1, -1572
                  slti         s4, s10, -1141
538:              bge          s10, a4, 556f
                  sltu         a5, a7, a4
                  xori         s0, a5, 1402
                  slt          ra, s3, a4
                  sltu         s10, a4, tp
                  slli         zero, a4, 12
                  ori          a0, t2, -948
                  blt          s1, a1, 558f
                  add          s0, t0, s6
                  slli         s10, a5, 4
                  ori          a5, a6, 1500
                  slli         t3, t4, 28
                  blt          a1, zero, 560f
                  bge          s2, s2, 560f
                  sltiu        ra, t5, -1173
                  beq          t0, t6, 555f
                  blt          s11, s11, 566f
555:              ori          a3, s2, -1768
556:              nop
                  or           s10, zero, t2
558:              sra          t4, a0, ra
                  add          t2, t1, s10
560:              and          s11, s5, a0
                  addi         s3, s10, 2020
                  xor          s11, s9, a3
                  bltu         s2, ra, 578f
                  ori          s7, s3, 367
                  slti         tp, s3, -291
566:              srli         s10, s8, 18
                  blt          s10, t0, 583f
                  beq          a7, a2, 578f
                  beq          s2, a6, 584f
                  bltu         s9, s2, 572f
                  auipc        s11, 834640
572:              srl          t6, a7, a6
                  sltiu        s5, s0, 1614
                  srl          s1, a7, t6
                  beq          a1, a7, 587f
                  srl          tp, s3, a0
                  bltu         s2, a6, 592f
578:              or           s9, s2, s0
                  xori         s11, a2, -1538
                  add          zero, a4, s4
                  xor          ra, t6, s3
                  slt          s6, s0, a1
583:              sub          t1, a6, a1
584:              andi         tp, t6, -1615
                  lui          a0, 368578
                  slli         s7, a4, 22
587:              addi         s6, s7, 1340
                  blt          gp, t4, 601f
                  addi         s9, a2, -1885
                  xori         s4, s6, 854
                  bgeu         s10, t3, 600f
592:              bltu         t0, tp, 593f
593:              bgeu         s7, s0, 598f
                  xor          a6, t6, t0
                  auipc        s5, 645527
                  xori         s10, sp, 206
                  xori         s1, t1, -843
598:              slt          t6, t5, a2
                  slti         a0, a6, 1774
600:              sltiu        t4, t0, 69
601:              nop
                  srai         a7, a7, 2
                  addi         s2, s3, -481
                  sll          a3, a1, a3
                  sltiu        t2, t4, 1267
                  blt          s5, a5, 608f
                  and          s9, t2, s7
608:              bgeu         s0, s0, 614f
                  sltu         a2, a0, a7
                  sltiu        s3, a3, 752
                  and          a0, a2, s11
                  ori          zero, tp, 1585
                  xor          ra, a6, a6
614:              and          t6, ra, s4
                  xori         s7, s9, 1253
                  sltu         s4, sp, zero
                  sub          s3, s4, tp
                  add          s1, s11, a5
                  bgeu         s1, t0, 621f
                  xor          s10, s5, a6
621:              xor          s11, zero, s2
                  srai         s3, t0, 10
                  bne          ra, t3, 636f
                  add          t3, sp, t2
                  srl          s0, t6, t3
                  andi         a7, t4, 25
                  or           s4, zero, t1
                  slti         t1, s2, -1120
                  srl          gp, s4, t5
                  xor          t6, zero, s5
                  bge          s11, t4, 633f
                  slt          a6, s2, gp
633:              beq          zero, a5, 636f
                  blt          gp, s0, 645f
                  sra          a7, s2, t2
636:              andi         s6, sp, 1225
                  sra          a5, sp, s4
                  beq          s8, a1, 643f
                  xori         zero, t6, -1568
                  sra          t0, a0, sp
                  bge          s11, t2, 661f
                  slti         t1, t5, 1739
643:              xor          s7, gp, s0
                  nop
645:              bge          t2, t1, 663f
                  srl          s11, a2, s11
                  beq          a1, gp, 650f
                  srl          s9, s2, t0
                  sltiu        s5, a3, 630
650:              or           s2, t4, a2
                  slt          t6, t1, a1
                  srai         s1, a7, 26
                  sra          t2, s9, tp
                  andi         t2, a0, -101
                  sll          gp, t2, s1
                  bge          a6, ra, 672f
                  and          s9, t1, s7
                  bgeu         s11, s8, 670f
                  srli         gp, tp, 27
                  sltu         s6, s7, t1
661:              nop
                  ori          s1, s5, 387
663:              and          s5, s1, ra
                  addi         s2, s6, -1117
                  la           a1, region_1+111 #start riscv_load_store_rand_instr_stream_7
                  lhu          s5, 61(a1)
                  lh           t2, -77(a1)
                  slt          a6, t3, a6
                  srli         s5, zero, 30
                  slli         s11, s8, 15
                  addi         s6, t4, -319
                  lbu          ra, 195(a1)
                  lui          a2, 316354
                  srli         a6, s5, 1
                  lhu          t3, 67(a1)
                  sub          s2, a1, s4
                  lh           s10, 39(a1)
                  xori         s1, s7, -259
                  xori         tp, s8, 1907
                  ori          s5, a3, -202
                  lbu          t1, -30(a1)
                  lb           t2, 160(a1)
                  sh           a0, 101(a1)
                  lhu          s0, 177(a1)
                  lw           s9, -43(a1)
                  lbu          t6, 60(a1)
                  lhu          a7, 151(a1)
                  lhu          a3, 141(a1)
                  sb           a0, 176(a1)
                  lhu          a6, 235(a1)
                  srli         gp, s4, 26
                  lui          t6, 920023
                  srai         a6, a1, 13
                  andi         a2, a2, 768
                  lbu          zero, 122(a1)
                  lh           a4, 243(a1)
                  sltiu        s11, t2, -895
                  sb           t3, 27(a1)
                  srai         s6, tp, 29
                  lbu          t6, 141(a1)
                  addi         t1, t4, 1212
                  sb           t2, 146(a1)
                  srli         a5, zero, 18
                  ori          t4, t4, -1781
                  lbu          gp, 72(a1)
                  auipc        a6, 242110
                  sb           zero, -44(a1)
                  lh           s1, 17(a1)
                  sb           s9, 188(a1) #end riscv_load_store_rand_instr_stream_7
                  sub          a4, s5, zero
                  auipc        a3, 465664
                  srl          a2, a5, s9
                  beq          a4, t4, 680f
                  add          a7, a7, a5
670:              sltu         t0, s0, s9
                  sub          t2, s6, sp
672:              lui          t3, 877919
                  blt          ra, a4, 675f
                  bge          t3, t4, 693f
675:              srl          t6, s8, sp
                  srl          s1, sp, t1
                  sll          a2, s0, s1
                  sub          s11, s6, a5
                  sltu         s5, tp, s8
680:              sll          s7, gp, t2
                  bne          s11, a7, 696f
                  lui          a6, 1012528
                  xor          a6, s1, tp
                  sll          s1, s10, a4
                  slti         s5, sp, -1733
                  sub          s5, s8, a6
                  addi         s1, t4, -486
                  beq          t6, s3, 706f
                  xori         ra, t1, -66
                  blt          s1, t3, 692f
                  slti         s2, s8, -1731
692:              ori          a6, s9, 1129
693:              beq          s9, s1, 698f
                  lui          a1, 631646
                  sltu         s9, t2, s11
696:              srl          zero, ra, a2
                  bge          a4, t1, 717f
698:              sll          a0, a2, s2
                  xori         t6, s2, 221
                  sub          s10, gp, s10
                  auipc        t1, 392502
                  sltu         s1, t5, t0
                  auipc        a2, 578911
                  sltu         a0, ra, zero
                  bltu         t2, t1, 707f
706:              srai         s9, a6, 22
707:              auipc        a1, 436746
                  srl          gp, a3, t5
                  bne          s4, s3, 724f
                  bgeu         s6, s10, 723f
                  srli         a5, ra, 30
                  lui          t0, 513515
                  and          gp, s11, s2
                  srai         s3, t3, 6
                  srl          s7, a2, s11
                  andi         s11, a7, 1482
717:              bne          a4, t4, 730f
                  sll          t0, a2, t0
                  andi         a4, s5, 596
                  slli         t3, s2, 5
                  srl          s3, s9, a4
                  bgeu         s9, s0, 740f
723:              sra          a5, t5, t5
724:              xori         a7, s8, -1857
                  slli         a6, zero, 24
                  slti         s5, a3, 647
                  bltu         a6, s1, 729f
                  bgeu         s7, tp, 739f
729:              and          a7, t5, t6
730:              andi         zero, s1, 1669
                  slti         t3, zero, 624
                  auipc        s11, 353601
                  beq          a2, a5, 739f
                  srl          t0, s3, sp
                  lui          a4, 171991
                  andi         s2, ra, -628
                  bgeu         s11, s2, 752f
                  bltu         s2, t1, 757f
739:              bltu         sp, s3, 741f
740:              slt          s11, t2, t1
741:              srai         tp, s1, 20
                  bltu         a1, s3, 762f
                  srl          s10, s10, s11
                  add          a4, sp, a1
                  bltu         ra, t3, 757f
                  ori          a7, s6, -749
                  slli         t4, ra, 21
                  xor          s11, t1, s8
                  xor          a4, t2, s1
                  xori         t3, sp, 993
                  or           t4, s1, a3
752:              blt          t3, s4, 755f
                  auipc        s10, 962255
                  blt          t3, a6, 774f
755:              ori          t2, a1, 567
                  and          s2, a4, s9
757:              srli         a1, a7, 21
                  or           a4, s0, t5
                  slti         t0, t5, 1319
                  xor          t6, a2, s6
                  beq          t6, s4, 763f
762:              ori          a7, tp, 960
763:              srli         t3, t2, 17
                  or           s0, s0, s11
                  slti         s4, zero, -30
                  sll          a0, a4, s2
                  blt          t0, ra, 779f
                  srai         t4, zero, 29
                  la           gp, region_0+1196 #start riscv_load_store_rand_instr_stream_8
                  sltiu        t1, a1, -762
                  addi         tp, a3, 517
                  lbu          ra, -21(gp)
                  lbu          s4, -40(gp)
                  sb           t1, 21(gp)
                  sb           gp, -14(gp)
                  lbu          s5, -19(gp)
                  lb           s9, -55(gp)
                  lhu          a5, -2(gp)
                  lb           a5, -19(gp)
                  add          a7, t5, t3
                  lbu          t0, 27(gp)
                  lbu          t4, -17(gp)
                  lb           a0, -41(gp)
                  lb           t1, -35(gp)
                  lw           t2, 0(gp)
                  sb           s3, -21(gp)
                  xor          s2, t3, s2
                  lbu          t3, 1(gp)
                  lhu          t0, 18(gp)
                  lb           s2, -43(gp)
                  slli         a1, a0, 0
                  lb           t3, 19(gp)
                  lb           a6, 47(gp)
                  add          a4, s9, a2
                  sb           a7, -15(gp)
                  sb           tp, -60(gp)
                  lbu          t3, 37(gp)
                  lh           s4, -4(gp)
                  sb           s3, -47(gp)
                  srl          t4, t1, a1
                  srl          a0, tp, s10
                  lbu          tp, 56(gp)
                  lbu          a3, -15(gp)
                  srai         s9, s9, 15
                  slt          t0, zero, s9
                  lb           s5, -48(gp)
                  lh           t2, 12(gp)
                  lb           ra, 47(gp) #end riscv_load_store_rand_instr_stream_8
                  auipc        s5, 926311
                  slli         s6, s6, 2
                  sltu         s1, a4, a7
                  bgeu         s6, s3, 775f
                  andi         a6, s6, 982
774:              add          s0, t4, t1
775:              xor          zero, t4, t0
                  srl          gp, a5, a5
                  addi         s1, s2, -1088
                  addi         t4, s5, 1209
779:              blt          a1, t2, 795f
                  bgeu         t1, a1, 790f
                  sll          ra, s8, a3
                  andi         a2, s1, 1392
                  slt          s6, s0, s4
                  and          t0, t4, t6
                  sub          t4, s5, s2
                  nop
                  sra          a2, a2, ra
                  blt          s1, a3, 790f
                  slti         t6, ra, -1222
790:              slt          a4, s9, t2
                  sub          a2, s10, t6
                  srli         a5, a0, 16
                  add          t2, a2, a6
                  srli         t0, s10, 6
795:              bgeu         a5, s4, 800f
                  slti         a5, s3, -696
                  andi         a6, t4, 52
                  sltiu        a1, a2, 1593
                  sltiu        zero, t6, -895
800:              blt          a4, a1, 815f
                  sltu         a2, t6, zero
                  srli         a5, zero, 0
                  xori         zero, s3, 420
                  xor          s10, ra, a4
                  addi         gp, t0, -1889
                  sltiu        s1, s5, -211
                  ori          s0, s8, 1132
                  srai         a3, t1, 2
                  ori          t6, a0, 346
                  beq          t2, s2, 812f
                  blt          s9, ra, 829f
812:              sub          t4, s11, s7
                  auipc        t0, 70025
                  slt          gp, s7, s9
815:              srl          s6, tp, s7
                  add          s0, sp, t3
                  sll          t6, s11, a2
                  slli         s9, s3, 9
                  slti         s11, s10, -1224
                  sra          s11, s10, s1
                  sltiu        s11, a2, 872
                  and          a2, a2, s5
                  sll          s9, a4, t1
                  slli         a5, s0, 12
                  srl          t6, s6, t6
                  add          s10, sp, s9
                  slli         s4, t6, 27
                  srai         a5, t2, 0
829:              auipc        s9, 791972
                  andi         s0, a3, 571
                  slti         a7, tp, 196
                  and          s7, s3, a4
                  bge          s4, a6, 838f
                  slti         a7, tp, -1604
                  slli         a0, t1, 19
                  beq          s8, sp, 848f
                  bltu         a2, sp, 838f
838:              nop
                  ori          a4, t6, 1900
                  bgeu         a3, tp, 845f
                  add          t3, s1, a2
                  nop
                  add          s0, s4, t3
                  sltu         t0, s1, s3
845:              auipc        zero, 371795
                  xori         s11, t4, -462
                  slli         s3, s5, 7
848:              bge          a3, s7, 857f
                  add          t3, t3, s0
                  sll          s11, a0, t0
                  addi         t0, s0, -450
                  or           s7, t0, s2
                  blt          t6, s3, 855f
                  andi         t1, s8, 297
855:              lui          s7, 143468
                  slli         t6, sp, 31
857:              slti         t6, a2, -1447
                  slt          a4, s8, t1
                  bne          s11, s8, 861f
                  beq          s11, s6, 878f
861:              andi         a7, s1, 1102
                  sltu         t2, t1, t3
                  sltu         s0, t6, t0
                  bne          zero, sp, 884f
                  xor          s2, a4, s6
                  slt          a5, s7, t3
                  sll          a4, a5, s7
                  andi         ra, s1, 496
                  slti         s9, gp, -551
                  sub          t0, a7, a3
                  sltu         s5, t4, t6
                  xori         s10, a7, 796
                  sltu         s9, gp, s10
                  bne          a5, t4, 889f
                  sltiu        s1, a0, -1052
                  add          a2, s9, zero
                  add          s4, ra, s10
878:              xor          s0, zero, t5
                  add          a7, s10, a5
                  and          a0, a7, s0
                  slt          a1, s2, s11
                  sll          a1, t1, zero
                  auipc        a0, 371832
884:              ori          t4, t3, 278
                  add          s0, s4, t0
                  sll          a4, ra, t6
                  beq          s1, t2, 906f
                  andi         t0, a7, 401
889:              xori         t6, tp, -269
                  sll          s1, s8, t1
                  xori         s3, s2, -950
                  sra          s1, t0, t1
                  bgeu         s4, s10, 896f
                  andi         s0, a0, -1972
                  addi         a7, t5, -1956
896:              slti         s3, ra, 1014
                  bne          t0, a6, 906f
                  slt          s2, s11, s2
                  ori          a0, tp, -1777
                  slti         a7, a0, 1120
                  addi         t1, s11, 1550
                  sra          zero, a0, sp
                  srl          zero, t5, s0
                  srai         t1, tp, 2
                  bge          s1, sp, 915f
906:              srli         s11, s9, 0
                  sltiu        s5, t5, 956
                  and          gp, s9, tp
                  slt          ra, a0, a4
                  blt          s10, t0, 911f
911:              nop
                  slt          a5, s9, a1
                  slli         a6, tp, 3
                  srli         s1, s8, 3
915:              add          t1, s10, t6
                  beq          a7, a1, 918f
                  or           t0, a4, s4
918:              blt          s10, s6, 933f
                  bgeu         t1, a5, 930f
                  or           a7, a4, s1
                  nop
                  beq          a7, t3, 942f
                  srli         a5, t4, 12
                  srl          s3, t5, s3
                  srl          a3, t2, s8
                  beq          t3, a0, 929f
                  sltiu        s3, a0, -1467
                  slt          t1, s8, s6
929:              sltiu        s1, s10, -922
930:              xori         s6, s9, -1624
                  blt          a1, t5, 933f
                  and          s9, a2, s11
933:              sra          ra, sp, gp
                  and          a4, t4, a7
                  lui          ra, 999827
                  sltu         s10, s8, a1
                  ori          a0, s0, 1188
                  sltu         a0, t5, t0
                  sra          s10, tp, s4
                  srl          s6, a2, t6
                  sra          s2, s10, a2
942:              ori          t4, a6, 1999
                  nop
                  sub          a3, t3, s11
                  lui          s0, 426429
                  ori          a5, s2, -476
                  slti         s4, s5, -1267
                  srli         s1, s9, 14
                  sll          a1, s1, s5
                  sra          t0, t6, s7
                  srli         gp, t3, 20
                  and          a6, a6, t3
                  bne          a7, a4, 958f
                  auipc        s2, 98081
                  sll          gp, t2, s8
                  and          a3, s0, s11
                  slti         a3, s8, -334
958:              blt          sp, a4, 971f
                  srl          zero, s7, a7
                  xor          a2, s5, a6
                  sltiu        a6, s1, 1074
                  ori          s11, a3, 1598
                  bgeu         a7, a0, 976f
                  andi         a2, t1, -1659
                  srli         s10, sp, 15
                  bltu         t1, zero, 982f
                  xori         gp, s9, 1116
                  and          t6, t4, t0
                  srai         s6, a0, 24
                  auipc        s7, 714535
971:              bge          a1, a7, 983f
                  slli         a1, t6, 17
                  bltu         gp, s7, 985f
                  auipc        a6, 813697
                  bge          s4, s11, 987f
976:              and          a6, s5, zero
                  slli         s5, t2, 14
                  bne          s0, a5, 983f
                  and          t2, a4, t1
                  xori         s11, a3, 1265
                  slti         a2, t3, 1848
982:              or           s6, a7, s5
983:              sltu         s0, t2, s6
                  srl          s0, a0, t6
985:              srai         s9, s1, 0
                  ori          a2, s1, 943
987:              bltu         s2, s0, 989f
                  auipc        s1, 923759
989:              sll          a5, t0, t1
                  sltu         s5, s9, a2
                  ori          gp, s5, 1226
                  sra          s2, t6, s11
                  addi         s3, a3, 139
                  sltu         s6, s1, t0
                  srai         s4, a5, 22
                  bne          t5, t6, 1002f
                  and          s7, t5, s0
                  blt          a6, s6, 1016f
                  sra          s11, s8, t3
                  slti         s9, a3, 1362
                  sltu         t1, s2, s10
1002:             andi         s6, tp, -790
                  nop
                  and          s11, t5, s8
                  auipc        s9, 842884
                  sltiu        a5, s11, -1751
                  addi         a6, s7, 54
                  slt          zero, s11, zero
                  nop
                  xor          t1, zero, a0
                  blt          a1, sp, 1013f
                  slli         t6, t2, 5
1013:             bne          a7, t5, 1018f
                  auipc        t3, 723717
                  sltiu        t4, ra, -1816
1016:             or           a7, s11, s4
                  sub          t4, zero, s11
1018:             xori         t1, t2, -1386
                  or           a3, a2, a7
                  blt          t6, s0, 1035f
                  or           s3, t2, a1
                  sll          s7, t0, t6
                  blt          t0, gp, 1041f
                  xori         t2, sp, -627
                  slt          a0, s1, s0
                  bge          s1, a6, 1045f
                  ori          t4, a1, 578
                  ori          a1, a6, 14
                  andi         t3, s7, 1202
                  sra          a5, s3, a4
                  xori         ra, s0, -1341
                  sra          a7, t2, ra
                  lui          t4, 309033
                  sltiu        t2, gp, 623
1035:             bge          a1, a1, 1040f
                  sra          zero, s4, a5
                  and          s7, t1, gp
                  or           s9, s10, ra
                  slt          a7, s6, s8
1040:             andi         a7, sp, 476
1041:             lui          ra, 920531
                  slli         s3, s3, 21
                  srl          s6, s3, s6
                  srai         ra, a6, 6
1045:             xor          s1, t2, a7
                  addi         t1, t5, -203
                  slli         t0, zero, 25
                  srli         s11, t2, 6
                  xor          t0, s0, a4
                  auipc        t0, 536734
                  and          tp, a2, a4
                  srl          a2, t3, s6
                  sra          s7, s0, s0
                  xori         s2, s9, 1942
                  lui          s11, 585232
                  sltiu        s3, a7, 1258
                  blt          t1, t3, 1077f
                  beq          s6, t2, 1060f
                  sra          a2, s4, sp
1060:             bge          zero, a4, 1062f
                  xori         s11, s4, -1263
1062:             sra          t3, t0, s2
                  bne          s10, s1, 1075f
                  bge          t1, t0, 1075f
                  ori          s1, t6, -1344
                  bge          a6, tp, 1071f
                  blt          tp, t1, 1085f
                  slli         t0, a0, 0
                  nop
                  blt          zero, a2, 1090f
1071:             beq          a0, tp, 1083f
                  sra          a1, s8, sp
                  sub          s4, a4, s7
                  addi         t1, a4, -847
1075:             addi         s9, a7, 1312
                  srli         a0, s9, 31
1077:             and          t3, a1, s10
                  sub          s6, t6, t3
                  sub          a2, a7, s4
                  bne          s0, s0, 1092f
                  andi         gp, t4, 1835
                  sltiu        t3, t3, 65
1083:             sltiu        a0, t3, -722
                  slli         t4, s3, 3
1085:             xori         a6, t2, 1425
                  srai         s2, s5, 23
                  nop
                  xor          s3, t4, a6
                  xor          s1, gp, a2
1090:             sra          s6, s2, s11
                  or           s9, s11, a6
1092:             andi         a1, s7, 461
                  bge          a7, t6, 1108f
                  sub          t6, s1, tp
                  slti         s9, s5, -587
                  slti         t4, tp, 40
                  slti         t4, s8, 288
                  and          t0, zero, s11
                  xor          tp, s5, t1
                  xori         a0, a7, -132
                  add          ra, s0, s9
                  slt          t6, a2, t2
                  slt          t3, s1, a6
                  add          t2, t4, t5
                  andi         s6, a1, -312
                  lui          a3, 528023
                  ori          s2, s3, -921
1108:             lui          s0, 925926
                  add          s10, zero, s3
                  sll          tp, s9, s6
                  sltiu        t0, sp, 2006
                  addi         s0, s3, -1007
                  sll          s3, s6, s3
                  slli         s9, t0, 15
                  bge          s5, ra, 1128f
                  xori         s4, tp, -490
                  srli         t3, a4, 31
                  or           s11, a2, a7
                  sra          a5, t3, a2
                  slli         s7, s1, 27
                  sltu         a4, sp, s0
                  xor          s5, s6, s5
                  andi         s9, t2, -194
                  or           t2, a1, s10
                  srai         s10, a7, 21
                  bne          a5, zero, 1139f
                  xori         t6, s8, 921
1128:             bltu         a1, tp, 1133f
                  bne          t0, t3, 1132f
                  nop
                  auipc        s3, 67886
1132:             bge          s5, s8, 1141f
1133:             beq          a6, t4, 1148f
                  srl          t3, t4, s7
                  srl          a7, s9, t5
                  srli         gp, s9, 21
                  nop
                  and          s3, s3, gp
1139:             nop
                  addi         s9, gp, -1052
1141:             srli         gp, s1, 10
                  blt          t5, s9, 1148f
                  nop
                  sll          ra, s1, s7
                  auipc        t6, 903402
                  srl          t1, s0, a3
                  slli         s11, s2, 18
1148:             addi         zero, t1, 379
                  or           s2, s8, a4
                  blt          a1, a4, 1152f
                  sltiu        a5, s11, 1051
1152:             sra          a1, s3, t5
                  sltiu        s6, s7, -927
                  sltu         s3, s4, s0
                  srl          zero, s1, s11
                  slli         s3, a0, 2
                  add          t0, tp, zero
                  srli         s0, s10, 6
                  bge          s4, t6, 1174f
                  or           t1, s1, a4
                  bgeu         s0, a2, 1177f
                  sltu         tp, s3, s7
                  srai         s9, t2, 16
                  sra          s5, s9, a6
                  slti         t3, s2, -1981
                  srli         t2, s2, 7
                  nop
                  beq          a1, ra, 1178f
                  ori          s5, t4, 116
                  addi         t6, zero, -95
                  slti         a0, s10, 1085
                  slti         t6, t6, -1086
                  bltu         s8, a0, 1175f
1174:             sltu         s10, a1, a0
1175:             or           t4, s9, sp
                  sra          t0, s6, a4
1177:             and          s0, s0, s4
1178:             slli         gp, t6, 14
                  xori         s9, gp, -2002
                  and          t0, s4, s3
                  and          a7, s3, s10
                  sll          ra, a2, a3
                  addi         tp, tp, 1674
                  sltu         t0, tp, t3
                  srai         a3, t5, 21
                  slli         a6, s9, 25
                  slt          a6, tp, t2
                  slti         tp, s2, 1581
                  auipc        ra, 510847
                  slt          s11, s4, s9
                  and          a3, t2, gp
                  srai         a4, s3, 12
                  bgeu         a3, a2, 1194f
1194:             nop
                  bne          t3, t2, 1198f
                  sltu         a6, s0, s10
                  sub          s0, ra, a6
1198:             ori          tp, t3, -1247
                  la           t6, region_0+1876 #start riscv_load_store_rand_instr_stream_9
                  add          s0, s2, t4
                  andi         a5, sp, -1735
                  lbu          s7, -153(t6)
                  lb           ra, -81(t6)
                  sb           s9, -147(t6)
                  sub          a7, t1, t2
                  lhu          tp, -76(t6)
                  sw           s4, -52(t6)
                  slt          s9, s7, s10
                  slt          t3, s5, s6
                  lhu          t1, -104(t6)
                  xor          t3, a7, s4
                  lb           t1, 114(t6)
                  xor          s0, s9, a2
                  nop
                  lb           s11, -69(t6)
                  xori         a4, s10, 583
                  lb           a4, -71(t6)
                  lbu          t4, -223(t6)
                  lw           a0, -64(t6)
                  sra          a7, s11, s6
                  xor          s0, a0, a2
                  addi         a1, t4, 1861
                  xori         a7, a2, -1505
                  lhu          ra, -118(t6)
                  sltiu        s7, t3, -1629
                  srai         a4, s3, 31
                  lhu          s4, -196(t6)
                  sh           tp, -38(t6)
                  nop
                  addi         a4, tp, -1824
                  slli         s6, a4, 0
                  sll          t4, s6, tp
                  sub          s2, a7, gp
                  lhu          a2, 58(t6)
                  slli         a5, t5, 4
                  sltiu        s10, s6, -299
                  xor          a5, t4, s9
                  sh           t3, 46(t6)
                  auipc        a0, 742025
                  xor          a3, zero, s8
                  addi         a3, a2, 1953
                  or           t2, a5, s1
                  lui          t0, 178681
                  srli         zero, zero, 25
                  sb           s7, 71(t6) #end riscv_load_store_rand_instr_stream_9
                  blt          t4, s1, 1201f
                  xori         a3, s10, 55
1201:             andi         tp, a5, -1055
                  bne          tp, sp, 1204f
                  slti         t6, s9, -500
1204:             and          t0, s11, s10
                  auipc        a0, 343559
                  ori          a7, a1, -445
                  bge          s10, a0, 1222f
                  bltu         s0, gp, 1210f
                  slli         s1, s2, 10
1210:             bne          s6, a6, 1223f
                  srl          t6, ra, s6
                  bne          t6, t0, 1217f
                  sub          s1, s4, s1
                  srl          s10, a6, s7
                  sra          a1, s11, zero
                  sub          a7, t1, s3
1217:             xor          s7, a3, s0
                  blt          t5, s8, 1220f
                  bne          t5, a6, 1235f
1220:             srai         gp, a4, 26
                  sra          s10, s11, a2
1222:             bltu         s2, a7, 1235f
1223:             sll          s9, s9, tp
                  auipc        a3, 1048173
                  slli         s10, t1, 9
                  bltu         a6, t5, 1227f
1227:             xori         a5, t1, 1896
                  xor          s2, a5, a4
                  sll          t0, ra, ra
                  add          tp, s5, s7
                  and          gp, s8, t2
                  bgeu         t4, a0, 1244f
                  slt          t1, s3, s11
                  sltu         zero, a5, tp
1235:             and          s4, a6, a0
                  sra          s2, s4, zero
                  beq          ra, t3, 1252f
                  bge          a3, s10, 1258f
                  bge          s8, t5, 1241f
                  lui          a6, 748437
1241:             bge          s1, sp, 1256f
                  add          a2, sp, a4
                  sltiu        a5, a5, -1663
1244:             bne          a3, s11, 1250f
                  bne          s11, zero, 1256f
                  xori         s7, tp, -1091
                  xor          t6, a7, ra
                  srli         tp, s6, 24
                  nop
1250:             or           s6, s2, t2
                  slli         zero, ra, 22
1252:             nop
                  bgeu         s1, zero, 1273f
                  lui          s3, 856436
                  slti         s3, a5, 1121
1256:             slti         s1, t2, -1017
                  srai         a3, t2, 17
1258:             auipc        t1, 518975
                  bgeu         s6, s2, 1264f
                  nop
                  sub          s1, a3, s1
                  nop
                  bltu         t0, gp, 1275f
1264:             nop
                  slli         a7, s5, 18
                  srli         a3, t6, 0
                  nop
                  blt          gp, ra, 1280f
                  or           t6, s11, s5
                  srl          t4, a6, s3
                  blt          s9, t3, 1289f
                  and          s11, t3, s2
1273:             nop
                  xor          s5, a1, t3
1275:             sltiu        t3, s8, 1563
                  sll          tp, t4, s10
                  slli         t6, s4, 10
                  bne          s11, s9, 1296f
                  nop
1280:             bgeu         s6, s8, 1290f
                  addi         s11, a6, -1028
                  srai         s4, t0, 13
                  or           s0, a7, s2
                  nop
                  srl          ra, t3, gp
                  xor          zero, a4, s10
                  slti         a6, s6, -1710
                  xori         a7, tp, -1362
1289:             slli         s3, s8, 3
1290:             blt          a4, a5, 1309f
                  nop
                  srai         t6, t3, 14
                  bne          a3, t0, 1295f
                  slti         a2, s5, 860
1295:             beq          a6, a2, 1300f
1296:             xor          s1, t0, s10
                  lui          a2, 768347
                  add          t6, ra, t2
                  beq          s1, gp, 1308f
1300:             slti         s7, a7, 194
                  blt          s3, s9, 1304f
                  slli         a5, t1, 23
                  auipc        a0, 689129
1304:             bne          t1, a0, 1307f
                  sub          a3, a5, s8
                  srli         t0, gp, 1
1307:             sltu         a6, t5, s6
1308:             or           s7, a3, t1
1309:             bltu         a6, t3, 1311f
                  sra          t1, s5, s3
1311:             addi         s0, a1, -522
                  sub          s0, sp, a1
                  srai         t1, s1, 2
                  sltiu        gp, s1, 1903
                  and          tp, s7, tp
                  addi         t6, s6, 1050
                  beq          a3, t2, 1319f
                  sltu         tp, s11, ra
1319:             slt          s2, zero, s8
                  srli         s10, tp, 0
                  xori         a7, a0, -1529
                  bgeu         s3, s2, 1324f
                  bne          a7, a2, 1328f
1324:             bltu         t4, s2, 1333f
                  srli         a4, s11, 22
                  srai         a7, s8, 1
                  ori          t0, s3, 1044
1328:             slti         a3, tp, 1778
                  slti         t6, s3, 1078
                  srai         s3, ra, 23
                  xori         s7, a0, 883
                  sub          a0, s6, s0
1333:             and          t6, s6, t3
                  andi         a7, t4, 36
                  bgeu         zero, s6, 1347f
                  sra          s1, a7, s1
                  or           t3, a7, t3
                  sltu         t1, a5, s11
                  slti         t6, t0, -445
                  srli         s5, t3, 6
                  and          t2, a2, s0
                  ori          a6, s2, -1338
                  lui          s1, 558759
                  andi         gp, gp, 1706
                  xori         a1, t4, -788
                  xor          t0, t3, t4
1347:             srl          gp, a3, a1
                  andi         s3, t2, -19
                  sll          s11, sp, s3
                  slli         s2, a0, 3
                  beq          a7, t3, 1362f
                  and          s9, s2, ra
                  lui          tp, 338654
                  slti         s5, a7, -473
                  blt          t1, s8, 1368f
                  beq          s4, a7, 1361f
                  andi         zero, t0, -1201
                  xori         a0, s2, 1288
                  lui          t1, 598689
                  bge          t3, gp, 1375f
1361:             auipc        s3, 457773
1362:             slti         t3, a3, 825
                  auipc        s6, 840641
                  sub          a4, s10, t0
                  sll          t3, s3, a6
                  andi         a2, s7, -545
                  and          a1, s10, t2
1368:             sra          a3, s8, t6
                  srl          a1, a6, gp
                  slt          a2, t3, gp
                  lui          s7, 962674
                  slli         s9, s6, 21
                  nop
                  auipc        s3, 794925
1375:             andi         s7, a1, 142
                  sltu         s7, s9, s8
                  slti         ra, s11, -838
                  bgeu         gp, s0, 1397f
                  lui          s1, 887516
                  lui          a7, 170874
                  sra          s5, s2, zero
                  srli         s11, s2, 10
                  sub          gp, s0, a3
                  nop
                  sltiu        s0, s6, 1457
                  bne          s2, t3, 1392f
                  srai         s3, a3, 8
                  and          s10, s10, a4
                  nop
                  add          s5, s10, a5
                  bge          gp, s11, 1403f
1392:             srli         s6, s9, 23
                  andi         s6, a0, 205
                  nop
                  beq          gp, t0, 1405f
                  sub          s4, ra, a7
1397:             bgeu         t5, zero, 1415f
                  andi         a4, s9, 1701
                  sll          gp, s6, s11
                  blt          t0, s9, 1413f
                  nop
                  slti         zero, s7, 1309
1403:             xori         a2, s5, -1251
                  or           a4, a4, a3
1405:             sra          a6, a7, a6
                  srli         s4, t0, 23
                  srl          s7, a5, t0
                  nop
                  srl          a5, a4, gp
                  xori         tp, t4, -909
                  xor          gp, a1, s9
                  sltu         a1, a2, s11
1413:             bltu         tp, s0, 1415f
                  lui          zero, 593018
1415:             and          s6, s7, a1
                  ori          t0, s3, 865
                  srai         s5, t6, 21
                  ori          t2, s6, -241
                  xor          s11, t2, sp
                  sltu         s5, t2, a0
                  slt          s6, a0, t2
                  slt          s2, t1, s5
                  slt          s5, tp, a0
                  srl          a3, t5, s8
                  lui          s4, 353716
                  sll          a3, a1, gp
                  sltiu        t4, t0, -769
                  bgeu         t1, tp, 1448f
                  lui          s9, 1005066
                  bge          a3, s8, 1433f
                  xor          gp, t0, zero
                  lui          t6, 864255
1433:             or           s5, a7, a2
                  bltu         s10, s2, 1454f
                  sltiu        t2, gp, -207
                  beq          s0, t6, 1451f
                  bne          s0, s2, 1440f
                  srl          a2, t0, s7
                  or           t3, s11, t1
1440:             blt          s10, gp, 1458f
                  and          s0, s6, a1
                  bltu         a7, tp, 1444f
                  sra          a0, a6, t2
1444:             sltu         s10, sp, a2
                  slti         a5, a0, 1705
                  sra          a7, s8, a2
                  slti         a5, a3, 281
1448:             or           s4, s5, s0
                  slli         s9, s8, 28
                  sub          tp, s11, a6
1451:             slli         s9, t2, 12
                  auipc        a7, 633046
                  srli         s7, a7, 16
1454:             add          s6, s7, s11
                  xor          s0, s1, s3
                  or           gp, s1, t3
                  sll          s2, t2, tp
1458:             bltu         s6, a1, 1460f
                  xori         s5, a4, -1195
1460:             nop
                  sub          a0, s6, a1
                  slt          s7, a5, s9
                  nop
                  sra          s1, t6, s11
                  addi         t3, a3, 319
                  sub          s4, s0, a1
                  sub          s0, gp, t6
sub_4_j10:        jal          s11, sub_7 #jump sub_4 -> sub_7
                  srli         a0, t3, 7
                  and          a4, sp, s5
                  slli         tp, a2, 1
                  or           gp, s2, a7
                  ori          s3, s7, 733
                  add          t2, a3, s8
                  xor          a7, t4, t5
                  slti         a6, a4, 199
                  or           s7, a2, s1
                  ori          gp, s4, -438
                  slt          s4, gp, a0
                  bgeu         s6, tp, 1488f
                  slli         s7, t6, 18
                  xor          a0, s11, s11
                  sra          a7, a4, sp
                  bne          zero, tp, 1489f
                  xori         a2, s6, 853
                  and          t3, t3, s1
                  and          s0, s9, s4
                  blt          a7, t1, 1483f
                  xor          s9, a7, a3
1483:             bgeu         s8, s6, 1488f
                  add          s2, sp, a6
                  blt          a3, s6, 1486f
1486:             auipc        t1, 626803
                  srl          s11, s0, tp
1488:             sltu         a2, s7, t6
1489:             xor          t4, t5, s11
                  andi         s5, zero, -1924
                  bltu         a4, s5, 1493f
                  srl          s2, s5, a7
1493:             slt          t1, t6, zero
                  xor          a7, t4, a0
                  srli         a6, a5, 1
                  bgeu         a1, t0, 1512f
                  bge          s0, s5, 1503f
                  auipc        a1, 566219
                  sra          t0, s3, a4
                  nop
                  and          a1, t1, a7
                  nop
1503:             ori          t1, s6, -765
                  nop
                  blt          s5, t4, 1520f
                  addi         tp, s8, 809
                  srli         a5, ra, 18
                  bne          a1, s4, 1511f
                  bgeu         s11, s7, 1514f
                  srai         t2, s11, 0
1511:             sub          s11, a5, gp
1512:             bgeu         s8, gp, 1514f
                  bge          gp, t2, 1518f
1514:             andi         s6, ra, -517
                  xori         t3, a7, 1555
                  or           s7, t4, a6
                  xor          s7, t5, s1
1518:             or           a2, s9, s7
                  or           t2, s0, tp
1520:             or           t1, t0, a0
                  slli         t1, s10, 29
                  sltu         s6, s7, a0
                  bne          t5, s8, 1524f
1524:             bgeu         s1, zero, 1529f
                  sltu         s5, s6, tp
                  lui          t6, 777687
                  bgeu         a6, s2, 1539f
                  addi         t3, s3, 768
1529:             sltu         s3, a2, s7
                  addi         a0, s9, 174
                  sll          a3, a4, t1
                  xor          s9, a3, t2
                  lui          t1, 758475
                  or           a4, t1, s11
                  lui          a1, 1031191
                  xori         tp, s1, -1891
                  sra          a4, s9, gp
                  bge          t3, s8, 1558f
1539:             sra          t2, tp, t4
                  or           s0, a0, tp
                  auipc        a0, 250141
                  sltu         a3, a4, a3
                  sub          a0, a6, s1
                  nop
                  slt          a4, s0, s6
                  andi         zero, s7, 864
                  bge          t4, a3, 1565f
                  xor          gp, s0, a5
                  slli         t6, t0, 7
                  xori         a2, a5, -146
                  xori         a3, t2, -1136
                  slli         gp, a6, 1
                  xori         a2, s0, 1126
                  sltiu        a7, a0, 1319
                  addi         s0, a3, -1608
                  andi         t0, s3, -1557
                  slli         t2, tp, 25
1558:             andi         s5, a6, -589
                  sltiu        a0, gp, 1301
                  xor          s2, sp, s10
                  beq          t0, t6, 1574f
                  nop
                  slt          a2, s8, t3
                  sltu         zero, s9, s6
1565:             sub          s0, zero, s7
                  sltiu        s5, s1, 1051
                  beq          ra, s1, 1569f
                  bgeu         a3, t3, 1578f
1569:             lui          t2, 83533
                  ori          a2, ra, -300
                  xor          t1, gp, t4
                  blt          s1, s1, 1588f
                  nop
1574:             andi         t0, a1, -304
                  srai         s4, s7, 28
                  sll          s11, ra, a3
                  add          a3, tp, a2
1578:             slti         a3, a7, 471
                  auipc        s6, 348359
                  slti         s1, a4, 754
                  and          s1, s10, t4
                  ori          a4, t5, -1341
                  auipc        s6, 161704
                  slt          a6, s7, s7
                  xori         a3, a2, 1914
                  or           s9, a1, t1
                  or           a1, s8, gp
1588:             xori         t6, gp, -739
                  sll          a1, s0, t1
                  bgeu         s11, a7, 1602f
                  addi         a6, s0, -518
                  ori          zero, a4, 1450
                  addi         t4, a3, -1490
                  beq          a4, s7, 1606f
                  xor          gp, s8, s10
                  and          t2, t5, sp
                  sll          t1, t1, t0
                  srai         a5, t2, 17
                  slti         t1, ra, -920
                  srai         t6, t0, 7
                  slli         a0, a4, 5
1602:             xor          s1, t6, s3
                  slli         s0, gp, 30
                  bgeu         a4, t6, 1613f
                  lui          a4, 420225
1606:             beq          t5, a1, 1621f
                  lui          a6, 45447
                  bltu         t1, s9, 1610f
                  srli         t4, s10, 6
1610:             nop
                  bne          s6, t1, 1622f
                  ori          t3, s9, -1450
1613:             slti         a2, s3, 1498
                  sltu         a6, t6, a4
                  sub          a4, a0, t6
                  beq          a4, a1, 1618f
                  sltu         a0, ra, a3
1618:             sra          a1, s10, ra
                  xor          a3, t3, s11
                  andi         s1, s0, 1461
1621:             srl          a1, t5, t2
1622:             beq          s2, s4, 1635f
                  and          s4, a7, s7
                  sub          t0, a3, a0
                  bltu         s11, s9, 1640f
                  srl          a2, a3, t3
                  sra          a4, s3, t4
                  srli         s9, a1, 17
                  auipc        gp, 672123
                  bgeu         t5, s8, 1650f
                  add          t0, t3, s2
                  srai         s11, t1, 14
                  bge          s1, gp, 1635f
                  lui          s5, 394391
1635:             sltiu        t4, s6, 216
                  sra          zero, t0, t4
                  srl          s0, s8, s5
                  sra          tp, a7, s6
                  xor          s10, s4, t2
1640:             sub          s0, s4, a7
                  slt          a6, zero, s8
                  bne          a0, a2, 1660f
                  nop
                  andi         s11, a4, -1847
                  sra          t0, s8, s11
                  slt          s0, a7, t6
                  blt          s3, t5, 1666f
                  xor          t4, a6, zero
                  xori         s2, s7, 1093
1650:             sll          a1, t2, a4
                  slt          t1, t3, s2
                  sltiu        s6, s8, 1169
                  ori          s6, s6, 932
                  srai         gp, a0, 14
                  bltu         zero, a3, 1658f
                  bgeu         a4, a4, 1658f
                  andi         gp, a3, 1659
1658:             and          s11, a6, t0
                  sltiu        s2, t1, 1844
1660:             sltu         t3, a6, t2
                  sltu         a4, ra, a7
                  or           a3, s5, s5
                  and          a1, a1, zero
                  xor          s2, s7, zero
                  bltu         s1, t4, 1667f
1666:             sub          s1, tp, s3
1667:             add          gp, a0, a6
                  bne          t6, a6, 1683f
                  and          s1, gp, s9
                  slli         t2, t5, 6
                  bgeu         s2, t1, 1684f
                  bltu         gp, a0, 1674f
                  addi         a6, s7, 1540
1674:             auipc        t1, 190844
                  slt          s4, gp, a1
                  bgeu         t6, a3, 1681f
                  sub          zero, s1, gp
                  sltu         a4, t1, t6
                  or           s4, t0, s10
                  auipc        t6, 1044162
1681:             addi         a6, gp, -239
                  srai         gp, tp, 6
1683:             add          gp, s3, a5
1684:             xor          ra, s11, s6
                  nop
                  nop
                  auipc        s9, 320221
                  bne          t0, ra, 1691f
                  lui          a4, 1031425
                  or           s7, s5, a1
1691:             xori         zero, t2, -770
                  nop
                  sra          a2, t5, s1
                  xor          t0, a3, t2
                  beq          s11, zero, 1698f
                  xor          s1, t2, zero
                  beq          t3, a1, 1699f
1698:             ori          a6, gp, 292
1699:             srai         s5, t3, 21
                  sltiu        t1, t3, -853
                  bltu         t4, gp, 1720f
                  sub          a3, t2, a4
                  andi         s1, tp, 1486
                  xor          a5, t0, t5
                  ori          s9, t3, -1510
                  bge          a0, t5, 1718f
                  bge          s0, a4, 1709f
                  beq          t1, s7, 1718f
1709:             bge          s5, t6, 1715f
                  blt          t6, sp, 1723f
                  slti         a6, t5, -48
                  auipc        s0, 979804
                  andi         a5, t0, -1786
                  slli         s0, t3, 25
1715:             srli         a2, t6, 19
                  srl          t6, t5, t1
                  srl          t3, s8, a6
1718:             bne          t0, s7, 1733f
                  sll          t6, a5, a4
1720:             slli         s1, a7, 13
                  bne          a6, s4, 1739f
                  xor          s1, s3, t6
1723:             ori          t1, s11, 1692
                  bltu         s11, zero, 1736f
                  auipc        t2, 353461
                  srl          t2, t4, s0
                  add          a2, t4, t4
                  slli         s1, t1, 13
                  slli         t2, t3, 11
                  srl          s2, a6, t5
                  sub          t0, a1, s5
                  bgeu         a5, s6, 1741f
1733:             bne          s7, a2, 1751f
                  bge          ra, s2, 1745f
                  bltu         s9, a7, 1740f
1736:             sub          t2, t5, s9
                  sltiu        t0, s8, 1127
                  sra          a6, gp, a0
1739:             xori         t2, s0, 260
1740:             xor          tp, a2, s0
1741:             srai         s7, s0, 7
                  xori         s0, s1, 1368
                  xor          s1, a4, a1
                  sltu         s0, s1, gp
1745:             nop
                  srli         gp, a2, 15
                  nop
                  auipc        gp, 233806
                  blt          s1, s6, 1761f
                  slt          s6, t0, s0
1751:             beq          s2, s7, 1753f
                  blt          a5, a0, 1772f
1753:             bge          t1, a4, 1773f
                  srai         a1, t5, 29
                  addi         tp, s7, -277
                  blt          a0, t4, 1757f
1757:             sub          t2, sp, a1
                  sltiu        s11, s1, 236
                  bge          a4, s5, 1774f
                  bltu         t4, s0, 1776f
1761:             sltu         ra, s8, ra
                  add          s5, t3, s7
                  xori         a4, s11, -1557
                  or           s11, a3, s5
                  slt          s7, ra, a3
                  sltu         a0, a3, gp
                  andi         a5, a4, -1814
                  slti         s3, s10, -1686
                  slli         s11, t0, 27
                  sra          t0, a6, a0
                  ori          s9, gp, -1124
1772:             sra          t6, s8, t1
1773:             sra          a3, t0, a6
1774:             bltu         s9, gp, 1779f
                  andi         s9, s8, 1597
1776:             sltu         gp, s7, s0
                  srai         a1, a7, 1
                  bge          s11, s5, 1780f
1779:             beq          s3, a1, 1781f
1780:             slli         t1, a3, 12
1781:             bltu         t3, s4, 1799f
                  or           t0, s11, a7
                  sltu         a6, t1, t0
                  slt          gp, t1, zero
                  slli         a6, a4, 26
                  sltiu        a3, t4, -455
                  slti         s10, a6, 1195
                  bge          gp, s8, 1790f
                  add          t2, zero, tp
1790:             add          a4, zero, t4
                  ori          s5, zero, -1569
                  sub          a1, a0, s8
                  srl          tp, t6, s2
                  add          a4, t2, t6
                  ori          t6, zero, -847
                  auipc        s7, 718005
                  blt          a6, ra, 1817f
                  bne          s7, s1, 1809f
1799:             sll          tp, zero, a7
                  blt          zero, s0, 1806f
                  sltu         s2, sp, a6
                  xori         s10, t3, 571
                  or           a5, a0, a3
                  bltu         zero, t6, 1824f
                  and          a7, zero, zero
1806:             sra          s11, a1, t0
                  nop
                  sltiu        gp, s6, 486
1809:             ori          s11, a7, 753
                  bne          s7, a4, 1811f
1811:             sltu         zero, ra, tp
                  bne          s11, s7, 1827f
                  nop
                  bge          a1, s8, 1826f
                  sll          tp, s0, gp
                  and          a0, a3, s2
1817:             or           a2, s9, t3
                  slt          a4, t2, s4
                  xor          a2, gp, t6
                  slt          s3, t3, s8
                  beq          t6, sp, 1823f
                  blt          s10, s0, 1835f
1823:             slli         a0, a7, 8
1824:             beq          s10, s9, 1826f
                  bne          s11, zero, 1830f
1826:             sra          a7, ra, t4
1827:             bgeu         a5, t1, 1837f
                  slt          s4, s8, a4
                  addi         a3, a3, -1933
1830:             add          t1, t5, s3
                  srai         t6, t2, 2
                  bgeu         sp, t1, 1837f
                  sltiu        t3, s0, -122
                  beq          s4, s1, 1850f
1835:             and          a5, a5, a4
                  srli         a6, gp, 28
1837:             and          s10, s0, s5
                  srai         ra, a2, 3
                  srli         ra, s11, 1
                  sra          tp, s4, a7
                  blt          a3, s0, 1856f
                  sltiu        s10, ra, 966
                  blt          a5, t3, 1845f
                  sltu         t0, s4, s5
1845:             and          s11, tp, a4
                  srai         a0, ra, 6
                  bltu         a3, t2, 1865f
                  srli         s0, t4, 28
                  slt          tp, tp, s8
1850:             blt          a0, t1, 1853f
                  sll          gp, t2, t6
                  bgeu         zero, s7, 1865f
1853:             and          s11, s4, t3
                  or           s2, s2, a0
                  srli         ra, a4, 24
1856:             lui          t4, 1000214
                  nop
                  ori          s9, a1, 305
                  slli         s6, a3, 3
                  sltiu        zero, ra, -848
                  sltiu        a5, t2, -479
                  xor          s6, a6, s7
                  bne          a7, t1, 1865f
                  sub          t3, t2, a1
1865:             slli         s9, t3, 18
                  slli         s7, s10, 27
                  slli         ra, s11, 24
                  slli         a0, a1, 17
                  andi         s2, s4, -1947
                  lui          t4, 743798
                  sra          s3, ra, t0
                  blt          s8, s10, 1877f
                  blt          s3, t5, 1888f
                  bge          t0, s11, 1893f
                  add          s1, a0, a3
                  slli         t0, s3, 25
1877:             srl          a6, s6, s4
                  xor          a1, s9, zero
                  auipc        a2, 698804
                  sub          a4, s10, a0
                  srai         a1, s11, 25
                  and          tp, zero, t4
                  sltiu        a3, s10, -1529
                  auipc        a7, 628760
                  auipc        t6, 889983
                  srai         t2, sp, 7
                  sltiu        a3, a6, -1026
1888:             bge          a4, s3, 1900f
                  blt          a5, a5, 1898f
                  srl          t3, a3, s2
                  add          s6, a7, a7
                  xori         a7, s8, 1225
1893:             bltu         a0, gp, 1905f
                  blt          a4, a6, 1897f
                  sltiu        a0, s2, -91
                  slt          a0, zero, zero
1897:             bltu         t1, a3, 1915f
1898:             xor          s9, a1, a2
                  bgeu         t1, s9, 1902f
1900:             srli         s6, sp, 31
                  or           s2, t1, zero
1902:             auipc        zero, 637019
                  blt          a1, s1, 1916f
                  bgeu         t3, s6, 1910f
1905:             sltiu        a5, t2, -287
                  srai         s3, gp, 28
                  srai         s2, s10, 5
                  sltiu        ra, ra, 423
                  bne          t4, zero, 1924f
1910:             srai         s7, a7, 14
                  addi         a0, t3, -776
                  sra          t0, gp, a4
                  or           a3, tp, t1
                  bgeu         a1, s1, 1916f
1915:             andi         s10, t4, -1090
1916:             bge          s1, s1, 1935f
                  beq          s5, a0, 1933f
                  and          a4, t3, s4
                  beq          t5, a1, 1924f
                  slt          ra, s4, s8
                  bltu         a3, s0, 1930f
                  blt          a0, s10, 1923f
1923:             srli         t0, s2, 8
1924:             bge          t4, sp, 1935f
                  lui          s10, 978753
                  beq          s8, s4, 1944f
                  sltiu        s6, s1, -80
                  bne          t3, s6, 1940f
                  sll          a4, s8, s10
1930:             slli         a7, t3, 27
                  or           t1, ra, t5
                  sltiu        tp, a3, 1528
1933:             srl          s4, s4, a1
                  lui          t1, 888808
1935:             sub          s0, a2, t5
                  sll          gp, s0, t5
                  or           t2, t4, a7
                  add          s9, ra, t5
                  srl          ra, a7, a3
1940:             add          gp, s8, s11
                  srl          tp, s7, a4
                  slti         s9, sp, 97
                  slti         t6, s4, -1965
1944:             addi         a2, s11, 1259
                  add          s3, zero, t1
                  nop
                  bne          tp, t4, 1962f
                  sra          s10, sp, t6
                  or           s7, s11, a6
                  slli         zero, s10, 2
                  slti         a1, s8, 1379
                  srli         t2, a1, 13
                  bne          a0, s2, 1973f
                  srli         t1, s0, 14
                  sltiu        s5, a6, -1271
                  bge          t6, s8, 1976f
                  xor          s9, gp, a2
                  srai         s6, s9, 27
                  bltu         gp, t1, 1961f
                  bne          s10, t5, 1972f
1961:             beq          ra, a3, 1963f
1962:             sltiu        t6, a3, -1662
1963:             srai         a0, s3, 15
                  bltu         a5, a5, 1979f
                  ori          t3, s4, 1067
                  sll          ra, t5, a7
                  slti         t1, sp, 1512
                  nop
                  add          t0, zero, t3
                  srai         s3, sp, 15
                  sll          gp, s7, s8
1972:             sltu         t4, s0, t4
1973:             auipc        a0, 188706
                  srl          s6, t6, a7
                  srli         s0, t0, 25
1976:             addi         a5, a4, -1820
                  srai         s5, a5, 27
                  srl          t6, t4, t6
1979:             or           s5, t6, t0
                  bne          a4, tp, 1985f
                  andi         s9, t6, 254
                  sll          zero, zero, a2
                  sll          zero, gp, a0
                  srai         a1, s5, 8
1985:             srl          s3, gp, a1
                  bge          a0, a0, 1999f
                  ori          gp, a1, 528
                  bgeu         a1, t5, 1998f
                  or           a2, s7, t6
                  slli         tp, s0, 8
                  or           a2, s11, t5
                  srli         t3, t4, 31
                  xor          a1, s1, a1
                  bne          t4, gp, 1996f
                  blt          t5, a4, 1997f
1996:             beq          s1, a3, 1999f
1997:             sll          t2, a2, zero
1998:             lui          s3, 468006
1999:             andi         a5, a3, -786
                  srai         t3, s6, 12
                  bltu         s9, ra, 2006f
                  beq          s7, s7, 2014f
                  srl          s10, t4, t1
                  bgeu         s1, a5, 2006f
                  bgeu         zero, t4, 2010f
2006:             slti         s10, a0, -1559
                  bne          s10, t5, 2026f
                  addi         t3, s11, -547
                  bne          s6, t5, 2011f
2010:             andi         s11, s9, 867
2011:             beq          gp, s11, 2013f
                  bgeu         a2, a3, 2025f
2013:             slli         a4, s5, 1
2014:             slli         s11, s3, 15
                  xor          s9, s6, tp
                  sra          t6, s1, s4
                  sltu         a2, s6, a1
                  srai         gp, gp, 2
                  beq          a6, a0, 2037f
                  sll          a5, ra, s3
                  bgeu         a6, t1, 2033f
                  srl          s10, a6, a4
                  slti         s1, s3, 159
                  auipc        a7, 943338
2025:             slli         s1, t2, 9
2026:             lui          gp, 107921
                  and          a3, t6, a4
                  and          s5, t4, s8
                  addi         t6, s11, 514
                  sltu         t2, s3, tp
                  sub          t6, t0, s7
                  srl          tp, sp, s1
2033:             xori         t1, t4, -774
                  xor          t3, a2, t2
                  bgeu         s9, s3, 2038f
                  andi         s11, gp, -1183
2037:             bne          s7, s11, 2039f
2038:             and          t6, a3, a5
2039:             srl          gp, t1, s1
                  bge          a3, t2, 2045f
                  sub          a6, s6, a3
                  sra          s7, t4, a1
                  sub          a1, s9, s3
                  andi         t4, t5, 1254
2045:             sub          zero, t1, s4
                  beq          s3, s3, 2066f
                  slt          tp, ra, s10
                  bne          gp, t5, 2063f
                  addi         s4, s8, 256
                  andi         a3, s10, -1143
                  sltu         ra, s8, t4
                  andi         s5, sp, -770
                  bgeu         s10, s5, 2064f
                  srl          t2, s9, t3
                  sra          s4, s10, s2
                  sltiu        a5, s3, -1407
                  beq          t2, t6, 2077f
                  and          s11, s6, t4
                  srli         t0, a3, 8
                  bltu         a6, a7, 2062f
                  sltiu        a1, s2, -1590
2062:             sra          t6, t5, a1
2063:             xor          zero, gp, s6
2064:             sltiu        t3, s7, 116
                  sltu         s5, s8, s11
2066:             nop
                  sub          zero, tp, s1
                  andi         t2, s4, 19
                  slt          t1, t4, t5
                  xori         s3, t5, -1064
                  auipc        s7, 277266
                  beq          zero, tp, 2074f
                  bge          ra, s0, 2089f
2074:             or           s4, s0, s8
                  lui          t2, 609314
                  slli         s2, s4, 29
2077:             bltu         s3, s10, 2079f
                  ori          zero, a3, -31
2079:             bgeu         a1, s1, 2085f
                  slt          t3, t4, a6
                  sra          gp, t4, a5
                  nop
                  sra          s2, s10, t4
                  slti         s6, s3, 455
2085:             srl          a3, s9, a6
                  ori          s4, a2, 788
                  andi         s5, t3, -110
                  beq          a1, ra, 2098f
2089:             andi         zero, t4, 678
                  xori         a0, gp, 691
                  sltiu        s3, t5, -407
                  sll          s6, s6, tp
                  srl          t3, a0, t4
                  sll          s1, a3, s8
                  slti         a4, a6, 916
                  sll          a1, s0, t1
                  xor          tp, t6, s8
2098:             lui          t2, 255042
                  auipc        a5, 328620
                  srai         t2, t6, 5
                  sra          t6, t5, t3
                  srli         s9, a3, 1
                  or           t6, s8, s2
                  bgeu         a0, s7, 2116f
                  slti         s4, t4, 827
                  xori         gp, s3, 1405
                  bne          t2, s6, 2120f
                  sltiu        t2, gp, -95
                  bge          s6, a3, 2121f
                  srli         t3, sp, 17
                  bge          a6, s1, 2126f
                  auipc        a0, 887062
                  lui          a3, 16702
                  xori         s6, t1, 1290
                  bgeu         s7, s1, 2124f
2116:             add          t6, s11, a7
                  beq          s1, s6, 2135f
                  sltu         s6, t6, s6
                  bne          s7, a1, 2120f
2120:             slli         t6, a3, 28
2121:             srli         s6, a1, 30
                  beq          s6, t3, 2127f
                  nop
2124:             bne          t4, s0, 2127f
                  sll          s6, s0, s6
2126:             andi         a2, gp, -1715
2127:             sub          ra, s7, gp
                  slti         a0, s7, 190
                  sll          s11, t5, s11
                  lui          t2, 613326
                  bge          t3, s8, 2146f
                  bge          s5, t5, 2148f
                  slli         a4, t6, 30
                  slti         a0, s7, -349
2135:             bne          ra, t4, 2137f
                  add          s2, a2, t2
2137:             xori         t3, a4, 0
                  or           t2, a5, a7
                  srl          a7, a0, sp
                  bge          t2, s11, 2142f
                  sub          s5, s11, s8
2142:             sll          t0, tp, s8
                  sltiu        t6, s1, 123
                  xor          s6, gp, a6
                  sltiu        gp, t3, -42
2146:             bgeu         s11, s2, 2148f
                  bge          t1, a2, 2160f
2148:             slli         s9, s2, 1
                  sub          s2, t6, a6
                  addi         s6, sp, -257
                  sra          zero, s7, gp
                  nop
                  or           s5, a6, a5
                  bltu         a2, a4, 2159f
                  nop
                  srl          s7, a4, a7
                  addi         ra, t0, -260
                  slt          t6, a0, s3
2159:             or           s2, s6, s8
2160:             slti         s4, t1, -582
                  sra          s3, a0, a3
                  srli         a4, a4, 13
                  beq          a3, s3, 2165f
                  slli         t3, t2, 13
2165:             nop
                  sll          s0, t5, a5
                  srli         s2, s8, 25
                  sra          t0, tp, s0
                  xor          a1, s9, t6
                  slti         t0, a3, 1528
                  andi         t6, s2, 1414
                  sll          s10, s3, t2
                  or           a5, t4, t5
                  auipc        a2, 278214
                  srli         a5, a0, 4
                  bltu         s6, s7, 2177f
2177:             srli         s7, s9, 16
                  ori          s5, s1, 1762
                  ori          s5, t1, -1952
                  or           s11, a4, s2
                  blt          s1, t6, 2186f
                  bltu         a5, t3, 2200f
                  addi         gp, t2, -695
                  ori          a6, t5, -1835
                  sltu         tp, t1, t0
2186:             bge          a6, s11, 2206f
                  slti         t1, t3, 2043
                  slli         t6, a3, 9
                  andi         a2, t0, -81
                  xori         s5, a7, -1189
                  blt          s7, t4, 2201f
                  ori          s9, ra, 190
                  auipc        a5, 640113
                  sltiu        s11, t0, 233
                  ori          s7, s0, -1599
                  sltu         s7, t5, t0
                  beq          a7, s7, 2209f
                  srl          s1, t0, a7
                  auipc        a4, 127927
2200:             or           t3, a2, a2
2201:             xor          t1, gp, s0
                  bgeu         gp, s4, 2204f
                  bgeu         t0, a6, 2215f
2204:             addi         zero, s11, 1661
                  sra          a3, a1, s8
2206:             slti         t6, a0, -1916
                  auipc        t3, 236368
                  bge          tp, t1, 2223f
2209:             auipc        s11, 827301
                  and          ra, t6, a1
                  and          t2, s4, t6
                  sll          s0, s3, t4
                  andi         s6, a3, -63
                  sltu         s7, s2, t6
2215:             bltu         t1, tp, 2234f
                  andi         s2, a0, -1091
                  slli         s10, a7, 5
                  blt          s0, a2, 2238f
                  sub          a2, s6, t6
                  bne          t1, a1, 2225f
                  bge          s7, s8, 2223f
                  xori         s10, s2, 1637
2223:             bgeu         a6, s4, 2238f
                  sra          t4, sp, a4
2225:             slt          a7, s8, a5
                  srai         a7, s1, 26
                  sra          a0, t5, s1
                  addi         t4, s6, 992
                  add          ra, s7, t6
                  sll          s6, s4, s2
                  auipc        zero, 221200
                  sltiu        zero, s1, 192
                  sll          s10, t0, a7
2234:             bne          a5, a2, 2245f
                  xor          tp, s10, s11
                  srl          a5, a7, ra
                  auipc        s10, 573979
2238:             sra          s4, s7, t6
                  andi         a0, s4, 1028
                  addi         a6, tp, 1773
                  slli         a7, zero, 9
                  bge          a6, a7, 2245f
                  srai         s2, s1, 7
                  sra          t6, t5, t4
2245:             bltu         s9, a6, 2254f
                  bne          s7, t1, 2252f
                  beq          t2, a4, 2259f
                  sltu         a2, s4, ra
                  addi         a3, t1, -513
                  andi         gp, s10, 117
                  addi         a3, t6, 1144
2252:             sra          s6, zero, s7
                  sll          a5, a5, a3
2254:             andi         a4, s7, 349
                  auipc        a2, 65116
                  blt          gp, s7, 2269f
                  slt          a7, t0, t5
                  slli         a5, t1, 9
2259:             bltu         tp, a2, 2262f
                  sra          s3, s1, s10
                  bne          sp, s10, 2279f
2262:             xori         t4, t6, 35
                  ori          s7, gp, 770
                  nop
                  sll          s1, a3, s4
                  and          zero, tp, tp
                  lui          t4, 552856
                  addi         s7, t6, 287
2269:             sra          s4, gp, s4
                  blt          a0, s10, 2285f
                  slt          a7, t6, s5
                  nop
                  auipc        tp, 257984
                  bgeu         gp, a1, 2292f
                  sub          ra, s4, s7
                  blt          s11, gp, 2282f
                  addi         t1, a2, -1824
                  and          gp, gp, t2
2279:             blt          gp, t6, 2294f
                  or           t3, s10, a2
                  auipc        s10, 373092
2282:             auipc        s1, 55088
                  bge          gp, s2, 2303f
                  auipc        t3, 166844
2285:             add          gp, ra, tp
                  xor          a4, t1, a5
                  and          a0, s10, t5
                  sub          t6, s2, s5
                  bge          s3, s3, 2301f
                  addi         s9, a1, -631
                  sltu         a2, a3, s4
2292:             and          a1, s11, t1
                  addi         s1, a3, 1216
2294:             srai         s5, a5, 4
                  blt          s1, s5, 2297f
                  bge          s3, t1, 2311f
2297:             ori          t3, t0, -1095
                  beq          s9, a2, 2313f
                  srai         a0, gp, 4
                  beq          a2, t5, 2311f
2301:             bgeu         a6, a4, 2321f
                  andi         gp, a4, 1068
2303:             or           t2, t6, s6
                  blt          s10, s7, 2306f
                  sll          s2, s11, t3
2306:             andi         zero, a1, 1550
                  beq          s4, t0, 2309f
                  srl          s1, t2, s7
2309:             addi         s6, t0, 309
                  ori          t3, a5, -681
2311:             srl          a3, sp, a1
                  sub          t6, s3, s1
2313:             bne          s7, a5, 2326f
                  lui          ra, 703736
                  slt          a1, gp, t1
                  sra          s11, a0, t0
                  or           a6, t5, s6
                  sub          s6, zero, ra
                  bltu         s8, s11, 2322f
                  sub          s10, s0, s1
2321:             blt          a3, a1, 2324f
2322:             sll          s6, s9, a5
                  beq          t6, s7, 2324f
2324:             auipc        s5, 166846
                  bgeu         gp, ra, 2330f
2326:             srai         s0, ra, 12
                  bgeu         a2, a0, 2332f
                  srl          tp, t4, t6
                  sra          a5, t4, t5
2330:             bge          gp, zero, 2339f
                  slti         t1, s8, -888
2332:             slli         s5, s4, 23
                  and          t2, a7, a7
                  nop
                  bgeu         s4, t3, 2347f
                  ori          t0, t3, 693
                  bgeu         s8, t5, 2350f
                  xor          a2, t5, ra
2339:             bgeu         a1, gp, 2357f
                  add          t3, a7, t4
                  slt          t2, a0, s3
                  lui          s11, 498215
                  addi         tp, a6, 1570
                  slti         s0, zero, -499
                  xor          a0, s8, zero
                  bgeu         t5, s2, 2365f
2347:             xori         s4, s10, 1192
                  slt          s0, s9, t0
                  srai         s10, t6, 27
2350:             sub          t1, s1, s3
                  add          t6, ra, sp
                  sub          t3, s4, s9
                  xor          s6, t1, s11
                  sltiu        a1, s2, -1853
                  sra          t3, a0, a1
                  sub          t4, a3, s0
2357:             beq          zero, s10, 2359f
                  add          s9, t4, s7
2359:             slti         t6, t3, -942
                  bge          s11, t2, 2376f
                  srl          s10, a0, a4
                  sra          t1, s7, s0
                  blt          t2, s0, 2365f
                  xor          s4, s8, t6
2365:             slli         a1, a1, 26
                  bgeu         s0, t5, 2371f
                  sub          s6, zero, tp
                  bgeu         s9, s5, 2380f
                  sltiu        s6, t3, -320
                  xori         s6, s1, -401
2371:             add          a1, gp, t3
                  lui          s7, 568042
                  bgeu         tp, t0, 2375f
                  bgeu         gp, a0, 2384f
2375:             blt          gp, a2, 2380f
2376:             lui          t2, 682443
                  add          gp, sp, t4
                  sra          t4, a4, s3
                  sub          a7, s2, s0
2380:             beq          s9, s7, 2396f
                  and          ra, a7, a4
                  add          s11, t4, a1
                  or           s2, a3, s3
2384:             andi         tp, ra, 990
                  slt          s11, ra, a5
                  and          t0, s10, a1
                  addi         s9, sp, 817
                  sltiu        t4, a2, -1116
                  sub          s10, sp, a0
                  xor          s1, s8, s10
                  auipc        tp, 738068
                  bne          gp, a2, 2411f
                  add          t2, t4, s5
                  bltu         t5, t3, 2409f
                  sltiu        a4, t2, -1786
2396:             or           s7, s11, a2
                  sltiu        s1, gp, 1680
                  xori         gp, s6, -186
                  or           t2, s1, s9
                  or           a5, a6, a5
                  slli         t3, t5, 22
                  bne          a4, s8, 2411f
                  slt          t2, t5, t5
                  bge          s5, s3, 2406f
                  beq          ra, a0, 2407f
2406:             bge          s6, a5, 2418f
2407:             sltiu        t6, zero, 1053
                  add          ra, t3, a3
2409:             xori         t4, t1, 1902
                  slt          s4, a5, gp
2411:             ori          tp, a3, -1198
                  xor          a0, t3, t6
                  add          s9, s4, s0
                  sltiu        tp, t1, 1563
                  sll          t3, s5, a5
                  beq          a5, s3, 2429f
                  srli         s5, a3, 13
2418:             slli         s7, t3, 14
                  auipc        s1, 293502
                  bltu         s10, s9, 2425f
                  slli         s9, s5, 1
                  xor          a7, s2, gp
                  slti         s4, a1, 816
                  bge          s8, s10, 2426f
2425:             slli         a7, zero, 14
2426:             sub          a3, s6, s8
                  xor          a1, s8, s9
                  srli         a0, t3, 11
2429:             beq          t4, t4, 2444f
                  srli         t2, a2, 15
                  bltu         a0, sp, 2433f
                  and          a2, ra, t0
2433:             bne          s9, t3, 2439f
                  sra          a5, s0, t2
                  bgeu         s0, t1, 2455f
                  and          a0, tp, zero
                  nop
                  and          s0, sp, s5
2439:             blt          t6, a1, 2457f
                  bge          a0, s10, 2441f
2441:             or           s0, s3, a5
                  bge          a2, gp, 2454f
                  andi         t4, s3, 1904
2444:             add          s10, sp, t3
                  add          s4, a1, a5
                  bltu         a3, t2, 2458f
                  nop
                  slti         t2, s7, 991
                  sra          t0, zero, a1
                  bltu         s11, gp, 2453f
                  bltu         a2, a4, 2462f
                  beq          a5, s1, 2467f
2453:             sub          s10, s9, t5
2454:             sltiu        gp, t6, 1626
2455:             addi         a2, s0, 613
                  beq          a7, a2, 2458f
2457:             nop
2458:             nop
                  sll          ra, a4, s3
                  srli         t2, tp, 16
                  blt          t6, s2, 2479f
2462:             add          s6, sp, s11
                  bge          s7, t6, 2466f
                  bgeu         s10, t0, 2484f
                  bge          t0, t3, 2478f
2466:             add          s2, a1, ra
2467:             addi         s6, a0, 1155
                  sltu         a0, zero, t3
                  blt          s11, s8, 2479f
                  slt          a3, tp, t3
                  bltu         t4, s7, 2473f
                  addi         s4, t2, 271
2473:             lui          zero, 268911
                  bgeu         t3, a2, 2479f
                  ori          t3, s3, 1722
                  auipc        t1, 204834
                  slli         s7, t1, 15
2478:             and          a2, a0, s0
2479:             srli         s7, t4, 11
                  sltiu        t1, t0, 1150
                  bne          s2, a6, 2499f
                  slli         s3, sp, 4
                  bltu         a2, a1, 2495f
2484:             slli         s0, a7, 25
                  and          t4, a5, a6
                  and          t2, t4, s3
                  blt          a3, a2, 2507f
                  add          s0, s5, a3
                  lui          a3, 775434
                  bne          zero, t5, 2493f
                  sltu         s6, a5, s6
                  srl          tp, a7, t6
2493:             sll          tp, s0, s0
                  sra          s3, a2, s3
2495:             srl          s1, t4, a0
                  lui          t6, 958728
                  or           a1, a7, a6
                  sll          s7, ra, s9
2499:             blt          s2, t5, 2502f
                  xori         a6, a6, -1183
                  xori         a3, a1, -1947
2502:             auipc        t4, 730182
                  beq          s1, a5, 2509f
                  sltiu        s0, zero, -1554
                  lui          a3, 744011
                  bne          t2, s4, 2519f
2507:             auipc        a4, 719915
                  beq          s10, sp, 2517f
2509:             blt          gp, s9, 2511f
                  sll          s9, a0, a3
2511:             xor          s6, a5, tp
                  or           t6, s8, s0
                  srai         s0, a5, 30
                  bltu         t0, s11, 2516f
                  auipc        a1, 467751
2516:             auipc        t2, 824161
2517:             sltiu        s10, a6, -1877
                  sra          s3, t5, s4
2519:             sra          tp, ra, a3
                  slli         a4, t4, 4
                  addi         ra, s3, 423
                  and          a2, a4, t6
                  nop
                  xori         s10, t1, 296
                  bge          t4, a0, 2541f
                  bge          s10, a7, 2546f
                  bltu         ra, s5, 2546f
                  bltu         t6, a4, 2533f
                  sltiu        s0, zero, 771
                  bge          s2, ra, 2545f
                  sltu         s4, ra, s9
                  srai         a2, t4, 5
2533:             srli         ra, sp, 28
                  bltu         t0, gp, 2546f
                  srl          s5, a5, t6
                  bgeu         a2, t0, 2538f
                  sub          a7, s7, zero
2538:             srli         a5, t0, 10
                  and          a2, a7, s0
                  slti         s7, a1, 48
2541:             srli         s4, t4, 16
                  addi         t3, a4, 86
                  or           a2, t6, a7
                  bne          t6, t2, 2559f
2545:             bltu         t0, zero, 2547f
2546:             or           gp, a3, t3
2547:             sltu         t0, a3, a2
                  blt          a3, s7, 2566f
                  sra          t4, t0, t3
                  bltu         a3, t0, 2560f
                  bltu         a0, ra, 2563f
                  ori          s7, t1, 1389
                  bgeu         s2, tp, 2566f
                  srli         s3, s0, 27
                  srai         s10, s4, 0
                  sll          s10, a3, t5
                  auipc        tp, 305797
                  addi         a2, s2, -1075
2559:             sll          a0, ra, s1
2560:             srai         a3, sp, 13
                  auipc        t1, 265275
                  or           t6, t0, a1
2563:             lui          a1, 916965
                  slli         t6, t5, 7
                  srli         t3, t2, 9
2566:             andi         t1, s6, -1465
                  bltu         a0, s5, 2582f
                  or           a2, s10, t6
                  sra          a1, s1, a7
                  ori          t1, a3, 157
                  auipc        a6, 969434
                  slli         s4, s6, 12
                  ori          t2, a6, 1941
                  or           s10, t5, s6
                  slti         gp, s9, -441
                  bgeu         gp, t0, 2578f
                  and          t4, t2, s6
2578:             bgeu         tp, a5, 2580f
                  bgeu         s5, s11, 2584f
2580:             sra          s9, a2, a5
                  and          gp, a0, s4
2582:             srl          s6, t0, s7
                  bgeu         s4, ra, 2584f
2584:             nop
                  sltu         s2, s6, a3
                  slli         a6, t2, 2
                  slt          s2, t6, s9
                  srl          a2, a6, t5
                  auipc        a7, 1015929
                  bge          a5, s3, 2595f
                  xori         t4, a6, -1707
                  add          t2, t3, s7
                  xori         a3, sp, 1556
                  or           a4, s7, zero
2595:             addi         s10, s9, -2003
                  bne          a2, s1, 2607f
                  srl          t1, t0, s7
                  srli         a2, a4, 11
                  sltiu        s9, s5, -385
                  ori          a3, a1, -721
                  add          s7, s6, s7
                  sltu         t1, s3, a5
                  and          tp, ra, tp
                  add          ra, a5, s8
                  auipc        s9, 75676
                  bltu         a2, s9, 2618f
2607:             addi         zero, s6, 743
                  beq          a6, t6, 2618f
                  and          t1, s6, zero
                  srli         s7, s4, 24
                  sltiu        s5, s6, 1778
                  xori         a3, s8, 953
                  add          s10, s0, t0
                  srl          a3, tp, a3
                  sra          t2, ra, s6
                  blt          t3, s9, 2636f
                  sltiu        s11, t4, -558
2618:             slti         a3, s0, 353
                  sub          s2, s11, t2
                  sltiu        gp, a4, -235
                  addi         a7, t4, 1542
                  andi         s9, gp, 720
                  srl          t3, zero, gp
                  andi         s1, t2, -1533
                  or           s3, s6, a5
                  bgeu         a0, s9, 2631f
                  auipc        tp, 220880
                  bge          a5, gp, 2639f
                  auipc        s6, 536733
                  add          s1, a5, s2
2631:             beq          s5, a0, 2644f
                  bltu         a6, gp, 2635f
                  andi         s5, s1, 1288
                  srai         t1, a5, 5
2635:             srli         t1, s6, 9
2636:             srai         t0, t1, 16
                  ori          s3, t3, 1660
                  srai         t4, t3, 3
2639:             nop
                  or           zero, zero, zero
                  xori         t6, s2, 135
                  bgeu         t3, s6, 2657f
                  or           a6, s7, a4
2644:             sltiu        t0, t4, -1566
                  slti         s1, s1, -886
                  beq          a2, s8, 2662f
                  bgeu         s11, s10, 2665f
                  sltu         a0, s6, a6
                  bne          s8, tp, 2664f
                  srai         s6, s9, 30
                  addi         t2, s9, 1315
                  nop
                  bgeu         a1, s5, 2655f
                  bltu         s6, gp, 2660f
2655:             bge          t2, s1, 2664f
                  beq          t6, t3, 2658f
2657:             sub          zero, a1, s4
2658:             srai         gp, s8, 27
                  bne          a2, a0, 2661f
2660:             beq          s10, s11, 2672f
2661:             sltiu        s3, a1, 958
2662:             sub          gp, a1, s7
                  add          s7, s10, a4
2664:             slti         t1, t3, -930
2665:             sra          a2, s7, a0
                  lui          t6, 524655
                  or           a2, ra, s2
                  sltu         t0, s2, s0
                  xori         a2, t6, 1544
                  bgeu         gp, a7, 2675f
                  sll          a3, t2, a3
2672:             xori         s10, s4, -414
                  bge          t2, s2, 2676f
                  slli         s9, s1, 7
2675:             slti         a5, s9, -252
2676:             srli         s5, t3, 30
                  bge          s0, a6, 2697f
                  srl          t3, a3, s0
                  xor          s1, s9, s2
                  blt          t3, a4, 2692f
                  slli         a1, gp, 17
                  ori          a5, a2, 1771
                  blt          s5, s0, 2698f
                  add          zero, a2, a7
                  slli         t6, s6, 30
                  auipc        s1, 69826
                  xor          a6, t1, t4
                  ori          t2, ra, -568
                  nop
                  bltu         s11, a6, 2708f
                  beq          ra, t0, 2693f
2692:             sll          s3, s9, s2
2693:             and          s7, a6, s9
                  srai         s2, t3, 5
                  bge          t2, t3, 2714f
                  or           s11, t0, t6
2697:             blt          a3, gp, 2698f
2698:             lui          a1, 290654
                  addi         a4, a4, 170
                  sll          s5, s10, t6
                  bltu         a4, t2, 2703f
                  nop
2703:             andi         tp, s2, 517
                  bge          sp, t3, 2717f
                  sltiu        t3, a4, -1045
                  addi         t6, t0, -372
                  sltiu        t3, ra, 52
2708:             ori          s5, t1, -88
                  and          a6, gp, s5
                  slti         t6, s11, -231
                  slti         ra, t3, -1338
                  or           t3, t2, s11
                  add          s3, t5, s7
2714:             nop
                  sll          a7, t0, tp
                  ori          s5, a0, 789
2717:             ori          t6, t3, 1656
                  bltu         a4, a0, 2723f
                  and          a0, s4, s7
                  beq          a4, sp, 2722f
                  slt          a3, zero, s10
2722:             lui          t2, 395402
2723:             lui          zero, 275697
                  ori          t1, s2, 457
                  srli         zero, zero, 13
                  sub          t3, s2, a4
                  addi         t3, s5, -1765
                  srl          t1, a3, s7
                  srai         s6, a4, 18
                  sll          a4, a0, a5
                  bge          s4, sp, 2749f
                  xori         a5, a4, 1135
                  slt          t1, s1, s7
                  sra          s2, sp, t4
                  auipc        t6, 232083
                  sltu         t3, s7, s2
                  andi         a6, a1, 1514
                  sltiu        a6, zero, -1907
                  blt          t0, tp, 2749f
                  sltiu        s6, a7, -880
                  blt          t3, sp, 2747f
                  srl          s9, t4, s5
                  or           a1, a0, s10
                  sub          a2, s9, a4
                  addi         t3, a0, -879
                  xor          t0, s4, s9
2747:             sub          a3, gp, t5
                  or           s11, t2, a7
2749:             and          s3, t0, a5
                  and          ra, s7, ra
                  sub          t1, s6, s6
                  slt          gp, a1, s7
                  sltiu        a0, s0, 1361
                  add          a5, tp, t6
                  xori         a4, s3, 1966
                  sub          s1, a4, s11
                  sltiu        s4, a6, -323
                  or           a6, t1, s8
                  sub          s4, a7, gp
                  bltu         t0, sp, 2762f
                  addi         s4, tp, -386
2762:             and          s2, t1, zero
                  bltu         a6, a2, 2775f
                  bge          s3, s2, 2766f
                  sra          s2, s1, a2
2766:             slt          s6, a1, t0
                  bltu         a1, gp, 2782f
                  sltu         s6, a0, s7
                  sub          s3, sp, s6
                  srl          gp, s9, s7
                  beq          s2, zero, 2773f
                  auipc        t6, 607938
2773:             bgeu         a0, sp, 2775f
                  la           t3, region_0+570 #start riscv_load_store_rand_instr_stream_3
                  lbu          t6, 1369(t3)
                  lbu          s1, 750(t3)
                  lb           ra, 213(t3)
                  lb           s7, 1001(t3)
                  auipc        t4, 285579
                  or           s10, t3, s6
                  lb           a0, -491(t3)
                  sb           s4, 1121(t3)
                  lbu          t4, 6(t3)
                  xori         s9, tp, -811
                  sb           zero, -259(t3)
                  andi         s5, ra, -862
                  sb           t2, -144(t3)
                  sltiu        a5, s1, 12
                  lbu          s4, 241(t3)
                  sb           t6, 340(t3)
                  lbu          tp, 1401(t3)
                  lbu          tp, -84(t3)
                  sb           s8, 344(t3)
                  ori          s6, ra, 766
                  sltiu        a6, t5, -362
                  sltiu        t4, a3, -1307
                  sb           a0, 322(t3)
                  sb           s4, 1385(t3)
                  lb           a4, -120(t3)
                  lui          zero, 238820
                  xori         tp, s2, 1245
                  xori         s7, s2, -54
                  lbu          a3, 529(t3)
                  or           a4, s6, zero
                  sll          s1, ra, t5
                  lw           a1, 1226(t3)
                  xor          t6, t0, s5
                  lhu          a0, 722(t3)
                  sb           zero, 457(t3)
                  srai         a2, a7, 15
                  lhu          a7, 526(t3) #end riscv_load_store_rand_instr_stream_3
                  blt          s10, t5, 2787f
2775:             sltu         t6, a2, s3
                  beq          t4, a7, 2778f
                  add          t1, s4, s8
2778:             sltiu        s0, t3, 2016
                  sub          s5, s7, t3
                  xor          gp, s1, t2
                  blt          a4, ra, 2801f
2782:             add          t2, s0, s10
                  bgeu         s10, s3, 2801f
                  xori         t2, s7, -1265
                  srai         tp, ra, 13
                  or           t0, t5, a4
2787:             srai         s3, s8, 24
                  slt          s0, s6, a7
                  bne          t1, a2, 2804f
                  and          t1, t4, s0
                  bltu         s2, s11, 2807f
                  sll          a0, s0, tp
                  bge          t2, s6, 2798f
                  bge          s2, a6, 2806f
                  srai         s10, s8, 13
                  or           s11, a6, t0
                  sltu         t3, s0, a4
2798:             bgeu         t6, a6, 2817f
                  beq          s6, t5, 2812f
                  srli         t1, s0, 19
2801:             addi         t3, s8, -438
                  bne          s5, s9, 2822f
                  bgeu         t0, tp, 2806f
2804:             and          t6, t5, t2
                  xori         a1, s6, -32
2806:             andi         a6, s3, -705
2807:             srli         s11, s0, 26
                  xor          a7, gp, a7
                  ori          s6, t2, -1500
                  bgeu         t4, s2, 2822f
                  slli         a5, t1, 0
2812:             blt          s6, s3, 2821f
                  sll          a2, t3, s1
                  sltiu        a4, tp, -1566
                  or           s1, s10, s2
                  slt          s7, s0, s9
2817:             auipc        a2, 202206
                  srli         s5, a6, 7
                  sltiu        a5, t5, 478
                  add          a1, s1, t2
2821:             sltu         s5, s4, s5
2822:             srai         s7, s7, 22
                  slt          s11, sp, t5
                  srai         s2, t6, 11
                  bne          a3, t5, 2826f
2826:             slti         t2, sp, -1003
                  blt          gp, ra, 2838f
                  xori         ra, a6, 19
                  bne          t5, tp, 2832f
                  auipc        a6, 556312
                  beq          gp, s3, 2833f
2832:             sub          t6, s4, s0
2833:             xori         ra, a0, -934
                  nop
                  xor          t2, s0, s1
                  xor          t4, s7, t2
                  lui          s11, 30837
2838:             sltu         a3, t5, ra
                  slli         a1, a1, 0
                  or           a7, t2, a0
                  lui          gp, 569889
                  sub          a0, sp, s10
                  sll          s2, a3, s2
                  sub          s10, gp, s4
                  slti         tp, a1, -441
                  blt          a7, a6, 2851f
                  blt          s11, s10, 2852f
                  slli         zero, s9, 5
                  addi         a5, t6, 141
                  srai         ra, gp, 5
2851:             auipc        s7, 792986
2852:             sltiu        s9, s2, -1505
                  xor          a7, t3, t0
                  bltu         s7, a0, 2869f
                  sra          t1, t0, s0
                  sra          t2, a7, a6
                  addi         t2, s8, -1320
                  and          s11, s4, s10
                  slti         a7, a0, -80
                  beq          a2, s9, 2869f
                  bge          t4, t3, 2863f
                  sll          s9, s2, s2
2863:             or           tp, zero, t0
                  xori         s10, s2, 1957
                  bgeu         t3, a4, 2871f
                  bgeu         tp, a5, 2881f
                  slt          ra, s5, t6
                  blt          t2, a5, 2870f
2869:             slli         ra, s6, 12
2870:             srli         s10, t2, 11
2871:             srl          s11, a7, s10
                  ori          zero, s7, 739
                  slti         s2, a4, -1153
                  nop
                  slti         t0, s8, -241
                  add          zero, s9, s7
                  sltiu        t2, s7, 1644
                  sra          a4, s5, a1
                  bltu         t6, s8, 2890f
                  srl          gp, sp, tp
2881:             ori          t6, s7, -1235
                  bne          a4, s5, 2884f
                  sltiu        s9, t3, 1282
2884:             sltu         a7, s1, t4
                  lui          s10, 755531
                  sll          a0, tp, s10
                  or           s1, t4, t3
                  xori         ra, s7, 1103
                  bltu         t4, t6, 2891f
2890:             srai         a6, t6, 7
2891:             and          t4, a7, a3
                  andi         t3, s4, 822
                  xor          s0, a2, t2
                  andi         s10, t4, 558
                  bge          t3, s4, 2911f
                  add          t2, t3, s3
                  xor          s0, s7, t1
                  addi         a3, t6, -1171
                  bne          t3, t6, 2904f
                  or           a2, a5, s11
                  sub          ra, t3, s10
                  add          s0, a3, s11
                  srli         t6, a6, 15
2904:             bge          t4, t0, 2909f
                  or           a0, s0, ra
                  slli         a6, t4, 24
                  srli         s9, s3, 25
                  bgeu         a3, sp, 2920f
2909:             srli         s3, a5, 23
                  xor          zero, s6, a4
2911:             xori         s7, t4, -1273
                  add          a4, s5, s8
                  and          s0, s2, t2
                  bne          tp, a6, 2916f
                  and          tp, s5, a6
2916:             bltu         t0, a3, 2934f
                  addi         zero, t3, 824
                  beq          s10, t4, 2930f
                  bge          t6, a4, 2932f
2920:             xori         s9, a4, 1148
                  addi         s5, a7, 261
                  srai         t4, a6, 11
                  blt          a4, s6, 2925f
                  srl          tp, a0, s5
2925:             add          t1, a2, a4
                  and          s4, s0, t0
                  slt          t6, a0, s9
                  srli         a0, ra, 22
                  sra          a6, s10, t6
2930:             ori          a3, a5, -1225
                  lui          a6, 924324
2932:             nop
                  nop
2934:             srai         a0, a4, 0
                  srli         t4, t4, 27
                  bne          s2, a6, 2948f
                  srli         ra, s7, 12
                  beq          s5, t6, 2941f
                  xor          gp, t0, s3
                  lui          s4, 182674
2941:             slt          t6, t0, a5
                  sll          s11, gp, a4
                  slli         s2, t0, 3
                  bgeu         s2, ra, 2959f
                  slt          s6, s11, s10
                  bgeu         zero, a6, 2949f
                  srai         a3, s7, 29
2948:             srai         a5, a6, 30
2949:             sll          a2, zero, s1
                  srai         s3, s0, 15
                  slt          s6, s11, s1
                  slt          s11, t3, t1
                  slli         s5, a2, 19
                  slt          s4, a2, s5
                  blt          s11, t0, 2975f
                  sll          s0, tp, t0
                  xor          a3, s5, t2
                  lui          t3, 166472
2959:             sltu         t2, s4, s6
                  xor          t0, t1, a7
                  xori         a7, a1, 426
                  blt          s5, s11, 2982f
                  sub          a3, tp, ra
                  sltu         a3, t2, s8
                  addi         s3, t1, 1228
                  auipc        t6, 21473
                  sltiu        a6, s7, -1192
                  srli         t0, a4, 11
                  andi         a7, s3, -66
                  slt          a2, zero, s6
                  and          s2, a0, s5
                  auipc        a1, 83449
                  srl          zero, s5, ra
                  addi         gp, t4, 1718
2975:             and          s10, a6, t1
                  nop
                  auipc        s1, 429094
                  sra          s6, s9, t1
                  andi         t6, s11, 737
                  sll          s9, s1, t5
                  bge          t1, s2, 2986f
2982:             bne          s1, gp, 3000f
                  beq          s6, a1, 2984f
2984:             blt          t2, a4, 2997f
                  sltu         a3, tp, a3
2986:             bne          s2, a1, 2996f
                  and          t0, zero, t5
                  bne          s10, s8, 3003f
                  beq          s8, a5, 3008f
                  bge          a0, s11, 3008f
                  bne          s10, s11, 3003f
                  lui          s5, 96905
                  auipc        t1, 688123
                  sll          s1, a7, t1
                  sra          a6, a0, a3
2996:             sltu         a2, t2, t2
2997:             nop
                  slti         t6, a5, -549
                  sltiu        a5, a7, -1975
3000:             addi         t1, t1, -1432
                  sll          t6, s2, s11
                  bne          s4, t4, 3004f
3003:             sltiu        s0, s4, -707
3004:             srai         a5, t5, 6
                  slt          zero, s2, sp
                  addi         a4, a5, -1412
                  sltiu        a2, a6, -444
3008:             srli         gp, s8, 5
                  bgeu         s8, s3, 3025f
                  slli         a5, s7, 7
                  bge          s5, a1, 3021f
                  bne          s2, s11, 3018f
                  bltu         t0, a5, 3015f
                  sltu         a1, s10, zero
3015:             blt          gp, s2, 3030f
                  beq          s0, a3, 3018f
                  srl          ra, gp, s3
3018:             ori          t0, a7, 149
                  slt          s2, s5, s1
                  ori          t6, s0, -174
3021:             auipc        t2, 98608
                  srl          t1, s4, t6
                  sub          gp, s5, t3
                  bgeu         s0, a2, 3026f
3025:             slti         zero, s7, -618
3026:             srai         s0, s0, 25
                  auipc        zero, 424699
                  slli         t3, zero, 25
                  ori          t6, s1, 1272
3030:             sltu         ra, s1, t3
                  or           s0, a2, s4
                  or           s5, s8, a3
                  add          t1, a0, s2
                  bne          s0, a1, 3039f
                  bltu         s9, s4, 3047f
                  srli         s10, s4, 8
                  bne          t3, t0, 3055f
                  andi         s11, s5, 1956
3039:             add          t0, t3, s8
                  slt          a0, s2, a4
                  sltu         t1, t2, s10
                  bltu         zero, a1, 3047f
                  srl          s11, zero, zero
                  bge          s2, a0, 3057f
                  andi         a7, t5, 242
                  bne          t6, s5, 3058f
3047:             nop
                  bgeu         s7, t4, 3051f
                  bge          sp, a7, 3058f
                  xor          t3, a2, t4
3051:             slli         s10, s8, 9
                  srli         a0, s11, 11
                  addi         s5, a3, 895
                  beq          t2, t1, 3055f
3055:             srl          a6, a6, s2
                  andi         ra, s9, -1760
3057:             sltu         t3, sp, t3
3058:             andi         s3, tp, 1271
                  slti         s11, tp, -972
                  blt          t4, s1, 3073f
                  bgeu         t0, t3, 3080f
                  nop
                  bne          s1, s7, 3078f
                  beq          s1, t2, 3084f
                  srl          s4, s0, s8
                  srai         s7, s2, 30
                  bge          t3, a6, 3087f
                  sra          t4, a2, tp
                  slt          s6, t3, s6
                  sra          t0, s6, t5
                  addi         s11, a4, -1726
                  slli         gp, a4, 4
3073:             ori          zero, a4, 1077
                  slti         s2, a5, -2047
                  or           s10, s2, a4
                  auipc        a6, 685398
                  srli         a3, a0, 14
3078:             slli         s7, s11, 23
                  bgeu         s6, s3, 3082f
3080:             sub          a3, s0, a0
                  bltu         a5, t0, 3086f
3082:             lui          s3, 703737
                  slt          ra, tp, a4
3084:             blt          a7, gp, 3086f
                  add          a4, s7, s8
3086:             sltiu        a2, t4, -152
3087:             xor          s1, s0, s0
                  bge          a1, a2, 3103f
                  beq          s8, t4, 3100f
                  blt          s0, a4, 3092f
                  ori          a2, tp, -18
3092:             sll          tp, s10, a3
                  srli         s6, s0, 14
                  addi         s6, t2, -1597
                  addi         a3, a7, 1277
                  lui          t1, 1021656
                  bne          s11, sp, 3107f
                  sra          a1, a2, a2
                  bne          t0, t5, 3101f
3100:             sll          a4, zero, a1
3101:             slti         a0, s10, -560
                  ori          a5, s2, 1884
3103:             sub          s9, t6, t2
                  bltu         t0, a7, 3119f
                  xori         a4, s7, -845
                  and          s11, s8, s0
3107:             srl          t1, t0, a1
                  xor          s5, s3, a4
                  xori         s10, t5, 131
                  or           tp, t0, a4
                  sltu         s7, s3, a3
                  srli         t1, gp, 5
                  blt          a7, tp, 3118f
                  bltu         t2, a4, 3130f
                  slt          a6, a6, a4
                  slti         tp, a3, -273
                  lui          t3, 203925
3118:             addi         a7, zero, 1398
3119:             srai         tp, a4, 1
                  bge          ra, a3, 3133f
                  sra          a1, s9, t4
                  slti         s10, t4, -510
                  sltu         a4, gp, t1
                  srai         a3, t5, 23
                  addi         s2, s9, -446
                  sltiu        s11, t0, -1003
                  addi         ra, s5, -1502
                  nop
                  nop
3130:             sub          t2, t4, sp
                  blt          s3, t0, 3151f
                  xor          a7, tp, a4
3133:             srli         ra, tp, 31
                  nop
                  slti         tp, a3, -1871
                  and          s1, s10, t5
                  nop
                  sltiu        s11, s8, 789
                  slti         a2, t2, 417
                  and          t0, t1, s3
                  bne          a3, a5, 3152f
                  xori         s3, a7, -768
                  bne          t5, s6, 3158f
                  srl          a7, s8, t4
                  add          a3, a4, a4
                  xori         gp, t0, 1612
                  nop
                  andi         s2, t4, 539
                  la           s7, region_0+85 #start riscv_load_store_rand_instr_stream_16
                  ori          gp, s10, 243
                  auipc        a6, 383655
                  addi         s5, t2, -1469
                  sra          gp, a3, s6
                  lbu          a3, 2(s7)
                  sb           t2, 8(s7)
                  sb           s8, -14(s7)
                  srl          t6, s10, t0
                  sb           gp, 8(s7)
                  lh           a6, -5(s7)
                  xor          a6, t5, s3
                  lh           s1, -5(s7)
                  lh           s11, 5(s7)
                  sb           s10, -8(s7)
                  slli         s0, s6, 4
                  lb           t2, 3(s7)
                  add          a3, sp, a1
                  sltu         a5, t5, t5
                  lbu          t0, -16(s7)
                  srai         a6, s5, 25
                  sb           s3, 6(s7)
                  ori          s10, s0, -678
                  lb           s9, -15(s7)
                  slt          zero, s1, t3
                  add          a4, s3, a5
                  sb           s4, 10(s7)
                  sb           t6, 4(s7)
                  slli         a5, zero, 20
                  sltu         tp, t2, t5
                  srl          a1, s10, a6
                  xor          t2, s3, t6
                  add          s11, a5, s7
                  lb           a3, 12(s7)
                  sltu         a3, s1, gp
                  xor          zero, s8, a5
                  sub          s9, a7, gp
                  lw           t3, -13(s7)
                  auipc        a0, 463502
                  sh           a4, -13(s7)
                  sb           s6, 11(s7)
                  lbu          s11, -4(s7)
                  lbu          t2, 3(s7) #end riscv_load_store_rand_instr_stream_16
                  slti         gp, zero, -751
                  nop
3151:             bne          t6, s3, 3152f
3152:             xor          s3, t4, sp
                  sltu         s10, ra, gp
                  srai         gp, a0, 15
                  ori          a1, a1, 1347
                  sub          tp, s11, s6
                  auipc        s11, 570167
3158:             sub          s1, t4, s4
                  or           t4, s3, s1
                  slt          gp, a0, s11
                  sll          s11, zero, a7
                  lui          a3, 833301
                  slt          s4, s5, s3
                  ori          s4, t1, 1359
                  xori         a3, s6, -1410
                  lui          s6, 209206
                  beq          s5, t3, 3186f
                  lui          a2, 256109
                  ori          s0, a6, -1807
                  ori          t3, a7, 1533
                  sra          a2, t5, a1
                  sltiu        t3, a5, -959
                  blt          a0, a5, 3185f
                  srai         a1, s2, 20
                  srai         s0, zero, 13
                  sub          gp, s4, t1
                  bge          t6, a4, 3180f
                  bltu         a1, s6, 3187f
                  nop
3180:             sll          a7, s7, t5
                  or           s2, gp, tp
                  auipc        t2, 555363
                  addi         a5, t4, 679
                  sub          s0, s2, s9
3185:             sll          t6, t6, ra
3186:             or           a3, a3, a4
3187:             addi         a0, ra, 1059
                  addi         t1, a7, 834
                  blt          a7, s4, 3204f
                  andi         s2, s8, -729
                  addi         a3, tp, 639
                  beq          s1, s10, 3195f
                  bltu         tp, a2, 3205f
                  bgeu         tp, s1, 3212f
3195:             xori         s6, t5, 757
                  lui          a4, 144250
                  srli         s1, s0, 1
                  srl          s7, a5, s6
                  beq          s1, s3, 3204f
                  beq          a4, a4, 3220f
                  sub          zero, s7, s7
                  addi         s6, zero, -1813
                  bltu         s7, a6, 3215f
3204:             beq          s11, a5, 3206f
3205:             srai         t2, s10, 4
3206:             bgeu         zero, a3, 3212f
                  xor          a0, gp, a5
                  or           t1, a0, s2
                  srai         a6, a0, 5
                  sra          a7, t5, a5
                  slli         a7, s3, 2
3212:             nop
                  auipc        t2, 958188
                  beq          a6, a7, 3219f
3215:             srl          a6, a7, t5
                  or           s11, s1, t1
                  lui          tp, 909625
                  bgeu         s7, s11, 3236f
3219:             srl          t0, s0, s4
3220:             beq          ra, t3, 3222f
                  sll          s0, a1, s5
3222:             srai         s11, t5, 11
                  xor          t4, sp, s7
                  slt          s6, s1, s3
                  bne          s9, tp, 3238f
                  sltu         ra, s10, s10
                  bne          gp, s10, 3229f
                  srai         s5, s2, 8
3229:             slli         t4, ra, 9
                  srai         s11, s5, 3
                  auipc        s3, 381601
                  sltiu        t0, t3, 1368
                  sltu         a5, t2, a5
                  andi         ra, t3, -1163
                  srl          s5, a5, t0
3236:             sll          s3, a1, s8
                  and          a6, t4, gp
3238:             lui          a2, 543119
                  add          a4, tp, tp
                  srai         s7, t4, 17
                  sltiu        s0, s6, -1562
                  and          a5, t6, s8
                  ori          gp, s9, -1454
                  nop
                  sltiu        ra, tp, -1808
                  ori          gp, zero, -1447
                  and          s11, a1, t4
                  addi         a7, s1, 970
                  bge          s4, s8, 3251f
                  sltu         s3, t3, s3
3251:             and          a4, s10, gp
                  slt          a4, t2, s11
                  slt          t3, t0, ra
                  andi         a3, a4, 1851
                  srli         tp, s2, 24
                  nop
                  srl          a4, gp, a4
                  auipc        s9, 498194
                  xor          a1, gp, ra
                  srli         s4, t6, 21
                  slti         a3, t5, 1697
                  lui          gp, 998869
                  lui          a1, 767352
                  bge          s11, t3, 3266f
                  srai         s1, s9, 27
3266:             slt          t3, a7, a5
                  xor          s6, s6, gp
                  add          a2, s11, t5
                  slli         a1, s4, 30
                  lui          a1, 541638
                  sltiu        a1, t2, 1627
                  and          gp, s1, s4
                  slt          t6, a1, s11
                  lui          s7, 671395
                  beq          t0, a2, 3280f
                  sub          a4, t6, a7
                  xori         a1, s7, -454
                  bltu         ra, s8, 3280f
                  srl          s2, a5, tp
3280:             bltu         s9, a5, 3292f
                  srl          s1, gp, s7
                  slt          s7, s1, gp
                  srai         a1, t6, 28
                  bge          t6, s7, 3287f
                  andi         ra, gp, 350
                  add          s1, a0, t1
3287:             sll          a2, t4, a1
                  and          a7, a1, a3
                  auipc        s7, 788776
                  and          s3, s6, s0
                  bne          s9, a4, 3309f
3292:             bne          s11, t6, 3294f
                  sra          a7, zero, a5
3294:             sll          s9, a6, t5
                  beq          ra, s3, 3304f
                  or           t6, t4, t2
                  bgeu         s10, s8, 3310f
                  nop
                  auipc        a2, 204791
                  sra          t0, a5, a4
                  ori          a1, s1, 712
                  slti         s3, t3, -103
                  slti         tp, s7, -672
3304:             bge          a4, a4, 3316f
                  auipc        a7, 378584
                  or           t0, s4, s3
                  sub          a2, s10, s5
                  sltiu        tp, t0, 377
3309:             bge          gp, s8, 3315f
3310:             auipc        zero, 373740
                  slt          a4, s3, t1
                  xor          t6, s0, s8
                  blt          s9, s7, 3315f
                  and          t4, sp, s1
3315:             sub          t2, s5, s5
3316:             xori         t3, a0, 610
                  slti         a3, a3, 1111
                  auipc        s6, 358942
                  blt          t3, a1, 3320f
3320:             srl          s1, a4, s2
                  ori          s11, s3, 1512
                  bge          a2, s5, 3337f
                  sll          a4, s10, s9
                  auipc        a4, 357847
                  slt          tp, a0, s2
                  sltu         ra, s5, s6
                  sra          s11, s10, t6
                  bgeu         t4, s11, 3330f
                  srli         t6, t1, 2
3330:             beq          t5, a3, 3335f
                  bne          s9, s1, 3346f
                  blt          a5, t5, 3351f
                  lui          s9, 584111
                  sra          a1, zero, zero
3335:             xori         a7, ra, -558
                  bltu         s8, gp, 3339f
3337:             nop
                  addi         s10, t6, 1953
3339:             bne          t2, s1, 3341f
                  and          s7, a7, t6
3341:             add          t6, s0, ra
                  slti         s1, a2, -1145
                  nop
                  add          s2, a0, s1
                  and          tp, s5, t4
3346:             slti         zero, s0, -590
                  slt          a3, t4, s5
                  addi         gp, a4, 1555
                  andi         a6, t0, -1100
                  lui          a1, 826002
3351:             addi         s6, s2, -1690
                  beq          a3, s10, 3370f
                  addi         s7, t4, -851
                  srai         t2, a2, 29
                  sltu         s5, a4, s1
                  sltiu        s4, t5, 1990
                  andi         s1, a4, 288
                  ori          a2, t1, -1977
                  sltiu        a2, s11, 1687
                  ori          t0, t1, 1791
                  xori         s2, t6, 116
                  sra          s5, s5, s6
                  or           t4, t0, a7
                  add          a6, s3, t2
                  xori         a5, a2, -1717
                  xor          s9, a0, s10
                  slli         t6, a2, 8
                  add          t2, ra, s7
                  nop
3370:             blt          a7, a4, 3382f
                  bgeu         a5, s9, 3381f
                  slt          t6, s4, a0
                  srl          s5, t0, s3
                  sll          a7, a3, a2
                  srli         t6, a5, 17
                  srli         zero, a4, 26
                  srli         s1, sp, 17
                  blt          s6, a6, 3389f
                  auipc        s2, 730118
                  or           zero, s11, gp
3381:             bltu         s8, sp, 3396f
3382:             sltu         a1, tp, zero
                  slt          s2, t1, s2
                  nop
                  or           s3, t3, s1
                  slli         t3, t1, 13
                  sub          s10, s3, s7
                  xori         s3, a4, -541
3389:             slti         s5, a2, -1429
                  xor          gp, t0, a1
                  lui          tp, 370329
                  bge          gp, t1, 3408f
                  slli         a7, tp, 21
                  la           s6, region_0+17 #start riscv_load_store_rand_instr_stream_0
                  srli         t0, s11, 29
                  sub          t3, t2, a2
                  sb           t2, 144(s6)
                  or           s5, a6, s9
                  xor          t4, s6, s8
                  sub          a0, t2, sp
                  sh           t4, 247(s6)
                  lbu          zero, 49(s6)
                  srai         s4, s2, 2
                  sub          tp, s11, s8
                  sb           a1, 137(s6)
                  sltu         a7, s2, a4
                  slt          s9, a1, ra
                  sw           s6, 227(s6)
                  lbu          a6, 67(s6)
                  sltu         a7, t5, s5
                  lh           tp, 165(s6)
                  srl          t0, s5, s2
                  slt          s5, s8, a1
                  sub          zero, a5, a5
                  lbu          s0, 233(s6)
                  or           t4, a3, s1
                  lb           gp, 80(s6)
                  and          s4, tp, a6
                  lhu          t2, 47(s6)
                  sra          s10, s0, sp
                  sb           a0, 8(s6) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s3, s2, 259
                  add          s2, t3, ra
3396:             add          t1, t0, a4
                  ori          s6, a1, -1151
                  or           s0, s6, s2
                  blt          t4, s2, 3404f
                  srai         tp, s11, 0
                  sra          a1, s3, s3
                  bltu         zero, t6, 3422f
                  sltiu        t4, t5, 30
3404:             sltu         s0, a2, s10
                  xor          a0, t5, a0
                  srli         a1, tp, 9
                  andi         t0, s4, 563
3408:             sltiu        t0, zero, 617
                  beq          s2, s2, 3422f
                  bltu         t4, s5, 3430f
                  andi         s4, s9, -1858
                  sub          s4, s6, a0
                  beq          sp, s2, 3415f
                  xori         s3, s6, -1254
3415:             or           a7, gp, sp
                  slt          t1, a5, s8
                  srli         s10, a3, 23
                  or           s10, t3, sp
                  bge          t4, s8, 3421f
                  auipc        tp, 898180
3421:             bge          a0, t2, 3433f
3422:             nop
                  sltu         t6, a7, t3
                  beq          a0, t4, 3427f
                  slt          gp, a3, a0
                  srai         t3, s6, 15
3427:             or           gp, a1, a4
                  auipc        s3, 371230
                  bgeu         a5, a6, 3444f
3430:             bgeu         t3, s9, 3445f
                  beq          t0, t5, 3433f
                  and          t1, a7, t1
3433:             srai         a5, sp, 28
                  addi         s9, t6, -622
                  bltu         zero, zero, 3450f
                  sltu         a1, a4, s9
                  and          a1, a1, ra
                  ori          a6, a7, -606
                  xor          s9, tp, a3
                  sll          a1, a5, tp
                  srl          a6, a7, s11
                  sll          s2, tp, a7
                  sub          tp, a1, a7
3444:             srli         a3, a1, 16
3445:             bge          s11, s10, 3465f
                  bgeu         s10, a7, 3455f
                  srli         a4, a6, 6
                  sltiu        gp, s6, 16
                  bge          tp, s9, 3451f
3450:             sltu         s1, s0, a1
3451:             sub          a1, a1, s6
                  auipc        t6, 88083
                  bge          s1, a6, 3466f
                  xor          a6, tp, a6
3455:             bge          s4, t0, 3460f
                  and          s1, a2, s0
                  auipc        s4, 611900
                  slt          t0, a3, s9
                  sub          s1, a7, t4
3460:             bge          ra, sp, 3476f
                  nop
                  sltu         s6, a5, s4
                  sra          zero, a3, a0
                  add          gp, a0, a2
3465:             add          ra, zero, tp
3466:             srli         t3, zero, 10
                  add          a2, a5, zero
                  sll          tp, s6, ra
                  sub          a6, t4, a0
                  ori          s11, t1, -184
                  bge          t0, s1, 3481f
                  blt          s1, t0, 3484f
                  bgeu         s7, gp, 3476f
                  bltu         s7, a0, 3485f
                  bgeu         t3, s10, 3481f
3476:             nop
                  sll          tp, s6, s6
                  srl          s11, tp, s1
                  add          s11, s9, a4
                  srai         t3, a4, 4
3481:             srli         ra, gp, 4
                  bge          s0, s4, 3502f
                  ori          t1, t2, -593
3484:             nop
3485:             xori         a1, a0, 534
                  slti         a1, s3, 1395
                  beq          t4, s3, 3505f
                  sll          zero, a5, a5
                  srl          zero, s2, gp
                  ori          t3, t4, 430
                  sltiu        tp, s2, 994
                  addi         t3, s3, 52
                  sll          t0, t1, s2
                  sll          a3, s1, a7
                  bgeu         t5, s7, 3500f
                  bltu         a1, a4, 3498f
                  sltiu        t3, a7, -1315
3498:             srai         s10, t1, 26
                  andi         tp, a3, 1500
3500:             lui          s5, 977021
                  bge          sp, a1, 3514f
3502:             xor          a3, s4, a1
                  srl          gp, tp, s8
                  sltiu        s11, s10, -39
3505:             sub          ra, a7, a2
                  srl          t2, t2, s2
                  nop
                  srl          s5, sp, t1
                  slti         s7, gp, 1087
                  auipc        a2, 142277
                  bgeu         a3, s0, 3523f
                  bne          t5, t3, 3513f
3513:             auipc        s7, 873395
3514:             and          s1, a4, s9
                  auipc        s5, 751419
                  bgeu         s0, gp, 3534f
                  la           a3, region_1+1183 #start riscv_load_store_rand_instr_stream_21
                  sb           a4, -1044(a3)
                  sb           t0, -130(a3)
                  sb           s11, -714(a3)
                  sll          a4, t0, a2
                  sb           sp, -1014(a3)
                  sra          tp, t5, s5
                  addi         t0, s0, 935
                  lhu          s5, 221(a3)
                  sb           a7, 182(a3)
                  andi         s9, t2, 73
                  or           tp, a0, a4
                  sw           sp, 45(a3)
                  slt          s7, t3, s1
                  sltiu        a7, a7, -1836
                  srai         a2, a0, 26
                  sw           s2, -931(a3)
                  lbu          a2, 648(a3)
                  sb           t2, -1148(a3)
                  lbu          zero, -530(a3)
                  lb           tp, 588(a3)
                  srai         a6, s10, 29
                  lui          t6, 1017547
                  sh           t3, 617(a3)
                  sltiu        a6, gp, 1477
                  or           s5, a3, a4
                  ori          s0, a4, 18
                  srai         a0, s0, 5
                  or           s11, a0, s0
                  sll          tp, s0, ra
                  auipc        s4, 167977
                  lui          a0, 197871
                  lbu          t1, 386(a3)
                  lbu          s9, -771(a3)
                  lb           t4, -276(a3) #end riscv_load_store_rand_instr_stream_21
                  add          s6, s6, a5
                  bltu         a1, t5, 3523f
                  lui          s11, 727663
                  add          t3, s7, s10
                  srl          t4, a6, sp
                  blt          t1, s6, 3524f
3523:             slli         t0, s10, 0
3524:             bge          a0, a6, 3543f
                  sra          s3, s6, t5
                  blt          a6, t6, 3528f
                  nop
3528:             addi         a3, a1, 1886
                  sra          a2, s11, s9
                  beq          t1, ra, 3549f
                  sltu         s1, sp, tp
                  or           zero, a4, s9
                  slti         t0, a0, 1861
3534:             slli         s1, s2, 5
                  lui          a6, 957500
                  slti         a2, a5, -4
                  ori          t3, a0, 94
                  sltiu        s2, a6, -272
                  bgeu         s5, t3, 3557f
                  bgeu         s9, t3, 3555f
                  add          s2, s5, a2
                  bge          s2, t6, 3547f
3543:             lui          t3, 578219
                  srl          s1, s8, gp
                  blt          a6, a0, 3561f
                  la           gp, region_0+1359 #start riscv_load_store_rand_instr_stream_5
                  ori          s6, sp, -1486
                  srli         s10, s11, 8
                  nop
                  lb           a5, 63(gp)
                  lbu          s6, 44(gp)
                  lh           t3, 25(gp)
                  sb           s0, -34(gp)
                  slt          s5, s1, t6
                  and          a7, sp, sp
                  lh           s5, 1(gp)
                  lbu          a7, -64(gp)
                  sb           gp, 30(gp)
                  lb           a7, 3(gp)
                  sb           zero, -64(gp)
                  lb           s6, 17(gp)
                  sb           s0, 46(gp)
                  lui          a7, 237550
                  sltu         s10, a2, s5
                  add          tp, a7, s6
                  sb           s4, 7(gp)
                  slt          s0, t2, a5
                  lbu          s7, 11(gp)
                  sb           s1, 52(gp)
                  nop
                  sll          tp, a0, t6
                  sb           a6, -62(gp)
                  sw           s4, 53(gp)
                  sltiu        s7, s3, -240
                  srai         t6, gp, 23
                  sltu         s5, s10, s2
                  sb           a0, 13(gp) #end riscv_load_store_rand_instr_stream_5
                  lui          a4, 217860
3547:             sub          s3, s0, s5
                  beq          a7, gp, 3561f
3549:             nop
                  slt          s1, s6, gp
                  sll          a2, s10, s11
                  xori         a5, t1, 805
                  slti         a4, a4, 429
                  slt          zero, gp, a2
3555:             sltiu        a7, a2, 1934
                  xori         a1, a3, -1281
3557:             bltu         a5, s0, 3575f
                  sub          zero, t4, t5
                  slti         t3, t5, 1848
                  srli         a1, s5, 7
3561:             bge          t5, a0, 3576f
                  sltiu        gp, s11, 149
                  slli         s3, a7, 13
                  srli         a7, s8, 20
                  slli         s5, s0, 5
                  add          s2, t6, a6
                  nop
                  slt          s2, t1, s8
                  bltu         a2, s10, 3571f
                  or           a4, sp, s10
3571:             sltiu        s11, s8, -343
                  ori          gp, ra, 1423
                  xor          t0, t2, s5
                  slt          zero, a1, s1
3575:             bgeu         a4, s6, 3595f
3576:             andi         a3, s7, -25
                  beq          s6, zero, 3579f
                  ori          a6, s8, 548
3579:             srli         s4, s7, 11
                  sltu         t0, t3, a4
                  auipc        a2, 133296
                  ori          t2, gp, -911
                  srl          s1, s10, t5
                  slt          s3, t4, s11
                  sll          ra, t6, s0
                  slti         s3, s11, -220
                  auipc        s4, 213975
                  srl          s10, s10, t2
                  nop
                  xor          s5, s3, t6
                  slti         s9, sp, -1625
                  bltu         t3, t6, 3612f
                  auipc        t1, 686185
                  slti         zero, s9, 1356
3595:             slli         s6, s2, 12
                  nop
                  sra          t3, t0, s6
                  nop
                  add          s6, s11, a6
                  sra          t2, s11, sp
                  sltiu        a4, t2, -772
                  sll          zero, t0, t5
                  xor          t3, t5, s3
                  xori         a3, a4, -997
                  srai         s9, s10, 27
                  or           s4, s7, a0
                  srli         a7, ra, 15
                  add          a5, s11, ra
                  srl          a6, s7, ra
                  bgeu         t6, s1, 3622f
                  sltiu        a7, s11, -881
3612:             andi         a3, a6, -301
                  blt          t0, a2, 3615f
                  blt          a1, t1, 3629f
3615:             srl          s3, s2, s10
                  slti         a7, s5, 158
                  nop
                  and          t1, a0, s9
                  srli         a2, a3, 13
                  and          t3, s10, t3
                  beq          s9, zero, 3622f
3622:             andi         s11, s1, 852
                  ori          s3, t5, 1574
                  bge          sp, s4, 3626f
                  bgeu         a3, s11, 3630f
3626:             xor          s9, a1, s2
                  nop
                  xor          s0, t4, a5
3629:             or           a5, a4, a1
3630:             ori          t1, s0, -970
                  slli         t3, a7, 14
                  auipc        s3, 243871
                  add          t0, a6, s10
                  sltiu        s3, s9, -590
                  nop
                  blt          s9, s7, 3641f
                  bne          s6, tp, 3647f
                  bne          s6, a6, 3647f
                  lui          s0, 668809
                  beq          gp, s1, 3647f
3641:             blt          s1, zero, 3644f
                  blt          t2, a1, 3644f
                  sll          s4, s9, t6
3644:             slt          s0, a4, s11
                  sra          s10, gp, s0
                  bgeu         s4, zero, 3647f
3647:             sltiu        zero, t5, 203
                  or           a2, a2, a2
                  add          t1, s5, s5
                  lw           s11, 4(sp)
                  slti         ra, s8, 1226
                  add          a1, sp, s8
                  add          gp, s6, t0
                  addi         sp, sp, 52
                  sub          a4, s5, ra
                  srl          s5, sp, t4
4835:             addi x26, x27, 1
4835:             jalr x26, x26, 0
sub_1:            bgeu         s11, s8, sub_1_stack_p
sub_1_stack_p:    addi         sp, sp, -28
                  sw           s11, 4(sp)
                  lui          a4, 269751
                  or           a7, s2, a0
                  lui          s0, 341678
                  sub          a3, s0, s7
                  add          s5, s0, zero
                  srli         gp, a3, 7
                  addi         a3, a6, 1998
                  srl          s10, t0, s8
                  bltu         a1, t4, sub_1_j3 #branch to jump instr
                  srli         t6, s4, 14
                  ori          t0, t5, 1443
                  slti         s4, a1, -756
sub_1_j3:         jal          s11, sub_2 #jump sub_1 -> sub_2
                  la           s6, sub_2
                  slli         t1, s6, 4
                  addi         s6, s6, -13
                  slt          a1, a6, a5
                  sltu         s1, t3, s2
                  and          s5, s0, a7
                  nop
                  xori         s5, t3, -415
                  sub          t1, zero, a4
                  xor          a0, s3, s4
                  sra          a5, s9, s6
                  ori          gp, a4, -171
sub_1_j4:         jalr         s11, s6, 13 #jump sub_1 -> sub_2
                  bltu         s3, s9, 14f
                  srai         s9, t0, 5
                  sra          s0, a7, t0
                  sll          t4, s6, t0
                  bltu         s6, zero, 14f
                  srai         s11, s10, 27
                  bne          t6, gp, 11f
                  sltiu        s6, a7, -904
                  slt          a3, s9, s5
                  sltu         a2, tp, a0
                  sub          t3, t5, t0
11:               bge          t0, gp, 19f
                  bltu         t5, a6, 19f
                  xori         t4, s4, 1588
14:               srai         s9, s2, 31
                  nop
                  slt          t2, tp, t3
                  addi         a4, s4, 208
                  xori         zero, t4, 770
19:               lui          t4, 812999
                  or           t2, s5, s4
                  and          s5, a2, t2
                  lw           s11, 4(sp)
                  addi         sp, sp, 28
                  sra          s10, s5, a1
54:               addi x8, x27, 1
54:               jalr x8, x8, 0
sub_6:            auipc        s9, 646343
                  bne          s7, t2, sub_6_stack_p
                  sll          gp, t1, s5
                  lui          s6, 979204
sub_6_stack_p:    addi         sp, sp, -56
                  nop
                  and          s10, zero, t3
                  sw           s11, 4(sp)
                  addi         a5, s2, 340
                  nop
                  srli         a1, s2, 17
                  srai         a7, a6, 21
                  bne          s5, sp, sub_6_j12 #branch to jump instr
                  sll          a1, a0, t2
                  srli         s1, t4, 18
                  ori          s7, s9, 1575
sub_6_j12:        jal          s11, sub_8 #jump sub_6 -> sub_8
                  addi         s6, s0, -166
                  addi         a4, a3, -683
                  slt          t1, a5, s6
                  ori          s11, s4, 1641
                  bge          a6, s2, 17f
                  srli         s3, s2, 9
                  slt          t6, gp, s11
                  sub          s4, s2, a5
                  lui          a1, 196706
                  slli         s7, a3, 23
                  blt          t3, t0, 11f
11:               slti         s3, t5, 730
                  sra          a4, t6, a7
                  lui          s6, 329339
                  slt          a5, s8, s7
                  nop
                  or           t0, s1, t3
17:               beq          s5, s9, 23f
                  slt          s0, t6, a0
                  srai         a4, zero, 13
                  srl          s1, t6, s3
                  nop
                  bne          s10, tp, 23f
23:               slt          a2, a5, t1
                  sra          a2, a4, s2
                  lw           s11, 4(sp)
                  slli         tp, s10, 9
                  addi         sp, sp, 56
                  sltu         s3, s9, s4
                  sub          tp, s2, s2
47:               addi x16, x27, 0
47:               jalr x16, x16, 0
sub_3:            xor          t0, t4, s11
                  add          s5, a0, a6
                  addi         sp, sp, -32
                  auipc        a3, 474353
                  sw           s11, 4(sp)
                  sll          t0, a5, s1
                  sub          tp, t5, a2
                  xor          t2, sp, t1
                  and          t6, s9, a5
                  srl          s4, s11, zero
                  la           s3, sub_5
                  ori          s7, gp, -306
                  addi         a0, t6, 265
                  sra          zero, a7, s11
                  or           zero, t4, s4
                  xori         s11, s0, -644
                  addi         s3, s3, 853
                  add          s2, s9, a7
                  addi         a5, s1, -493
                  beq          s7, s8, sub_3_j8 #branch to jump instr
                  xori         s4, s0, 165
sub_3_j8:         jalr         s11, s3, -852 #jump sub_3 -> sub_5
                  sra          t1, tp, s7
                  nop
                  slti         t2, s4, 720
                  lui          a5, 532999
                  srai         a5, a2, 11
                  sub          t4, s9, s2
                  auipc        zero, 654080
                  srli         a4, s2, 15
                  addi         s10, s5, -403
                  srai         tp, s10, 1
sub_3_j9:         jal          s11, sub_6 #jump sub_3 -> sub_6
                  bltu         s1, t2, 4f
                  bne          a1, sp, 3f
                  blt          s11, a5, 20f
3:                ori          a4, s1, 1547
4:                srai         t4, s3, 16
                  beq          t0, s1, 13f
                  addi         a0, a5, 181
                  andi         t0, a3, 839
                  slti         gp, s4, -1608
                  nop
                  srai         t4, a7, 24
                  blt          t4, s7, 21f
                  auipc        s10, 1033568
13:               bge          s5, s10, 14f
14:               xor          a7, s10, s3
                  beq          s7, s8, 35f
                  sltu         a0, sp, s0
                  bge          t4, ra, 26f
                  bgeu         zero, a2, 26f
                  xor          s3, t5, s7
20:               add          a4, a1, s2
21:               nop
                  auipc        t4, 94855
                  bne          s9, t0, 27f
                  beq          t6, a5, 25f
25:               sltiu        a6, zero, -1809
26:               or           a1, t3, t5
27:               blt          s11, a4, 42f
                  srai         s0, a7, 28
                  xor          a5, s3, s11
                  slli         s9, tp, 26
                  beq          s5, tp, 51f
                  ori          tp, t2, -1856
                  xori         a0, ra, -98
                  or           a2, s3, s0
35:               auipc        s2, 557212
                  ori          s10, zero, 298
                  slli         a6, a6, 26
                  slli         s7, s11, 5
                  nop
                  slt          gp, t6, t4
                  sltiu        ra, t3, 1397
42:               srl          s4, s10, a3
                  bltu         s1, gp, 55f
                  slt          s2, a5, t6
                  bltu         t1, t5, 61f
                  sub          a7, a3, a2
                  auipc        gp, 254138
                  and          s0, a3, tp
                  slt          s0, t4, s5
                  slt          a1, sp, tp
51:               slti         tp, a5, 1684
                  xor          a0, a6, s6
                  xori         a2, a7, 1861
                  or           a1, tp, s8
55:               andi         a7, a2, -1182
                  srai         s1, a7, 14
                  bne          s1, t6, 76f
                  lui          t1, 193568
                  and          t4, s10, a4
                  lui          a1, 482098
61:               slli         a5, s9, 0
                  srli         s10, s7, 25
                  addi         t0, s0, -628
                  beq          t2, s4, 75f
                  bgeu         a1, a5, 66f
66:               xor          a1, t1, a7
                  srl          s2, s6, t5
                  auipc        t2, 745909
                  or           s2, t4, a4
                  sll          s2, s5, a0
                  blt          t4, s11, 77f
                  bltu         a1, s0, 76f
                  xor          s5, t0, a0
                  bne          a6, s6, 77f
75:               andi         s6, a0, -639
76:               addi         a2, s9, -1243
77:               slt          tp, t5, a1
                  addi         a5, s4, -1563
                  lw           s11, 4(sp)
                  sll          s0, s8, t4
                  srli         s3, s4, 7
                  addi         sp, sp, 32
                  nop
                  srai         s9, a2, 31
118:              addi x22, x27, 1
118:              jalr x22, x22, 0
sub_2:            srai         a7, a2, 1
                  and          t6, s8, s1
                  ori          s9, s10, 260
                  addi         sp, sp, -56
                  srai         a2, a7, 19
                  addi         a3, s1, 1723
                  auipc        s2, 868116
                  ori          tp, sp, 1688
                  slli         a1, ra, 7
                  sw           s11, 4(sp)
                  add          t0, t5, s8
                  and          t3, a4, s4
                  slti         s7, s6, 1438
                  lui          t0, 319222
                  xori         a6, gp, -907
                  la           a3, sub_4
                  addi         a3, a3, 96
                  sub          s5, s6, s4
                  srli         a6, a6, 28
sub_2_j5:         jalr         s11, a3, -96 #jump sub_2 -> sub_4
                  sra          zero, t2, s9
                  sltiu        s0, a1, -1243
                  la           t6, sub_3
                  nop
                  addi         t6, t6, -231
                  xori         zero, s0, 10
                  slt          a4, a1, s11
                  auipc        t4, 958361
                  bne          s6, sp, sub_2_j6 #branch to jump instr
                  srli         t1, t0, 3
                  srl          s9, gp, a6
sub_2_j6:         jalr         s11, t6, 231 #jump sub_2 -> sub_3
                  la           gp, sub_3
                  xori         s0, a7, -866
                  xori         tp, t6, 907
                  andi         a6, t0, -1236
                  srl          t4, s0, a3
                  addi         gp, gp, -734
                  or           t2, t2, t2
                  xori         a2, s6, -594
                  bne          tp, a6, sub_2_j7 #branch to jump instr
                  auipc        ra, 1019664
sub_2_j7:         jalr         s11, gp, 734 #jump sub_2 -> sub_3
                  sltu         a3, a7, s8
                  srai         a6, tp, 23
                  srai         a3, a0, 7
                  srai         s6, a3, 6
                  beq          s3, gp, 6f
                  sra          gp, s9, t2
6:                xori         t3, s0, 3
                  slt          s5, a4, s10
                  beq          a2, s2, 16f
                  bgeu         zero, s4, 20f
                  add          a1, a0, s11
                  ori          a5, a4, 407
                  addi         t3, s8, -1060
                  andi         t3, a5, -1184
                  or           a3, tp, t3
                  andi         a1, a7, 1117
16:               bgeu         s0, tp, 23f
                  bltu         s4, s0, 25f
                  lui          s7, 631040
                  slli         a7, t6, 30
20:               xor          a3, gp, a6
                  ori          gp, t2, 468
                  auipc        s3, 311112
23:               sra          s5, s4, a3
                  beq          s9, ra, 30f
25:               ori          s7, t1, 674
                  srli         s0, t1, 15
                  bltu         a6, t1, 44f
                  ori          t6, ra, -460
                  sra          t3, t4, s4
30:               sub          tp, tp, s11
                  slti         t3, s8, 1762
                  or           s4, a6, t0
                  andi         ra, t6, -1597
                  bge          s8, s4, 39f
                  slli         t2, ra, 29
                  sltiu        a2, s7, 547
                  nop
                  bge          s2, s7, 44f
39:               sra          gp, tp, s5
                  andi         a5, t1, 158
                  add          a2, t0, a5
                  lui          s4, 62742
                  srl          gp, zero, t5
44:               sltiu        gp, s2, -418
                  lui          s11, 660289
                  beq          s7, gp, 51f
                  xori         t6, t5, -1548
                  srai         t0, gp, 26
                  lui          s1, 508722
                  srai         t6, a4, 30
51:               bltu         a2, s1, 70f
                  slli         s11, t4, 1
                  nop
                  srl          s1, a3, s8
                  bge          zero, a6, 71f
                  or           t0, a5, s6
                  sll          a7, t3, a0
                  xor          t3, a4, s0
                  bge          s8, a7, 78f
                  add          s5, t2, t1
                  bltu         ra, t4, 75f
                  xori         t1, a7, -1152
                  slli         t4, gp, 24
                  bgeu         s10, a3, 69f
                  bltu         t6, s2, 75f
                  addi         s4, gp, -508
                  nop
                  ori          a4, a6, 860
69:               xor          s9, t2, t4
70:               srai         s9, t1, 2
71:               srai         s10, s10, 15
                  sll          a1, s1, a6
                  xor          t6, s8, s2
                  srl          t3, s5, s10
75:               slti         s0, t1, -51
                  nop
                  beq          s1, t6, 95f
78:               slli         t2, tp, 22
                  srli         a5, s6, 23
                  slli         s4, t6, 12
                  la           t1, region_1+1048 #start riscv_load_store_rand_instr_stream_0
                  lb           t3, -709(t1)
                  sb           s8, 901(t1)
                  sh           a6, -210(t1)
                  sw           a7, -52(t1)
                  lbu          s5, -172(t1)
                  lh           a5, 344(t1)
                  lb           a4, 374(t1)
                  sw           s8, -116(t1)
                  sb           s8, 507(t1)
                  lhu          zero, -50(t1)
                  sra          s10, s7, s8
                  srai         a5, t0, 27
                  sb           tp, -891(t1)
                  sb           a1, 305(t1)
                  sb           sp, -575(t1)
                  lh           s4, 376(t1)
                  lw           s3, -964(t1)
                  slli         s5, ra, 23
                  add          a2, ra, ra
                  sb           s6, -613(t1)
                  lb           a3, -980(t1)
                  sltiu        a3, s7, -1719
                  lbu          a1, 397(t1)
                  xori         s4, a1, -564
                  lh           s1, 348(t1)
                  andi         t0, a3, -2010
                  lb           a3, -881(t1)
                  sb           gp, -143(t1)
                  sh           tp, 950(t1)
                  lbu          s4, -3(t1)
                  andi         s0, a1, 422
                  sb           s1, 659(t1)
                  lb           s11, 83(t1)
                  lbu          a3, -793(t1)
                  add          t3, s10, sp
                  auipc        a6, 488069
                  lh           s3, 818(t1)
                  sh           t1, 32(t1) #end riscv_load_store_rand_instr_stream_0
                  nop
                  bge          s9, ra, 92f
                  srl          s5, s9, ra
                  srai         a0, a4, 3
                  and          s7, a7, s5
                  srli         s6, s10, 18
                  blt          s5, a4, 93f
                  sra          s4, a1, a1
                  or           s2, t0, a2
                  beq          a3, s6, 99f
                  slli         a5, a5, 22
92:               nop
93:               ori          tp, s0, -349
                  sra          s7, s10, a7
95:               nop
                  beq          t1, s10, 97f
97:               bge          s4, t5, 103f
                  blt          t3, t5, 111f
99:               slli         t0, s11, 3
                  sltu         zero, s10, t0
                  slt          s2, t6, sp
                  slt          ra, zero, s3
103:              andi         s5, s3, -852
                  sll          s4, ra, gp
                  sub          t2, ra, t2
                  beq          gp, t5, 125f
                  srli         s0, t1, 28
                  sub          s6, a2, a5
                  auipc        s2, 169127
                  bgeu         tp, t0, 117f
111:              addi         a5, s7, 1256
                  blt          a5, a4, 130f
                  add          t1, a7, ra
                  sll          a1, s0, t3
                  addi         s5, tp, 862
                  srl          a7, s2, s1
117:              sub          a6, s9, t1
                  or           t0, tp, ra
                  bge          s4, s4, 126f
                  bge          t4, s5, 136f
                  blt          t1, s3, 133f
                  slt          a6, s1, a1
                  beq          a4, gp, 129f
                  bgeu         s10, a1, 143f
125:              sll          ra, tp, t4
126:              slti         s4, a3, 1683
                  bltu         s10, t0, 135f
                  srai         t2, s4, 24
129:              bltu         s1, gp, 142f
130:              sll          t1, a0, a1
                  xori         t2, a3, -49
                  sltiu        a7, ra, -430
133:              slti         s4, s1, -1929
                  slt          s6, s6, t2
135:              bne          s6, t1, 145f
136:              blt          s4, s3, 153f
                  add          a4, s0, a7
                  slli         t1, s6, 7
                  slt          a0, s11, ra
                  bltu         s9, s3, 146f
                  sll          t2, t3, tp
142:              xori         a3, t4, -1216
143:              sra          gp, t5, t2
                  lui          s4, 97425
145:              nop
146:              xori         s11, a1, -462
                  srai         a3, t3, 31
                  slti         s7, a7, -417
                  bltu         a2, s9, 156f
                  add          t3, s9, a5
                  sltu         a4, a3, s2
                  add          t0, s4, t1
153:              bgeu         s1, s4, 169f
                  sltu         a7, s3, t0
                  andi         s3, a7, -892
156:              bne          t1, a1, 168f
                  add          s9, ra, s7
                  srl          a3, a0, zero
                  andi         a3, sp, 798
                  srli         zero, s11, 0
                  bne          s2, s1, 166f
                  bge          s1, a5, 178f
                  bge          a6, tp, 182f
                  sltu         a1, s3, t2
                  bge          a5, a1, 167f
166:              add          s3, a7, s10
167:              bge          ra, a1, 181f
168:              addi         ra, a5, -1593
169:              slti         ra, s10, -774
                  sll          s11, a5, s9
                  addi         ra, sp, 637
                  andi         s4, zero, -418
                  srai         s10, s3, 19
                  xori         a3, t2, 16
                  lui          s1, 964738
                  andi         s3, zero, 1061
                  xori         s9, a1, 599
178:              sltu         s0, sp, ra
                  auipc        s2, 492958
                  bltu         s3, s11, 181f
181:              xor          tp, a6, a0
182:              slti         s3, t0, 1517
                  ori          a7, a2, 1308
                  sll          s7, s11, sp
                  srl          t3, a6, ra
                  bltu         s1, t3, 204f
                  slli         t6, sp, 30
                  slt          a2, s10, s1
                  sub          a0, t3, a0
                  and          tp, s0, sp
                  srai         s6, ra, 5
                  auipc        s11, 563329
                  lui          a3, 178699
                  sltiu        s11, s6, 2034
                  add          t3, s1, s7
                  slti         t4, t6, -246
                  srli         s3, s0, 22
                  sltu         a2, s6, s0
                  addi         a0, a6, -1368
                  bgeu         a0, t3, 206f
                  sltiu        a7, ra, 588
                  lui          a3, 167028
                  lui          s2, 302003
204:              andi         s7, zero, -1856
                  slti         t3, tp, -2004
206:              beq          sp, sp, 213f
                  addi         a2, s5, -769
                  andi         t1, s4, -663
                  addi         a1, s0, 495
                  bgeu         s10, s8, 218f
                  srai         s4, s7, 24
                  slti         s6, t1, 195
213:              bne          zero, sp, 218f
                  bgeu         s10, t0, 218f
                  sltiu        s3, gp, -1495
                  bge          tp, s5, 218f
                  slti         s2, zero, 1013
218:              or           s10, s4, s7
                  sltu         s3, t4, s9
                  sltiu        a4, t4, -1244
                  andi         a4, s2, -1806
                  nop
                  lw           s11, 4(sp)
                  xori         s3, s7, -813
                  addi         sp, sp, 56
                  sltiu        a4, t4, -717
309:              addi x11, x27, 0
309:              jalr x11, x11, 0
sub_7:            bltu         a4, a4, sub_7_stack_p
                  sltu         tp, s8, t0
                  ori          t3, tp, 178
sub_7_stack_p:    addi         sp, sp, -24
                  xori         t4, t3, -647
                  lui          t1, 307775
                  and          ra, t4, s2
                  slli         a5, a5, 31
                  sltu         t4, a6, a2
                  or           s1, a1, s5
                  sw           s11, 4(sp)
                  or           t4, sp, sp
                  or           s2, gp, a5
                  sll          s2, s5, s10
                  beq          t4, s6, 4f
                  beq          s3, zero, 10f
4:                sra          s3, s6, a7
                  beq          s9, zero, 10f
                  lui          s1, 504610
                  add          a0, a3, a4
                  xor          a1, t4, t1
                  beq          gp, a0, 10f
10:               slti         gp, a6, -455
                  srli         a6, t0, 16
                  lw           s11, 4(sp)
                  ori          a7, t3, 276
                  xor          s1, s2, t4
                  add          a1, zero, zero
                  srai         t3, a3, 0
                  addi         sp, sp, 24
                  srai         s3, a7, 6
31:               addi x20, x27, 0
31:               jalr x20, x20, 0
sub_8:            sll          t4, t2, a2
                  xori         a6, gp, 1444
                  auipc        a1, 604104
                  addi         sp, sp, -28
                  add          s3, t0, ra
                  sw           s11, 4(sp)
                  srl          a3, tp, a1
                  add          t1, s11, s7
                  slli         s11, a5, 16
                  sltiu        s4, a7, 763
                  la           s3, sub_9
                  ori          s4, gp, -1524
                  xor          s11, sp, ra
                  addi         s3, s3, -181
                  slt          t4, s5, gp
sub_8_j13:        jalr         s11, s3, 182 #jump sub_8 -> sub_9
                  la           a4, sub_9
                  andi         gp, t4, 15
                  add          t2, s6, a6
                  nop
                  addi         a4, a4, -283
                  sra          a2, t3, t3
                  ori          a6, a6, -456
                  sll          a3, s8, s9
                  or           ra, sp, t2
                  bge          s10, a4, sub_8_j15 #branch to jump instr
                  sub          tp, s9, t0
                  or           a1, t0, t3
                  sll          s11, s10, t6
sub_8_j15:        jalr         s11, a4, 284 #jump sub_8 -> sub_9
                  bne          tp, s3, 5f
                  slt          s2, t6, s5
                  srai         t2, t6, 1
                  nop
                  blt          ra, s3, 6f
5:                srl          a7, t6, a2
6:                srl          tp, t4, s10
                  bgeu         zero, s10, 25f
                  bne          s4, s11, 9f
9:                and          ra, s0, a3
                  auipc        s5, 269342
                  bne          a6, tp, 16f
                  andi         a1, t3, -155
                  bge          s1, ra, 18f
                  bltu         s1, sp, 22f
                  xori         t4, a1, 848
16:               addi         s11, a7, 808
                  srli         ra, a2, 6
18:               sra          zero, s7, a6
                  bltu         s6, a4, 31f
                  bltu         a4, t0, 30f
                  ori          s5, s0, 1730
22:               nop
                  bge          s10, sp, 41f
                  andi         tp, t2, -713
25:               sltiu        s7, tp, -39
                  or           s9, a1, s4
                  or           s6, s7, t0
                  sra          a4, zero, s9
                  srl          a2, s8, s6
30:               xori         t4, ra, 1070
31:               and          t4, zero, a3
                  andi         gp, a0, -1699
                  bltu         a6, t3, 53f
                  bne          a5, t1, 37f
                  slli         a7, a0, 17
                  bge          t3, t6, 54f
37:               srl          tp, s2, s8
                  sra          a0, s9, s5
                  sll          s10, sp, t6
                  srli         a7, a6, 22
41:               andi         s6, a3, -394
                  sltu         ra, zero, s0
                  andi         s11, s3, 1214
                  andi         a3, s2, -1135
                  or           s0, sp, s0
                  slt          a4, t3, s3
                  ori          a0, s7, -1847
                  auipc        a2, 499422
                  lui          a1, 956488
                  sltiu        s7, t1, 836
                  sll          s5, s6, a7
                  srai         s1, a6, 28
53:               lui          a6, 489348
54:               bne          s6, s8, 56f
                  sra          a0, a2, a5
56:               nop
                  sra          t4, t6, a1
                  bgeu         a5, tp, 65f
                  bltu         gp, a4, 72f
                  slt          a0, t3, a2
                  srl          s4, s4, s5
                  srai         tp, s1, 13
                  sll          s0, s8, a1
                  slli         a5, s8, 20
65:               sra          a0, a6, s5
                  sll          s3, t3, s11
                  bge          s4, t0, 86f
                  add          a4, ra, t4
                  slti         t0, t4, 145
                  auipc        a3, 715567
                  sra          a3, t0, tp
72:               auipc        ra, 537498
                  lui          gp, 1012049
                  addi         s5, a4, 1266
                  bgeu         a7, s1, 81f
                  sltu         gp, ra, s6
                  srli         t3, s8, 21
                  addi         s6, t1, 1125
                  ori          a3, a3, 1884
                  blt          t1, zero, 99f
81:               addi         s2, s0, 1828
                  and          t4, s1, s3
                  bge          t3, a6, 89f
                  auipc        ra, 905968
                  sltu         a5, sp, s3
86:               ori          s6, gp, 457
                  auipc        s7, 566061
                  addi         a1, ra, -1923
89:               bltu         a4, t6, 107f
                  la           t1, region_1+421 #start riscv_load_store_rand_instr_stream_0
                  sub          s11, a7, a1
                  sltu         a1, t1, sp
                  lb           a4, -110(t1)
                  lh           s1, -167(t1)
                  lb           t4, 230(t1)
                  lb           a5, 135(t1)
                  nop
                  xor          t2, tp, s9
                  sb           a4, 217(t1)
                  lb           a2, 120(t1)
                  lbu          t6, 113(t1)
                  andi         zero, s2, 658
                  slti         zero, gp, 936
                  xor          a3, s8, zero
                  andi         s6, t2, -1572
                  srai         a4, s3, 19
                  lhu          t2, -25(t1)
                  lbu          a1, 201(t1)
                  lb           gp, 215(t1)
                  sb           s9, 232(t1)
                  slti         a3, s11, -1428
                  sb           s9, 200(t1)
                  sb           s3, -94(t1)
                  sb           s1, -68(t1)
                  sb           a7, 24(t1)
                  lbu          s4, -29(t1)
                  sh           s4, -163(t1)
                  xor          gp, s1, t2
                  ori          a1, s9, -1375
                  slt          s5, a5, t4
                  sltiu        s3, a7, -824
                  srli         a0, s9, 0
                  sltiu        t3, s0, 1103
                  sb           s10, -89(t1)
                  sltu         a6, s1, ra
                  add          ra, s11, t5
                  srli         t2, s3, 14
                  slli         a3, s2, 28
                  slli         a4, a1, 27
                  lui          s10, 227348
                  sb           sp, 140(t1)
                  sb           s7, -90(t1)
                  lbu          t6, -51(t1)
                  sb           s5, 187(t1)
                  lhu          a4, 141(t1) #end riscv_load_store_rand_instr_stream_0
                  slt          s2, s8, s9
                  bltu         zero, a6, 105f
                  auipc        a6, 801100
                  xor          zero, t5, t4
                  xori         zero, sp, -1163
                  srl          s3, tp, s10
                  srl          s0, s11, t4
                  slti         a6, tp, 1683
                  auipc        s11, 799822
99:               sltiu        a7, t5, -1367
                  srai         a3, t2, 30
                  sub          a0, t2, s1
                  srl          a5, s4, s10
                  slti         s0, t1, 442
                  slt          tp, zero, t4
105:              srai         s9, s5, 15
                  add          s9, s2, a1
107:              ori          s1, s0, -1319
                  srli         tp, t1, 20
                  sltiu        t2, t4, -805
                  sra          t6, ra, tp
                  slti         zero, s10, 920
                  beq          ra, zero, 131f
                  bltu         a0, a6, 126f
                  auipc        s5, 700497
                  srli         a6, s0, 22
                  srai         s9, a5, 26
                  bltu         s0, a3, 134f
                  andi         s11, t6, -452
                  sra          zero, s6, sp
                  bne          t2, s4, 126f
                  bge          s4, s2, 128f
                  sltu         a2, s10, a5
                  la           s1, sub_10
                  lui          a3, 300557
                  slti         s2, s9, -1173
                  addi         s1, s1, 1015
                  lui          s7, 125871
                  addi         s3, s9, -240
sub_8_j14:        jalr         s11, s1, -1015 #jump sub_8 -> sub_10
                  slli         t4, zero, 5
                  sub          a4, s10, zero
                  bne          s10, s0, 144f
                  auipc        s11, 16415
126:              sll          s5, s11, s11
                  sltu         t6, s8, s0
128:              bne          s2, a5, 134f
                  bltu         gp, s10, 148f
                  xori         s5, s8, 1360
131:              sltu         gp, s2, s2
                  nop
                  bgeu         a5, s0, 139f
134:              bge          gp, ra, 147f
                  bne          a6, s10, 136f
136:              nop
                  bge          s11, t6, 149f
                  xor          t4, zero, t1
139:              sll          gp, s11, t1
                  slt          s4, tp, t1
                  slli         s7, s0, 30
                  sltu         t6, a5, zero
                  sll          a5, s3, t4
144:              ori          s2, s2, 1563
                  bltu         tp, sp, 164f
                  nop
147:              bne          s9, s3, 165f
148:              or           a4, s11, s5
149:              bge          t0, s9, 155f
                  srl          a0, s1, t2
                  sll          s10, ra, t2
                  addi         s4, s9, -1716
                  sll          t4, a6, s5
                  slti         gp, t5, 893
155:              slti         s11, s6, 494
                  lui          s1, 820238
                  bgeu         a7, a2, 165f
                  sll          ra, gp, s3
                  xor          s11, s7, zero
                  addi         a4, s1, -966
                  andi         s10, t4, 409
                  bltu         t3, s9, 164f
                  srl          s2, s8, a6
164:              bne          tp, t5, 178f
165:              srl          a6, s0, zero
                  xori         s9, a4, -674
                  bge          s4, a1, 172f
                  bltu         a5, s9, 171f
                  srl          s5, s3, a7
                  srl          zero, tp, a4
171:              add          t3, gp, s6
172:              andi         s9, a5, 292
                  sub          t3, a6, s6
                  andi         t0, s6, 323
                  bne          s7, zero, 180f
                  andi         s0, s5, -994
                  and          s4, a7, s11
178:              srai         a7, s6, 23
                  slti         a7, ra, 1686
180:              lui          a4, 697325
                  and          s10, s6, a6
                  and          t6, s6, s1
                  sltu         s2, a6, tp
                  slti         a2, s3, -1062
                  beq          a5, s2, 198f
                  addi         s3, t1, 14
                  add          s1, s7, s1
                  srl          s3, tp, a4
                  sub          s9, s11, a3
                  bne          s3, s7, 192f
                  and          a7, a7, s5
192:              add          s10, s9, a5
                  sra          t2, s10, s10
                  xori         a5, a6, 1660
                  sltiu        s2, tp, 339
                  bgeu         t0, s7, 216f
                  nop
198:              slli         s7, a7, 18
                  or           s11, s6, t2
                  bne          s9, s6, 206f
                  lui          t0, 488452
                  beq          a6, t4, 220f
                  addi         t1, s8, 830
                  beq          s1, s0, 214f
                  slli         zero, s3, 24
206:              or           t4, a5, a7
                  sltu         a4, ra, s7
                  srl          t6, t4, a7
                  blt          t4, ra, 228f
                  bge          s6, s5, 230f
                  slti         s1, t2, 69
                  bne          gp, s11, 231f
                  bgeu         s0, s3, 218f
214:              bgeu         t6, a1, 232f
                  add          a2, zero, a4
216:              sra          a6, t4, a2
                  sltiu        s3, s10, 103
218:              bltu         a6, t5, 225f
                  sltu         s11, t2, a0
220:              slt          gp, t6, s3
                  slt          s9, s6, t6
                  sra          t4, a3, a0
                  beq          t5, s3, 230f
                  slti         t2, tp, -396
225:              blt          a1, s4, 242f
                  sltiu        s10, a2, -1357
                  blt          t0, s9, 233f
228:              sub          s4, a1, a4
                  sltu         a4, s3, t5
230:              nop
231:              srai         zero, a7, 24
232:              and          s5, a1, s9
233:              slt          t4, t6, s5
                  srli         s9, a1, 9
                  ori          a6, a3, 2011
                  bltu         s5, a0, 246f
                  xor          s2, t4, ra
                  sltiu        t3, s11, -1302
                  or           s5, s2, s3
                  beq          s1, tp, 246f
                  sltu         s5, t4, s6
242:              bne          a7, a6, 246f
                  slt          t6, s2, zero
                  slli         s6, t0, 2
                  srai         t6, a1, 12
246:              auipc        t4, 197586
                  sltu         a6, a3, t5
                  nop
                  lw           s11, 4(sp)
                  slti         s7, t4, -1837
                  sra          s5, a7, s3
                  addi         sp, sp, 28
                  srai         t2, s8, 1
338:              addi x29, x27, 0
338:              jalr x29, x29, 0
sub_5:            blt          t2, a5, sub_5_stack_p
                  or           t4, a4, s5
                  sltiu        a4, s9, -289
                  nop
sub_5_stack_p:    addi         sp, sp, -40
                  sw           s11, 4(sp)
                  or           a4, a4, s4
                  auipc        ra, 132543
                  or           a7, t1, zero
                  addi         s4, s10, 1137
                  sub          s3, s11, s6
                  lui          tp, 482440
                  la           gp, sub_8
                  addi         gp, gp, -181
                  and          s3, a0, ra
                  ori          a0, s3, 891
sub_5_j11:        jalr         s11, gp, 182 #jump sub_5 -> sub_8
                  srai         a7, t6, 26
                  bne          a2, t1, 2f
2:                lui          s11, 8060
                  or           t2, s4, s8
                  bgeu         s5, sp, 19f
                  slt          s2, a7, zero
                  ori          s5, s10, 342
                  blt          s10, a6, 26f
                  sltu         a4, t5, a3
                  sltiu        s3, s1, 904
                  bne          a0, s1, 26f
                  and          zero, a1, tp
                  sltiu        s3, a5, -1551
                  beq          a0, s0, 25f
                  sll          s0, s9, a0
                  sub          zero, s7, ra
                  blt          t2, s5, 26f
                  slt          s9, s3, sp
                  xor          t6, t6, s3
19:               slli         a1, a6, 20
                  xori         a3, zero, 1979
                  lui          ra, 969045
                  bge          a4, t0, 36f
                  addi         s7, a6, 696
                  bne          a0, t4, 40f
25:               slli         a5, s11, 0
26:               bltu         s2, s3, 28f
                  beq          t3, s5, 46f
28:               bgeu         t3, s5, 48f
                  sub          t6, s10, t5
                  bne          t0, t0, 34f
                  add          a5, ra, s8
                  bge          a4, t2, 40f
                  and          s9, zero, s8
34:               andi         a3, s5, 1769
                  andi         a3, s10, -967
36:               sltu         a1, a4, sp
                  sltiu        a1, a6, 1797
                  bne          a5, s7, 58f
                  srai         s1, t6, 0
40:               bge          s5, sp, 43f
                  bge          t0, t1, 48f
                  srai         s9, a7, 3
43:               slt          s1, tp, s8
                  or           a3, t3, t3
                  blt          s9, s11, 56f
46:               slti         s10, t3, 862
                  srli         t3, a1, 6
48:               lui          s5, 132618
                  sra          s6, zero, t0
                  xor          t2, s1, t5
                  or           s1, t2, s8
                  ori          zero, a6, 476
                  xor          s7, a7, a4
                  bne          a4, s10, 60f
                  bgeu         t1, s10, 68f
56:               srai         zero, s2, 28
                  bge          t4, s11, 61f
58:               srli         t3, sp, 26
                  bge          s8, t5, 64f
60:               lui          gp, 970217
                  la           s7, region_1+100 #start riscv_load_store_rand_instr_stream_0
                  and          t2, a6, t5
                  lb           s6, 47(s7)
                  add          s4, s5, a1
                  srli         a5, a7, 11
                  slt          t6, sp, s4
                  sh           s4, 42(s7)
                  sb           s10, -32(s7)
                  ori          a6, t0, 595
                  lhu          s2, -6(s7)
                  sub          tp, s7, s5
                  sltu         a2, t6, t3
                  xori         t2, sp, 11
                  lbu          zero, -55(s7)
                  nop
                  lb           a1, -33(s7)
                  slti         a4, s7, 2
                  nop
                  sltu         s6, s4, t3
                  sh           s2, 50(s7)
                  lb           s0, -59(s7)
                  lb           s10, 41(s7)
                  lh           a7, 12(s7)
                  lb           zero, 33(s7)
                  ori          t1, a3, 56
                  sw           t3, 20(s7)
                  lbu          s6, 61(s7)
                  lbu          a2, -7(s7)
                  lbu          s3, 45(s7)
                  lbu          gp, 18(s7) #end riscv_load_store_rand_instr_stream_0
61:               slt          s2, s5, a5
                  sub          t2, a3, sp
                  beq          a1, s0, 82f
64:               sltiu        a1, gp, -1472
                  xori         s9, a6, 366
                  nop
                  nop
68:               xor          gp, s9, t3
                  addi         a1, s5, 206
                  andi         ra, s7, 1114
                  srli         a4, a6, 23
                  srli         a5, a7, 5
                  srl          t0, t5, a4
                  lui          a0, 288090
                  sltiu        s1, s11, 686
                  sll          s11, tp, t1
                  xor          s9, s3, a1
                  lui          t6, 13048
                  bltu         a6, s10, 96f
                  srl          s1, a5, s3
                  bge          s11, a6, 88f
82:               or           ra, s5, a4
                  slt          t0, a5, s5
                  nop
                  blt          t2, a3, 98f
                  addi         a6, s7, -529
                  auipc        s6, 272429
88:               andi         s5, a6, -107
                  and          s2, s1, t6
                  sll          a4, s6, s11
                  nop
                  sltu         s0, t2, s6
                  and          s3, s8, s8
                  srl          a2, a4, s10
                  slli         gp, s11, 7
96:               auipc        a7, 720501
                  auipc        t4, 305508
98:               slli         s2, t0, 29
                  sltiu        a6, a4, 347
                  lui          tp, 276733
                  sll          t2, t0, sp
                  bge          s8, s2, 121f
                  srai         a7, s0, 9
                  beq          s7, zero, 117f
                  srai         tp, s10, 30
                  xor          t4, s8, s7
                  srli         s9, zero, 11
                  sltiu        a5, gp, -528
                  sltu         tp, a3, t6
                  bne          a2, s0, 111f
111:              sltu         s1, s6, t2
                  xor          ra, zero, sp
                  bge          a1, sp, 116f
                  bge          t3, s2, 128f
                  xor          a6, s5, gp
116:              srl          s3, t1, t5
117:              beq          a2, a2, 136f
                  bgeu         sp, s2, 119f
119:              srl          s4, zero, sp
                  sltu         a3, t2, a1
121:              xori         s5, a4, -470
                  sll          s1, t1, a0
                  bne          t4, s8, 143f
                  sll          a2, a3, t1
                  sltu         s2, tp, gp
                  slli         s11, a6, 11
                  slt          s0, s2, a1
128:              or           s0, a6, s8
                  sll          t0, tp, a4
                  srli         t1, s2, 7
                  sltu         zero, tp, s8
                  sltu         a1, s9, s11
                  sub          t0, t0, s1
                  or           s2, s10, t2
                  add          t6, a3, t4
136:              bne          gp, t6, 147f
                  ori          s10, s4, 39
                  sra          s3, s3, gp
                  srai         s10, a6, 4
                  addi         a6, a7, -1846
                  slti         s5, s3, -1579
                  sra          s7, a5, s10
143:              srai         s2, a2, 1
                  add          a0, s11, ra
                  xori         s9, s1, 553
                  bgeu         s8, s10, 148f
147:              xori         a4, t4, -298
148:              sra          a5, a6, s10
                  or           s9, s9, t3
                  bne          a3, a1, 163f
                  or           s0, a2, s5
                  addi         ra, a5, -1126
                  xori         a7, s11, 695
                  ori          t6, s5, 136
                  srli         s2, zero, 21
                  blt          s1, a6, 168f
                  andi         t0, a2, 633
                  xori         s10, s9, 1936
                  slt          t6, s9, t3
                  sra          t4, s4, s1
                  nop
                  slti         a1, a2, 295
163:              bge          t2, s6, 168f
                  bgeu         a7, sp, 168f
                  slt          a7, s11, s3
                  sub          s4, a2, a3
                  bgeu         t1, a1, 168f
168:              andi         s6, s11, 1662
                  xori         a4, s11, 1900
                  nop
                  sra          a2, t4, s3
                  lw           s11, 4(sp)
                  sltiu        a2, s7, 1392
                  slt          a3, a7, sp
                  addi         sp, sp, 40
                  srl          s9, s9, s0
224:              addi x4, x27, 0
224:              jalr x4, x4, 0
sub_10:           srl          t2, zero, ra
                  blt          gp, s8, sub_10_stack_p
                  srl          s0, gp, a6
sub_10_stack_p:   addi         sp, sp, -12
                  lui          a6, 68627
                  sw           s11, 4(sp)
                  sra          s5, s3, s1
                  nop
                  la           s10, region_0+1628 #start riscv_load_store_rand_instr_stream_1
                  addi         s6, a7, -1540
                  sw           ra, -148(s10)
                  sltu         t3, gp, s1
                  sb           s9, -103(s10)
                  lb           s5, 139(s10)
                  nop
                  sra          s3, a5, a1
                  slt          ra, t1, a2
                  andi         tp, ra, -1132
                  xori         t0, s1, -342
                  lbu          s9, -139(s10)
                  lw           s1, -144(s10)
                  lb           a4, -37(s10)
                  slt          ra, tp, s8
                  sra          s3, a4, t3
                  lh           s5, 38(s10)
                  slti         a7, s6, -1490
                  sb           t5, -143(s10)
                  sub          t3, tp, a4
                  slti         t2, ra, -1658
                  ori          t1, t3, -177
                  nop
                  sw           s10, 164(s10)
                  lb           zero, 19(s10)
                  sra          tp, t5, a3
                  auipc        ra, 375176
                  sra          a1, t4, t5
                  sra          t2, s3, a7
                  auipc        a5, 617489
                  srl          t0, t0, a0
                  lb           t2, -133(s10)
                  auipc        tp, 450606
                  sb           s4, 70(s10)
                  lbu          a1, 94(s10)
                  sltiu        t0, a6, -1131
                  lhu          t0, -4(s10)
                  ori          s4, s11, -1685
                  addi         s9, a1, 1868
                  sltiu        s4, s4, 1640
                  sltiu        a0, t2, -1381
                  ori          s5, sp, -557
                  xor          ra, gp, s6
                  lb           s5, -197(s10)
                  lbu          tp, -213(s10)
                  sb           t4, 147(s10)
                  ori          s2, t6, -761
                  or           a1, s11, t4
                  lb           s0, 131(s10) #end riscv_load_store_rand_instr_stream_1
                  sll          t0, a7, a3
                  slt          s5, s7, tp
                  blt          a1, s1, 17f
                  or           s0, a2, t1
                  srl          t1, t1, sp
                  bltu         a2, a5, 16f
                  lui          s5, 14271
                  sub          a6, s1, a1
                  add          s7, t6, t1
                  xori         t1, s2, 12
                  and          s10, s10, a4
                  nop
                  sltiu        a6, s2, -421
                  bgeu         t2, gp, 21f
                  bne          s9, a4, 16f
                  sub          a6, t3, a4
16:               slti         zero, a2, 555
17:               auipc        s1, 824432
                  add          s5, gp, t4
                  sltu         a0, t4, s7
                  srli         tp, s9, 9
21:               bltu         sp, t2, 35f
                  xori         s0, s6, -1271
                  xor          s7, s10, t5
                  sltu         zero, s5, gp
                  bltu         a3, t1, 36f
                  bge          s5, s1, 33f
                  slli         s1, t5, 4
                  auipc        a1, 342419
                  blt          s10, s11, 33f
                  or           s1, s9, a1
                  xor          s11, a3, tp
                  sub          s2, s10, sp
33:               lui          s9, 346218
                  add          t2, s10, a1
35:               sra          s1, zero, a4
36:               bne          zero, ra, 44f
                  bltu         a3, gp, 51f
                  slli         a4, t5, 0
                  srai         a4, t5, 15
                  beq          s1, zero, 42f
                  sra          s9, t4, a6
42:               auipc        t2, 748584
                  bge          s5, a4, 50f
44:               andi         s7, s7, -783
                  andi         s0, s8, -1162
                  bgeu         s2, t0, 65f
                  slti         t0, sp, -1891
                  blt          t0, t3, 63f
                  xori         s7, t4, -846
50:               ori          t4, s11, 1946
51:               slt          t4, zero, s1
                  blt          t2, t4, 53f
53:               bgeu         t5, a4, 64f
                  slt          s7, s1, a2
                  slli         a2, t0, 24
                  andi         s0, a2, -1024
                  nop
                  auipc        t2, 73331
                  sub          t2, gp, sp
                  bne          a3, s5, 61f
61:               sra          s4, t1, a4
                  bne          tp, s6, 71f
63:               and          a7, s3, a1
64:               andi         a4, s3, -1738
65:               andi         s4, t1, 243
                  lui          ra, 294229
                  srli         a5, t1, 11
                  sra          s4, tp, gp
                  bne          a0, t4, 74f
                  or           s6, t0, gp
71:               bge          a7, a6, 90f
                  xori         a5, s11, -1278
                  sll          s5, sp, s4
74:               beq          ra, a4, 93f
                  lui          t4, 381564
                  add          s6, a1, a0
                  and          s7, ra, t4
                  slt          s6, s8, s3
                  blt          a1, t6, 92f
                  srl          t4, t1, s0
                  blt          t5, s10, 84f
                  slt          t3, a5, s3
                  auipc        s11, 554245
84:               xori         t3, sp, -883
                  blt          a5, s4, 93f
                  sll          t4, s6, a5
                  xori         a3, s7, -1527
                  bne          s7, s3, 91f
                  sub          tp, t0, gp
90:               bne          t0, a0, 110f
91:               slli         s10, t5, 23
92:               blt          ra, s2, 104f
93:               add          a5, a0, sp
                  nop
                  bne          s5, t4, 99f
                  sltu         s9, s8, a7
                  blt          s4, s10, 110f
                  slti         s3, gp, -594
99:               beq          gp, t2, 105f
                  sltiu        a3, s1, -933
                  or           t4, tp, s6
                  or           t3, t5, s7
                  xor          gp, a1, s2
104:              srl          tp, a4, a2
105:              bne          s4, s3, 113f
                  slli         t0, tp, 15
                  sltu         zero, a4, s2
                  srl          s7, s4, s6
                  addi         t3, t3, 410
110:              nop
                  bltu         sp, zero, 120f
                  bge          s4, a6, 131f
113:              add          s4, s6, t1
                  and          t3, t6, a1
                  bgeu         sp, a1, 116f
116:              bgeu         s8, a1, 123f
                  or           t1, t4, tp
                  xor          t2, t5, s7
                  slti         s7, s1, 590
120:              bgeu         ra, t2, 133f
                  sub          a0, t0, s6
                  slli         t6, s1, 24
123:              srai         t1, t5, 19
                  add          s5, a6, a1
                  sub          s9, s7, a0
                  or           a5, t4, s0
                  or           gp, a4, a7
                  sltiu        t3, s8, -1902
                  sra          a3, s7, ra
                  slli         s3, t1, 27
131:              addi         t3, sp, -842
                  srli         a4, tp, 2
133:              blt          a2, t5, 140f
                  slli         tp, t5, 11
                  ori          s0, s8, -1429
                  slli         tp, s6, 29
                  add          s10, s10, a7
                  andi         t1, t4, -1974
                  sltiu        a3, a2, 1830
140:              add          a0, s3, t6
                  srai         s5, a2, 13
                  nop
                  blt          s8, t4, 146f
                  ori          s1, s11, -1353
                  or           tp, s2, s2
146:              or           gp, t6, t0
                  xori         s6, gp, 803
                  slli         a4, a4, 27
                  slti         a3, a5, -592
                  sll          zero, s7, s4
                  or           s7, a4, s9
                  bne          sp, s2, 163f
                  beq          a3, t0, 161f
                  sll          s5, s4, t3
                  addi         t4, s6, 1750
                  sltu         a0, t1, s11
                  ori          gp, tp, -527
                  sra          a5, s9, t6
                  addi         gp, gp, -2021
                  and          t3, s10, t5
161:              sll          s4, t4, a7
                  nop
163:              ori          zero, s4, 1536
                  srl          t6, a7, t5
                  add          a0, a2, s3
                  srli         s0, a3, 0
                  sltiu        a7, a7, -1258
                  bltu         s4, s10, 179f
                  auipc        s5, 240294
                  nop
                  andi         a3, t3, 1894
                  add          a5, a7, gp
                  sltu         a5, s9, s0
                  lui          a5, 345298
                  sub          s9, s11, s1
                  lui          s1, 987902
                  srli         tp, t5, 24
                  sll          s1, a1, a6
179:              bgeu         s3, s5, 190f
                  bne          zero, t4, 194f
                  sra          a1, t3, a7
                  la           s9, region_0+1072 #start riscv_load_store_rand_instr_stream_0
                  lb           a7, -22(s9)
                  or           tp, t4, s10
                  sub          tp, a6, s5
                  sh           a7, 34(s9)
                  sb           s9, -15(s9)
                  addi         t2, s2, 442
                  sra          s3, s3, tp
                  lui          a1, 614425
                  lhu          t4, -22(s9)
                  srli         t3, s7, 15
                  slt          ra, s7, zero
                  sb           a5, -9(s9)
                  add          a7, a4, s1
                  lbu          s4, 5(s9)
                  sra          a3, t6, s9
                  lbu          s2, 27(s9)
                  srl          a3, ra, tp
                  sltu         s11, t0, s1
                  lb           gp, 43(s9)
                  sb           s10, 21(s9)
                  srli         a2, a4, 21
                  add          t0, tp, t1
                  slti         s2, s3, 820
                  srai         a3, a4, 13
                  sll          s4, s9, s4
                  sll          zero, t4, sp
                  sltiu        a4, s1, 1351
                  sb           ra, 21(s9)
                  addi         s11, t6, -59
                  lui          a0, 957226
                  sb           t1, 47(s9)
                  lb           a0, 26(s9)
                  lhu          t6, 48(s9)
                  sb           s1, 61(s9)
                  slli         zero, s4, 31
                  lh           a4, 10(s9)
                  sltiu        s5, ra, 503
                  sb           a6, -47(s9)
                  sltu         t2, tp, zero
                  srl          t6, a5, s7
                  nop
                  lhu          gp, 12(s9) #end riscv_load_store_rand_instr_stream_0
                  andi         tp, a1, 756
                  addi         s3, a3, -1509
                  xori         a5, t0, 133
                  andi         t4, a5, -1366
                  auipc        s10, 133736
                  ori          s11, s1, 316
                  xor          t3, s4, s8
                  srl          t3, a7, t0
190:              sll          a6, s8, s1
                  sub          s11, a2, s5
                  andi         gp, tp, -1948
                  slt          a2, s10, a3
194:              blt          gp, t3, 199f
                  auipc        t4, 913756
                  sltiu        zero, a3, -1367
                  sub          s6, a6, s2
                  srai         t4, s5, 0
199:              nop
                  srl          s6, s0, tp
                  nop
                  sll          gp, a5, a3
                  addi         s5, s2, 465
                  beq          s10, a3, 210f
                  xori         t1, s7, 1509
                  srli         t0, a2, 18
                  or           a0, s4, t3
                  ori          zero, a6, 1921
                  blt          s3, ra, 222f
210:              addi         s1, t2, -210
                  sll          s2, t0, a0
                  sra          s3, a0, sp
                  bgeu         a3, s9, 233f
                  xori         gp, s1, 929
                  bge          a4, t6, 219f
                  srl          s3, ra, s0
                  bltu         s11, s5, 232f
                  nop
219:              srai         a0, tp, 4
                  xori         ra, s11, 1932
                  srl          s6, s1, a5
222:              sltiu        t1, s5, -1949
                  srai         s5, s7, 30
                  srli         s0, ra, 3
                  bltu         a7, s11, 228f
                  bltu         s0, gp, 234f
                  sll          s3, s11, a5
228:              add          s6, a2, s11
                  bge          sp, sp, 233f
                  sub          a1, s11, s5
                  blt          s0, s3, 243f
232:              bne          s6, s2, 234f
233:              lui          s5, 956282
234:              bgeu         a2, s9, 253f
                  slli         s5, t2, 24
                  sltiu        s10, s8, -1218
                  slti         s7, a1, 558
                  addi         t3, s4, 1425
                  or           a4, t6, sp
                  sltu         s2, t1, s0
                  sltiu        s2, t4, 1140
                  srai         s6, s0, 0
243:              add          t4, a4, t3
                  slti         s7, s2, -1326
                  or           tp, a4, t5
                  addi         t6, a2, 416
                  blt          t1, a0, 249f
                  sra          a6, s4, t1
249:              xor          s3, s11, s9
                  xor          s4, t6, t2
                  xor          s9, a2, a4
                  slt          s6, s2, a5
253:              lui          tp, 340532
                  blt          t4, t3, 269f
                  sltu         a4, s0, s1
                  bne          t1, a3, 257f
257:              srai         ra, gp, 24
                  lui          t3, 198123
                  andi         s3, a7, -731
                  lui          s9, 178468
                  slli         t1, s3, 14
                  lui          t6, 131888
                  bltu         t6, s9, 277f
                  bne          t0, s5, 283f
                  blt          s8, t2, 284f
                  sra          a7, a4, zero
                  srli         s2, t3, 17
                  andi         s0, s4, -2020
269:              xor          s5, a0, s9
                  auipc        a3, 979454
                  and          s6, zero, a0
                  bge          t3, a1, 278f
                  slt          gp, s2, s5
                  beq          s0, zero, 294f
                  blt          t2, ra, 290f
                  bge          t0, s5, 277f
277:              slli         s4, a3, 21
278:              lui          t2, 966545
                  ori          s7, tp, 776
                  bne          s1, s10, 288f
                  slti         t3, a2, -1936
                  slti         a3, s3, 834
283:              ori          a3, gp, -616
284:              add          s0, a5, a3
                  addi         s7, t4, -838
                  bltu         a4, s2, 294f
                  slti         t3, s10, 463
288:              sub          s4, s9, zero
                  sltiu        t2, s9, -529
290:              sltu         a7, s6, s10
                  or           t4, s6, a5
                  slti         s5, a6, -1837
                  bne          a6, ra, 306f
294:              add          a4, s6, a1
                  auipc        a0, 1036734
                  sra          zero, s3, a0
                  bne          s5, s10, 301f
                  srl          zero, a3, s2
                  add          a0, t1, tp
                  slt          a0, s4, a4
301:              and          s11, s7, s7
                  sltu         ra, a3, a4
                  bgeu         t4, t0, 314f
                  sltiu        s11, s1, 806
                  sltu         t4, s9, s10
306:              addi         a4, a0, 420
                  srli         t1, a3, 3
                  slti         a6, a7, 302
                  srai         s7, s11, 7
                  add          gp, a2, tp
                  sra          t1, t3, a4
                  bgeu         a0, s2, 315f
                  sub          zero, a4, s0
314:              sltiu        t3, a6, 1943
315:              nop
                  sra          t2, t0, tp
                  bltu         sp, s4, 319f
                  srai         a3, a2, 0
319:              sra          a3, s2, t1
                  bgeu         s11, a5, 331f
                  srai         t3, a5, 15
                  bne          t1, s11, 337f
                  bltu         tp, t2, 342f
                  srl          s0, s3, a5
                  xor          a2, a4, s7
                  add          a0, s3, s4
                  bgeu         t6, a5, 336f
                  beq          a6, t4, 329f
329:              srli         a5, t6, 30
                  slli         s9, a2, 8
331:              blt          s8, a7, 343f
                  slti         s11, s2, -787
                  ori          a6, s1, 727
                  srl          s4, a0, s11
                  sltu         t1, ra, s6
336:              nop
337:              bge          s9, s1, 342f
                  andi         s1, s9, 33
                  sltiu        s1, ra, -1352
                  and          a3, s4, ra
                  blt          t5, s6, 348f
342:              addi         a0, s7, -1900
343:              xor          s0, ra, t3
                  add          a5, s11, t0
                  andi         s9, t6, -987
                  sltu         a7, s9, zero
                  sub          a0, t0, a1
348:              slti         a6, a1, -1801
                  sltiu        a3, gp, 321
                  srli         zero, s1, 2
                  auipc        a7, 502106
                  sltu         s6, s9, s5
                  and          s2, s3, s0
                  la           s7, region_1+25 #start riscv_load_store_rand_instr_stream_2
                  or           t1, a0, t6
                  lb           a6, 12(s7)
                  lb           t3, 16(s7)
                  lh           s2, 13(s7)
                  lh           s10, 5(s7)
                  sb           tp, -14(s7)
                  lbu          t6, -2(s7)
                  srli         a0, a6, 27
                  lb           a4, 8(s7)
                  addi         s3, gp, -1249
                  lb           a3, -12(s7)
                  sh           t5, 13(s7)
                  or           t2, s0, a2
                  auipc        t2, 542431
                  lb           s3, -4(s7)
                  lui          a6, 1014079
                  sb           a2, -4(s7)
                  lb           s4, -6(s7)
                  auipc        t6, 408230
                  and          a6, s0, a2
                  or           t3, ra, a7
                  lhu          zero, -5(s7)
                  sb           s7, 4(s7)
                  lbu          a0, 11(s7)
                  srl          a5, a4, a2
                  srl          s2, t4, s7
                  sltiu        s2, a5, -1555
                  sra          s10, t6, s8
                  auipc        t2, 692882
                  sll          t4, t3, s4
                  sb           s2, 12(s7) #end riscv_load_store_rand_instr_stream_2
                  bltu         s2, t0, 361f
                  xori         a4, s4, 1034
                  and          s4, t0, zero
                  xor          a5, s11, s2
                  andi         a0, a6, -591
                  sra          t1, gp, t6
                  nop
361:              add          s10, a4, t4
                  lui          a0, 920029
                  lui          a5, 1034803
                  bltu         s6, s6, 378f
                  slt          t2, s4, tp
                  sll          s3, gp, s10
                  andi         a5, t2, 1077
                  sll          s3, s1, s5
                  xori         s9, a3, -1783
                  lui          a4, 923730
                  bne          t3, s5, 374f
                  auipc        a2, 702057
                  sub          gp, s7, s7
374:              blt          ra, s0, 388f
                  beq          s10, t5, 377f
                  srl          s3, a0, a5
377:              srli         s1, s6, 1
378:              sltiu        s2, s11, -448
                  lui          s1, 305455
                  sll          s4, t2, s0
                  ori          s2, a3, -1525
                  auipc        t0, 32006
                  sltiu        s0, s5, 239
                  srai         a5, s5, 14
                  slti         tp, sp, 1289
                  beq          s0, ra, 394f
                  auipc        a2, 660663
388:              bltu         t3, s7, 407f
                  bltu         t0, s1, 400f
                  addi         s6, s11, 1935
                  srli         tp, a4, 0
                  bgeu         a6, s2, 405f
                  sub          s1, t1, s0
394:              sub          a7, a2, s10
                  or           a2, a1, s8
                  slt          t2, s11, s4
                  andi         a4, gp, -1744
                  add          a2, ra, a1
                  sub          s3, ra, s2
400:              slt          t2, a2, s0
                  lui          a0, 1043793
                  srai         ra, t0, 8
                  xor          t6, s1, a4
                  sll          a1, s5, s7
405:              and          tp, s2, s3
                  sub          s0, a0, s7
407:              sub          s11, t4, ra
                  sub          a1, s5, ra
                  auipc        t0, 539462
                  slti         a4, zero, 577
                  slt          a0, s1, s5
                  andi         s6, s2, -1790
                  addi         s10, a7, 561
                  addi         a5, a4, -231
                  srai         s1, s4, 31
                  bltu         a6, s7, 420f
                  srli         s2, a5, 19
                  bne          ra, s0, 426f
                  slli         a3, s6, 18
420:              sra          zero, t6, a6
                  slti         zero, t2, 1375
                  ori          a4, a5, 1847
                  srai         t4, s3, 20
                  bgeu         s3, t2, 425f
425:              nop
426:              xor          t4, s11, t3
                  sltu         t6, a6, s10
                  srl          t2, t0, t0
                  srli         tp, a0, 30
                  slli         ra, gp, 19
                  bne          gp, s7, 436f
                  auipc        s2, 736981
                  beq          a4, a7, 444f
                  auipc        s9, 1020387
                  blt          tp, a6, 448f
436:              or           t2, s8, a3
                  nop
                  xor          s6, t5, ra
                  add          a0, ra, s11
                  srl          t0, a6, sp
                  slti         a3, a3, 925
                  xori         s10, s7, -6
                  auipc        tp, 518220
444:              sll          t4, t0, gp
                  ori          a4, s7, -176
                  add          s5, t0, s9
                  bne          s5, a3, 455f
448:              srli         s11, s8, 13
                  xori         t0, t3, -754
                  ori          t1, s8, 70
                  ori          t6, t3, 786
                  bge          tp, s0, 467f
                  and          a0, a6, s11
                  addi         s7, t2, -219
455:              bgeu         s0, a2, 469f
                  ori          s2, a2, -897
                  slt          ra, a4, a4
                  addi         ra, t4, 1926
                  slti         s4, s10, -589
                  slli         a7, a5, 29
                  srl          zero, s10, a7
                  xori         t3, t6, 1073
                  or           ra, a2, s9
                  blt          s5, a7, 482f
                  sltiu        a0, t6, 193
                  auipc        s4, 538586
467:              srli         t6, s5, 28
                  slli         s4, s7, 22
469:              slli         a4, a5, 7
                  nop
                  sltu         ra, a1, t3
                  sra          t3, a5, s3
                  add          a7, s0, t2
                  sra          t6, s1, s10
                  and          s4, gp, s3
                  add          a1, s1, t6
                  srl          gp, s1, gp
                  bltu         a5, t1, 482f
                  blt          a1, t4, 482f
                  bltu         t5, s10, 482f
                  sltu         t3, a1, s3
482:              srai         t1, s4, 10
                  xor          s2, s9, t1
                  auipc        a1, 593317
                  lui          gp, 609884
                  sltu         s2, s9, s0
                  lw           s11, 4(sp)
                  add          s9, t5, s9
                  addi         sp, sp, 12
                  sll          s3, t3, t2
                  sll          s1, t0, t0
                  sub          a6, gp, tp
625:              addi x3, x27, 1
625:              jalr x3, x3, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_2:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_3:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_4:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_5:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_6:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_7:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_8:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_9:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_10:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_11:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_12:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_13:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_14:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_15:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x30, x2, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x19, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x19, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x19, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x19, x4, ecall_handler
                  li x4, 0x1
                  beq x19, x4, instr_fault_handler
                  li x4, 0x5
                  beq x19, x4, load_fault_handler
                  li x4, 0x7
                  beq x19, x4, store_fault_handler
                  li x4, 0xc
                  beq x19, x4, pt_fault_handler
                  li x4, 0xd
                  beq x19, x4, pt_fault_handler
                  li x4, 0xf
                  beq x19, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

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
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x2, x30, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x30, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x30, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x2, x30, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x2, x30, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x2, x30, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
