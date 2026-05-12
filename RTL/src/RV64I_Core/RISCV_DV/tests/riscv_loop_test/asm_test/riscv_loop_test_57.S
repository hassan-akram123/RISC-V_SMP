.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 1
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0xf1957bd2
                  li x2, 0x0
                  li x3, 0x6
                  li x4, 0xfceadcb3
                  li x6, 0x80000000
                  li x7, 0xff770bd2
                  li x8, 0x4934d7c0
                  li x9, 0x80000000
                  li x10, 0x87cb7093
                  li x11, 0xb
                  li x12, 0x0
                  li x13, 0xa
                  li x14, 0xd
                  li x15, 0x80000000
                  li x16, 0xb
                  li x17, 0x0
                  li x18, 0x64e99e2a
                  li x20, 0x5c8c6dee
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x62aac6d8
                  li x24, 0xf7c88b95
                  li x25, 0x0
                  li x26, 0x99a4e40a
                  li x27, 0x48ae7eef
                  li x28, 0xf88fa94e
                  li x29, 0x9
                  li x30, 0xfb53e7e
                  li x31, 0xe
                  la x19, user_stack_end
main:             addi         a6, zero, 0 #init loop 1 counter
                  addi         t4, zero, 15 #init loop 1 limit
                  auipc        s1, 1007250
main_1_1_t:       and          sp, a3, s5
                  addi         a6, a6, 3 #update loop 1 counter
                  srli         t3, s5, 18
                  addi         s11, zero, 1 #init loop 0 counter
                  addi         s8, zero, 13 #init loop 0 limit
                  sltiu        s2, t1, -521
main_1_0_t:       and          s2, tp, zero
                  sltu         s4, s5, a5
                  addi         s11, s11, 3 #update loop 0 counter
                  bltu         s11, s8, main_1_0_t #branch for loop 0
                  sltiu        a4, t3, 1477
                  beq          a6, t4, main_1_1_t #branch for loop 1
                  add          s5, s4, s0
                  addi         a5, zero, 1 #init loop 0 counter
                  lui          gp, 448189
                  or           t1, s3, s4
                  sll          s9, s8, s2
                  addi         s0, zero, -4 #init loop 0 limit
                  sra          a1, t2, zero
main_7_0_t:       sltu         s11, a7, s3
                  sll          s10, s9, a2
                  addi         a5, a5, -3 #update loop 0 counter
                  or           s2, t5, s0
                  nop
                  nop
                  bge          a5, s0, main_7_0_t #branch for loop 0
                  add          s4, s3, t6
                  addi         a4, zero, -6 #init loop 0 counter
                  andi         tp, s10, -1003
                  auipc        t4, 493355
                  xori         a3, zero, -994
                  auipc        t4, 223216
                  slti         s9, s5, -663
                  xori         ra, t4, -1191
                  nop
                  or           s1, s10, s0
                  sltiu        t1, t4, 1731
                  slt          t5, a0, s5
                  and          s4, s5, s8
                  xori         t3, s8, -488
                  srai         t2, sp, 2
                  addi         a0, zero, 12 #init loop 0 limit
                  sub          s2, gp, s1
                  xori         t4, s3, -1342
                  sra          s2, s11, s1
main_11_0_t:      add          sp, t5, ra
                  addi         a4, a4, 1 #update loop 0 counter
                  auipc        ra, 247803
                  srli         a2, t4, 23
                  bne          a4, a0, main_11_0_t #branch for loop 0
                  srl          gp, a5, s4
                  addi         s11, zero, -8 #init loop 1 counter
                  auipc        tp, 834255
                  slti         gp, s9, -961
                  srl          a3, t3, a4
                  andi         s0, tp, -1048
                  and          s5, s1, a7
                  slt          t3, t4, a4
                  addi         a6, zero, -11 #init loop 1 limit
main_26_1_t:      sltiu        t5, t3, 186
                  sll          s4, s10, s11
                  and          s8, s9, a2
                  srli         s8, s1, 22
                  xor          a4, s0, s7
                  srl          s8, gp, t3
                  add          t1, s0, a2
                  addi         s11, s11, -8 #update loop 1 counter
                  slli         a1, t2, 0
                  slli         s4, ra, 10
                  addi         s10, zero, 9 #init loop 0 counter
                  slli         s4, zero, 14
                  addi         s1, zero, 12 #init loop 0 limit
                  xor          a5, s6, zero
main_26_0_t:      andi         s8, s0, -1242
                  nop
                  addi         s10, s10, 2 #update loop 0 counter
                  bltu         s10, s1, main_26_0_t #branch for loop 0
                  lui          a1, 107224
                  sub          a7, t0, s2
                  ori          t1, s8, -917
                  sll          t1, t2, t6
                  bge          s11, a6, main_26_1_t #branch for loop 1
                  sltiu        a5, a7, 973
                  addi         s4, zero, 3 #init loop 1 counter
                  sub          tp, ra, s3
                  sltiu        s7, s8, -921
                  auipc        a7, 606992
                  addi         t3, zero, 3 #init loop 1 limit
                  xor          s8, a4, s1
                  sll          tp, s7, a5
main_19_1_t:      auipc        s8, 430820
                  auipc        a7, 44461
                  slt          s10, s1, s5
                  addi         s4, s4, -2 #update loop 1 counter
                  addi         a5, zero, -1 #init loop 0 counter
                  srai         a0, s4, 9
                  addi         a1, zero, 11 #init loop 0 limit
                  xor          tp, s9, sp
                  srai         s1, a2, 20
                  andi         zero, t1, -536
main_19_0_t:      auipc        zero, 197643
                  addi         a5, a5, 6 #update loop 0 counter
                  sltu         a0, s4, t4
                  nop
                  beq          a5, a1, main_19_0_t #branch for loop 0
                  srl          t5, a1, gp
                  srli         gp, s8, 13
                  bgeu         s4, t3, main_19_1_t #branch for loop 1
                  sll          s11, t2, s10
                  addi         s11, zero, 7 #init loop 1 counter
                  sltu         s10, s5, s0
                  addi         t2, zero, 16 #init loop 1 limit
main_6_1_t:       ori          s10, a2, -2032
                  addi         s11, s11, 9 #update loop 1 counter
                  slli         t4, t2, 26
                  addi         t3, zero, 2 #init loop 0 counter
                  and          ra, s2, t2
                  addi         a1, zero, 6 #init loop 0 limit
                  sll          s1, s11, s8
                  or           a0, a5, tp
main_6_0_t:       nop
                  addi         t3, t3, 3 #update loop 0 counter
                  xor          t1, s6, t5
                  bltu         t3, a1, main_6_0_t #branch for loop 0
                  andi         s4, s0, -295
                  bne          s11, t2, main_6_1_t #branch for loop 1
                  xor          a2, t1, s1
                  addi         s6, zero, 6 #init loop 0 counter
                  andi         a7, t6, 1203
                  addi         s9, zero, 6 #init loop 0 limit
main_13_0_t:      lui          a3, 499496
                  addi         s6, s6, -5 #update loop 0 counter
                  andi         s8, sp, -1371
                  bgeu         s6, s9, main_13_0_t #branch for loop 0
                  addi         s11, a6, -517
                  addi         s8, zero, -7 #init loop 1 counter
                  addi         s10, zero, 16 #init loop 1 limit
main_21_1_t:      xor          a6, a0, a2
                  addi         s8, s8, 3 #update loop 1 counter
                  srai         t3, a4, 16
                  addi         sp, zero, 6 #init loop 0 counter
                  addi         t1, zero, 6 #init loop 0 limit
main_21_0_t:      sltiu        t5, gp, -1820
                  addi         sp, sp, -5 #update loop 0 counter
                  bgeu         sp, t1, main_21_0_t #branch for loop 0
                  blt          s8, s10, main_21_1_t #branch for loop 1
                  auipc        a1, 777497
                  addi         a3, zero, 2 #init loop 0 counter
                  addi         a6, zero, 11 #init loop 0 limit
                  ori          a5, s2, -1040
main_4_0_t:       slti         s8, s8, 1608
                  addi         a3, a3, 10 #update loop 0 counter
                  bltu         a3, a6, main_4_0_t #branch for loop 0
                  sll          tp, a2, zero
                  addi         s1, zero, -3 #init loop 1 counter
                  xori         s0, s11, -1432
                  slli         ra, a0, 23
                  auipc        gp, 600
                  andi         a7, a4, -19
                  nop
                  xori         t4, s1, -1146
                  addi         tp, zero, 2 #init loop 1 limit
main_3_1_t:       andi         s5, a5, -1922
                  addi         t5, zero, -1251
                  addi         s1, s1, 9 #update loop 1 counter
                  andi         t2, a0, 1287
                  addi         s9, zero, -6 #init loop 0 counter
                  addi         sp, zero, -16 #init loop 0 limit
                  srl          t2, t6, zero
main_3_0_t:       auipc        a6, 472788
                  addi         s9, s9, -10 #update loop 0 counter
                  sra          ra, t3, s9
                  bne          s9, sp, main_3_0_t #branch for loop 0
                  slti         a7, s0, 1535
                  blt          s1, tp, main_3_1_t #branch for loop 1
                  nop
                  addi         s4, zero, -6 #init loop 1 counter
                  sll          s8, t4, t3
                  xor          s10, s10, gp
                  xori         a0, s1, 907
                  and          t1, a0, s7
                  addi         s6, zero, 15 #init loop 1 limit
main_12_1_t:      slti         s11, s3, -931
                  slt          sp, t2, s8
                  addi         s4, s4, 2 #update loop 1 counter
                  sll          t5, a1, s0
                  xor          sp, a6, a6
                  slt          a7, s3, a2
                  addi         gp, zero, -2 #init loop 0 counter
                  nop
                  addi         s5, zero, 13 #init loop 0 limit
                  slti         zero, s0, 961
main_12_0_t:      and          a2, t6, a4
                  xori         t4, sp, 1785
                  xor          s1, zero, a1
                  slli         a5, gp, 13
                  srai         a1, ra, 12
                  sra          a4, s3, s3
                  addi         gp, gp, 5 #update loop 0 counter
                  sll          s7, t5, a3
                  beq          gp, s5, main_12_0_t #branch for loop 0
                  xori         a6, t2, 971
                  and          s2, s1, t5
                  slti         s7, t1, 1203
                  blt          s4, s6, main_12_1_t #branch for loop 1
                  sll          s1, t4, s1
                  addi         s10, zero, 10 #init loop 0 counter
                  sltu         a2, s1, s8
                  and          s6, s1, s3
                  addi         t2, zero, 10 #init loop 0 limit
                  add          s2, s11, s7
main_0_0_t:       andi         t3, s9, 645
                  sub          sp, s10, tp
                  addi         s10, s10, -9 #update loop 0 counter
                  bgeu         s10, t2, main_0_0_t #branch for loop 0
                  srl          s5, s4, t2
                  addi         t3, zero, 7 #init loop 0 counter
                  xori         a6, s10, 1671
                  sltu         a7, s2, s6
                  addi         a5, zero, 13 #init loop 0 limit
                  sub          s7, t3, a7
main_5_0_t:       sltu         t1, t1, t4
                  addi         t3, t3, 1 #update loop 0 counter
                  auipc        zero, 811026
                  srli         s11, t6, 4
                  srli         s0, a2, 19
                  add          s10, t2, a6
                  bltu         t3, a5, main_5_0_t #branch for loop 0
                  xor          s11, sp, s0
                  addi         t1, zero, -2 #init loop 0 counter
                  addi         s10, zero, 16 #init loop 0 limit
                  slt          sp, sp, s7
                  addi         a6, a7, 743
                  andi         a6, s11, -1059
                  addi         t4, sp, -1960
                  auipc        gp, 780375
                  andi         a3, s8, -791
                  auipc        a0, 404119
                  add          a2, s9, s7
                  slti         a3, s7, 387
main_10_0_t:      sltu         a1, a0, s10
                  addi         t1, t1, 6 #update loop 0 counter
                  sltiu        t4, s2, 2004
                  slti         s4, s7, 1649
                  nop
                  addi         a0, a6, -121
                  beq          t1, s10, main_10_0_t #branch for loop 0
                  sll          a1, s10, s8
                  addi         t4, zero, -1 #init loop 0 counter
                  sltiu        a4, t1, -643
                  sltu         s8, s8, s6
                  ori          a6, t2, 1578
                  auipc        a2, 666572
                  slt          zero, zero, s6
                  slt          s5, t1, a6
                  nop
                  addi         s4, zero, -20 #init loop 0 limit
                  sra          a5, s6, a7
                  xori         t5, zero, 758
main_18_0_t:      xor          a1, ra, t5
                  srai         a3, zero, 1
                  addi         t4, t4, -8 #update loop 0 counter
                  bge          t4, s4, main_18_0_t #branch for loop 0
                  andi         s6, s9, -313
                  addi         s1, zero, -4 #init loop 0 counter
                  auipc        s4, 206983
                  add          s9, s1, a0
                  sltu         s0, a7, s6
                  slt          a7, t3, a6
                  slt          t4, a6, ra
                  sub          s0, t2, zero
                  addi         s6, zero, 11 #init loop 0 limit
                  srl          s0, s6, t5
                  sltu         s9, s11, t5
