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
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
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
                  li x0, 0x0
                  li x1, 0x6
                  li x2, 0x80000000
                  li x3, 0xff23893e
                  li x4, 0xcf0398d3
                  li x5, 0x7
                  li x7, 0x80000000
                  li x8, 0x0
                  li x10, 0x80000000
                  li x11, 0xe
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xd66eae01
                  li x15, 0xc
                  li x16, 0x1f8b8637
                  li x17, 0x80000000
                  li x18, 0x5
                  li x19, 0x0
                  li x20, 0xb
                  li x21, 0xf8061656
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x81f53524
                  li x26, 0x80000000
                  li x27, 0xdd5675e8
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x5
                  li x31, 0x80000000
                  la x9, user_stack_end
main:             addi         s3, zero, 10 #init loop 0 counter
                  addi         a6, s2, -989
                  sltu         t4, a0, s1
                  sltiu        t2, t1, -480
                  slt          tp, gp, a4
                  sll          s11, a0, a6
                  lui          a3, 882173
                  sub          t2, a7, gp
                  sltiu        t0, gp, -124
                  sll          a6, s4, tp
                  slti         a4, s2, -1411
                  addi         s2, zero, 10 #init loop 0 limit
                  auipc        s9, 778398
main_16_0_t:      auipc        s4, 148322
                  srl          a7, t5, a7
                  addi         s3, s3, -9 #update loop 0 counter
                  nop
                  lui          t0, 169180
                  andi         s11, s1, -528
                  auipc        s5, 34834
                  andi         a5, s5, -1186
                  bgeu         s3, s2, main_16_0_t #branch for loop 0
                  srl          zero, a1, s2
                  addi         s3, zero, 2 #init loop 0 counter
                  srl          tp, ra, s1
                  lui          a7, 8152
                  sub          a4, tp, sp
                  xori         s4, s9, -262
                  addi         a5, zero, -2 #init loop 0 limit
                  and          t6, a2, a1
main_0_0_t:       andi         s9, tp, -52
                  and          t0, t0, a4
                  addi         a6, s7, 706
                  sra          s8, s4, s1
                  ori          a6, a5, -410
                  addi         s3, s3, -4 #update loop 0 counter
                  add          t0, s2, ra
                  or           s8, t3, tp
                  sltu         s2, t0, a3
                  sll          t3, a6, s0
                  nop
                  sra          a3, s7, s10
                  bne          s3, a5, main_0_0_t #branch for loop 0
                  sub          a4, s4, s7
                  addi         a5, zero, 6 #init loop 1 counter
                  srai         a6, sp, 31
                  srli         s9, s8, 17
                  nop
                  nop
                  addi         tp, s10, -1786
                  slti         tp, s8, 1459
                  addi         s3, zero, -10 #init loop 1 limit
                  srai         s6, a7, 16
                  andi         s4, s2, 433
main_26_1_t:      auipc        s11, 823378
                  sltiu        s7, a6, -592
                  addi         a5, a5, -8 #update loop 1 counter
                  addi         a1, zero, 1 #init loop 0 counter
                  slli         s4, gp, 8
                  addi         t5, zero, 13 #init loop 0 limit
                  andi         s4, s4, 1162
main_26_0_t:      auipc        s2, 104220
                  lui          zero, 607844
                  lui          s7, 1028746
                  addi         a1, a1, 2 #update loop 0 counter
                  blt          a1, t5, main_26_0_t #branch for loop 0
                  add          t0, s10, a5
                  beq          a5, s3, main_26_1_t #branch for loop 1
                  addi         t4, s3, 37
                  addi         a6, zero, 5 #init loop 0 counter
                  sltiu        t5, tp, 190
                  lui          gp, 939743
                  srl          s10, t6, s1
                  srli         s6, a2, 26
                  sub          t0, s3, a5
                  xor          t4, gp, a6
                  srli         zero, a6, 28
                  sltiu        s3, t6, 749
                  sra          t0, tp, t3
                  addi         a4, zero, 19 #init loop 0 limit
                  sra          s9, s11, s0
                  srai         s4, a5, 19
                  slli         a5, s5, 29
                  sra          s7, s7, t5
main_23_0_t:      lui          s7, 279510
                  addi         a6, a6, 2 #update loop 0 counter
                  sub          s6, a2, a6
                  beq          a6, a4, main_23_0_t #branch for loop 0
                  lui          tp, 327255
                  addi         tp, zero, 9 #init loop 0 counter
                  sll          a7, a2, zero
                  ori          s3, a2, -537
                  slti         s11, sp, -519
                  or           s6, zero, s1
                  addi         s9, zero, 7 #init loop 0 limit
                  addi         s8, s8, 139
                  srl          s8, t4, s3
main_13_0_t:      slti         gp, s4, -328
                  srai         zero, a1, 23
                  slt          a4, s1, a7
                  addi         tp, tp, -6 #update loop 0 counter
                  ori          a5, gp, -1813
                  sra          a2, s8, s6
                  slli         a6, s5, 14
                  slt          s10, sp, s1
                  or           zero, s8, t1
                  sra          t4, a3, s10
                  srai         a6, a6, 31
                  sra          ra, s0, t5
                  xor          s3, s11, a3
                  slli         t5, s4, 4
                  andi         t2, a1, -1461
                  slli         s3, a7, 4
                  srl          a3, t0, a4
                  sra          sp, t1, s8
                  bgeu         tp, s9, main_13_0_t #branch for loop 0
                  nop
                  addi         s0, zero, -8 #init loop 0 counter
                  slti         t2, t0, -385
                  ori          s9, s8, -804
                  addi         a7, zero, -17 #init loop 0 limit
main_18_0_t:      or           t5, s8, s1
                  or           a4, gp, a5
                  sra          s9, s4, t2
                  auipc        s10, 316627
                  sra          a1, t0, tp
                  addi         s0, s0, -7 #update loop 0 counter
                  bge          s0, a7, main_18_0_t #branch for loop 0
                  srl          s8, a0, s3
                  addi         a5, zero, -1 #init loop 1 counter
                  srai         tp, s4, 10
                  add          s5, s6, t4
                  xor          t0, a0, s11
                  xor          a4, s8, a7
                  addi         a1, zero, 17 #init loop 1 limit
                  add          s0, a0, s6
main_15_1_t:      xor          a7, a6, s11
                  addi         a5, a5, 4 #update loop 1 counter
                  add          t5, sp, ra
                  addi         t3, zero, -5 #init loop 0 counter
                  addi         s3, zero, -7 #init loop 0 limit
                  ori          a4, t5, -1562
                  ori          tp, t0, -1949
                  sra          ra, a5, t2
                  sra          a4, t0, a2
main_15_0_t:      sltu         s5, t0, ra
                  sltu         t4, a5, t5
                  addi         t3, t3, -4 #update loop 0 counter
                  addi         gp, a7, 808
                  bge          t3, s3, main_15_0_t #branch for loop 0
                  ori          s7, s2, 1566
                  bltu         a5, a1, main_15_1_t #branch for loop 1
                  or           t2, zero, s4
                  addi         t0, zero, 9 #init loop 0 counter
                  srai         ra, s1, 16
                  addi         s11, zero, -14 #init loop 0 limit
                  sra          gp, t3, s0
main_14_0_t:      slti         s6, s4, 1199
                  nop
                  slli         s9, s11, 12
                  sll          sp, t3, a4
                  addi         t0, t0, -3 #update loop 0 counter
                  sltu         zero, s0, ra
                  bge          t0, s11, main_14_0_t #branch for loop 0
                  lui          t6, 303116
                  addi         s6, zero, 10 #init loop 0 counter
                  ori          s7, a3, 225
                  xori         sp, s1, 1350
                  xori         s7, t4, -1167
                  slli         t4, s7, 22
                  srl          s11, s0, s7
                  auipc        t0, 282449
                  xori         t4, s4, -1662
                  and          a4, s3, t5
                  sll          s7, t5, s4
                  or           a3, a2, a5
                  xor          s8, a5, tp
                  sltiu        a4, a2, -1204
                  slti         tp, a5, -1404
                  sltu         t4, s4, s1
                  xori         s3, t1, 555
                  add          s0, a0, a1
                  addi         t2, zero, 10 #init loop 0 limit
                  and          a7, a3, t0
                  sra          gp, s2, zero
                  srli         t5, s5, 3
                  xor          a3, t0, s4
                  slli         s11, gp, 10
main_5_0_t:       ori          sp, a4, -376
                  sra          s11, s0, a4
                  sltu         s0, a5, t3
                  addi         s6, s6, -5 #update loop 0 counter
                  sra          a2, a3, s6
                  bgeu         s6, t2, main_5_0_t #branch for loop 0
                  sltiu        s3, a4, 321
                  addi         t3, zero, 4 #init loop 1 counter
                  srl          s8, s0, t3
                  and          s10, gp, s11
                  srli         t0, t2, 25
                  addi         t6, zero, -8 #init loop 1 limit
                  ori          a3, s10, -707
main_8_1_t:       and          s7, s6, a3
                  sll          s11, sp, s10
                  addi         t3, t3, -10 #update loop 1 counter
                  addi         s6, zero, 8 #init loop 0 counter
                  or           s5, s0, s1
                  srai         sp, s1, 30
                  addi         s4, zero, 11 #init loop 0 limit
                  or           s7, s8, s7
                  sltu         a4, s1, tp
main_8_0_t:       auipc        a2, 966566
                  addi         ra, s10, 355
                  sltiu        s10, s2, -395
                  srli         s5, s5, 14
                  addi         s6, s6, 3 #update loop 0 counter
                  bne          s6, s4, main_8_0_t #branch for loop 0
                  slti         a7, t2, 1147
                  sub          t2, s2, t6
                  andi         ra, t5, 1519
                  bge          t3, t6, main_8_1_t #branch for loop 1
                  ori          s7, gp, 1068
                  addi         a5, zero, 7 #init loop 1 counter
                  add          a6, s11, s0
                  auipc        zero, 900621
                  addi         ra, zero, 4 #init loop 1 limit
main_6_1_t:       auipc        s10, 110905
                  or           zero, s2, s2
                  addi         a5, a5, -3 #update loop 1 counter
                  addi         s11, zero, 6 #init loop 0 counter
                  addi         a7, zero, 4 #init loop 0 limit
main_6_0_t:       slt          s7, s6, a5
                  xor          s0, t5, s10
                  addi         s11, s11, -3 #update loop 0 counter
                  bgeu         s11, a7, main_6_0_t #branch for loop 0
                  bgeu         a5, ra, main_6_1_t #branch for loop 1
                  srli         s8, a0, 4
                  addi         a6, zero, 0 #init loop 1 counter
                  or           s11, a2, t4
                  srl          t5, a1, s7
                  slti         t3, s7, 779
                  or           t0, s5, zero
                  addi         a5, zero, -5 #init loop 1 limit
main_2_1_t:       slt          t3, a6, a1
                  addi         a6, a6, -4 #update loop 1 counter
                  sll          a4, t6, s4
                  slli         t6, s2, 6
                  sub          t0, s5, a1
                  slli         ra, tp, 1
                  addi         s4, zero, 1 #init loop 0 counter
                  srl          s0, a3, s2
                  auipc        t2, 832204
                  addi         a2, zero, 9 #init loop 0 limit
                  srai         s3, a5, 14
main_2_0_t:       lui          a7, 419475
                  nop
                  slli         zero, a7, 1
                  addi         s4, s4, 8 #update loop 0 counter
                  sra          t0, a0, gp
                  nop
                  srli         a3, s5, 1
                  addi         s10, a5, -1119
                  slti         t0, s4, 1727
                  beq          s4, a2, main_2_0_t #branch for loop 0
                  slli         s10, s9, 2
                  lui          s8, 111315
                  xori         a4, gp, -1205
                  slli         a3, a7, 31
                  slli         a7, t1, 12
                  bge          a6, a5, main_2_1_t #branch for loop 1
                  slli         s3, s5, 25
                  addi         s5, zero, -1 #init loop 1 counter
                  andi         s11, s1, -867
                  addi         tp, zero, 5 #init loop 1 limit
                  auipc        a5, 568387
main_27_1_t:      nop
                  addi         s5, s5, 6 #update loop 1 counter
                  and          s3, t6, s3
                  addi         t0, zero, 5 #init loop 0 counter
                  addi         t5, a0, 280
                  srai         t5, s11, 19
                  addi         a1, zero, -4 #init loop 0 limit
main_27_0_t:      auipc        a6, 487323
                  srl          a5, s8, a3
                  addi         t0, t0, -7 #update loop 0 counter
                  bge          t0, a1, main_27_0_t #branch for loop 0
                  add          sp, a4, a1
                  bne          s5, tp, main_27_1_t #branch for loop 1
                  sra          s4, ra, s3
                  addi         s8, zero, 1 #init loop 0 counter
                  add          s9, gp, t2
                  ori          a5, s0, -246
                  xor          a1, s11, s5
                  srai         t2, t3, 14
                  xor          a4, a6, a0
                  srai         a3, a3, 10
                  slli         t5, s2, 22
                  addi         s4, zero, 19 #init loop 0 limit
                  sll          s10, s9, s0
                  sltu         t4, a5, s7
                  slti         s7, s8, -1447
                  or           t3, s1, s6
main_9_0_t:       nop
                  sub          a7, a0, s2
                  sltu         a2, t5, gp
                  addi         s8, s8, 9 #update loop 0 counter
                  ori          a2, t6, -1402
                  sltiu        tp, s9, 1505
                  sub          s11, s1, s5
                  srl          t3, s6, s10
                  bne          s8, s4, main_9_0_t #branch for loop 0
                  sra          s2, s6, s5
                  addi         t0, zero, 4 #init loop 1 counter
                  addi         s8, zero, -18 #init loop 1 limit
                  sltiu        a2, s0, -613
