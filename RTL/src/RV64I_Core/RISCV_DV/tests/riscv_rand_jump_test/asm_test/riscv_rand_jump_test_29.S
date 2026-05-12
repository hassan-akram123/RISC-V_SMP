.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 0
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0xfe9aabd3
                  li x1, 0x374fa5cd
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x2799d191
                  li x5, 0xff0e4c92
                  li x6, 0xfb7693cb
                  li x8, 0xf2f43c8f
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0xf6ef737e
                  li x16, 0xd8ed3467
                  li x17, 0xf53626b0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xf24e6ab9
                  li x21, 0x80000000
                  li x22, 0xf860fee9
                  li x23, 0xe
                  li x24, 0xfcacd12e
                  li x25, 0x6a5f5880
                  li x26, 0x80000000
                  li x27, 0xf427ecf4
                  li x28, 0x0
                  li x29, 0x2
                  li x30, 0x8
                  li x31, 0x3c49aded
                  la x7, user_stack_end
main:             la           s8, sub_3
                  srli         s6, s0, 18
                  or           s3, a4, gp
                  sra          s4, zero, t2
                  slli         zero, tp, 0
                  sub          gp, a3, t0
                  slt          s7, a3, a5
                  addi         s8, s8, -462
                  and          s1, a5, gp
main_j2:          jalr         ra, s8, 463 #jump main -> sub_3
                  la           a1, sub_2
                  ori          zero, s8, 1637
                  addi         a1, a1, 477
                  auipc        s7, 745597
                  xor          t4, a0, s7
                  nop
                  or           s5, s11, t6
                  srai         s6, t2, 1
                  sltu         t4, s7, t3
                  auipc        s5, 375185
                  blt          tp, s7, main_j3 #branch to jump instr
                  sub          t1, t0, s3
main_j3:          jalr         ra, a1, -476 #jump main -> sub_2
                  sltu         a4, s0, s10
                  andi         s9, s0, -1646
                  srl          a4, s5, a2
                  slti         a2, tp, 380
                  la           t0, sub_4
                  sub          t3, ra, a2
                  sll          a6, s9, gp
                  xori         s3, a7, -1221
                  sltu         a2, s6, t6
                  addi         t0, t0, -194
                  ori          a0, a4, 363
                  xor          tp, s9, gp
main_j4:          jalr         ra, t0, 194 #jump main -> sub_4
                  addi         t4, a2, 1496
                  srai         sp, t5, 16
                  lui          a6, 196465
                  la           a4, sub_4
                  auipc        s10, 802948
                  ori          s1, a5, 1000
                  slli         t6, s4, 16
                  addi         a4, a4, -908
                  ori          sp, s9, 1204
                  andi         s2, s4, -1343
                  xori         sp, a5, 2007
main_j5:          jalr         ra, a4, 908 #jump main -> sub_4
                  la           t0, region_1+1038 #start riscv_load_store_rand_instr_stream_0
                  slti         s0, a2, -777
                  sub          t6, t0, s0
                  sw           sp, 646(t0)
                  addi         tp, a5, 548
                  lui          s5, 5298
                  lbu          a7, -723(t0)
                  lbu          s6, 747(t0)
                  lh           s0, -902(t0)
                  lh           a2, 656(t0)
                  and          s9, a3, s5
                  srli         a2, gp, 13
                  sb           a5, 839(t0)
                  lui          t3, 303544
                  addi         s10, s3, 1449
                  sb           s6, -716(t0)
                  sltiu        a4, a0, 1135
                  lb           t4, 832(t0)
                  ori          s1, t0, 471
                  lh           t5, -640(t0)
                  sb           t1, -246(t0)
                  lb           s4, 942(t0)
                  andi         s7, s1, 216
                  sb           sp, 885(t0)
                  sb           t3, -283(t0)
                  lb           t5, -155(t0)
                  andi         s0, t2, 814
                  lb           s7, 275(t0)
                  lb           gp, 816(t0)
                  sb           a6, -820(t0)
                  sb           s8, 398(t0)
                  sltiu        s5, zero, 1683
                  lb           gp, -1(t0)
                  lbu          s4, 783(t0)
                  lb           s10, -128(t0) #end riscv_load_store_rand_instr_stream_0
                  ori          a6, a4, -1459
                  srli         t3, s5, 30
                  andi         sp, s3, 1201
                  slti         t4, tp, -160
                  xor          s4, t0, t1
                  slli         s2, a2, 8
                  bne          s11, s6, 14f
                  auipc        a0, 261396
                  bltu         zero, s11, 18f
                  lui          s5, 599983
                  xori         s11, s9, 1408
                  sll          s0, tp, t5
                  auipc        s9, 636328
                  srli         s6, s1, 23
14:               blt          t5, a5, 27f
                  bltu         s0, a5, 34f
                  lui          zero, 862403
                  and          t3, t3, a7
                  srli         a2, s0, 12
                  sub          s0, gp, t1
                  la           tp, sub_1
                  nop
                  slli         gp, s2, 3
                  addi         tp, tp, 749
                  xori         ra, a2, 370
main_j1:          jalr         ra, tp, -748 #jump main -> sub_1
                  bge          s4, t6, 18f
18:               andi         t0, a2, 868
                  bgeu         t2, s9, 23f
                  slli         s1, a3, 20
                  slt          s9, gp, sp
                  sltu         tp, s10, s5
23:               slti         a1, t0, 143
                  sll          s10, a3, s4
                  xor          s7, s5, t1
                  slli         t5, a0, 23
27:               slti         t3, a2, -1053
                  auipc        a1, 142417
                  sll          tp, s6, s5
                  xori         tp, s0, -157
                  lui          s9, 308346
                  andi         t0, t0, -55
                  add          a6, s0, s4
34:               andi         gp, t4, 383
                  slli         sp, ra, 25
                  slli         t4, s9, 12
                  bgeu         zero, t5, 39f
                  and          s10, s6, a4
39:               and          s9, t2, s0
                  srli         ra, s0, 12
                  bge          a1, t0, 51f
                  sra          s9, s9, ra
                  lui          a2, 545578
                  xori         s3, t5, 708
                  xori         s2, tp, -1506
                  add          s7, ra, t5
                  sub          zero, zero, a7
                  bne          t0, a5, 50f
                  addi         tp, s11, 544
50:               bgeu         s9, t0, 70f
51:               add          t6, s6, t3
                  lui          tp, 501138
                  srl          s11, a5, s7
                  bne          t1, t3, 67f
                  sltiu        s10, t3, -118
                  and          s5, s4, s8
                  blt          s10, a3, 74f
                  or           s7, s10, s8
                  sltu         s1, t2, ra
                  and          a1, s0, s10
                  bltu         a0, a0, 63f
                  slli         s0, t0, 13
63:               or           s3, a1, t3
                  sltiu        a0, t6, -811
                  auipc        s11, 59519
                  addi         s11, zero, 1278
67:               sltu         a0, t3, t2
                  srl          s0, gp, t5
                  lui          t0, 751707
70:               auipc        a2, 703604
                  srl          s11, a0, s8
                  beq          s11, tp, 78f
                  bge          gp, s0, 82f
74:               sll          t6, s9, a3
                  bne          a4, a2, 76f
76:               beq          a2, a5, 82f
                  srl          a1, t4, s6
78:               xori         t0, gp, 1627
                  slti         ra, s11, -593
                  bge          t6, s0, 82f
                  bne          ra, a7, 82f
82:               or           a1, t5, s5
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            andi         zero, s4, -1729
                  srl          t1, s2, t3
                  lui          s7, 561408
                  addi         t2, t2, -56
                  srli         s11, t0, 15
                  xor          tp, s7, a5
                  sw           ra, 4(t2)
                  and          a6, s5, a5
                  lui          s2, 817148
                  sub          a6, t0, s8
                  ori          t1, t3, -797
                  sltu         s10, s11, s7
                  slti         t0, t2, -1195
                  andi         t1, a5, -1366
                  add          s7, t6, a2
                  sra          sp, s4, sp
                  sltiu        t3, s6, 754
                  andi         tp, s7, -850
                  sltu         tp, t4, t4
                  sll          s4, t6, s5
                  and          gp, a4, sp
                  add          a1, sp, t3
                  srl          a0, a3, gp
                  auipc        s3, 654930
                  and          t3, zero, s7
                  auipc        t4, 477210
                  beq          s9, t1, 16f
                  or           t5, s7, a2
16:               nop
                  bge          s3, tp, 20f
                  sll          s2, s11, a2
                  sub          s9, ra, t3
20:               beq          s5, s10, 23f
                  ori          t3, s1, -37
                  andi         t4, t1, 127
23:               and          s6, t0, a3
                  add          s7, s10, gp
                  sra          sp, s7, s4
                  srai         zero, t0, 15
                  srai         t4, a4, 20
                  blt          a5, t6, 33f
                  andi         s1, s10, 1500
                  and          t1, t2, t1
                  addi         s6, a6, 489
                  slli         tp, s1, 21
33:               and          s5, s10, a2
                  xori         t3, t4, -141
                  sll          a6, s9, s3
                  sub          s9, a3, a6
                  bgeu         s11, s6, 45f
                  sra          a4, t2, a5
                  srl          s2, a2, s1
                  srl          t1, s9, a4
                  sub          s7, t2, tp
                  slli         a1, s2, 30
                  xor          s8, s1, s1
                  nop
45:               auipc        s7, 598600
                  srl          tp, a4, s2
                  srli         a7, s11, 8
                  beq          a7, s8, 50f
                  srli         sp, s3, 23
50:               bne          t1, a3, 65f
                  slti         s11, a5, -1771
                  sub          s7, zero, s2
                  blt          s3, a6, 58f
                  nop
                  ori          tp, t3, 770
                  xor          s1, t0, a1
                  xor          a7, s4, sp
58:               bltu         gp, tp, 69f
                  slt          s8, s6, s5
                  ori          t4, a2, 1861
                  nop
                  auipc        a6, 302418
                  blt          sp, a3, 78f
                  sltu         s0, s8, s10
65:               or           s8, s3, tp
                  auipc        t1, 541073
                  addi         a0, a6, 1552
                  add          s7, tp, t4
69:               slli         a0, s5, 6
                  srai         t5, a7, 4
                  lui          s3, 848686
                  slt          sp, a6, gp
                  lui          t6, 934578
                  lui          t1, 450908
                  andi         ra, s9, 59
                  bltu         s10, s9, 78f
                  slti         a2, s0, 630
78:               or           tp, s3, s0
                  or           tp, s6, t0
                  slti         a0, s2, -695
                  sub          s11, a6, s2
                  addi         sp, t4, -88
                  lw           ra, 4(t2)
                  srl          t4, s1, a5
                  addi         t2, t2, 56
                  srl          t1, s2, s0
99:               addi x28, x1, 0
99:               jalr x28, x28, 0
sub_10:           addi         t2, t2, -16
                  sw           ra, 4(t2)
                  slt          t5, t3, a5
                  sub          a0, s3, a0
                  sra          t3, s6, a4
                  slti         a0, t3, -1802
                  sltu         tp, a3, tp
                  slt          t0, zero, s5
                  xori         s9, a1, 240
                  xori         a7, s0, 303
                  add          t4, t0, a6
                  slt          s5, s11, t6
                  sra          t5, t6, a7
                  sub          s3, s7, a7
                  addi         s7, s8, -330
                  slt          s4, t6, t3
                  bltu         s7, s9, 8f
                  slt          a2, t3, s1
                  add          a1, a1, t4
8:                addi         t0, s10, -164
                  sra          a2, s11, t1
                  lw           ra, 4(t2)
                  addi         t1, s7, 911
                  xori         t1, s6, 636
                  slti         s2, sp, -1823
                  nop
                  srai         a2, s7, 7
                  addi         t2, t2, 16
                  xori         t1, t1, -1227
                  xori         t0, zero, -428
                  ori          s4, s1, 866
31:               addi x17, x1, 0
31:               jalr x17, x17, 0
sub_6:            addi         t2, t2, -52
                  sltiu        t4, s1, -654
                  sltiu        a2, sp, 1488
                  slti         zero, a4, 1259
                  srai         gp, sp, 26
                  srai         sp, a5, 27
                  auipc        s9, 729296
                  sra          t4, s0, s0
                  sw           ra, 4(t2)
                  xor          a2, s3, t2
                  ori          zero, a4, -1640
                  la           t6, sub_7
                  slt          sp, s10, gp
                  addi         t6, t6, -398
                  add          a1, s5, a3
                  bge          ra, t6, sub_6_j9 #branch to jump instr
                  ori          s4, t3, -1718
                  srl          a2, s10, s10
                  srai         a2, a1, 5
                  add          t4, s8, t0
                  srai         a0, a0, 7
sub_6_j9:         jalr         ra, t6, 398 #jump sub_6 -> sub_7
                  blt          s7, s7, 11f
                  sub          s7, tp, s5
                  slt          a6, a4, s4
                  add          t0, s6, s5
                  bgeu         a6, s1, 11f
                  sra          ra, s4, t0
                  bge          a4, ra, 11f
                  or           s5, s5, a3
                  addi         s10, s9, -488
                  auipc        s2, 562663
                  srli         t5, a0, 10
11:               add          t6, s3, s8
                  slti         t4, tp, 1390
                  lw           ra, 4(t2)
                  addi         t2, t2, 52
                  slli         t4, s2, 1
                  sll          s9, t3, t5
39:               addi x12, x1, 1
39:               jalr x12, x12, 0
sub_4:            srl          sp, tp, s8
                  srai         a2, a3, 15
                  and          s0, t0, a7
                  addi         t2, t2, -56
                  sw           ra, 4(t2)
                  addi         a6, s6, 1377
                  sub          t1, sp, s5
                  bltu         a2, a1, 8f
                  srli         t4, s2, 18
                  addi         s11, a6, 62
                  bge          s10, s8, 13f
                  srai         a2, a6, 22
                  srl          t5, t3, s9
                  slli         ra, gp, 28
                  srli         s2, a1, 11
8:                srai         s1, s6, 19
                  slli         sp, tp, 3
                  add          s7, s1, s2
                  and          s10, t5, s0
                  srai         a1, ra, 21
13:               srli         s10, zero, 16
                  lw           ra, 4(t2)
                  sltiu        s2, t0, -1564
                  srai         a1, s6, 17
                  addi         t2, t2, 56
                  slli         s6, t2, 10
                  andi         t0, a7, 1167
                  sra          s2, t2, gp
28:               addi x11, x1, 1
28:               jalr x11, x11, 0
sub_1:            xor          t5, s2, t3
                  slt          s2, a2, tp
                  addi         t2, t2, -64
                  addi         tp, t3, -436
                  srai         t0, t5, 27
                  sltiu        s7, t2, -825
                  sw           ra, 4(t2)
                  sra          s1, a7, a6
                  nop
                  sub          gp, t1, zero
                  bltu         s9, a2, sub_1_j6 #branch to jump instr
                  and          tp, t5, t0
                  xor          s7, s8, t0
                  nop
                  slt          a6, s1, zero
                  add          a6, a1, s11
sub_1_j6:         jal          ra, sub_5 #jump sub_1 -> sub_5
                  and          s4, tp, zero
                  slt          s4, s10, a7
                  andi         s4, tp, -1138
                  auipc        s4, 942174
                  add          s0, t6, s1
sub_1_j7:         jal          ra, sub_5 #jump sub_1 -> sub_5
                  sub          t4, s4, t0
                  xori         gp, t0, 181
                  srli         t3, zero, 17
                  lui          s5, 594501
                  sll          s1, sp, a1
                  beq          s2, t1, 14f
                  sub          t6, s5, t6
                  blt          a3, s3, 18f
                  blt          zero, s10, 15f
                  beq          s2, tp, 13f
                  sltiu        t5, sp, -303
                  slt          s5, s6, t2
                  slt          s10, s4, s4
13:               srai         s6, a6, 15
14:               srl          s8, s9, s3
15:               sub          s3, a4, t2
                  srl          ra, gp, a0
                  bltu         t1, t2, 21f
18:               srai         s7, t5, 6
                  beq          a4, s6, 21f
                  nop
21:               slt          s11, a4, s5
                  sra          s11, t6, ra
                  xori         zero, t2, -466
                  srli         t3, t2, 27
                  lw           ra, 4(t2)
                  addi         t2, t2, 64
                  sll          a0, a2, s11
                  auipc        s3, 563025
                  sltu         t5, a1, a2
                  sra          gp, a3, t1
                  slti         a7, s10, -673
                  ori          s5, s5, -1963
                  sra          t5, a7, t5
57:               addi x8, x1, 0
57:               jalr x8, x8, 0
sub_9:            srai         a2, sp, 31
                  sltiu        t1, t5, -1284
                  beq          s2, ra, sub_9_stack_p
                  slt          t5, t4, s8
                  nop
                  andi         a2, a5, 437
sub_9_stack_p:    addi         t2, t2, -48
                  slli         a7, s4, 17
                  sw           ra, 4(t2)
                  and          s2, a0, a4
                  or           s0, a5, a0
                  sltiu        t4, a2, 247
                  sltu         s10, t5, t5
                  la           ra, region_0+1653 #start riscv_load_store_rand_instr_stream_0
                  sb           s8, -12(ra)
                  lb           s8, 3(ra)
                  sub          gp, a4, s11
                  sb           s1, -3(ra)
                  sw           s8, 3(ra)
                  lb           sp, -7(ra)
                  slli         t6, sp, 25
                  sltu         a1, t3, s7
                  slti         a6, s0, -1803
                  lh           s2, -9(ra)
                  lb           t3, 16(ra)
                  srli         a6, sp, 20
                  slti         a6, a3, 1032
                  sb           t6, 1(ra)
                  addi         tp, a7, 48
                  lbu          t1, -2(ra)
                  sb           t1, 14(ra)
                  add          s4, s5, t5
                  or           s4, t2, t0
                  lbu          s2, -3(ra)
                  sb           t5, -4(ra)
                  lb           s0, -6(ra)
                  lh           s3, 1(ra)
                  sb           t1, -6(ra)
                  sb           s3, 2(ra)
                  lbu          a1, -2(ra)
                  and          a2, t2, a3
                  lb           s5, 3(ra)
                  lhu          s6, -5(ra)
                  lb           tp, -14(ra)
                  sll          a7, a4, t5
                  auipc        t4, 147300
                  lbu          a1, -3(ra) #end riscv_load_store_rand_instr_stream_0
                  andi         a1, s3, -555
                  sltiu        a4, t5, 464
                  srai         a4, t1, 29
                  sltu         a7, zero, s11
                  auipc        s3, 941625
                  or           s5, a7, s10
                  blt          zero, t2, 15f
                  srl          t3, ra, a2
                  srli         t6, a7, 11
                  xor          s6, t0, a7
                  bltu         a0, s6, 14f
                  add          s0, s1, s7
                  sra          s3, a2, t5
                  sra          a4, zero, s5
14:               slt          t6, t1, tp
15:               bne          a5, a7, 25f
                  xor          s1, s9, s2
                  srli         s2, s0, 28
                  sra          t6, t6, t1
                  and          t4, t0, s3
                  sub          zero, sp, s5
                  srai         a6, s8, 0
                  nop
                  beq          a3, s0, 36f
                  sltu         a2, s3, ra
25:               slli         s1, s8, 31
                  bge          a5, s8, 38f
                  beq          a4, a0, 29f
                  bgeu         s11, a0, 41f
29:               sltu         gp, t0, a7
                  and          t5, s7, sp
                  sra          tp, s0, s8
                  or           tp, s8, s6
                  srl          s7, a6, s4
                  add          tp, gp, s5
                  slt          a4, s10, s5
36:               sll          t5, s1, s6
                  blt          t3, t6, 42f
38:               bne          t6, t5, 49f
                  slli         s11, t1, 27
                  and          s0, ra, t2
41:               sub          t3, sp, a1
42:               lui          s9, 76660
                  add          s8, a3, s3
                  slli         s5, ra, 15
                  sltu         s5, a2, gp
                  slti         s6, s5, -2041
                  addi         a0, a1, 751
                  xor          t1, t1, t1
49:               sll          s11, a6, s0
                  srl          s9, s0, t1
                  bltu         a7, a3, 62f
                  andi         s8, a0, -1411
                  bne          s7, tp, 55f
                  ori          t4, a7, 116
55:               bne          sp, s8, 74f
                  sub          s1, t4, ra
                  add          gp, t1, s7
                  xor          s6, a3, s4
                  bgeu         a3, s2, 61f
                  ori          t1, s10, 111
61:               or           a7, a7, s6
62:               sltu         a2, a3, gp
                  slli         a7, t0, 12
                  blt          s0, s0, 82f
                  ori          s6, a2, 232
                  bltu         a7, t3, 78f
                  bge          zero, t0, 79f
                  sub          tp, t0, t6
                  nop
                  auipc        t5, 882143
                  lui          t4, 356261
                  or           t5, s8, s11
                  lui          zero, 26884
74:               sra          zero, t2, s8
                  blt          t3, s7, 85f
                  auipc        t5, 7812
                  sub          s1, s11, a1
78:               sra          s3, gp, gp
79:               slt          s6, a0, s1
                  ori          a2, a1, 1406
                  sub          a2, t5, t4
82:               bgeu         s5, gp, 101f
                  or           gp, zero, a1
                  bltu         a4, sp, 86f
85:               or           zero, a3, a5
86:               slti         s8, a5, -531
                  bltu         a3, a0, 104f
                  sub          s3, sp, s0
                  bge          s1, t6, 91f
                  auipc        a1, 783486
91:               sra          a0, zero, a0
                  blt          sp, a0, 106f
                  bge          t6, s0, 109f
                  xor          s11, s11, a1
                  slti         t0, t1, -125
                  or           gp, t1, t2
                  slli         a4, a3, 2
                  sltiu        s11, tp, 1087
                  srai         s4, s6, 6
                  auipc        a7, 14434
101:              auipc        s3, 348699
                  andi         t0, s7, -1913
                  beq          s10, a4, 107f
104:              lui          s0, 415357
                  sub          s1, s3, t2
106:              and          t1, s9, s0
107:              slt          s1, t0, zero
                  bne          a3, a2, 111f
109:              nop
                  andi         a7, t5, 1707
111:              nop
                  slt          t3, t4, t2
                  andi         t4, a4, -683
                  slti         s9, s11, 368
                  sll          s0, s1, s1
                  xor          tp, s11, s8
                  beq          sp, t3, 124f
                  sub          t5, s2, s11
                  and          a1, s11, s10
                  srai         s10, s4, 28
                  slli         a4, a6, 29
                  or           t0, t1, s9
                  sra          zero, s10, t3
124:              sll          t5, a1, t2
                  ori          s10, gp, 559
                  sltiu        s11, s4, -1604
                  xori         sp, s11, 98
                  lui          a2, 881006
                  auipc        s5, 817547
                  sltu         t4, t5, zero
                  sub          tp, gp, zero
                  andi         s6, s8, 112
                  blt          s2, a6, 147f
                  slt          s5, s11, t6
                  slt          s8, t6, a1
                  beq          s0, ra, 154f
                  blt          a0, s6, 149f
                  sltiu        gp, s4, -1099
                  sll          s11, a4, gp
                  add          tp, s4, t4
                  xori         t5, s10, -136
                  bltu         a4, t6, 161f
                  ori          s3, a0, -723
                  nop
                  xori         t6, t3, -1042
                  bgeu         sp, s2, 165f
147:              blt          a3, t6, 159f
                  slli         s10, s0, 4
149:              xor          t3, tp, t5
                  nop
                  and          sp, a2, a3
                  or           a4, s9, s8
                  addi         s11, gp, -2021
154:              srli         tp, t2, 28
                  beq          s8, a1, 159f
                  beq          t3, s9, 167f
                  addi         s8, s3, -1679
                  bne          s11, s1, 177f
159:              add          s2, s5, t6
                  slli         s4, s10, 7
161:              xor          t3, gp, tp
                  slt          t3, sp, s9
                  sltiu        t3, zero, 1158
                  blt          a2, a6, 178f
165:              ori          t5, s6, -1490
                  bltu         s6, s9, 185f
167:              bge          a2, s0, 185f
                  srai         a0, a2, 15
                  addi         t1, t1, -721
                  sra          zero, a0, s3
                  bgeu         tp, ra, 181f
                  srli         t3, a4, 26
                  beq          s8, a3, 175f
                  auipc        s11, 285641
175:              slli         t3, s4, 1
                  and          ra, a1, s11
177:              bltu         s7, t0, 180f
178:              bgeu         a6, zero, 180f
                  slli         s10, t0, 20
180:              or           s5, s3, s2
181:              bltu         a7, s2, 183f
                  addi         a4, ra, -386
183:              beq          gp, a3, 195f
                  xori         gp, t6, 423
185:              sltiu        a1, s3, -547
                  ori          a4, s1, -1851
                  lui          s0, 77183
                  nop
                  and          zero, t2, t1
                  sub          s1, t1, s10
                  slli         a6, a6, 26
                  bge          s8, s10, 197f
                  nop
                  ori          s6, t2, -170
195:              bltu         gp, s9, 202f
                  xori         a0, a6, -554
197:              xori         t0, a6, -139
                  srli         gp, s5, 30
                  ori          t5, zero, -1208
                  sra          s10, t1, sp
                  xori         sp, t5, 536
202:              slti         s6, s0, 1433
                  bltu         tp, sp, 215f
                  slli         s5, t6, 21
                  add          zero, s4, s7
                  bge          s3, zero, 222f
                  auipc        ra, 291064
                  slti         s0, a7, 114
                  bltu         ra, s8, 218f
                  bltu         s1, s9, 220f
                  addi         s2, t0, -940
                  add          tp, a6, s3
                  bgeu         a3, a0, 215f
                  beq          s4, s1, 227f
215:              srli         zero, s1, 5
                  bltu         t6, a1, 233f
                  xori         gp, s2, -2017
218:              nop
                  add          t0, gp, s1
220:              lui          s0, 822784
                  sll          sp, s8, t3
222:              blt          a7, a7, 235f
                  lui          a2, 931154
                  sll          s7, s6, s0
                  or           t3, a3, s8
                  xor          s5, t3, tp
227:              blt          tp, s8, 241f
                  ori          s8, s4, 218
                  blt          s6, t2, 231f
                  srl          t4, s5, s7
231:              or           t6, s8, t6
                  la           sp, region_1+1251 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t1, s11, -1585
                  or           t4, s4, s10
                  sb           s4, 48(sp)
                  sb           t2, 43(sp)
                  lbu          s2, -30(sp)
                  lui          t0, 1023886
                  sb           s10, -18(sp)
                  lbu          s0, 36(sp)
                  xor          s0, ra, s5
                  srai         s5, ra, 20
                  lhu          a0, -59(sp)
                  sb           t6, 2(sp)
                  lh           s6, -37(sp)
                  auipc        tp, 650081
                  xori         tp, s9, -1792
                  sb           a1, -32(sp)
                  sh           a6, 15(sp)
                  lb           t4, 46(sp)
                  lb           s7, 30(sp)
                  sra          s6, t1, a3
                  sh           t2, 33(sp)
                  lhu          t1, 43(sp)
                  lbu          s3, -61(sp)
                  lbu          s2, 22(sp)
                  lh           t3, 15(sp)
                  lbu          tp, 48(sp)
                  lb           s2, 49(sp)
                  srli         gp, s1, 27
                  lh           s6, -23(sp)
                  auipc        s4, 61681
                  sb           t4, 34(sp)
                  slti         a6, ra, 560
                  sb           t4, -2(sp)
                  sw           s0, -7(sp)
                  sb           t3, 12(sp) #end riscv_load_store_rand_instr_stream_1
                  nop
233:              add          t4, s10, t6
                  slti         a4, s7, 4
235:              and          s4, s11, s4
                  bne          t3, a5, 240f
                  or           a2, s6, t1
                  or           s0, ra, a0
                  ori          t0, t1, 1793
240:              sra          s8, s10, a5
241:              addi         ra, a3, -125
                  slli         s5, s9, 27
                  srai         s2, s8, 12
                  bge          a6, s5, 255f
                  slt          t1, zero, sp
                  slli         ra, a4, 28
                  bne          a6, gp, 259f
                  slli         t1, tp, 0
                  bne          a3, a0, 267f
                  nop
                  and          a2, s11, t1
                  bge          s11, a7, 271f
                  andi         tp, t6, -1667
                  ori          zero, t6, 2039
255:              bne          t5, s10, 269f
                  bltu         t5, a1, 269f
                  xor          s0, a5, s3
                  bge          t2, gp, 268f
259:              sltu         s0, t3, t3
                  addi         t4, s3, -2010
                  blt          t4, a3, 271f
                  slt          gp, s0, t1
                  blt          a1, s10, 265f
                  lui          s8, 373213
265:              sltiu        s0, gp, 259
                  xor          s11, s1, a2
267:              bltu         t6, a2, 272f
268:              xor          t5, a5, s0
269:              andi         tp, zero, -1312
                  xor          gp, s3, a7
271:              bge          t5, t5, 278f
272:              lui          t4, 527741
                  srai         s10, a5, 13
                  srl          t0, sp, t5
                  sltu         a1, t2, s9
                  sub          s11, s4, s2
                  lui          a0, 579884
278:              or           sp, s8, a3
                  sltu         s5, a5, gp
                  lw           ra, 4(t2)
                  or           t4, a1, t6
                  sll          s11, s6, a4
                  nop
                  sltiu        a1, t0, 656
                  addi         t2, t2, 48
                  nop
370:              addi x27, x1, 1
370:              jalr x27, x27, 0
sub_7:            lui          s7, 23019
                  addi         t2, t2, -16
                  auipc        t4, 224416
                  xori         t1, s3, 408
                  slt          gp, s5, s4
                  sw           ra, 4(t2)
                  sltiu        t0, s2, 838
                  srai         a2, a0, 19
                  slti         a0, s5, -9
                  slli         s8, s3, 27
                  sltu         t5, t3, t5
                  slli         s3, a2, 9
                  addi         t1, s0, -270
                  slt          t3, s9, s10
                  sra          s0, tp, a1
                  sltu         s4, ra, a5
                  slli         s2, s9, 29
                  or           s10, s8, a1
                  sll          s3, s1, s5
                  srai         s6, s9, 7