main_25_0_t:      xori         s7, zero, -424
                  addi         s1, s1, 9 #update loop 0 counter
                  xor          a0, a6, s1
                  xor          a5, s1, s11
                  slti         s11, gp, -97
                  sub          s4, a1, a6
                  slt          s10, a7, t2
                  andi         zero, s7, -735
                  srai         t1, t2, 29
                  xori         t2, s11, -1739
                  slt          s8, t4, t0
                  xori         sp, s11, -1900
                  bltu         s1, s6, main_25_0_t #branch for loop 0
                  add          s2, t1, s6
                  addi         a7, zero, 7 #init loop 0 counter
                  sll          s10, sp, t2
                  slt          a0, a5, t6
                  srl          a4, s10, t0
                  sub          s8, tp, t4
                  addi         a1, zero, 7 #init loop 0 limit
                  xori         tp, t0, -903
                  lui          a2, 230806
                  auipc        t3, 713400
main_24_0_t:      nop
                  sra          s8, tp, ra
                  addi         a7, a7, -5 #update loop 0 counter
                  ori          s2, t3, -1500
                  srl          a0, s8, t6
                  add          s6, s7, t3
                  sub          t5, a4, a6
                  srl          s11, s0, a7
                  sltiu        a3, zero, 1559
                  srli         t3, a1, 15
                  ori          s11, s8, 1182
                  srli         a0, t4, 13
                  sra          s6, t0, a0
                  or           t2, s7, t1
                  and          a5, s3, a1
                  nop
                  srl          s2, s3, s4
                  bgeu         a7, a1, main_24_0_t #branch for loop 0
                  xori         zero, t3, 33
                  addi         t3, zero, 6 #init loop 0 counter
                  sra          a5, a0, a0
                  addi         t2, zero, 10 #init loop 0 limit
                  srli         ra, a6, 21
main_20_0_t:      andi         s11, ra, 1819
                  addi         t3, t3, 5 #update loop 0 counter
                  bltu         t3, t2, main_20_0_t #branch for loop 0
                  nop
                  addi         t3, zero, 6 #init loop 0 counter
                  ori          a4, s10, 1580
                  slt          t5, zero, gp
                  and          s8, a5, s3
                  nop
                  addi         s0, s10, 562
                  addi         s4, zero, -6 #init loop 0 limit
                  lui          s10, 238803
                  sub          a3, a3, a2
                  xor          s10, gp, s6
                  nop
                  and          s2, t3, a7
main_15_0_t:      xori         gp, a4, -205
                  and          t2, t1, t0
                  add          s7, ra, s6
                  lui          t2, 304991
                  xori         gp, s5, -691
                  xori         a3, a1, 1006
                  addi         t3, t3, -10 #update loop 0 counter
                  auipc        t2, 41032
                  and          t2, gp, sp
                  andi         a4, a1, 1887
                  andi         s1, a6, -1599
                  srli         t1, tp, 13
                  sll          a7, s2, tp
                  and          gp, t4, sp
                  slti         s1, s9, 988
                  bge          t3, s4, main_15_0_t #branch for loop 0
                  nop
                  addi         s4, zero, -8 #init loop 1 counter
                  addi         s5, zero, 3 #init loop 1 limit
                  srl          t2, s10, s6
main_22_1_t:      ori          t3, t2, -676
                  addi         s4, s4, 2 #update loop 1 counter
                  sll          a2, a6, s4
                  addi         a6, zero, 4 #init loop 0 counter
                  ori          s0, s0, -1710
                  andi         t3, s4, -225
                  addi         a7, zero, 8 #init loop 0 limit
                  srai         a3, a3, 6
                  and          a0, s11, s6
main_22_0_t:      add          s1, a3, s11
                  srai         t5, a4, 6
                  addi         a6, a6, 7 #update loop 0 counter
                  bltu         a6, a7, main_22_0_t #branch for loop 0
                  ori          s11, t3, -1784
                  srli         s6, s11, 23
                  or           s11, a7, a0
                  bltu         s4, s5, main_22_1_t #branch for loop 1
                  sltu         tp, sp, a6
                  sra          a6, a1, s9
                  bge          a7, a7, 12f
                  slt          s7, t3, ra
                  xor          s10, a5, s3
                  sra          t5, a7, gp
                  sra          s6, ra, s11
                  srl          s9, ra, s7
                  auipc        s11, 797390
                  xor          a2, ra, zero
                  add          s4, t2, s3
                  lui          t4, 432856
                  sra          a1, t3, t6
12:               sltiu        s7, a2, -140
                  xori         sp, t1, -336
                  auipc        ra, 503111
                  sll          a1, t3, s5
                  beq          tp, t4, 24f
                  slti         s9, s4, -1698
                  bne          s9, a1, 37f
                  or           a2, s7, t2
                  slli         t1, s11, 30
                  bltu         gp, a3, 32f
                  bne          t1, t1, 36f
                  srli         gp, a6, 31
24:               sll          s9, a5, s9
                  bgeu         a7, t6, 45f
                  srli         tp, zero, 26
                  bgeu         a4, s10, 34f
                  xor          a7, sp, s9
                  lui          s4, 222918
                  bltu         ra, t0, 39f
                  bgeu         t3, sp, 50f
32:               beq          a2, sp, 40f
                  and          a7, s6, s10
34:               sll          gp, a1, a0
                  sltiu        a2, a0, -1798
36:               bne          s6, a0, 52f
37:               srai         s1, s0, 26
                  slti         s0, a5, -1678
39:               blt          s1, a1, 52f
40:               srli         a2, a1, 24
                  srl          s4, s6, a0
                  and          s2, a0, s11
                  sll          a1, t3, s5
                  xori         a2, sp, -1317
45:               ori          a4, a0, 1775
                  sll          a3, a1, t6
                  addi         ra, s5, -1511
                  bltu         s6, zero, 60f
                  bne          a4, s10, 57f
50:               srli         zero, s0, 0
                  slt          t2, t0, a4
52:               lui          gp, 829971
                  xor          a1, t3, a5
                  sltiu        a2, s8, -1669
                  and          a3, s7, a7
                  xor          a7, s8, s2
57:               srli         a2, s11, 7
                  addi         s9, s3, -982
                  bge          ra, s4, 79f
60:               ori          ra, t4, 1587
                  bne          s11, s5, 72f
                  auipc        a3, 800523
                  srli         t5, t2, 21
                  beq          zero, s11, 75f
                  sltiu        t1, a1, 1908
                  nop
                  ori          s7, ra, 1339
                  slli         s2, s11, 21
                  nop
                  sll          s6, s2, a4
                  addi         s10, s7, 1601
72:               blt          t6, s8, 77f
                  sub          a2, ra, t4
                  lui          zero, 306351
75:               or           a5, t0, t5
                  sra          s8, ra, s0
77:               srl          s0, s11, s9
                  xor          s8, a0, tp
79:               srl          a4, t4, a3
                  slti         t5, a3, -1788
                  srl          t5, a2, t4
                  sll          t3, zero, tp
                  lui          s9, 636011
                  slt          a7, a1, t0
                  auipc        s11, 460851
                  sltu         a5, s9, a0
                  srai         gp, gp, 27
                  ori          s2, t3, -595
                  bne          t5, t0, 98f
                  bne          zero, s6, 97f
                  srl          s6, gp, gp
                  andi         s10, t1, -1601
                  sll          ra, a0, t1
                  bltu         s3, ra, 109f
                  nop
                  ori          gp, t4, -310
97:               lui          s1, 945124
98:               sltiu        s5, s3, -1463
                  slt          a3, a5, t1
                  sltu         t4, s10, t3
                  slli         s1, s10, 15
                  sub          a7, zero, t3
                  la           tp, sub_2
                  addi         t3, t1, 809
                  xor          a6, t4, t1
                  sra          s5, t6, zero
                  addi         tp, tp, 127
                  blt          s4, t5, main_j2 #branch to jump instr
                  slti         t2, t1, 1683
main_j2:          jalr         tp, tp, -126 #jump main -> sub_2
                  or           a0, a5, a7
                  srai         a6, s7, 29
                  bge          s9, a4, 109f
                  beq          s11, s10, 121f
                  andi         gp, t6, -222
                  slti         a6, a2, 1745
                  lui          s6, 545821
                  slt          a1, t4, s0
109:              and          t1, a6, t4
                  xor          t5, s7, a3
                  sltu         a0, sp, a3
                  or           t1, s4, a0
                  slt          t5, t4, s2
                  ori          tp, s5, 831
                  sltiu        s0, t1, -397
                  slli         s2, s4, 8
                  sll          s6, a1, t5
                  blt          gp, s0, 132f
                  lui          s8, 341385
                  andi         zero, a7, -52
121:              blt          s1, t6, 127f
                  ori          a1, gp, -1914
                  xor          s1, a6, a4
                  srli         a1, s3, 14
                  blt          a3, tp, 133f
                  ori          s11, t1, -449
127:              bgeu         t1, t0, 140f
                  xor          zero, s3, s2
                  sltu         a6, zero, a3
                  and          a1, s4, a4
                  or           s10, s3, t4
132:              srai         a4, a1, 15
133:              lui          t4, 985171
                  srai         zero, a3, 15
                  bge          tp, t4, 143f
                  nop
                  beq          a7, a1, 139f
                  srli         ra, a5, 23
139:              bgeu         t5, a3, 147f
140:              xori         a2, a5, -1587
                  lui          a0, 904356
                  auipc        s6, 222357
143:              sub          s2, t5, a0
                  add          t1, s3, t2
                  bge          s5, t4, 157f
                  bgeu         s7, a6, 160f
147:              or           gp, s3, s10
                  sub          t4, s10, t2
                  lui          a0, 196479
                  slti         s1, a7, 963
                  nop
                  slt          a0, ra, s4
                  sll          s2, s7, a6
                  add          t3, t4, s11
                  srai         a3, sp, 13
                  slli         s4, t2, 25
157:              beq          s9, s9, 165f
                  ori          t2, s9, -268
                  slli         a2, s2, 22
160:              sltu         s4, s3, a1
                  sra          s2, zero, t5
                  addi         s7, s3, 148
                  add          s0, gp, s1
                  slli         a5, a6, 19
165:              bne          s11, a5, 167f
                  or           t4, t5, t1
167:              xor          s8, s11, s9
                  blt          t4, a5, 174f
                  xor          a1, t5, s3
                  srl          t2, t6, t2
                  auipc        a0, 727947
                  blt          ra, s0, 183f
                  bgeu         a3, s9, 182f
174:              blt          a5, s8, 181f
                  add          tp, s2, s5
                  or           s1, a6, sp
                  xori         s0, t3, 506
                  or           sp, s3, s11
                  slti         a7, s6, 232
                  or           a3, t2, zero
181:              nop
182:              auipc        a3, 550085
183:              add          zero, t1, s6
                  sub          s5, a4, s5
                  nop
                  add          s5, t2, s1
                  bne          s5, ra, 195f
                  add          a2, s1, t5
                  auipc        tp, 1003449
                  sltiu        zero, s4, 1541
                  sltu         s1, s8, zero
                  blt          t5, s9, 212f
                  srli         s0, s0, 8
                  lui          s11, 689039
195:              xor          s6, a2, s1
                  sltiu        t5, ra, -163
                  bgeu         a1, a0, 205f
                  xori         s8, s8, 1010
                  sltu         t4, t1, sp
                  blt          ra, s7, 219f
                  beq          tp, s9, 212f
                  sltiu        s9, ra, 739
                  lui          a2, 477830
                  sub          a0, a2, t2
205:              andi         s10, s11, 1980
                  add          a1, t6, s8
                  xor          a2, s5, gp
                  srli         s8, s7, 8
                  bne          s4, a3, 229f
                  sltu         a5, tp, ra
                  srli         a2, a7, 8
212:              bne          s9, a5, 225f
                  sra          a1, s1, s3
                  bgeu         tp, t1, 223f
                  ori          tp, s1, 1779
                  srli         sp, zero, 26
                  srl          s9, s4, tp
                  xori         ra, s6, 7
219:              srl          tp, zero, a2
                  srli         a0, s4, 10
                  and          s6, ra, t6
                  add          s1, t0, t4
223:              sltu         s11, a1, a3
                  bge          t4, s2, 235f
225:              add          sp, t2, gp
                  sll          a5, s4, a3
                  xori         s11, s5, 713
                  add          zero, a4, s6
229:              bge          t3, t3, 246f
                  slli         s9, t5, 21
                  xori         a2, gp, -1944
                  nop
                  srli         s5, a6, 20
                  slt          s11, ra, s6
235:              bge          s3, s3, 242f
                  sltiu        a4, t6, 807
                  blt          t1, t1, 245f
                  srli         a7, a6, 16
                  slt          t1, a1, a7
                  andi         s7, t5, 150
                  srl          s0, a1, gp
242:              slt          s7, ra, s8
                  slt          t5, sp, s4
                  addi         a3, zero, 597
245:              ori          t3, t2, 1181
246:              bge          a5, s0, 261f
                  auipc        a4, 235969
                  add          t4, s10, tp
                  or           sp, s1, a7
                  ori          ra, s5, 818
                  sltiu        t1, t4, -1279
                  xor          a5, t4, s0
                  sltiu        a3, s1, -926
                  sltu         t4, t0, t4
                  xori         a2, t3, -448
                  bltu         gp, t4, 267f
                  sub          s8, sp, zero
                  sll          s7, a6, a4
                  sub          sp, a7, sp
                  srai         s8, s1, 18