main_28_1_t:      andi         a6, a3, -1540
                  and          t6, s5, t3
                  sll          a4, a3, a0
                  sll          t3, s8, a6
                  andi         a5, a0, -824
                  addi         t0, t0, -5 #update loop 1 counter
                  lui          t2, 699047
                  and          s7, t6, a1
                  xor          a7, zero, a3
                  addi         t4, zero, 9 #init loop 0 counter
                  addi         a1, zero, 13 #init loop 0 limit
main_28_0_t:      slti         s4, a6, 1447
                  or           a2, s4, s6
                  slti         a6, s9, 1145
                  slli         t6, t0, 14
                  addi         t4, t4, 5 #update loop 0 counter
                  sltu         t3, t6, s2
                  bltu         t4, a1, main_28_0_t #branch for loop 0
                  bge          t0, s8, main_28_1_t #branch for loop 1
                  slt          a5, t6, sp
                  addi         s11, zero, -3 #init loop 1 counter
                  addi         s5, zero, 20 #init loop 1 limit
                  sub          s2, s2, t1
main_17_1_t:      addi         a7, t2, 1245
                  addi         s11, s11, 3 #update loop 1 counter
                  addi         a6, zero, 0 #init loop 0 counter
                  addi         s7, zero, 20 #init loop 0 limit
main_17_0_t:      slt          s10, t5, a7
                  sra          s4, a5, t4
                  addi         a6, a6, 4 #update loop 0 counter
                  bne          a6, s7, main_17_0_t #branch for loop 0
                  bltu         s11, s5, main_17_1_t #branch for loop 1
                  slti         t0, s7, -1703
                  addi         t0, zero, 10 #init loop 0 counter
                  slli         s8, s3, 6
                  andi         ra, t1, 841
                  slt          tp, a3, s4
                  srai         s11, s4, 20
                  ori          s3, t3, -1757
                  srli         a3, a4, 6
                  nop
                  addi         a4, zero, 17 #init loop 0 limit
                  sub          s10, t1, s9
main_19_0_t:      sub          gp, a1, t3
                  sll          t4, sp, s9
                  lui          s11, 374699
                  ori          s11, s1, -1076
                  andi         zero, t3, 230
                  addi         t0, t0, 7 #update loop 0 counter
                  slli         s2, a7, 12
                  srli         s4, s10, 12
                  xor          s5, s7, s10
                  andi         a1, sp, 1253
                  ori          t2, t1, 1458
                  sltiu        s8, s6, 1266
                  add          a5, s3, gp
                  srl          a7, s5, gp
                  beq          t0, a4, main_19_0_t #branch for loop 0
                  add          tp, a3, ra
                  addi         t6, zero, -6 #init loop 1 counter
                  sra          a1, tp, a1
                  add          a1, s0, a3
                  xori         ra, a3, 480
                  addi         t3, zero, -17 #init loop 1 limit
main_30_1_t:      slti         ra, t3, 1087
                  sltiu        s0, t4, -998
                  addi         t6, t6, -9 #update loop 1 counter
                  sll          a5, t6, s6
                  sra          zero, sp, a3
                  sll          zero, t0, a6
                  andi         t4, a3, 1790
                  addi         a2, zero, 1 #init loop 0 counter
                  xor          a7, a5, a3
                  slti         tp, s11, 217
                  addi         a3, zero, 7 #init loop 0 limit
                  add          a5, zero, t0
main_30_0_t:      auipc        a5, 294479
                  addi         a2, a2, 5 #update loop 0 counter
                  auipc        t5, 589720
                  or           a6, s6, a3
                  add          sp, sp, s8
                  ori          sp, a6, 1171
                  srl          t4, s3, ra
                  sltu         t4, s7, gp
                  slt          t4, ra, s2
                  blt          a2, a3, main_30_0_t #branch for loop 0
                  auipc        s6, 105962
                  add          gp, s8, s0
                  bge          t6, t3, main_30_1_t #branch for loop 1
                  or           t2, ra, s6
                  addi         s6, zero, 2 #init loop 1 counter
                  addi         s9, zero, 14 #init loop 1 limit
main_25_1_t:      sltiu        s5, ra, 938
                  addi         s6, s6, 6 #update loop 1 counter
                  xori         gp, t1, 1901
                  addi         a2, zero, 2 #init loop 0 counter
                  or           s7, a1, t0
                  addi         a6, zero, 18 #init loop 0 limit
                  lui          a1, 250149
main_25_0_t:      ori          a1, ra, 1815
                  sltiu        t6, sp, 1923
                  addi         a2, a2, 1 #update loop 0 counter
                  beq          a2, a6, main_25_0_t #branch for loop 0
                  slt          a3, a2, s1
                  bne          s6, s9, main_25_1_t #branch for loop 1
                  ori          t4, t5, 1007
                  addi         t5, zero, 4 #init loop 0 counter
                  sub          a3, s11, s1
                  srli         s10, s0, 22
                  addi         a5, t5, -1166
                  sltiu        a1, s9, 1143
                  slli         a7, s4, 16
                  sll          ra, s7, a6
                  and          a3, t3, t6
                  slli         sp, s9, 26
                  srli         t0, s11, 13
                  srli         s0, t2, 4
                  ori          a6, a5, 1615
                  addi         s2, zero, -14 #init loop 0 limit
                  slt          sp, a1, s8
                  xori         s8, t2, -623
                  addi         t3, a5, 237
                  lui          s5, 976339
                  addi         sp, t4, -1252
                  addi         s10, a2, 209
main_24_0_t:      xori         s3, t0, 897
                  addi         t5, t5, -9 #update loop 0 counter
                  xori         s7, sp, 1603
                  srli         a2, a6, 1
                  beq          t5, s2, main_24_0_t #branch for loop 0
                  lui          t4, 775459
                  addi         s4, zero, 9 #init loop 0 counter
                  addi         s11, zero, 8 #init loop 0 limit
main_20_0_t:      nop
                  andi         t3, t4, -386
                  addi         s4, s4, -7 #update loop 0 counter
                  bgeu         s4, s11, main_20_0_t #branch for loop 0
                  slli         s3, s7, 26
                  addi         a2, zero, -6 #init loop 1 counter
                  addi         s10, zero, 16 #init loop 1 limit
main_4_1_t:       and          t3, s3, s9
                  slli         t2, s3, 11
                  addi         a2, a2, 2 #update loop 1 counter
                  addi         a5, zero, 4 #init loop 0 counter
                  addi         sp, zero, 4 #init loop 0 limit
                  xori         a4, s9, 922
                  sltiu        a6, a7, -2020
main_4_0_t:       slti         t2, a3, -424
                  addi         a5, a5, -2 #update loop 0 counter
                  bgeu         a5, sp, main_4_0_t #branch for loop 0
                  and          t6, sp, t5
                  bne          a2, s10, main_4_1_t #branch for loop 1
                  srai         s5, s11, 15
                  addi         a2, zero, 10 #init loop 0 counter
                  add          a1, a6, s10
                  addi         t5, zero, 15 #init loop 0 limit
main_21_0_t:      nop
                  auipc        sp, 521435
                  lui          s8, 250010
                  slt          s11, s3, a1
                  sltu         s0, ra, s6
                  srai         a5, s0, 4
                  xori         sp, a0, -83
                  addi         a2, a2, 5 #update loop 0 counter
                  sub          s6, t0, s8
                  sll          a6, gp, s7
                  auipc        s6, 804820
                  blt          a2, t5, main_21_0_t #branch for loop 0
                  lui          s9, 304232
                  addi         t4, zero, -3 #init loop 0 counter
                  andi         ra, s11, 761
                  slti         s5, zero, 1472
                  nop
                  srai         t2, s4, 1
                  srai         s0, t2, 23
                  and          t6, a0, a7
                  auipc        s5, 183113
                  and          t6, s9, t5
                  sub          s7, a3, t2
                  slti         a1, s6, -1426
                  addi         t5, zero, 15 #init loop 0 limit
                  nop
main_11_0_t:      or           t0, zero, zero
                  sltu         s8, t3, s6
                  auipc        s9, 431324
                  addi         t4, t4, 9 #update loop 0 counter
                  sub          a3, ra, s0
                  sltu         t2, s11, t3
                  srai         t6, s1, 11
                  sll          s3, a0, s11
                  sll          s7, s7, a0
                  sra          a5, a7, s1
                  srai         s5, t3, 0
                  addi         t6, t0, -1713
                  xor          s5, sp, s2
                  beq          t4, t5, main_11_0_t #branch for loop 0
                  srli         s10, s5, 0
                  addi         s8, zero, 0 #init loop 1 counter
                  addi         a7, zero, 4 #init loop 1 limit
main_12_1_t:      slt          a2, s10, s7
                  slt          a1, s5, s10
                  srl          a1, s7, s10
                  addi         s8, s8, 5 #update loop 1 counter
                  ori          a1, t2, -185
                  addi         t0, zero, 7 #init loop 0 counter
                  xori         sp, s10, -742
                  addi         s4, zero, -3 #init loop 0 limit
                  srli         t6, s9, 14
main_12_0_t:      sltu         zero, t4, a6
                  addi         t0, t0, -5 #update loop 0 counter
                  bne          t0, s4, main_12_0_t #branch for loop 0
                  auipc        zero, 245916
                  blt          s8, a7, main_12_1_t #branch for loop 1
                  slti         a3, t3, -1254
                  addi         a2, zero, 7 #init loop 0 counter
                  xor          zero, t2, ra
                  lui          t0, 334956
                  addi         sp, zero, 19 #init loop 0 limit
main_10_0_t:      xor          s8, t5, gp
                  or           tp, t1, a1
                  addi         a2, a2, 2 #update loop 0 counter
                  slli         zero, s5, 29
                  blt          a2, sp, main_10_0_t #branch for loop 0
                  slti         s11, ra, -1878
                  beq          s8, a0, 14f
                  lui          a5, 43484
                  srl          a1, sp, t2
                  addi         s8, a4, -448
                  ori          s11, t5, 575
                  slt          s10, s7, s4
                  blt          t4, s6, 10f
                  sltu         s6, s6, s8
                  sub          a7, s4, sp
                  blt          sp, s10, 20f
10:               beq          s9, t0, 27f
                  blt          zero, t2, 14f
                  srli         s11, a0, 26
                  sra          s5, a5, a0
14:               or           zero, t0, s3
                  sub          s4, t3, tp
                  bltu         s3, s4, 33f
                  auipc        s0, 589777
                  slt          zero, t2, t0
                  slli         ra, s5, 0
20:               xori         s2, s2, 846
                  xori         s9, a2, -1992
                  sltu         t2, s11, a2
                  xori         a3, a7, 343
                  slli         s9, gp, 7
                  srli         s3, ra, 3
                  sltiu        s7, s0, 2022
27:               srl          s6, s8, t5
                  sltu         gp, a3, t3
                  and          t4, t3, s10
                  bltu         a5, s2, 32f
                  or           s2, a7, a7
32:               sltiu        t2, s6, 160
33:               nop
                  srl          a3, a2, a2
                  srai         a6, s1, 7
                  bge          a2, a2, 39f
                  sltu         zero, s4, a1
                  lui          s8, 253664
39:               beq          s10, s6, 45f
                  lui          sp, 55376
                  bge          s4, t1, 60f
                  slli         s10, ra, 22
                  sll          tp, s7, t1
                  srl          a6, tp, ra
45:               slt          tp, a0, gp
                  add          zero, ra, s7
                  xor          a7, a1, s4
                  add          s5, s8, s3
                  bge          a4, s11, 64f
                  xor          s0, s5, s9
                  srai         s10, a4, 18
                  nop
                  blt          t1, sp, 63f
                  bgeu         a4, s7, 60f
                  slt          gp, ra, t1
                  or           s2, s4, s8
                  ori          t5, a4, -1669
                  blt          s5, a7, 74f
                  srai         ra, a3, 30
60:               andi         a1, a4, 1104
                  slt          t0, s5, a6
                  ori          s8, a1, 643
63:               and          a1, a3, s6
64:               sltiu        a5, s1, -1719
                  srli         gp, s11, 5
                  and          a3, t6, s2
                  blt          a2, ra, 71f
                  bltu         t0, s3, 88f
                  and          a2, t1, a5
                  slli         a5, s1, 14
71:               andi         a2, a2, -397
                  xor          gp, a6, t4
                  addi         s10, s3, -248
74:               blt          t1, a1, 94f
                  bltu         s11, a7, 82f
                  andi         a5, s5, 1498
                  auipc        s8, 488632
                  slli         t4, a2, 14
                  add          s5, t4, zero
                  srl          a5, s2, t2
                  xor          a7, a6, tp
82:               add          t0, ra, t0
                  bne          t6, gp, 90f
                  addi         a4, zero, -2 #init loop 1 counter
                  xor          s6, a2, t5
                  add          t6, a2, s4
                  addi         t0, zero, 17 #init loop 1 limit
main_1_1_t:       slt          s2, a4, a0
                  sll          a7, a4, t0
                  xor          s7, t0, t6
                  addi         a4, a4, 5 #update loop 1 counter
                  sra          s5, t0, a4
                  addi         a1, zero, -5 #init loop 0 counter
                  addi         t4, zero, -15 #init loop 0 limit
                  addi         s0, s0, 1967
main_1_0_t:       slti         s2, s7, 831
                  auipc        s10, 568597
                  addi         a1, a1, -5 #update loop 0 counter
                  lui          t5, 798586
                  bne          a1, t4, main_1_0_t #branch for loop 0
                  srl          a2, a1, s9
                  bltu         a4, t0, main_1_1_t #branch for loop 1
                  slli         s10, s7, 21
                  add          zero, a7, zero
                  auipc        s11, 505318
                  slt          ra, s3, a2
                  lui          s7, 890957
88:               sltiu        s11, sp, -901
                  slti         s10, a7, 866