sub_7_j12:        jal          ra, sub_10 #jump sub_7 -> sub_10
                  lui          ra, 650294
                  slti         s4, a2, -337
                  sltiu        a7, s1, -17
                  ori          a7, t0, -1397
                  nop
                  bge          a1, a7, sub_7_j13 #branch to jump instr
                  sra          tp, s2, sp
                  slt          s3, tp, a5
                  slt          t4, s7, s10
                  slt          t6, s6, t1
                  xori         t5, gp, -859
sub_7_j13:        jal          ra, sub_9 #jump sub_7 -> sub_9
                  la           sp, region_0+1227 #start riscv_load_store_rand_instr_stream_12
                  sub          s5, t5, t5
                  slli         s7, t0, 16
                  and          s1, s10, gp
                  srl          a7, t2, t4
                  slti         a0, ra, 1479
                  lb           t5, -38(sp)
                  sh           s7, 23(sp)
                  sltiu        t3, a7, -156
                  ori          t0, a0, -611
                  xor          t3, s11, s4
                  auipc        a2, 981158
                  andi         a7, s5, 164
                  lui          t1, 860514
                  lb           t4, 0(sp)
                  lbu          t6, 9(sp)
                  sra          tp, s11, s9
                  sra          t0, a7, s3
                  sra          t3, a3, a6
                  slti         a4, s9, 1618
                  slt          s0, a0, s3
                  sub          t4, a2, a7
                  xor          a1, s7, a4
                  nop
                  sub          ra, s8, a6
                  andi         s7, s6, -1411
                  srl          s11, a5, t2
                  lui          s8, 676394
                  sltiu        s2, s0, -1764
                  lw           a1, -23(sp)
                  xor          gp, a5, a2
                  ori          a2, s11, 1685
                  srli         a2, a5, 2
                  lb           ra, 64(sp)
                  add          s0, s3, s5
                  sb           s4, -37(sp)
                  addi         ra, t1, -1900
                  lbu          s9, -54(sp)
                  lbu          t0, 4(sp)
                  sb           s7, 42(sp)
                  lbu          s0, -40(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+212 #start riscv_load_store_rand_instr_stream_11
                  sltiu        a2, t1, -1100
                  xori         t3, s0, -1699
                  lb           ra, 107(sp)
                  sh           t3, 242(sp)
                  sra          t4, a1, ra
                  or           s3, s0, s2
                  sra          t5, s8, s8
                  lh           a4, -100(sp)
                  lbu          s4, 109(sp)
                  sll          ra, s7, a6
                  xor          s3, t2, t3
                  lbu          s11, -119(sp)
                  or           t5, a3, sp
                  srl          a1, s1, t0
                  srli         t6, t3, 31
                  or           s8, s3, a3
                  srl          t0, t2, t1
                  srai         tp, a6, 15
                  or           t3, a2, a1
                  slt          ra, a3, s11
                  lb           s4, -104(sp)
                  add          t5, a7, s5
                  srai         s6, s0, 16
                  sll          t1, a4, ra
                  lb           s9, 67(sp)
                  lb           tp, -59(sp)
                  andi         s6, gp, 423
                  ori          a4, t3, -1446
                  sh           t1, 78(sp)
                  srli         a0, s5, 20
                  sub          tp, s1, s10
                  nop
                  lb           a0, 247(sp)
                  srli         s4, s1, 26
                  and          s2, s4, s9
                  ori          zero, tp, -1344
                  srli         s11, s8, 21
                  lbu          a1, 238(sp) #end riscv_load_store_rand_instr_stream_11
                  la           s5, region_0+539 #start riscv_load_store_rand_instr_stream_7
                  lui          t5, 540906
                  lb           s8, -8(s5)
                  sltu         a7, gp, s0
                  andi         a1, t5, 466
                  sll          a4, t3, t3
                  andi         s8, t0, -950
                  sra          tp, t6, t5
                  xori         s8, t2, 1597
                  sh           s10, -3(s5)
                  addi         s9, a5, -1518
                  auipc        t0, 597075
                  and          a0, s3, s11
                  sb           s0, -6(s5)
                  lh           t6, -9(s5)
                  and          zero, t1, t1
                  and          t4, a0, s7
                  lb           t5, 8(s5)
                  addi         a6, a1, 904
                  addi         a0, a0, -1712
                  sb           s8, -1(s5)
                  lb           s10, -4(s5)
                  nop
                  sra          a7, s11, s1
                  sltiu        tp, tp, -1559
                  and          s10, s9, s3
                  lb           t5, 8(s5)
                  ori          t1, t0, 1335
                  sb           s9, 1(s5)
                  lui          sp, 515416
                  ori          s3, a7, 310
                  lbu          sp, 6(s5) #end riscv_load_store_rand_instr_stream_7
                  la           t1, region_1+882 #start riscv_load_store_rand_instr_stream_5
                  srai         zero, t2, 11
                  sra          t4, sp, t2
                  sra          a6, tp, tp
                  sb           a2, 1(t1)
                  xor          s2, s9, tp
                  lhu          s1, -16(t1)
                  lbu          t6, 8(t1)
                  sh           t3, -8(t1)
                  lhu          s6, -4(t1)
                  or           s8, s5, s3
                  sb           a5, 15(t1)
                  ori          a1, sp, -691
                  lui          tp, 913048
                  lb           s8, -10(t1)
                  sltu         a1, s5, a5
                  sub          a2, s10, a3
                  sb           a7, 14(t1)
                  lbu          a0, -9(t1)
                  sw           t4, -6(t1)
                  or           a7, a2, sp
                  or           a1, ra, a3
                  sb           t6, -14(t1)
                  auipc        a6, 704249
                  auipc        s9, 437225
                  sb           t2, -3(t1)
                  add          s7, t1, t0
                  sh           t1, -10(t1)
                  andi         a0, a2, -1793
                  lb           t5, -9(t1)
                  lb           a6, 1(t1)
                  sltiu        a7, s11, 183
                  lw           s6, 2(t1)
                  sb           a2, 4(t1)
                  ori          ra, s5, 299
                  sb           s3, 1(t1)
                  sh           t5, 4(t1)
                  sra          t6, s2, s5
                  lb           t0, 16(t1)
                  sh           s3, -16(t1)
                  xori         s8, gp, 1025
                  srai         t6, s1, 18
                  or           s0, a3, s4
                  sub          s4, s4, s2
                  auipc        s8, 847322
                  sra          s10, t0, a5
                  lb           ra, -4(t1)
                  sub          t3, s9, a6
                  lhu          a2, -12(t1) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+411 #start riscv_load_store_rand_instr_stream_3
                  lb           a0, -106(sp)
                  auipc        s2, 373156
                  lb           s4, -58(sp)
                  sh           t5, 233(sp)
                  sb           t4, -21(sp)
                  srai         s7, a4, 8
                  xor          t1, s4, s3
                  srai         a4, a4, 11
                  sub          s0, s8, a2
                  and          s1, s4, s11
                  sll          zero, a3, ra
                  slli         a2, zero, 9
                  xori         a0, zero, 1345
                  srai         tp, a2, 8
                  srli         tp, s0, 10
                  ori          s6, s3, 1638
                  srl          s5, t3, s2
                  sub          ra, s0, gp
                  nop
                  slt          s2, t1, s7
                  slt          s5, s4, a7
                  and          t3, a6, ra
                  lui          t6, 510698
                  sll          gp, t3, a4
                  lb           t4, -162(sp)
                  andi         s9, s2, -494
                  addi         t1, s2, -520
                  sh           sp, 161(sp)
                  lbu          s7, -137(sp)
                  xor          s0, t0, s5
                  sub          s1, a1, s7
                  nop
                  lb           a2, -128(sp)
                  sltu         t5, a5, s2
                  lui          s10, 458951
                  lb           s9, -234(sp)
                  lbu          s11, -97(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_1+994 #start riscv_load_store_rand_instr_stream_10
                  lbu          t4, -867(a7)
                  lb           s7, -653(a7)
                  sw           a2, -286(a7)
                  sltiu        t3, s9, -1286
                  sub          s1, a2, s5
                  sb           t1, -718(a7)
                  sb           zero, 437(a7)
                  sub          t6, a3, s2
                  lbu          s2, 84(a7)
                  lb           a2, 223(a7)
                  lhu          a6, 934(a7)
                  sh           s1, 1000(a7)
                  lbu          t5, 999(a7)
                  lw           s4, -790(a7)
                  sb           s6, 871(a7)
                  sltiu        gp, t1, -280
                  sb           tp, -557(a7)
                  sb           s2, 642(a7)
                  auipc        tp, 126147
                  lbu          s3, 377(a7)
                  sll          s5, t4, a6
                  lbu          s8, -273(a7)
                  sltu         s1, t5, sp
                  sb           s11, 399(a7)
                  lbu          a4, 201(a7)
                  lbu          ra, -895(a7)
                  lb           a1, -947(a7)
                  xori         s1, gp, 903
                  lh           s2, -112(a7)
                  sh           t2, 680(a7)
                  lbu          s2, -877(a7)
                  sll          s2, t6, s10
                  lb           s7, -992(a7)
                  lbu          a0, -297(a7)
                  lbu          s2, 800(a7)
                  slti         t5, sp, -549
                  lb           t0, -473(a7)
                  addi         t0, t5, -623
                  lb           s3, -953(a7)
                  andi         t1, t4, -883
                  lw           t5, -278(a7) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+77 #start riscv_load_store_rand_instr_stream_6
                  lb           t0, 116(sp)
                  sltu         a2, t1, s5
                  sb           t6, 73(sp)
                  slti         a1, t2, -952
                  xori         a0, s0, 2044
                  ori          s3, a1, -1068
                  sub          t3, s10, a6
                  xori         ra, t5, 190
                  add          t0, t6, s10
                  sb           s8, 183(sp)
                  add          tp, a5, s2
                  srli         s6, a6, 19
                  sh           t6, -37(sp)
                  srl          a2, s6, s3
                  sh           t0, 249(sp)
                  lui          t0, 610254
                  sub          s7, zero, s7
                  or           a2, a4, s5
                  lb           a0, -1(sp)
                  nop
                  srli         s10, s1, 28
                  or           tp, sp, t3
                  sb           s3, 163(sp)
                  lbu          s0, 157(sp)
                  lb           ra, -42(sp)
                  sb           a4, 216(sp)
                  lh           a1, -75(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s3, region_0+1135 #start riscv_load_store_rand_instr_stream_4
                  sltiu        s6, t3, 823
                  srai         s8, a2, 11
                  addi         t5, t5, -1353
                  srai         t3, a4, 20
                  sw           a0, 225(s3)
                  xor          tp, t2, a0
                  or           s1, t4, a3
                  add          t5, t6, a2
                  sh           zero, -137(s3)
                  sb           gp, 121(s3)
                  lbu          a1, 144(s3)
                  ori          a7, t5, 1175
                  lhu          s9, -201(s3)
                  sub          s7, s1, s5
                  sb           t2, 151(s3)
                  slt          t5, a6, s1
                  lbu          a4, -218(s3)
                  lbu          s10, 72(s3)
                  sw           a3, 193(s3)
                  xor          t4, t6, a0
                  xor          s6, t6, t6
                  andi         s0, s4, -1111
                  lw           s1, 25(s3)
                  sub          s0, a4, t1
                  auipc        sp, 658382
                  lbu          tp, 152(s3)
                  addi         s6, t3, -484
                  lui          t1, 343807
                  lh           t5, 179(s3)
                  lbu          t5, -218(s3)
                  add          s8, gp, s2
                  slti         s0, tp, 95
                  lh           zero, -177(s3)
                  lbu          s7, 154(s3)
                  lb           t6, -170(s3)
                  lb           s8, -64(s3)
                  lui          a4, 56426
                  sw           a6, 189(s3)
                  slti         zero, s0, 1565
                  sb           a3, 89(s3)
                  lbu          a6, 12(s3)
                  lbu          s2, -210(s3)
                  lb           a7, -214(s3)
                  lbu          tp, -52(s3) #end riscv_load_store_rand_instr_stream_4
                  la           t5, region_0+1656 #start riscv_load_store_rand_instr_stream_2
                  lbu          s8, -1216(t5)
                  ori          sp, t1, 1461
                  lb           s10, -163(t5)
                  sub          s4, ra, s10
                  addi         t3, s1, -1387
                  lui          s10, 563984
                  addi         sp, s11, -1319
                  lb           s4, -369(t5)
                  srli         t6, t2, 0
                  lbu          t1, -1040(t5)
                  xor          a0, a4, t4
                  add          s9, s7, t1
                  nop
                  ori          s2, s7, 1447
                  or           gp, s6, a6
                  lb           t6, 253(t5)
                  sll          a2, s0, sp
                  add          s3, s10, a4
                  lbu          s6, -301(t5)
                  lbu          gp, -925(t5)
                  sb           s2, 283(t5)
                  lb           s0, -627(t5)
                  srai         s0, s2, 11
                  and          t4, s1, s0
                  lb           t3, -1348(t5)
                  and          a0, t2, t1
                  sw           s10, -612(t5) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_0+1850 #start riscv_load_store_rand_instr_stream_0
                  slli         t4, t5, 8
                  xori         t5, zero, -578
                  lw           s10, -14(s7)
                  auipc        t0, 782408
                  xor          s3, s5, sp
                  slli         ra, s7, 2
                  sub          t6, s10, s5
                  sb           s0, -15(s7)
                  lb           s1, -15(s7)
                  sb           t4, 7(s7)
                  lh           s3, 4(s7)
                  lbu          a0, -3(s7)
                  sltu         t5, a2, ra
                  lb           s3, 8(s7)
                  xori         s1, a0, -1167
                  sb           t4, 0(s7)
                  sb           t6, -16(s7)
                  sw           gp, -14(s7)
                  sh           s2, 16(s7)
                  nop
                  lb           s0, -15(s7)
                  and          ra, t0, t1
                  and          tp, a5, s2
                  nop
                  lhu          ra, 0(s7)
                  lhu          t5, 12(s7)
                  andi         sp, s4, 762
                  sb           s7, 10(s7)
                  lbu          t6, -5(s7)
                  xori         a7, s6, 710
                  lhu          ra, 16(s7)
                  lw           zero, 2(s7) #end riscv_load_store_rand_instr_stream_0
                  srai         a1, t5, 4
                  sltu         a4, a6, s5
                  andi         s0, a7, 527
                  slti         s10, sp, -1269
                  lui          s8, 854941
                  ori          ra, s3, -1288
                  lui          t4, 842253
                  add          s10, gp, a0
                  slt          t4, t5, gp
                  xori         t0, s3, -678
                  slli         s1, s7, 22
                  andi         t1, a3, 77
                  and          ra, a0, s10
                  andi         s0, a3, -1359
                  beq          sp, ra, 32f
                  bgeu         t2, s2, 20f
                  bltu         s2, a5, 32f
                  lui          a6, 717994
                  bltu         a3, t4, 36f
                  sll          t5, t5, t4
20:               add          a1, a3, a1
                  add          t4, a5, a1
                  bne          t0, a5, 34f
                  xor          s9, s5, s6
                  la           a1, sub_8
                  sltiu        s11, gp, 480
                  srli         t6, sp, 11
                  srl          s5, a0, a5
                  nop
                  addi         a1, a1, -713
                  srai         a6, s5, 18
                  sll          a4, a1, s7
                  bltu         s9, a5, sub_7_j11 #branch to jump instr
                  sltu         s5, tp, t1
sub_7_j11:        jalr         ra, a1, 714 #jump sub_7 -> sub_8
                  bge          s2, s9, 29f
                  bgeu         s0, t2, 27f
                  xor          gp, t4, s7
27:               addi         t0, s5, 2035
                  sll          a1, s2, s0
29:               slli         a2, gp, 2
                  beq          t3, a0, 39f
                  lui          zero, 830315
32:               blt          a3, gp, 38f
                  sll          t4, t4, gp
34:               add          t1, a1, t5
                  bne          s7, s3, 44f
36:               nop
                  sra          s0, t3, a2
38:               bge          t3, a7, 50f
39:               srai         s8, a4, 20
                  add          s0, t2, a2
                  sltu         zero, gp, s7
                  slli         gp, t0, 8
                  slt          s6, a3, a4
44:               srai         a0, a0, 31
                  beq          a5, a1, 61f
                  auipc        s3, 717260
                  bge          t4, s10, 52f
                  srli         gp, t4, 10
                  ori          t1, t2, 1715
50:               blt          a5, a5, 69f
                  auipc        t1, 927899
52:               sra          s8, s11, ra
                  blt          t1, a6, 64f
                  slti         sp, s10, 354
                  bltu         ra, t5, 60f
                  sltiu        s4, a4, -1227
                  slti         s5, t6, 2036
                  sltiu        s8, t4, -1588
                  blt          a2, a5, 77f
60:               slli         t1, s7, 19
61:               ori          a2, s9, 201
                  slli         a6, a1, 25
                  slli         t1, t4, 8
64:               xor          a4, s5, zero
                  sub          zero, a6, a0
                  beq          s6, s5, 68f
                  beq          s9, s1, 70f
68:               srli         a4, t6, 21
69:               lui          t3, 941968
70:               sltu         t4, tp, t0
                  bge          s6, s3, 84f
                  srli         t3, a2, 11
                  andi         t3, s1, -1877
                  srli         a0, t1, 14
                  sltiu        a1, s7, 1648
                  add          s6, a2, tp
77:               lui          s8, 445374
                  nop
                  slti         a7, a2, 848
                  andi         a0, a1, 118
                  sltu         s2, t6, t2
                  nop
                  bgeu         s8, s2, 86f
84:               or           a2, a1, s1
                  nop
86:               slli         t6, s8, 10
                  xor          s6, s1, s2
                  add          ra, s8, s2
                  addi         s5, t0, 127
                  sltu         t5, s0, gp
                  or           s7, a5, t1
                  slti         s8, s2, -2005
                  xor          sp, a0, s1
                  bne          sp, gp, 114f
                  sub          s11, t3, s4
                  slt          s4, gp, gp
                  beq          s7, s9, 116f
                  sll          t3, s6, tp
                  sltiu        s6, tp, 839
                  srl          s8, t6, tp
                  srai         ra, s10, 8
                  slti         t4, s4, 459
                  and          a7, t2, gp
                  andi         a0, t0, 978
                  sll          gp, a7, s5
                  and          s4, t4, t2
                  srl          t4, s1, s1
                  xor          s5, gp, a6
                  beq          a6, zero, 110f
110:              ori          t1, s2, -1003
                  sltu         t0, a3, s7
                  sltu         t6, s7, s6
                  bne          a5, s6, 121f
114:              auipc        a1, 100147
                  bltu         s0, zero, 121f
116:              xor          s5, s0, s9
                  sll          s2, a0, a2
                  bgeu         a6, ra, 128f
                  addi         s8, s11, 1624
                  sra          s9, s4, t0
121:              bge          sp, s7, 131f
                  xor          t1, t3, a5
                  nop
                  addi         s3, gp, -1367
                  lui          s6, 26982
                  sltiu        s5, a6, 1232
                  andi         a1, t2, 27
128:              lui          a6, 1025117
                  srli         t5, s6, 5
                  bgeu         s8, a5, 149f
131:              sra          s11, s7, t2
                  srli         s4, s7, 21
                  srli         a0, tp, 27
                  andi         a0, zero, -1798
                  or           t6, a2, a2
                  addi         s1, a1, -518
                  or           s8, s4, t6
                  sra          s7, s3, s8
                  sltu         s3, t0, s9
                  sll          s11, gp, t4
                  blt          a4, zero, 144f
                  or           a6, t6, s8
                  srli         a1, s4, 10
144:              bne          a4, a2, 157f
                  bne          t5, t1, 163f
                  nop
                  beq          gp, t3, 150f
                  lui          s8, 567752
149:              sll          s9, t3, s10
150:              bge          a1, s11, 156f
                  bltu         t5, zero, 169f
                  sltiu        sp, s8, 532
                  or           s10, s1, a7
                  srai         t5, tp, 24
                  ori          s3, s7, -1815
156:              sra          a2, s7, s0
157:              ori          t5, s10, 1821
                  bge          zero, t4, 169f
                  ori          s1, t0, -912
                  slli         t1, a0, 8
                  sll          t5, s10, s8
                  or           tp, s11, s6
163:              bgeu         t5, a3, 168f
                  andi         zero, sp, -400
                  sltu         tp, t6, t1
                  sltiu        t1, s3, -2039
                  add          a2, ra, s5
168:              sll          a7, a4, t0
169:              add          s9, a6, s6
                  srli         s8, ra, 20
                  slt          sp, t5, s8
                  bge          a7, s0, 184f
                  lui          a2, 699647
                  ori          a7, s1, 1128
                  add          s1, s1, tp
                  bltu         s5, a1, 196f
                  xor          a0, t4, tp
                  andi         t5, s6, -1213
                  or           s8, a6, t5
                  blt          tp, sp, 190f
                  sub          s2, s8, sp
                  srl          t3, sp, t4
                  bltu         s9, t4, 185f
184:              sub          s2, a4, s3
185:              addi         a6, s2, -1086
                  beq          a7, t0, 192f
                  xori         a7, s9, 445
                  or           s3, ra, s10
                  nop
190:              bltu         a7, s1, 209f
                  add          a2, t0, a5
192:              xor          ra, s6, s2
                  beq          t5, s8, 209f
                  srl          s10, ra, a4
                  or           s2, zero, a3
196:              blt          t6, s11, 199f
                  bltu         s0, sp, 202f
                  srai         a6, tp, 29
199:              auipc        a6, 653354
                  bge          a1, s8, 219f
                  bltu         ra, s8, 210f
202:              xor          t3, s9, t6
                  and          s6, a5, s0
                  sra          s7, s5, t5
                  slli         s2, ra, 1
                  nop
                  blt          a4, a5, 210f
                  bne          a2, a5, 216f
209:              xor          t4, s4, a3
210:              sub          t0, s0, gp
                  xor          t5, t1, t3
                  bge          t0, t6, 214f
                  ori          a0, a2, -625
214:              auipc        s5, 707696
                  slli         t6, t6, 0
216:              slti         a6, t6, -1572
                  nop
                  xori         s3, a0, 163
219:              srl          a7, tp, zero
                  slti         t0, a5, 1703
                  beq          a7, s9, 231f
                  srli         s2, a3, 8
                  bne          s5, t6, 224f
224:              slti         a1, a6, 1782
                  xori         s8, s1, 1083
                  nop
                  sll          t0, t4, s1
                  xori         a6, s10, 940
                  slti         s9, a4, -1069
                  add          t1, t4, t4
231:              auipc        t4, 1025819
                  ori          t4, a4, -1091
                  auipc        t3, 329292
                  xori         s1, s7, 1692
                  auipc        t3, 455086
                  or           t1, s0, s2
                  xor          ra, s1, s5
                  srl          ra, s1, ra
                  sltiu        zero, s8, 763
                  ori          a6, a4, -315
                  sltu         a0, t0, t3
                  slt          s2, s8, s1
                  xor          s7, s9, s9
                  bgeu         t2, s1, 249f
                  ori          t5, s0, 182
                  xor          s9, a7, s4
                  andi         s2, s0, 1773
                  bgeu         a2, t4, 267f
249:              addi         t4, a4, 847
                  sltu         s11, t3, s8
                  sll          s1, t3, s5
                  bne          a7, s0, 270f
                  sltu         zero, a4, s11
                  srai         a0, t1, 8
                  slt          s9, s3, s7
                  srai         a7, s10, 22
                  bltu         t0, t5, 269f
                  auipc        t4, 1036791
                  sra          s3, a1, s5
                  beq          a4, gp, 265f
                  blt          s8, t0, 277f
                  sra          t3, t3, ra
                  bge          ra, t5, 272f
                  sltu         s11, s10, t4
265:              add          ra, t0, a0
                  sra          ra, s0, s3
267:              sub          gp, t1, ra
                  sltu         t1, gp, sp
269:              slt          gp, t3, a0
270:              slli         s10, a4, 1
                  bne          ra, t5, 287f
272:              sub          t4, s7, t2
                  ori          t0, s8, -1631
                  sll          t1, sp, a6
                  bgeu         t6, t6, 293f
                  beq          a3, s7, 288f
277:              ori          a4, a6, 1429
                  slli         ra, s7, 28
                  la           t0, region_1+1168 #start riscv_load_store_rand_instr_stream_8
                  add          s2, a4, s8
                  ori          s0, s1, 1213
                  sh           sp, -1024(t0)
                  xor          s7, sp, s8
                  ori          zero, t0, 874
                  nop
                  xor          t5, t5, s8
                  lhu          s7, -412(t0)
                  lbu          t6, 687(t0)
                  add          s2, s2, a6
                  add          t3, t2, s0
                  lb           s1, 789(t0)
                  lbu          s0, -179(t0)
                  lbu          sp, -509(t0)
                  lb           t6, 670(t0)
                  slt          tp, t5, s2
                  sb           s10, 405(t0)
                  ori          t5, a0, 1030
                  lhu          a7, -748(t0)
                  sh           tp, -646(t0)
                  lbu          s1, -995(t0)
                  slti         t3, s0, 1045
                  ori          ra, s3, 1924
                  sll          s1, sp, s5
                  or           s10, a4, a6
                  and          s2, s8, s2
                  xori         s8, gp, 1410
                  lw           s10, -564(t0)
                  andi         t5, s6, -830
                  lb           s7, -1041(t0) #end riscv_load_store_rand_instr_stream_8
                  srl          tp, s0, s10
                  bgeu         s1, s11, 298f
                  sltu         a1, s9, sp
                  slt          t3, s5, t4
                  sltiu        a0, a0, 723
                  beq          s10, s5, 286f
                  andi         zero, s6, -890
286:              slti         a4, t0, -1913
287:              xor          s8, gp, a1
288:              srai         ra, a4, 30
                  xor          t5, s11, a7
                  slt          a7, t5, zero
                  sll          s4, s2, t4
                  slti         s3, gp, -1007
293:              sra          gp, s11, tp
                  nop
                  slt          s9, s11, t4
                  bgeu         a6, t6, 299f
                  lui          gp, 170755
298:              beq          s5, s7, 301f
299:              auipc        tp, 535275
                  srli         t5, t6, 31
301:              add          ra, a1, s2
                  srl          s4, a7, a3
                  bne          zero, s2, 311f
                  xori         t4, gp, -1492
                  bgeu         s9, a2, 311f
                  blt          s5, s5, 316f
                  xor          tp, s0, t3
                  slli         t6, t1, 24
                  andi         s5, tp, -931
                  nop
311:              or           s9, gp, t2
                  bne          tp, tp, 325f
                  slt          sp, s6, s6
                  nop
                  srai         s4, a1, 11
316:              sltu         zero, a7, s2
                  srai         s11, s5, 26
                  sub          s7, a0, s8
                  xor          a6, a7, a4
                  slti         t0, zero, -25
                  ori          a4, gp, 844
                  sltiu        t1, tp, 91
                  bne          a3, a1, 342f
                  xori         s6, gp, -1717
325:              auipc        ra, 855146
                  bltu         a5, gp, 344f
                  auipc        gp, 521682
                  bne          s7, s10, 333f
                  bgeu         a4, s11, 341f
                  addi         zero, sp, 576
                  xor          s3, s7, a5
                  nop
333:              bne          a7, t3, 353f
                  xor          a2, s11, sp
                  beq          s11, t6, 346f
                  slti         gp, a5, -1236
                  lui          s1, 464405
                  nop
                  or           tp, t4, s7
                  xori         s0, a6, 1076
341:              slti         t0, s6, -1115
342:              bltu         t1, s7, 343f
343:              lui          gp, 723134
344:              bge          s11, t1, 349f
                  xor          tp, t1, s1
346:              addi         t0, a1, 1054
                  sra          s3, a4, ra
                  ori          t1, s8, 1690
349:              srl          a0, sp, a2
                  beq          s1, s1, 366f
                  srli         s3, s4, 30
                  slt          zero, a4, s11
353:              beq          s0, t0, 358f
                  slli         ra, s7, 27
                  sltu         gp, s9, tp
                  sll          s5, sp, s5
                  sra          t5, a7, a3
358:              sub          s0, a2, a6
                  bgeu         s3, t2, 364f
                  sll          tp, s7, t0
                  nop
                  add          zero, gp, s0
                  srl          t3, ra, tp
364:              sll          t3, s9, a1
                  or           a2, s8, t2
366:              addi         a2, t3, -1199
                  slli         s4, sp, 24
                  andi         t1, s4, -1210
                  xor          s6, a6, s8
                  or           s6, t2, a5
                  andi         sp, a0, 1378
                  addi         sp, a1, -729
                  auipc        s11, 248829
                  slt          sp, s5, t2
                  sltu         s5, a2, a0
                  lui          s3, 832291
                  la           ra, sub_9
                  sll          a4, zero, t1
                  auipc        s9, 123836
                  slti         a7, t3, 1991
                  addi         ra, ra, 62
                  xor          s7, s10, a0
                  sub          s10, s10, gp
                  sltiu        gp, t6, 817
sub_7_j10:        jalr         ra, ra, -61 #jump sub_7 -> sub_9
                  srli         a7, t0, 5
                  ori          t5, tp, -1882
                  slti         tp, a0, -842
                  add          s8, t3, a6
                  blt          s5, s7, 387f
                  andi         ra, s9, -1303
                  sll          s3, t2, sp
                  and          a2, a5, a0
                  bltu         s2, t5, 385f
                  xor          s6, a2, a4
                  lui          a1, 498468
385:              nop
                  sll          a4, a4, ra
387:              ori          a7, gp, -1304
                  bge          a2, sp, 398f
                  or           s8, t5, s0
                  bne          s6, s7, 399f
                  sub          s2, zero, t0
                  nop
                  bgeu         t4, s4, 412f
                  sltu         s11, a1, a2
                  nop
                  slt          tp, s6, s8
                  slli         s3, s11, 6
398:              srai         t3, s11, 0
399:              blt          a4, t6, 401f
                  or           s1, t6, zero
401:              auipc        a4, 897924
                  slt          t4, t4, a7
                  auipc        a6, 870302
                  and          s0, a7, sp
                  slt          s9, s8, s11
                  bge          a7, t4, 412f
                  andi         s7, t5, -550
                  lui          a2, 649877
                  sll          s8, a3, gp
                  andi         s8, s10, -114
                  lui          a4, 633941
412:              beq          s5, a0, 431f
                  bne          a7, t1, 433f
                  slt          t5, a3, t6
                  bltu         a6, a3, 434f
                  sll          t3, t2, s10
                  ori          s3, s4, -1835
                  add          a4, a5, a3
                  sub          ra, a3, t0
                  sltiu        sp, s3, 2012
                  or           s2, t2, s10
                  or           s10, s1, gp
                  add          s1, s9, s3
                  slt          s1, t5, t2
                  sll          t0, s1, s2
                  bne          s0, sp, 436f
                  sltu         s0, s8, t0
                  add          s0, a7, a3
                  beq          a5, a5, 447f
                  blt          s0, t6, 448f
431:              sub          zero, s8, s5
                  srli         a4, t6, 20
433:              nop
434:              xori         tp, a0, -1342
                  sll          a2, s3, a5
436:              bge          s1, s11, 441f
                  bne          a6, t3, 447f
                  xori         tp, gp, -1212
                  and          sp, t1, t2
                  slt          zero, a4, s11
441:              slt          s3, s4, tp
                  addi         a2, a3, -1319
                  or           sp, s6, s8
                  xori         a0, s1, 1817
                  nop
                  andi         s7, t5, 55
447:              bne          tp, t4, 452f
448:              slt          ra, s1, s8
                  srai         t0, gp, 18
                  sltiu        ra, s4, 375
                  bne          a7, s4, 467f
452:              xor          t1, s0, s7
                  srai         t5, s3, 8
                  xor          s0, t1, s2
                  andi         t6, zero, -100
                  sltu         s7, s5, t6
                  andi         s8, t3, -1013
                  bltu         a1, s8, 459f
459:              bge          s1, s3, 471f
                  xor          a6, s2, sp
                  andi         s1, a2, -974
                  lui          tp, 692107
                  sltu         tp, t3, t6
                  srl          s10, s10, a2
                  srl          tp, t4, a5
                  sltu         gp, a6, s0
467:              slti         s5, a3, 575
                  lui          a6, 202277
                  addi         t3, tp, -741
                  sub          ra, sp, s1
471:              xori         s8, s9, 1262
                  sltiu        gp, s10, -1995
                  sub          s0, tp, a5
                  lui          a2, 116972
                  slt          t6, s3, t1
                  xori         s11, a2, 1527
                  beq          s11, a7, 480f
                  sra          s1, t4, s11
                  bne          a1, t3, 487f
480:              blt          s4, t0, 493f
                  slli         ra, a0, 3
                  sra          s11, t6, s7
                  blt          tp, s9, 499f
                  slti         ra, s8, -1031
                  add          ra, zero, s8
                  srl          zero, a3, a7
487:              lui          t6, 427448
                  addi         t4, zero, -1073
                  bge          s11, a2, 498f
                  blt          sp, t6, 509f
                  xori         s10, s6, -356
                  blt          a5, s9, 494f
493:              slti         gp, s10, 995
494:              auipc        a6, 520427
                  srai         s8, t6, 5
                  bge          a7, a4, 502f
                  ori          tp, zero, -1530
498:              slt          s1, a3, a2
499:              addi         s1, ra, -808
                  srli         s11, s10, 26
                  or           a4, a4, s8
502:              xori         t4, s1, -107
                  xor          s6, t0, a1
                  srli         a0, a3, 0
                  auipc        s3, 107192
                  slli         s6, s2, 13
                  andi         t1, t5, 8
                  sub          s1, t3, s5
509:              slt          sp, t4, a7
                  and          s7, a7, s3
                  addi         t3, a1, 635
                  nop
                  ori          sp, s9, -854
                  ori          ra, gp, -373
                  bltu         s2, s5, 534f
                  sltu         t3, a6, t2
                  xori         s6, a0, 1309
                  bltu         a2, s1, 524f
                  slli         a7, s5, 17
                  sltiu        t3, a1, -900
                  sub          t4, t2, zero
                  sll          t5, a6, a1
                  or           s2, s10, s4
524:              addi         a2, s0, 1238
                  beq          zero, s9, 543f
                  xor          s9, s4, s0
                  beq          t6, sp, 536f
                  sltiu        s1, s9, -514
                  xor          t4, t6, s11
                  andi         t3, t5, -588
                  srai         s7, s8, 18
                  ori          s4, s5, -1682
                  xori         tp, a2, 1142
534:              srai         s7, s0, 17
                  beq          a6, sp, 540f
536:              auipc        s9, 813691
                  slti         tp, gp, -627
                  srl          zero, s3, ra
                  sltu         s9, s5, a0
540:              xor          t0, s0, a3
                  or           s5, a7, t1
                  sub          zero, s10, t5
543:              blt          a7, zero, 548f
                  bltu         s6, t2, 547f
                  sub          a1, a7, s2
                  bltu         a3, a2, 549f
547:              slti         s4, a6, 1457
548:              sltu         s2, t2, s9
549:              srai         s6, s2, 5
                  sltu         s8, s10, s8
                  blt          zero, s5, 563f
                  or           ra, t5, a7
                  sltu         s1, s3, t1
                  srl          t5, s6, s10
                  sll          a0, a7, a5
                  blt          s3, s10, 558f
                  beq          s7, a4, 568f
558:              srai         s5, a3, 28
                  sltu         s8, s5, s0
                  nop
                  sltiu        a4, s5, 1284
                  auipc        s7, 620236
563:              add          s1, a7, a6
                  srli         t3, s11, 7
                  addi         zero, a5, -1665
                  sub          s1, t3, a7
                  bgeu         zero, t2, 586f
568:              or           ra, s3, s3
                  sll          s11, a2, ra
                  addi         s10, s6, -1891
                  sub          a7, a0, zero
                  sub          t1, gp, s11
                  xor          s8, a4, s4
                  slt          zero, s2, ra
                  sub          a0, t2, sp
                  slti         sp, zero, 275
                  bge          t6, a1, 597f
                  andi         a6, s0, 5
                  slti         a4, s10, -924
                  sub          s11, s11, ra
                  sub          a1, a3, a3
                  addi         t1, a2, -1306
                  addi         s5, s10, -1508
                  bltu         a2, gp, 596f
                  bne          s2, s9, 601f
586:              slt          s10, s6, s4
                  and          s11, t4, a2
                  bgeu         sp, tp, 593f
                  xor          s5, t4, s8
                  bgeu         tp, a1, 592f
                  sra          s3, s1, s5
592:              blt          s8, t5, 595f
593:              add          sp, t4, a0
                  andi         s9, a4, -130
595:              sltu         s5, ra, a0
596:              xor          t6, tp, s4
597:              srl          s5, s6, t3
                  srai         s4, a0, 8
                  slti         s4, s4, 151
                  nop
601:              addi         t0, s8, 1057
                  bgeu         s5, a0, 613f
                  bge          a1, a3, 606f
                  bne          s1, s2, 620f
                  ori          s7, s2, 1155
606:              srai         a0, s5, 23
                  and          s9, s4, sp
                  bne          sp, a7, 626f
                  la           t1, region_1+698 #start riscv_load_store_rand_instr_stream_9
                  and          a1, a0, a6
                  nop
                  sh           t5, 64(t1)
                  xor          ra, zero, s9
                  lbu          a4, -59(t1)
                  sltiu        a0, t3, 894
                  sb           s9, -35(t1)
                  sb           t1, -53(t1)
                  auipc        t5, 820307
                  lbu          ra, -7(t1)
                  lbu          s2, 29(t1)
                  addi         s1, t0, 1292
                  srli         t0, s6, 6
                  lbu          t4, -55(t1)
                  sh           gp, -4(t1)
                  sll          ra, s6, ra
                  and          a4, s8, a5
                  xor          a2, s3, sp
                  srl          s8, s3, s1
                  slli         t0, s0, 18
                  sltu         a7, a4, tp
                  sltu         tp, s9, t2
                  lb           a6, -37(t1)
                  srli         gp, s8, 9
                  andi         t6, a1, 1949
                  sll          gp, s11, a5
                  sb           s3, -33(t1)
                  lbu          t5, -35(t1)
                  lb           s2, 4(t1)
                  srai         a0, t5, 17
                  sll          s1, t6, ra
                  lb           gp, -51(t1)
                  lbu          a6, -11(t1) #end riscv_load_store_rand_instr_stream_9
                  nop
                  slt          s8, s7, s3
                  ori          s2, s10, -289
                  nop
613:              and          ra, s1, s10
                  slt          s11, a4, s0
                  or           t4, s10, s0
                  sub          s10, s0, s5
                  auipc        s9, 197828
                  nop
                  or           s7, a6, sp
620:              ori          t4, s4, -1341
                  sltu         t5, sp, t5
                  slli         t5, t3, 9
                  and          s10, t1, s1
                  srli         t5, a4, 29
                  lui          sp, 755954
626:              sub          zero, s6, a1
                  sltu         s2, gp, t5
                  sltu         a4, a4, gp
                  nop
                  ori          s3, s8, -1762
                  xor          a6, a6, a2
                  srai         s2, a2, 12
                  xori         a6, t1, 40
                  ori          a1, tp, 913
                  ori          s5, s1, 212
                  auipc        s0, 705568
                  sll          ra, ra, a7
                  slti         a7, t6, -1533
                  sub          ra, a4, t5
                  sub          s4, s5, a6
                  xori         a1, t3, -830
                  sltiu        s10, s6, -1874
                  bgeu         s7, s5, 649f
                  sltu         s8, s11, s11
                  auipc        s4, 40094
                  sub          gp, zero, t1
                  sltiu        t4, ra, 1482
                  srli         t6, s1, 0
649:              sra          t3, t1, a1
                  srli         s0, a3, 25
                  andi         t1, sp, 532
                  sub          s10, s1, a1
                  sra          t5, a0, s11
                  nop
                  sltu         s0, a6, s1
                  xor          t1, a3, s6
                  blt          s0, s7, 666f
                  ori          s7, s3, 1275
                  blt          sp, a2, 668f
                  slli         t5, a5, 29
                  add          a6, t6, s7
                  bne          s3, zero, 674f
                  sub          s8, s11, a3
                  slt          s7, s4, s0
                  sltu         t6, gp, a3
666:              auipc        ra, 5438
                  srli         zero, tp, 8
668:              auipc        s9, 552290
                  bne          s2, t4, 687f
                  beq          a3, a0, 688f
                  xor          gp, t4, s10
                  srli         a6, a0, 28
                  sltu         s3, t4, s5
674:              blt          s3, s7, 675f
675:              sltiu        ra, s11, -1023
                  srai         gp, t6, 9
                  auipc        a4, 91672
                  bgeu         t4, a2, 684f
                  slli         s8, a7, 26
                  nop
                  and          a1, s8, tp
                  xori         t4, a5, 1961
                  add          t5, gp, t0
684:              sltiu        a0, a7, 817
                  bgeu         s8, gp, 687f
                  auipc        s9, 655783
687:              andi         a4, t1, -693
688:              bne          s4, tp, 693f
                  bge          ra, a4, 697f
                  andi         a0, s6, -1793
                  ori          t0, s5, -1347
                  bne          s4, s11, 697f
693:              andi         s8, t1, 1126
                  lui          s7, 388986
                  nop
                  sll          zero, t5, t5
697:              and          a0, gp, s1
                  addi         t4, t2, 1614
                  bge          t5, a3, 712f
                  slli         t4, s8, 1
                  andi         tp, a3, -709
                  nop
                  xor          gp, s9, s6
                  andi         s4, s8, 210
                  bge          sp, s1, 724f
                  bgeu         gp, a6, 711f
                  srai         tp, a4, 0
                  sra          s3, s2, s1
                  sll          t3, a2, s7
                  slt          s6, t5, ra
711:              xor          gp, s6, t1
712:              xori         sp, tp, 624
                  sra          t0, t6, s8
                  sltu         tp, s6, a0
                  sltiu        t1, a3, 921
                  bltu         s5, s2, 735f
                  sll          t6, tp, s10
                  slti         zero, zero, -1382
                  auipc        s5, 1016840
                  xori         t0, s3, -183
                  bltu         s1, tp, 724f
                  srl          s11, s2, s2
                  bltu         s10, gp, 733f
724:              bltu         gp, s4, 734f
                  and          t1, t5, a0
                  sra          a6, t2, s11
                  sra          zero, a6, t3
                  beq          t0, a4, 730f
                  addi         a2, a7, 1624
730:              sra          s5, t6, s2
                  andi         s8, t1, -1560
                  auipc        a0, 4053
733:              sra          t3, s3, t5
734:              slli         s1, s5, 31
735:              slt          s5, s9, t0
                  sll          t6, s5, s1
                  bge          s0, zero, 746f
                  addi         ra, s1, 1039
                  srai         s2, a0, 27
                  add          t3, a5, tp
                  slt          a6, s6, s7
                  bgeu         s1, t1, 747f
                  slti         t3, t2, 1635
                  sra          t3, s10, t1
                  slti         s11, ra, -1956
746:              bltu         t0, s9, 758f
747:              slti         t5, s2, -469
                  auipc        ra, 189887
                  sra          s5, a4, t1
                  sll          t0, s3, s9
                  srl          t6, s2, t3
                  slti         tp, sp, -394
                  xori         ra, s8, -1185
                  slt          s9, s3, t5
                  bgeu         gp, gp, 773f
                  slti         s11, t3, 316
                  sltiu        sp, t2, -1782
758:              blt          s10, s8, 761f
                  xori         gp, s4, 780
                  add          s3, a7, a5
761:              sltu         s10, s2, t6
                  sub          s8, s10, sp
                  sltiu        t4, s11, 540
                  srai         s2, s3, 9
                  blt          s2, a5, 770f
                  lui          a4, 418055
                  slti         a4, s5, -778
                  bne          sp, s10, 779f
                  sltiu        a4, s0, 1107
770:              sltu         a6, a4, s3
                  xori         s2, a4, 1447
                  bltu         s10, a4, 782f
773:              xori         s5, a4, -566
                  sll          t1, ra, ra
                  bltu         s8, t6, 778f
                  bgeu         t6, sp, 777f
777:              sll          t5, zero, ra
778:              and          tp, s0, a0
779:              bltu         s8, a2, 782f
                  andi         t4, gp, 1818
                  andi         zero, s9, -892
782:              srl          a7, t2, s11
                  slli         ra, gp, 22
                  slt          a1, s11, s2
                  and          a7, sp, t5
                  beq          a5, a5, 805f
                  slti         a4, a6, 687
                  auipc        a2, 380920
                  ori          a2, t5, -393
                  lui          s2, 210724
                  slt          a6, s0, a5
                  nop
                  ori          t6, s11, -1205
                  bge          t3, sp, 796f
                  srl          s9, t6, tp
796:              sltiu        s6, t6, -1439
                  xori         a4, a7, 1366
                  andi         zero, a3, -1152
                  xor          t1, s1, s11
                  bne          sp, zero, 809f
                  add          s7, zero, a4
                  sltu         t5, a1, t3
                  bltu         t2, a5, 815f
                  lui          s8, 606361
805:              sub          s9, a1, s0
                  blt          s11, t3, 811f
                  bltu         t2, tp, 825f
                  addi         s5, a0, -1895
809:              and          ra, s0, s4
                  or           t3, t6, s9
811:              addi         t6, t3, -1026
                  sltu         t6, t4, s9
                  bltu         s7, a0, 826f
                  ori          s8, s1, 558
815:              bge          a3, a5, 820f
                  slti         s10, t2, -455
                  blt          s11, s8, 837f
                  sltu         t6, sp, t3
                  bgeu         tp, ra, 829f
820:              auipc        s10, 135632
                  bgeu         zero, s5, 840f
                  lui          a6, 597985
                  srl          s10, t5, ra
                  nop
825:              srl          s9, t1, s4
826:              auipc        s1, 799115
                  auipc        ra, 465392
                  xor          s7, s3, ra
829:              xori         a0, s1, -464
                  slli         zero, a0, 28
                  slt          t0, s4, s0
                  bltu         a7, s11, 848f
                  srai         s6, a3, 16
                  sra          t0, s6, zero
                  sub          a2, s11, s1
                  add          t3, s4, a0
837:              xor          tp, a4, a2
                  sra          s8, a2, a2
                  bge          s6, s1, 847f
840:              slti         s3, s6, 1822
                  add          s1, gp, ra
                  sltiu        s0, t0, 1472
                  auipc        sp, 430805
                  slt          s0, s7, a3
                  slti         ra, s3, 362
                  sra          s6, ra, s4
847:              sub          s6, s3, s10
848:              and          t5, a3, sp
                  nop
                  bltu         a1, s7, 856f
                  slti         s10, tp, -1797
                  sltu         s9, s8, s1
                  srai         s5, gp, 5
                  sltu         s10, sp, s2
                  sra          tp, zero, s6
856:              nop
                  bgeu         s6, t5, 873f
                  beq          s2, s6, 877f
                  nop
                  or           s9, a5, a7
                  sltu         gp, s0, t4
                  addi         s4, sp, 507
                  auipc        s3, 506597
                  srli         t4, s4, 7
                  nop
                  blt          zero, t4, 884f
                  bltu         t4, a4, 873f
                  and          s9, a7, a2
                  auipc        s10, 68168
                  xori         a1, s10, -593
                  slti         s10, a2, -1767
                  srai         t4, s5, 9
873:              add          s9, gp, s3
                  andi         t6, t4, 1481
                  and          s6, s8, s7
                  bge          s9, t6, 877f
877:              slt          zero, s7, t2
                  slli         s7, s7, 4
                  sltiu        s0, s9, -715
                  bne          a3, s1, 883f
                  bgeu         a1, s4, 900f
                  bge          a4, gp, 902f
883:              sra          s7, s0, s0
884:              srli         zero, tp, 13
                  bne          s10, s6, 901f
                  blt          s8, t6, 904f
                  auipc        t6, 282409
                  srl          t3, tp, s1
                  sltu         s11, a3, s3
                  slli         s3, sp, 11
                  sra          s2, s3, a1
                  addi         a2, s4, -574
                  srai         t0, s3, 4
                  auipc        t4, 680055
                  lui          ra, 331515
                  auipc        s4, 805733
                  sltiu        t1, t6, -401
                  srli         a6, t1, 30
                  auipc        s2, 100873
900:              xor          a4, t1, s5
901:              nop
902:              auipc        s8, 517101
                  slti         a7, s3, -1968
904:              addi         t4, ra, 1638
                  bgeu         s6, t5, 910f
                  auipc        s0, 911586
                  slli         tp, t2, 13
                  srl          s11, s11, sp
                  andi         a1, s9, -1752
910:              beq          s10, a6, 921f
                  sra          t4, s8, a6
                  beq          t4, s5, 931f
                  slli         s5, s2, 3
                  slli         s1, s0, 26
                  bltu         s9, s1, 933f
                  add          a7, t4, s8
                  blt          t6, a7, 923f
                  sub          sp, s0, a7
                  blt          a6, t5, 931f
                  srl          a0, a6, s2
921:              lui          s1, 215006
                  srli         t6, t1, 18
923:              slli         s7, s2, 31
                  beq          zero, t5, 929f
                  srai         s2, t0, 13
                  bne          tp, s3, 931f
                  sltiu        s10, zero, 844
                  or           t6, s4, a6
929:              or           s8, s4, zero
                  sub          tp, s6, s1
931:              ori          gp, t0, 918
                  bgeu         t0, a7, 935f
933:              xor          tp, s2, a1
                  ori          t6, t4, 129
935:              bne          ra, a4, 953f
                  sll          t5, a2, s2
                  sra          t3, a0, s4
                  beq          s9, s10, 940f
                  beq          t6, zero, 947f
940:              add          a6, s2, s4
                  sub          t6, a7, s2
                  lui          t0, 945321
                  srl          t4, s5, t0
                  slt          a0, s2, s7
                  andi         s8, s5, -595
                  srli         s7, t5, 15
947:              blt          t5, a5, 952f
                  sll          s5, a7, s5
                  xor          a2, s7, gp
                  srl          a1, s6, a2
                  slt          s4, t6, a4
952:              sltu         t5, s9, t5
953:              srl          s3, s7, a4
                  sltu         sp, tp, tp
                  slli         gp, s6, 25
                  xori         t0, a6, 145
                  blt          t0, s11, 960f
                  slt          ra, s4, gp
                  srli         s10, a3, 15
960:              slli         s1, s1, 15
                  sltiu        t5, s6, -34
                  sltu         s4, s0, t2
                  srl          s0, a2, s6
                  bltu         a0, sp, 974f
                  sub          s1, s10, t6
                  blt          t3, ra, 968f
                  beq          t6, a1, 977f
968:              xori         s1, s8, 1622
                  bne          s0, a1, 985f
                  bge          a3, s10, 979f
                  srl          a6, ra, zero
                  slti         a7, t1, 2021
                  sra          gp, zero, s4
974:              blt          s9, s3, 987f
                  andi         t0, a7, 1872
                  bgeu         a6, a0, 985f
977:              bltu         s7, a2, 983f
                  ori          a6, a1, -1881
979:              srai         s3, s0, 18
                  srl          s10, s8, a7
                  bltu         s10, s8, 993f
                  sub          gp, s3, gp
983:              slti         a6, s6, -599
                  srai         a1, a7, 9
985:              xori         s10, s1, 1091
                  bgeu         s4, s4, 1005f
987:              sltiu        t4, s3, 5
                  xori         s6, s2, 1561
                  lui          s2, 283523
                  sltu         s4, t6, t2
                  sltiu        tp, s2, -1503
                  srai         s10, s9, 25
993:              addi         a0, s5, 1457
                  srli         a1, t1, 15
                  bge          s11, s8, 1013f
                  xori         a0, a4, 1318
                  andi         s7, s1, -820
                  bge          tp, s0, 1003f
                  sltu         ra, t0, zero
                  xori         a1, t4, 628
                  bltu         s8, a3, 1006f
                  sra          t0, gp, t4
1003:             beq          t4, s9, 1013f
                  lui          s9, 259853
1005:             srli         ra, a2, 28
1006:             bltu         s3, t6, 1009f
                  bgeu         t3, a2, 1026f
                  blt          a3, ra, 1026f
1009:             addi         t5, s3, -204
                  sltu         s4, zero, s0
                  slti         sp, a0, 484
                  and          s11, a2, t3
1013:             sltiu        sp, t6, 398
                  slt          a7, s7, a4
                  ori          s0, t0, -1052
                  srl          a0, s5, a7
                  and          t6, a2, s9
                  bgeu         s10, t1, 1023f
                  srai         t5, tp, 0
                  slli         s3, gp, 4
                  addi         s11, s2, 292
                  srli         a1, t0, 5
1023:             slli         s4, s0, 25
                  sra          s4, s11, t1
                  add          a7, t5, t1
1026:             ori          t4, t6, 41
                  xor          s4, s7, t5
                  xor          s8, a1, a4
                  nop
                  bge          t2, s10, 1046f
                  beq          s0, a6, 1047f
                  and          a0, zero, s4
                  lui          a4, 147125
                  xor          s7, tp, a6
                  nop
                  slli         a0, a4, 16
                  bne          a0, s2, 1042f
                  bne          s11, sp, 1057f
                  xor          a4, t3, gp
                  sltu         t5, s2, s1
                  and          tp, s1, t1
1042:             xor          gp, t3, a2
                  bge          s3, s11, 1049f
                  addi         t5, s1, -699
                  slli         s5, a1, 20
1046:             xor          a2, tp, s3
1047:             bgeu         gp, a0, 1066f
                  bge          a7, t6, 1066f
1049:             auipc        gp, 339395
                  xor          a1, gp, s4
                  lui          sp, 34106
                  xori         a7, s2, 332
                  slti         t0, s9, 88
                  sra          t5, s2, t4
                  sub          a6, s9, s10
                  sltiu        a7, s9, -1650
1057:             slti         t1, s2, -791
                  or           s0, s0, sp
                  lui          s0, 983978
                  beq          t3, sp, 1061f
1061:             add          s5, zero, s0
                  lui          tp, 992153
                  bge          t4, t5, 1065f
                  srl          t6, s4, gp
1065:             xor          s5, s7, ra
1066:             blt          sp, s2, 1077f
                  sra          a0, a2, t6
                  sll          a7, s11, s0
                  ori          t5, t6, -1813
                  slti         t3, t1, 166
                  beq          ra, t6, 1083f
                  blt          s7, s11, 1080f
                  sub          s5, a7, t0
                  add          t5, s0, t2
                  slti         a0, t3, 1973
                  andi         s2, gp, 49
1077:             sra          t5, s3, a3
                  add          s11, s10, a1
                  srli         s1, zero, 25
1080:             auipc        s7, 285074
                  beq          s2, a5, 1094f
                  srl          s8, s9, zero
1083:             sll          a0, tp, s10
                  srli         s4, t3, 19
                  ori          t6, s2, -1764
                  and          s3, a4, s9
                  beq          t4, s7, 1090f
                  lui          s8, 379633
                  or           s8, t4, zero
1090:             slti         s8, ra, -1140
                  addi         t6, s5, 1184
                  ori          a1, s5, -1844
                  ori          sp, a6, -906
1094:             slti         gp, t2, 949
                  bltu         gp, s5, 1115f
                  srai         s3, t6, 6
                  xor          zero, t0, t3
                  auipc        ra, 667536
                  sltiu        s8, a2, 1818
                  addi         sp, t3, 704
                  bgeu         t3, s11, 1113f
                  and          t4, a5, s2
                  nop
                  sra          tp, t4, t6
                  add          t4, a7, sp
                  sll          t4, s5, t5
                  and          tp, s0, t5
                  slli         zero, s5, 14
                  sra          s1, zero, t0
                  slli         t6, s7, 28
                  blt          zero, s8, 1120f
                  beq          s11, t1, 1121f
1113:             auipc        s4, 10676
                  bltu         sp, s0, 1117f
1115:             or           s9, a6, t2
                  and          tp, a2, a0
1117:             bgeu         gp, a6, 1119f
                  ori          a4, s3, 1
1119:             or           a6, t5, s10
1120:             bne          a4, s0, 1126f
1121:             and          s8, t5, s1
                  nop
                  slli         gp, s7, 26
                  bge          t5, s7, 1134f
                  ori          s8, a2, 1879
1126:             or           s10, t6, s9
                  bgeu         a5, t4, 1132f
                  srai         a7, s7, 15
                  beq          s8, s3, 1147f
                  or           s6, s6, sp
                  ori          tp, a7, 1258
1132:             slti         zero, zero, -558
                  bgeu         t4, sp, 1138f
1134:             xor          s4, a3, ra
                  xori         s8, s9, -1818
                  bne          zero, t2, 1148f
                  bge          s4, zero, 1156f
1138:             ori          s4, s5, -1491
                  xor          s4, a4, a1
                  sltiu        s0, ra, 1670
                  bltu         s4, t3, 1144f
                  srl          s2, s2, s7
                  bltu         t3, t0, 1145f
1144:             lui          t6, 1024830
1145:             srli         ra, sp, 13
                  bltu         a1, s2, 1152f
1147:             sra          ra, s11, zero
1148:             sll          s4, a0, s6
                  sltiu        s4, s8, -228
                  xori         sp, t3, 941
                  sll          s6, a3, t6
1152:             bgeu         s8, a6, 1161f
                  auipc        t6, 170397
                  bge          a1, s8, 1166f
                  blt          s9, a3, 1165f
1156:             andi         t5, tp, -438
                  bltu         s1, s8, 1162f
                  bltu         a3, a5, 1176f
                  bgeu         t6, t4, 1179f
                  sub          s9, s8, a0
1161:             and          s8, s1, gp
1162:             sll          a4, a5, ra
                  bne          a1, t6, 1166f
                  bne          s0, a6, 1166f
1165:             slt          a4, s4, gp
1166:             slti         s3, t0, -1963
                  slli         s8, s7, 16
                  srli         t3, t5, 18
                  sra          zero, s8, s4
                  sra          ra, tp, t6
                  xor          s8, s2, a1
                  or           a2, t5, s11
                  and          zero, s10, tp
                  or           s1, s3, a5
                  sll          s5, s2, sp
1176:             srl          s11, tp, t6
                  andi         a6, ra, 1185
                  bltu         t0, t3, 1196f
1179:             xori         s7, s7, 186
                  and          sp, a4, t0
                  add          t6, a3, t6
                  andi         s2, a3, -619
                  ori          s2, s2, 1929
                  slt          t0, t5, a3
                  srli         gp, s4, 2
                  sra          t0, gp, t2
                  andi         s2, tp, 1321
                  ori          s6, s10, 417
                  sltu         s4, a0, tp
                  sub          s6, a7, t4
                  blt          s2, s8, 1210f
                  xor          s4, s6, tp
                  srl          s5, a3, a2
                  slt          s11, a4, tp
                  slli         s11, t5, 4
1196:             sltiu        t3, t4, -15
                  auipc        t4, 992363
                  blt          t2, s8, 1214f
                  beq          s3, t5, 1207f
                  bge          t2, s1, 1211f
                  bgeu         s11, a7, 1207f
                  bgeu         t3, t5, 1212f
                  slt          a7, s4, s0
                  sub          s8, t0, s9
                  lui          s8, 107055
                  addi         t4, a6, 633
1207:             slt          s0, a4, s11
                  sll          s7, s1, gp
                  sll          a1, t3, s4
1210:             sltu         s6, t3, t0
1211:             ori          s0, s6, -2019
1212:             beq          s5, a1, 1228f
                  blt          sp, t2, 1226f
1214:             lui          a4, 207741
                  sra          sp, t1, a7
                  srl          s4, s11, a7
                  sll          s9, tp, t6
                  slti         tp, t3, 1770
                  addi         t4, s6, -737
                  xor          a7, s5, gp
                  xor          s2, t0, tp
                  slti         s7, s8, 1280
                  blt          s11, s0, 1226f
                  addi         s5, ra, 1256
                  ori          s8, s5, -563
1226:             xori         ra, a5, -943
                  sra          a6, t6, s3
1228:             slli         s10, s0, 4
                  beq          s11, s10, 1234f
                  xori         t4, t5, -922
                  sll          s7, ra, s8
                  addi         a2, t3, 1954
                  slt          s0, s5, a4
1234:             and          s8, s4, a3
                  xor          t3, s6, t5
                  ori          s5, s4, -1539
                  bltu         t5, s5, 1256f
                  slti         s1, gp, 390
                  bge          t2, s2, 1248f
                  or           t6, s5, t5
                  lui          s9, 139980
                  xor          s11, tp, gp
                  ori          a7, ra, 269
                  bne          s3, a7, 1245f
1245:             sub          a4, s4, s9
                  sltu         t1, s5, a5
                  xor          t6, a4, s11
1248:             sll          t6, a6, a5
                  blt          s5, a0, 1252f
                  auipc        t0, 427534
                  auipc        s4, 828646
1252:             nop
                  blt          s1, s1, 1266f
                  sub          s9, t2, s9
                  sltiu        t3, t5, 1253
1256:             slli         t1, t1, 19
                  auipc        gp, 772585
                  auipc        a6, 913111
                  and          s2, t3, s11
                  blt          t2, t0, 1270f
                  addi         tp, s10, 216
                  bgeu         s11, s4, 1267f
                  addi         a2, zero, 1541
                  or           t1, t5, s11
                  andi         t1, s1, 1103
1266:             sra          a7, t6, a3
1267:             andi         s3, a5, -372
                  beq          t1, t4, 1273f
                  lui          s2, 197153
1270:             bltu         sp, t2, 1276f
                  xori         a7, s1, 1890
                  slti         t5, s9, -640
1273:             add          s8, t5, s3
                  xori         ra, gp, -897
                  lui          s2, 707319
1276:             addi         s8, t4, 273
                  nop
                  xor          a4, a0, a3
                  sub          s11, s1, t5
                  auipc        t0, 18795
                  addi         s10, s10, 1118
                  lui          s8, 1041977
                  srai         s8, s2, 11
                  srai         s11, a0, 9
                  sub          gp, s1, sp
                  addi         s0, a0, 1049
                  lui          tp, 1030586
                  add          s3, a7, t3
                  bltu         s5, s7, 1307f
                  srli         ra, s4, 31
                  andi         sp, t5, 1611
                  sra          s4, t5, s2
                  srai         a6, t3, 30
                  bgeu         t3, t1, 1303f
                  ori          s8, a0, -707
                  srli         a1, s7, 3
                  and          ra, s6, s10
                  andi         s8, zero, 284
                  sltiu        sp, a0, -1707
                  slt          s1, t2, s1
                  bgeu         s5, a5, 1304f
                  addi         a2, s2, 697
1303:             sra          ra, s8, a6
1304:             andi         s1, s0, -1161
                  srai         a4, t4, 20
                  andi         t4, a5, -173
1307:             sltiu        a6, t4, 514
                  bgeu         s2, s3, 1320f
                  ori          tp, t3, -1551
                  srai         s9, s7, 17
                  bne          ra, sp, 1329f
                  bgeu         s8, t0, 1332f
                  lui          a7, 1019609
                  sll          s6, t4, gp
                  add          s9, t5, a6
                  bge          a2, a1, 1335f
                  and          sp, tp, a3
                  sub          t5, a0, s4
                  bltu         a7, t0, 1331f
1320:             or           s4, s2, ra
                  auipc        s2, 426321
                  sub          a1, s0, a1
                  addi         s0, t5, 1160
                  bne          t5, s2, 1335f
                  or           s11, t4, a0
                  sll          s0, a7, s10
                  blt          s8, tp, 1336f
                  addi         s0, zero, 935
1329:             slti         gp, a4, -1582
                  xor          s0, s3, a1
1331:             nop
1332:             bne          s6, t2, 1337f
                  andi         ra, s9, 754
                  auipc        t1, 782750
1335:             srl          tp, s8, tp
1336:             sltu         s4, sp, a2
1337:             bltu         a7, s11, 1345f
                  srai         ra, a4, 0
                  sra          zero, s6, t0
                  beq          t0, tp, 1345f
                  ori          a7, s4, -1099
                  xor          s1, sp, t1
                  bltu         a6, a1, 1361f
                  bgeu         a4, t6, 1346f
1345:             srl          sp, s10, a0
1346:             xor          s3, t4, a5
                  beq          tp, s8, 1366f
                  xori         s8, s9, -1854
                  slli         t6, a6, 27
                  sltu         a6, t2, a4
                  lui          s7, 598208
                  xori         tp, zero, 1606
                  ori          s0, gp, 760
                  add          s6, s2, a4
                  sub          s10, zero, t3
                  addi         s3, s0, 1896
                  addi         t4, t4, -1269
                  lui          s11, 157886
                  or           s9, t0, s0
                  bne          a4, tp, 1362f
1361:             slti         a6, t3, -121
                  la           sp, region_0+341 #start riscv_load_store_rand_instr_stream_1
                  sb           a7, 2(sp)
                  nop
                  lbu          s11, 226(sp)
                  sh           ra, 179(sp)
                  srli         a4, s8, 8
                  srai         a1, a0, 17
                  nop
                  slt          s0, s11, ra
                  srl          zero, sp, ra
                  lbu          a0, 107(sp)
                  addi         t0, s3, -1068
                  slti         a2, s9, -390
                  lb           s10, 51(sp)
                  lb           a7, -211(sp)
                  sll          s7, s2, s10
                  add          zero, t3, ra
                  auipc        s8, 762917
                  srli         t3, a1, 10
                  lhu          a2, 15(sp)
                  lbu          a4, 90(sp)
                  ori          s7, a6, -1251
                  lb           t6, 194(sp)
                  lb           t4, 225(sp)
                  lb           a1, -233(sp)
                  and          s5, tp, s10
                  sb           a2, 152(sp)
                  lb           s7, 217(sp)
                  srli         ra, a1, 27
                  srai         s7, s11, 19
                  slti         a2, a1, -44
                  lb           gp, -209(sp)
                  sh           s5, 131(sp)
                  lhu          s9, -49(sp)
                  sra          s1, a4, t1
                  sb           s6, 106(sp)
                  srai         s5, t6, 10
                  sltiu        t4, s4, 1319
                  lbu          zero, -126(sp)
                  sb           gp, -202(sp) #end riscv_load_store_rand_instr_stream_1
1362:             bgeu         s3, a4, 1363f
1363:             beq          s9, s3, 1369f
                  sra          a1, t3, s10
                  slli         a7, s8, 21
1366:             sltiu        s4, ra, 1229
                  srli         s11, s4, 15
                  sra          tp, s9, s4
1369:             lui          s10, 560498
                  bgeu         t0, a0, 1386f
                  bge          a2, s1, 1374f
                  add          a6, a4, t1
                  bgeu         s5, t6, 1392f
1374:             beq          s1, zero, 1384f
                  srai         t6, s9, 2
                  sra          zero, a5, a3
                  lui          s11, 904304
                  xori         gp, a6, -175
                  sltu         s1, s7, gp
                  beq          ra, a0, 1396f
                  nop
                  sll          a7, a2, t3
                  or           s0, a2, ra
1384:             nop
                  blt          a4, t5, 1387f
1386:             addi         a1, a5, 847
1387:             srai         s8, a7, 30
                  auipc        t6, 873838
                  beq          gp, t4, 1407f
                  add          a1, a2, tp
                  slli         s7, t6, 7
1392:             beq          s4, s7, 1404f
                  xori         s0, s1, 1579
                  beq          zero, s3, 1402f
                  sub          a4, a4, tp
1396:             slli         t4, s2, 28
                  sub          s3, s2, t1
                  sub          t5, tp, t5
                  srli         s1, a7, 20
                  slli         a7, t0, 23
                  srli         sp, t1, 1
1402:             srai         s6, sp, 24
                  srl          a2, sp, t2
1404:             bne          t3, t0, 1409f
                  add          t6, s0, a5
                  or           s3, s2, zero
1407:             srl          s8, t3, s2
                  srai         a2, gp, 24
1409:             add          s10, t0, a5
                  srl          s0, a5, s9
                  lui          sp, 551845
                  srli         s8, s5, 0
                  sll          t0, s2, t6
                  xor          s3, t6, s0
                  lui          zero, 796178
                  and          s6, sp, s8
                  slt          a4, gp, s1
                  srli         t6, zero, 3
                  add          a7, t0, s6
                  and          s1, ra, a6
                  sub          s10, s4, s8
                  add          s11, a2, s5
                  auipc        s5, 145411
                  sll          a4, a3, a2
                  bge          sp, a2, 1444f
                  bne          t2, s4, 1436f
                  xori         a4, t6, 1191
                  xor          a1, t5, t3
                  andi         s1, a7, -949
                  auipc        tp, 451134
                  or           s6, t6, t0
                  bgeu         tp, s5, 1445f
                  addi         s8, s2, 1011
                  sll          s10, zero, s4
                  andi         t6, t1, -1532
1436:             sra          a1, a7, s1
                  bne          a1, a1, 1449f
                  auipc        a4, 635100
                  blt          s0, t3, 1442f
                  bge          s2, sp, 1446f
                  sltu         t5, s0, t2
1442:             bge          t4, a3, 1448f
                  bge          t5, t1, 1448f
1444:             bltu         s8, a3, 1462f
1445:             ori          sp, s7, 488
1446:             slli         t0, a6, 11
                  sltiu        t0, s3, -1852
1448:             nop
1449:             bge          a3, s6, 1450f
1450:             sub          a2, a3, s6
                  srl          a0, t4, s3
                  auipc        gp, 288754
                  beq          s0, ra, 1469f
                  blt          s2, s11, 1459f
                  and          s6, a6, t1
                  nop
                  srli         zero, t0, 8
                  ori          a6, t0, 1806
1459:             sll          s7, a6, s3
                  xor          gp, s7, a1
                  lui          zero, 619514
1462:             ori          t6, s9, 2009
                  xor          a0, t2, a0
                  srai         ra, a7, 0
                  sltu         t4, s3, t0
                  lui          s6, 787529
                  srli         s4, zero, 24
                  auipc        s9, 827639
1469:             sltiu        sp, sp, -1155
                  auipc        t3, 725111
                  andi         s9, zero, -329
                  srli         s2, a7, 13
                  bgeu         t0, s6, 1475f
                  and          s6, t2, sp
1475:             ori          t4, a3, 730
                  sltu         s10, s7, s9
                  and          s2, s0, s9
                  auipc        t6, 244989
                  sub          s4, t0, a0
                  beq          s2, s9, 1500f
                  slti         a0, a2, 1406
                  beq          t1, a7, 1498f
                  sra          a1, a4, t0
                  bltu         t0, t1, 1503f
                  sra          t6, s3, ra
                  bgeu         sp, t1, 1504f
                  sll          s10, a6, a3
                  or           a1, s9, t3
                  srli         s11, sp, 23
                  bge          t1, s10, 1499f
                  bge          s7, t6, 1500f
                  xori         gp, gp, -2015
                  beq          zero, ra, 1498f
                  sub          a2, s1, gp
                  bltu         a7, a3, 1498f
                  nop
                  slt          s3, t3, t1
1498:             slt          s2, s5, sp
1499:             blt          t5, sp, 1518f
1500:             add          a0, t4, zero
                  auipc        s1, 68464
                  srl          s11, s1, s8
1503:             slti         zero, s0, 1751
1504:             or           s10, a1, t1
                  bge          s11, a3, 1515f
                  sll          s4, a7, a0
                  sll          t1, s0, s2
                  slti         t1, s8, 491
                  and          s1, s7, a1
                  sub          a1, s4, t2
                  slli         a2, s8, 17
                  srl          s3, s0, t4
                  sll          t1, s10, s7
                  bne          ra, a7, 1517f
1515:             srli         t5, a2, 17
                  sub          t1, s1, t4
1517:             srl          a0, gp, t3
1518:             sltu         sp, a7, s2
                  slt          s4, s8, t1
                  and          s7, s0, s9
                  srl          t0, t3, s2
                  srli         a1, tp, 28
                  ori          a2, a5, 48
                  srl          a7, gp, sp
                  bltu         a0, t2, 1536f
                  bge          t5, s1, 1545f
                  beq          s9, a6, 1533f
                  sltu         t0, a7, a2
                  slli         t6, a1, 12
                  ori          tp, s4, 1674
                  or           t1, ra, s6
                  sltu         sp, s2, t2
1533:             xor          t5, gp, a3
                  and          s2, t3, sp
                  ori          sp, zero, 838
1536:             srai         t0, s9, 28
                  bne          t1, s3, 1547f
                  slti         s3, a5, -1274
                  xor          s9, tp, t1
                  srai         gp, s4, 22
                  srli         sp, s1, 21
                  sll          s4, s1, ra
                  or           t6, tp, t6
                  srli         s11, t3, 3
1545:             srl          s3, s3, s4
                  xori         s6, s2, 1459
1547:             or           s3, t4, ra
                  and          sp, a0, t4
                  or           s9, a3, zero
                  lui          ra, 69067
                  xor          ra, s3, ra
                  srai         sp, s3, 11
                  slti         s3, a7, 1947
                  beq          a0, a5, 1556f
                  sub          s9, s2, t6
1556:             addi         s10, s11, -1470
                  sub          s4, s7, a5
                  slt          s1, t0, t0
                  bgeu         a5, s11, 1564f
                  or           tp, gp, t1
                  xori         s10, zero, 1793
                  srli         s6, sp, 23
                  sll          sp, a0, a5
1564:             addi         t1, t6, 708
                  lui          s10, 899246
                  addi         s2, s7, 616
                  or           s6, s11, s7
                  bne          s1, t1, 1584f
                  slt          a6, s4, a4
                  andi         s8, a4, -874
                  andi         a7, s0, 1299
                  nop
                  sra          a4, zero, s7
                  blt          s9, sp, 1575f
1575:             nop
                  and          a6, s11, t0
                  xor          s5, t4, t5
                  nop
                  blt          s2, zero, 1595f
                  blt          a3, t1, 1599f
                  sltu         s9, zero, t6
                  ori          s5, t2, -348
                  bge          s4, zero, 1595f
1584:             auipc        a4, 205930
                  srl          gp, s2, s2
                  auipc        sp, 954158
                  blt          a6, a5, 1592f
                  ori          a0, t0, 430
                  beq          s4, gp, 1599f
                  ori          t1, tp, -516
                  auipc        s3, 796675
1592:             bgeu         zero, s1, 1612f
                  sub          a1, a4, zero
                  slti         tp, zero, -857
1595:             srai         gp, a2, 2
                  srai         tp, s3, 2
                  bltu         s1, a2, 1606f
                  nop
1599:             srl          t3, t4, a5
                  bgeu         t4, s4, 1603f
                  beq          s2, s10, 1604f
                  sra          gp, s0, a3
1603:             bltu         s6, a5, 1616f
1604:             slli         s8, zero, 27
                  or           s11, s11, s6
1606:             ori          s0, s8, -870
                  nop
                  slti         ra, t6, -633
                  nop
                  slti         s4, a0, -656
                  or           ra, s8, a7
1612:             nop
                  sltu         s8, a7, gp
                  add          s2, s8, s2
                  andi         s6, s1, -1465
1616:             bltu         s8, a3, 1619f
                  slli         a6, a3, 6
                  xor          t1, s4, tp
1619:             addi         s3, a2, 1545
                  sltiu        a4, zero, -1415
                  addi         s7, s2, 542
                  sll          a0, a4, s0
                  beq          a3, t6, 1642f
                  sll          s4, gp, t5
                  xor          t1, s2, s1
                  ori          tp, t4, 1571
                  ori          a4, t3, -855
                  andi         a6, s6, 1292
                  sra          t6, t1, t6
                  beq          s1, s6, 1638f
                  bgeu         t4, t5, 1640f
                  add          s0, s4, s9
                  sub          s7, s3, t0
                  blt          tp, t6, 1636f
                  blt          ra, t5, 1641f
1636:             bge          sp, s6, 1654f
                  sltu         s7, a6, sp
1638:             sltu         a1, ra, s7
                  bltu         s7, t2, 1657f
1640:             bgeu         t5, a6, 1651f
1641:             srl          s9, s7, a7
1642:             sltiu        t3, s5, 1952
                  srai         zero, tp, 14
                  blt          s7, a0, 1649f
                  sll          s7, a7, s2
                  nop
                  auipc        s8, 830871
                  bltu         a6, s1, 1653f
1649:             lui          s0, 652585
                  beq          a1, a5, 1662f
1651:             bgeu         t4, t4, 1669f
                  sll          tp, t5, s4
1653:             srai         t6, t2, 10
1654:             add          a2, s1, t6
                  xori         a1, s11, -2016
                  and          zero, a6, s3
1657:             sra          s10, t0, s11
                  xor          tp, t5, a6
                  bgeu         a5, s6, 1664f
                  slti         t3, t4, -562
                  ori          gp, t6, -426
1662:             slli         s9, s9, 20
                  sltiu        t1, s0, -1386
1664:             bge          s9, a1, 1674f
                  sltu         zero, a2, a2
                  sll          s4, ra, s7
                  sll          ra, t0, a3
                  slli         s11, a3, 11
1669:             slt          a7, s11, s10
                  addi         s10, s2, 16
                  srl          tp, s9, a5
                  or           s4, t3, a2
                  nop
1674:             sltu         ra, a2, a6
                  srai         s7, s10, 16
                  xor          s0, t1, s0
                  addi         s3, a2, -1846
                  and          t6, t1, s0
                  sltiu        gp, s7, 31
                  srl          tp, s5, gp
                  slti         a7, ra, 525
                  andi         s6, a4, 1470
                  andi         s2, ra, 1211
                  bne          ra, tp, 1685f
1685:             sltiu        a7, t2, -176
                  add          s9, s2, tp
                  nop
                  sltu         s1, s2, ra
                  sltiu        a1, ra, -1443
                  sub          tp, a4, t0
                  or           s9, a7, a4
                  auipc        s2, 252016
                  bge          s6, s5, 1704f
                  slli         a1, tp, 27
                  srl          zero, s11, a4
                  add          s5, a2, s9
                  bgeu         t2, t2, 1700f
                  slt          gp, s8, s5
                  xor          s11, a6, a5
1700:             srl          a6, s9, gp
                  addi         s4, a5, 461
                  or           t6, t3, a3
                  slti         a2, a2, -774
1704:             sltiu        s3, a2, 203
                  nop
                  or           a6, s4, s4
                  srli         t6, t6, 8
                  bge          a2, a0, 1724f
                  addi         s1, ra, 1623
                  srli         zero, s11, 12
                  sll          gp, gp, t5
                  sltu         s9, t2, t0
                  bge          a1, t6, 1732f
                  or           s10, s2, ra
                  sll          s9, s0, tp
                  xor          t3, a7, t0
                  or           t0, s7, s1
                  slt          a4, zero, t5
                  slt          t1, a3, s10
                  add          s10, s1, a7
                  bne          s8, s1, 1727f
                  xori         a6, t4, 163
                  andi         s10, s5, -689
1724:             xori         a7, s6, -1086
                  slt          s7, s2, s6
                  add          a4, gp, s6
1727:             lui          t6, 209269
                  xori         s3, gp, 199
                  addi         a1, s2, -900
                  slti         a6, s0, -47
                  bltu         gp, t2, 1736f
1732:             addi         a6, t3, -1910
                  beq          gp, t3, 1736f
                  addi         s0, zero, 1043
                  srai         s3, zero, 22
1736:             slli         a6, t0, 13
                  nop
                  sltiu        t5, a0, 62
                  lw           ra, 4(t2)
                  slt          a6, t3, a7
                  auipc        a0, 908851
                  slti         a0, s7, 914
                  addi         t2, t2, 16
                  srl          t4, gp, s5
                  srli         s8, a4, 12
                  andi         s5, s8, -894
                  sub          zero, a2, a4
                  srli         s0, sp, 2
2285:             addi x17, x1, 0
2285:             jalr x17, x17, 0
sub_5:            blt          s4, s6, sub_5_stack_p
sub_5_stack_p:    addi         t2, t2, -24
                  addi         s10, s0, 756
                  sw           ra, 4(t2)
                  xor          s3, s6, s2
                  sll          a7, gp, s3
                  auipc        tp, 103365
                  nop
                  sltiu        tp, s3, 1427
                  andi         a2, s5, 1182
                  sra          s0, a6, a1
sub_5_j8:         jal          ra, sub_6 #jump sub_5 -> sub_6
                  slt          t0, a4, s0
                  srai         s9, s10, 13
                  bltu         a7, s11, 14f
                  srli         t1, s4, 8
                  or           a6, t2, s6
                  or           s3, t6, t4
                  lui          ra, 989178
                  bgeu         a5, s0, 10f
                  and          s2, t3, a1
                  slt          a0, a6, a4
10:               slti         gp, a3, 743
                  bge          t5, a2, 24f
                  add          t0, a2, t4
                  slli         s1, sp, 9
14:               lui          a0, 1005087
                  lui          t6, 28247
                  sltu         s2, s4, t4
                  sltu         tp, s3, zero
                  sra          t3, s9, a0
                  addi         a2, s11, 694
                  bgeu         t0, t0, 32f
                  sltu         s3, a1, tp
                  and          s1, a0, gp
                  bltu         t3, t1, 24f
24:               srli         s6, s2, 17
                  bne          t2, s3, 26f
26:               sub          s4, gp, a4
                  blt          gp, s5, 31f
                  srl          s10, s8, a1
                  ori          a0, a5, -633
                  beq          t6, s4, 49f
31:               andi         t1, s5, 1354
32:               bne          a2, a5, 42f
                  srai         a0, t3, 1
                  blt          a6, t4, 54f
                  sub          sp, t2, s0
                  beq          s1, t6, 53f
                  srl          s9, a2, gp
                  bge          a2, a0, 55f
                  andi         t5, a4, -459
                  sub          tp, s11, s0
                  xori         a1, s7, 559
42:               or           s3, s5, a6
                  and          t4, s6, s10
                  sltu         gp, a4, s11
                  sra          sp, s0, t1
                  sltiu        tp, a2, 1311
                  slti         sp, a4, 1666
                  bne          s8, s4, 59f
49:               andi         a0, a4, 1735
                  srai         zero, t3, 13
                  blt          s10, t5, 56f
                  sub          a4, s3, s1
53:               sltu         s1, a6, a4
54:               and          s11, s3, zero
55:               slti         a2, t0, 1493
56:               srai         s11, a0, 0
                  xori         zero, a6, -361
                  sra          s3, t2, a6
59:               slli         s8, ra, 6
                  sll          a2, s8, a6
                  lw           ra, 4(t2)
                  addi         t2, t2, 24
                  xor          a4, a3, t4
                  lui          t5, 865373
                  and          s10, s5, t1
                  srl          a0, zero, s11
                  srai         s6, tp, 3
80:               addi x20, x1, 0
80:               jalr x20, x20, 0
sub_3:            and          a2, s8, t3
                  bltu         s11, a5, sub_3_stack_p
sub_3_stack_p:    addi         t2, t2, -44
                  slli         t1, s8, 30
                  srli         a0, t5, 3
                  sw           ra, 4(t2)
                  lui          tp, 199362
                  sltu         t0, a7, a5
                  slti         s0, t5, -436
                  la           t6, region_1+1876 #start riscv_load_store_rand_instr_stream_2
                  sw           s3, -208(t6)
                  andi         a4, a5, 606
                  ori          s6, t0, 1767
                  srl          t0, s0, zero
                  and          s8, s4, s2
                  slli         s9, s8, 26
                  or           s9, a3, s6
                  sb           s0, -16(t6)
                  andi         gp, s9, -569
                  lb           gp, -172(t6)
                  xor          s4, s2, s3
                  lb           s11, -47(t6)
                  srl          s8, a3, a0
                  or           sp, t2, s11
                  sb           s7, 16(t6)
                  sltiu        a6, gp, 37
                  lhu          s5, 82(t6)
                  lhu          s11, -26(t6)
                  sltiu        a7, zero, 1239
                  and          a4, s11, s5
                  sb           t3, -28(t6)
                  ori          s1, s11, -1426
                  lbu          zero, -20(t6)
                  srl          a0, s11, t1
                  lw           a4, 64(t6)
                  nop
                  srl          s4, t1, t5
                  lb           s11, -199(t6)
                  sb           t5, -107(t6)
                  sw           t5, 4(t6)
                  srl          s11, s10, a6
                  slli         a2, s9, 3
                  sh           s2, -20(t6)
                  sb           s8, 72(t6)
                  srl          s11, s10, t2
                  nop
                  lbu          zero, 18(t6) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_1+367 #start riscv_load_store_rand_instr_stream_3
                  andi         t6, a5, -836
                  lbu          a4, 159(a2)
                  lh           s4, -147(a2)
                  add          s2, t5, t2
                  auipc        gp, 975181
                  addi         ra, s11, -1838
                  ori          a6, s7, -112
                  lui          s10, 201769
                  xori         s11, a7, 1685
                  sltiu        gp, zero, -1443
                  lb           a0, 116(a2)
                  and          s10, tp, t4
                  lbu          sp, 234(a2)
                  lb           s2, 4(a2)
                  lbu          sp, -48(a2)
                  lb           sp, -241(a2)
                  sb           a0, 124(a2)
                  lh           s3, 183(a2)
                  lb           tp, -200(a2)
                  lb           t3, -137(a2)
                  ori          s4, t1, 1362
                  lb           t6, 4(a2)
                  lh           tp, 195(a2)
                  xori         s7, s2, 1827
                  srli         s4, t1, 12
                  sb           tp, -58(a2)
                  lbu          gp, 161(a2) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_1+734 #start riscv_load_store_rand_instr_stream_0
                  or           s3, a6, a4
                  sh           t1, 774(t1)
                  sra          t3, t1, t5
                  nop
                  lbu          a6, -308(t1)
                  sll          s9, s8, t0
                  slti         a0, a2, -969
                  lb           s5, -139(t1)
                  ori          a6, zero, -1531
                  lbu          s6, 1013(t1)
                  sub          s10, s0, s1
                  lb           s11, -670(t1)
                  sra          gp, t3, s9
                  lb           a2, 673(t1)
                  lb           a2, 77(t1)
                  lbu          s7, 991(t1)
                  sb           s1, -21(t1)
                  lbu          t6, -717(t1)
                  or           t5, a0, s6
                  lb           a6, -91(t1)
                  srai         s1, tp, 29
                  lui          t0, 397717
                  lui          a7, 976897
                  sub          s7, ra, t2
                  slti         t4, a2, 805
                  xori         a7, t6, 330
                  and          a0, s8, a5
                  srli         s4, s2, 5
                  lbu          a0, -530(t1)
                  lh           a1, -74(t1)
                  lbu          sp, 847(t1)
                  lbu          a0, 875(t1)
                  srai         s4, s4, 10
                  or           a4, s7, sp
                  lb           zero, 1002(t1)
                  srai         s11, t3, 23
                  lbu          zero, 171(t1)
                  lb           s10, -189(t1)
                  lbu          t0, 559(t1)
                  nop
                  lbu          t3, -555(t1)
                  lb           s11, -577(t1)
                  slti         s11, s10, 1791
                  sb           t4, 1223(t1)
                  xori         t5, t6, -1567
                  sub          a7, t0, s0
                  sltiu        a0, s3, 1168
                  addi         t0, sp, -1174
                  lb           s9, 1185(t1)
                  lh           ra, 126(t1)
                  sb           t4, 1209(t1)
                  sll          t3, s10, s7
                  lb           t4, 470(t1)
                  sb           s10, 1100(t1) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_1+904 #start riscv_load_store_rand_instr_stream_1
                  sra          s5, a4, s10
                  sb           ra, 1061(t4)
                  sltiu        s5, s7, -690
                  lbu          a4, 59(t4)
                  lb           t1, -453(t4)
                  sra          s9, s6, t6
                  auipc        t5, 310181
                  nop
                  andi         zero, a7, 884
                  lbu          s4, 983(t4)
                  sltiu        s1, t1, -508
                  slti         s11, s4, -563
                  nop
                  srai         s7, s9, 28
                  nop
                  ori          t3, a5, 458
                  and          t6, s4, t6
                  sub          zero, s11, a5
                  ori          s2, s1, -252
                  xori         t5, a7, -722
                  sub          t0, s8, a2
                  sra          sp, s4, t4
                  ori          ra, gp, -1495
                  lb           s0, -635(t4)
                  nop
                  add          a0, a7, s9
                  sll          s9, s5, a4
                  sra          s11, a7, s3
                  sll          a0, s1, a5
                  lbu          t1, -702(t4)
                  xori         s7, s8, 1086
                  lhu          s5, 318(t4)
                  slti         ra, t6, 7
                  sh           s9, -252(t4)
                  lw           a0, 0(t4)
                  xori         t5, a4, -414
                  sltiu        t6, s7, -1565
                  sb           s7, 991(t4)
                  sb           t4, 127(t4)
                  lb           t6, -327(t4)
                  lhu          a1, 486(t4) #end riscv_load_store_rand_instr_stream_1
                  nop
                  beq          t1, tp, 4f
                  bge          s2, t5, 19f
                  beq          s7, a5, 4f
4:                ori          gp, a3, -883
                  xor          t6, s1, t5
                  srli         s1, t0, 27
                  sub          s6, s2, a6
                  sltiu        t3, t0, -1824
                  auipc        t4, 624767
                  sltu         a1, s2, a1
                  addi         a7, a0, 1214
                  or           ra, gp, t1
                  sltu         a7, t5, t4
                  bgeu         t1, a2, 28f
                  andi         zero, ra, -716
                  xori         s6, sp, 575
                  slti         zero, a7, -1572
                  ori          s5, s0, -41
19:               addi         t6, s0, 1269
                  xor          s3, a4, tp
                  sltiu        t1, s7, 1564
                  nop
                  sltu         t0, a0, s8
                  bgeu         t4, a6, 31f
                  sltu         a1, s7, s1
                  add          s9, gp, s8
                  lui          a0, 266038
28:               srl          tp, a2, a1
                  auipc        gp, 886807
                  sltiu        zero, a7, -70
31:               ori          s11, s11, -1369
                  sub          s9, tp, a1
                  addi         s4, a1, -914
                  and          s6, t6, t0
                  and          s2, a2, s5
                  xor          a6, a1, s3
                  xor          s0, s0, a6
                  lui          t6, 592070
                  andi         gp, gp, -414
                  slt          s11, s4, s6
                  blt          sp, gp, 49f
                  bge          a4, t0, 52f
                  or           a0, tp, s10
                  slt          s8, a0, ra
                  ori          s10, gp, -649
                  lui          sp, 901039
                  beq          t2, s1, 55f
                  slt          s2, a2, t4
49:               sub          s10, a5, a2
                  add          s8, s6, sp
                  xori         a1, t0, -1185
52:               xori         t0, s3, -1017
                  sra          tp, a0, s5
                  addi         s7, a5, -1424
55:               xori         s9, s6, -1519
                  slli         gp, a4, 22
                  xori         s10, gp, -1107
                  sltiu        a0, t6, -1246
                  srai         a6, zero, 31
                  xor          a6, a3, s8
                  beq          ra, a7, 80f
                  srl          a6, t5, s2
                  addi         s3, t5, -129
                  sltu         zero, a5, tp
                  and          ra, a7, s3
                  bge          a5, s3, 83f
                  and          s4, a7, s9
                  srai         s4, t4, 12
                  nop
                  add          a6, s2, s7
                  or           t4, s8, t2
                  slti         a0, s0, -1065
                  slt          s8, s10, t0
                  or           s0, ra, s9
                  addi         s4, sp, 1446
                  bne          t0, s6, 89f
                  bgeu         a2, a3, 78f
78:               srl          t4, s5, t0
                  nop
80:               sltiu        t4, t1, -1842
                  or           s2, a2, tp
                  xori         s10, t0, 1425
83:               sltiu        s4, t1, -1891
                  auipc        s6, 154489
                  nop
                  sltu         a1, s5, s4
                  or           s1, t5, t4
                  addi         a4, gp, -1366
89:               srai         t6, sp, 12
                  srl          s3, s2, a0
                  slli         a4, a4, 31
                  andi         sp, s10, 53
                  srl          t0, s7, t3
                  srli         a4, s10, 13
                  blt          t0, s9, 98f
                  srli         s1, t6, 10
                  and          t3, a4, a4
98:               sll          s0, a1, t6
                  sra          s6, t0, a6
                  xor          s0, s4, t1
                  lui          s2, 240134
                  slt          t4, a6, a5
                  lui          s1, 990925
                  blt          a6, a2, 114f
                  add          t6, t3, s2
                  sll          s3, t6, s6
                  srai         t5, a0, 12
                  ori          s1, a6, 1070
                  srli         a1, s2, 0
                  sll          s3, s3, s1
                  srai         s2, t2, 25
                  auipc        s4, 312200
                  slli         t4, zero, 27
114:              or           s10, a6, t3
                  andi         tp, t0, 330
                  sll          s6, t0, s6
                  blt          s3, s5, 119f
                  sltu         s3, gp, a6
119:              sra          s9, a6, t6
                  sub          s6, a1, tp
                  blt          gp, ra, 140f
                  bne          zero, sp, 141f
                  lui          s7, 386809
                  lui          s8, 50742
                  and          s3, a5, zero
                  bltu         s5, t5, 146f
                  srai         s11, s0, 11
                  beq          t6, s4, 131f
                  sll          t3, a5, t3
                  blt          s11, a7, 136f
131:              bge          a2, s4, 151f
                  lui          gp, 820511
                  bgeu         s9, s8, 134f
134:              slt          a4, s1, s2
                  slti         t4, t2, -1316
136:              auipc        a2, 152502
                  and          a2, a0, a7
                  addi         s4, t1, -1143
                  bge          t2, t5, 146f
140:              nop
141:              auipc        s11, 834585
                  beq          s11, t4, 147f
                  nop
                  bgeu         a1, s1, 157f
                  srai         t1, s4, 20
146:              and          t1, s4, gp
147:              lui          t1, 895732
                  xori         a2, t1, 473
                  auipc        t3, 85591
                  bltu         a6, a1, 158f
151:              sub          t6, zero, a0
                  ori          s6, a4, 322
                  slt          s7, a2, s5
                  slli         gp, a3, 15
                  sltu         a6, t0, s1
                  slli         a7, t2, 25
157:              bltu         gp, a2, 172f
158:              sltu         s5, t1, a7
                  bgeu         s2, s1, 161f
                  xori         sp, s0, -1354
161:              lui          s0, 427338
                  slti         a2, a2, -764
                  xor          t6, s10, a6
                  srai         ra, t0, 25
                  addi         t4, a4, -1817
                  slli         s6, a3, 10
                  nop
                  sll          s8, sp, gp
                  srl          zero, s8, s0
                  addi         t0, s10, -523
                  and          tp, s0, s2
172:              auipc        s8, 588671
                  auipc        zero, 291463
                  sltiu        s4, a1, -782
                  sub          s2, a2, a1
                  sra          s11, zero, s0
                  bltu         t3, s1, 194f
                  auipc        a7, 85272
                  xor          a0, s0, s11
                  addi         t6, a0, 254
                  auipc        t5, 382982
                  ori          t0, a7, 2028
                  and          t3, t4, s11
                  srai         t4, tp, 17
                  srai         gp, t0, 4
                  slt          a1, a0, a0
                  blt          a6, a2, 205f
                  sltu         s6, s7, t1
                  and          s8, t4, s3
                  bltu         s4, s11, 209f
                  sltiu        s11, s1, -2034
                  ori          s5, s5, 962
                  blt          t5, sp, 195f
194:              beq          s3, t1, 202f
195:              beq          t4, s4, 212f
                  addi         s2, a5, 904
                  addi         s10, a5, 966
                  srli         s11, s9, 7
                  bge          t3, t1, 202f
                  srli         t5, a0, 10
                  xor          a4, a7, a5
202:              sltiu        s9, a5, 624
                  slt          a4, s2, zero
                  bge          s6, t3, 214f
205:              slli         ra, t2, 1
                  sll          s0, s4, s10
                  slt          ra, a5, s0
                  bge          s6, s10, 221f
209:              bge          a1, zero, 227f
                  slli         gp, t1, 18
                  sll          gp, t3, s11
212:              bgeu         s9, zero, 231f
                  or           zero, a4, t4
214:              bne          a4, s10, 216f
                  srai         a2, s6, 17
216:              srl          t3, s7, sp
                  sltu         gp, s1, zero
                  bgeu         a1, gp, 238f
                  slt          s0, a0, s3
                  sll          s11, a1, a3
221:              nop
                  bltu         t6, s8, 223f
223:              nop
                  or           a1, t0, s10
                  slti         gp, a0, -1732
                  srli         s11, s3, 18
227:              sltu         a6, sp, a1
                  lui          s3, 785339
                  bltu         t3, tp, 237f
                  auipc        t0, 188270
231:              add          s11, t3, s6
                  bge          s3, s10, 245f
                  nop
                  add          t5, t5, a0
                  xori         s5, s10, 255
                  bge          t5, a2, 239f
237:              andi         tp, a6, -760
238:              beq          s5, a4, 245f
239:              slt          a4, t4, a7
                  auipc        s8, 835327
                  xori         t5, s0, -587
                  blt          s11, ra, 247f
                  sltiu        t5, t4, 773
                  beq          s10, gp, 251f
245:              slli         a7, s6, 24
                  and          t6, s7, sp
247:              bgeu         s5, a6, 253f
                  slli         a7, t6, 24
                  xor          s7, a2, t6
                  auipc        s6, 520085
251:              srl          s8, s3, s11
                  slt          t1, t1, a6
253:              xori         a4, t3, -831
                  or           s8, a6, s5
                  blt          zero, s4, 270f
                  auipc        s11, 601537
                  addi         s10, ra, -624
                  lui          s9, 853512
                  sltiu        s4, a0, -292
                  bne          s11, s7, 270f
                  bgeu         t6, s6, 264f
                  addi         s3, tp, -673
                  bltu         s8, s1, 264f
264:              bgeu         s7, s3, 284f
                  bge          s1, s8, 282f
                  srli         ra, sp, 12
                  bge          a7, s2, 275f
                  nop
                  beq          s6, t3, 288f
270:              xor          a1, s1, t5
                  sll          s6, t1, s0
                  sll          t1, s10, tp
                  sra          t0, a1, s10
                  sra          s6, tp, gp
275:              slt          zero, zero, s5
                  blt          s1, t3, 277f
277:              srai         s5, ra, 17
                  srai         s10, s1, 15
                  srai         s5, s5, 22
                  ori          zero, t6, 1370
                  sll          s10, gp, a4
282:              sub          s5, s8, a6
                  ori          s4, s10, 1782
284:              bgeu         a7, s8, 301f
                  bgeu         t5, tp, 299f
                  bge          a5, zero, 303f
                  blt          t0, s8, 305f
288:              add          s4, a5, s3
                  srai         tp, t4, 9
                  nop
                  xori         t6, zero, -482
                  bgeu         s1, s10, 300f
                  srli         a2, t6, 29
                  srai         t6, s1, 2
                  bltu         s11, t6, 308f
                  auipc        a0, 641602
                  sll          s9, zero, t0
                  add          zero, ra, t5
299:              srl          s8, s8, t6
300:              sra          s0, s1, s4
301:              bgeu         s5, s10, 321f
                  addi         a0, s0, 1930
303:              slti         s10, s9, 197
                  sltu         a2, s1, a0
305:              bne          s10, s7, 310f
                  blt          s7, s6, 307f
307:              ori          s10, s6, 2010
308:              bne          t5, a7, 325f
                  add          s7, a3, s11
310:              bne          s6, a0, 318f
                  slt          s8, ra, sp
                  slli         t1, a0, 6
                  slli         s6, t1, 9
                  and          ra, t0, a7
                  blt          s0, s3, 318f
                  slt          s8, t1, a2
                  blt          t6, s4, 320f
318:              addi         t5, ra, 1109
                  sll          a4, t1, a6
320:              sltu         t1, s4, s9
321:              xori         gp, t0, 326
                  or           t4, s0, s9
                  blt          a4, a4, 342f
                  bge          gp, s11, 343f
325:              xori         a2, s6, -1991
                  srl          t5, s1, a6
                  xori         a0, t3, 1917
                  nop
                  bne          a6, s9, 336f
                  sltiu        s6, a3, 1621
                  add          s0, a7, s3
                  bgeu         s9, t2, 347f
                  sub          a2, s4, a6
                  bge          s7, s3, 348f
                  sll          t4, a6, s2
336:              sub          s6, a0, a2
                  andi         s3, sp, 1621
                  slli         t6, s3, 18
                  ori          a1, gp, 929
                  and          s1, s4, t1
                  xori         s0, a3, -448
342:              slli         s2, t6, 11
343:              srl          a2, s0, t1
                  xor          s6, sp, a3
                  slt          t1, s7, s6
                  nop
347:              lui          s9, 102128
348:              addi         s4, t3, 1523
                  xor          t1, gp, s10
                  or           a2, s7, s3
                  xori         a7, s10, -1506
                  bge          a1, a6, 359f
                  srai         s3, s1, 4
                  beq          a4, s0, 367f
                  and          t1, t3, s6
                  nop
                  blt          a6, a6, 358f
358:              bgeu         t4, s10, 378f
359:              auipc        a2, 551423
                  auipc        a2, 247442
                  bltu         s1, t2, 364f
                  slt          s10, t4, t2
                  slt          t3, s1, s5
364:              bgeu         s8, a2, 374f
                  and          t0, s1, a2
                  and          tp, t6, a2
367:              blt          s5, a6, 384f
                  nop
                  xor          a2, s8, a0
                  add          a6, a5, a7
                  sub          s4, s9, s8
                  addi         t0, a3, 511
                  srl          t0, t6, t1
374:              andi         t5, s11, 1042
                  bge          s7, s4, 383f
                  lui          s6, 425945
                  slti         a7, s0, -1383
378:              auipc        s9, 518694
                  xor          s5, s5, s5
                  slti         s9, a2, -754
                  andi         s8, s5, -167
                  sll          a4, zero, s7
383:              srl          a0, a5, ra
384:              beq          ra, t3, 390f
                  sra          s7, gp, ra
                  srai         a7, a3, 9
                  bltu         a2, s7, 397f
                  bne          t4, t3, 390f
                  sll          tp, a5, a3
390:              auipc        a1, 197281
                  bne          s0, s5, 410f
                  xori         t6, s7, -1755
                  bltu         zero, a6, 395f
                  beq          a2, a7, 395f
395:              beq          a1, t5, 400f
                  add          s11, sp, a4
397:              sltiu        a2, a4, 1210
                  nop
                  nop
400:              ori          s1, s11, -104
                  sra          s7, a0, s8
                  bne          a1, s7, 405f
                  slt          a2, s3, t1
                  nop
405:              andi         s7, s11, -86
                  xori         a4, s6, 1245
                  blt          a5, tp, 415f
                  xori         a6, tp, 1703
                  addi         s7, sp, -818
410:              slli         t1, a7, 21
                  lui          a7, 1047147
                  sltu         s2, s4, a2
                  beq          s6, s9, 432f
                  andi         gp, sp, -822
415:              sll          t1, s10, s2
                  srai         s7, tp, 11
                  or           a1, s7, s1
                  addi         s2, gp, -1895
                  or           ra, s11, s2
                  srl          a1, t1, t1
                  srl          t4, a6, t4
                  xor          s1, a3, t1
                  beq          t3, a6, 426f
                  lui          t3, 941824
                  addi         a7, a6, 81
426:              sll          ra, s2, s6
                  srai         s2, a5, 12
                  sll          t6, t6, s0
                  add          s10, s10, ra
                  lui          t3, 762633
                  sltiu        zero, a1, 1532
432:              auipc        a7, 379992
                  sltu         zero, s9, s8
                  bgeu         t0, s7, 447f
                  sra          s3, s6, t2
                  auipc        s5, 211576
                  xor          gp, s2, s3
                  sltiu        t5, t5, -416
                  andi         a7, gp, -958
                  nop
                  bge          s3, ra, 448f
                  slt          a2, t1, a2
                  srai         t3, a3, 3
                  ori          s6, s7, 1168
                  sra          a6, s6, a5
                  add          s11, s10, ra
447:              ori          gp, a3, -515
448:              srli         s5, a7, 31
                  srli         t5, t2, 28
                  srl          a1, s2, t2
                  and          a7, t0, s4
                  auipc        zero, 270143
                  nop
                  sub          t5, a7, t1
                  slli         a4, t4, 19
                  bge          tp, a6, 457f
457:              sltu         t0, t3, s4
                  beq          a0, s11, 472f
                  slti         t3, t3, -411
                  or           s1, a6, s2
                  srli         s3, s0, 24
                  xor          s5, a5, a6
                  bgeu         s6, s8, 482f
                  blt          sp, s7, 472f
                  bgeu         gp, a4, 467f
                  bge          gp, s4, 476f
467:              xor          a2, s3, t2
                  addi         s7, a4, -564
                  nop
                  or           a6, t4, t2
                  or           s11, s2, s9
472:              bne          a6, t0, 489f
                  lui          s7, 622812
                  or           t6, a7, s1
                  slli         a0, s7, 17
476:              xor          s3, s2, s11
                  addi         t4, s4, 8
                  or           s7, a3, t5
                  xor          s9, ra, ra
                  lui          a2, 900561
                  xori         sp, a3, -2011
482:              bgeu         a4, s0, 483f
483:              beq          s10, s5, 491f
                  andi         s0, s9, -1188
                  addi         s11, t6, -387
                  andi         s4, t2, 1675
                  blt          s9, tp, 488f
488:              and          t6, t0, s3
489:              lui          a0, 1003535
                  srli         sp, s11, 30
491:              srli         s1, s6, 18
                  slt          ra, s11, s2
                  sltiu        a7, a4, 1739
                  and          s11, tp, s7
                  and          zero, t5, t1
                  blt          a0, a6, 515f
                  srai         s1, a7, 28
                  bgeu         s10, t0, 505f
                  slti         t5, t0, -1627
                  srli         a0, s6, 20
                  bltu         s9, s4, 518f
                  xor          t1, a7, s5
                  sltu         gp, s5, s5
                  slt          s7, s7, a5
505:              bltu         s10, a1, 522f
                  sltiu        a7, s9, 533
                  lui          s9, 158249
                  bge          s10, s5, 528f
                  blt          sp, t1, 512f
                  bne          s7, a3, 512f
                  slt          tp, a0, s8
512:              bgeu         sp, t6, 525f
                  sltu         zero, s3, s4
                  lui          s6, 953566
515:              bge          t1, sp, 535f
                  sltiu        t6, t6, -997
                  xor          tp, s1, s8
518:              ori          ra, s0, -91
                  sub          s3, tp, a7
                  nop
                  sltu         s1, a7, zero
522:              or           s9, a1, s9
                  bge          t2, a7, 533f
                  nop
525:              nop
                  addi         s4, a0, -1265
                  sub          s1, s0, s4
528:              andi         t5, s0, 283
                  blt          tp, s10, 535f
                  and          t0, s7, a3
                  sll          a7, s1, s10
                  slli         a4, s7, 0
533:              sltu         t0, s1, a2
                  sub          a4, zero, a0
535:              add          t6, t4, a1
                  add          gp, a2, a0
                  addi         t3, tp, -1239
                  bgeu         s4, t1, 553f
                  and          tp, s0, sp
                  slli         t0, zero, 11
                  nop
                  blt          sp, a4, 560f
                  beq          s4, a3, 545f
                  slli         t5, sp, 3
545:              lui          s0, 353801
                  lui          ra, 910140
                  sub          s9, s10, a5
                  blt          t2, t0, 563f
                  nop
                  bltu         a5, s10, 557f
                  srai         tp, a1, 14
                  bne          a4, s5, 571f
553:              xori         s4, s9, 1634
                  slti         ra, t5, -1858
                  auipc        s3, 301749
                  srli         tp, s0, 8
557:              bltu         a5, a6, 558f
558:              blt          t1, gp, 561f
                  bltu         t5, a3, 566f
560:              and          s3, s10, t2
561:              ori          s2, a0, 1194
                  addi         s10, sp, 889
563:              or           a0, s1, sp
                  bgeu         s6, ra, 581f
                  bltu         zero, zero, 585f
566:              bne          s11, s4, 571f
                  addi         ra, s3, -2005
                  srli         s2, a0, 11
                  sltu         tp, s9, s9
                  srl          t0, s0, t4
571:              and          t1, tp, a7
                  sub          tp, a7, s11
                  ori          s4, a6, -252
                  sltu         t5, ra, s5
                  srl          s2, s0, s5
                  sll          s10, a1, s7
                  sltu         a7, gp, t0
                  or           s3, s3, t3
                  sra          a6, a2, a4
                  bltu         a5, s9, 581f
581:              sra          a4, a5, s9
                  lui          s4, 578675
                  or           t5, t0, gp
                  sltiu        t4, s8, -1660
585:              beq          s4, s10, 587f
                  sltiu        t0, a5, 782
587:              blt          a1, tp, 592f
                  sra          s10, s10, t1
                  sra          s6, gp, a4
                  sltu         tp, s3, t1
                  beq          a5, s2, 592f
592:              slti         s2, s8, -349
                  xor          zero, sp, t3
                  and          s0, a0, s8
                  lw           ra, 4(t2)
                  sra          s0, t6, a1
                  andi         a0, a1, 775
                  srai         s3, a4, 10
                  addi         t2, t2, 44
                  andi         zero, sp, -861
773:              addi x26, x1, 1
773:              jalr x26, x26, 0
sub_2:            andi         s1, t5, -1749
                  bgeu         ra, a2, sub_2_stack_p
                  addi         a2, s11, -1906
sub_2_stack_p:    addi         t2, t2, -40
                  sll          s2, t3, t2
                  xor          t5, a2, t2
                  srl          t5, s10, t2
                  ori          s9, s5, -784
                  sltu         sp, s1, t3
                  ori          s1, zero, -614
                  sw           ra, 4(t2)
                  xori         a7, s4, -1452
                  la           sp, region_0+1693 #start riscv_load_store_rand_instr_stream_2
                  auipc        ra, 981644
                  lb           t5, -47(sp)
                  sltiu        s11, s5, -666
                  lbu          a6, -11(sp)
                  xori         tp, s4, -1267
                  lbu          s4, -6(sp)
                  sb           a4, -58(sp)
                  sb           t2, 62(sp)
                  slli         a1, a7, 10
                  sh           gp, 41(sp)
                  lbu          a0, 57(sp)
                  lbu          tp, -40(sp)
                  srai         t1, t4, 18
                  sb           a4, -40(sp)
                  lbu          a4, -3(sp)
                  slli         a4, s9, 22
                  lbu          t4, 46(sp)
                  xori         t4, t6, -1551
                  lbu          s9, 7(sp)
                  xor          a0, a0, s4
                  lbu          a1, -45(sp)
                  add          tp, s4, s3
                  sb           t6, -54(sp)
                  sb           a1, -6(sp)
                  lb           s2, 8(sp)
                  and          t1, a5, s3
                  lhu          t3, -55(sp)
                  or           s7, s9, s10
                  lb           a2, -36(sp)
                  sh           s7, 33(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1999 #start riscv_load_store_rand_instr_stream_13
                  lhu          a1, -25(sp)
                  lb           a1, -53(sp)
                  sltu         s7, t4, t0
                  ori          s3, a4, -1522
                  lb           s1, -20(sp)
                  ori          zero, s1, 1674
                  lb           s8, -6(sp)
                  sb           s10, -45(sp)
                  sb           a1, -48(sp)
                  slli         t3, s11, 7
                  sra          a0, a6, s10
                  slt          s1, s2, a0
                  sltu         a7, t0, ra
                  lui          s0, 588838
                  srl          s10, t0, a5
                  sll          s2, s8, tp
                  xor          s1, t5, s10
                  lui          a2, 507700
                  or           a2, a5, s1
                  sb           t2, -8(sp)
                  ori          s5, a5, 307
                  lhu          s1, -41(sp)
                  sub          s7, s10, t6
                  add          a1, gp, t2
                  srl          s3, s2, s0
                  sb           s6, -30(sp)
                  srli         t6, s6, 18
                  slti         tp, t0, 250
                  srai         a7, s1, 16
                  lbu          a0, -50(sp)
                  srl          s2, s5, zero
                  xori         a0, s9, 146
                  addi         ra, s8, 526
                  sll          s9, a2, s11
                  sb           t2, -46(sp)
                  ori          t1, zero, 1524
                  lw           s1, -19(sp)
                  xor          s11, t3, a1
                  lb           gp, -2(sp)
                  sltiu        s11, s0, -1448
                  lh           t3, -61(sp)
                  ori          s4, a2, -160
                  add          t4, t4, a1
                  sra          s6, t4, sp
                  lbu          a2, -16(sp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+308 #start riscv_load_store_rand_instr_stream_8
                  sub          s11, s1, sp
                  srai         s6, a4, 23
                  lbu          t5, 279(sp)
                  ori          t4, s4, -214
                  lbu          t1, 1527(sp)
                  lh           s0, -254(sp)
                  ori          a4, s11, -1790
                  lhu          s10, 110(sp)
                  lhu          s1, 260(sp)
                  sb           a7, -183(sp)
                  lb           ra, 1463(sp)
                  add          s0, t6, s7
                  add          ra, a0, ra
                  slli         a6, t2, 27
                  sw           s6, 1084(sp)
                  srli         s4, a7, 27
                  srli         a7, t2, 28
                  lb           s3, 1569(sp)
                  lhu          t1, 1410(sp)
                  andi         s11, a5, -1514
                  xori         a7, a5, -745
                  sb           a6, -197(sp)
                  sb           a4, 479(sp)
                  addi         t4, ra, -130
                  sb           s1, 59(sp)
                  sb           s8, 86(sp)
                  lbu          s5, 608(sp)
                  add          s1, t0, t0
                  sll          s1, s8, sp
                  lbu          s4, 453(sp)
                  lbu          s1, 841(sp)
                  lbu          s10, 1227(sp)
                  sltu         a1, a7, ra
                  addi         s6, tp, 726
                  sb           t5, 831(sp)
                  andi         s0, s11, -279
                  srai         a0, tp, 7
                  xori         t6, a6, 731
                  auipc        t4, 1033886
                  lb           s6, -142(sp)
                  srli         t1, zero, 27
                  slt          t4, t5, s10
                  sh           a0, -194(sp) #end riscv_load_store_rand_instr_stream_8
                  la           tp, region_0+1548 #start riscv_load_store_rand_instr_stream_1
                  andi         a6, ra, -686
                  add          s2, s11, a1
                  srai         s1, a6, 5
                  xori         s6, s2, 748
                  lw           sp, 228(tp)
                  lb           a2, -1192(tp)
                  lbu          a4, -295(tp)
                  nop
                  sb           t5, 6(tp)
                  nop
                  slt          s4, s9, s8
                  lh           sp, -530(tp)
                  lhu          t0, -1402(tp)
                  slli         a4, a4, 26
                  srli         t1, t6, 11
                  nop
                  lh           s2, -894(tp)
                  lbu          a1, -1013(tp)
                  lw           a0, -144(tp)
                  and          s10, a5, s1
                  sh           t1, 364(tp)
                  slt          ra, a4, zero
                  sltu         a4, a2, a1
                  addi         t0, s0, -1012
                  lbu          zero, -877(tp)
                  sb           s2, 17(tp)
                  sw           a6, -1364(tp)
                  lbu          t5, -3(tp)
                  or           t6, a7, s1
                  auipc        t6, 191581
                  lbu          a2, 229(tp)
                  sltu         sp, ra, s4
                  sb           a3, -656(tp)
                  lbu          a7, -1125(tp) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_1+1615 #start riscv_load_store_rand_instr_stream_5
                  sb           gp, -8(a6)
                  xori         s5, t3, 597
                  lh           a7, -11(a6)
                  slli         s9, s6, 9
                  slti         s2, s1, -789
                  xori         s9, s1, 1943
                  sb           gp, -13(a6)
                  xori         t5, s4, -923
                  ori          s1, t5, -39
                  lw           s5, 5(a6)
                  sltiu        ra, t2, -831
                  sra          s0, s3, t4
                  slt          t3, s3, sp
                  lb           tp, 1(a6)
                  lb           zero, 6(a6)
                  lb           a4, -8(a6)
                  add          s7, t1, a4
                  lui          t6, 455512
                  xor          gp, a0, s8
                  xor          tp, a5, a1
                  slli         zero, t2, 29
                  xori         s5, t2, -1724
                  ori          tp, zero, 1514
                  sb           t1, 2(a6)
                  lw           s0, 1(a6)
                  lb           s1, 12(a6)
                  slt          s5, a5, s3
                  sltu         s6, t3, s11
                  sub          a4, t3, s5
                  sltiu        t6, a7, -560
                  lui          s1, 171042
                  lb           s8, -16(a6) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1367 #start riscv_load_store_rand_instr_stream_11
                  lb           s7, -318(sp)
                  sb           a1, -534(sp)
                  lbu          s3, -247(sp)
                  lbu          a2, -562(sp)
                  lbu          s7, -1072(sp)
                  sw           a4, 629(sp)
                  lbu          t4, -1187(sp)
                  lui          s7, 643815
                  lh           s4, -1155(sp)
                  lb           t3, 424(sp)
                  sb           s11, -3(sp)
                  sw           t1, 169(sp)
                  sub          s4, zero, gp
                  auipc        a1, 246581
                  sb           t6, -379(sp)
                  srai         s2, s2, 8
                  lb           a4, -176(sp)
                  lbu          s2, 160(sp)
                  andi         s10, a5, -1247
                  lbu          a0, -752(sp)
                  addi         s2, s7, -553
                  lui          t1, 459639
                  slt          t4, s4, a3
                  slti         s3, a2, 1074
                  sb           s3, -46(sp)
                  lb           s0, -834(sp)
                  and          s10, t6, a2
                  lbu          a2, 561(sp)
                  slli         t6, s6, 18
                  slt          s2, zero, s5
                  lbu          s7, -780(sp)
                  andi         a2, t0, 1016
                  lb           tp, 442(sp)
                  ori          t1, t0, -1478
                  add          tp, s10, t1
                  lb           s11, 450(sp)
                  srl          a4, s1, s9
                  sb           s3, -738(sp)
                  lbu          s0, -716(sp)
                  or           s10, a7, zero
                  sb           s5, -736(sp)
                  lb           s0, -910(sp)
                  xor          ra, s2, tp
                  lb           s10, 80(sp)
                  lh           s5, -749(sp)
                  slt          s7, a2, tp
                  sb           s11, -211(sp)
                  sb           gp, 74(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1696 #start riscv_load_store_rand_instr_stream_0
                  slli         a0, a0, 21
                  sh           t1, -1338(sp)
                  add          a7, s4, s3
                  sltiu        s5, s2, -801
                  sb           t0, 119(sp)
                  sll          a0, s6, t1
                  sll          s10, a0, a5
                  lb           s1, -833(sp)
                  lbu          t1, 107(sp)
                  sub          a6, tp, t1
                  lb           s4, -730(sp)
                  sltiu        s6, gp, 688
                  xor          a2, a5, a1
                  andi         t4, s4, 1445
                  add          a4, t0, s10
                  sb           s3, -923(sp)
                  sw           t6, -1684(sp)
                  nop
                  sh           s0, 36(sp)
                  lh           s9, 176(sp)
                  addi         gp, t3, 176
                  sra          s9, a4, ra
                  lb           s5, -500(sp)
                  sb           s6, -1241(sp)
                  sb           a5, 127(sp)
                  lb           s9, -441(sp)
                  slti         t5, sp, 813
                  lbu          a2, -1151(sp)
                  lb           a2, -555(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_1+1041 #start riscv_load_store_rand_instr_stream_9
                  sb           a0, 18(a2)
                  nop
                  addi         s0, a4, 1632
                  lb           t1, 20(a2)
                  lbu          s8, 39(a2)
                  and          s10, s7, s11
                  lw           s4, -33(a2)
                  lw           ra, 59(a2)
                  srl          zero, s0, s6
                  lbu          sp, 50(a2)
                  sltiu        s7, a2, 419
                  srli         s9, t5, 3
                  sll          s1, s4, a0
                  lb           s11, 28(a2)
                  auipc        a6, 894314
                  lbu          a6, 11(a2)
                  sb           t5, 12(a2)
                  andi         t5, s3, 1952
                  add          s8, a5, zero
                  slt          t1, gp, s0
                  lbu          s4, 4(a2)
                  ori          s10, s6, 1011
                  lb           s5, -24(a2)
                  lw           t4, 39(a2)
                  slli         s5, a6, 17
                  slti         s9, gp, -193
                  lhu          a7, -3(a2)
                  sub          s5, sp, a1
                  sb           s6, -13(a2)
                  sll          a1, t2, s9
                  sltiu        a4, s4, 1914
                  auipc        s9, 352764
                  sll          s3, t2, t5
                  lui          s2, 901691
                  addi         a0, t2, 1488
                  lb           a1, -54(a2)
                  lui          s10, 132832
                  and          tp, s9, ra
                  addi         t4, a3, -75
                  andi         s8, t5, -1689
                  lb           t0, -45(a2)
                  srli         s1, t1, 21
                  srai         t1, a6, 10
                  sra          s8, s2, t3
                  sb           sp, -16(a2) #end riscv_load_store_rand_instr_stream_9
                  la           a1, region_1+621 #start riscv_load_store_rand_instr_stream_6
                  sub          s10, tp, t4
                  sh           a7, 5(a1)
                  lui          t0, 187281
                  lhu          a7, 5(a1)
                  addi         s9, t6, -1486
                  andi         a7, s11, 445
                  lhu          a4, -3(a1)
                  ori          t4, s9, 97
                  sh           a5, -11(a1)
                  lb           a7, 0(a1)
                  lhu          a2, 11(a1)
                  sb           a1, -8(a1)
                  slli         a7, s0, 24
                  nop
                  sra          s8, t5, a6
                  sltiu        a2, t4, -268
                  srli         t6, s10, 21
                  sra          s4, s3, t3
                  sb           t1, -2(a1)
                  andi         t3, t1, 1561
                  lb           s7, -14(a1)
                  sh           s4, -3(a1)
                  lb           s7, 5(a1)
                  and          sp, zero, a1
                  lbu          t0, 0(a1)
                  lbu          t0, 10(a1) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+968 #start riscv_load_store_rand_instr_stream_10
                  sra          s9, t6, a6
                  addi         t1, t2, 865
                  slt          s3, t1, s5
                  sh           t4, 4(sp)
                  lh           s8, 2(sp)
                  srl          zero, s2, a1
                  srli         s2, ra, 15
                  lhu          zero, 2(sp)
                  sh           s5, 0(sp)
                  lb           t3, -5(sp)
                  xori         t5, a7, -9
                  sltiu        s10, t4, -1821
                  lbu          a4, 10(sp)
                  sb           gp, -14(sp)
                  lh           s7, 0(sp)
                  lhu          t3, -14(sp)
                  auipc        s7, 680678
                  lbu          a2, -3(sp)
                  sb           s4, 15(sp)
                  lw           t5, 8(sp)
                  lh           s4, 8(sp)
                  lhu          a2, 4(sp)
                  lhu          t0, 16(sp)
                  slli         s7, a1, 6
                  sh           s2, -12(sp)
                  sltiu        t3, s6, 93
                  sw           s10, -12(sp)
                  andi         t6, s3, 773
                  lw           s11, 8(sp)
                  addi         tp, t3, -1529
                  slti         s10, s10, -565
                  lbu          s6, 10(sp)
                  auipc        tp, 539298
                  slt          a7, s9, s6
                  sh           s6, -16(sp)
                  sub          t5, a1, a2
                  slli         s2, a3, 25
                  lbu          a6, 14(sp)
                  sb           a0, 3(sp)
                  lb           s7, 14(sp)
                  lbu          s1, 13(sp)
                  lbu          gp, -13(sp)
                  addi         t0, s10, -964
                  sb           t6, 6(sp)
                  lui          gp, 1039688
                  srl          a2, s0, t1
                  slt          tp, s5, t6
                  sb           t2, -13(sp)
                  srai         ra, s0, 17
                  slt          s6, gp, t2
                  lbu          t1, -3(sp)
                  lbu          t4, 15(sp)
                  addi         a2, t4, 796
                  sra          tp, s0, s10
                  sltu         t4, t0, gp
                  lbu          ra, 15(sp) #end riscv_load_store_rand_instr_stream_10
                  la           s0, region_1+983 #start riscv_load_store_rand_instr_stream_12
                  sh           t2, 747(s0)
                  auipc        s1, 33997
                  nop
                  lb           s11, 102(s0)
                  lbu          a1, 764(s0)
                  slti         a6, t3, -1200
                  xor          zero, a5, s0
                  slt          t5, a0, a7
                  lbu          a4, 436(s0)
                  sb           t6, -460(s0)
                  lb           gp, -343(s0)
                  sb           t0, -592(s0)
                  sub          s9, a4, a6
                  andi         s4, a7, -844
                  lhu          t5, 641(s0)
                  sltu         t6, sp, s1
                  lb           s3, 276(s0)
                  lbu          s1, -44(s0)
                  xori         s2, a2, 1499
                  lw           s1, 85(s0)
                  sub          t6, tp, s10
                  sltiu        s9, zero, -1470
                  lbu          s1, -655(s0)
                  sb           t2, 208(s0)
                  andi         t6, s4, 786
                  lb           a6, 337(s0)
                  addi         s4, ra, -1046
                  andi         s7, t6, -1073
                  sb           s6, 828(s0)
                  sb           s0, -425(s0)
                  lui          s9, 243256
                  sra          a1, t0, gp
                  lhu          t3, -309(s0)
                  slli         a2, s7, 4
                  lbu          a6, -298(s0) #end riscv_load_store_rand_instr_stream_12
                  la           tp, region_1+1047 #start riscv_load_store_rand_instr_stream_7
                  sb           s7, -6(tp)
                  andi         s6, s7, 1124
                  lb           s1, 39(tp)
                  andi         sp, s11, 746
                  nop
                  sh           s1, 33(tp)
                  auipc        s2, 1021047
                  lb           t5, -61(tp)
                  slli         s1, a1, 7
                  lui          t1, 924117
                  sh           t1, -33(tp)
                  or           t0, a6, a4
                  sb           t4, 7(tp)
                  add          s2, s3, a6
                  srai         s1, s6, 10
                  and          s10, s5, a1
                  sb           a7, 25(tp)
                  lhu          s5, 57(tp)
                  add          s4, t0, a4
                  nop
                  slti         s3, a0, 1681
                  and          a4, a6, s6
                  and          s1, a0, zero
                  lbu          t4, -24(tp)
                  sb           s7, -9(tp)
                  lbu          s0, 52(tp)
                  lb           s0, -17(tp)
                  auipc        sp, 314434
                  lb           a0, 14(tp)
                  srai         a1, s7, 13
                  slt          t5, gp, ra
                  lb           a1, -4(tp)
                  lbu          s4, -22(tp)
                  lb           gp, 20(tp)
                  sra          ra, a5, t6
                  add          t6, t2, a4
                  sub          s9, a5, zero
                  slt          a6, a7, t0
                  sb           a4, 53(tp)
                  lw           a2, 17(tp)
                  lb           s2, -56(tp)
                  lbu          s6, -29(tp)
                  lb           s9, 3(tp) #end riscv_load_store_rand_instr_stream_7
                  la           s8, region_0+1892 #start riscv_load_store_rand_instr_stream_15
                  lb           s2, 1(s8)
                  lh           s5, 6(s8)
                  sra          t6, tp, s8
                  sra          a0, s1, t3
                  xor          s5, gp, s5
                  lb           t1, 23(s8)
                  lbu          t4, 35(s8)
                  slti         gp, a2, -1529
                  lbu          s11, -37(s8)
                  sub          s5, s11, t1
                  auipc        ra, 290896
                  lbu          a7, 48(s8)
                  sh           a3, 4(s8)
                  and          a4, a2, t4
                  nop
                  sh           s7, -46(s8)
                  and          s11, a3, s10
                  lbu          s6, -33(s8)
                  lb           s2, -21(s8)
                  srl          t1, a2, zero
                  sltiu        s11, t1, -120
                  sll          s6, a4, sp
                  lb           s6, 8(s8)
                  slli         s1, ra, 3
                  andi         t4, a1, 1883
                  srl          s10, t4, s0
                  slli         s7, a7, 7
                  lbu          t1, -7(s8)
                  slt          s2, s1, s7
                  lb           ra, -24(s8)
                  lbu          s6, 3(s8)
                  lbu          t4, 4(s8)
                  add          s3, t4, s1
                  sb           s2, -38(s8)
                  addi         s10, a1, -1416
                  srl          a7, t0, s2
                  lh           ra, -20(s8)
                  ori          a6, s0, -1440
                  lb           sp, -49(s8)
                  sub          ra, t0, t3
                  lb           a7, 8(s8) #end riscv_load_store_rand_instr_stream_15
                  slli         a0, t5, 23
                  sll          a1, t5, tp
                  beq          t5, s8, 20f
                  srli         s1, t5, 6
                  sltu         s1, sp, s7
                  bgeu         s5, t3, 17f
                  and          t5, s1, t2
                  xori         s2, a5, 749
                  add          sp, s3, s3
                  addi         s6, s8, -457
                  or           s9, s9, a3
                  nop
                  beq          t3, t2, 16f
                  auipc        s2, 734927
                  xori         a6, zero, -1045
                  nop
16:               sub          s3, s5, s7
17:               sll          s4, a5, t3
                  xor          s8, ra, a5
                  slti         a7, sp, -604
20:               srl          a0, t5, s6
                  srai         s2, s0, 29
                  srl          s11, sp, a2
                  srli         s7, a0, 21
                  bge          s2, a6, 41f
                  sra          zero, sp, s6
                  blt          s4, s5, 32f
                  blt          a1, a3, 39f
                  beq          a1, t1, 46f
                  slt          a1, t5, a5
                  slt          a7, t2, s5
                  sra          s3, t0, t0
32:               sll          s5, a4, s7
                  addi         s9, s9, -650
                  srai         t3, ra, 7
                  srai         a1, a5, 22
                  sll          s8, s7, s8
                  xori         s5, s5, 1079
                  xori         s9, s0, -1659
39:               slli         s3, s6, 2
                  slti         gp, s5, 675
41:               auipc        s0, 87461
                  sll          s2, t3, s8
                  nop
                  srli         gp, a0, 17
                  and          s10, t6, a6
46:               slli         s11, a4, 9
                  sub          s10, s4, s0
                  sltiu        a7, t2, 246
                  srai         s8, t6, 12
                  blt          a1, t1, 70f
                  add          t3, t6, a2
                  srai         t1, s4, 29
                  xori         s1, t3, -1833
                  sll          t3, s8, t5
                  beq          sp, a4, 66f
                  sra          t4, s0, t6
                  blt          s3, s7, 69f
                  add          s4, t6, t2
                  bge          t0, s7, 76f
                  slli         s3, a3, 29
                  nop
                  ori          tp, sp, -1853
                  ori          t1, a4, 640
                  slt          gp, t1, s2
                  or           s3, s9, s6
66:               bne          ra, a1, 75f
                  slt          t4, s3, s9
                  slti         s10, a7, 493
69:               sra          s4, t1, a2
70:               xori         a2, sp, -694
                  ori          a1, s2, -1034
                  blt          s11, t6, 86f
                  beq          s11, zero, 90f
                  nop
75:               blt          a7, ra, 84f
76:               srl          s10, t0, t6
                  slli         t1, s5, 23
                  sra          gp, s0, s10
                  addi         a7, s9, -868
                  beq          t6, zero, 95f
                  srl          zero, a3, t4
                  sll          gp, a0, s3
                  bge          t0, a1, 100f
84:               add          sp, a5, s9
                  beq          a0, s9, 87f
86:               bne          t6, s1, 89f
87:               andi         t1, a4, 1908
                  addi         t4, s11, -1771
89:               bge          s9, s9, 90f
90:               sltu         ra, s3, sp
                  bgeu         s5, s2, 111f
                  srai         a4, s6, 6
                  add          s7, t0, a7
                  nop
95:               sltiu        a7, a3, -1621
                  srai         s6, s6, 20
                  beq          t3, t4, 108f
                  slli         a2, t0, 17
                  blt          zero, s5, 113f
100:              sra          s4, a3, t3
                  sltiu        t4, t3, 343
                  nop
                  sub          a0, s10, s6
                  slti         a6, a1, -284
                  sltu         tp, t2, t3
                  addi         t3, s5, 130
                  bne          a4, a1, 112f
108:              beq          a5, s9, 110f
                  bltu         a1, t6, 126f
110:              bgeu         a0, s4, 117f
111:              bltu         a6, s3, 114f
112:              bgeu         s3, t6, 125f
113:              slli         a6, s10, 6
114:              or           s10, a4, s9
                  bgeu         a6, a0, 118f
                  sub          tp, ra, s1
117:              ori          s2, s2, -242
118:              xori         tp, s1, 1046
                  slti         s1, zero, 61
                  add          t3, t3, t5
                  and          tp, ra, a7
                  bltu         a6, t2, 125f
                  and          ra, a6, s6
                  andi         s3, t5, 269
125:              sra          s5, a2, a4
126:              addi         a0, t2, 1808
                  slt          t4, t1, s5
                  sltiu        s0, t5, -1915
                  xor          s2, tp, s5
                  andi         a6, tp, 165
                  sub          t6, t1, zero
                  bge          s1, s9, 139f
                  srli         sp, s7, 1
                  srai         a2, t0, 2
                  bltu         a2, a7, 139f
                  srai         t3, s2, 10
                  andi         zero, a7, 36
                  bgeu         t6, a5, 150f
139:              slli         s11, s8, 11
                  lui          s3, 643090
                  xor          s10, a3, s11
                  slti         a1, s6, 517
                  bltu         t3, s10, 152f
                  add          s11, a6, s4
                  auipc        s6, 604017
                  bgeu         s0, s4, 148f
                  sltu         s10, s11, s4
148:              slt          s2, a5, a7
                  sub          gp, s7, a0
150:              and          a7, t2, ra
                  auipc        a2, 593647
152:              sra          s10, sp, a1
                  bltu         s3, sp, 170f
                  beq          s10, t4, 172f
                  sra          s10, s5, s0
                  ori          t4, zero, -323
                  ori          t1, sp, -708
                  bge          sp, s4, 160f
                  slt          t5, t0, s6
160:              xori         a1, zero, -1377
                  slt          zero, a7, s2
                  bne          s2, sp, 179f
                  slt          a4, a5, a2
                  addi         a1, a2, 1087
                  nop
                  bltu         a0, a7, 171f
                  sra          s1, s3, a4
                  sltiu        gp, s0, -1714
                  nop
170:              xori         a1, a1, 1528
171:              sra          s0, s5, s10
172:              nop
                  srl          s2, s7, a7
                  sub          a2, s7, s5
                  srl          s6, t3, t4
                  sltu         a1, t6, a7
                  bne          s4, s8, 197f
                  srli         t6, t1, 31
179:              slti         a6, a0, 753
                  or           s6, s10, s6
                  slli         s6, sp, 14
                  slti         a6, a6, -111
                  srli         a7, s4, 11
                  nop
                  andi         s9, a5, -1220
                  or           a4, s8, t0
                  or           t5, tp, s8
                  bne          sp, s9, 205f
                  bgeu         a3, s11, 201f
                  bgeu         s9, a1, 201f
                  sltu         t5, s10, s3
                  bgeu         a1, t0, 212f
                  sra          s1, s10, a3
                  addi         s4, a7, 1721
                  slli         t4, s2, 3
                  slli         s3, s3, 8
197:              beq          s6, ra, 200f
                  sll          s1, s10, sp
                  addi         s9, t4, -1941
200:              blt          a1, a4, 201f
201:              andi         t4, s9, -34
                  bne          s6, t0, 216f
                  or           s6, a7, s2
                  sltu         a1, t6, a2
205:              blt          s8, gp, 222f
                  bge          s8, a2, 209f
                  lui          s2, 197877
                  add          s0, sp, a7
209:              or           t1, t0, s4
                  sll          s3, tp, s3
                  andi         s0, s5, 779
212:              blt          s5, s6, 218f
                  slt          a1, s1, t0
                  or           a6, s5, s3
                  lui          s1, 193920
216:              sub          zero, tp, t6
                  addi         a2, t3, 937
218:              bgeu         a0, t0, 236f
                  lui          s11, 164188
                  nop
                  lui          a1, 557168
222:              slti         t6, a1, -127
                  lui          ra, 427725
                  bgeu         s8, s1, 237f
                  addi         zero, t3, -331
                  slt          t4, a6, t1
                  beq          s5, a4, 244f
                  auipc        t3, 969851
                  slti         a2, s5, -615
                  sltu         s2, s11, tp
                  sltu         t5, s4, a3
                  srl          t5, sp, t5
                  beq          zero, s2, 244f
                  sra          zero, t4, s5
                  slt          s10, s7, t2
236:              slt          t4, tp, s8
237:              srai         a7, t6, 22
                  bne          t1, t3, 247f
                  slt          gp, sp, t5
                  slt          a2, s3, s10
                  lui          s9, 399457
                  addi         gp, s11, 413
                  ori          a0, s3, -1731
244:              blt          t5, a0, 256f
                  nop
                  srli         a0, s0, 2
247:              sra          t3, s4, s6
                  slt          s11, a1, s7
                  sltu         s10, s8, ra
                  add          a0, a5, a6
                  or           s10, a0, t3
                  xori         t5, s4, 1325
                  bltu         a4, t2, 267f
                  andi         s4, s6, -1956
                  ori          s4, tp, -1559
256:              bge          zero, s6, 271f
                  and          s5, t1, t4
                  slli         s6, s7, 6
                  bge          t6, s3, 276f
                  bne          a6, s3, 267f
                  xor          s1, s9, s11
                  ori          tp, t2, 1996
                  and          s8, gp, a4
                  srli         s6, t6, 7
                  sra          s11, s9, a1
                  beq          a4, tp, 284f
267:              sll          a1, t1, s9
                  and          s0, s3, s6
                  sub          s0, s11, s3
                  sra          t3, t5, a0
271:              bne          a2, t2, 276f
                  sub          tp, s10, s6
                  xori         a2, s11, 1967
                  slli         t5, gp, 11
                  sltu         s7, s4, tp
276:              beq          s4, s9, 288f
                  andi         s8, s3, 1124
                  and          zero, zero, ra
                  srai         s5, t4, 27
                  sra          sp, ra, s10
                  andi         t6, s4, 1035
                  srai         t0, a7, 10
                  bgeu         t2, a4, 294f
284:              sltiu        s11, tp, 333
                  or           sp, tp, s9
                  srl          t5, t0, s0
                  lui          t6, 36771
288:              xori         ra, s7, 552
                  slli         s0, t0, 17
                  srli         s8, s0, 5
                  bne          t1, a0, 309f
                  beq          t5, s1, 312f
                  sll          s1, s10, a0
294:              lui          sp, 860110
                  slti         s4, a4, 185
                  srai         s5, a2, 24
                  sltu         a4, s0, a4
                  sra          t3, zero, a7
                  bltu         a6, a4, 316f
                  beq          a0, a5, 303f
                  or           a1, s2, tp
                  andi         a1, ra, -689
303:              srai         s6, tp, 8
                  add          sp, zero, s3
                  lui          tp, 671599
                  nop
                  slli         s7, a4, 8
                  andi         sp, s0, -1446
309:              srai         s3, gp, 3
                  srli         t4, s8, 14
                  slli         t3, t6, 21
312:              xor          s10, t2, s8
                  bge          a5, gp, 327f
                  bltu         s5, t4, 327f
                  slli         s11, t2, 12
316:              beq          t4, s2, 328f
                  xor          ra, s8, sp
                  add          a6, a2, a6
                  or           s11, t4, s9
                  addi         s5, t5, 374
                  srli         sp, tp, 22
                  srl          t0, a3, t1
                  bge          s3, s7, 324f
324:              auipc        a7, 15576
                  sub          gp, zero, s3
                  add          s9, t2, a6
327:              nop
328:              or           s0, t4, a0
                  bgeu         s10, t4, 341f
                  srli         s1, t3, 30
                  nop
                  slli         s1, a3, 18
                  sra          ra, tp, t4
                  sltiu        a6, t5, -1028
                  bgeu         t0, a2, 355f
                  slli         s8, s3, 28
                  and          s3, zero, s2
                  xor          t4, s11, s10
                  sra          t0, gp, a4
                  sll          t5, sp, t1
341:              xor          tp, t2, a1
                  or           t3, t4, s4
                  bgeu         gp, zero, 349f
                  srl          s1, a3, ra
                  slt          s2, t6, s4
                  srai         s1, s4, 20
                  srai         gp, a6, 15
                  slt          a4, s6, a6
349:              slti         t5, t0, 1149
                  or           sp, s11, a4
                  auipc        t6, 407385
                  slt          a7, a1, ra
                  andi         s5, zero, 124
                  xor          s9, t3, t4
355:              add          s8, a3, t2
                  lui          a2, 785027
                  ori          a0, a3, 915
                  slt          a4, s6, a4
                  xor          sp, s8, a4
                  sra          tp, a2, zero
                  bgeu         s3, ra, 364f
                  auipc        t4, 1027290
                  ori          t6, t0, -1512
364:              andi         t0, t0, -177
                  bltu         s8, s9, 374f
                  addi         s3, gp, 1155
                  bltu         t1, s3, 382f
                  slti         s9, s10, -122
                  xori         s8, t3, 367
                  andi         s8, a6, -1637
                  bne          t2, s1, 388f
                  srl          s10, s3, s3
                  andi         s1, a6, -131
374:              auipc        a6, 412244
                  sltiu        ra, t4, 1651
                  bgeu         zero, t2, 393f
                  auipc        a0, 776393
                  sltu         sp, t2, gp
                  srai         s8, zero, 0
                  ori          s10, sp, 1212
                  srl          a0, s7, sp
382:              andi         a4, s2, 836
                  srai         t0, a5, 10
                  auipc        s3, 623724
                  and          t3, gp, t2
                  bge          t5, s10, 388f
                  or           s11, a2, s3
388:              sll          a4, ra, s8
                  or           a6, s11, t0
                  ori          zero, s8, -1967
                  auipc        t1, 656361
                  blt          t1, s11, 403f
393:              sra          a6, s11, s9
                  add          a7, t3, a6
                  sll          ra, s1, t4
                  sub          s0, a1, t4
                  bltu         a7, t0, 401f
                  srai         a6, s1, 9
                  slti         s0, s11, -976
                  xor          a0, a2, t6
401:              slli         s9, t4, 22
                  sra          s8, a7, s7
403:              sub          s0, tp, gp
                  and          t0, s5, t3
                  sltu         ra, s3, ra
                  srai         gp, t0, 31
                  ori          s2, t5, 1618
                  and          gp, t0, a0
                  and          t4, a2, a1
                  sltu         s5, t3, t1
                  sra          ra, zero, t4
                  ori          s6, t1, -1528
                  lui          sp, 929652
                  srai         t3, t3, 3
                  slt          s1, s8, t3
                  auipc        s11, 674190
                  srli         a2, a0, 0
                  sra          zero, s5, t4
                  slt          t1, t1, s1
                  andi         a0, a6, -1898
                  slli         s0, t6, 30
                  xor          a2, a0, a7
                  xori         s2, a1, -1029
                  bltu         s2, ra, 441f
                  slti         s8, a2, -822
                  blt          a4, t2, 428f
                  xor          s4, s8, a4
428:              slti         s8, t2, 1878
                  xor          gp, s11, t5
                  sll          a6, t5, a3
                  sltiu        a2, s10, -1148
                  beq          gp, s1, 446f
                  sll          ra, a5, a3
                  xori         t5, s2, -650
                  slti         s10, s10, -64
                  srli         s9, ra, 1
                  slt          a1, s7, tp
                  addi         sp, s8, -589
                  lui          s6, 962905
                  bltu         a3, ra, 443f
441:              srli         s5, a3, 13
                  slt          s4, t3, s2
443:              srai         sp, s10, 7
                  srai         a4, t0, 30
                  blt          s9, a7, 454f
446:              bgeu         a3, s3, 466f
                  srli         s8, zero, 15
                  slti         s8, s5, 1668
                  sra          t3, s4, s5
                  xori         ra, a6, 948
                  and          t3, t0, s4
                  sltiu        t4, s11, -308
                  xor          s7, s11, s2
454:              sra          t1, s10, t0
                  sll          t5, a2, a5
                  blt          t6, t6, 468f
                  bge          s11, s5, 477f
                  slti         s1, a1, 1976
                  bne          a0, a1, 473f
                  bge          s3, s1, 478f
                  sub          s1, s1, a6
                  sltiu        s8, s10, 1921
                  and          s7, t3, tp
                  nop
                  blt          a7, sp, 472f
466:              ori          t6, a6, -1269
                  ori          s8, s3, -152
468:              sub          s1, a5, tp
                  srai         zero, sp, 2
                  ori          t4, s8, -1737
                  srai         t1, t3, 19
472:              blt          s2, s6, 489f
473:              sll          sp, s3, s2
                  sltiu        s5, s5, -1213
                  srai         a0, a5, 6
                  sll          s3, s8, tp
477:              srai         s4, s2, 1
478:              srli         s6, t2, 1
                  or           ra, s11, tp
                  xor          s5, t5, a0
                  sltiu        t4, a0, 1608
                  lui          ra, 141888
                  sltiu        a1, a1, 1458
                  bge          s4, sp, 497f
                  nop
                  xori         s1, zero, -892
                  sub          a0, t6, t1
                  and          a6, t5, a2
489:              sltu         s8, t0, s1
                  ori          t6, s10, -1827
                  slt          t5, t5, a6
                  srai         t5, t5, 8
                  slt          s8, s5, gp
                  sll          s11, s10, zero
                  blt          a2, s9, 513f
                  bne          a3, s7, 507f
497:              bne          s8, t5, 514f
                  srai         s2, t0, 12
                  or           a4, t4, a6
                  sltu         s11, s1, s10
                  srai         a2, t3, 31
                  blt          a7, t5, 516f
                  ori          gp, a0, 108
                  slt          s9, a4, t3
                  slti         a1, a4, -419
                  sub          tp, s5, s4
507:              nop
                  and          s11, a7, a4
                  sra          t3, a3, t6
                  bltu         t6, s1, 527f
                  xori         a7, s1, -199
                  sra          s2, s2, t1
513:              blt          ra, a5, 530f
514:              bge          tp, t2, 526f
                  sltu         a0, ra, s3
516:              sltiu        s6, s2, -351
                  slt          ra, t6, sp
                  andi         t4, a2, 1143
                  sltiu        t1, t0, 1204
                  srli         s4, a4, 2
                  blt          a5, a5, 525f
                  bge          gp, s0, 528f
                  srli         ra, t5, 11
                  nop
525:              nop
526:              sra          s7, s11, s9
527:              srai         s7, a7, 7
528:              sra          s4, a2, s6
                  slti         s6, sp, -180
530:              sltu         t1, sp, s8
                  and          a4, a6, a3
                  add          t4, t0, s10
                  slt          t0, s11, s2
                  sub          t5, a1, t0
                  sll          gp, s7, t3
                  xori         tp, t1, -1378
                  lui          a2, 378837
                  srl          t4, gp, s10
                  slti         a6, t4, 488
                  add          s3, a2, s4
                  andi         s10, a0, -862
                  srli         s9, s11, 10
                  auipc        a2, 778180
                  slli         s4, a6, 5
                  ori          a6, ra, 1991
                  sltu         s6, s2, t4
                  nop
                  andi         s5, a5, 684
                  add          zero, ra, t0
                  sra          a6, zero, a2
                  srli         s5, a2, 17
                  sra          s10, s8, a2
                  bne          s8, t2, 556f
                  bne          s0, s11, 555f
555:              sltiu        s11, s9, -1751
556:              sltu         s0, gp, a0
                  ori          zero, gp, 606
                  bgeu         t1, a7, 569f
                  srli         t3, t1, 26
                  bltu         a5, sp, 575f
                  lui          t4, 277990
                  beq          t6, t5, 567f
                  nop
                  blt          s1, a3, 573f
                  slti         s3, zero, 661
                  andi         a7, s7, -1789
567:              auipc        t6, 433162
                  auipc        ra, 691535
569:              andi         a7, gp, 1176
                  sltu         s8, gp, s7
                  bltu         s2, s9, 574f
                  sub          a7, s11, sp
573:              sra          sp, s8, s1
574:              srl          s3, s0, a5
575:              auipc        t4, 59509
                  sltiu        zero, s10, -652
                  blt          ra, ra, 586f
                  sra          t1, a4, a3
                  sltiu        t0, s6, -592
                  srli         s9, a2, 11
                  slti         a7, s0, -1043
                  slt          s6, a5, s11
                  andi         s1, t6, 1065
                  beq          s2, t2, 586f
                  add          s5, t1, gp
586:              sltu         a4, s10, t4
                  lui          a0, 537010
                  bne          t4, s11, 591f
                  slti         a2, s7, 1367
                  andi         s4, s3, 2012
591:              srai         s0, t2, 8
                  sltiu        ra, s7, 1083
                  xori         a4, s0, 1101
                  lui          a1, 113577
                  sra          t5, s9, s11
                  bge          a1, s6, 613f
                  bge          a1, t1, 609f
                  or           s1, t6, s6
                  xori         ra, t6, -1175
                  sub          s7, s3, ra
                  sltiu        s10, tp, 1031
                  sub          t4, t0, a2
                  srli         a4, s1, 12
                  sra          s10, a0, zero
                  and          sp, a4, a5
                  bgeu         s0, a6, 608f
                  or           t5, a0, gp
608:              andi         a7, a0, 1120
609:              slli         a0, a7, 13
                  slti         t0, a6, 659
                  slti         s6, a0, -1522
                  sll          s10, s6, s2
613:              addi         a4, t0, -770
                  auipc        a2, 963821
                  sra          s4, s5, a4
                  bge          a0, a5, 633f
                  nop
                  sub          ra, a2, t0
                  sra          t5, s3, s9
                  sltiu        a6, tp, -588
                  bge          t1, ra, 624f
                  add          s4, t0, a1
                  nop
624:              bge          t6, a4, 644f
                  slti         a2, t2, -421
                  slti         s6, tp, -1081
                  srli         s8, t6, 13
                  slli         a7, gp, 1
                  bne          s7, gp, 642f
                  nop
                  bgeu         s0, s1, 640f
                  sub          t4, a4, s4
633:              sub          t0, t3, a7
                  andi         s9, a4, 1157
                  or           s9, s4, s8
                  xori         a1, s5, 2010
                  xor          sp, s11, t3
                  sub          s7, a1, s8
                  srai         zero, s4, 15
640:              bge          gp, ra, 643f
                  sra          s8, s3, s7
642:              slti         t1, a4, -654
643:              srli         a1, t2, 3
644:              bgeu         s7, s9, 658f
                  nop
                  sra          s5, zero, t2
                  auipc        s1, 403500
                  sltiu        s4, t4, 1087
                  srai         gp, gp, 4
                  srai         s7, s6, 14
                  auipc        zero, 951879
                  addi         tp, s3, 431
                  add          s10, t0, s5
                  srai         zero, t1, 6
                  bge          zero, ra, 672f
                  auipc        s4, 84404
                  sltiu        a7, sp, 1609
658:              nop
                  nop
                  bgeu         s6, a6, 663f
                  xori         t0, t4, 1353
                  bltu         a6, s3, 680f
663:              addi         t1, s11, -1677
                  auipc        gp, 808839
                  srli         a1, s5, 17
                  slti         gp, s1, 890
                  blt          t2, a1, 678f
                  beq          s8, tp, 688f
                  slt          s5, s9, s11
                  srai         a7, a2, 27
                  lui          s8, 646893
672:              nop
                  srl          s8, a1, s11
                  addi         t6, t5, -124
                  sll          s2, s3, t3
                  addi         s1, s10, -1822
                  sll          tp, t5, zero
678:              ori          t3, s1, -66
                  srl          t0, t6, s8
680:              bltu         s10, s7, 682f
                  xori         a7, a6, -1700
682:              slt          ra, t0, a7
                  sra          a1, a3, s3
                  sltu         t1, t3, a2
                  ori          a7, a6, -1394
                  bgeu         s1, t6, 693f
                  add          a4, t4, s9
688:              slt          s9, s10, ra
                  blt          s1, s2, 700f
                  sltu         s4, zero, a6
                  sra          s9, a7, t3
                  srl          tp, a4, a0
693:              andi         s0, a1, -1188
                  blt          s0, t5, 708f
                  beq          a0, tp, 701f
                  nop
                  lui          s3, 419467
                  xori         s11, a2, 1965
                  addi         s3, a2, -1539
700:              xor          s6, s4, s9
701:              bltu         s10, s0, 702f
702:              srai         zero, t1, 27
                  add          zero, s9, s2
                  sub          s11, a1, a0
                  srai         a0, s11, 16
                  sltu         a4, ra, ra
                  sub          t0, a6, tp
708:              slt          gp, s10, s11
                  bge          t1, a0, 721f
                  beq          sp, zero, 722f
                  xor          ra, s8, gp
                  add          s5, s2, s6
                  srai         a0, t2, 29
                  xor          t5, t0, zero
                  slti         a0, t6, -639
                  slti         ra, a3, -1680
                  addi         a1, s3, -1738
                  slli         ra, t2, 3
                  andi         a4, a4, -761
                  auipc        sp, 507029
721:              sll          zero, s8, t1
722:              beq          t6, s7, 739f
                  srai         s8, t0, 6
                  or           s11, t5, s3
                  andi         s10, t0, 1230
                  bgeu         a1, a6, 730f
                  blt          t2, a3, 744f
                  andi         s5, a6, -1127
                  nop
730:              andi         s9, t3, 1756
                  bne          s7, s8, 749f
                  srai         s0, t2, 19
                  nop
                  beq          s2, sp, 743f
                  beq          s1, a2, 740f
                  beq          a4, t6, 738f
                  addi         gp, s6, -93
738:              bgeu         sp, a5, 755f
739:              xori         s10, a2, -995
740:              srli         a0, a3, 23
                  bltu         a4, a7, 756f
                  srl          s7, s9, a1
743:              sltu         s8, t3, s11
744:              nop
                  nop
                  slti         ra, a0, -1820
                  or           a2, s5, t6
                  sub          s9, a1, a5
749:              and          t0, zero, a3
                  nop
                  bge          s4, t5, 763f
                  andi         s0, a7, 425
                  or           s9, s0, s5
                  bgeu         s11, a6, 771f
755:              blt          zero, t0, 775f
756:              slt          t6, zero, s10
                  srli         s9, s3, 24
                  sltu         t4, t3, t6
                  sltu         s10, s8, s8
                  sltu         t6, s6, t5
                  slti         t4, a4, 791
                  slli         s5, t5, 9
763:              xori         ra, s6, -795
                  slti         s0, s11, 1419
                  sub          a1, s3, s4
                  add          t4, a4, s8
                  slti         t4, s4, 1314
                  slli         t5, t0, 5
                  ori          s3, s0, 727
                  slli         s0, s9, 9
771:              slli         a6, s4, 31
                  beq          a1, t6, 783f
                  bge          tp, s5, 780f
                  bge          s4, s1, 776f
775:              add          s8, s5, tp
776:              sltiu        ra, s7, -1635
                  sub          s1, t0, s1
                  and          s8, a2, sp
                  bne          s10, a2, 791f
780:              xor          s6, s7, t1
                  add          a2, t2, a4
                  ori          s3, s7, 678
783:              srai         s5, s5, 8
                  srl          a1, s8, t4
                  sltu         s1, tp, s8
                  nop
                  sltu         t3, gp, s10
                  sra          s11, s11, ra
                  bltu         a5, t6, 798f
                  sra          s5, t4, a1
791:              blt          t0, ra, 797f
                  srai         s9, t0, 13
                  add          t5, s11, t4
                  sltiu        t1, s5, 1176
                  lui          tp, 314546
                  bltu         t3, s5, 799f
797:              srai         t4, s2, 28
798:              addi         t3, a1, -116
799:              blt          s5, t2, 811f
                  sll          t6, a3, t3
                  srli         t0, a7, 12
                  bge          s3, t5, 807f
                  srai         a1, s4, 31
                  srai         t0, s5, 25
                  sub          ra, s10, t1
                  srai         t6, zero, 13
807:              andi         t5, a5, -1951
                  andi         s6, a3, -1569
                  bne          a7, s1, 813f
                  and          s11, gp, s0
811:              bne          tp, t4, 828f
                  auipc        a6, 509504
813:              sltiu        s8, t3, -1642
                  slti         t1, tp, -811
                  sra          gp, a0, t0
                  slli         sp, a6, 6
                  sltiu        t0, s4, 1606
                  lui          t1, 626436
                  sra          tp, gp, t4
                  sltu         t0, a0, s6
                  sltu         zero, sp, s2
                  slt          s0, s7, s5
                  sltiu        s0, t5, 92
                  slti         s8, t2, 1591
                  and          a1, sp, zero
                  auipc        zero, 176536
                  bne          sp, s2, 844f
828:              slli         t6, s0, 21
                  srai         t3, a6, 15
                  sll          a7, a1, tp
                  bgeu         s5, s1, 834f
                  slli         s11, tp, 31
                  srai         s2, ra, 12
834:              auipc        a6, 90330
                  beq          tp, t1, 853f
                  slti         t6, s7, 1522
                  srai         s8, t1, 22
                  and          ra, s4, s4
                  sltiu        a1, s10, 797
                  bgeu         s0, t3, 858f
                  sub          s5, s7, zero
                  and          ra, t4, s8
                  sra          s0, s9, tp
844:              srli         sp, tp, 16
                  sll          s5, a4, ra
                  andi         sp, s8, -880
                  or           tp, gp, ra
                  nop
                  slli         t1, sp, 21
                  xor          ra, s8, t0
                  or           a0, s10, t5
                  bgeu         s6, a6, 866f
853:              ori          sp, s11, 1616
                  xori         t0, a1, 735
                  ori          s0, s11, -1687
                  add          t3, a5, s5
                  or           s0, a7, s11
858:              lui          s5, 774296
                  andi         tp, s0, -528
                  addi         a4, t0, 1468
                  bltu         s2, a5, 863f
                  srl          a0, t0, s2
863:              andi         sp, ra, -527
                  slti         a6, a0, 283
                  xor          t0, a6, s6
866:              xori         s5, t3, 480
                  srl          t4, s2, s8
                  xor          a7, t1, tp
                  and          s5, a7, s2
                  sra          t0, s0, a7
                  bgeu         s4, sp, 882f
                  bne          s11, a7, 875f
                  xori         zero, tp, -897
                  and          a4, s7, tp
875:              addi         a6, t3, -874
                  xori         s10, a0, 1353
                  xori         t5, a6, -1350
                  srai         a1, a2, 23
                  bltu         s11, a6, 896f
                  xori         t5, s6, -719
                  auipc        s11, 1035350
882:              or           a2, a3, t1
                  bge          sp, s1, 903f
                  lui          s4, 349673
                  xori         s7, s10, 1144
                  blt          t1, tp, 900f
                  sll          t6, s0, t3
                  add          s5, tp, sp
                  addi         s10, a5, 513
                  bge          a5, s3, 899f
                  nop
                  srl          a4, t5, a3
                  ori          t1, s0, 1694
                  slti         a0, a3, -888
                  or           a1, s1, s7
896:              sra          s3, s6, tp
                  slti         t3, s8, 1238
                  xor          s5, a5, s3
899:              bltu         s10, s0, 912f
900:              sltu         ra, s6, zero
                  bgeu         t2, gp, 913f
                  bltu         s4, t6, 903f
903:              sltu         t3, a5, t2
                  sltu         a4, s6, s3
                  andi         s1, a7, 1188
                  bne          t5, t5, 921f
                  sltiu        s0, a0, 916
                  xor          t0, t1, a4
                  srli         t3, s11, 22
                  srl          s8, a2, s2
                  sra          s11, a4, t2
912:              slli         a2, s11, 18
913:              and          ra, a7, s8
                  blt          s10, s6, 931f
                  sltiu        s2, t4, -46
                  andi         sp, sp, 955
                  xori         a7, a6, 275
                  bltu         s10, sp, 935f
                  slti         t0, sp, -130
                  slli         s5, s9, 12
921:              beq          s7, t6, 935f
                  sub          gp, s5, s3
                  sra          s1, s10, t4
                  sltu         s10, s2, s8
                  srai         a0, t5, 17
                  slt          s2, t0, tp
                  add          s6, t5, t0
                  bgeu         a4, s4, 931f
                  ori          s3, zero, -2021
                  lui          s3, 457392
931:              srli         sp, a2, 1
                  auipc        zero, 337488
                  lui          s0, 99408
                  bge          s1, gp, 948f
935:              bge          s0, s8, 952f
                  addi         t5, a3, -385
                  ori          s8, a2, -1174
                  srai         s0, s7, 14
                  ori          a0, s5, -1276
                  or           t5, t3, t2
                  nop
                  auipc        s6, 496522
                  sra          t4, a2, s0
                  lui          zero, 167644
                  slli         s1, s1, 20
                  and          t1, t6, t0
                  xor          s3, a4, s4
948:              sll          sp, a0, a4
                  lui          s10, 840651
                  srai         s6, a5, 6
                  bne          ra, t2, 963f
952:              slli         zero, s4, 31
                  slli         t6, a7, 12
                  la           s10, region_0+1571 #start riscv_load_store_rand_instr_stream_14
                  lb           s4, 100(s10)
                  lh           zero, 229(s10)
                  lui          t0, 524013
                  and          a2, ra, sp
                  sltiu        a4, s9, -1989
                  lbu          s11, 200(s10)
                  sra          a4, t2, t1
                  lh           t6, 243(s10)
                  srli         t5, s7, 29
                  sb           ra, -6(s10)
                  add          a1, a4, a3
                  srl          a0, s1, a0
                  sltu         ra, t0, t4
                  sh           a2, -169(s10)
                  srli         s4, t5, 15
                  lbu          s3, 9(s10)
                  lui          a2, 704468
                  lb           tp, -190(s10)
                  sb           a3, 21(s10)
                  sb           t3, 252(s10)
                  lbu          s3, 188(s10)
                  lb           gp, 163(s10)
                  lb           t0, 154(s10)
                  lb           s9, -104(s10)
                  slti         a2, tp, 1869
                  lhu          a4, 53(s10)
                  srl          zero, t6, sp
                  sb           t1, 143(s10)
                  sh           s11, -173(s10)
                  andi         s4, s6, -1715
                  sltu         s6, s1, a0
                  lh           t6, 67(s10)
                  srl          a6, s5, s2
                  sb           t2, -15(s10)
                  xor          t5, a5, s1
                  lb           t6, -149(s10)
                  and          tp, s0, t5
                  sltu         sp, t3, s9
                  slli         a6, s10, 8
                  slti         a6, t2, 490
                  lbu          s4, 133(s10)
                  lb           s9, 105(s10)
                  lh           s11, 133(s10)
                  and          s1, a4, s1
                  sb           s9, -140(s10)
                  addi         s6, a6, 234
                  lh           s3, -91(s10)
                  slt          t4, a2, s9
                  sb           a5, 195(s10) #end riscv_load_store_rand_instr_stream_14
                  beq          a4, a0, 972f
                  bge          tp, s3, 958f
                  bge          tp, tp, 971f
                  srli         s8, t4, 25
958:              slt          a1, s10, t3
                  bgeu         a1, a7, 961f
                  sltu         zero, a5, s3
961:              sltiu        s5, s0, 1139
                  beq          a2, a5, 975f
963:              sltu         s2, t4, s6
                  sltiu        tp, s6, 1171
                  srl          a1, tp, a7
                  slt          t0, t3, a4
                  xori         s7, a3, -353
                  xori         a0, s1, 1023
                  auipc        s0, 509540
                  sll          t0, ra, a6
971:              srli         s10, s5, 6
972:              bne          s11, a3, 979f
                  sltiu        a0, gp, -1820
                  xori         t0, s1, -19
975:              xori         t0, t0, -815
                  beq          s9, s1, 988f
                  sltiu        s0, s9, 1227
                  sra          sp, a5, a5
979:              bltu         a7, a2, 996f
                  ori          a0, a6, 2045
                  bgeu         t0, s0, 998f
                  andi         sp, s11, -1093
                  andi         s1, a7, 1011
                  ori          ra, s0, -1118
                  sltu         s10, a3, s4
                  sll          t4, a2, a4
                  bltu         s5, s5, 992f
988:              sltiu        s1, t0, 817
                  sll          t0, t6, t4
                  andi         a7, a2, 1715
                  ori          zero, s0, -873
992:              bne          s9, zero, 1003f
                  srl          s10, s0, a5
                  sra          s4, s2, a5
                  slli         t1, s4, 7
996:              nop
                  add          s9, ra, t3
998:              sltu         sp, s9, tp
                  blt          s4, tp, 1001f
                  bgeu         t1, s10, 1009f
1001:             bgeu         s4, gp, 1019f
                  sltiu        gp, s0, 548
1003:             slli         s1, a4, 24
                  sra          a7, gp, a4
                  bltu         tp, a6, 1017f
                  srli         s6, s3, 15
                  slti         s10, s8, -1060
                  ori          t0, s9, 1016
1009:             bge          s7, a2, 1012f
                  sltu         t1, t1, t3
                  srai         s9, s5, 23
1012:             auipc        a0, 134099
                  andi         t5, s10, -1153
                  bne          a3, a1, 1015f
1015:             sub          s8, a7, t2
                  andi         zero, t1, -981
1017:             xori         a2, a2, -1993
                  lui          s8, 483119
1019:             addi         t0, a3, -1702
                  sll          s3, a4, a5
                  srl          s11, t4, gp
                  bltu         s9, a7, 1028f
                  beq          a1, ra, 1027f
                  auipc        s5, 915631
                  addi         t5, s11, 1744
                  xor          s6, sp, a7
1027:             nop
1028:             or           t0, s4, a3
                  add          s1, s10, s0
                  nop
                  srli         a2, t3, 15
                  ori          ra, s0, -1375
                  xori         a0, t4, 1197
                  bge          s7, s1, 1054f
                  bge          a1, a0, 1044f
                  sll          s6, s5, t1
                  beq          s10, s5, 1048f
                  srl          zero, t3, a5
                  beq          a1, a4, 1059f
                  andi         t5, ra, 996
                  slt          a2, t1, s6
                  add          s1, s4, s8
                  ori          s4, a1, -1655
1044:             slli         t4, s7, 15
                  bltu         t6, s2, 1062f
                  sll          a2, s7, a4
                  sll          s7, a6, s2
1048:             lui          a4, 240576
                  sltu         s3, a4, a2
                  add          s1, s0, a0
                  srli         a0, s2, 24
                  srli         a4, s10, 11
                  sub          s6, t5, t1
1054:             beq          s8, s7, 1057f
                  blt          s0, a1, 1068f
                  bne          tp, t3, 1059f
1057:             slli         s9, t0, 1
                  auipc        t0, 119157
1059:             sltu         t0, ra, s4
                  auipc        s10, 468543
                  srli         ra, a4, 27
1062:             slli         s7, s0, 24
                  bgeu         t5, a3, 1083f
                  sra          s3, s9, t3
                  slli         sp, s0, 13
                  bgeu         a0, s0, 1075f
                  blt          s3, t0, 1078f
1068:             xor          s7, s5, t0
                  xori         a4, a0, 1315
                  slt          s5, a1, s4
                  ori          ra, s0, 389
                  srl          t5, a4, a7
                  auipc        t4, 695176
                  lui          s11, 9396
1075:             srai         s11, t1, 27
                  sub          a7, s10, a2
                  sltu         s0, s11, s5
1078:             srli         a4, a4, 0
                  add          a0, s7, t4
                  blt          a4, t1, 1100f
                  nop
                  sub          s7, s1, s6
1083:             beq          s11, a4, 1087f
                  bltu         gp, sp, 1096f
                  xori         t0, a6, -303
                  sra          s10, sp, t5
1087:             bne          s7, t0, 1101f
                  nop
                  lui          s5, 122685
                  auipc        t5, 715560
                  bltu         t1, a2, 1103f
                  beq          t6, t6, 1109f
                  or           a6, a0, a7
                  sll          t1, t4, a1
                  bgeu         s4, s9, 1101f
1096:             slt          t4, s4, t3
                  sltu         t0, a2, t6
                  add          ra, t1, ra
                  sra          t4, zero, s10
1100:             sltiu        a1, ra, -729
1101:             sltiu        zero, a0, 1004
                  bltu         s1, zero, 1114f
1103:             srli         t1, t1, 24
                  sub          t0, t4, a7
                  srai         a7, t2, 14
                  srl          a7, s2, a7
                  slti         s11, a2, -867
                  nop
1109:             slli         s9, zero, 15
                  bltu         s2, a5, 1127f
                  slti         s6, a3, 1639
                  ori          t1, tp, -1098
                  blt          s3, s3, 1130f
1114:             sll          a4, a3, s11
                  slt          gp, a1, a2
                  srl          s8, s3, t4
                  lui          a0, 196558
                  sub          s6, a5, t5
                  sub          a6, a5, a0
                  add          s2, s3, t5
                  srai         gp, t0, 19
                  slli         t4, a3, 4
                  addi         ra, s2, 95
                  sltiu        gp, gp, 1220
                  add          s9, a7, a1
                  slli         s4, zero, 4
1127:             sra          s3, zero, zero
                  addi         s8, s9, -656
                  bne          t6, gp, 1138f
1130:             auipc        s11, 214608
                  sltiu        s7, zero, -607
                  srli         s7, a0, 2
                  xor          t3, a2, s11
                  sll          a2, a2, s1
                  slti         a7, s3, -819
                  slt          s7, t6, s4
                  sub          t1, s6, a2
1138:             sll          t0, gp, s10
                  srl          s10, t1, t0
                  srl          zero, a3, a4
                  andi         a1, a7, 679
                  auipc        ra, 386880
                  bne          a2, s11, 1160f
                  xori         a0, s11, 311
                  slti         a0, sp, -1555
                  bltu         gp, t5, 1164f
                  srli         s10, t5, 9
                  or           t1, s1, tp
                  bne          s4, t2, 1151f
                  bne          ra, a2, 1153f
1151:             bgeu         s8, t4, 1158f
                  sltiu        gp, a0, -992
1153:             or           s1, s8, s9
                  sltiu        s10, s0, -1393
                  blt          a3, ra, 1157f
                  blt          s10, s0, 1174f
1157:             slt          s5, a5, a4
1158:             xor          a0, s8, a2
                  sltiu        s11, a4, 1490
1160:             andi         a4, a6, -140
                  addi         s7, s2, 1334
                  and          sp, zero, a2
                  bgeu         a5, a2, 1177f
1164:             and          t6, a2, gp
                  beq          s5, s5, 1166f
1166:             bne          a5, ra, 1171f
                  slt          s7, zero, t6
                  andi         s6, zero, -984
                  srl          t0, a1, a4
                  sra          s5, a4, t2
1171:             xori         t6, s1, 277
                  or           tp, sp, s4
                  nop
1174:             blt          s0, t4, 1191f
                  blt          a4, a7, 1186f
                  sltu         s4, a6, a0
1177:             sra          t4, s7, s9
                  srl          a1, s0, a3
                  or           t5, s2, gp
                  bgeu         t2, s3, 1195f
                  sub          s5, a6, s6
                  srl          s6, t3, a2
                  nop
                  sltu         ra, s0, t3
                  bge          a1, s7, 1196f
1186:             or           s9, a0, sp
                  srai         s6, a3, 21
                  bge          t0, t4, 1190f
                  bge          s11, a3, 1192f
1190:             sltu         t1, tp, t6
1191:             sub          a1, tp, zero
1192:             bltu         t1, s10, 1210f
                  ori          t1, t6, -631
                  blt          a2, sp, 1207f
1195:             nop
1196:             bge          s7, s9, 1199f
                  xori         zero, s10, 154
                  xor          s7, s9, tp
1199:             nop
                  bgeu         a5, s7, 1220f
                  xori         a6, s8, -1532
                  sra          s1, a6, a2
                  slt          a0, gp, a5
                  slli         t4, a1, 26
                  bne          s0, s8, 1219f
                  srli         s1, tp, 29
1207:             sll          s0, s8, t6
                  lui          ra, 598248
                  xori         a4, s5, 1789
1210:             lui          t0, 986344
                  xor          s9, a0, a4
                  add          t4, a0, a4
                  bne          a6, a0, 1230f
                  xori         t6, ra, 1994
                  addi         ra, a5, -1759
                  lui          s8, 495256
                  andi         t6, s9, -1737
                  slti         t5, a2, -1628
1219:             beq          a6, a0, 1225f
1220:             auipc        s10, 109660
                  srai         a7, t5, 2
                  auipc        s5, 433255
                  sll          sp, t4, a7
                  slt          t1, s2, t6
1225:             sltiu        gp, a6, 1531
                  xor          t3, s3, a1
                  sltiu        t5, t6, -139
                  sll          gp, a5, t6
                  add          a2, s4, s0
1230:             sll          t4, a0, s11
                  blt          s0, s4, 1243f
                  bne          t1, s2, 1233f
1233:             sltiu        ra, t6, 119
                  blt          t6, s11, 1238f
                  sltiu        gp, gp, -1611
                  slti         s1, s8, 23
                  bgeu         s4, sp, 1254f
1238:             add          ra, sp, s5
                  blt          a0, t3, 1246f
                  slt          zero, s10, t3
                  ori          s5, a1, 520
                  auipc        ra, 513296
1243:             bltu         a1, t6, 1248f
                  srai         t0, t5, 23
                  bgeu         s9, ra, 1262f
1246:             slti         t0, a6, -1482
                  slt          gp, s5, a7
1248:             auipc        t0, 961844
                  bltu         a0, tp, 1252f
                  srli         sp, s2, 28
                  slt          s5, a4, sp
1252:             addi         a7, sp, 1063
                  bne          t0, gp, 1268f
1254:             andi         s10, s9, 451
                  blt          t6, s4, 1264f
                  slli         s9, s3, 8
                  sltu         t0, a5, a6
                  add          t4, t3, s3
                  lui          zero, 950735
                  sltiu        a6, gp, 1293
                  slt          zero, s8, a4
1262:             addi         t4, t2, 1514
                  andi         s0, a6, -1738
1264:             sra          s8, a7, t5
                  xori         t5, t0, -1173
                  sltiu        s1, tp, -1998
                  nop
1268:             beq          zero, t1, 1270f
                  srli         t1, t3, 25
1270:             slti         t0, tp, 1178
                  slli         s8, s2, 18
                  bltu         a7, t1, 1290f
                  slli         t3, s6, 18
                  auipc        s1, 382867
                  srai         s2, a1, 6
                  srl          a6, t2, t3
                  sra          a2, ra, a2
                  andi         tp, gp, -292
                  or           a7, sp, s11
                  beq          t1, t4, 1294f
                  sub          s5, t4, tp
                  auipc        tp, 324226
                  sll          s5, sp, t5
                  bltu         a1, a3, 1293f
                  srli         s11, t1, 0
                  xor          s10, a2, t6
                  xor          s8, s1, s7
                  addi         zero, t2, 1211
                  bne          tp, s2, 1306f
1290:             slti         a6, t6, -107
                  or           s9, s5, a5
                  slti         s0, s11, 402
1293:             add          s2, t3, a3
1294:             sub          s1, s8, gp
                  sub          s10, zero, s9
                  bne          s8, s0, 1313f
                  bltu         s1, s8, 1309f
                  slt          zero, s4, sp
                  add          t4, t6, ra
                  bgeu         a1, s6, 1320f
                  sltu         t6, a4, a5
                  sub          t0, s5, gp
                  add          s10, s1, s1
                  or           t6, a4, t0
                  xor          gp, a3, t0
1306:             slti         s7, s11, -1621
                  beq          s6, s9, 1318f
                  xor          s2, t1, a1
1309:             srai         s9, t4, 25
                  srli         sp, s0, 25
                  and          a0, s4, zero
                  add          s7, gp, ra
1313:             xori         zero, s5, 26
                  sub          t6, s10, gp
                  sub          t4, t2, t5
                  xori         tp, s0, 619
                  srai         t4, sp, 18
1318:             addi         s9, gp, -1349
                  srl          t6, t4, a2
1320:             srli         t0, a0, 17
                  slli         t6, a0, 18
                  auipc        s6, 122855
                  bge          s3, s6, 1335f
                  bne          s4, s2, 1333f
                  srli         a7, a3, 7
                  andi         t1, gp, 1144
                  andi         s8, t6, -481
                  andi         a2, s3, -774
                  xori         a6, s4, 135
                  sltu         s2, t0, s11
                  srai         t3, s10, 3
                  or           s0, tp, gp
1333:             sltiu        t0, zero, 515
                  sltu         s1, s3, t0
1335:             sll          s1, s10, sp
                  add          t4, a5, t3
                  sltu         sp, s10, ra
                  slti         a2, a2, 781
                  slti         t3, ra, -1984
                  auipc        ra, 23285
                  bne          s2, t6, 1347f
                  ori          a0, a5, 1537
                  slli         s7, ra, 18
                  srli         sp, s8, 1
                  bgeu         t6, ra, 1362f
                  nop
1347:             blt          s1, s3, 1358f
                  addi         sp, t2, -393
                  srai         s9, a6, 28
                  bne          zero, t3, 1370f
                  slli         s5, a2, 3
                  bltu         t0, s9, 1364f
                  sra          t4, s1, t2
                  andi         a2, gp, 1745
                  bltu         a7, a5, 1357f
                  sub          gp, a5, a3
1357:             srai         s8, s9, 26
1358:             or           s2, a5, a6
                  and          s9, sp, a2
                  and          s3, s3, s9
                  add          s8, a0, a3
1362:             addi         a7, t5, 1033
                  sub          s2, a0, s11
1364:             bgeu         s11, sp, 1376f
                  or           a6, ra, t2
                  nop
                  addi         s7, t2, -735
                  sra          s9, s10, a1
                  beq          tp, s9, 1383f
1370:             andi         t5, zero, 991
                  nop
                  sltu         s3, t4, a0
                  xor          a1, t1, s0
                  blt          a6, t0, 1375f
1375:             slti         s9, s11, -1182
1376:             auipc        gp, 90388
                  srli         t6, a2, 13
                  beq          s5, s1, 1380f
                  and          tp, s10, s4
1380:             auipc        s2, 129066
                  sltiu        t3, ra, 1947
                  nop
1383:             or           sp, a1, t1
                  bgeu         t5, a2, 1401f
                  slli         a6, s6, 9
                  ori          a4, a4, 1599
                  slli         s6, a2, 0
                  beq          zero, tp, 1395f
                  slti         s1, s6, 2029
                  sltu         s9, t0, t0
                  sltiu        s10, s6, -314
                  xori         s0, t0, -664
                  slti         a6, a4, 118
                  sll          tp, a7, t6
1395:             bgeu         s4, t1, 1398f
                  auipc        sp, 770099
                  beq          s0, sp, 1402f
1398:             bne          t2, s0, 1401f
                  sltu         t4, ra, sp
                  beq          zero, s1, 1413f
1401:             ori          s2, s5, 260
1402:             slti         a6, s2, -963
                  slt          t4, a3, ra
                  blt          a4, ra, 1421f
                  sub          s7, sp, t5
                  sltiu        a1, ra, -1499
                  sub          s9, a7, gp
                  srai         s1, s1, 13
                  xori         t1, a4, -1244
                  nop
                  addi         s0, t6, 1331
                  xori         s6, t1, 255
1413:             andi         s0, a0, -207
                  lui          s0, 324745
                  srli         s3, ra, 1
                  beq          a3, sp, 1431f
                  bltu         sp, s5, 1435f
                  srli         s10, s1, 8
                  slli         a7, s9, 8
                  auipc        a4, 175308
1421:             sltiu        s1, s7, 1742
                  sub          s2, gp, a1
                  sll          s4, zero, a6
                  bge          s4, sp, 1436f
                  auipc        t1, 300367
                  slti         ra, a2, 1721
                  auipc        s2, 172628
                  addi         s9, a3, -1106
                  xor          t3, t1, ra
                  or           s2, t0, t5
1431:             slt          ra, s7, t6
                  sra          a7, a5, s11
                  xori         t0, a7, -336
                  srli         zero, tp, 15
1435:             bgeu         s10, a2, 1438f
1436:             or           s10, gp, t1
                  xori         sp, s9, 1349
1438:             slli         t4, ra, 31
                  bge          a0, gp, 1443f
                  srai         ra, s2, 14
                  sub          a2, a1, a1
                  sra          sp, t0, s1
1443:             srl          s2, zero, s1
                  slt          a6, t1, s2
                  srli         s7, t1, 0
                  bne          a1, s3, 1457f
                  bne          tp, gp, 1464f
                  beq          s0, s0, 1457f
                  and          s9, t4, s0
                  bge          a2, sp, 1467f
                  or           t0, t3, a5
                  sltiu        s4, a6, -1060
                  srai         s4, s5, 26
                  xori         tp, sp, -433
                  bltu         a5, a3, 1473f
                  sll          s5, tp, a1
1457:             xori         s7, s1, -684
                  blt          s7, t1, 1472f
                  srli         a0, s11, 3
                  addi         gp, s7, -455
                  blt          s3, a0, 1481f
                  blt          a5, t1, 1479f
                  slti         s2, t4, -865
1464:             or           s9, zero, t3
                  sltu         a7, zero, zero
                  sltiu        sp, s2, -1045
1467:             sll          sp, s5, a1
                  ori          t6, gp, -258
                  nop
                  ori          s9, a7, 1605
                  sltu         a7, t2, t0
1472:             beq          t4, t5, 1481f
1473:             or           s7, ra, a0
                  srli         s7, a7, 9
                  add          a1, ra, s10
                  xor          s9, t1, a1
                  slti         zero, a6, 827
                  bltu         t1, t3, 1496f
1479:             srai         zero, a5, 22
                  slli         s3, ra, 22
1481:             sll          s1, a6, s3
                  ori          t1, s5, -1573
                  auipc        s1, 560320
                  bge          gp, s8, 1499f
                  sra          t5, a3, sp
                  sub          a2, a7, a0
                  xori         s5, a7, -521
                  slti         s4, sp, 1465
                  bne          a4, a7, 1507f
                  xor          a0, t4, a4
                  sltu         s1, tp, a2
                  sltiu        s4, t1, 2047
                  sub          s11, t2, a0
                  and          sp, s0, s2
                  or           s10, s1, gp
1496:             lui          s9, 855323
                  sltiu        s6, t6, 422
                  auipc        sp, 100028
1499:             blt          s4, gp, 1516f
                  lui          zero, 1043905
                  ori          s0, a3, -1350
                  andi         t6, s8, -1079
                  srai         s7, a2, 17
                  slli         t4, t6, 21
                  add          t0, zero, s11
                  ori          s6, s6, -376
1507:             xor          t3, ra, t3
                  bne          t4, zero, 1525f
                  auipc        t3, 204557
                  add          a7, a7, s1
                  slt          ra, s9, t2
                  beq          s7, s3, 1517f
                  srl          s1, t3, s11
                  add          ra, a6, a1
                  ori          a1, s10, -1588
1516:             bne          zero, s9, 1522f
1517:             lui          ra, 47911
                  sltiu        t3, sp, -1513
                  sub          a0, tp, zero
                  and          s2, a1, a1
                  srli         t1, a4, 26
1522:             srai         s8, a3, 16
                  or           t5, t5, s1
                  slt          a7, tp, a1
1525:             sra          s4, t5, s9
                  or           s9, s5, s9
                  xor          s0, a1, s10
                  sra          a7, t6, s7
                  bge          a1, a2, 1532f
                  nop
                  addi         s11, t5, -1581
1532:             auipc        sp, 306430
                  and          a1, tp, s10
                  sub          t0, sp, s6
                  auipc        a7, 648489
                  ori          t6, gp, -1469
                  bltu         zero, a2, 1540f
                  or           s6, s11, s9
                  xori         a7, t2, -125
1540:             auipc        a2, 544544
                  and          s11, a2, zero
                  nop
                  sltiu        a4, a6, 1372
                  ori          s10, s7, 713
                  sll          s4, t4, s6
                  add          t4, s0, a3
                  addi         t5, t0, -1917
                  slti         tp, t1, -231
                  sll          s7, s0, s5
                  slt          a4, tp, tp
                  bgeu         s10, tp, 1553f
                  and          s11, a4, t1
1553:             auipc        tp, 194359
                  add          s6, s11, tp
                  lui          gp, 531637
                  xor          s5, t4, gp
                  sll          s8, a0, t6
                  lui          s3, 124714
                  srli         s8, ra, 8
                  beq          t1, t1, 1572f
                  srli         s11, a0, 24
                  xor          a2, s11, t4
                  slti         a6, tp, -360
                  addi         a6, s0, 680
                  or           a2, s7, a7
                  srl          a0, a0, t6
                  sltu         sp, t0, t2
                  bne          a4, a0, 1579f
                  bgeu         zero, t0, 1589f
                  sltiu        s8, s7, -1868
                  addi         a7, s4, -1294
1572:             srl          s7, ra, t3
                  slti         tp, sp, -2024
                  sltu         t0, tp, zero
                  sltiu        t6, s9, -1461
                  sltu         t6, t1, s11
                  xori         s1, zero, -1033
                  sra          s0, t0, tp
1579:             sll          a2, s0, t1
                  srai         a4, s0, 22
                  sub          s7, s11, t0
                  ori          s2, sp, -1642
                  xori         a4, s11, -1297
                  addi         tp, zero, -1556
                  andi         a2, s10, 41
                  sltu         s9, a0, tp
                  addi         s2, t2, -1045
                  sub          t4, a5, ra
1589:             lui          t4, 177467
                  bge          t2, s9, 1603f
                  addi         s8, s9, -502
                  slt          t4, s10, a3
                  bne          a1, s2, 1607f
                  slti         a6, s9, 145
                  slt          s0, s5, t1
                  lui          t1, 773952
                  bltu         t6, t1, 1599f
                  bltu         s7, s9, 1609f
1599:             auipc        zero, 269454
                  srl          s4, a7, zero
                  beq          t1, t3, 1618f
                  and          s11, s10, zero
1603:             bgeu         t5, s10, 1617f
                  srli         ra, t4, 29
                  nop
                  srai         sp, t4, 11
1607:             lui          tp, 316061
                  bgeu         s4, a7, 1620f
1609:             nop
                  sra          a2, t3, s2
                  xor          s4, tp, ra
                  srl          a4, s8, s2
                  sra          s9, tp, t1
                  auipc        t0, 926648
                  la           s1, region_0+868 #start riscv_load_store_rand_instr_stream_3
                  lui          t3, 1046874
                  sb           s9, 65(s1)
                  lbu          a4, -239(s1)
                  slti         a6, a5, 1883
                  sb           s2, 169(s1)
                  lhu          s3, 242(s1)
                  slli         s9, a0, 2
                  sh           sp, 208(s1)
                  slti         a4, ra, 1302
                  sltu         s6, ra, a3
                  sb           s4, -131(s1)
                  lb           a6, -213(s1)
                  lb           a6, 226(s1)
                  lb           s7, -195(s1)
                  ori          t3, s5, -1428
                  addi         a7, a4, 173
                  lbu          s11, -65(s1)
                  nop
                  lb           a0, 65(s1)
                  lb           s2, -215(s1)
                  lh           s6, -132(s1)
                  lbu          a4, -161(s1)
                  srl          s10, s1, a3
                  lui          t3, 633982
                  sra          s7, s7, t0
                  srai         zero, s10, 9
                  lhu          t0, 174(s1)
                  lb           s0, -45(s1)
                  slt          sp, s0, a1
                  lb           tp, 51(s1)
                  srl          s10, t0, t5
                  ori          zero, s3, -1592
                  lw           a2, 40(s1)
                  add          t5, a6, s6
                  lh           a6, 56(s1)
                  sh           s11, 124(s1)
                  xori         s9, ra, 650
                  sh           s5, -232(s1)
                  lbu          s2, -5(s1)
                  lbu          s8, 45(s1)
                  lh           a7, -252(s1)
                  xor          a2, a4, s10
                  nop
                  slli         t5, a1, 29
                  lb           zero, 15(s1)
                  lbu          a1, 199(s1)
                  sra          s4, s0, sp
                  srai         tp, t2, 14
                  slli         s11, t2, 7
                  and          sp, a3, s4
                  lb           t5, -231(s1)
                  lb           s11, 146(s1)
                  lbu          s5, -125(s1)
                  lb           s7, -251(s1) #end riscv_load_store_rand_instr_stream_3
                  xor          s1, t1, a3
                  xori         t0, s10, 115
1617:             sltiu        s2, a5, 1096
1618:             sll          a2, a1, sp
                  lui          s6, 389870
1620:             sll          a0, s4, sp
                  sltu         s7, s11, ra
                  andi         a6, a5, -909
                  bne          s3, sp, 1626f
                  srli         s5, a5, 21
                  sra          s10, s7, t1
1626:             blt          s7, t3, 1643f
                  bltu         s8, s2, 1636f
                  srl          a0, s7, s4
                  sltu         t1, s5, t0
                  bgeu         t3, sp, 1637f
                  srai         a1, s3, 30
                  srli         a0, s1, 3
                  bgeu         t0, s3, 1645f
                  addi         a1, s10, -1885
                  srai         t6, zero, 19
1636:             bltu         s6, s11, 1656f
1637:             xor          t0, t0, s7
                  srai         s11, t1, 8
                  xori         t3, s8, -1246
                  srai         s6, sp, 14
                  xori         a4, s9, 1073
                  auipc        a6, 413366
1643:             nop
                  bne          s11, s8, 1648f
1645:             sll          s0, s4, s10
                  sltiu        s2, a3, -29
                  add          s10, a0, s2
1648:             xor          s4, a5, t2
                  xori         gp, t0, 539
                  nop
                  bne          t6, s2, 1652f
1652:             slli         s8, a0, 28
                  blt          t6, s5, 1667f
                  bltu         s7, s1, 1671f
                  auipc        t0, 7210
1656:             add          s3, a5, ra
                  beq          s6, s6, 1659f
                  srli         s11, a6, 22
1659:             add          t3, s2, zero
                  slti         s3, ra, 998
                  addi         ra, t1, 1818
                  or           t4, t5, s9
                  bne          s8, t4, 1680f
                  bgeu         a0, a6, 1666f
                  srli         a1, s11, 18
1666:             and          s6, t3, gp
1667:             sltiu        a4, a6, 935
                  sltiu        t1, s3, 131
                  lui          sp, 531952
                  xor          s2, a2, a4
1671:             sra          s0, a5, s8
                  slli         s5, s6, 31
                  sub          t6, a3, sp
                  sltu         s0, s1, ra
                  sub          a0, s3, a6
                  sltu         a1, t2, s5
                  sltiu        t3, a2, -1569
                  nop
                  sltiu        s5, s1, -1816
1680:             blt          s6, s11, 1687f
                  sltu         s9, s7, a3
                  srli         ra, s7, 10
                  blt          tp, a3, 1697f
                  blt          t2, t2, 1693f
                  ori          zero, s1, 1593
                  sra          a4, t1, a1
1687:             sra          t1, s0, gp
                  xor          s5, s11, t4
                  bne          a2, a2, 1707f
                  srai         t6, s9, 2
                  sub          s11, t1, a0
                  sltu         s7, t3, t1
1693:             srli         a6, s5, 17
                  sll          s6, s4, s6
                  blt          s4, t2, 1712f
                  bne          s11, a6, 1713f
1697:             and          gp, a2, s8
                  slti         s0, s4, 187
                  srli         ra, s1, 11
                  lui          s11, 14777
                  sltu         t4, s11, a5
                  bge          gp, zero, 1705f
                  ori          s3, t6, -8
                  srl          a6, t4, a0
1705:             srl          t6, zero, s0
                  add          zero, sp, s11
1707:             beq          tp, tp, 1727f
                  srai         s2, s8, 19
                  add          a1, a0, t6
                  xori         s9, zero, 1286
                  lui          a1, 907396
1712:             add          s10, s3, t2
1713:             slt          t0, s6, a4
                  addi         s4, zero, 616
                  beq          s8, a4, 1716f
1716:             sltu         s6, s2, s4
                  bltu         a7, s5, 1726f
                  slli         t3, s9, 13
                  xori         s1, s1, -12
                  slt          t0, t1, a7
                  bgeu         s4, t1, 1725f
                  srli         t0, tp, 24
                  ori          t3, s7, 1331
                  auipc        s3, 499498
1725:             bgeu         a6, s11, 1743f
1726:             nop
1727:             add          s1, a2, t6
                  bgeu         gp, tp, 1745f
                  andi         s7, a6, -1437
                  nop
                  or           gp, s11, s11
                  sltiu        t3, a3, -497
                  nop
                  slti         s3, a4, 261
                  sll          s10, zero, s2
                  addi         s8, s5, -729
                  srl          a0, s6, tp
                  nop
                  sll          ra, t5, s5
                  blt          t6, tp, 1752f
                  bgeu         a0, s3, 1744f
                  slti         a7, s2, 975
1743:             addi         t3, s8, 253
1744:             srl          s6, sp, s6
1745:             slt          ra, zero, a0
                  and          a0, s10, a7
                  xori         zero, a3, 1108
                  srl          s3, a1, t3
                  auipc        s1, 580527
                  andi         s7, s10, 1994
                  auipc        s4, 1006235
1752:             nop
                  lui          t6, 266278
                  srl          s8, a5, a7
                  bge          t5, s11, 1770f
                  ori          s3, t0, 454
                  slti         s3, s11, -868
                  sltu         sp, a3, s7
                  slti         ra, t1, 1662
                  sub          s11, a0, a4
                  xori         a0, s7, 182
                  nop
                  blt          t0, s7, 1768f
                  or           t6, a7, s7
                  sll          gp, s8, s7
                  sltiu        zero, s11, -1505
                  or           s3, s10, s3
1768:             slli         ra, s5, 14
                  blt          s9, s8, 1781f
1770:             lui          t0, 239986
                  srl          t0, s11, a7
                  bltu         ra, s1, 1783f
                  sub          s3, tp, a1
                  addi         s9, s5, -1006
                  slli         a1, s10, 5
                  blt          t4, a2, 1796f
                  bltu         s10, gp, 1780f
                  xor          t1, t0, a6
                  sltu         s2, s0, gp
1780:             nop
1781:             sra          s4, a2, t1
                  add          s4, a1, a7
1783:             addi         s4, sp, 1959
                  xori         a6, s10, -1292
                  and          tp, a0, sp
                  bgeu         s1, tp, 1799f
                  add          t6, s4, s0
                  xor          s0, gp, t2
                  bge          s5, s5, 1801f
                  andi         s4, tp, -1729
                  srl          s7, ra, a5
                  blt          a0, a0, 1798f
                  sub          s11, s8, a5
                  bgeu         t4, t6, 1805f
                  nop
1796:             nop
                  srai         s1, sp, 8
1798:             andi         s7, a0, -1707
1799:             blt          t0, t6, 1816f
                  slli         t5, t2, 5
1801:             xori         t3, t6, -361
                  sub          s6, s5, gp
                  bne          a5, s2, 1806f
                  sra          s6, a0, a5
1805:             sra          t1, s8, a5
1806:             srli         tp, a4, 6
                  and          s4, t0, a3
                  bge          s9, s0, 1820f
                  srl          tp, t2, s9
                  sltiu        a1, s6, -438
                  bltu         t3, s7, 1823f
                  slti         t6, s0, 1437
                  srl          zero, a4, s9
                  lui          a6, 746396
                  lui          a0, 48338
1816:             slli         a1, a6, 14
                  bge          s4, a6, 1824f
                  blt          s10, a4, 1838f
                  srai         t0, gp, 12
1820:             slti         s3, t2, 1767
                  add          s8, a2, t3
                  sub          t5, t1, t6
1823:             sub          s0, a0, s8
1824:             sll          t4, t6, s2
                  lui          a6, 597194
                  sra          a6, a2, a6
                  bgeu         a0, s3, 1841f
                  andi         s11, s8, -1610
                  sltu         zero, ra, a6
                  srli         t0, s8, 8
                  srai         a2, a0, 15
                  or           s7, t5, a5
                  nop
                  bltu         t0, s10, 1851f
                  and          s10, t2, t2
                  slli         s0, t0, 11
                  sra          a0, t2, a0
1838:             sltu         s3, s4, gp
                  srli         gp, t5, 31
                  ori          t3, a3, -1483
1841:             auipc        t5, 221344
                  slli         gp, a3, 30
                  nop
                  lui          s2, 171819
                  xor          a2, s4, s11
                  srl          a2, s6, a0
                  or           t5, a0, a2
                  bgeu         a3, a4, 1851f
                  lui          s8, 147663
                  bge          t0, ra, 1856f
1851:             auipc        a2, 231275
                  sub          zero, gp, ra
                  srli         s0, a5, 25
                  sra          a4, zero, t4
                  addi         a4, a0, -261
1856:             nop
                  srai         s10, s4, 7
                  srli         a1, s4, 29
                  nop
                  or           s4, a0, s0
                  addi         t3, s11, -810
                  slli         a2, t1, 2
                  addi         tp, ra, 154
                  add          a4, sp, a2
                  bge          zero, t0, 1882f
                  xor          t1, s8, t0
                  nop
                  add          zero, tp, tp
                  sll          s7, s4, s0
                  addi         a6, a2, 959
                  lui          t1, 619239
                  srli         s8, a3, 18
                  blt          ra, a6, 1882f
                  blt          a0, s4, 1878f
                  slti         sp, s1, 1979
                  nop
                  sll          a0, sp, s9
1878:             lui          s10, 540913
                  bgeu         s1, s10, 1884f
                  nop
                  sltu         t0, s1, t6
1882:             bltu         t4, s8, 1896f
                  slt          s8, s6, a3
1884:             beq          t0, ra, 1886f
                  or           s2, s8, a2
1886:             and          s1, s11, sp
                  slti         a2, t2, 952
                  and          zero, t5, s2
                  bge          s10, gp, 1906f
                  andi         a1, s0, 871
                  slti         s9, s0, -1799
                  andi         s10, t0, -938
                  slli         a2, t5, 15
                  srl          t1, a7, a0
                  beq          s3, s5, 1913f
1896:             lui          s10, 202809
                  lui          ra, 850633
                  auipc        ra, 539192
                  bgeu         a0, ra, 1900f
1900:             lui          t0, 722629
                  slti         s6, a4, -314
                  xori         s1, a5, 1375
                  xori         a1, t0, 293
                  slli         s4, s11, 30
                  add          s0, t3, t6
1906:             lui          t5, 263304
                  andi         a7, a6, -2030
                  slli         s2, s10, 30
                  auipc        t6, 365816
                  xori         t1, s8, 1999
                  and          gp, t2, s3
                  sra          tp, t4, a4
1913:             ori          t5, s2, 1379
                  add          a4, t1, s11
                  and          s10, s10, s8
                  bge          a4, tp, 1931f
                  blt          t5, s11, 1928f
                  slti         a4, s11, 2006
                  slli         a6, s11, 10
                  bne          sp, ra, 1940f
                  srli         s7, a1, 26
                  ori          a4, s3, 366
                  nop
                  sltu         t1, s2, a0
                  bltu         a4, a7, 1936f
                  bltu         gp, s0, 1938f
                  sltu         t4, a7, s3
1928:             or           s0, s11, s8
                  srli         s10, sp, 15
                  beq          ra, gp, 1943f
1931:             add          a1, s11, s6
                  and          t0, a6, a4
                  or           a7, s7, t4
                  or           s6, s0, a4
                  xori         s1, a1, -1687
1936:             srli         a0, a4, 11
                  andi         s6, s9, 1208
1938:             bge          a1, gp, 1940f
                  auipc        a7, 243986
1940:             bgeu         t6, s0, 1949f
                  srai         s6, s4, 17
                  sll          s0, s6, t3
1943:             nop
                  srli         s7, sp, 31
                  auipc        s8, 503467
                  srai         a2, a7, 13
                  auipc        a4, 955791
                  sltu         t1, a7, a3
1949:             nop
                  beq          t6, zero, 1953f
                  sltiu        a0, tp, 1320
                  sll          gp, t6, s5
1953:             bge          s7, t0, 1970f
                  bltu         s11, s7, 1972f
                  auipc        t3, 160822
                  sra          t4, s0, s7
                  auipc        t4, 224985
                  slli         gp, t6, 16
                  srai         ra, s8, 27
                  srl          s1, s8, t4
                  sltu         s10, s10, t3
                  bge          s4, t2, 1965f
                  andi         s1, t5, 1630
                  sltiu        s2, s8, -1453
1965:             add          a0, s4, gp
                  srl          t5, ra, s2
                  ori          s6, s5, -1155
                  srai         s4, ra, 24
                  sub          t1, s9, a6
1970:             bne          a6, s6, 1979f
                  sra          a2, t2, a2
1972:             srl          s0, s5, a1
                  andi         s8, sp, 845
                  add          a0, s0, s11
                  andi         t3, t6, 1280
                  xor          t6, a5, s10
                  slli         s5, t3, 20
                  or           s10, tp, s4
1979:             or           s1, a2, a3
                  bgeu         a0, a7, 1997f
                  sltu         zero, zero, s5
                  and          t5, a7, a6
                  sltu         s10, s2, a2
                  andi         t5, zero, -1802
                  beq          a7, sp, 2003f
                  beq          a4, a6, 1992f
                  beq          t1, a5, 2007f
                  addi         gp, s2, -1070
                  lui          s4, 382993
                  andi         t5, tp, -530
                  or           t1, ra, s11
1992:             sll          s8, tp, a4
                  srli         s1, t3, 0
                  sra          s8, t2, sp
                  sll          t6, a3, s11
                  slti         s9, s4, -1654
1997:             bgeu         t6, s9, 1999f
                  and          s5, s10, gp
1999:             slti         s0, a7, -1278
                  slli         s2, tp, 24
                  bge          s0, t6, 2013f
                  sltu         a4, a6, zero
2003:             and          s5, s3, t0
                  addi         s10, s2, -1248
                  sra          a0, s11, gp
                  bge          a4, t2, 2023f
2007:             addi         a7, t6, 1228
                  sra          s2, a6, a1
                  add          s6, s9, zero
                  sltu         a2, a2, tp
                  slt          a0, s11, s10
                  auipc        tp, 33797
2013:             or           s7, sp, s7
                  sub          s10, s4, a7
                  ori          t6, a3, 379
                  sub          a2, a6, s11
                  bltu         gp, t1, 2028f
                  xori         s11, t3, -1273
                  andi         s5, s10, -1206
                  bgeu         ra, t4, 2027f
                  sub          t4, gp, t4
                  xori         gp, s8, 601
2023:             sll          s6, a5, s3
                  bne          s4, t0, 2025f
2025:             bltu         a1, s10, 2028f
                  or           s2, s8, a1
2027:             slt          ra, a0, a6
2028:             slti         s6, a6, 803
                  sra          s10, s2, t5
                  nop
                  auipc        a2, 134670
                  addi         s1, a1, -204
                  srli         a7, s10, 21
                  slt          s4, s1, a2
                  sltu         s0, sp, s7
                  nop
                  add          t0, t6, zero
                  xori         s7, zero, -1553
                  add          s8, s2, a5
                  slli         s2, t3, 21
                  sra          s7, s6, t2
                  slti         s1, t0, 278
                  la           a1, region_1+1347 #start riscv_load_store_rand_instr_stream_4
                  srai         s7, a5, 4
                  lbu          zero, -16(a1)
                  nop
                  sra          s10, a7, s5
                  slli         s1, a1, 16
                  lbu          s4, 7(a1)
                  lb           s2, 12(a1)
                  lbu          tp, -11(a1)
                  lh           s3, 7(a1)
                  lh           t0, 9(a1)
                  addi         t4, a3, -135
                  lbu          s0, 16(a1)
                  add          s5, s3, s2
                  ori          a2, a4, -1074
                  auipc        s10, 401503
                  and          s1, gp, t5
                  lb           s11, 13(a1)
                  sb           s11, 1(a1)
                  lhu          a2, -5(a1)
                  lbu          a4, -13(a1)
                  sb           a1, 3(a1)
                  lb           t5, 4(a1)
                  andi         a2, a7, 899
                  lui          s0, 845188
                  slli         a0, s2, 1
                  sub          zero, s11, s6
                  add          s11, a3, s2
                  sb           t0, 16(a1)
                  srli         ra, zero, 30
                  lbu          s10, -1(a1)
                  lbu          t3, -13(a1)
                  lh           gp, 15(a1)
                  sra          s4, a4, s5
                  srai         s5, a0, 17
                  lui          ra, 817479
                  lbu          t5, -14(a1)
                  sw           a4, 5(a1)
                  lb           t3, -5(a1)
                  srl          t3, s9, a0
                  lb           t0, 0(a1)
                  sub          s0, ra, s10
                  sb           s3, 14(a1)
                  lui          s11, 518702
                  sb           s11, -8(a1)
                  or           t4, t0, s10
                  add          t6, t4, gp
                  sub          s2, s2, s6
                  srli         a4, s3, 8
                  nop
                  lh           t0, -9(a1)
                  and          a2, t5, a4
                  lb           s8, 0(a1) #end riscv_load_store_rand_instr_stream_4
                  sll          s5, s4, a0
                  srl          s1, s6, a4
                  ori          t1, a7, 440
                  sltu         gp, t4, s7
                  sra          s10, a4, s4
                  beq          zero, t2, 2053f
                  ori          s2, t5, 220
                  sub          s7, t5, sp
                  blt          a0, s3, 2062f
                  srl          t0, a5, zero
2053:             slt          s2, t4, a6
                  auipc        sp, 661535
                  bne          a3, t6, 2075f
                  bltu         s5, s7, 2058f
                  addi         s0, s4, 1377
2058:             bgeu         s8, a4, 2075f
                  xori         s9, s9, 1803
                  addi         s7, s2, 1159
                  and          a1, t1, a0
2062:             ori          a4, s0, 474
                  beq          tp, s9, 2077f
                  ori          s7, gp, -396
                  nop
                  slt          s6, t2, s6
                  beq          s6, s7, 2070f
                  xori         s8, a7, -175
                  bne          s5, t0, 2086f
2070:             bge          t2, sp, 2079f
                  sub          tp, a1, s1
                  or           ra, t1, s7
                  xor          t4, a4, a0
                  or           a1, a4, t5
2075:             auipc        s5, 867745
                  slli         s9, sp, 31
2077:             sltiu        zero, s4, 1710
                  sltu         s7, tp, zero
2079:             slt          t4, s6, gp
                  xor          s4, t4, a3
                  slli         a7, s1, 5
                  bltu         a7, a4, 2094f
                  andi         t5, a3, 1587
                  nop
                  sub          s4, a0, gp
2086:             bltu         a4, t1, 2101f
                  slt          s11, s10, s11
                  xor          a2, t4, zero
                  andi         gp, s8, -606
                  slli         t0, a6, 24
                  blt          t5, s6, 2107f
                  xor          zero, s8, s5
                  sub          tp, sp, t5
2094:             or           tp, s0, tp
                  sra          s5, t2, s11
                  bgeu         a4, s10, 2100f
                  ori          a0, a4, 382
                  bgeu         s7, a2, 2107f
                  beq          a7, s1, 2107f
2100:             bgeu         a0, s2, 2107f
2101:             beq          sp, t2, 2107f
                  and          a4, a1, t4
                  sltiu        t4, a4, -1820
                  auipc        sp, 341494
                  ori          tp, s4, 679
                  srl          ra, t2, sp
2107:             srl          tp, s10, s9
                  lw           ra, 4(t2)
                  add          a7, a1, a1
                  slt          t6, a1, a6
                  nop
                  sra          s3, ra, s5
                  addi         t2, t2, 40
                  sll          s9, a2, s8
2805:             addi x31, x1, 0
2805:             jalr x31, x31, 0
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x15, x7, zero
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x18, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x18, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x18, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x18, x28, ecall_handler
                  li x28, 0x1
                  beq x18, x28, instr_fault_handler
                  li x28, 0x5
                  beq x18, x28, load_fault_handler
                  li x28, 0x7
                  beq x18, x28, store_fault_handler
                  li x28, 0xc
                  beq x18, x28, pt_fault_handler
                  li x28, 0xd
                  beq x18, x28, pt_fault_handler
                  li x28, 0xf
                  beq x18, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x7, x15, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x15, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x15, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x7, x15, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x7, x15, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x7, x15, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