261:              srli         a1, s9, 8
                  andi         ra, a5, 1432
                  sll          t3, zero, s0
                  blt          s9, a6, 280f
                  or           t3, s6, a4
                  bgeu         tp, s10, 271f
267:              or           s11, s3, t2
                  srl          t3, a6, t4
                  srl          a0, t5, a1
                  auipc        a7, 1033487
271:              srli         sp, a3, 22
                  bne          ra, a4, 278f
                  bge          t2, a1, 292f
                  slt          gp, a1, t6
                  slti         tp, t5, -1552
                  slli         t2, gp, 1
                  add          t1, a5, tp
278:              srl          s8, s1, a3
                  lui          tp, 531796
280:              sub          a0, zero, s5
                  sltu         s7, s11, s5
                  lui          a0, 936400
                  nop
                  or           a6, gp, zero
                  auipc        a7, 198636
                  bgeu         s2, s6, 294f
                  andi         a5, t2, 737
                  andi         s9, s5, 409
                  bne          t5, t0, 302f
                  ori          a1, tp, 807
                  xori         s2, s1, 165
292:              beq          ra, s6, 306f
                  ori          t3, a6, -621
294:              xori         s2, t1, -798
                  andi         s2, gp, 1756
                  sltu         sp, t6, t0
                  slti         t1, s4, 650
                  xori         t3, t4, -1809
                  sub          a5, sp, a2
                  srai         t3, s5, 31
                  srai         s1, a2, 1
302:              bge          sp, s5, 310f
                  sra          a4, t5, tp
                  or           s8, s2, s0
                  blt          s9, tp, 311f
306:              srli         s0, a7, 26
                  bltu         ra, a0, 327f
                  sub          s11, s11, t3
                  srl          t2, sp, s4
310:              nop
311:              sll          a3, s8, a6
                  slli         s5, t0, 11
                  and          a3, s1, s3
                  lui          s10, 543516
                  xori         s1, a2, 1177
                  nop
                  slt          s10, a6, gp
                  srai         t1, a5, 21
                  slli         s11, t2, 10
                  or           s10, t6, a7
                  bne          a7, a1, 327f
                  addi         a5, ra, -1767
                  add          s9, s6, a3
                  srli         s6, t4, 13
                  srli         s11, t2, 12
                  bne          t0, a4, 334f
327:              blt          t5, s9, 347f
                  srl          t1, s7, a2
                  beq          t4, a4, 340f
                  slli         ra, t0, 25
                  sra          a2, s8, t0
                  sltu         t5, a1, s7
                  sll          tp, t1, zero
334:              slt          a0, s11, zero
                  sra          s7, t3, t2
                  bltu         a3, tp, 347f
                  nop
                  andi         a5, a3, -1047
                  slti         a3, t2, 280
340:              bne          s1, s4, 342f
                  bge          s0, a0, 357f
342:              beq          a0, tp, 355f
                  bge          a5, t0, 351f
                  slti         s5, a6, 1276
                  bltu         a5, s4, 353f
                  auipc        t1, 615976
347:              sltiu        sp, ra, 250
                  ori          a1, s1, -272
                  slti         s9, sp, 1616
                  xori         ra, a5, 1024
351:              addi         a6, s2, -103
                  andi         a7, s9, 1738
353:              blt          a1, tp, 364f
                  sltiu        a2, s4, 711
355:              slli         s6, a4, 25
                  add          sp, zero, gp
357:              bge          a7, t2, 370f
                  lui          a6, 758640
                  andi         s9, s9, 1423
                  blt          a0, t2, 368f
                  andi         s6, t6, -1757
                  srli         ra, tp, 14
                  addi         tp, tp, 2039
364:              sltiu        a6, t2, 1757
                  sltiu        s11, zero, -1220
                  bltu         s1, gp, 378f
                  ori          s4, a3, -147
368:              sub          a3, t2, a3
                  ori          t3, t5, 712
370:              srli         a0, t0, 3
                  andi         ra, ra, -964
                  sra          s2, gp, s11
                  slli         a0, s1, 27
                  srli         s2, s9, 24
                  bgeu         t2, s4, 389f
                  lui          s5, 861738
                  sub          t4, ra, t3
378:              bltu         a2, s11, 386f
                  srl          s7, a4, sp
                  and          a5, s4, t2
                  srai         gp, s4, 25
                  srli         gp, s3, 29
                  sll          s5, t3, t3
                  slli         s11, s10, 9
                  and          t3, a7, a2
386:              slt          s6, s3, t5
                  add          s4, t3, a2
                  slti         s11, s5, -1301
389:              andi         a7, s8, -196
                  ori          a1, a0, 181
                  xor          s1, s0, ra
                  beq          gp, s4, 399f
                  blt          a2, t6, 412f
                  bltu         t4, a4, 402f
                  bltu         t6, a3, 410f
                  blt          s1, t2, 403f
                  and          s8, s6, a4
                  and          t2, a6, a1
399:              and          s2, s11, sp
                  and          s0, a2, s11
                  slti         a5, gp, 1186
402:              sra          s2, t4, t1
403:              or           t3, t5, s10
                  ori          s2, ra, 1035
                  andi         s2, t2, 1617
                  srl          a2, a5, s9
                  bne          t3, t3, 424f
                  sll          t3, t6, a6
                  sltu         s7, t1, tp
410:              or           t2, gp, s10
                  lui          gp, 509559
412:              sll          t3, s0, a2
                  xor          gp, a5, t3
                  xor          sp, s3, a2
                  bltu         t6, t0, 434f
                  ori          s4, a2, -1481
                  auipc        s6, 701078
                  xor          a0, a1, t6
                  bge          t0, ra, 428f
                  andi         a7, t6, -1794
                  addi         sp, gp, -1297
                  sra          a3, a5, a0
                  add          a1, a4, a2
424:              bge          s10, ra, 435f
                  or           s10, s1, s10
                  sra          a1, a5, s0
                  sub          gp, gp, t0
428:              bltu         s1, t2, 433f
                  srl          t4, a1, sp
                  bgeu         a7, a2, 444f
                  add          a7, a4, s0
                  beq          s9, a7, 441f
433:              xor          s6, a5, t5
434:              addi         s2, a0, -1580
435:              nop
                  bltu         s8, t5, 444f
                  xori         zero, s7, -342
                  srai         s0, a0, 23
                  sltu         t2, zero, s7
                  bgeu         s3, gp, 451f
441:              bgeu         s5, s10, 460f
                  sub          t1, a1, t6
                  slli         t1, t3, 2
444:              sll          t2, s11, a1
                  sll          t2, s9, a5
                  bge          s4, a5, 453f
                  bgeu         t2, t3, 467f
                  bge          ra, a1, 463f
                  andi         s1, s2, 407
                  blt          t3, a6, 457f
451:              add          tp, a1, a5
                  srli         sp, gp, 28
453:              bge          s0, s5, 467f
                  srl          s4, s1, s1
                  auipc        s9, 892271
                  ori          s8, zero, 260
457:              sra          s6, s10, a0
                  sltiu        s7, s8, -1030
                  bgeu         a3, s0, 467f
460:              blt          sp, s10, 468f
                  sll          a0, sp, s10
                  nop
463:              slt          a3, s2, s2
                  bne          t1, t1, 476f
                  ori          a6, s9, 1080
                  srl          a6, t0, a2
467:              blt          a4, tp, 484f
468:              blt          s5, s6, 481f
                  nop
                  slli         s11, t4, 23
                  addi         s11, a1, 186
                  sub          s9, t3, s0
                  add          s5, sp, s7
                  blt          s0, s3, 482f
                  slti         s11, s0, -1155
476:              xor          s9, a5, t4
                  add          s10, s8, s5
                  xor          t5, zero, s5
                  blt          a2, t3, 488f
                  sltiu        s0, t6, 460
481:              sub          a3, a0, s0
482:              sub          sp, zero, t4
                  bne          s6, s6, 497f
484:              auipc        a3, 911812
                  slti         s1, a7, -2019
                  blt          s7, t6, 497f
                  slti         s0, s9, 1286
488:              bgeu         t5, a7, 508f
                  bge          a2, a4, 500f
                  bge          a5, sp, 498f
                  srli         a2, s3, 28
                  ori          ra, t4, -886
                  srai         s1, s9, 19
                  and          s5, s0, tp
                  xori         a6, s4, -1267
                  ori          a6, t3, 980
497:              slt          t3, a2, sp
498:              sltu         a7, s7, s9
                  slti         s1, s1, -851
500:              slli         s4, a5, 26
                  bge          a1, s0, 517f
                  bne          t3, t0, 508f
                  xori         t2, sp, 758
                  slli         t4, a0, 24
                  slt          s11, s3, s1
                  bne          tp, t3, 525f
                  andi         t3, s5, 553
508:              addi         s6, s7, -262
                  sll          s8, a0, a7
                  bltu         a2, ra, 512f
                  blt          a0, gp, 524f
512:              srai         a5, a2, 18
                  sra          a4, t6, s5
                  sll          t3, a4, a6
                  slli         a0, t5, 14
                  and          s8, t6, a5
517:              beq          t6, s2, 528f
                  lui          s7, 802531
                  bltu         a1, gp, 528f
                  sltiu        s10, t2, -579
                  bltu         tp, a3, 529f
                  sltiu        s10, a5, 1196
                  nop
524:              or           s5, s8, a1
525:              sub          tp, s3, s11
                  addi         a2, s11, 1976
                  xor          a1, t6, a4
528:              auipc        s9, 183591
529:              sub          a4, s11, s0
                  lui          a5, 562710
                  srl          zero, a1, t5
                  sra          a5, s10, zero
                  slt          s1, t3, s8
                  and          s9, a7, ra
                  bgeu         s6, a2, 540f
                  sra          a7, s4, t3
                  bne          a1, s10, 543f
                  blt          t1, s4, 540f
                  or           tp, s7, s4
540:              bne          s1, s1, 551f
                  add          a6, tp, t4
                  bge          t5, a0, 551f
543:              beq          t3, a5, 549f
                  sltu         s5, a5, a6
                  sll          s9, t2, ra
                  auipc        a7, 270930
                  sra          a2, t5, a7
                  srli         s7, sp, 27
549:              or           ra, a7, s10
                  ori          a6, a0, -1484
551:              beq          tp, s4, 571f
                  srli         ra, s5, 9
                  bltu         a4, t4, 564f
                  sll          s7, t4, zero
                  addi         s7, t5, -1972
                  srai         s0, a3, 29
                  add          tp, t5, ra
                  xori         zero, t3, 1104
                  la           s5, sub_1
                  addi         s5, s5, -325
                  xor          a2, tp, sp
                  srai         sp, s5, 5
                  blt          a7, s0, main_j3 #branch to jump instr
                  slt          ra, a7, s4
                  addi         a7, a4, -1080
                  nop
main_j3:          jalr         tp, s5, 326 #jump main -> sub_1
                  beq          s10, t3, 570f
                  srai         a2, t2, 4
                  bne          s10, s7, 571f
                  beq          a1, t0, 571f
                  xor          a6, a0, a5
                  blt          t6, a2, 578f
                  addi         a1, a4, 1424
564:              bltu         s0, t2, 579f
                  bltu         t6, s10, 584f
                  ori          a0, gp, -200
                  ori          s5, zero, -389
                  sra          s11, a0, sp
                  sll          s7, s2, a0
570:              bgeu         ra, t5, 576f
571:              nop
                  srli         tp, sp, 13
                  sltu         zero, gp, s7
                  bltu         a3, a5, 582f
                  srli         s8, s11, 0
576:              or           s0, a6, s8
                  add          t5, ra, s6
578:              auipc        zero, 791274
579:              ori          gp, a2, -653
                  slli         ra, zero, 23
                  xori         t4, s9, -1578
582:              andi         s6, gp, 131
                  slli         sp, s7, 16
584:              sll          s7, t4, s9
                  xori         zero, t5, -466
                  slli         s7, a3, 25
                  lui          s0, 567352
                  beq          t2, tp, 595f
                  addi         s9, a7, -520
                  blt          s7, s6, 597f
                  add          s7, a1, s2
                  nop
                  sltu         s11, s8, s2
                  ori          s1, s9, -1311
595:              xor          a6, gp, s1
                  nop
597:              beq          sp, tp, 605f
                  ori          s4, s1, -1989
                  srai         t1, s1, 21
                  bne          t4, sp, 608f
                  and          s5, s2, a3
                  andi         a6, sp, -1344
                  bne          t1, t2, 620f
                  slt          s4, s11, s1
605:              sub          s5, t2, s4
                  srli         a1, s0, 23
                  ori          s2, s2, 1674
608:              and          s8, a5, ra
                  srli         s5, gp, 3
                  beq          ra, a4, 618f
                  srl          a3, s0, a4
                  xor          zero, s5, s9
                  sltiu        s8, a3, -909
                  addi         a0, t5, 918
                  bne          t0, a2, 626f
                  slli         s7, a7, 20
                  xor          tp, s2, s7
618:              lui          a3, 653309
                  lui          a2, 193357
620:              srl          a3, s9, s7
                  bne          s3, a7, 634f
                  bltu         a3, a3, 636f
                  srli         a3, zero, 16
                  addi         s5, t6, -674
                  sltu         t5, a1, s3
626:              beq          zero, a1, 635f
                  xori         s0, ra, -601
                  slti         a7, sp, 1105
                  beq          s1, a3, 643f
                  srai         s10, t5, 4
                  sra          t2, gp, a4
                  slli         s2, s3, 18
                  bltu         s7, s7, 653f