90:               blt          t4, s4, 110f
                  xori         s7, ra, -1868
                  and          t5, a5, a7
                  sll          a7, t3, s2
94:               addi         t5, t6, 1746
                  srai         s5, s2, 2
                  blt          t1, s10, 99f
                  ori          a3, t3, 1831
                  and          gp, s1, a7
99:               sltiu        s7, s3, 680
                  sub          t4, t3, s5
                  and          zero, a4, a2
                  srai         s9, ra, 28
                  sltu         s4, s3, s4
                  blt          a5, a5, 109f
                  srai         s6, tp, 12
                  srl          a5, a1, a3
                  srli         sp, s8, 2
                  bne          s9, a2, 120f
109:              andi         s5, a5, 672
110:              beq          s1, s5, 124f
                  sra          a6, a2, tp
                  andi         t2, zero, -561
                  sra          t2, a4, t5
                  srli         a3, s5, 17
                  slti         s3, a1, 1313
                  srl          a7, t5, ra
                  xori         t5, s3, -280
                  bgeu         s2, s11, 129f
                  slti         gp, t4, 1189
120:              slt          t0, s11, s4
                  addi         s10, a6, 2015
                  slt          s9, tp, ra
                  addi         s11, a0, -854
124:              sub          s10, a5, a2
                  blt          t3, s5, 131f
                  and          a2, s7, a6
                  sll          t2, ra, s8
                  blt          s9, a5, 140f
129:              or           s4, s5, t1
                  sltu         t5, s4, a2
131:              or           s8, t1, a4
                  blt          a1, tp, 135f
                  bne          s2, s6, 147f
                  ori          s2, s7, -1043
135:              sub          s2, zero, s0
                  auipc        s2, 514866
                  bge          a3, s0, 155f
                  addi         ra, ra, -293
                  auipc        s7, 875022
140:              and          a4, a3, a2
                  ori          t2, t3, 356
                  srl          gp, t0, s3
                  add          s3, s6, s8
                  sll          a7, t6, s0
                  nop
                  addi         s4, gp, -1299
147:              slli         tp, s10, 0
                  ori          a6, s3, -172
                  ori          t6, t6, -1564
                  ori          a3, s11, -1775
                  sltiu        s2, s3, -183
                  sub          s10, zero, t2
                  addi         a2, s9, -1553
                  srli         t3, t1, 11
155:              bne          ra, t0, 159f
                  andi         t3, a0, -178
                  xori         s4, s6, -1427
                  slt          t3, t1, a5
159:              xori         t0, a0, -1851
                  beq          t0, a2, 163f
                  or           sp, a2, a1
                  slt          s0, t6, s1
163:              sll          a6, tp, a1
                  slti         sp, s10, -1466
                  nop
                  or           sp, a4, a7
                  sub          sp, s8, s2
                  ori          s10, t3, -694
                  andi         s7, s1, 90
                  sub          s5, s2, tp
                  sltiu        t2, s0, -594
                  slli         a2, t2, 4
                  bge          a3, s6, 193f
                  srli         s5, a0, 8
                  sltiu        t3, s5, -798
                  srai         a5, s5, 12
                  sra          s8, s11, t6
                  srl          t5, gp, s2
                  lui          s7, 96981
                  xori         sp, t4, 474
                  bne          s9, s1, 188f
                  sltu         s7, a0, a1
                  and          sp, a7, t2
                  beq          sp, t2, 202f
                  add          t0, s3, s7
                  bltu         s8, a4, 189f
                  and          s9, sp, s9
                  addi         t4, zero, -4 #init loop 0 counter
                  ori          s10, a7, 1579
                  sra          s6, a4, a0
                  srai         a5, a4, 16
                  addi         t0, zero, 6 #init loop 0 limit
                  andi         s3, s7, -1728
                  add          a5, s11, t6
                  add          t2, s5, gp
                  slt          ra, s4, a1
                  sub          s9, s3, t0
main_3_0_t:       sltiu        a3, a6, 1338
                  addi         t4, t4, 10 #update loop 0 counter
                  sltu         s7, a5, tp
                  sll          s7, gp, a3
                  srai         a1, a5, 3
                  sub          a1, t3, s9
                  nop
                  nop
                  add          a4, tp, a2
                  beq          t4, t0, main_3_0_t #branch for loop 0
                  slli         s6, t4, 19
188:              addi         s5, t2, 545
189:              srai         a7, s0, 29
                  lui          t3, 886603
                  slli         s5, s6, 0
                  bne          sp, s9, 196f
193:              blt          zero, s8, 200f
                  sra          s7, t4, zero
                  sll          s11, t5, s6
196:              bgeu         s2, t5, 202f
                  srl          gp, t1, s4
                  add          t4, zero, sp
                  sra          s5, s1, t5
200:              bgeu         s0, t2, 206f
                  sltiu        s2, ra, -1197
202:              lui          a1, 375202
                  bge          s7, a4, 219f
                  sll          s4, s5, t5
                  lui          s2, 18013
206:              slti         a4, t5, 1752
                  and          tp, a3, s6
                  and          t5, t2, s11
                  slt          s7, t4, s1
                  addi         a2, a7, -920
                  addi         a1, s7, 1642
                  bgeu         s8, sp, 229f
                  bge          gp, t6, 227f
                  srl          a7, s9, a0
                  lui          a2, 389648
                  slti         s6, s4, -196
                  nop
                  nop
219:              auipc        s9, 900252
                  or           a3, a1, s3
                  ori          s8, s10, -590
                  beq          a7, zero, 227f
                  blt          ra, a6, 243f
                  or           s11, a6, s5
                  sll          a1, s8, t5
                  bgeu         s1, s3, 246f
227:              slli         s9, a1, 0
                  sll          s9, tp, s1
229:              lui          s5, 574116
                  nop
                  srl          a4, a1, s9
                  nop
                  slti         s8, zero, 1295
                  beq          sp, s9, 237f
                  bgeu         a4, a4, 247f
                  andi         ra, t0, 307
237:              sll          s2, t3, s10
                  srli         a4, a5, 17
                  sub          s0, s5, a2
                  slli         tp, s9, 27
                  sub          s11, s7, a2
                  nop
243:              sltiu        a4, sp, -246
                  bne          t0, a1, 263f
                  addi         tp, t2, -479
246:              and          t0, tp, s5
247:              blt          t6, tp, 253f
                  bne          t5, s5, 259f
                  bgeu         s10, sp, 263f
                  or           s7, s2, s6
                  sra          s2, ra, gp
                  blt          s1, s5, 266f
253:              srl          a7, gp, a0
                  sll          t0, s3, t4
                  bgeu         s4, t2, 258f
                  and          s0, t3, s9
                  addi         s2, sp, 1228
258:              addi         s4, t6, 1987
259:              bgeu         s3, s1, 274f
                  ori          s8, ra, -1616
                  slli         t5, s10, 12
                  blt          a6, s1, 273f
263:              beq          sp, t6, 265f
                  bltu         s5, a5, 281f
265:              auipc        s4, 727736
266:              bne          t3, a7, 278f
                  beq          a6, s3, 277f
                  slti         t5, a4, 116
                  bne          s11, a6, 288f
                  lui          zero, 446317
                  srl          s5, s7, s5
                  sll          a3, s2, t2
273:              beq          a7, a5, 290f
274:              srli         t3, s4, 31
                  or           a7, t3, sp
                  srli         s10, t4, 28
277:              add          s10, a3, a2
278:              add          s4, s3, s6
                  bgeu         s5, t1, 293f
                  blt          a6, s7, 295f
281:              sra          s6, a5, t6
                  lui          a4, 193286
                  xor          zero, a0, s10
                  auipc        s3, 257253
                  sltu         s3, s2, zero
                  slti         a1, a6, -267
                  add          s8, s8, ra
288:              and          ra, zero, a0
                  nop
290:              srli         t0, a2, 7
                  auipc        t6, 755421
                  bge          s2, t2, 298f
293:              blt          t6, s7, 307f
                  srai         a7, s3, 28
295:              andi         s3, a4, -1527
                  or           t5, t1, zero
                  bne          a6, t3, 300f
298:              lui          s3, 550146
                  bltu         a7, a4, 302f
300:              bge          t4, s10, 307f
                  bne          s9, s2, 318f
302:              sub          t4, a1, a4
                  add          s8, sp, t4
                  slt          s5, tp, t1
                  bne          s9, s10, 317f
                  sltu         s8, s8, t2
307:              sra          a1, a5, a7
                  sltiu        s3, t2, -640
                  and          s7, s11, a6
                  nop
                  bge          s3, s1, 317f
                  srai         s0, a4, 24
                  bltu         a4, gp, 327f
                  blt          gp, s4, 332f
                  srai         t0, sp, 11
                  addi         a3, t2, 507
317:              andi         a6, t6, 1762
318:              slt          t0, s7, t3
                  slli         s4, t4, 27
                  addi         t0, zero, 4 #init loop 1 counter
                  ori          s10, ra, -638
                  addi         s3, zero, -20 #init loop 1 limit
                  lui          sp, 34354
                  auipc        tp, 639930
                  add          s7, s1, t4
                  or           s7, zero, s3
main_22_1_t:      slti         s9, a1, 1329
                  addi         t0, t0, -3 #update loop 1 counter
                  and          s5, t4, t3
                  sltu         a7, a3, s7
                  nop
                  addi         t2, zero, -6 #init loop 0 counter
                  ori          a3, zero, -1486
                  addi         ra, zero, 6 #init loop 0 limit
                  auipc        t3, 565937
                  sll          a3, s1, tp
main_22_0_t:      and          sp, s7, gp
                  sub          t4, s0, ra
                  addi         t2, t2, 8 #update loop 0 counter
                  nop
                  and          t3, a5, ra
                  bltu         t2, ra, main_22_0_t #branch for loop 0
                  sra          s10, t4, a2
                  add          s8, t3, t2
                  slt          t6, s8, a5
                  srai         a7, a5, 18
                  srai         a1, gp, 0
                  xor          t4, a7, t5
                  xori         t3, s11, 1738
                  bne          t0, s3, main_22_1_t #branch for loop 1
                  add          a2, s3, ra
                  sra          t2, a3, t2
                  ori          s7, s10, 1302
                  andi         s3, a5, -1394
                  beq          t0, s11, 343f
                  sll          t0, tp, a0
                  bltu         gp, s10, 336f
                  bge          s8, a0, 329f
327:              sra          s5, ra, t2
                  srli         s7, s6, 27
329:              slli         a2, t5, 2
                  ori          s0, a0, 274
                  sltiu        s10, t6, -1225
332:              srli         zero, a5, 24
                  ori          gp, a7, -934
                  add          s9, s7, a3
                  sra          t4, s11, t1
336:              andi         a2, s4, 1660
                  xori         t0, zero, -183
                  nop
                  andi         t2, t3, -1725
                  slti         t6, s9, 552
                  bgeu         t1, a3, 343f
                  nop
343:              lui          s8, 752985
                  blt          a7, a4, 347f
                  sra          s6, t5, a0
                  srai         zero, t4, 13
347:              bge          zero, t0, 351f
                  nop
                  srai         s11, s1, 14
                  xori         a6, s5, -1659
351:              slti         t3, a6, -276
                  or           t6, sp, s2
                  xor          a6, t0, a2
                  nop
                  xor          t6, s0, zero
                  slli         t5, t4, 25
                  sltiu        sp, s11, 1149
                  sll          s8, s1, s5
                  srl          t6, ra, s6
                  xor          s9, a3, zero
                  sra          s11, t0, a7
                  and          t0, s10, t2
                  beq          s10, a6, 373f
                  addi         s9, t4, -1821
                  or           ra, a3, t1
                  xor          a1, s8, s1
                  ori          ra, a7, 1424
                  xori         a7, zero, -1342
                  beq          t3, a1, 373f
                  bltu         a3, s6, 377f
                  srli         a6, s0, 10
                  slt          s6, a7, a1
373:              sll          sp, a7, a7
                  bne          t0, s9, 394f
                  ori          s6, tp, -634
                  xor          gp, s2, t5
377:              ori          a4, s8, -1717
                  srai         a2, a3, 14
                  bgeu         a6, t5, 391f
                  slli         s11, s8, 17
                  srl          s2, s5, a4
                  sra          s11, t5, s10
                  sltiu        t0, gp, 1913
                  lui          ra, 615953
                  bgeu         s4, a6, 396f
                  andi         s7, s10, -1858
                  sltu         a1, s9, s10
                  sltiu        a4, t0, 2017
                  bge          ra, s3, 405f
                  beq          s6, a7, 396f
391:              xori         ra, tp, -563
                  lui          zero, 474992
                  lui          a1, 157198
394:              sra          ra, a2, gp
                  sltu         t2, ra, t1
396:              add          s9, s2, a3
                  slt          s7, a3, a7
                  sra          a3, a1, ra
                  addi         a6, a6, -1107
                  sra          a7, a5, s11
                  xori         t3, t1, -1604
                  srl          s0, s8, s10
                  sll          t2, t5, tp
                  andi         s2, a5, -1376
405:              or           s4, a6, t5
                  beq          t4, s4, 411f
                  xori         s5, a2, 2018
                  lui          gp, 708511
                  slti         s7, t5, -185
                  slt          t4, s3, t6
411:              bgeu         s2, a1, 431f
                  srl          ra, t6, s3
                  srli         tp, s5, 29
                  or           a4, a4, t6
                  auipc        tp, 422
                  nop
                  sra          s10, sp, t1
                  and          s3, s2, s2
                  auipc        a4, 499597
                  auipc        s3, 977861
                  sltiu        s2, gp, -1737
                  nop
                  srai         a7, ra, 8
                  beq          tp, s6, 430f
                  andi         t0, s9, 601
                  srli         tp, s9, 24
                  bne          s5, s10, 441f
                  nop
                  add          s7, a1, a1
430:              sltu         s3, zero, t5
431:              auipc        gp, 894756
                  sra          s7, s1, t6
                  srai         s7, tp, 13
                  sll          a4, t4, s10
                  or           s7, s5, zero
                  nop
                  sltu         s3, a2, t5
                  sltiu        s2, t2, 1120
                  and          gp, t4, a5
                  bne          s0, t4, 454f
441:              sll          t5, s6, s11
                  srli         zero, s7, 6
                  srl          s6, a1, t3
                  srl          s2, s10, a7
                  add          s10, a6, s7
                  sub          a3, a5, t2
                  sub          s9, s6, a1
                  nop
                  slt          t2, gp, s7
                  sltu         s7, s11, s6
                  beq          t1, s8, 457f
                  andi         gp, t0, -29
                  lui          s10, 79237
454:              slt          s11, s10, s6
                  slti         ra, a2, -2001
                  xori         s5, a6, 317
457:              slt          s2, t6, a7
                  xori         s3, t0, 1272
                  srai         s7, s1, 19
                  srli         s0, s7, 7
                  bgeu         a1, a6, 464f
                  or           s9, zero, a6
                  and          ra, t3, a2
464:              lui          s3, 280163
                  sltu         a7, zero, s1
                  beq          a2, s5, 484f
                  slli         ra, tp, 26
                  sll          s7, t4, s0
                  slti         a7, s0, 1000
                  bne          s9, a6, 473f
                  srl          s11, t2, t1
                  srli         gp, s5, 26
473:              xori         s5, gp, 912
                  blt          s3, t2, 476f
                  lui          tp, 647082
476:              or           t5, s8, a0
                  addi         a3, a2, 594
                  sra          t4, sp, a1
                  nop
                  srl          s9, s1, s9
                  bne          a7, a0, 501f
                  bltu         s5, a3, 502f
                  bge          sp, s1, 495f
484:              or           tp, t0, zero
                  sltiu        s9, t1, 1401
                  slti         t6, t3, -309
                  sub          a4, sp, a5
                  blt          s6, t2, 505f
                  beq          s7, s6, 493f
                  nop
                  or           t3, s6, a1
                  srai         sp, s3, 28
493:              lui          s10, 310016
                  bgeu         a2, sp, 498f
495:              lui          t3, 599226
                  sltiu        t3, s5, -361
                  bltu         s5, s9, 509f
498:              andi         s9, s9, -1850
                  xori         s4, t2, 274
                  xori         zero, s9, 1029
501:              andi         a7, zero, -1687
502:              bgeu         a5, a3, 519f
                  bgeu         t0, a1, 506f
                  nop
505:              sra          s4, a1, a1
506:              srl          s11, t5, t4
                  srl          t3, t1, s1
                  xori         gp, s1, 1713
509:              sltu         s4, s11, t1
                  blt          s0, s2, 530f
                  slti         a3, s3, 2019
                  srl          a6, gp, a3
                  slt          t6, t1, s6
                  or           s3, s7, t6
                  slli         s11, zero, 21
                  sub          s2, a0, t3
                  nop
                  sltu         s2, zero, sp
519:              srai         s4, a0, 26
                  slli         t3, s7, 12
                  addi         zero, a4, -1551
                  srai         s6, a5, 11
                  xori         t0, a3, 1068
                  sltiu        t5, s4, 1946
                  addi         s3, a5, 1536
                  or           s8, s1, a6
                  slt          s7, s1, t2
                  bge          gp, a4, 543f
                  andi         ra, t5, -481
530:              bge          s8, s8, 537f
                  slt          t0, s9, a6
                  bge          a0, s10, 551f
                  srli         a1, t2, 14
                  srli         s0, s5, 31
                  bge          a7, gp, 538f
                  addi         s2, s6, 1553
537:              andi         s3, ra, 1397
538:              and          tp, s7, zero
                  sra          s7, a0, s3
                  andi         a5, s0, -1147
                  sltu         tp, s10, t6
                  sll          s4, a5, t5
543:              srai         gp, s4, 19
                  bgeu         s0, a2, 560f
                  auipc        s2, 265349
                  srai         s2, s7, 14
                  xori         sp, a0, -1362
                  andi         s6, s0, 21
                  srl          a1, a2, gp
                  add          s8, s10, s6
551:              nop
                  beq          a1, a3, 558f
                  slli         s8, t3, 14
                  or           s8, t4, a0
                  auipc        t2, 385453
                  slli         s7, a2, 10
                  sra          t6, a5, s0
558:              blt          t3, a4, 563f
                  sltu         t5, tp, tp
560:              slli         a2, t1, 2
                  andi         gp, a4, 685
                  lui          s0, 510505
563:              sra          s7, s6, t3
                  sub          s3, a3, s9
                  beq          s7, s4, 575f
                  or           t6, a7, zero
                  lui          gp, 203917
                  srl          tp, s0, a2
                  slt          a5, s2, s0
                  andi         t0, s0, 1249
                  andi         s3, t4, -1447
                  add          tp, s6, gp
                  sll          t3, t4, s11
                  beq          t1, a4, 588f
575:              slt          s5, s8, s6
                  add          t3, sp, a7
                  or           s6, a6, t2
                  sub          t0, t2, a1
                  blt          zero, s10, 586f
                  slli         s10, t6, 21
                  sltiu        a5, s4, 652
                  slti         t2, t5, 1757
                  and          a4, zero, t5
                  beq          t0, t0, 595f
                  sra          a3, a4, t1
586:              nop
                  or           s4, t4, a6
588:              add          a6, s10, t2
                  slt          a5, a5, s11
                  sra          s11, s6, t4
                  slli         a6, t1, 7
                  xor          zero, a7, s9
                  andi         s3, s11, -907
                  sll          a6, s5, a7
595:              andi         a4, gp, -206
                  lui          tp, 954348
                  srli         a7, a0, 22
                  la           t6, sub_1
                  lui          a2, 440147
                  srl          tp, t5, t2
                  addi         t6, t6, 225
                  slli         zero, s8, 11
                  nop
                  bltu         a0, t5, main_j2 #branch to jump instr
                  sltiu        s5, s2, 1316
                  srl          s0, t3, s2
main_j2:          jalr         ra, t6, -225 #jump main -> sub_1
                  bge          s11, t4, 608f
                  auipc        s5, 526141
                  beq          t6, t2, 619f
                  bge          sp, a2, 612f
                  srl          t0, s7, a5
                  xori         s10, s2, 559
                  sll          s9, tp, ra
                  auipc        a7, 1044238
                  andi         tp, s6, 1126
                  sra          s5, a5, t4
                  ori          a6, s3, 160
608:              slt          s10, a5, s7
                  bgeu         a4, t1, 629f
                  sltu         t3, a2, s10
                  sra          s9, s10, s7
612:              bge          a5, a5, 628f
                  or           s5, s4, a1
                  beq          s4, s2, 628f
                  sra          a6, a5, t3
                  lui          t0, 632798
                  bge          a4, t3, 631f
                  blt          ra, s4, 636f
619:              blt          s2, a4, 625f
                  sltu         t5, s3, ra
                  xor          zero, a7, t3
                  xori         a6, s11, -1056
                  sltu         s8, a2, t2
                  ori          t3, t3, 678
625:              srl          tp, a4, a3
                  beq          s3, s7, 632f
                  sltu         s2, s3, s11
628:              ori          t0, a7, -125
629:              srli         sp, t5, 0
                  slti         tp, s9, -594
631:              bgeu         s8, t4, 636f
632:              lui          t3, 995730
                  srai         gp, a0, 27
                  addi         a4, s9, -532
                  beq          t1, a3, 638f
636:              andi         s5, t3, 756
                  xor          s8, gp, s0
638:              bgeu         a0, t0, 649f
                  auipc        t4, 76435
                  lui          a6, 433206
                  sra          s2, zero, s7
                  xor          ra, t5, s1
                  bge          s5, s0, 646f
                  srl          s3, s1, s7
                  auipc        s10, 372556
646:              andi         t2, s3, 642
                  slti         ra, t5, -971
                  slti         a6, a3, -713
649:              sltu         sp, a1, t0
                  sub          gp, s5, s0
                  xor          gp, t0, a2
                  add          s0, s4, a1
                  sltiu        a7, s10, 1017
                  sub          a1, t3, t5
                  sltiu        s10, s1, -204
                  slli         s6, t3, 18
                  sll          a5, t0, a2
                  sub          s10, t0, zero
                  srl          t2, a6, t5
                  la           t2, sub_1
                  or           a2, s2, s8
                  srli         a1, s9, 17
                  addi         t2, t2, -22
                  or           a2, t6, a2
                  bne          t6, s7, main_j1 #branch to jump instr
                  srl          s5, s8, a1
                  sltu         t4, tp, s11
main_j1:          jalr         ra, t2, 22 #jump main -> sub_1
                  blt          s9, a2, 667f
                  add          s6, a5, s8
                  andi         s10, s6, -1550
                  slli         s9, s3, 15
                  blt          s10, t4, 666f
                  blt          s5, t0, 682f
666:              or           t0, zero, s11
667:              srai         s3, s10, 25
                  srai         s9, t1, 13
                  slti         s9, s9, 1454
                  add          tp, a7, t1
                  srai         t6, s8, 17
                  or           ra, s7, t5
                  lui          t4, 167935
                  srli         a5, s3, 13
                  ori          s11, t3, 1568
                  sub          sp, a1, a7
                  beq          sp, s4, 697f
                  lui          t2, 444703
                  beq          s6, a6, 683f
                  xor          t4, s1, t1
                  ori          s7, s3, -119
682:              lui          ra, 240186
683:              bgeu         sp, s6, 698f
                  slt          a1, s7, a4
                  sub          s5, t1, s3
                  slli         gp, ra, 11
                  sltu         t5, t4, t5
                  addi         s4, a6, -1035
                  ori          a4, a0, -197
                  nop
                  srli         s7, t1, 29
                  slli         t3, t3, 12
                  andi         s5, s8, 255
                  beq          t3, a4, 711f
                  slti         s9, t2, -255
                  sltu         a4, a2, t5
697:              auipc        s0, 621327
698:              sub          s4, a1, a5
                  slli         sp, t2, 14
                  and          s8, zero, sp
                  xor          s2, a7, t0
                  bltu         t1, a3, 709f
                  nop
                  and          ra, s2, a5
                  sra          a5, s3, gp
                  srl          s10, a6, tp
                  add          s10, ra, s2
                  srli         s5, a2, 26
709:              nop
                  slt          t5, a5, s2
711:              bgeu         s4, s3, 717f
                  bge          a7, s2, 716f
                  sub          s5, a6, a5
                  bltu         s11, s5, 726f
                  bgeu         s2, t4, 718f
716:              sll          s11, s3, s10
717:              sll          a3, gp, a6
718:              sub          s9, a3, s7
                  lui          a2, 1031281
                  sll          s0, t4, s0
                  nop
                  sra          s2, s1, s7
                  xor          t2, s8, t5
                  srli         a6, a4, 9
                  or           s9, gp, a1
726:              srli         a6, zero, 30
                  srli         a2, a7, 17
                  bge          a3, a6, 742f
                  xor          s6, a3, s10
                  auipc        t6, 467916
                  srl          s2, s6, s2
                  bltu         tp, t4, 743f
                  beq          a6, s10, 736f
                  lui          a3, 202147
                  sra          a1, a3, gp
736:              sub          a2, a3, s7
                  slli         sp, s11, 30
                  blt          t0, a3, 757f
                  xori         s9, s10, 556
                  sra          s10, s0, s2
                  slli         zero, s2, 22
742:              addi         gp, s6, -1727
743:              bltu         t3, s1, 753f
                  bgeu         a3, s9, 764f
                  sltiu        t5, gp, 1151
                  xor          a5, a2, t3
                  ori          s0, s2, 527
                  sltiu        s7, t6, 271
                  sltiu        t3, s11, 1378
                  bltu         a2, s3, 752f
                  lui          a1, 599930
752:              bltu         t5, gp, 772f
753:              srl          t6, t4, t1
                  sltiu        s11, a6, 789
                  srl          a4, a3, a7
                  bge          s3, s8, 770f
                  addi         t3, zero, 5 #init loop 0 counter
                  addi         s7, gp, 191
                  addi         s5, zero, 17 #init loop 0 limit
                  slli         ra, t1, 23
main_7_0_t:       ori          t2, tp, -436
                  slti         t5, s5, -152
                  addi         t3, t3, 6 #update loop 0 counter
                  slli         s3, s1, 10
                  sra          s2, s3, a1
                  beq          t3, s5, main_7_0_t #branch for loop 0
                  sltiu        tp, a5, -872
757:              bltu         t3, gp, 762f
                  bne          t0, t6, 773f
                  srai         s6, t6, 9
                  nop
                  slli         s8, s6, 26
762:              sub          a5, gp, a3
                  nop
764:              add          s11, tp, a4
                  sltu         s3, s10, a6
                  slli         s4, zero, 21
                  sltu         a1, a2, t4
                  blt          a6, zero, 774f
                  andi         s7, t6, 903
770:              and          s7, s4, ra
                  srai         t2, s9, 0
772:              andi         ra, a6, 477
773:              bgeu         a2, t0, 787f
774:              sra          a7, s0, s6
                  ori          zero, a5, 218
                  ori          s2, a3, -102
                  xor          s10, sp, zero
                  bge          t1, a1, 781f
                  sltu         s0, t5, t6
                  slt          zero, s2, s1
781:              lui          sp, 343878
                  srl          s9, s1, a0
                  nop
                  sltiu        zero, tp, 1927
                  sub          s10, s8, t3
                  bge          t3, s9, 798f
787:              sltiu        s8, s2, 1003
                  slli         s5, a3, 21
                  blt          a2, s10, 792f
                  bgeu         gp, s4, 801f
                  sltu         zero, s7, a6