634:              ori          a3, sp, 360
635:              nop
636:              slt          t1, s2, s5
                  bne          s0, a0, 642f
                  sltiu        s2, a7, 1275
                  andi         s7, a1, 1856
                  slti         a4, t1, -1062
                  sltu         t4, s10, zero
642:              bne          t5, t3, 650f
643:              sub          s4, t2, a3
                  slt          t4, s7, a6
                  xori         s9, a5, 763
                  sltu         a2, t0, s7
                  slt          t3, s0, s4
                  sub          a7, tp, s11
                  sra          a5, tp, a6
650:              sltu         a4, s4, tp
                  sra          s2, s5, a6
                  bgeu         s11, s1, 660f
653:              xor          a3, t4, s10
                  bge          t6, s2, 673f
                  bltu         t1, s8, 661f
                  lui          gp, 125230
                  xori         a0, a0, 1420
                  ori          s4, ra, 706
                  add          tp, a6, ra
660:              sltiu        tp, s6, -1630
661:              auipc        s9, 946622
                  or           s8, s9, a3
                  slti         t1, gp, -1586
                  addi         zero, sp, -887
                  blt          zero, t1, 679f
                  blt          sp, s1, 674f
                  add          t4, t6, a4
                  and          gp, tp, t0
                  srl          a2, ra, a3
                  bgeu         t1, s6, 676f
                  blt          t5, tp, 688f
                  andi         s7, a3, 1199
673:              slt          a4, t1, s7
674:              srai         t3, ra, 21
                  bne          s4, a1, 680f
676:              slli         a4, a5, 1
                  bne          a0, t0, 688f
                  sra          s2, sp, t0
                  addi         s4, zero, 8 #init loop 1 counter
                  sltiu        t1, a6, -652
                  sltiu        ra, t3, -1886
                  addi         s0, zero, -9 #init loop 1 limit
main_9_1_t:       ori          a5, s10, 1623
                  addi         s4, s4, -4 #update loop 1 counter
                  lui          s1, 553711
                  addi         a1, zero, 2 #init loop 0 counter
                  addi         tp, zero, -11 #init loop 0 limit
                  xori         t5, s1, -2012
main_9_0_t:       andi         s6, t3, 2032
                  addi         a1, a1, -8 #update loop 0 counter
                  add          s7, t5, s9
                  bge          a1, tp, main_9_0_t #branch for loop 0
                  nop
                  xori         t4, s3, -1807
                  ori          sp, s5, 1247
                  bge          s4, s0, main_9_1_t #branch for loop 1
                  slli         zero, t1, 16
679:              addi         s8, s11, -599
680:              xori         s2, s6, -1459
                  or           s6, s11, ra
                  and          t2, a5, s5
                  slti         t4, zero, -1322
                  bne          a0, s11, 691f
                  sra          a6, s7, t2
                  slli         t1, zero, 18
                  slt          t4, zero, a1
688:              andi         s9, s11, -309
                  slli         t2, sp, 14
                  ori          s1, s1, -675
691:              auipc        t1, 64022
                  nop
                  blt          a4, a0, 712f
                  sll          s5, s11, t6
                  sll          ra, t6, t1
                  srl          t5, tp, t1
                  auipc        s8, 1015482
                  xor          s1, s8, s8
                  sub          zero, s8, sp
                  bge          s1, a1, 716f
                  ori          s8, t6, -65
                  bge          s4, s9, 721f
                  bltu         a6, zero, 716f
                  sltiu        t4, s8, -1005
                  xori         t1, a0, -731
                  lui          ra, 550511
                  beq          t1, s11, 727f
                  xor          a1, t0, s0
                  bge          s2, sp, 722f
                  slti         sp, tp, -1980
                  xori         s7, s3, 1856
712:              blt          t4, a4, 721f
                  beq          a5, s5, 721f
                  sltu         s5, t5, s8
                  slli         a3, a0, 16
                  xori         gp, a0, 1369
                  add          s7, s1, sp
                  la           s8, sub_5
                  xori         a0, t0, 81
                  addi         s8, s8, -272
                  xori         s4, s8, -1618
main_j5:          jalr         tp, s8, 273 #jump main -> sub_5
                  addi         t4, s10, -630
                  auipc        s11, 546895
716:              xor          s10, a4, a6
                  bne          a6, s1, 728f
                  srli         a3, tp, 2
                  sra          s8, tp, t2
                  bge          t6, a1, 728f
721:              bne          s2, gp, 729f
722:              andi         s4, ra, 660
                  addi         t2, s9, -1749
                  auipc        s5, 356558
                  blt          s1, ra, 733f
                  sra          zero, t5, s10
727:              bne          a3, ra, 736f
728:              srai         t5, a7, 8
729:              sltu         gp, a2, t6
                  xori         gp, a5, 459
                  xori         a5, zero, -287
                  sltu         s8, t3, s6
733:              sll          s8, a6, a0
                  sltu         a4, t1, t2
                  srli         s0, s10, 19
736:              add          s5, t6, t2
                  lui          s9, 277414
                  bgeu         a7, s9, 758f
                  sll          sp, t4, s2
                  sltu         a7, a1, a1
                  auipc        a1, 403142
                  sra          t3, s7, s7
                  addi         t4, t6, 1941
                  sub          a6, a4, t6
                  lui          s0, 184790
                  bge          s6, zero, 760f
                  xor          t3, t6, s8
                  beq          s6, a0, 763f
                  sub          s5, a4, a0
                  srai         s0, t2, 30
                  sltiu        s6, t6, -974
                  addi         a3, s4, -1434
                  srai         a4, sp, 15
                  bge          s10, s11, 765f
                  srl          a4, s1, a3
                  sltu         t4, t3, a4
                  srai         ra, zero, 6
758:              sra          a3, a7, a4
                  sltiu        s11, t2, 1371
760:              blt          s2, s7, 767f
                  sra          a1, a3, a1
                  xori         a7, a7, -24
763:              srl          s6, t1, s5
                  sra          a3, t4, a3
765:              blt          s5, sp, 773f
                  bge          sp, gp, 777f
767:              add          s2, ra, s1
                  sub          a0, a2, a0
                  blt          a0, s0, 781f
                  sll          s0, t0, tp
                  nop
                  slt          s8, a1, a5
773:              bgeu         s1, zero, 775f
                  srli         s10, s11, 26
775:              sll          a3, s10, t0
                  srli         t4, s3, 10
777:              srl          s7, t3, s5
                  slt          a2, t6, a3
                  andi         s8, t2, -793
                  beq          tp, t3, 796f
781:              srli         s2, s5, 6
                  lui          gp, 1020900
                  sra          s6, a6, a4
                  bgeu         s8, zero, 803f
                  slt          s10, s8, s2
                  auipc        zero, 326413
                  bne          s8, a0, 795f
                  addi         t2, zero, 6 #init loop 1 counter
                  srai         s8, s9, 27
                  addi         a4, zero, 6 #init loop 1 limit
                  sltu         a0, s9, t6
main_17_1_t:      slt          t1, a7, t1
                  addi         t2, t2, -5 #update loop 1 counter
                  addi         ra, zero, -4 #init loop 0 counter
                  sltu         zero, s4, a5
                  addi         t5, zero, -1 #init loop 0 limit
main_17_0_t:      auipc        s6, 150172
                  addi         ra, ra, 3 #update loop 0 counter
                  sra          a7, a5, s10
                  srl          t4, t3, t4
                  beq          ra, t5, main_17_0_t #branch for loop 0
                  bgeu         t2, a4, main_17_1_t #branch for loop 1
                  slt          s1, a2, s5
                  slti         s10, a5, 765
                  srai         a7, a0, 14
                  bne          s3, s4, 805f
                  sub          t4, a4, a3
                  nop
                  srai         s6, a6, 14
                  srl          a6, s3, a2
795:              sltiu        s11, a2, -1925
796:              slt          t4, s6, s7
                  sltiu        s0, s6, 45
                  sll          s0, gp, a6
                  nop
                  slti         s10, s11, -1393
                  bne          s11, a5, 809f
                  andi         s1, s2, -684
803:              sra          s5, tp, zero
                  sub          s8, sp, t4
805:              nop
                  srli         s10, s2, 14
                  andi         a5, a6, -1954
                  nop
809:              bne          s10, a2, 820f
                  xori         a2, a4, -1502
                  auipc        a6, 162088
                  blt          t0, sp, 817f
                  slt          s9, s2, a4
                  bge          s6, s6, 833f
                  sll          t3, a2, a6
                  lui          t2, 314096
817:              bge          s1, s11, 825f
                  sltiu        t3, a6, -1230
                  andi         a6, t4, -1617
820:              xor          a4, s6, a6
                  add          s9, s0, t4
                  bgeu         s7, a6, 836f
                  sub          s7, ra, s10
                  sra          t2, s3, s4
825:              sra          s8, tp, ra
                  slli         gp, s6, 31
                  sltiu        t4, s7, 633
                  add          t3, gp, s1
                  xori         a1, s7, 1452
                  srli         a1, a6, 31
                  and          ra, s8, zero
                  lui          sp, 125704
833:              andi         gp, zero, 1299
                  blt          s11, s2, 854f
                  add          a6, t5, a6
836:              sra          a3, t4, t5
                  and          s9, a6, a0
                  srl          t2, s1, s5
                  sll          tp, a4, s10
                  sltu         a2, s11, a6
                  sltiu        a7, s8, -77
                  bltu         s8, s1, 849f
                  bge          a7, gp, 845f
                  sra          tp, t1, s2
845:              srli         s1, a4, 15
                  slti         s11, t6, -872
                  xori         s5, a6, 450
                  add          t1, a5, s0
849:              sra          s11, a7, s7
                  andi         a0, a2, -852
                  bltu         zero, s6, 858f
                  sll          t2, zero, s6
                  nop
854:              sltiu        s9, a3, 1667
                  bgeu         sp, a0, 861f
                  bgeu         t4, ra, 864f
                  xor          a2, s0, t1
858:              sltu         s4, tp, s4
                  lui          a7, 1038645
                  slt          zero, a5, t1
861:              andi         zero, tp, 196
                  srl          a1, t2, t0
                  xori         tp, t1, 310
864:              addi         t1, s1, -654
                  bltu         ra, t6, 877f
                  andi         zero, s7, 2011
                  lui          ra, 685714
                  sll          t3, t4, a7
                  srl          t5, a7, s6
                  sltiu        s11, sp, 759
                  andi         s8, tp, -697
                  slli         t4, t0, 11
                  ori          zero, s2, 1265
                  blt          a0, zero, 887f
                  bltu         s9, ra, 888f
                  nop
877:              sra          sp, t1, a0
                  blt          s10, ra, 889f
                  lui          s8, 91044
                  or           tp, s9, s4
                  lui          a2, 892524
                  lui          s1, 404726
                  sltu         s5, s11, s7
                  add          s2, a7, s1
                  bltu         t1, s9, 896f
                  blt          s7, a4, 894f
887:              auipc        sp, 792815
888:              bgeu         a4, s7, 899f
889:              sll          a2, tp, t6
                  auipc        a0, 790439
                  bge          t1, tp, 911f
                  slli         s1, ra, 12
                  sub          a7, s0, a5
894:              sub          s1, t2, a2
                  and          zero, a3, a1
896:              sll          a3, t5, s7
                  sub          t4, a5, t0
                  and          a0, t3, t0
899:              ori          sp, zero, -1272
                  lui          a3, 188253
                  or           s1, t0, a3
                  sub          s5, gp, a3
                  sltu         tp, s10, s0
                  beq          a0, a1, 913f
                  sub          s1, s8, zero
                  slt          s1, s4, s5
                  sra          a4, a5, ra
                  ori          a2, a2, 1042
                  bltu         s11, s10, 923f
                  andi         a4, s6, -329
911:              bltu         s6, s2, 928f
                  beq          t4, t1, 918f
913:              bltu         s10, s5, 921f
                  and          a2, a3, t0
                  sra          a1, s2, t0
                  or           t2, a4, s3
                  slli         t2, s5, 5
918:              lui          tp, 183357
                  slti         a2, s5, -835
                  bge          s2, s1, 929f
921:              xor          s4, t6, s10
                  srl          a2, s5, a3
923:              bgeu         a7, a7, 943f
                  srl          s6, s2, t5
                  lui          zero, 684233
                  srli         a0, s2, 31
                  srai         a7, ra, 6
928:              slt          s7, t6, s11
929:              bge          t2, s1, 949f
                  sltu         tp, t4, a4
                  slli         t5, s10, 6
                  xori         t5, t3, -1051
                  and          s4, s2, a2
                  srl          gp, t5, a6
                  sub          a6, s6, a5
                  add          s5, s7, s10
                  sltu         t1, s7, tp
                  srai         a7, s7, 3
                  srai         ra, t0, 4
                  sltiu        t3, ra, 412
                  xori         t5, a4, -1034
                  and          a1, s1, zero
943:              beq          sp, s9, 948f
                  sub          t3, t3, s4
                  xor          a4, s4, s9
                  blt          s9, s3, 955f
                  nop
948:              andi         sp, a5, -124
949:              bgeu         s1, s8, 956f
                  add          a4, t2, a2
                  auipc        a4, 973981
                  slli         a3, a2, 31
                  blt          s7, a3, 970f
                  xori         a6, s11, 296