792:              bne          zero, s10, 803f
                  srli         t3, s2, 16
                  and          t4, s0, sp
                  bge          s1, a2, 815f
                  auipc        s2, 90952
                  blt          a6, zero, 813f
798:              ori          s4, s8, 1797
                  slt          s0, s5, a5
                  sra          tp, s6, s3
801:              bge          s7, t4, 804f
                  andi         s0, s4, -1864
803:              slti         t5, t5, 2044
804:              addi         a4, a5, 935
                  slti         t0, a5, -357
                  sub          s10, t1, t2
                  nop
                  bge          a0, s4, 820f
                  bltu         a0, a2, 815f
                  slli         a5, s11, 31
                  slli         gp, tp, 31
                  bgeu         s11, a7, 822f
813:              andi         a5, sp, 719
                  sll          s11, a6, a5
815:              andi         t5, ra, 735
                  bgeu         t6, zero, 819f
                  and          t2, t3, s2
                  bgeu         a6, s8, 837f
819:              srai         a6, a2, 19
820:              xor          s2, s3, s4
                  auipc        s6, 557460
822:              addi         a7, t6, -41
                  slli         a1, sp, 7
                  nop
                  or           t4, a6, t6
                  andi         t6, t0, -1997
                  and          s9, a5, s3
                  sra          s8, ra, s2
                  auipc        t6, 181130
                  slt          a6, s5, a5
                  ori          a1, tp, 304
                  and          t5, t4, a1
                  srli         tp, a2, 10
                  srli         s7, a6, 8
                  xori         t5, a7, 62
                  sub          a6, t4, s6
837:              slt          t6, t0, a0
                  xor          zero, sp, zero
                  bne          zero, t3, 856f
                  slli         zero, s9, 3
                  bltu         a2, s3, 858f
                  lui          a3, 510775
                  beq          t0, t1, 847f
                  xor          t4, t5, s0
                  bltu         zero, t5, 859f
                  or           gp, s9, a6
847:              xori         t4, a6, 1177
                  slti         a1, s11, 29
                  bltu         ra, s6, 867f
                  addi         tp, s11, -38
                  or           a4, ra, a2
                  or           s9, s5, t1
                  add          gp, sp, t3
                  sltu         a1, s2, s11
                  sll          t4, s2, s1
856:              and          a5, a5, a0
                  or           t3, t0, a6
858:              srai         t6, s9, 24
859:              lui          t2, 599981
                  sltu         tp, s6, s9
                  srl          ra, s1, a1
                  sra          s2, s10, s10
                  nop
                  bge          s3, zero, 871f
                  sltiu        a1, tp, 442
                  ori          t2, a7, 1333
867:              sll          tp, a5, a6
                  bne          s1, sp, 872f
                  slti         s3, s1, 1709
                  lui          s9, 890658
871:              sltiu        s8, s2, -1092
872:              sra          sp, a1, gp
                  sub          t3, t6, t4
                  blt          a6, s0, 881f
                  andi         t0, t6, -1188
                  sub          t4, t3, a4
                  slli         t5, a2, 0
                  nop
                  auipc        a5, 651686
                  auipc        sp, 866156
881:              blt          a6, a4, 887f
                  auipc        s5, 860817
                  bne          t2, a4, 887f
                  xori         tp, s2, 949
                  and          sp, a1, t3
                  bltu         t1, t6, 892f
887:              beq          t4, a0, 892f
                  slli         s4, sp, 15
                  srli         a3, s3, 18
                  beq          s4, gp, 902f
                  nop
892:              addi         t6, a2, 471
                  auipc        zero, 183926
                  lui          s6, 813508
                  beq          t5, t6, 915f
                  sra          t2, a2, s1
                  slli         a5, s8, 8
                  xori         s8, a4, 480
                  lui          t6, 666415
                  srli         s11, a2, 29
                  xor          gp, t0, s6
902:              bne          a0, s8, 906f
                  and          t0, a6, a0
                  slti         a3, s1, -359
                  srai         a3, a2, 19
906:              sltiu        s8, t5, -26
                  slt          t0, sp, ra
                  sll          t5, a5, ra
                  slt          t5, a4, s11
                  bltu         a7, a7, 913f
                  xor          t0, t5, s10
                  sltu         tp, a7, t0
913:              auipc        t2, 384765
                  slli         a1, sp, 31
915:              sub          ra, t2, s1
                  sltiu        a7, s10, 757
                  sltu         gp, s11, t4
                  bgeu         a2, a7, 934f
                  sll          s3, a7, sp
                  add          s3, s10, sp
                  slti         a4, t3, 785
                  lui          s7, 147256
                  addi         ra, s7, 644
                  beq          a7, s0, 939f
                  nop
                  slti         a5, s7, 1702
                  slt          a3, a6, t6
                  and          s4, a5, tp
                  srai         t4, gp, 9
                  bgeu         a4, s10, 942f
                  bgeu         a4, t1, 942f
                  ori          t2, s11, -454
                  blt          ra, t1, 939f
934:              srli         s6, t0, 11
                  add          s4, t3, s2
                  srli         ra, t4, 23
                  srai         t3, a5, 26
                  sll          t2, a3, s3
939:              sra          tp, t1, t4
                  or           a7, ra, t3
                  xor          s2, a1, sp
942:              srai         t3, t2, 22
                  ori          s0, a6, -97
                  srl          a7, a1, a3
                  ori          s6, a2, -1758
                  sub          s0, t5, a6
                  add          a3, t5, s5
                  andi         a6, tp, -534
                  srli         s6, a5, 18
                  bltu         s7, sp, 953f
                  slli         t2, s4, 2
                  bltu         s8, t4, 955f
953:              bne          t0, t0, 970f
                  bltu         t3, ra, 973f
955:              xor          t4, a4, t3
                  addi         gp, s4, -502
                  bge          s3, s1, 971f
                  slli         sp, s6, 27
                  sltiu        s2, s1, 213
                  and          t4, s9, s6
                  blt          gp, gp, 967f
                  andi         s2, s0, -1549
                  slli         t6, t0, 12
                  sltu         s11, s8, t3
                  addi         s3, s0, 40
                  xori         ra, t2, 1140
967:              srli         s8, a0, 19
                  andi         s11, a5, 496
                  xori         zero, a6, 982
970:              srai         sp, zero, 26
971:              sltu         t4, t2, a5
                  xori         s10, s11, -1982
973:              blt          a2, s9, 980f
                  sltiu        s0, s4, 1993
                  nop
                  sltu         a3, a4, s6
                  sub          s4, a2, t6
                  ori          s6, t6, 1679
                  lui          gp, 1037719
980:              ori          a3, t0, 641
                  bltu         ra, a1, 992f
                  slti         s7, a3, 383
                  and          a6, t4, s6
                  addi         s8, a7, 503
                  nop
                  sra          sp, t2, t1
                  bltu         a7, t2, 1007f
                  blt          zero, sp, 1006f
                  sra          t2, t4, a0
                  addi         s8, a7, 475
                  bge          s10, s1, 1011f
992:              srli         ra, s11, 4
                  andi         t2, t5, -103
                  bgeu         a6, s0, 1004f
                  auipc        zero, 556690
                  bge          t2, t5, 1010f
                  sll          s7, a6, a1
                  bltu         a1, t5, 1005f
                  bne          s1, s4, 1013f
                  xori         gp, a6, 68
                  sra          t6, a5, s4
                  srli         a1, gp, 1
                  srl          s9, s7, t6
1004:             xori         a4, t4, 1773
1005:             xor          s2, t0, s6
1006:             srai         t5, s8, 6
1007:             sra          t4, t0, a1
                  srli         a1, a5, 2
                  slli         t6, t2, 17
1010:             sll          sp, a5, t3
1011:             sll          a1, t2, a7
                  sll          s5, t6, a7
1013:             lui          sp, 582320
                  sltu         t4, a5, s8
                  or           a4, s7, s5
                  sub          sp, s0, a7
                  slt          t2, sp, t5
                  bgeu         zero, s4, 1035f
                  bge          t6, s5, 1022f
                  lui          a5, 968582
                  srli         t0, a7, 25
1022:             ori          s10, a7, 1927
                  sltiu        tp, a0, 1918
                  bgeu         a4, a0, 1026f
                  srl          s3, a1, s1
1026:             bgeu         s11, t0, 1044f
                  lui          a1, 153306
                  bge          a7, t5, 1039f
                  bne          ra, s0, 1046f
                  sub          s5, zero, t6
                  auipc        s10, 486154
                  sub          gp, s6, s10
                  sub          a2, a7, s2
                  lui          s3, 148054
1035:             slti         a4, t2, -1355
                  sltu         s10, a7, a6
                  addi         a5, t6, 1976
                  slti         t4, t5, 517
1039:             srl          s7, t4, gp
                  and          tp, s7, t1
                  or           s3, ra, a2
                  sra          s7, s1, a5
                  blt          t5, t3, 1059f
1044:             add          t6, a2, s5
                  srl          sp, a1, s7
1046:             srli         t5, ra, 21
                  beq          s7, t6, 1067f
                  ori          ra, s2, -779
                  xor          t4, a1, t2
                  add          t4, a6, a1
                  sra          s5, s3, t1
                  bgeu         a7, t0, 1056f
                  slt          tp, s9, s5
                  bltu         s6, s7, 1068f
                  xor          s7, s0, a7
1056:             slt          zero, t1, gp
                  beq          a6, a3, 1061f
                  addi         a1, t3, -800
1059:             and          zero, gp, t3
                  srai         a2, s3, 3
1061:             sra          t3, a1, a1
                  bltu         s11, t1, 1077f
                  sltiu        s4, a6, -1414
                  bgeu         s6, s1, 1071f
                  sra          s4, a1, a2
                  sll          ra, t3, ra
1067:             srl          a4, s1, a5
1068:             add          t5, t4, a3
                  ori          s7, s7, -671
                  srai         s6, a2, 13
1071:             add          t6, t6, a2
                  beq          t1, t5, 1086f
                  bltu         a2, a5, 1078f
                  xori         gp, a3, 1844
                  lui          tp, 515465
                  srli         s5, t2, 11
1077:             blt          s1, s5, 1079f
1078:             ori          zero, t4, -871
1079:             bgeu         a7, a3, 1082f
                  nop
                  srai         t4, gp, 18
1082:             and          a7, s8, t6
                  andi         s0, a0, 830
                  add          s0, gp, a7
                  blt          t5, a4, 1099f
1086:             ori          a3, t5, 4
                  andi         t5, gp, 1313
                  and          s10, s11, t3
                  slt          s10, s7, s9
                  srai         s2, s5, 22
                  or           t5, t6, s11
                  bne          t5, a5, 1099f
                  ori          t5, a1, 1601
                  add          zero, a7, zero
                  bgeu         t4, a1, 1101f
                  sltu         s8, gp, gp
                  bne          s9, t2, 1117f
                  beq          a5, s0, 1108f
1099:             bgeu         ra, gp, 1119f
                  xori         t6, s9, 890
1101:             nop
                  bge          t3, t3, 1108f
                  bgeu         t5, s11, 1106f
                  beq          t6, s5, 1115f
                  auipc        t6, 82240
1106:             sub          t2, zero, t2
                  srl          a7, s3, a7
1108:             xor          zero, t2, s4
                  blt          s9, s7, 1126f
                  srli         s0, ra, 17
                  addi         s9, t0, -768
                  sub          gp, t3, t0
                  srai         gp, s8, 12
                  srli         t5, s1, 28
1115:             sll          a5, tp, ra
                  sll          gp, t0, t1
1117:             bltu         tp, s10, 1120f
                  bge          zero, s1, 1137f
1119:             ori          s7, a4, 1853
1120:             sltiu        s5, t4, -212
                  lui          a5, 138050
                  bne          s8, a2, 1134f
                  sll          a7, s11, s10
                  bne          a1, s2, 1127f
                  sra          s4, t0, s6
1126:             xor          a6, a4, gp
1127:             add          a4, s10, t4
                  sltiu        t5, a3, -1546
                  nop
                  bne          a1, t1, 1136f
                  slti         zero, t5, -825
                  bgeu         s10, t6, 1144f
                  bgeu         t0, s0, 1151f
1134:             slt          s6, t6, s0
                  srl          a1, t0, a6
1136:             srai         s9, s6, 11
1137:             srai         zero, t6, 7
                  slti         a3, t1, -90
                  sltu         s6, s2, a3
                  slti         tp, tp, 402
                  and          s11, t4, t0
                  addi         s0, a6, -1852
                  bne          a0, s5, 1150f
1144:             addi         s6, zero, -1946
                  sub          s8, a6, s4
                  nop
                  srli         s2, tp, 20
                  or           s0, gp, s11
                  sltu         a6, zero, s1
1150:             sub          t3, tp, s10
1151:             sub          a6, t2, a3
                  and          t6, s0, s1
                  sra          a7, s11, s1
                  lui          t6, 930771
                  addi         tp, t2, 597
                  slti         s11, t0, 1988
                  sub          a2, t4, s10
                  or           t2, tp, s2
                  srai         zero, t5, 2
                  sll          s4, s6, s9
                  slt          s5, sp, a4
                  nop
                  slli         s2, t6, 27
                  bne          s11, a2, 1167f
                  slli         a4, t2, 4
                  lui          sp, 15257
1167:             nop
                  srai         s11, a2, 18
                  sltiu        s10, t3, -1916
                  srai         t0, gp, 11
                  and          s9, zero, a2
                  sra          t5, s9, s10
                  nop
                  add          a5, zero, a4
                  beq          s8, a4, 1179f
                  ori          t3, t5, -166
                  addi         s10, t5, -1957
                  bne          gp, t6, 1181f
1179:             lui          s0, 307738
                  slti         s9, s2, 388
1181:             blt          a0, t5, 1184f
                  sll          sp, s4, s4
                  bgeu         t4, s9, 1189f