955:              auipc        s0, 89585
956:              lui          s2, 727898
                  beq          t2, zero, 970f
                  bltu         sp, t2, 966f
                  blt          a5, s3, 970f
                  sra          a0, a2, s8
                  sltu         t2, t3, zero
                  lui          zero, 227751
                  or           a6, s5, a5
                  slti         s10, s0, 1512
                  ori          sp, a5, -1142
966:              sub          s2, tp, a2
                  slti         tp, tp, -664
                  sltiu        a0, a6, -1351
                  sltiu        s2, s4, -1787
970:              sll          a4, s9, t1
                  bne          a0, gp, 986f
                  slt          s11, s1, t1
                  slli         a7, t3, 13
                  slli         ra, t3, 26
                  blt          a7, s5, 988f
                  auipc        tp, 531700
                  sll          a5, t5, a0
                  blt          s2, a7, 992f
                  slli         s10, t2, 0
                  sltiu        s5, t1, -63
                  beq          s1, a0, 988f
                  sll          gp, a3, s4
                  andi         t2, s2, 171
                  sra          s9, ra, s0
                  blt          t1, s10, 991f
986:              beq          s4, t3, 998f
                  sra          s1, a4, ra
988:              sltu         ra, s9, t0
                  add          a0, tp, s9
                  auipc        s2, 827169
991:              blt          s2, s6, 999f
992:              add          t3, a1, ra
                  addi         s0, s7, 552
                  slli         zero, s11, 24
                  bne          t5, a6, 1006f
                  ori          s9, a3, 951
                  sltiu        s2, s7, 55
998:              xori         s10, a2, 1276
999:              and          t1, s3, s7
                  lui          s5, 1016008
                  srli         t3, s7, 21
                  slti         a1, s8, -1475
                  sltu         a1, t4, a1
                  slt          t3, s5, s5
                  sll          t4, s3, a3
1006:             sltu         s10, s11, a4
                  add          a5, a2, t1
                  sll          a5, a2, s9
                  nop
                  nop
                  bltu         a6, t5, 1013f
                  blt          a2, tp, 1028f
1013:             sra          a3, sp, a7
                  xori         t1, gp, 1140
                  auipc        s2, 1042119
                  sub          s6, s2, gp
                  bne          s2, ra, 1036f
                  auipc        t5, 113033
                  xor          s9, s5, s0
                  srai         s6, a5, 9
                  sll          s9, s9, s10
                  beq          s6, ra, 1033f
                  lui          t1, 79050
                  sltiu        a4, t2, -361
                  addi         a0, s7, -664
                  or           zero, gp, s4
                  xor          s2, t1, s1
1028:             beq          tp, ra, 1034f
                  xori         a1, t3, -919
                  bgeu         s3, s0, 1038f
                  lui          a6, 456774
                  srli         gp, a7, 2
1033:             srli         s1, a3, 22
1034:             lui          t5, 147619
                  srl          s11, s6, ra
1036:             or           a5, s5, a6
                  beq          zero, s10, 1045f
1038:             bne          a6, s6, 1046f
                  and          s5, s0, s6
                  blt          s5, a4, 1059f
                  nop
                  blt          t6, a1, 1056f
                  bne          s4, a7, 1052f
                  srai         s11, s1, 9
1045:             blt          t3, a2, 1053f
1046:             add          zero, a6, a1
                  ori          ra, t0, -236
                  srai         tp, t2, 18
                  slli         a5, a2, 10
                  ori          a4, sp, 699
                  srl          s2, s7, s10
1052:             bge          s8, a0, 1063f
1053:             sra          a4, s10, a2
                  beq          s9, s7, 1060f
                  xori         a0, s7, 2030
1056:             sub          a5, s11, s11
                  nop
                  srl          s0, ra, a6
1059:             xor          t5, t0, gp
1060:             blt          s7, t6, 1080f
                  blt          sp, ra, 1068f
                  slti         t2, s8, -93
1063:             blt          t3, a7, 1071f
                  ori          s7, s11, 427
                  addi         a3, zero, 10 #init loop 0 counter
                  slli         a0, s0, 30
                  sra          s5, s3, a6
                  andi         t3, gp, -1279
                  sub          tp, a2, t6
                  sltiu        zero, a3, -607
                  srli         a7, sp, 23
                  addi         a4, t2, 935
                  sra          a0, ra, a4
                  addi         a1, zero, -14 #init loop 0 limit
                  sll          tp, a4, a5
                  srai         t4, s5, 15
main_16_0_t:      ori          sp, s3, -26
                  srli         gp, s7, 9
                  addi         a3, a3, -1 #update loop 0 counter
                  and          a5, a7, t3
                  nop
                  sra          t1, s6, t0
                  bge          a3, a1, main_16_0_t #branch for loop 0
                  slt          a7, a0, s8
                  bgeu         s1, sp, 1080f
                  add          a5, t6, gp
                  sra          a7, sp, t5
1068:             sra          s2, a6, ra
                  slti         s8, t6, -294
                  addi         a2, s8, 1937
1071:             andi         t2, s11, 1956
                  xori         a2, t4, -461
                  and          s1, a4, s11
                  blt          s3, s0, 1085f
                  or           a6, s3, s4
                  xori         s1, t1, 395
                  bge          s10, s10, 1079f
                  slli         s1, t5, 27
1079:             srli         s10, s8, 28
1080:             bgeu         t1, zero, 1097f
                  sub          s5, gp, s4
                  bne          tp, s11, 1101f
                  beq          s10, s5, 1096f
                  slt          s4, a3, a2
1085:             slti         ra, s5, 1603
                  auipc        t2, 1044793
                  slt          t2, t4, s11
                  sub          s10, a5, t5
                  andi         zero, s6, -1852
                  beq          s6, a4, 1104f
                  sltu         s1, t0, a5
                  sub          a2, t3, a2
                  add          s6, s5, s8
                  xori         s7, t4, 1393
                  beq          zero, s3, 1111f
1096:             xori         t3, s7, 1036
1097:             bgeu         s0, a6, 1103f
                  addi         s8, zero, -6 #init loop 0 counter
                  xori         a1, s1, -952
                  xori         t1, s6, 979
                  sltiu        a3, a7, 666
                  addi         t4, zero, -8 #init loop 0 limit
                  sub          a6, t3, s8
main_14_0_t:      xor          a3, s1, sp
                  slli         zero, s9, 30
                  srl          ra, t1, ra
                  lui          t5, 6129
                  addi         s8, s8, -2 #update loop 0 counter
                  sra          a4, s8, s5
                  andi         t1, s7, 85
                  auipc        s2, 50375
                  bne          s8, t4, main_14_0_t #branch for loop 0
                  ori          s1, a6, 529
                  slli         a0, sp, 19
                  bgeu         s10, ra, 1118f
                  addi         tp, s0, -1632
1101:             bne          s7, s1, 1112f
                  slti         sp, s4, 1754
                  addi         t1, zero, 6 #init loop 0 counter
                  ori          s5, t1, 1235
                  addi         a0, a0, 1401
                  sll          tp, s1, a6
                  and          s11, s4, s4
                  sll          s1, a4, s1
                  addi         s9, zero, 6 #init loop 0 limit
                  lui          t4, 63408
main_23_0_t:      slt          a3, s1, a7
                  auipc        a7, 669337
                  add          a6, a4, sp
                  nop
                  addi         t1, t1, -5 #update loop 0 counter
                  xori         t5, s2, 2018
                  slti         a4, tp, 734
                  add          ra, t3, t2
                  or           a1, t0, a0
                  slt          a6, a2, sp
                  bgeu         t1, s9, main_23_0_t #branch for loop 0
                  lui          s10, 908829
1103:             bge          t4, s2, 1111f
1104:             srli         zero, s4, 3
                  beq          s11, t6, 1125f
                  lui          t5, 983511
                  slt          s2, ra, a0
                  slti         ra, t4, -2029
                  auipc        a3, 869610
                  bgeu         s1, s1, 1119f
1111:             sub          s9, s5, t4
1112:             beq          t0, a3, 1125f
                  slli         a2, zero, 26
                  lui          tp, 687231
                  sra          a1, s2, a2
                  srl          t1, s5, s6
                  slli         s4, s6, 1
1118:             sll          a4, tp, a2
1119:             bge          ra, a4, 1127f
                  addi         t5, zero, 4 #init loop 1 counter
                  addi         a5, zero, 7 #init loop 1 limit
main_8_1_t:       addi         a4, t5, 1385
                  lui          a4, 799158
                  addi         t5, t5, 3 #update loop 1 counter
                  addi         s10, zero, 0 #init loop 0 counter
                  addi         a6, zero, 20 #init loop 0 limit
main_8_0_t:       slti         gp, t6, -1610
                  lui          a7, 496320
                  addi         s10, s10, 10 #update loop 0 counter
                  bltu         s10, a6, main_8_0_t #branch for loop 0
                  add          t3, ra, s6
                  srl          a0, a6, tp
                  blt          t5, a5, main_8_1_t #branch for loop 1
                  srl          gp, t6, s10
                  lui          s6, 674294
                  ori          t5, tp, -589
                  and          s6, a2, s10
                  slt          s7, s10, s5
                  xor          a1, t0, sp
1125:             nop
                  bltu         s4, a7, 1131f
1127:             bgeu         gp, t1, 1135f
                  auipc        sp, 605462
                  or           tp, a1, zero
                  sltiu        ra, t4, -1670
1131:             srl          s9, s2, zero
                  or           a4, s3, s4
                  sltu         a3, t4, sp
                  sub          a6, ra, a2
1135:             ori          a6, a3, 1364
                  and          s1, t3, ra
                  add          a6, a4, s6
                  auipc        sp, 248222
                  srai         t4, sp, 0
                  slt          t4, s7, s10
                  addi         a1, s9, -777
                  srl          s8, t6, sp
                  slli         t5, a1, 31
                  la           s5, sub_3
                  addi         s5, s5, 57
                  nop
                  blt          t0, a3, main_j1 #branch to jump instr
                  xori         t1, t3, 713
                  ori          t2, a2, -1237
                  sll          gp, s5, s7
                  srli         a5, s0, 6
                  ori          s6, a6, -1764
                  nop
main_j1:          jalr         tp, s5, -57 #jump main -> sub_3
                  sra          s9, ra, t3
                  lui          a1, 929946
                  la           s5, sub_4
                  sltu         a6, t3, s11
                  sltu         s9, a6, s9
                  sll          a4, a5, t1
                  addi         s5, s5, -258
                  sub          t3, s1, s6
main_j4:          jalr         tp, s5, 259 #jump main -> sub_4
                  srai         s4, a7, 8
                  or           sp, t4, s0
                  srli         zero, s1, 0
                  blt          s9, ra, 1155f
                  srl          s2, t5, a3
                  slti         a7, s7, -1848
                  xori         s7, t6, 397
                  xor          a5, a5, s4
                  xor          a4, t3, t5
                  srli         s4, gp, 4
1155:             srl          s4, t3, a1
                  andi         tp, a5, 1734
                  ori          a1, a5, -1755
                  srl          s9, a4, s2
                  andi         s2, s5, 1610
                  lui          s1, 482908
                  sltiu        s11, s9, 904
                  slt          s1, gp, s2
                  sub          t4, s5, gp
                  blt          a3, gp, 1176f
                  andi         s6, a5, -35
                  or           a1, a6, a4
                  bne          s5, s5, 1178f
                  xor          s5, t5, t2
                  bgeu         s1, s5, 1180f
                  slli         sp, a6, 19
                  blt          a0, a5, 1180f
                  xor          s2, s11, sp
                  sra          s2, s6, s3
                  bge          a3, t0, 1182f
                  sltiu        s0, s8, 1316
1176:             ori          a1, gp, -767
                  sll          t5, a0, s5
1178:             blt          s2, a0, 1192f
                  slt          t1, ra, s1
1180:             srl          s7, s0, a2
                  srl          s1, a6, a0
1182:             sltiu        a2, ra, 1955
                  sub          gp, s6, s4
                  addi         s9, zero, -1 #init loop 1 counter
                  slti         a5, a7, 869
                  nop
                  addi         a4, zero, -15 #init loop 1 limit
                  sll          a3, s7, a2
                  xori         s7, t3, 41
main_2_1_t:       lui          t3, 581189
                  addi         s9, s9, -2 #update loop 1 counter
                  addi         a6, zero, 4 #init loop 0 counter
                  srai         a7, s1, 20
                  srai         s7, t2, 23
                  slti         t5, s7, -1879
                  addi         s6, zero, 3 #init loop 0 limit
main_2_0_t:       or           s0, s7, s2
                  slli         s0, t2, 11
                  slti         a3, t3, 1319
                  sltu         s7, a5, s0
                  sub          gp, sp, s9
                  addi         a6, a6, -1 #update loop 0 counter
                  ori          s11, s11, -1836
                  bgeu         a6, s6, main_2_0_t #branch for loop 0
                  nop
                  srl          t1, t0, a5
                  sltiu        ra, a2, -1717
                  srai         tp, t1, 22
                  beq          s9, a4, main_2_1_t #branch for loop 1
                  nop
                  lui          zero, 65079
                  slli         s6, a7, 17
                  sub          t3, s9, t2
                  blt          a5, a5, 1195f
                  sltiu        t1, a0, 400
                  lui          tp, 739781
                  slt          s11, s9, a0
                  add          s11, s4, zero
1192:             sra          s11, a7, tp
                  slt          a4, s1, gp
                  addi         a7, s3, 1764
1195:             bltu         t2, sp, 1206f
                  sra          t5, s10, a6
                  sltu         t5, a6, t3
                  srai         sp, a0, 0
                  bltu         a2, t3, 1219f
                  sltiu        ra, t5, -50
                  beq          a5, t2, 1203f
                  sub          a1, t0, a2
1203:             bne          s9, s5, 1209f
                  xori         s7, t6, -1733
                  srai         a6, t4, 1
1206:             andi         s4, t0, -134
                  nop
                  add          s6, a3, t0
1209:             slti         a4, s10, 1452
                  slli         a3, a5, 25
                  bne          a7, a5, 1223f
                  nop
                  bne          s4, s5, 1226f
                  srli         s0, gp, 1
                  xori         a5, s2, 1150
                  slt          t4, a3, s4
                  ori          a0, tp, 1704
                  srai         a7, gp, 20
1219:             srl          sp, a5, zero
                  beq          a5, a0, 1239f
                  nop
                  add          tp, a4, s7
1223:             bne          s8, s5, 1234f
                  beq          s9, a7, 1233f
                  bge          t6, gp, 1245f
1226:             xori         s7, a1, 1434
                  ori          t2, a7, 1123
                  or           t3, a3, zero
                  blt          gp, s6, 1248f
                  bge          s5, sp, 1245f
                  slti         tp, t2, -266
                  slli         t2, ra, 22
1233:             and          s9, t6, a7
1234:             bge          t1, a6, 1248f
                  bne          s0, ra, 1244f
                  beq          t0, s3, 1244f
                  add          a7, a3, a5
                  nop
1239:             lui          s8, 451512
                  and          a0, s1, a6
                  add          a2, s2, a1
                  slt          s8, s4, ra
                  sub          a7, s4, s4
1244:             nop
1245:             bgeu         t1, t0, 1253f
                  srli         s0, s10, 28
                  nop
1248:             sltiu        zero, a6, 838
                  bgeu         a1, sp, 1260f
                  or           ra, s2, sp
                  andi         s6, t3, -1006
                  lui          a3, 122775
1253:             bne          a2, a0, 1259f
                  blt          s10, t1, 1259f
                  sll          t2, t1, s9
                  xor          s10, t3, s2
                  addi         zero, t2, 562
                  auipc        s1, 1010553
1259:             andi         ra, a7, -17
1260:             srli         s11, a7, 21
                  slli         sp, s5, 8
                  ori          a0, gp, -1884
                  bge          s11, t6, 1270f
                  slli         t5, a3, 24
                  slti         zero, a4, -1687
                  sll          s10, ra, s7
                  sltu         a7, t5, t5
                  bltu         s11, s6, 1275f
                  addi         tp, gp, -1869
1270:             slt          t1, s2, t1
                  sub          gp, a3, a7
                  sltu         s4, s10, s2
                  or           s9, t4, t0
                  sltu         a5, t6, s4
1275:             bne          a3, t0, 1288f
                  beq          s8, a4, 1284f
                  bne          s0, a1, 1288f
                  addi         s8, s11, 1905
                  slti         sp, a7, -992
                  bgeu         s9, s6, 1294f
                  bgeu         a3, a5, 1289f
                  nop
                  slti         a2, s10, -997
1284:             slli         s4, s6, 24
                  or           s8, s2, s5
                  lui          a5, 760152
                  auipc        sp, 93662
1288:             sltiu        t5, a1, 1290
1289:             sll          zero, s0, tp
                  slti         s9, a4, -1267
                  lui          tp, 12211
                  lui          t3, 964471
                  sub          a0, s0, t4
1294:             bge          a6, a7, 1310f
                  sltu         a7, s9, s0
                  sltu         t5, s5, zero
                  sltu         s10, s1, sp
                  ori          t4, s9, 1045
                  sra          t2, s2, a1
                  bne          t3, t6, 1308f
                  sll          a7, tp, s8
                  srai         ra, s11, 23
                  slli         s11, s7, 6
                  xor          t3, a6, s4
                  bne          a7, a7, 1313f
                  bltu         a4, t4, 1323f
                  sra          s1, t4, s3
1308:             bne          t0, t3, 1316f
                  add          a7, s10, s4
1310:             slt          a5, s5, s7
                  addi         s2, s10, 1769
                  or           a4, s3, s6
1313:             ori          zero, s4, 326
                  blt          a1, s8, 1334f
                  sltu         a2, a4, a1
1316:             bltu         gp, s3, 1330f
                  lui          tp, 175015
                  bne          tp, s7, 1334f
                  add          t1, a6, a0
                  bge          s5, s6, 1325f
                  xor          t5, tp, s1
                  sub          a5, t5, s3
1323:             sltiu        t3, a5, -822
                  sra          tp, s0, s9
1325:             addi         t3, gp, -1428
                  srl          s1, t1, s7
                  bne          t1, t5, 1341f
                  bge          a2, s10, 1336f
                  or           s4, a5, a0
1330:             xori         a7, s7, -267
                  slt          s2, s11, s1
                  slt          s11, s6, t6
                  bge          s4, s4, 1350f
1334:             beq          tp, t5, 1353f
                  srli         s1, s10, 16
1336:             sll          a2, gp, a3
                  slt          tp, s6, t0
                  and          a6, a6, s1
                  srai         s9, a3, 5
                  slli         t2, s0, 8
1341:             xori         t4, t6, -862
                  bne          sp, s7, 1353f
                  srai         s0, a1, 25
                  sll          tp, a6, t2
                  srl          a0, zero, s0
                  srai         t4, s3, 27
                  sub          s0, s5, s9
                  blt          t1, a6, 1350f
                  addi         tp, s9, -1665
1350:             auipc        s4, 506573
                  bltu         a1, s0, 1353f
                  sll          tp, s5, a7
1353:             sll          gp, a3, gp
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         s3, s3, -48
                  sub          a1, s0, t4
                  sra          a7, ra, s7
                  sw           tp, 4(s3)
                  auipc        a7, 431991
                  nop
                  srai         s2, t4, 27
                  addi         a4, zero, 1 #init loop 1 counter
                  addi         t4, zero, 15 #init loop 1 limit
sub_4_0_1_t:      or           s2, sp, t6
                  sub          zero, s0, s11
                  addi         a4, a4, 7 #update loop 1 counter
                  addi         a2, zero, -8 #init loop 0 counter
                  addi         a3, zero, -6 #init loop 0 limit
                  sub          tp, s9, s6
sub_4_0_0_t:      and          s4, a4, s8
                  addi         a2, a2, 7 #update loop 0 counter
                  srl          s5, s7, sp
                  blt          a2, a3, sub_4_0_0_t #branch for loop 0
                  blt          a4, t4, sub_4_0_1_t #branch for loop 1
                  add          ra, s6, s7
                  bltu         s8, t5, 20f
                  sll          a2, t0, a5
                  xor          a0, s2, t2
                  or           s8, a5, s5
                  sltu         zero, s6, s2
                  add          s0, t5, a3
                  sub          s10, t0, a3
                  sltiu        t4, tp, 1482
                  bgeu         t0, t1, 19f
                  slli         a0, tp, 23
                  add          s7, t3, t2
                  add          s10, s9, t5
                  bne          s2, a5, 32f
                  srl          a5, s7, a7
                  sll          t1, ra, s8
                  beq          a3, a0, 23f
                  bltu         t4, gp, 33f
                  sll          a6, t0, s9
                  lui          a2, 322664
19:               slli         s9, t2, 21
20:               slti         a1, s5, 1865
                  and          s1, s9, s0
                  and          t1, s4, t2
23:               slli         s5, a1, 26
                  srli         a1, a6, 9
                  bge          t6, s4, 39f
                  nop
                  slt          s9, t1, t0
                  and          t2, t6, sp
                  slt          a7, a2, s4
                  nop
                  slli         sp, t2, 9
32:               sra          s5, s5, a5
33:               sltiu        t2, s5, 1849
                  sra          a2, t3, t6
                  slt          t5, s1, t5
                  xor          gp, gp, s5
                  add          a6, s4, a6
                  bge          a1, s9, 46f
39:               bge          a1, s10, 46f
                  or           a4, t1, ra
                  beq          s11, t2, 46f
                  bltu         t6, t3, 45f
                  bne          s10, s1, 49f
                  slli         a0, s8, 2
45:               nop
46:               sll          a7, tp, a7
                  lui          s5, 381051
                  sll          a7, s2, a0
49:               sra          s6, s7, t2
                  sub          sp, s9, tp
                  andi         a5, s7, -1530
                  srli         s1, s3, 22
                  lui          a0, 124426
                  or           s8, a0, t3
                  or           a5, s9, s0
                  ori          zero, s10, 1024
                  auipc        s9, 811792
                  ori          s2, a6, 1612
                  add          a1, t4, s3
                  srai         s6, t0, 9
                  srl          gp, s6, t1
                  sltiu        t4, s4, 937
                  bne          s11, sp, 74f
                  slli         t3, a1, 24
                  sll          s7, t5, s5
                  bltu         a1, t6, 72f
                  bne          s0, s11, 71f
                  addi         t4, ra, -1938
                  nop
                  auipc        s1, 720353
71:               xor          s4, s11, a6
72:               ori          s7, s3, 1820
                  andi         t5, a0, 1193
74:               andi         t5, s2, -292
                  auipc        s11, 186162
                  bge          t0, s7, 89f
                  srai         s0, s4, 7
                  nop
                  andi         t2, ra, -1003
                  lui          s7, 187619
                  srai         a1, s4, 4
                  blt          a4, t3, 89f
                  addi         tp, gp, 2012
                  bgeu         a5, s9, 89f
                  bgeu         t5, t1, 89f
                  nop
                  slti         a5, t5, -1448
                  lui          a4, 52572
89:               xor          zero, s2, a4
                  ori          zero, gp, -385
                  ori          s7, s6, -1092
                  nop
                  lw           tp, 4(s3)
                  addi         s3, s3, 48
                  and          a7, a2, a2
117:              addi x13, x4, 1
117:              jalr x13, x13, 0
sub_3:            sltiu        s6, s7, 1825
                  addi         s3, s3, -12
                  srai         t1, s6, 16
                  sltu         s8, a7, t3
                  sw           tp, 4(s3)
                  andi         a6, s0, -1812
                  and          t1, s0, t4
                  slli         s1, s10, 13
                  nop
                  and          s9, s9, gp
                  ori          ra, a1, -904
                  addi         a2, s4, -394
                  addi         t3, zero, 5 #init loop 1 counter
                  ori          a2, a0, -329
                  addi         tp, zero, -19 #init loop 1 limit
sub_3_0_1_t:      slti         t5, s10, 1140
                  addi         t3, t3, -8 #update loop 1 counter
                  andi         ra, sp, 484
                  addi         a7, zero, -1 #init loop 0 counter
                  addi         s4, zero, 7 #init loop 0 limit
sub_3_0_0_t:      addi         zero, a4, 1035
                  addi         a7, a7, 1 #update loop 0 counter
                  beq          a7, s4, sub_3_0_0_t #branch for loop 0
                  addi         zero, a3, -203
                  andi         a5, s0, 1511
                  beq          t3, tp, sub_3_0_1_t #branch for loop 1
                  andi         s2, a5, -1642
                  slti         s11, s10, -163
                  bgeu         a4, t5, 6f
                  bne          zero, t4, 7f
                  xori         s0, zero, -635
                  sra          a7, t5, a2
                  srl          s10, a1, a2
6:                nop
7:                and          a5, a6, a5
                  bne          zero, s7, 24f
                  nop
                  addi         s4, tp, 461
                  bltu         a5, t2, 29f
                  andi         zero, s7, -619
                  srl          a4, s5, a7
                  bge          a7, sp, 28f
                  xor          gp, s2, t1
                  lui          s2, 395972
                  srai         s8, s3, 7
                  andi         t5, a1, 1917
                  bgeu         s7, gp, 27f
                  auipc        tp, 613388
                  srl          a7, t4, s3
                  ori          s6, s3, -1352
                  xori         ra, sp, 1239
24:               ori          s0, gp, 1335
                  sltiu        s7, s10, 1532
                  srli         a5, sp, 30
27:               xor          tp, ra, s8
28:               nop
29:               sltu         t4, s7, s1
                  and          s1, a3, t5
                  add          ra, a7, ra
                  slli         s4, a3, 25
                  lui          s0, 853895
                  auipc        s5, 209176
                  srai         a7, t2, 1
                  blt          sp, s11, 42f
                  bne          s2, ra, 42f
                  auipc        gp, 84129
                  or           a0, a4, s9
                  bgeu         s2, gp, 59f
                  sltu         a2, s11, a7
42:               ori          a7, a6, 973
                  andi         a3, s4, -1464
                  sltiu        s11, s0, 855
                  nop
                  sltu         t3, s2, t3
                  lui          s0, 1000068
                  and          a4, a7, s3
                  and          a4, s7, a7
                  bltu         a7, s5, 54f
                  bltu         t6, a6, 55f
                  ori          sp, t3, 1462
                  auipc        s7, 850850
54:               sll          s4, s0, a2
55:               add          t2, a2, t1
                  sltu         a4, s11, s7
                  srai         t3, s4, 19
                  sltu         s2, a0, s7