1184:             andi         t0, s1, 2005
                  sltiu        a1, s10, -1394
                  blt          a3, s10, 1206f
                  srl          tp, t2, t4
                  sra          s8, s9, sp
1189:             xori         s7, a7, 527
                  add          t3, s9, s9
                  bgeu         t3, t5, 1206f
                  bne          s0, s7, 1212f
                  beq          t0, t0, 1204f
                  blt          a4, s7, 1211f
                  andi         a6, s5, 708
                  slli         s2, s0, 21
                  beq          tp, s2, 1211f
                  and          s8, tp, ra
                  xor          a1, a5, a3
                  lui          s10, 30040
                  auipc        t3, 657287
                  srai         a7, t3, 9
                  beq          t6, a6, 1209f
1204:             sra          t2, s8, s11
                  sll          s5, a0, gp
1206:             bgeu         s6, s9, 1218f
                  bne          s7, t6, 1224f
                  or           s0, tp, tp
1209:             srai         a1, s5, 20
                  bltu         t3, t0, 1213f
1211:             addi         s3, s8, 1842
1212:             sll          tp, gp, t2
1213:             blt          a4, a0, 1219f
                  slti         s2, s11, 302
                  andi         a4, a2, -362
                  slt          s4, s3, t6
                  sra          t2, zero, a6
1218:             sll          t3, s2, sp
1219:             bne          s0, t0, 1233f
                  srl          s7, a2, a1
                  srli         s3, a0, 1
                  slt          tp, a5, t2
                  ori          t2, t4, -619
1224:             srli         s0, s11, 13
                  blt          a3, s4, 1227f
                  ori          t4, t2, 513
1227:             slli         s4, t6, 13
                  lui          t2, 803448
                  ori          s5, s5, 581
                  bge          t2, s4, 1244f
                  sub          t5, s8, t0
                  xori         s8, s4, 661
1233:             andi         t5, t3, -1733
                  bge          s8, s4, 1254f
                  bne          t0, tp, 1242f
                  bge          gp, s3, 1248f
                  sub          zero, s9, s5
                  bltu         s11, t2, 1257f
                  bne          s11, s6, 1255f
                  addi         ra, s5, 1096
                  or           a1, t5, t1
1242:             srl          s2, a3, t6
                  beq          tp, s4, 1248f
1244:             srli         ra, t5, 10
                  xor          gp, sp, a5
                  add          t3, s8, sp
                  and          s2, s7, s4
1248:             nop
                  bne          a1, s1, 1259f
                  beq          s5, s0, 1254f
                  or           a4, s4, s0
                  sltu         s0, s8, s4
                  lui          a3, 857228
1254:             bge          t5, a3, 1265f
1255:             slt          gp, a5, s4
                  bltu         zero, s5, 1259f
1257:             ori          t6, a7, -156
                  slti         a7, ra, 1077
1259:             addi         gp, a6, -1284
                  xori         a5, a1, -938
                  sub          s7, s7, a1
                  sub          t0, a0, gp
                  ori          tp, a6, -307
                  bne          t2, t2, 1275f
1265:             srai         s6, a2, 21
                  sltu         s7, t4, t5
                  xori         sp, s3, -913
                  sra          s3, s1, ra
                  addi         a6, t5, -1261
                  lui          s5, 326865
                  sltiu        s7, a5, 1055
                  addi         s5, t2, -322
                  sltu         a3, s10, s3
                  blt          t1, s2, 1280f
1275:             beq          ra, s5, 1289f
                  xori         a5, a7, -1456
                  auipc        s4, 534458
                  sub          zero, t6, t5
                  srli         t6, ra, 26
1280:             xor          s2, a1, t6
                  slli         t5, s10, 29
                  addi         s6, zero, 10 #init loop 0 counter
                  addi         t3, zero, 14 #init loop 0 limit
main_29_0_t:      add          a3, a4, s10
                  addi         s6, s6, 5 #update loop 0 counter
                  bltu         s6, t3, main_29_0_t #branch for loop 0
                  lui          gp, 863966
                  sll          s2, a1, s0
                  sra          a3, zero, a6
                  xor          s7, a6, s5
                  beq          s0, gp, 1288f
                  ori          s5, a4, -28
                  bge          s5, s4, 1298f
1288:             srai         a2, t1, 3
1289:             lui          s7, 605269
                  beq          a3, t6, 1309f
                  beq          t5, s0, 1308f
                  slt          s5, s5, ra
                  slti         a2, t2, 1825
                  slt          a2, gp, a1
                  srl          s4, s0, t4
                  and          s4, ra, s7
                  lui          s7, 837251
1298:             xor          zero, a0, t4
                  sll          a1, s9, t6
                  bltu         s11, zero, 1303f
                  bne          s0, s7, 1303f
                  bge          t0, t3, 1314f
1303:             sra          tp, a6, sp
                  sltu         s2, a4, a1
                  srli         a5, t1, 3
                  add          s4, t2, t0
                  sll          s8, t5, t1
1308:             sll          zero, t1, s0
1309:             ori          sp, t4, 12
                  sll          s6, s2, a6
                  sub          a6, a2, a5
                  bgeu         tp, sp, 1332f
                  andi         sp, s8, -1829
1314:             sll          s4, ra, t6
                  andi         ra, a0, -809
                  lui          zero, 549205
                  ori          t0, s4, 1359
                  bne          gp, gp, 1324f
                  bltu         s4, t1, 1331f
                  lui          a5, 568804
                  srl          t6, s4, sp
                  and          a3, a6, a3
                  ori          tp, s8, 1075
1324:             xori         a1, s0, -668
                  bgeu         t5, s4, 1345f
                  xori         s11, a2, 530
                  sub          a7, s9, a7
                  addi         a1, s4, -1061
                  add          s2, a6, a3
                  sub          s9, s8, s9
1331:             slti         a4, a3, -38
1332:             sub          s2, a1, a0
                  bltu         s6, a2, 1351f
                  xor          t4, gp, a2
                  sltiu        s11, s9, 1650
                  slli         s6, s7, 17
                  andi         s5, t5, 1744
                  sltiu        zero, a7, 1034
                  slli         sp, t6, 2
                  xor          s7, tp, a1
                  auipc        s8, 304848
                  and          s10, zero, a7
                  add          a5, t6, t1
                  srai         s10, t2, 3
1345:             sltiu        a6, t4, 1180
                  or           t6, s4, s1
                  sll          gp, s11, t6
                  slt          gp, t5, t3
                  xor          s5, s2, gp
                  slti         t6, t0, -888
1351:             sltiu        s10, s1, 959
                  slli         t2, t1, 31
                  and          s0, a3, s4
                  xor          a3, a6, t2
                  slti         a5, a3, 1964
                  srai         s7, s0, 9
                  xori         s11, s4, 1088
                  add          t5, gp, s3
                  nop
                  ori          t2, s11, 795
                  srai         s9, t2, 7
                  sll          a4, s1, s0
                  bge          s0, s2, 1368f
                  sltiu        a2, a5, -1791
                  auipc        a5, 408528
                  sub          a4, s10, tp
                  bne          ra, a4, 1387f
1368:             sltu         a3, t0, a1
                  sra          s11, s5, s2
                  slt          a2, sp, s5
                  nop
                  addi         s0, t0, -840
                  sra          t2, a1, s10
                  and          t6, s3, t4
                  auipc        s5, 657668
                  nop
                  srl          s7, s4, t3
                  srl          t0, s3, tp
                  srl          a1, a1, s9
                  ori          s2, a7, -1094
                  xor          t5, a2, t1
                  ori          sp, a7, -405
                  srli         a7, s3, 14
                  addi         zero, t3, -714
                  srai         a3, a5, 0
                  bge          s1, s2, 1390f
1387:             srai         t6, s0, 3
                  auipc        s5, 709315
                  sll          t4, ra, a2
1390:             bne          s3, s7, 1404f
                  xor          t4, a6, s8
                  xori         s5, a2, 1071
                  bne          t1, s6, 1396f
                  and          s2, tp, s10
                  sltiu        a5, s4, -443
1396:             slti         a3, t3, 1817
                  xor          s5, s11, a6
                  andi         t6, t5, 1381
                  slt          a7, s4, s9
                  add          s5, ra, a2
                  andi         a6, s11, -1808
                  addi         sp, a6, -1641
                  xori         sp, s3, 1443
1404:             srl          s2, t3, s3
                  sra          s6, t2, s11
                  and          a6, s7, a7
                  nop
                  or           a1, a7, a5
                  ori          s5, s4, 1448
                  blt          s5, zero, 1416f
                  sub          s7, a2, tp
                  sltiu        t0, s5, 731
                  sltu         s5, a1, a7
                  auipc        gp, 178361
                  bge          t2, a6, 1425f
1416:             sltiu        a7, a5, -1787
                  xor          s7, a0, t5
                  srai         s8, t2, 17
                  and          t2, s10, s11
                  srai         ra, gp, 1
                  addi         s11, gp, 406
                  srl          s6, a5, s8
                  sltiu        a4, s11, -480
                  slt          s2, s5, t3
1425:             slt          t4, a3, t2
                  addi         a7, a7, -792
                  bge          s2, s6, 1442f
                  xor          tp, a1, sp
                  auipc        s2, 260550
                  xor          s7, sp, tp
                  slti         s7, s6, 227
                  andi         t6, ra, -523
                  srl          s10, s11, a6
                  sra          t2, s1, tp
                  blt          ra, zero, 1449f
                  ori          t6, t3, 496
                  lui          s11, 509177
                  sltiu        gp, s4, -979
                  auipc        sp, 726290
                  xor          a1, a4, t3
                  auipc        a2, 615495
1442:             auipc        s5, 299498
                  sltu         s2, t6, s5
                  and          a5, s9, a4
                  slti         t0, s8, 673
                  addi         a4, a3, 114
                  and          ra, a3, s7
                  add          tp, s0, s3
1449:             slti         t5, ra, -52
                  slli         ra, zero, 12
                  addi         s5, a5, 1036
                  bge          s1, t0, 1469f
                  lui          t0, 871704
                  add          s10, s9, a4
                  sub          s0, a0, s9
                  andi         zero, ra, -457
                  xor          a4, a7, a7
                  bgeu         s1, s10, 1474f
                  bgeu         t5, gp, 1463f
                  beq          ra, s11, 1467f
                  bge          t4, a2, 1468f
                  sll          s9, gp, s8
1463:             sra          gp, s9, gp
                  srl          s4, a3, t3
                  and          gp, a1, s4
                  slt          s2, t2, t6
1467:             add          s10, s9, s0
1468:             slti         s6, s9, -1431
1469:             xori         a7, a1, 602
                  ori          s2, s3, -1003
                  andi         s7, sp, -1694
                  sltu         a1, t4, s7
                  and          t3, t6, s11
1474:             sltiu        s4, s5, 1286
                  bne          a6, s8, 1478f
                  andi         a1, gp, -624
                  auipc        s3, 334049
1478:             ori          a4, t2, 599
                  andi         a7, a7, -604
                  sub          ra, gp, t3
                  sll          a3, s7, s0
                  bgeu         a3, t3, 1498f
                  andi         a3, a4, 451
                  blt          s3, t2, 1504f
                  or           gp, a1, gp
                  auipc        s3, 36699
                  andi         a5, a5, 325
                  sltu         a6, a3, s8
                  nop
                  srli         s8, t5, 22
                  lui          t2, 269472
                  sltu         a7, s11, a7
                  xori         t6, zero, -1525
                  and          s6, s9, t0
                  bgeu         s6, t3, 1499f
                  sltu         gp, ra, zero
                  sltu         ra, a6, tp
1498:             nop
1499:             addi         s6, s11, 706
                  bge          s7, s7, 1517f
                  addi         s9, s0, -1657
                  add          sp, t0, zero
                  blt          t4, s5, 1505f
1504:             addi         s10, t1, -565
1505:             srli         t0, t3, 22
                  bge          a3, a7, 1516f
                  or           s6, a2, s5
                  slti         a1, t4, 97
                  andi         zero, t1, -1732
                  sltu         s9, t0, t5
                  or           s6, ra, t6
                  srli         a3, s0, 26
                  sub          a4, s5, t5
                  lui          sp, 518899
                  lui          a1, 956626
1516:             srl          s11, a0, a6
1517:             xori         t3, s3, -541
                  slti         t0, t1, -1676
                  sra          s10, a0, s7
                  andi         s3, s9, 1662
                  addi         a5, tp, -346
                  xor          tp, a3, gp
                  bne          a0, a4, 1529f
                  sra          zero, a2, t1
                  srl          a4, s3, s3
                  srl          t6, a1, s11
                  sltu         t5, t0, a1
                  beq          s10, a3, 1539f
1529:             slli         a6, s10, 11
                  sra          tp, s0, s7
                  blt          s6, s10, 1545f
                  or           zero, t0, sp
                  bge          s7, s11, 1540f
                  andi         a4, s6, -856
                  beq          a4, s5, 1554f
                  auipc        s11, 291566
                  bne          sp, s5, 1543f
                  ori          s2, t4, -249
1539:             bne          a1, ra, 1557f
1540:             sub          a1, a3, a0
                  nop
                  nop
1543:             lui          s6, 652275
                  lui          a3, 538885
1545:             sub          tp, gp, t4
                  srai         a5, gp, 23
                  xor          s8, t6, t4
                  add          s3, a1, sp
                  sra          s10, t0, a3
                  bne          s4, sp, 1553f
                  bge          s5, s9, 1565f
                  and          a6, t1, a5
1553:             beq          sp, t6, 1564f
1554:             bge          t5, gp, 1574f
                  bne          s9, a1, 1572f
                  slt          a7, a6, t5
1557:             lui          a1, 683849
                  bgeu         s1, s1, 1564f
                  ori          tp, t0, -409
                  add          a4, s6, s2
                  bgeu         t6, s11, 1573f
                  sltu         a2, s1, s3
                  slt          s3, t1, a0