59:               or           s9, ra, s1
                  xori         s5, gp, -666
                  addi         a2, t2, -498
                  srli         s1, a7, 3
                  nop
                  srli         s11, a5, 20
                  or           s1, a1, t4
                  slt          a0, s9, s1
                  beq          tp, sp, 69f
                  slt          s5, s11, a2
69:               ori          a6, t1, 495
                  sltiu        s1, t3, -1244
                  bne          t1, s6, 77f
                  and          t5, s3, a1
                  sra          zero, ra, t1
                  xor          a2, s2, s3
                  blt          s3, s5, 86f
                  slti         s0, s3, -1372
77:               beq          s11, sp, 92f
                  slt          t1, s1, t2
                  sra          a3, sp, s6
                  srli         a7, s6, 0
                  slt          s10, t0, t2
                  andi         gp, s4, -76
                  srai         a2, s1, 19
                  addi         s10, t5, -365
                  bne          s11, s7, 92f
86:               and          t1, a3, s7
                  sltiu        s5, t0, 1301
                  lui          a5, 811304
                  slti         s11, sp, 865
                  xor          t2, s0, t6
                  ori          s5, t5, -1562
92:               sll          a5, gp, a7
                  lw           tp, 4(s3)
                  addi         s3, s3, 12
                  sltiu        t4, s11, -814
                  auipc        a7, 695448
                  add          t5, ra, t1
125:              addi x21, x4, 0
125:              jalr x21, x21, 0
sub_1:            xor          s1, a1, a6
                  bgeu         s8, s1, sub_1_stack_p
sub_1_stack_p:    addi         s3, s3, -8
                  lui          t2, 261126
                  auipc        s7, 806558
                  sw           tp, 4(s3)
                  sll          ra, s0, a6
                  addi         a5, zero, 5 #init loop 1 counter
                  addi         s7, zero, -9 #init loop 1 limit
                  sltiu        s5, a2, 743
                  srli         s5, t3, 11
                  or           s9, a6, s7
sub_1_1_1_t:      sub          t1, a2, t0
                  ori          s1, s0, 272
                  xor          t5, gp, t1
                  addi         ra, zero, 369
                  addi         a5, a5, -7 #update loop 1 counter
                  xori         a4, t0, -794
                  addi         s0, zero, -1 #init loop 0 counter
                  or           ra, t5, a2
                  add          ra, ra, t5
                  xor          a0, t3, tp
                  sltiu        gp, a1, 1576
                  sra          a7, zero, a5
                  addi         s8, zero, -11 #init loop 0 limit
                  slli         t3, s7, 10
                  sub          t1, t0, a4
                  slli         s2, a0, 2
sub_1_1_0_t:      sltu         tp, s6, s0
                  ori          a3, t6, 1201
                  addi         gp, a6, 1407
                  addi         s0, s0, -8 #update loop 0 counter
                  xor          a4, t6, a3
                  or           a3, s3, s7
                  bge          s0, s8, sub_1_1_0_t #branch for loop 0
                  sltiu        s2, a3, -1991
                  xor          a7, a7, s5
                  bge          a5, s7, sub_1_1_1_t #branch for loop 1
                  srli         tp, s5, 18
                  addi         a5, zero, 10 #init loop 1 counter
                  sra          s6, s0, s4
                  andi         a2, a5, -1891
                  ori          a1, t5, 1805
                  nop
                  sltiu        t4, s0, -2020
                  addi         sp, zero, 10 #init loop 1 limit
sub_1_5_1_t:      slti         s0, s2, 1380
                  sll          s7, tp, s9
                  sra          s11, tp, a6
                  addi         a5, a5, -8 #update loop 1 counter
                  addi         gp, zero, -8 #init loop 0 counter
                  slli         s5, a3, 25
                  lui          s6, 616214
                  addi         s8, zero, 8 #init loop 0 limit
                  and          t5, a7, t1
sub_1_5_0_t:      auipc        a0, 473142
                  addi         gp, gp, 8 #update loop 0 counter
                  sll          s11, s9, a5
                  srl          s4, t3, s1
                  sltiu        s9, t3, 685
                  srl          tp, t6, t4
                  beq          gp, s8, sub_1_5_0_t #branch for loop 0
                  slti         t4, s0, 95
                  bgeu         a5, sp, sub_1_5_1_t #branch for loop 1
                  srli         s7, a2, 18
                  addi         a4, zero, -9 #init loop 0 counter
                  and          tp, tp, a2
                  xor          s4, tp, ra
                  slli         ra, s7, 3
                  srai         a7, s6, 29
                  add          a0, t5, sp
                  lui          s6, 823774
                  slli         s2, zero, 24
                  sltiu        t2, s4, -1021
                  addi         s10, zero, -10 #init loop 0 limit
                  addi         t3, s11, -572
                  sltiu        a3, t4, 895
                  xor          a1, a0, s10
                  xori         s6, t1, -264
                  andi         a0, s11, 1414
sub_1_3_0_t:      slt          a6, a2, s6
                  addi         a4, a4, -4 #update loop 0 counter
                  addi         tp, t2, -292
                  or           a7, a7, tp
                  sltiu        s1, a5, 797
                  sltu         s4, a4, a2
                  sll          s6, t6, t1
                  bge          a4, s10, sub_1_3_0_t #branch for loop 0
                  and          s4, t1, t0
                  addi         a6, zero, 3 #init loop 0 counter
                  and          a7, t3, s6
                  addi         t5, zero, -17 #init loop 0 limit
                  sltu         gp, a4, sp
sub_1_0_0_t:      lui          s0, 763533
                  xori         s5, a4, -1152
                  addi         a6, a6, -10 #update loop 0 counter
                  slli         t2, a0, 10
                  add          gp, a4, a0
                  bne          a6, t5, sub_1_0_0_t #branch for loop 0
                  xor          a7, zero, s2
                  addi         tp, zero, 0 #init loop 1 counter
                  addi         a3, zero, -8 #init loop 1 limit
sub_1_2_1_t:      xor          a0, ra, sp
                  srli         t4, s10, 8
                  addi         tp, tp, -5 #update loop 1 counter
                  addi         s6, zero, 5 #init loop 0 counter
                  addi         s10, zero, 14 #init loop 0 limit
                  ori          sp, a3, 413
sub_1_2_0_t:      xor          s1, s5, t1
                  addi         s6, s6, 1 #update loop 0 counter
                  sltu         t5, a2, a7
                  beq          s6, s10, sub_1_2_0_t #branch for loop 0
                  bge          tp, a3, sub_1_2_1_t #branch for loop 1
                  slli         s2, t0, 17
                  slti         t2, s4, -388
                  srl          s0, t6, a0
                  srai         gp, s3, 25
                  and          a5, a7, sp
                  srai         t4, a1, 14
                  auipc        s4, 417012
                  xori         s7, a2, 1784
                  slli         a3, s7, 17
                  add          ra, s4, t2
                  add          a5, a2, s11
                  bne          a1, s5, 28f
                  lui          a2, 412802
                  blt          s0, a2, 20f
                  beq          ra, a7, 17f
                  and          t3, s1, s3
                  and          a1, s1, t1
                  sra          s8, zero, s1
17:               srai         a6, t5, 24
                  or           a7, s1, t6
                  sll          t4, a2, a2
20:               add          a7, s5, s10
                  srai         ra, a3, 3
                  xori         sp, tp, -2047
                  nop
                  sltu         a6, s1, a3
                  xori         s11, t1, -1861
                  ori          a2, s7, 398
                  sra          s10, s10, a1
28:               slt          a5, t0, s1
                  auipc        t3, 71570
                  slli         s9, s7, 19
                  bge          s8, zero, 51f
                  srai         a0, a1, 30
                  ori          zero, a3, -750
                  ori          a5, t1, 1175
                  andi         s11, a5, 660
                  sra          a7, s8, t1
                  or           s8, s6, a7
                  xori         s10, t5, 1364
                  bltu         s5, a7, 46f
                  srai         t3, t1, 19
                  bltu         a3, t4, 46f
                  andi         t1, zero, 1092
                  slti         t3, a3, -1681
                  lui          s9, 986976
                  srl          s4, sp, s3
46:               srai         t4, s4, 16
                  ori          a6, t0, 182
                  sra          t3, t3, t4
                  beq          t6, t5, 54f
                  or           tp, a4, sp
51:               auipc        a6, 146439
                  srl          s10, s5, t5
                  bltu         s5, a2, 68f
54:               add          s1, gp, zero
                  auipc        s9, 685455
                  bne          a3, s1, 72f
                  lui          t1, 49740
                  bltu         t4, a0, 72f
                  srai         a7, ra, 24
                  beq          s11, gp, 76f
                  auipc        ra, 515711
                  ori          s10, t3, -72
                  ori          s1, a6, 1121
                  addi         s8, a6, -456
                  ori          s4, s6, -42
                  srli         t5, s3, 17
                  addi         tp, s9, 423
68:               auipc        a2, 54067
                  beq          tp, s2, 86f
                  addi         s1, s7, -963
                  addi         a2, s5, 1334
72:               srai         sp, a2, 21
                  sra          s11, t2, s9
                  beq          s10, a5, 87f
                  beq          ra, s10, 81f
76:               slt          a6, gp, s1
                  ori          a2, a7, -669
                  blt          s2, s0, 91f
                  bgeu         gp, a4, 81f
                  sra          gp, a1, s7
81:               slti         s8, t3, 1911
                  or           t2, t4, s1
                  slti         a5, t1, -344
                  srai         ra, s1, 5
                  sra          a2, zero, t2
86:               bgeu         sp, s1, 103f
87:               nop
                  bgeu         ra, sp, 90f
                  bltu         t3, zero, 97f
90:               sltu         s5, a6, s4
91:               addi         s6, t1, -1792
                  slti         tp, t0, 242
                  auipc        t2, 584392
                  srl          s8, s5, t0
                  add          s6, zero, s5
                  xori         s9, ra, -1585
97:               bge          s10, a7, 107f
                  ori          a3, s3, 667
                  sll          gp, ra, gp
                  nop
                  bge          s1, ra, 102f
102:              addi         t1, s5, -46
103:              xori         t4, s10, -269
                  xor          t2, a4, t5
                  bge          t3, s6, 113f
                  blt          gp, t6, 123f
107:              add          gp, zero, s3
                  xori         s9, s3, 1511
                  auipc        s5, 648268
                  auipc        t5, 375721
                  srli         s6, t1, 17
                  sub          s7, s9, t3
113:              auipc        s4, 909288
                  sltu         s1, s8, a3
                  sltu         s7, t6, t3
                  slli         a2, t0, 0
                  slti         t2, a5, 1978
                  nop
                  lui          zero, 876765
                  xor          s1, a5, t6
                  sub          t2, zero, sp
                  srai         s11, s6, 4
123:              sltiu        s10, t4, -1261
                  slt          s6, t3, sp
                  bltu         s5, a4, 142f
                  bgeu         t3, zero, 141f
                  or           a5, a1, s1
                  nop
                  lui          a5, 792242
                  andi         s0, s8, -626
                  nop
                  addi         s7, t3, -481
                  xori         s1, s6, 511
                  sll          t3, a1, t0
                  auipc        a5, 859330
                  nop
                  bltu         t4, s9, 143f
                  slli         a5, zero, 4
                  sll          a2, a0, gp
                  and          s1, a4, s9
141:              sll          a5, t0, s7
142:              lui          ra, 102808
143:              bne          a2, s9, 148f
                  srai         a1, a6, 9
                  andi         s10, ra, -1013
                  auipc        s8, 620337
                  addi         s10, s10, -1567
148:              lui          s1, 756991
                  blt          t6, t2, 155f
                  andi         t5, t5, 452
                  and          t2, t1, tp
                  auipc        s10, 1037284
                  sltiu        a4, s11, -1461
                  bne          a3, s9, 169f
155:              blt          a4, s5, 174f
                  slt          s9, s0, t6
                  nop
                  beq          s10, t1, 171f
                  sltiu        gp, s5, 512
                  bgeu         s10, ra, 180f
                  sra          s9, a6, s6
                  slt          t3, s4, a0
                  xori         a7, s8, 1900
                  srai         s0, t0, 27
                  lui          a7, 289968
                  ori          s9, a2, 1022
                  bne          a4, s7, 168f
168:              lui          s6, 837536
169:              andi         s4, s9, -549
                  add          gp, s2, zero
171:              beq          s10, s5, 185f
                  sll          sp, ra, t4
                  sra          a0, a6, a3
174:              xor          s9, s7, s2
                  bltu         t1, s2, 188f
                  auipc        a6, 849190
                  bge          s6, a6, 183f
                  bgeu         s0, ra, 182f
                  auipc        s11, 747543
180:              bltu         s8, sp, 186f
                  sltiu        gp, s2, -1387
182:              bge          t6, a1, 190f
183:              slti         t4, a2, -112
                  slti         t1, s10, -1836
185:              bgeu         s7, sp, 191f
186:              beq          t2, a4, 196f
                  srli         a3, t2, 22
188:              or           t3, s0, a7
                  slli         a6, t0, 29
190:              xor          t1, t5, a1
191:              xori         t1, a5, -1115
                  auipc        s11, 14188
                  srai         t3, t3, 30
                  srai         s6, s9, 11
                  slli         s9, a3, 19
196:              sub          s1, s10, a3
                  bne          a3, s8, 212f
                  slli         s4, a7, 10
                  slti         a3, a4, 1296
                  auipc        s5, 943250
                  ori          a4, zero, 1187
                  bne          a0, s10, 218f
                  xori         t5, s9, -37
                  andi         a0, s6, 512
                  xori         s0, s1, -41
                  beq          zero, zero, 222f
                  sltu         s6, s11, s9
                  sltu         sp, s3, zero
                  xor          gp, s9, s10
                  lui          ra, 151518
                  sltiu        s6, a0, 1965
212:              blt          a1, a3, 220f
                  sltiu        a3, s10, 168
                  sra          t1, s4, t4
                  ori          t4, s8, 1382
                  bgeu         t4, s10, 233f
                  addi         s7, t4, 1757
218:              lui          a7, 213161
                  srli         s7, t2, 2
220:              slli         s4, a7, 11
                  srai         s4, t3, 18
222:              srl          tp, s5, s11
                  slli         a5, s9, 31
                  auipc        ra, 795115
                  xor          s0, t0, a7
                  xor          t4, t6, s9
                  add          s4, t5, sp
                  addi         a2, t1, -847
                  xor          s1, a7, s7
                  blt          tp, t5, 238f
                  srai         a6, t5, 26
                  xori         s1, a2, -1900
233:              xor          a3, s4, s3
                  ori          s0, zero, 732
                  slt          a1, a0, s9
                  xori         s5, s2, -646
                  slli         a3, a3, 4
238:              blt          t6, t4, 240f
                  bgeu         sp, s7, 244f
240:              or           tp, s8, s4
                  sra          ra, a3, sp
                  and          t3, a2, s1
                  xor          a3, sp, s0
244:              add          ra, a4, s8
                  beq          gp, a6, 263f
                  slti         t2, s6, -958
                  sra          t2, t3, s5
                  bltu         t5, a4, 253f
                  xori         ra, a5, 812
                  sub          s11, gp, gp
                  nop
                  srl          s8, s5, a3
253:              and          s10, s0, t0
                  slti         s6, s7, -613
                  sra          a5, s0, a4
                  addi         a5, zero, -10 #init loop 0 counter
                  slli         s8, a5, 23
                  srl          s0, s11, t4
                  auipc        s5, 374800
                  lui          gp, 323277
                  addi         t4, zero, -18 #init loop 0 limit
                  slti         s6, s7, 1436
sub_1_4_0_t:      or           a0, ra, a0
                  addi         a5, a5, -5 #update loop 0 counter
                  slti         t5, s4, 1849
                  addi         s1, a3, -472
                  srli         s7, s11, 3
                  slt          a4, t0, t2
                  ori          a0, tp, -1263
                  bge          a5, t4, sub_1_4_0_t #branch for loop 0
                  addi         s4, t0, -1580
                  lui          s0, 649536
                  sub          t1, sp, s3
                  srl          a5, t5, a6
                  xori         a5, s9, -1011
                  srai         gp, s0, 18
                  sub          a6, ra, t4
                  sltu         t1, a7, s6
263:              xor          a6, s1, s10
                  sub          s11, sp, s2
                  sltiu        a5, a6, -622
                  beq          gp, tp, 271f
                  xor          t2, tp, t1
                  slti         s0, s8, 681
                  blt          a5, s4, 288f
                  sltu         s10, s1, a0
271:              blt          s1, t0, 288f
                  bltu         t0, a2, 274f
                  add          s7, t2, s5
274:              bne          t3, s0, 281f
                  srai         zero, tp, 20
                  sltiu        s9, s2, -1976
                  nop
                  auipc        s6, 803903
                  add          s1, s0, a6
                  lui          s9, 972808
281:              srli         s11, t3, 14
                  bltu         s6, s7, 297f
                  andi         a6, s5, -1552
                  slt          s11, a4, t4
                  ori          a3, s6, -390
                  srai         a1, ra, 12
                  bne          t5, t3, 304f
288:              and          a0, t5, a6
                  andi         sp, a4, -1536
                  addi         s0, a2, -519
                  auipc        s1, 444744
                  sra          s11, s4, s2
                  slli         tp, s2, 2
                  sll          s6, tp, s8
                  bltu         t6, a2, 312f
                  sltiu        ra, s6, 1918
297:              xor          a0, zero, s9
                  slt          s7, ra, a1
                  nop
                  ori          a3, s11, 1762
                  lui          a1, 827433
                  or           t1, t3, a2
                  slt          s9, s4, t1
304:              ori          a1, t6, 425
                  bge          s6, s3, 320f
                  sltiu        sp, a2, -392
                  sra          s1, s9, t3
                  sll          t2, t0, s2
                  sltiu        zero, a1, -1214
                  nop
                  srai         ra, s5, 12
312:              ori          zero, t3, 249
                  auipc        s6, 485185
                  nop
                  blt          t6, s11, 324f
                  bltu         s6, sp, 324f
                  sub          ra, t3, a5
                  bge          a4, a0, 324f
                  srai         t4, s1, 19
320:              slli         gp, ra, 10
                  add          a6, s9, s9
                  nop
                  bgeu         gp, gp, 324f
324:              sltu         a0, s10, sp
                  sltiu        s4, t4, 558
                  lw           tp, 4(s3)
                  addi         s3, s3, 8
                  auipc        a2, 614601
                  sll          a0, s10, a2
                  slt          a0, zero, gp
461:              addi x26, x4, 1
461:              jalr x26, x26, 0
sub_2:            xor          s1, t6, s7
                  sll          s11, s10, t4
                  and          sp, t3, zero
                  sltiu        s0, s7, -811
                  ori          t3, a5, 142
                  addi         s3, s3, -52
                  andi         s0, s8, -20
                  sw           tp, 4(s3)
                  ori          a7, a7, -1153
                  add          s2, a5, tp
                  srl          a6, t6, s0
                  bltu         a1, s6, 16f
                  ori          s10, a5, 1706
                  sll          s9, t3, s6
                  slt          ra, t4, t5
                  srli         a1, t0, 11
                  bltu         s5, a4, 6f
6:                sltiu        t5, a1, -211
                  sub          a3, s3, s1
                  lui          a4, 238657
                  sltu         s9, s8, s1
                  lui          s10, 572883
                  sltiu        s10, a3, 1952
                  slt          s1, a7, gp
                  ori          a7, s6, -114
                  sll          gp, s10, s5
                  auipc        ra, 843797
16:               nop
                  lui          t2, 130656
                  srl          t2, t3, s0
                  addi         s1, s7, -1743
                  bne          t6, s3, 24f
                  sra          s7, a2, a1
                  sub          t2, a3, a7
                  sra          tp, a1, s5
24:               sll          zero, s6, s2
                  lui          gp, 438149
                  lw           tp, 4(s3)
                  and          sp, s10, s4
                  add          s5, s11, s7
                  addi         s3, s3, 52
                  ori          s5, zero, 943
                  slt          s6, s5, t4
43:               addi x23, x4, 1
43:               jalr x23, x23, 0
sub_5:            bge          a4, tp, sub_5_stack_p
                  slt          a2, s1, t0
                  sub          s6, s6, s5
sub_5_stack_p:    addi         s3, s3, -64
                  sw           tp, 4(s3)
                  srai         t4, a4, 10
                  srli         a0, s8, 28
                  addi         a7, zero, 8 #init loop 0 counter
                  addi         s6, s10, 1066
                  lui          s9, 407161
                  xor          sp, a7, a1
                  addi         s11, zero, 8 #init loop 0 limit
                  xor          tp, t3, s4
sub_5_0_0_t:      lui          t4, 834778
                  addi         a7, a7, -7 #update loop 0 counter
                  and          t1, s6, tp
                  bgeu         a7, s11, sub_5_0_0_t #branch for loop 0
                  srai         a5, s6, 27
                  addi         s5, zero, 9 #init loop 0 counter
                  srai         a1, t3, 23
                  andi         t2, zero, -1504
                  sltiu        t5, s0, 1930
                  andi         tp, s9, 471
                  slli         s10, s1, 0
                  addi         s2, zero, 10 #init loop 0 limit
sub_5_1_0_t:      slt          a5, s2, s6
                  srai         t3, s3, 27
                  or           a4, a0, a2
                  sll          s8, ra, gp
                  addi         s5, s5, 10 #update loop 0 counter
                  or           t1, s10, t1
                  slli         s6, s3, 28
                  or           zero, a6, t5
                  blt          s5, s2, sub_5_1_0_t #branch for loop 0
                  ori          t1, tp, -1386
                  bltu         s9, s5, 2f
                  slt          s8, a4, a4
2:                sra          t2, a0, t4
                  blt          t0, t5, 19f
                  bgeu         t3, s1, 17f
                  or           s7, s2, a5
                  slli         s5, gp, 25
                  srli         s5, s1, 29
                  blt          s2, t6, 16f
                  beq          tp, s11, 10f
10:               auipc        t4, 231157
                  xori         t1, s7, -409
                  lui          t2, 955609
                  sub          gp, s11, t2
                  sll          s6, s1, s1
                  sra          a3, t0, s2
16:               nop
17:               beq          t0, s6, 25f
                  auipc        s0, 800970
19:               sll          s2, s8, a0
                  beq          t5, t6, 29f
                  add          s9, t0, sp
                  bltu         s1, s4, 28f
                  srl          s0, s6, s1
                  auipc        s1, 259100
25:               xori         a3, s8, 1326
                  slli         s10, a6, 24
                  addi         s6, s9, -6
28:               sltu         a5, s10, a0
29:               xor          s11, s6, s8
                  srai         a4, a2, 7
                  sll          a0, a7, zero
                  sra          gp, s0, s4
                  and          s5, s9, t4
                  sltu         s11, s8, s10
                  or           s1, sp, s0
                  xori         s9, s9, 919
                  slli         s1, zero, 19
                  blt          t1, s6, 40f
                  slli         a5, a5, 4
40:               bgeu         s2, s7, 49f
                  sltiu        gp, sp, 1388
                  sll          gp, t0, s9
                  slt          s1, s3, s1
                  sltu         ra, s6, a5
                  bne          s5, s5, 53f
                  sll          zero, t4, t3
                  slt          s10, a2, t3
                  xori         s6, t5, -92
49:               lui          s10, 181436
                  slti         s2, s1, -1273
                  blt          ra, ra, 70f
                  sll          s2, ra, a2
53:               slti         a5, tp, 734
                  ori          zero, s11, 1151
                  andi         t1, s9, -1047
                  or           a5, t4, a1
                  ori          a0, gp, 1038
                  ori          a7, t6, 1397
                  slti         a6, a2, 1911
                  bne          s8, s3, 67f
                  sltiu        a7, t2, 567
                  slli         s8, s1, 31
                  andi         s2, a1, -1251
                  bgeu         s11, s8, 80f
                  slti         t1, a7, -98
                  auipc        t5, 384835
67:               slti         a5, t0, 1662
                  sra          a3, s7, sp
                  andi         s2, s0, 451
70:               bltu         t6, t0, 79f
                  bltu         ra, a7, 91f
                  srl          t5, a3, s0
                  sra          s4, s9, s8
                  slti         s1, t5, -261
                  srli         t4, sp, 22
                  beq          s3, s2, 87f
                  slt          s11, a3, s4
                  or           ra, a0, a7
79:               sra          zero, zero, a2
80:               nop
                  addi         s6, t0, 568
                  xor          tp, t6, gp
                  slti         s11, a4, -846
                  bne          s2, a1, 99f
                  sub          s5, a1, sp
                  bge          zero, ra, 89f
87:               add          a5, t6, t2
                  addi         t2, zero, 162
89:               or           ra, t4, s7
                  ori          s1, a3, -1613
91:               nop
                  slt          s5, a7, a0
                  auipc        ra, 364795
                  xori         a4, a6, 817
                  nop
                  xor          a5, t3, s2
                  auipc        s4, 749866
                  bne          s11, a2, 108f
99:               ori          ra, s0, -1512
                  add          a5, s9, a1
                  slli         s10, a7, 11
                  srl          a0, s10, ra
                  srl          s11, a3, sp
                  sltu         a5, a0, t1
                  slli         t3, s4, 15
                  lui          t2, 198036
                  andi         t5, s11, -848
108:              ori          a6, s11, -744
                  blt          s10, a4, 111f
                  sll          a3, t6, s3
111:              sub          gp, a4, gp
                  slti         s9, s0, 179
                  sltu         a0, s8, a4
                  lw           tp, 4(s3)
                  slti         t2, a2, 1210
                  addi         s3, s3, 64
                  sra          s1, a1, t3
                  sltu         a1, zero, s1
                  slli         t4, a1, 0
                  srli         t1, s1, 11
                  sll          gp, s2, s0
                  srli         t1, s10, 16
                  andi         sp, s9, 1639
159:              addi x27, x4, 0
159:              jalr x27, x27, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x5, x19, zero
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x11, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x11, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x11, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x11, x18, ecall_handler
                  li x18, 0x1
                  beq x11, x18, instr_fault_handler
                  li x18, 0x5
                  beq x11, x18, load_fault_handler
                  li x18, 0x7
                  beq x11, x18, store_fault_handler
                  li x18, 0xc
                  beq x11, x18, pt_fault_handler
                  li x18, 0xd
                  beq x11, x18, pt_fault_handler
                  li x18, 0xf
                  beq x11, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x19, x5, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x5, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x5, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x19, x5, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x19, x5, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x19, x5, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