1564:             blt          a7, sp, 1567f
1565:             sub          tp, ra, a0
                  xor          a4, a6, s10
1567:             lui          sp, 799251
                  sltiu        a7, s9, 476
                  blt          a4, gp, 1576f
                  ori          zero, s7, -1670
                  bne          sp, a3, 1576f
1572:             auipc        s11, 712544
1573:             sub          tp, s0, ra
1574:             or           t4, s10, t2
                  beq          t6, s5, 1576f
1576:             add          a3, s8, s10
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         s1, s1, -16
                  add          a3, zero, t5
                  nop
                  or           a6, a5, t4
                  xor          gp, s0, a4
                  and          s0, a3, a4
                  sw           ra, 4(s1)
                  or           s3, a2, ra
                  srli         t2, s2, 5
                  addi         s2, zero, 8 #init loop 1 counter
                  addi         a1, zero, 19 #init loop 1 limit
sub_4_0_1_t:      addi         s6, sp, 1338
                  addi         s2, s2, 10 #update loop 1 counter
                  addi         tp, zero, -10 #init loop 0 counter
                  addi         sp, zero, 15 #init loop 0 limit
                  sub          s8, s5, sp
sub_4_0_0_t:      nop
                  sltu         a2, t0, s4
                  addi         tp, tp, 7 #update loop 0 counter
                  bltu         tp, sp, sub_4_0_0_t #branch for loop 0
                  blt          s2, a1, sub_4_0_1_t #branch for loop 1
                  add          ra, a1, t0
                  srl          a3, sp, a2
                  slti         tp, s8, 1333
                  and          zero, s5, sp
                  srl          t3, a0, s11
                  sltiu        a6, t6, 1343
                  and          a2, a2, t2
                  bgeu         a2, s9, 9f
                  bltu         t2, a5, 11f
                  or           t0, t3, a2
9:                add          s5, s0, s6
                  blt          a7, t3, 25f
11:               auipc        t4, 1002453
                  addi         s4, s1, 305
                  slti         tp, a4, 1415
                  blt          a3, tp, 32f
                  ori          a1, sp, -1308
                  ori          t3, t4, 848
                  auipc        s5, 53925
                  bne          zero, a4, 38f
                  slli         t2, s1, 18
                  srai         s7, gp, 22
                  bgeu         s8, s5, 25f
                  srl          s9, s8, a7
                  lui          a1, 726567
                  blt          a4, s8, 43f
25:               xor          t5, a0, t0
                  sra          s11, zero, t5
                  sltu         s4, s0, tp
                  srl          s4, a7, t3
                  slli         tp, a7, 11
                  bgeu         tp, s5, 38f
                  sub          sp, s1, s6
32:               lui          ra, 723048
                  slti         s0, a5, 1467
                  blt          s8, t1, 38f
                  beq          tp, t2, 52f
                  xori         s11, s4, -95
                  lui          s2, 1044488
38:               blt          a2, s5, 51f
                  and          a1, s8, s4
                  sltiu        s3, s5, 210
                  andi         s3, s9, 725
                  sra          tp, a7, zero
43:               or           t4, ra, a2
                  nop
                  and          tp, gp, t4
                  bge          a7, t4, 61f
                  bltu         a0, a0, 52f
                  ori          zero, t3, -1234
                  slt          t4, s6, a7
                  or           a7, s2, tp
51:               auipc        t3, 658271
52:               sra          gp, s2, s8
                  bne          t4, t5, 68f
                  srai         a6, s0, 29
                  slti         gp, sp, -1804
                  nop
                  xori         s4, s8, -897
                  blt          t2, s10, 74f
                  addi         a7, a6, 883
                  xor          gp, tp, t2
61:               slti         t3, s7, -963
                  slli         t6, a4, 10
                  slti         sp, s0, -1740
                  sll          s2, t6, sp
                  slti         t0, s0, 706
                  sub          gp, a3, s2
                  lui          s4, 159822
68:               sll          t6, a1, zero
                  bne          s7, tp, 77f
                  lui          s11, 478982
                  srli         a5, ra, 22
                  bne          s4, s11, 79f
                  bge          t1, s8, 79f
74:               nop
                  ori          t6, t3, 21
                  blt          s0, ra, 79f
77:               and          s10, s11, s6
                  bltu         a6, s0, 79f
79:               xor          t0, s6, t3
                  lw           ra, 4(s1)
                  srli         s9, t5, 22
                  addi         s1, s1, 16
                  slti         s8, s10, -629
                  sub          a5, s11, a7
                  srl          t2, t4, a6
                  andi         t6, t5, 768
109:              addi x28, x1, 1
109:              jalr x28, x28, 0
sub_3:            sll          s10, gp, a0
                  lui          t5, 568171
                  addi         s3, a3, -1028
                  andi         s3, a7, -185
                  srli         s10, sp, 24
                  nop
                  bge          s9, s6, sub_3_stack_p
sub_3_stack_p:    addi         s1, s1, -12
                  xor          s5, t1, a1
                  sw           ra, 4(s1)
                  add          s11, a4, gp
                  addi         s2, a1, -957
                  sub          a2, t5, s7
                  add          s2, a1, s8
                  blt          s11, a4, sub_3_j8 #branch to jump instr
                  srai         s8, s5, 8
                  slli         s3, a6, 1
                  ori          s6, t5, -1416
                  sub          ra, a3, a5
sub_3_j8:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  addi         a4, zero, -3 #init loop 0 counter
                  sltu         s0, zero, t5
                  addi         s6, zero, 7 #init loop 0 limit
                  nop
sub_3_1_0_t:      auipc        s8, 875014
                  addi         a4, a4, 5 #update loop 0 counter
                  sll          zero, s0, s9
                  add          zero, a4, s3
                  xori         s10, ra, 1361
                  beq          a4, s6, sub_3_1_0_t #branch for loop 0
                  nop
                  addi         ra, zero, -7 #init loop 0 counter
                  or           a5, s8, a5
                  slli         sp, t3, 21
                  xor          s9, tp, s6
                  sub          s4, s2, sp
                  or           gp, s5, gp
                  addi         s6, zero, 16 #init loop 0 limit
                  add          a3, s5, a1
sub_3_0_0_t:      sltu         t5, sp, s2
                  addi         ra, ra, 10 #update loop 0 counter
                  xori         a1, ra, 808
                  srai         a4, t2, 24
                  xor          t3, t5, t2
                  srl          t3, a6, t5
                  and          sp, t1, a7
                  addi         sp, s10, 473
                  or           a3, s3, s8
                  bltu         ra, s6, sub_3_0_0_t #branch for loop 0
                  sub          s3, ra, s1
                  sra          t6, ra, a2
                  or           s7, a2, t2
                  and          a4, s2, a4
                  nop
                  auipc        t2, 336204
                  bgeu         s11, a6, 14f
                  auipc        s10, 712197
                  sll          a5, s11, s7
                  srl          t4, a6, a1
                  slli         t3, s5, 6
                  slti         a3, t2, 1386
                  sltiu        s8, t1, 1799
                  slli         a7, s9, 13
                  or           s0, s1, s6
14:               srl          s10, t3, t6
                  sltu         s11, t1, sp
                  bne          s10, s10, 35f
                  ori          t6, s7, -478
                  and          t6, s6, sp
                  sltiu        sp, s4, 550
                  sll          s5, s6, s10
                  xor          sp, a6, t6
                  and          t0, sp, t2
                  and          s7, s0, t1
                  andi         a2, t3, -856
                  slt          t2, t0, t1
                  slti         tp, a0, -1096
                  bne          s9, s10, 46f
                  blt          s3, a7, 43f
                  lui          t6, 462399
                  bgeu         t2, ra, 38f
                  or           s2, ra, a6
                  blt          a5, a3, 51f
                  bne          a1, t3, 51f
                  xori         t0, a0, -500
35:               bltu         s2, a6, 41f
                  and          s10, s7, zero
                  srl          a1, a2, ra
38:               sltu         a4, a5, a2
                  slli         s6, tp, 19
                  nop
41:               srl          t6, s8, ra
                  slli         a5, a3, 1
43:               bltu         t5, s2, 48f
                  add          ra, a0, a1
                  or           t4, s3, t2
46:               srai         t0, s3, 17
                  srli         t6, a6, 1
48:               lui          gp, 206730
                  slli         a7, t2, 10
                  srai         t2, ra, 3
51:               sltu         s0, a3, a7
                  add          s3, s0, a3
                  bgeu         t0, t2, 66f
                  beq          s3, s11, 61f
                  sltu         s11, s5, t0
                  bgeu         a5, t6, 70f
                  xori         a2, tp, -1438
                  srli         a4, t2, 18
                  slli         s9, zero, 15
                  beq          ra, tp, 66f
61:               addi         t5, a7, 589
                  bltu         a7, zero, 81f
                  xor          s0, a2, s5
                  slti         s11, a6, 1763
                  srli         zero, s3, 7
66:               sll          t4, a1, a5
                  blt          s0, zero, 79f
                  addi         t3, s4, 946
                  andi         a3, s4, 1933
70:               bge          t2, s11, 85f
                  srl          a2, t5, t2
                  and          a1, a6, s4
                  ori          s9, s4, -497
                  xori         t5, s5, 363
                  sltu         s9, s11, a0
                  slt          s10, sp, s10
                  andi         t5, a5, 278
                  srai         sp, ra, 21
79:               srl          tp, s4, s3
                  lui          s3, 692854
81:               add          sp, t6, ra
                  slt          t3, s4, a7
                  srli         zero, a0, 25
                  lui          s4, 727787
85:               ori          a6, s10, 660
                  and          t0, gp, s9
                  or           s6, s1, a5
                  sll          t4, s1, t5
                  beq          sp, s0, 94f
                  blt          a3, a2, 107f
                  ori          t2, s0, 436
                  xor          s8, s1, s1
                  sltiu        s10, s11, -759
94:               slli         a7, a0, 21
                  bge          s10, s5, 106f
                  sltu         s5, a3, t3
                  andi         a6, a3, -1644
                  nop
                  sltu         s5, a4, t4
                  ori          zero, t3, -1730
                  andi         a7, a2, 1037
                  auipc        t4, 69107
                  sub          s10, a4, a0
                  sltiu        gp, t0, -823
                  sltu         tp, t5, s9
106:              add          a3, s1, s1
107:              sltiu        t6, t3, -1418
                  sra          a1, a3, s4
                  sub          t0, t6, s0
                  addi         t2, a7, 1220
                  xor          s3, s8, s0
                  or           s0, s6, s5
                  lw           ra, 4(s1)
                  and          t4, s9, a7
                  addi         s1, s1, 12
                  srai         s6, s8, 0
                  ori          t3, s2, -1388
                  ori          a7, s2, 1714
                  sltu         s5, s10, gp
                  nop
171:              addi x11, x1, 1
171:              jalr x11, x11, 0
sub_5:            lui          a4, 889677
                  xor          gp, s6, t0
                  bge          s6, a5, sub_5_stack_p
                  xor          s5, a7, t2
sub_5_stack_p:    addi         s1, s1, -52
                  sw           ra, 4(s1)
                  srli         s2, s3, 9
                  slt          a1, s4, a2
                  addi         s9, zero, -1 #init loop 0 counter
                  sltiu        t2, s8, -239
                  srli         a2, a1, 27
                  nop
                  or           s5, t5, s6
                  slti         s3, s0, 99
                  srai         t0, zero, 12
                  srli         ra, t0, 1
                  or           s0, sp, s9
                  nop
                  auipc        s4, 695534
                  slli         t5, s3, 15
                  sltu         a2, t2, s8
                  nop
                  sra          t2, s1, s8
                  srai         s8, t0, 7
                  addi         gp, zero, 17 #init loop 0 limit
                  slti         s8, a5, 387
sub_5_0_0_t:      or           t2, a1, a6
                  addi         s9, s9, 2 #update loop 0 counter
                  xor          sp, zero, a3
                  nop
                  slli         t3, t5, 31
                  srl          zero, sp, a5
                  sll          t6, t1, s7
                  or           s7, sp, zero
                  xor          s5, zero, t0
                  beq          s9, gp, sub_5_0_0_t #branch for loop 0
                  auipc        s0, 480795
                  auipc        a6, 460215
                  sll          s9, t3, s2
                  slli         t5, tp, 22
                  bne          sp, t0, 8f
                  blt          s11, gp, 16f
                  bge          t1, s6, 11f
                  sltiu        a4, s1, 1484
                  slli         t0, s2, 6
8:                xor          s3, gp, s5
                  beq          a4, gp, 14f
                  slli         s9, tp, 31
11:               lui          s8, 14229
                  srli         a6, t0, 28
                  srai         t5, t4, 22
14:               slt          a7, t4, a7
                  xor          s8, s11, t1
16:               bltu         s4, s0, 31f
                  xori         a3, a6, -1220
                  nop
                  nop
                  srli         a5, a5, 29
                  and          s2, t1, s1
                  sltiu        t3, tp, 1190
                  add          a1, ra, s5
                  bge          s10, s9, 41f
                  lui          s2, 950798
                  auipc        s9, 256895
                  xori         a2, zero, 826
                  bge          a6, s2, 42f
                  xor          sp, s9, tp
                  sll          t5, a4, a6
31:               slti         s2, t1, -2046
                  bgeu         s5, s10, 35f
                  nop
                  andi         s8, ra, -251
35:               sltiu        a1, t5, -133
                  sub          t4, s1, s2
                  srai         a2, a7, 3
                  bne          t2, a6, 51f
                  slli         gp, gp, 23
                  addi         s9, t6, -981
41:               slt          a3, a6, t5
42:               bne          a7, t1, 50f
                  ori          a2, sp, -592
                  or           a6, s9, s5
                  slti         zero, ra, -1011
                  slti         s0, gp, -910
                  xori         s2, t1, 1513
                  auipc        sp, 219386
                  sub          s3, t0, zero
50:               nop
51:               xor          s11, a1, a4
                  sub          a7, t1, s1
                  slt          t2, a7, t5
                  and          t5, s3, s1
                  lw           ra, 4(s1)
                  srl          a6, t6, t0
                  slt          a3, s11, tp
                  sll          s5, s0, s6
                  addi         s1, s1, 52
                  srli         a1, s0, 4
                  add          s8, gp, t5
                  andi         s2, a7, -452
100:              addi x3, x1, 1
100:              jalr x3, x3, 0
sub_2:            addi         s1, s1, -52
                  lui          t3, 584840
                  srl          s2, t4, a2
                  srai         s8, s0, 12
                  and          zero, tp, gp
                  sltiu        a7, t6, 1120
                  ori          s5, ra, 430
                  andi         t2, t2, 1185
                  auipc        s9, 162789
                  ori          gp, tp, 87
                  sw           ra, 4(s1)
                  sra          sp, s3, tp
                  sra          zero, a3, s0
                  slt          s9, s6, a5
                  slli         s11, s6, 12
                  sll          sp, a6, t1
                  ori          s10, s0, 1541
                  and          s6, t6, s1
                  and          a5, a4, t5
                  add          t4, zero, s8
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  slli         a7, t1, 27
                  la           tp, sub_4
                  addi         tp, tp, -933
                  nop
                  ori          ra, ra, -1480
                  xori         s0, sp, -944
                  nop
                  add          s9, ra, t6
sub_2_j7:         jalr         ra, tp, 933 #jump sub_2 -> sub_4
                  addi         s3, zero, -10 #init loop 0 counter
                  srl          t0, s7, a4
                  sub          zero, a1, t5
                  auipc        a2, 91382
                  srl          s6, t4, t6
                  sltiu        s9, s9, -1721
                  nop
                  lui          s7, 1045550
                  nop
                  addi         s0, zero, 8 #init loop 0 limit
sub_2_0_0_t:      slt          a1, s7, s6
                  srli         s7, s3, 24
                  addi         s3, s3, 6 #update loop 0 counter
                  srai         s9, ra, 10
                  xor          s8, s2, s11
                  slli         a3, s4, 5
                  slli         s5, s3, 1
                  slti         a5, a0, 444
                  addi         t2, s8, 1444
                  andi         s9, gp, -2048
                  slli         tp, s9, 11
                  srli         a7, s7, 23
                  beq          s3, s0, sub_2_0_0_t #branch for loop 0
                  ori          ra, a5, -872
                  blt          s4, zero, 10f
                  and          a7, sp, s3
                  srli         zero, s1, 7
                  xori         a7, s8, 152
                  addi         s2, zero, 606
                  or           s7, s8, s5
                  or           s7, a7, s4
                  addi         s7, tp, 201
                  nop
                  ori          tp, s0, 19
10:               blt          a3, s4, 24f
                  lui          t3, 364590
                  bgeu         a7, a3, 13f
13:               ori          t5, a7, -991
                  nop
                  bge          a6, s9, 21f
                  bltu         s3, s4, 30f
                  and          s2, s0, s2
                  sll          s3, tp, s5
                  lui          a3, 464311
                  lui          s11, 983921
21:               beq          gp, sp, 28f
                  nop
                  lui          s0, 839773
24:               srli         gp, s11, 21
                  sub          s8, t6, s2
                  auipc        s7, 177090
                  add          s3, tp, ra
28:               xor          t4, s0, a7
                  blt          a1, a1, 30f
30:               andi         s0, a0, -619
                  slli         a6, t5, 8
                  srli         a3, a4, 25
                  ori          t5, s7, -1729
                  andi         s7, s2, -749
                  sltu         s9, t4, ra
                  or           s0, a0, s10
                  xori         s11, a6, -752
                  sll          t4, t6, s8
                  nop
                  blt          s7, s9, 42f
                  srai         tp, a1, 3
42:               bge          t3, s10, 49f
                  add          gp, gp, sp
                  slli         s9, t4, 29
                  blt          a4, s0, 49f
                  sltu         sp, s3, s10
                  srli         a3, s4, 10
                  bge          t0, s3, 49f
49:               srl          a3, s11, s0
                  lw           ra, 4(s1)
                  sltu         gp, s7, t0
                  lui          a7, 594150
                  sltiu        a6, s6, -221
                  sub          t0, t2, t5
                  addi         s1, s1, 52
                  srli         s2, t3, 9
                  slt          s11, a5, s6
112:              addi x18, x1, 0
112:              jalr x18, x18, 0
sub_1:            add          sp, t2, s11
                  nop
                  addi         s1, s1, -8
                  nop
                  sw           ra, 4(s1)
                  slti         t6, sp, -501
                  and          sp, s2, a6
                  or           zero, s2, s5
                  lui          a1, 826367
                  and          a3, a5, t1
                  srai         t0, a7, 2
                  ori          s10, tp, -1139
                  addi         s7, a3, -960
                  slt          a4, t3, t6
                  sltiu        zero, t0, -146
                  auipc        t2, 200014
                  lui          a2, 710241
                  sltiu        a2, a7, -510
                  sub          t6, ra, a1
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  srli         s11, s11, 8
                  la           a2, sub_2
                  auipc        s2, 176864
                  xori         a6, s5, 829
                  sll          zero, s8, a4
                  sll          s10, s1, t4
                  addi         a2, a2, -971
                  nop
                  or           s7, gp, s2
                  lui          s5, 277508
                  beq          gp, a3, sub_1_j4 #branch to jump instr
                  sra          a3, t0, s10
sub_1_j4:         jalr         ra, a2, 971 #jump sub_1 -> sub_2
                  sltiu        s11, s3, -314
                  nop
                  srli         a7, s1, 12
                  slti         s2, t3, -532
                  auipc        s2, 107524
                  sltu         s4, t4, a0
                  and          s5, s1, t1
                  slti         t3, t5, 932
                  bge          t0, tp, sub_1_j5 #branch to jump instr
                  and          a3, tp, gp
                  add          s0, a4, t4
sub_1_j5:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  addi         t2, zero, -7 #init loop 1 counter
                  lui          s9, 85626
                  srai         ra, tp, 12
                  or           a6, zero, tp
                  add          s4, a3, s3
                  addi         s3, zero, 5 #init loop 1 limit
                  addi         t5, t1, 1905
                  sra          s11, a0, ra
sub_1_1_1_t:      xori         ra, a7, -330
                  lui          s0, 451311
                  addi         t2, t2, 9 #update loop 1 counter
                  xor          s6, t4, a7
                  addi         a2, zero, 4 #init loop 0 counter
                  nop
                  addi         a7, zero, 4 #init loop 0 limit
sub_1_1_0_t:      nop
                  sll          a3, gp, s9
                  auipc        ra, 748184
                  addi         a2, a2, -1 #update loop 0 counter
                  sltiu        s5, s0, -1857
                  and          gp, s8, ra
                  xor          s0, s0, t1
                  bgeu         a2, a7, sub_1_1_0_t #branch for loop 0
                  add          zero, tp, t3
                  ori          gp, tp, -792
                  blt          t2, s3, sub_1_1_1_t #branch for loop 1
                  sub          t0, ra, s2
                  addi         gp, zero, -2 #init loop 0 counter
                  auipc        s0, 731072
                  andi         t4, t4, -348
                  srai         s7, zero, 27
                  slti         sp, s10, 1793
                  addi         s6, s4, 1400
                  ori          t6, a7, -1131
                  addi         a3, zero, 1 #init loop 0 limit
                  ori          a4, a1, 1394
                  andi         t5, t1, 969
                  xori         a7, tp, 945
                  and          ra, a6, ra
                  and          a1, t0, s10
                  andi         s7, a7, -1036
sub_1_0_0_t:      nop
                  slli         s0, s7, 23
                  slli         a1, gp, 7
                  sub          s0, a3, a1
                  ori          a7, t0, -542
                  and          s2, t5, t0
                  sll          t2, s3, t6
                  slti         tp, t0, -990
                  xori         t2, s0, -1301
                  addi         gp, gp, 3 #update loop 0 counter
                  nop
                  blt          gp, a3, sub_1_0_0_t #branch for loop 0
                  xori         t6, t6, -311
                  beq          gp, ra, 20f
                  srl          t6, t0, sp
                  slli         s11, t5, 17
                  beq          s0, a3, 14f
                  ori          s10, t2, -1380
                  slli         a7, s6, 22
                  bne          a4, s1, 26f
                  bgeu         t6, s3, 14f
                  xor          a4, tp, s6
                  blt          s2, t4, 21f
                  sub          t0, a4, s4
                  and          a3, s11, a1
                  sltu         t0, s2, a6
                  bge          a6, t5, 17f
14:               or           t6, ra, s8
                  srli         s10, a4, 10
                  sub          s9, t6, s3
17:               sra          t5, gp, s7
                  nop
                  nop
20:               auipc        s5, 911310
21:               ori          s10, s6, 1092
                  blt          s11, t0, 41f
                  and          t5, s3, a7
                  lui          a6, 489187
                  or           sp, t5, s9
26:               bltu         a3, t2, 32f
                  bne          s5, a6, 47f
                  sub          ra, s5, s11
                  bge          a4, s11, 34f
                  sra          zero, s7, a3
                  slt          t0, t3, a5
32:               andi         a3, a4, 919
                  and          t5, s6, s5
34:               lui          a6, 690162
                  bltu         s4, s3, 39f
                  add          a7, s2, s9
                  ori          zero, s6, -96
                  sltu         s9, a6, gp
39:               ori          s0, s9, 893
                  sll          ra, s1, a2
41:               xor          zero, s5, s4
                  sll          a2, gp, t5
                  addi         s2, s6, 740
                  addi         s3, s9, 1019
                  sra          s4, t1, gp
                  sra          a2, ra, t0
47:               add          s6, s8, t3
                  add          s2, a2, t0
                  sub          t2, s3, sp
                  slt          s3, a4, t2
                  xori         t2, gp, -1611
                  blt          s4, sp, 72f
                  auipc        s7, 321193
                  slli         t5, s3, 4
                  auipc        s3, 348528
                  sltiu        gp, t6, -2042
                  and          s6, t6, a4
                  srai         t0, gp, 6
                  and          t6, s0, t5
                  addi         s0, s0, -867
                  xori         s8, s9, -401
                  ori          ra, s6, -235
                  sltu         a3, a0, t3
                  blt          zero, t3, 76f
                  bge          tp, s10, 84f
                  bgeu         s8, s9, 77f
                  xori         ra, t2, 330
                  sltiu        ra, ra, 1101
                  nop
                  xor          t3, a4, tp
                  beq          s6, t6, 83f
72:               sll          a5, a1, s8
                  lui          zero, 394771
                  bgeu         a5, s3, 77f
                  sub          a7, s6, s9
76:               andi         t3, t4, -895
77:               sra          t0, t6, s0
                  bgeu         zero, s0, 84f
                  nop
                  andi         s11, a7, 980
                  slli         t2, zero, 30
                  addi         a7, tp, -796
83:               sltu         a7, a0, s10
84:               srl          a3, a7, s9
                  slti         sp, s6, 1281
                  sra          t0, a2, zero
                  add          t3, t3, t3
                  sltu         gp, a6, s0
                  or           s10, t6, t0
                  and          sp, s10, gp
                  and          gp, t0, a5
                  ori          sp, a3, 1912
                  bltu         s1, t6, 96f
                  xor          s7, t2, gp
                  addi         a7, s7, -454
96:               bgeu         s8, t3, 102f
                  slti         t4, a6, 1848
                  slli         s6, a3, 12
                  addi         a7, sp, -1555
                  andi         s10, s9, 1377
                  beq          a0, ra, 117f
102:              or           t3, s2, t4
                  bgeu         t4, a6, 115f
                  blt          s1, t2, 124f
                  bge          t1, a2, 111f
                  srai         a2, a7, 10
                  nop
                  blt          s1, s10, 124f
                  slt          a1, s1, s1
                  addi         ra, s4, -1007
111:              sltu         a4, t6, t6
                  add          s0, t0, a7
                  slt          s3, a4, t5
                  addi         a2, s9, 810
115:              slti         s5, t4, 1785
                  srl          a1, sp, s9
117:              bltu         a5, t5, 126f
                  lui          t5, 332061
                  slli         s5, a3, 1
                  andi         ra, s1, -299
                  slti         s9, s1, -1124
                  beq          a6, t3, 126f
                  slli         t2, t2, 1
124:              slti         a7, s9, -933
                  xor          a5, t6, gp
126:              srl          s3, t0, a3
                  srai         t6, t0, 25
                  sra          s8, t0, s1
                  and          s8, tp, a7
                  nop
                  lw           ra, 4(s1)
                  and          t6, zero, s8
                  sltiu        t5, a4, 1910
                  srai         a1, a2, 26
                  slt          s7, a7, a4
                  and          zero, s5, gp
                  addi         s1, s1, 8
                  lui          s3, 970842
238:              addi x26, x1, 1
238:              jalr x26, x26, 0
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_2:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_3:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_4:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_5:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_6:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_7:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_8:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_9:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_10:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_11:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_12:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_13:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_14:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_15:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x6, x9, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x30, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x30, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x30, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x30, x18, ecall_handler
                  li x18, 0x1
                  beq x30, x18, instr_fault_handler
                  li x18, 0x5
                  beq x30, x18, load_fault_handler
                  li x18, 0x7
                  beq x30, x18, store_fault_handler
                  li x18, 0xc
                  beq x30, x18, pt_fault_handler
                  li x18, 0xd
                  beq x30, x18, pt_fault_handler
                  li x18, 0xf
                  beq x30, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

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
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x9, x6, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x6, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x6, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x9, x6, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x9, x6, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x9, x6, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
