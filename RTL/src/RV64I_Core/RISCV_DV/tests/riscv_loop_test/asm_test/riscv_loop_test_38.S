.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 1
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0xf32ed3bb
                  li x1, 0x0
                  li x2, 0xffc548f7
                  li x3, 0x80000000
                  li x4, 0xe
                  li x5, 0xf
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xee83400b
                  li x10, 0xea94e16e
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xf3b867c6
                  li x16, 0x80000000
                  li x18, 0xf54a1a3d
                  li x19, 0x0
                  li x20, 0xf8944168
                  li x21, 0xd1a981d3
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x16ab938d
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x7
                  li x30, 0xa
                  li x31, 0x80000000
                  la x17, user_stack_end
main:             srai         tp, a3, 11
                  nop
                  nop
                  lui          s10, 79892
                  lui          s11, 459111
                  la           a2, sub_1
                  xori         t0, a0, 1554
                  srai         t2, ra, 23
                  addi         a2, a2, -630
                  bgeu         ra, tp, main_j1 #branch to jump instr
                  slt          t0, t4, t6
                  srai         sp, t1, 5
                  addi         s3, sp, -1814
main_j1:          jalr         ra, a2, 631 #jump main -> sub_1
                  srli         zero, s2, 17
                  lui          t3, 136018
                  la           s0, sub_1
                  lui          t3, 175258
                  ori          s7, sp, 1667
                  addi         s0, s0, -805
                  bgeu         s0, sp, main_j2 #branch to jump instr
                  slti         gp, s4, 1655
                  slt          s4, s4, ra
                  slt          zero, s11, zero
                  xori         t3, s6, 2011
main_j2:          jalr         ra, s0, 806 #jump main -> sub_1
                  addi         ra, zero, 1 #init loop 1 counter
                  sub          a5, s0, zero
                  addi         s5, a3, 39
                  addi         t6, zero, -15 #init loop 1 limit
                  sub          sp, s8, a5
                  srli         s7, s8, 0
                  srl          s7, s4, t4
                  or           s4, sp, s2
                  sub          s10, t5, s4
                  ori          s10, t5, -77
main_0_1_t:       or           a5, a6, s2
                  addi         ra, ra, -8 #update loop 1 counter
                  slli         s8, a0, 23
                  lui          t3, 917964
                  addi         a3, zero, 9 #init loop 0 counter
                  slti         t0, s9, 173
                  lui          s2, 576572
                  sltu         s10, t5, t5
                  addi         t4, zero, 18 #init loop 0 limit
                  addi         s4, s9, -1241
main_0_0_t:       xori         a6, s4, -1052
                  slti         gp, zero, 755
                  addi         a3, a3, 9 #update loop 0 counter
                  sll          gp, s6, s10
                  bne          a3, t4, main_0_0_t #branch for loop 0
                  sltiu        tp, s0, -1183
                  lui          t1, 101199
                  bne          ra, t6, main_0_1_t #branch for loop 1
                  ori          s7, a7, 1832
                  sltu         ra, a0, t3
                  sra          a3, t5, s9
                  beq          tp, gp, 21f
                  blt          s6, zero, 4f
4:                srli         sp, s7, 4
                  add          a3, s8, gp
                  auipc        ra, 256970
                  bgeu         s11, ra, 13f
                  sltu         s6, s6, s7
                  sltu         a3, s5, s3
                  and          sp, a6, s7
                  srl          s0, t3, t0
                  bge          a4, t6, 23f
13:               sltu         t4, s8, t3
                  blt          zero, t6, 16f
                  lui          s11, 416463
16:               auipc        s0, 847072
                  xori         gp, t5, -1812
                  beq          s2, a6, 20f
                  srli         zero, s1, 0
20:               srai         s2, a0, 25
21:               addi         t5, a2, 2000
                  sub          s4, a0, t2
23:               sub          s3, s2, t5
                  srl          s3, s6, t5
                  auipc        s8, 84062
                  slt          zero, t4, t1
                  slti         gp, zero, -870
                  add          ra, t4, s2
                  lui          a0, 868639
                  sll          s11, s2, s4
                  ori          tp, s10, 694
                  srl          gp, s6, s2
                  bltu         a2, t0, 49f
                  or           ra, s11, s1
                  and          t5, s4, a1
                  bgeu         s1, a4, 45f
                  blt          t4, s6, 54f
                  beq          s7, ra, 42f
                  lui          t3, 98924
                  bne          s2, s4, 51f
                  auipc        zero, 452338
42:               sub          t2, t5, a6
                  blt          a4, s4, 54f
                  beq          sp, s11, 51f
45:               sltu         t6, a6, s7
                  slli         t6, gp, 13
                  sra          t2, gp, s7
                  srai         t5, s6, 25
49:               bne          t5, s0, 54f
                  ori          a3, gp, -213
51:               lui          s8, 930615
                  bltu         s5, s2, 54f
                  andi         t5, gp, 707
54:               addi         zero, s11, -946
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slli         t2, s8, 23
                  and          gp, s10, zero
                  addi         a7, a7, -32
                  sltu         t4, t6, s10
                  andi         t2, s8, 1735
                  sub          s11, t1, s8
                  sw           ra, 4(a7)
                  sltu         t6, t4, s5
                  slli         zero, zero, 30
                  slt          a4, t6, t0
                  addi         s9, t2, -1947
                  slti         t5, a7, 118
                  and          s6, zero, a0
                  and          a4, s11, a5
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srai         s4, a4, 13
                  and          s7, s4, ra
                  auipc        s5, 432579
                  auipc        a2, 303017
                  sltiu        a2, s3, -1926
sub_1_j4:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srai         s11, s11, 13
                  nop
                  nop
                  sltiu        t0, a3, -1712
                  bgeu         sp, t4, 16f
                  lui          t4, 871815
                  beq          t4, s8, 16f
                  srai         s4, a1, 10
                  bgeu         s1, s3, 16f
                  add          t3, s6, s5
                  andi         t0, s4, 871
                  nop
                  auipc        t4, 534175
                  or           zero, a1, t2
                  bne          gp, a7, 16f
                  andi         s6, a4, -1880
16:               xori         zero, a6, 2031
                  andi         s4, s6, -1403
                  and          zero, a6, t2
                  srl          s0, gp, t1
                  srli         t6, zero, 31
                  lw           ra, 4(a7)
                  xori         s6, sp, -1840
                  auipc        s9, 282930
                  sub          t5, zero, t1
                  addi         s5, a1, 1367
                  slt          s3, ra, t0
                  addi         a7, a7, 32
                  sll          s5, t6, s1
50:               addi x25, x1, 0
50:               jalr x25, x25, 0
sub_2:            srai         a3, t0, 23
                  blt          s9, t5, sub_2_stack_p
                  sra          t6, sp, s6
                  srai         a3, s5, 29
sub_2_stack_p:    addi         a7, a7, -32
                  sub          s7, t1, s6
                  or           a2, gp, s10
                  sll          t0, sp, s3
                  sw           ra, 4(a7)
                  andi         s6, s4, 321
                  add          s8, t6, t6
                  addi         t1, zero, -6 #init loop 0 counter
                  or           s6, t2, gp
                  slti         sp, s6, -887
                  slt          s4, tp, ra
                  ori          s9, t5, -680
                  slti         t0, a5, 806
                  xori         s8, t0, -329
                  addi         a5, t2, 1524
                  or           ra, s1, t5
                  srl          s3, a6, s4
                  slli         s2, s5, 7
                  addi         s10, zero, 7 #init loop 0 limit
                  srai         ra, a6, 15
                  sltu         s4, a2, a5
                  ori          t2, a0, 512
                  xor          a0, s4, a3
                  auipc        s4, 804337
sub_2_3_0_t:      auipc        a0, 505813
                  srl          t2, s2, s2
                  addi         t1, t1, 7 #update loop 0 counter
                  ori          s0, t5, -899
                  auipc        s11, 701292
                  slli         a4, s3, 3
                  ori          a2, t1, 659
                  blt          t1, s10, sub_2_3_0_t #branch for loop 0
                  andi         ra, t6, -901
                  addi         a4, zero, 0 #init loop 0 counter
                  addi         s9, a7, -1311
                  addi         a6, zero, -2 #init loop 0 limit
                  ori          t3, a6, 1833
                  add          s11, s10, sp
                  auipc        a0, 155523
                  srli         s8, s0, 24
sub_2_11_0_t:     and          s0, s10, t1
                  slt          s6, t2, a0
                  addi         t5, s10, -1529
                  sra          s9, gp, ra
                  xori         t0, t3, 359
                  sra          s0, s5, sp
                  sltiu        a3, ra, -631
                  and          a5, a6, a7
                  slti         s6, t5, -1838
                  addi         a4, a4, -9 #update loop 0 counter
                  srli         s3, t1, 30
                  slti         s8, sp, 1411
                  bge          a4, a6, sub_2_11_0_t #branch for loop 0
                  and          s2, a4, s5
                  addi         s5, zero, 1 #init loop 1 counter
                  srai         s11, s4, 5
                  auipc        s9, 337624
                  srai         a3, a2, 17
                  addi         tp, zero, 14 #init loop 1 limit
                  sra          zero, t4, t4
sub_2_14_1_t:     sltiu        a5, a4, 1916
                  slti         sp, s7, 1618
                  srl          t3, zero, s6
                  slli         s7, a4, 25
                  addi         s5, s5, 1 #update loop 1 counter
                  auipc        sp, 502408
                  srli         a2, tp, 17
                  ori          s3, a0, -349
                  addi         ra, zero, -8 #init loop 0 counter
                  xor          t2, t0, s6
                  sltiu        a2, a5, -1871
                  addi         s10, zero, 8 #init loop 0 limit
                  ori          t1, t5, 1253
                  ori          t3, zero, 1455
sub_2_14_0_t:     lui          a6, 38507
                  addi         ra, ra, 4 #update loop 0 counter
                  srli         s2, s9, 13
                  bltu         ra, s10, sub_2_14_0_t #branch for loop 0
                  add          s8, tp, s11
                  xori         t2, s1, -1342
                  blt          s5, tp, sub_2_14_1_t #branch for loop 1
                  slt          s3, a7, a5
                  addi         a4, zero, -6 #init loop 0 counter
                  slt          a0, t5, a4
                  sltiu        s10, s7, 716
                  andi         s5, s0, -587
                  slt          ra, a4, t6
                  auipc        s8, 492003
                  addi         t4, zero, -3 #init loop 0 limit
sub_2_7_0_t:      nop
                  sltu         t2, t1, sp
                  addi         a4, a4, 6 #update loop 0 counter
                  sub          s6, s4, a3
                  srl          a0, s7, t3
                  sll          s4, s2, s6
                  srl          t5, a4, t1
                  andi         sp, a0, 1879
                  auipc        s4, 121571
                  xor          t1, s1, s8
                  addi         t5, s11, 1261
                  blt          a4, t4, sub_2_7_0_t #branch for loop 0
                  sll          tp, zero, t1
                  addi         s3, zero, -9 #init loop 0 counter
                  andi         a2, s8, 112
                  xor          t0, s2, s5
                  addi         s2, zero, -17 #init loop 0 limit
sub_2_0_0_t:      andi         s0, t6, -1715
                  xor          gp, a2, s10
                  andi         a0, a3, -855
                  addi         s3, s3, -8 #update loop 0 counter
                  bne          s3, s2, sub_2_0_0_t #branch for loop 0
                  and          s10, zero, s10
                  addi         s6, zero, -2 #init loop 0 counter
                  slti         a0, s1, 1411
                  addi         a5, zero, 13 #init loop 0 limit
                  addi         a0, s0, -1806
sub_2_12_0_t:     nop
                  addi         s6, s6, 5 #update loop 0 counter
                  beq          s6, a5, sub_2_12_0_t #branch for loop 0
                  srli         t3, a1, 9
                  addi         s4, zero, -6 #init loop 0 counter
                  ori          s2, t4, -1443
                  slli         sp, s4, 11
                  auipc        t1, 225987
                  lui          s0, 2459
                  sltiu        zero, s5, -1930
                  and          s2, s10, s8
                  sll          s2, t3, ra
                  addi         s7, zero, 12 #init loop 0 limit
                  sll          t6, s5, a6
sub_2_5_0_t:      slt          s5, gp, a5
                  andi         a0, s8, 217
                  srli         a5, s5, 31
                  addi         s4, s4, 6 #update loop 0 counter
                  xori         t5, s4, -1080
                  bne          s4, s7, sub_2_5_0_t #branch for loop 0
                  xor          s11, gp, t2
                  addi         s4, zero, 0 #init loop 1 counter
                  srai         sp, a4, 1
                  sltiu        s3, a1, -1069
                  slli         s11, t1, 12
                  addi         gp, zero, -18 #init loop 1 limit
                  sub          a3, a5, a2
sub_2_13_1_t:     sub          a0, a6, s2
                  auipc        zero, 572555
                  auipc        s7, 275293
                  addi         s4, s4, -6 #update loop 1 counter
                  add          zero, a0, t5
                  addi         s0, zero, 6 #init loop 0 counter
                  addi         s7, ra, -1763
                  addi         t1, zero, -18 #init loop 0 limit
sub_2_13_0_t:     slti         s6, s5, -947
                  srai         s7, t0, 26
                  addi         s0, s0, -2 #update loop 0 counter
                  sra          s6, zero, t1
                  beq          s0, t1, sub_2_13_0_t #branch for loop 0
                  srl          a0, a4, tp
                  srl          s2, t6, a6
                  slti         sp, s8, 1479
                  slli         s7, t4, 9
                  srl          s11, t2, a6
                  or           s3, s10, s5
                  slt          t6, a2, t1
                  srai         t2, t5, 0
                  beq          s4, gp, sub_2_13_1_t #branch for loop 1
                  auipc        s2, 1013070
                  addi         s7, zero, -4 #init loop 1 counter
                  ori          s4, a3, 789
                  addi         s0, zero, 9 #init loop 1 limit
                  auipc        s11, 932230
                  slli         t5, s7, 17
sub_2_9_1_t:      auipc        s4, 105109
                  nop
                  addi         s7, s7, 8 #update loop 1 counter
                  sltiu        s3, t5, -646
                  addi         sp, zero, -9 #init loop 0 counter
                  addi         s5, zero, 15 #init loop 0 limit
                  srl          t3, a1, s2
sub_2_9_0_t:      addi         s4, s1, -329
                  addi         t4, s2, -308
                  addi         sp, sp, 5 #update loop 0 counter
                  blt          sp, s5, sub_2_9_0_t #branch for loop 0
                  blt          s7, s0, sub_2_9_1_t #branch for loop 1
                  sltu         t5, s3, t5
                  addi         t3, zero, 4 #init loop 0 counter
                  sra          t5, s6, s11
                  addi         s3, zero, 4 #init loop 0 limit
                  nop
sub_2_10_0_t:     add          s10, s3, s0
                  auipc        t1, 220515
                  addi         t3, t3, -8 #update loop 0 counter
                  nop
                  slt          t6, gp, a1
                  ori          t4, zero, 1148
                  srai         t5, t3, 5
                  xori         a0, t6, -265
                  auipc        t5, 910700
                  bge          t3, s3, sub_2_10_0_t #branch for loop 0
                  sll          s11, t3, a4
                  addi         s4, zero, 1 #init loop 1 counter
                  srai         t4, s3, 0
                  srl          gp, a5, a2
                  add          a6, a4, a4
                  slli         s7, s3, 22
                  sll          a2, a4, sp
                  add          gp, t5, s11
                  addi         a5, zero, -4 #init loop 1 limit
sub_2_2_1_t:      or           s7, a3, tp
                  lui          s0, 901998
                  auipc        zero, 999230
                  lui          s7, 462817
                  andi         a0, t0, -1151
                  addi         s4, s4, -5 #update loop 1 counter
                  auipc        a3, 821012
                  addi         s2, zero, -5 #init loop 0 counter
                  xor          s0, a7, zero
                  add          t2, t0, a2
                  addi         t6, zero, 7 #init loop 0 limit
                  add          zero, sp, t5
                  or           ra, a2, a0
                  srl          s7, a7, s7
sub_2_2_0_t:      addi         a4, a5, -1309
                  and          zero, t4, a6
                  addi         s2, s2, 4 #update loop 0 counter
                  slli         gp, a7, 24
                  or           s5, a7, t0
                  andi         t2, s5, -1166
                  blt          s2, t6, sub_2_2_0_t #branch for loop 0
                  nop
                  beq          s4, a5, sub_2_2_1_t #branch for loop 1
                  auipc        s3, 444322
                  nop
                  ori          s4, s4, 655
                  xor          t4, a7, a2
                  bne          s5, a2, 13f
                  srli         s8, t6, 2
                  slt          t3, zero, s1
                  slti         t6, s1, -1371
                  slli         t2, ra, 1
                  srl          zero, ra, t3
                  or           s0, a6, a5
                  sll          t6, a4, s0
                  bgeu         t1, s6, 13f
                  sub          a4, s8, s2
13:               nop
                  beq          s9, s0, 33f
                  and          t1, s10, a0
                  bne          t3, a5, 17f
17:               sltiu        s8, t5, -657
                  sub          s4, tp, t3
                  srli         t0, s10, 24
                  srl          t3, s5, ra
                  slti         t4, s10, -451
                  xor          a2, a3, t6
                  xori         t2, s7, 1673
                  blt          s6, s5, 26f
                  sll          t0, a1, s9
26:               bne          s11, gp, 41f
                  or           s11, s1, s5
                  sub          s0, a6, s11
                  srai         a3, a5, 18
                  bge          a7, s4, 42f
                  bge          a2, s3, 34f
                  slt          t2, t1, a1
33:               slti         a4, s7, 1480
34:               andi         a3, t4, -17
                  andi         s11, t4, -473
                  srli         s2, s3, 9
                  beq          s1, t1, 57f
                  or           a3, t3, a2
                  slti         gp, s5, -229
                  blt          s7, s3, 48f
41:               sltiu        s3, a0, 678
42:               bgeu         s5, s5, 52f
                  srl          s3, a3, tp
                  bgeu         s2, t5, 54f
                  bge          s11, ra, 52f
                  bgeu         zero, a6, 65f
                  add          ra, t5, sp
48:               srl          tp, s2, s1
                  bne          ra, tp, 51f
                  lui          s5, 390482
51:               blt          s1, s0, 67f
52:               bne          t5, a0, 62f
                  xor          a4, s5, s3
54:               bne          s7, t1, 60f
                  srl          t2, zero, a7
                  bgeu         tp, s3, 59f
57:               ori          s8, t2, 1558
                  sltiu        tp, s1, -225
59:               sltu         gp, gp, sp
60:               sub          s8, sp, t4
                  add          s5, t0, a6
62:               andi         t1, s7, -1866
                  bge          a4, t2, 79f
                  sltiu        s9, t1, -928
65:               bne          s11, t2, 67f
                  ori          s10, t5, -1987
67:               bne          t4, t2, 73f
                  srl          a0, zero, t2
                  srli         s3, s7, 26
                  or           s10, a1, t1
                  add          s6, s10, t6
                  nop
73:               nop
                  add          s5, a1, tp
                  beq          s4, a3, 91f
                  bltu         a2, s7, 87f
                  bge          s3, s9, 82f
                  bne          t2, s6, 84f
79:               xor          ra, sp, s5
                  bne          ra, ra, 95f
                  andi         t6, gp, 1570
82:               slti         a6, tp, -13
                  srl          a0, t5, t5
84:               bge          s9, s9, 98f
                  blt          tp, a4, 102f
                  andi         a6, t5, 1122
87:               xor          s5, gp, a6
                  and          s0, a3, t4
                  sra          tp, ra, s10
                  sra          ra, s6, t1
91:               add          s3, a2, sp
                  slti         s2, a0, -824
                  bgeu         a0, s5, 96f
                  slli         s0, s11, 6
95:               bge          s10, s10, 105f
96:               and          s2, a6, sp
                  sub          a3, s4, s2
98:               add          t4, s2, ra
                  andi         s10, a2, 412
                  bne          s5, sp, 111f
                  add          tp, a0, t0
102:              ori          t5, s0, -1950
                  and          s0, a1, s11
                  lui          t6, 975703
105:              nop
                  bne          a2, t2, 122f
                  beq          ra, t6, 123f
                  sra          a0, s6, a1
                  slt          s6, s5, tp
                  sltiu        s6, s10, 1332
111:              sltu         s8, t2, t5
                  auipc        s10, 631130
                  bltu         s6, t4, 119f
                  sll          sp, t6, gp
                  srli         t2, t6, 10
                  slt          t4, s7, s4
                  slli         s7, a5, 21
                  bne          t5, t6, 119f
119:              blt          t3, a7, 133f
                  sub          s0, t5, t4
                  sra          s11, tp, tp
122:              add          sp, a5, s7
123:              addi         a2, s11, 1534
                  auipc        a5, 587417
                  xori         s10, tp, 1915
                  bne          a2, a6, 145f
                  blt          s4, s3, 130f
                  bltu         a3, s3, 138f
                  beq          s10, a4, 134f
130:              slt          t2, s6, s10
                  ori          ra, s3, -606
                  bne          t1, sp, 134f
133:              add          s11, s0, t5
134:              bgeu         a0, t4, 141f
                  xori         s4, s10, -1491
                  blt          a6, a1, 138f
                  bne          s11, t4, 147f
138:              sltiu        a5, s5, -1819
                  andi         t5, a1, -707
                  sub          ra, a5, s4
141:              xor          s9, t0, sp
                  bge          s9, sp, 144f
                  andi         s5, t1, 1072
144:              ori          t4, s3, 1734
145:              ori          s8, ra, -105
                  bgeu         t4, t5, 161f
147:              bge          s4, t5, 150f
                  sub          s0, tp, s8
                  srli         t0, t2, 10
150:              bge          gp, a5, 166f
                  sra          s8, s0, t4
                  sltiu        tp, a6, 329
                  slli         s6, t3, 2
                  addi         tp, t5, -607
                  bne          t4, a0, 170f
                  bge          a5, s3, 175f
                  slli         s9, a0, 1
                  andi         s5, t5, 1860
                  auipc        t3, 304574
                  ori          a0, a4, 269
161:              lui          t4, 589431
                  addi         s2, zero, 9 #init loop 1 counter
                  addi         a0, zero, -18 #init loop 1 limit
                  or           ra, t5, s5
sub_2_8_1_t:      andi         s7, a4, 1680
                  addi         s2, s2, -2 #update loop 1 counter
                  srai         s9, t4, 30
                  add          sp, s4, s9
                  addi         s4, zero, 10 #init loop 0 counter
                  andi         a2, s3, 1766
                  sra          s6, t0, s11
                  addi         s0, zero, 11 #init loop 0 limit
                  add          a2, t1, t2
sub_2_8_0_t:      sltu         s7, a5, s5
                  auipc        t6, 791267
                  add          t6, a1, s5
                  lui          t2, 351842
                  addi         s4, s4, 9 #update loop 0 counter
                  bltu         s4, s0, sub_2_8_0_t #branch for loop 0
                  bge          s2, a0, sub_2_8_1_t #branch for loop 1
                  add          t4, ra, t5
                  ori          a2, a5, -748
                  srli         a2, sp, 6
                  slli         s7, s5, 14
                  srai         s3, a2, 26
166:              blt          s3, ra, 172f
                  and          s2, s8, t0
                  nop
                  or           s0, t6, tp
170:              bne          s0, a2, 187f
                  sub          t0, a5, s0
172:              lui          zero, 671733
                  beq          t3, ra, 185f
                  beq          s4, a7, 176f
175:              blt          t2, t1, 195f
176:              srli         t1, t3, 3
                  andi         s11, gp, -560
                  bne          a3, gp, 186f
                  bge          a1, t0, 185f
                  slti         s2, a3, 766
                  sltu         s0, a3, sp
                  srli         t0, s8, 4
                  bge          a6, s4, 193f
                  sll          s0, t0, a0
185:              auipc        s7, 743374
186:              addi         a5, gp, -1976
187:              sub          sp, s7, s3
                  bltu         s9, ra, 191f
                  srli         gp, gp, 0
                  lui          a4, 874067
191:              auipc        t5, 68078
                  andi         s3, t3, 757
193:              lui          a3, 362914
                  sll          s7, a5, t2
195:              xori         zero, s4, -1734
                  ori          s7, s5, -1305
                  bne          t6, s8, 212f
                  beq          t5, s7, 204f
                  lui          a4, 279615
                  srai         s9, s5, 20
                  beq          a1, a6, 215f
                  slt          s3, a3, s8
                  xor          a0, tp, a1
204:              slli         s10, a6, 16
                  add          a3, s7, a1
                  beq          t0, s10, 221f
                  add          t5, t2, t6
                  add          gp, a4, s0
                  bge          s10, ra, 215f
                  sltu         gp, a3, t0
                  blt          t1, t1, 227f
212:              auipc        gp, 804248
                  or           s0, s8, a2
                  beq          t5, s8, 233f
215:              bltu         ra, a3, 218f
                  slt          t4, t2, ra
                  add          t5, a1, t1
218:              or           t6, t2, s8
                  beq          a1, a6, 235f
                  and          sp, t1, s1
221:              sll          s4, a4, ra
                  ori          a2, sp, -1112
                  xor          a6, zero, t5
                  xor          a3, t0, t2
                  or           s9, t5, a7
                  srli         ra, tp, 28
227:              bgeu         t0, ra, 230f
                  srai         s2, a5, 12
                  blt          t4, t5, 236f
230:              sll          s9, s0, s11
                  srli         s3, s3, 6
                  sltiu        s2, a7, -625
233:              xori         s0, gp, -933
                  nop
235:              bne          s11, t3, 251f
236:              sub          zero, a3, a5
                  slti         t4, t2, 981
                  ori          s8, s3, 1856
                  ori          s9, s6, 297
                  xor          a6, s10, s10
                  or           s8, s6, s11
                  bge          s0, s1, 252f
                  nop
                  slli         a2, t5, 25
                  sltiu        s6, t1, 298
                  bltu         a1, a7, 257f
                  bltu         ra, a1, 266f
                  bltu         t0, s9, 250f
                  blt          s5, s0, 250f
250:              srai         s0, a6, 7
251:              ori          s4, s1, -1882
252:              sltiu        a2, s1, -310
                  slt          a6, t4, s5
                  ori          gp, s8, 1018
                  or           t1, t6, s0
                  nop
257:              srli         s3, gp, 3
                  slt          t2, a7, tp
                  nop
                  andi         s6, t5, -1964
                  and          s5, a2, s1
                  xori         s3, t6, -1046
                  sll          t1, s5, t5
                  lui          s10, 856566
                  xori         s10, a1, 834
266:              addi         a6, zero, -1777
                  blt          tp, t0, 272f
                  sltiu        s2, s5, 1354
                  slti         gp, sp, -1435
                  bge          a2, t6, 273f
                  andi         a0, s7, -1981
272:              sub          zero, sp, t1
273:              ori          a2, s9, -2042
                  beq          t6, s2, 284f
                  bne          tp, zero, 281f
                  bge          t4, s7, 278f
                  slli         s5, gp, 30
278:              lui          a0, 899119
                  or           s11, s1, a3
                  bgeu         t6, s1, 288f
281:              add          s4, s10, s6
                  slli         s3, gp, 17
                  bgeu         a7, s6, 300f
284:              xori         t1, ra, 440
                  sll          s8, s9, gp
                  or           a2, t2, a5
                  sll          s3, s2, a2
288:              xori         t5, s0, -1216
                  xori         zero, zero, 1499
                  add          s4, a5, a6
                  sltu         a4, gp, s5
                  addi         s8, s5, 1376
                  and          tp, s4, t4
                  addi         t6, s11, -1735
                  xor          a3, s6, a7
                  nop
                  ori          a2, s3, -1930
                  sra          a0, t5, t5
                  slti         s0, a2, 1599
300:              xori         t5, tp, -146
                  beq          s5, a6, 311f
                  or           t6, s5, s7
                  auipc        zero, 139469
                  srl          sp, s7, ra
                  bltu         s3, a7, 325f
                  srli         s9, a2, 22
                  srai         a6, s8, 18
                  xor          t1, s5, s2
                  ori          s10, a3, -111
                  ori          zero, a0, 1299
311:              xor          a5, s11, s7
                  sltiu        a2, s0, -1104
                  xori         t5, s0, 363
                  sub          a6, a6, a3
                  sub          t0, s6, t2
                  sll          t2, s6, a0
                  srli         a2, a0, 4
                  auipc        zero, 456435
                  add          s0, ra, t1
                  nop
                  sub          s7, s4, s10
                  slli         t6, t1, 22
                  bge          t1, a2, 325f
                  slli         zero, zero, 12
325:              sll          s3, s3, s11
                  andi         a0, a1, -1813
                  slli         a6, t2, 13
                  xor          gp, s11, s2
                  sltiu        t1, a6, -461
                  auipc        ra, 496820
                  andi         s2, t2, -495
                  slli         s11, a1, 30
                  slti         t6, ra, 1374
                  andi         t1, s8, 1683
                  srl          s6, s4, sp
                  srl          a5, t6, s8
                  lui          a6, 604812
                  sll          s10, t0, a6
                  beq          s7, t3, 351f
                  lui          t6, 738643
                  add          s10, tp, a7
                  and          t2, s5, s8
                  xor          a2, t5, s0
                  sltu         t0, gp, s8
                  srl          zero, gp, a2
                  xori         s4, a0, -1212
                  add          tp, s6, ra
                  beq          a7, zero, 358f
                  srli         t5, s1, 8
                  sltu         t5, s3, t0
351:              bltu         t2, ra, 353f
                  ori          t6, s2, -1893
353:              slti         t6, s6, 1669
                  ori          t3, a5, 1521
                  srai         a4, s8, 7
                  sub          s6, t0, s5
                  auipc        s10, 7501
358:              ori          a4, zero, 1251
                  sltu         s6, t6, s11
                  bgeu         s1, zero, 363f
                  srai         t5, zero, 15
                  slt          s8, s10, tp
363:              lui          s11, 100735
                  andi         zero, a4, -808
                  srai         gp, tp, 17
                  sll          sp, a5, a3
                  bge          t1, t5, 373f
                  or           a4, s10, gp
                  slti         s9, s10, 896
                  sra          s0, s3, s11
                  ori          t5, a0, -565
                  slt          t2, gp, s0
373:              slli         t2, s2, 4
                  xori         a5, s9, -738
                  bne          a0, s5, 385f
                  sub          tp, s5, a5
                  auipc        zero, 80739
                  xori         s4, s1, 344
                  slli         t2, s3, 3
                  lui          t2, 634466
                  srl          tp, s11, tp
                  srl          s4, s10, a5
                  ori          s6, a6, -1323
                  sll          sp, s2, t4
385:              srli         a6, t1, 26
                  sll          s0, s2, a4
                  bge          s1, tp, 402f
                  slti         s9, a3, 1428
                  addi         s5, s0, 408
                  slti         a4, t3, 245
                  bge          zero, tp, 397f
                  bge          s3, s9, 399f
                  sltu         a4, tp, t5
                  slt          s6, t3, a1
                  sub          t3, ra, a6
                  slli         a6, a2, 20
397:              sra          s2, a0, a7
                  bne          s5, a3, 400f
399:              xor          s0, a6, a2
400:              beq          s5, a0, 410f
                  and          t6, s2, t3
402:              nop
                  or           a0, s7, s7
                  xor          t6, s10, t2
                  sra          a0, a7, s6
                  or           ra, zero, a2
                  or           s2, s10, a5
                  sltiu        s8, s7, -1690
                  slli         s8, s3, 25
410:              lui          a6, 867446
                  andi         s3, s7, 1738
                  addi         s3, s8, -129
                  and          a6, t6, t0
                  srl          s8, s5, t6
                  slti         ra, t2, -840
                  nop
                  addi         sp, ra, -267
                  beq          a3, s5, 420f
                  bgeu         t1, a5, 424f
420:              slti         t6, zero, 263
                  nop
                  slti         a0, s10, 912
                  andi         a4, a3, 1609
424:              nop
                  srli         s4, a0, 16
                  add          s4, s5, s9
                  lui          sp, 893208
                  sra          a5, s4, t6
                  bge          a2, s8, 441f
                  nop
                  sltu         a4, t4, a4
                  sra          a5, a5, s0
                  beq          s7, ra, 443f
                  sltu         zero, s8, t6
                  add          s2, a5, s11
                  sra          t4, ra, t0
                  slti         s11, a3, -192
                  or           t2, t4, a5
                  srli         s5, s4, 18
                  sll          s2, t2, s9
                  sll          a0, s4, s1
                  srli         t3, ra, 13
                  auipc        a3, 901682
                  slli         tp, tp, 13
                  srl          t3, t5, s5
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  and          a5, s8, a0
                  srai         a5, t4, 22
                  addi         s7, t0, -1180
                  addi         a6, zero, -2 #init loop 1 counter
                  auipc        a2, 759553
                  auipc        a2, 589037
                  addi         a4, zero, 10 #init loop 1 limit
                  and          sp, s1, a0
                  slti         t3, t1, 1136
sub_2_1_1_t:      sltiu        sp, a2, -1349
                  lui          t5, 386833
                  ori          s9, s1, -1222
                  addi         a6, a6, 6 #update loop 1 counter
                  or           a3, sp, tp
                  sub          t6, a7, a5
                  ori          s5, a1, -1692
                  slli         s9, s9, 4
                  srli         s2, s3, 16
                  addi         s0, zero, -9 #init loop 0 counter
                  addi         a0, zero, 6 #init loop 0 limit
                  ori          s9, s5, 1559
                  sltiu        s5, s4, -320
sub_2_1_0_t:      and          s11, a3, tp
                  andi         s4, t4, -612
                  xori         s11, s5, -578
                  ori          s4, t2, -536
                  addi         s0, s0, 10 #update loop 0 counter
                  and          s4, s0, t2
                  bltu         s0, a0, sub_2_1_0_t #branch for loop 0
                  auipc        sp, 21497
                  lui          a2, 527229
                  sll          a5, a1, s2
                  add          s11, a5, t4
                  add          sp, t4, s9
                  sub          gp, s9, s11
                  andi         t2, s4, -1257
                  beq          a6, a4, sub_2_1_1_t #branch for loop 1
                  add          a5, s10, s7
                  auipc        t0, 15173
                  sub          a0, s1, s4
441:              sltiu        s11, a2, -1458
                  srli         tp, a2, 10
443:              sltiu        t0, a2, -1897
                  sll          gp, t2, s5
                  and          a2, s9, s10
                  sll          t0, s0, s7
                  beq          t4, zero, 463f
                  xori         t0, t4, 1037
                  andi         a5, s9, 19
                  srai         s11, t3, 27
                  bgeu         t2, t4, 465f
                  bne          t4, t5, 468f
                  slli         a5, s10, 16
                  addi         gp, zero, 6 #init loop 1 counter
                  addi         sp, zero, 16 #init loop 1 limit
sub_2_4_1_t:      slti         zero, s4, -786
                  addi         gp, gp, 6 #update loop 1 counter
                  srl          a4, tp, s3
                  addi         a6, zero, 9 #init loop 0 counter
                  slli         t6, a5, 16
                  addi         a3, zero, 9 #init loop 0 limit
                  add          a0, ra, s2
sub_2_4_0_t:      sub          s8, t5, s2
                  addi         a6, a6, -7 #update loop 0 counter
                  bgeu         a6, a3, sub_2_4_0_t #branch for loop 0
                  bltu         gp, sp, sub_2_4_1_t #branch for loop 1
                  slli         s2, t1, 5
                  sltu         a6, s0, sp
                  lui          s3, 942097
                  bge          s7, a2, 472f
                  or           sp, t3, s8
                  ori          a5, s2, 52
                  and          gp, a4, s5
                  and          a6, s5, t5
                  bge          sp, t0, 469f
                  xor          t6, a3, s3
463:              srai         tp, a1, 7
                  ori          t0, a6, -1078
465:              sltiu        t5, a0, 1155
                  andi         s5, a5, 1850
                  or           s9, t1, gp
468:              slt          t4, s2, s6
469:              bltu         s6, s0, 484f
                  xori         s0, a5, 2037
                  ori          t3, a4, 1052
472:              slti         s3, s2, 781
                  andi         s9, s2, 197
                  sra          t6, s4, a5
                  ori          s11, gp, -1132
                  xor          s3, t1, t3
                  and          s6, gp, t3
                  sltu         t5, t1, a0
                  bgeu         sp, a3, 489f
                  slt          s4, s11, a7
                  sub          a5, a6, t4
                  srli         s6, s8, 6
                  slli         t0, t0, 24
484:              ori          s4, t6, 323
                  sltiu        s0, s0, -1565
                  beq          s3, a5, 489f
                  sll          zero, sp, tp
                  blt          s11, s11, 499f
489:              bgeu         gp, ra, 490f
490:              bgeu         s10, s10, 509f
                  bge          sp, a7, 493f
                  bltu         s1, tp, 512f
493:              sra          s7, t2, t6
                  or           t1, tp, t4
                  bge          zero, t6, 498f
                  bltu         a6, s6, 513f
                  slt          t2, t4, s3
498:              nop
499:              lui          s8, 424991
                  xor          t4, s1, ra
                  ori          s10, s10, -1038
                  bltu         tp, a1, 504f
                  srai         s9, t6, 20
504:              slli         a5, a3, 28
                  or           sp, a6, t3
                  addi         t3, zero, 1 #init loop 1 counter
                  addi         s7, zero, 11 #init loop 1 limit
sub_2_6_1_t:      slt          a2, s6, s10
                  xori         sp, s2, 1209
                  addi         t3, t3, 5 #update loop 1 counter
                  sltiu        s2, t6, -868
                  addi         a4, zero, 10 #init loop 0 counter
                  addi         s9, zero, -9 #init loop 0 limit
                  sra          t4, s2, a2
sub_2_6_0_t:      addi         a0, a2, 1966
                  addi         a4, a4, -1 #update loop 0 counter
                  sltu         a5, a5, tp
                  bge          a4, s9, sub_2_6_0_t #branch for loop 0
                  beq          t3, s7, sub_2_6_1_t #branch for loop 1
                  ori          a2, ra, 1456
                  blt          s7, s11, 512f
                  sra          t4, sp, s9
                  and          s0, s7, s7
509:              ori          t0, a1, -1698
                  slt          a6, s8, t0
                  srl          ra, t4, s3
512:              lui          s7, 914626
513:              bge          s4, a7, 532f
                  nop
                  add          t3, a1, zero
                  bne          s4, s8, 519f
                  sltu         a0, t1, s11
                  addi         t3, s6, -1143
519:              sub          s8, s2, t2
                  andi         t5, zero, -1215
                  slli         a5, ra, 14
                  addi         a4, a0, 271
                  srai         t5, a1, 23
                  bltu         s10, a0, 541f
                  sltu         a3, t1, a3
                  auipc        a2, 650636
                  ori          a0, sp, 2012
                  sub          s5, t5, a3
                  srl          a2, a4, a4
                  lui          s6, 775313
                  sltiu        s0, s4, -1824
532:              andi         t3, s1, 792
                  ori          ra, s1, -670
                  bgeu         t0, t4, 553f
                  sltiu        a5, t6, 924
                  bge          a5, t2, 542f
                  ori          a3, s4, -979
                  bgeu         tp, s1, 544f
                  srli         gp, t6, 31
                  bgeu         t2, s6, 550f
541:              bge          a3, s5, 551f
542:              lui          t0, 643419
                  ori          t5, tp, -1000
544:              andi         t2, sp, -1281
                  srl          s7, s4, a3
                  slti         s2, a2, 531
                  sra          s3, a7, a3
                  srl          s2, s4, gp
                  ori          s0, s3, -988
550:              auipc        t6, 406229
551:              ori          s3, s9, -306
                  sll          t3, tp, t3
553:              or           sp, s9, t3
                  sltiu        a5, ra, -1235
                  nop
                  and          gp, tp, t2
                  sltu         ra, tp, s6
                  add          s8, sp, t1
                  ori          s6, t1, -213
                  srli         t4, a0, 17
                  sltu         a2, a3, ra
                  xori         a5, a0, -1138
                  srai         s11, s9, 14
                  andi         sp, t1, -777
                  srli         a5, s11, 5
                  blt          s8, s2, 585f
                  slli         zero, zero, 25
                  srli         s11, a0, 28
                  ori          s2, s2, 1945
                  and          s5, tp, s9
                  addi         t0, a4, -1498
                  blt          a1, ra, 574f
                  bltu         a5, gp, 574f
574:              nop
                  blt          s11, s4, 587f
                  ori          zero, s2, 996
                  xor          t3, s6, s7
                  beq          a7, s8, 592f
                  srai         s9, zero, 1
                  addi         a3, s0, -463
                  and          gp, t0, s7
                  blt          s7, s9, 589f
                  bgeu         s1, s8, 598f
                  ori          s4, s9, -1762
585:              srai         a0, s10, 15
                  slli         s6, t6, 25
587:              addi         ra, a2, -1095
                  srai         s10, a5, 25
589:              or           s9, s4, s5
                  srai         a3, tp, 16
                  andi         tp, sp, -1925
592:              addi         s9, ra, -547
                  srli         t2, a1, 16
                  lui          zero, 1016467
                  ori          t2, a2, 20
                  sub          s8, s0, a4
                  andi         tp, tp, -615
598:              slti         s5, t1, -1413
                  xori         tp, t4, -728
                  auipc        t6, 438813
                  xori         s4, t5, -427
                  slti         s8, s8, -1575
                  beq          t6, t6, 619f
                  bltu         ra, sp, 609f
                  sll          a5, s0, s7
                  srl          s2, t5, a6
                  srl          a3, s7, t0
                  addi         t0, s10, 1799
609:              bge          s0, a6, 615f
                  bne          s8, t5, 625f
                  andi         zero, zero, 1139
                  auipc        a5, 167266
                  srli         s3, s8, 8
                  andi         a0, a6, -349
615:              bltu         s10, t1, 618f
                  bltu         a6, t4, 624f
                  andi         s5, t0, -1287
618:              srli         s9, s11, 29
619:              add          s5, a2, t0
                  andi         s0, t2, -443
                  blt          s9, s9, 623f
                  slli         s11, t2, 14
623:              blt          a5, s8, 633f
624:              auipc        t5, 741128
625:              auipc        s9, 711344
                  xori         a3, sp, 508
                  beq          s5, a1, 637f
                  sll          s8, gp, t5
                  bne          s10, t5, 632f
                  sll          s6, ra, t2
                  addi         t6, s10, 1764
632:              bne          t1, s3, 648f
633:              ori          s4, t4, 1995
                  bne          s3, zero, 650f
                  addi         sp, a5, 170
                  slt          gp, a3, t5
637:              lui          a2, 1012674
                  sub          t0, t5, t5
                  sll          s10, t5, t3
                  srli         a5, gp, 21
                  xori         a3, a5, 841
                  sra          tp, s3, tp
                  slt          gp, s4, s5
                  auipc        t2, 450510
                  srai         t5, t2, 10
                  or           a3, t1, s10
                  bne          t4, s8, 658f
648:              addi         s7, tp, -1923
                  srl          s11, a5, t5
650:              nop
                  srli         s5, s11, 11
                  xori         a0, tp, 72
                  sltu         t4, t5, s4
                  slli         s0, s6, 23
                  add          zero, s0, ra
                  and          s4, a1, a1
                  auipc        a4, 105435
658:              sltiu        gp, a7, -1745
                  auipc        s9, 77118
                  sltiu        s3, zero, 760
                  srai         zero, s9, 19
                  slli         a4, zero, 3
                  add          t3, ra, a3
                  srli         a4, a7, 22
                  srli         a5, a4, 24
                  nop
                  auipc        a2, 130359
                  xori         t0, s11, -1602
                  blt          t5, a1, 689f
                  bltu         s7, a6, 672f
                  nop
672:              addi         t2, s2, 798
                  bne          t6, t0, 675f
                  bgeu         a3, zero, 686f
675:              xori         a3, ra, -356
                  auipc        tp, 117044
                  srli         a4, a2, 7
                  sll          s4, a0, t5
                  and          s8, s6, s9
                  blt          a5, t6, 686f
                  bge          a6, t0, 684f
                  slli         s11, s9, 1
                  sra          s6, a1, a5
684:              lui          sp, 695473
                  xori         t1, t6, -331
686:              nop
                  slli         sp, s3, 17
                  add          s2, a5, gp
689:              sll          a6, zero, tp
                  slt          s6, a0, s3
                  or           s3, a6, t4
                  bgeu         a4, zero, 693f
693:              and          s9, s7, s11
                  sub          t4, s0, zero
                  sltiu        t4, s4, -980
                  lui          a2, 1042557
                  andi         t3, gp, 564
                  nop
                  and          t4, s6, a3
                  bltu         s4, a4, 714f
                  bltu         a7, a1, 707f
                  bge          s11, gp, 712f
                  or           sp, t2, s10
                  beq          a6, s8, 720f
                  bltu         a7, gp, 721f
                  slli         t4, s10, 9
707:              sll          s9, s6, t1
                  slt          s11, t0, s7
                  sll          s6, sp, s11
                  auipc        zero, 479426
                  sltu         a2, a3, t3
712:              and          tp, s3, t5
                  nop
714:              or           t5, s6, t4
                  sll          gp, zero, s5
                  ori          gp, a0, -502
                  blt          t6, s1, 719f
                  lui          zero, 154348
719:              auipc        s2, 148610
720:              sltu         a2, s6, sp
721:              beq          a2, zero, 741f
                  slli         s9, ra, 23
                  bgeu         s10, t2, 726f
                  sltu         s2, sp, s3
                  addi         t3, s1, 1283
726:              sub          s0, gp, a3
                  ori          a3, a2, -1938
                  slt          a2, s1, s8
                  lui          a6, 154075
                  andi         s5, ra, 561
                  bltu         t3, a5, 733f
                  sltu         s0, s3, tp
733:              sltiu        t2, a4, -963
                  addi         s0, t4, -1218
                  sltu         s0, s3, t1
                  lui          s5, 363777
                  sltiu        a6, s5, 1309
                  blt          s3, tp, 753f
                  blt          t4, a0, 742f
                  sltu         t6, t3, a7
741:              bltu         a1, t1, 757f
742:              bgeu         t3, s2, 748f
                  bltu         s6, s11, 762f
                  srli         sp, t5, 28
                  ori          a0, a0, 1013
                  sub          s8, s10, tp
                  bltu         t6, s9, 757f
748:              or           t2, s7, t0
                  xor          t0, t4, t6
                  lui          t5, 418646
                  sra          ra, t1, s9
                  xori         sp, s10, 533
753:              bltu         a1, ra, 762f
                  slt          t5, t1, a0
                  auipc        s0, 933683
                  xor          s8, a2, tp
757:              sra          s0, a0, a1
                  blt          t1, a3, 762f
                  sll          ra, t4, s1
                  bge          t3, s6, 762f
                  and          t1, ra, t4
762:              sltu         ra, tp, sp
                  lw           ra, 4(a7)
                  sltiu        s11, a2, 1095
                  slt          s4, a4, t1
                  andi         s0, s6, 400
                  addi         a7, a7, 32
                  and          t4, t0, s11
                  xori         a5, tp, 1712
                  sra          s9, s8, tp
                  or           s6, s11, a1
1102:             addi x26, x1, 0
1102:             jalr x26, x26, 0
sub_3:            beq          s1, s1, sub_3_stack_p
                  sra          s3, s1, s7
                  sub          a3, t3, a0
sub_3_stack_p:    addi         a7, a7, -52
                  sw           ra, 4(a7)
                  lui          a5, 23455
                  sub          tp, zero, s0
                  addi         a3, zero, 8 #init loop 0 counter
                  addi         a5, zero, 6 #init loop 0 limit
                  sra          s4, t0, t0
sub_3_3_0_t:      slti         s4, s11, 921
                  addi         a3, a3, -2 #update loop 0 counter
                  bgeu         a3, a5, sub_3_3_0_t #branch for loop 0
                  sltiu        t4, s10, -944
                  addi         s10, zero, 10 #init loop 0 counter
                  nop
                  addi         a2, zero, 8 #init loop 0 limit
sub_3_1_0_t:      lui          ra, 267359
                  sll          s9, a3, t5
                  andi         s0, t3, 472
                  srl          gp, t0, t4
                  slt          a6, s10, s6
                  addi         s10, s10, -7 #update loop 0 counter
                  srli         a3, s0, 5
                  bgeu         s10, a2, sub_3_1_0_t #branch for loop 0
                  and          s4, s2, s1
                  addi         t3, zero, 10 #init loop 1 counter
                  lui          sp, 911303
                  addi         s3, zero, 8 #init loop 1 limit
                  addi         s7, s2, 585
sub_3_4_1_t:      and          s7, t5, ra
                  addi         t3, t3, -4 #update loop 1 counter
                  addi         ra, zero, 1 #init loop 0 counter
                  addi         t5, zero, 17 #init loop 0 limit
                  xor          t1, s2, gp
                  lui          gp, 545017
                  andi         s6, s0, -789
sub_3_4_0_t:      and          a2, a6, s4
                  addi         ra, ra, 8 #update loop 0 counter
                  beq          ra, t5, sub_3_4_0_t #branch for loop 0
                  addi         a2, a2, 1907
                  sra          tp, s8, s3
                  add          s9, t6, s5
                  bgeu         t3, s3, sub_3_4_1_t #branch for loop 1
                  sra          s5, a5, s0
                  addi         a0, zero, 6 #init loop 0 counter
                  srai         s5, t0, 15
                  ori          a6, t2, 76
                  addi         t6, s10, -2045
                  andi         a2, s1, 515
                  addi         sp, zero, 9 #init loop 0 limit
                  srai         a3, s5, 10
                  sll          t3, ra, a1
sub_3_2_0_t:      lui          a6, 244995
                  ori          t2, t3, 579
                  sll          s9, s5, a5
                  auipc        a5, 583474
                  add          a6, tp, a1
                  slli         s5, s5, 29
                  addi         a0, a0, 1 #update loop 0 counter
                  nop
                  srl          ra, s2, t4
                  andi         s7, s5, 1393
                  bne          a0, sp, sub_3_2_0_t #branch for loop 0
                  sltu         s2, s4, t3
                  addi         t1, zero, 10 #init loop 1 counter
                  sra          tp, sp, a7
                  addi         a5, t3, -1544
                  addi         gp, zero, 10 #init loop 1 limit
                  addi         s11, t6, 748
                  nop
                  sltu         s5, t2, s7
                  andi         a0, s10, 1355
sub_3_0_1_t:      lui          s0, 638954
                  sltu         t0, t1, t2
                  ori          tp, a2, 1089
                  addi         t1, t1, -9 #update loop 1 counter
                  addi         t4, zero, -5 #init loop 0 counter
                  add          a0, t6, a5
                  addi         s4, zero, -11 #init loop 0 limit
                  srai         s7, s10, 3
sub_3_0_0_t:      sltiu        zero, s8, -1034
                  addi         t4, t4, -6 #update loop 0 counter
                  slt          t5, ra, s0
                  bge          t4, s4, sub_3_0_0_t #branch for loop 0
                  slti         t2, ra, -558
                  slt          s0, s2, s11
                  andi         t2, t3, 989
                  srl          a2, a2, s5
                  srl          ra, gp, t1
                  srl          a0, t0, a6
                  bgeu         t1, gp, sub_3_0_1_t #branch for loop 1
                  add          s9, s11, ra
                  addi         s7, zero, -4 #init loop 1 counter
                  xor          a2, s3, a4
                  or           a2, a0, s4
                  addi         t3, zero, 19 #init loop 1 limit
sub_3_5_1_t:      sub          sp, a5, s0
                  addi         s7, s7, 5 #update loop 1 counter
                  addi         s2, zero, -1 #init loop 0 counter
                  srai         sp, s2, 20
                  add          s11, s9, a0
                  sra          s8, s1, t2
                  addi         tp, zero, 5 #init loop 0 limit
                  slt          s3, a0, tp
                  sll          a0, t3, t0
                  srli         sp, a2, 14
sub_3_5_0_t:      lui          ra, 485860
                  slli         t0, t1, 23
                  srl          t2, a3, s7
                  addi         s2, s2, 2 #update loop 0 counter
                  lui          gp, 620089
                  bltu         s2, tp, sub_3_5_0_t #branch for loop 0
                  nop
                  bltu         s7, t3, sub_3_5_1_t #branch for loop 1
                  xor          ra, a0, s4
                  addi         gp, zero, -7 #init loop 1 counter
                  sltu         a6, t4, t2
                  sll          t6, s2, ra
                  andi         s11, a2, -928
                  add          t6, a7, t2
                  andi         a6, s2, -1803
                  addi         a2, zero, -13 #init loop 1 limit
                  nop
                  auipc        t3, 378190
sub_3_6_1_t:      sltu         s7, s2, a4
                  andi         s0, s8, 1177
                  auipc        t1, 952916
                  srl          s5, t4, a4
                  slti         t4, s9, 588
                  addi         gp, gp, -3 #update loop 1 counter
                  addi         s9, zero, 1 #init loop 0 counter
                  addi         s4, zero, -11 #init loop 0 limit
                  srai         t4, s11, 25
                  nop
sub_3_6_0_t:      slti         tp, s6, 660
                  sltu         a0, a3, t2
                  srli         a0, a4, 23
                  slt          t2, s2, s8
                  addi         s9, s9, -4 #update loop 0 counter
                  srli         s10, s0, 21
                  lui          t6, 389746
                  bne          s9, s4, sub_3_6_0_t #branch for loop 0
                  ori          a0, s11, 1741
                  add          s11, s11, s0
                  and          s2, s6, t6
                  srli         a5, a1, 11
                  beq          gp, a2, sub_3_6_1_t #branch for loop 1
                  sltiu        a6, s4, -1715
                  srl          t4, s3, ra
                  slli         ra, s8, 22
                  addi         s9, s11, -1807
                  slti         a5, a0, -1306
                  srai         t4, s8, 25
                  addi         a3, a2, -1254
                  sra          s9, s3, s5
                  beq          ra, t2, 22f
                  sltu         t3, s10, s7
                  bne          s7, a3, 12f
                  slli         sp, a3, 16
                  xor          t2, zero, t0
12:               ori          a5, s4, 1070
                  xori         a0, tp, -1614
                  sll          s11, tp, a1
                  add          a2, zero, ra
                  srli         a0, s0, 0
                  nop
                  ori          s9, a1, -1172
                  sltiu        s8, s4, 967
                  slli         s8, s0, 31
                  bne          s3, a3, sub_3_j6 #branch to jump instr
                  ori          a2, ra, 894
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  blt          tp, s11, 19f
                  lui          t4, 641992
19:               andi         t1, s7, 1549
                  bltu         sp, t1, 38f
                  and          s5, gp, ra
22:               slli         s8, s5, 2
                  and          a2, a4, t5
                  ori          tp, t0, 700
                  xori         tp, ra, -908
                  slt          gp, a6, a0
                  slli         a4, a4, 11
                  srai         tp, s8, 18
                  bgeu         a3, s8, 41f
                  bge          t5, s2, 46f
                  srli         ra, t1, 17
                  sra          s7, s3, s8
                  auipc        a6, 354184
                  blt          ra, s6, 46f
                  xor          s4, s3, t2
                  sll          s3, a1, s4
                  ori          a5, gp, 1902
38:               bgeu         a7, s3, 40f
                  slli         t5, t3, 21
40:               sra          t0, zero, a3
41:               slli         s6, t2, 29
                  slt          s7, s6, zero
                  nop
                  sra          t1, s2, t1
                  sra          s2, s8, t6
46:               bgeu         s10, s5, 47f
47:               add          t2, a5, s1
                  sra          s8, s0, t2
                  srli         a6, s4, 23
                  slli         t3, a1, 10
                  lui          tp, 833703
                  sltu         t5, a2, s4
                  srai         s8, s10, 19
                  srai         s3, tp, 0
                  nop
                  sra          s0, s11, gp
                  bltu         a4, s11, 75f
                  bge          zero, s7, 64f
                  sra          s9, gp, ra
                  ori          tp, t1, 1581
                  xori         a3, a3, -1426
                  slli         t4, tp, 13
                  blt          s5, t1, 75f
64:               xor          t0, sp, s7
                  beq          tp, a5, 69f
                  lui          s7, 1048205
                  xori         sp, t0, -1026
                  andi         a4, sp, -1462
69:               auipc        t3, 379558
                  slt          s11, a7, t0
                  bltu         s1, s0, 72f
72:               add          gp, s1, a3
                  sll          t2, ra, s9
                  bne          a6, a3, 94f
75:               beq          a0, t3, 88f
                  lui          gp, 324024
                  auipc        zero, 229152
                  slli         t6, s11, 7
                  addi         gp, t0, -586
                  sltu         t0, s1, sp
                  bltu         tp, gp, 100f
                  blt          sp, s2, 93f
                  slli         a2, a1, 5
                  blt          ra, s0, 97f
                  and          s10, ra, a2
                  sll          a6, sp, t6
                  add          ra, tp, t2
88:               srli         s5, s1, 21
                  xor          a0, t2, t0
                  blt          t2, t5, 109f
                  nop
                  bge          gp, gp, 107f
93:               xori         a5, a4, -1761
94:               andi         s0, t0, 383
                  bltu         s7, zero, 100f
                  xori         s11, t6, 1301
97:               bne          tp, a5, 103f
                  slli         t5, s8, 18
                  srl          gp, a7, t0
100:              sra          zero, s10, s9
                  and          s7, tp, s11
                  andi         s7, t1, -1338
103:              sltu         sp, t3, a6
                  bgeu         a1, s2, 122f
                  beq          s8, t1, 116f
                  bltu         t3, a7, 117f
107:              xor          s5, t1, tp
                  slt          s7, a0, s7
109:              bge          t2, s2, 120f
                  sltiu        a0, t3, 1944
                  xor          gp, s10, s7
                  bne          s5, t5, 122f
                  sll          s9, ra, s2
                  sltiu        t3, a1, 1243
                  or           tp, s4, s2
116:              add          t1, ra, a6
117:              srl          s7, a7, a3
                  addi         a5, s11, -744
                  auipc        sp, 156853
120:              auipc        t1, 770434
                  addi         s5, s8, 445
122:              sll          gp, s7, s1
                  sltu         t0, s4, a1
                  lui          s3, 767270
                  nop
                  sll          s6, a5, s9
                  slli         t3, zero, 24
                  beq          t3, t5, 144f
                  sltu         s3, s0, s0
                  beq          a1, s2, 139f
                  sltiu        t0, a2, -1361
                  srai         ra, s2, 7
                  auipc        s4, 130140
                  sra          s10, s2, a2
                  sll          t4, t0, a6
                  bgeu         s5, sp, 149f
                  sra          s3, t3, tp
                  sltiu        a4, t0, 327
139:              andi         zero, t6, 514
                  ori          a4, s5, 951
                  beq          t4, a5, 153f
                  slli         tp, t3, 1
                  or           s10, t5, s1
144:              beq          zero, a7, 160f
                  lui          s2, 499500
                  sub          s3, t3, a7
                  or           t6, s5, tp
                  sll          t6, s0, a2
149:              and          gp, tp, a4
                  and          tp, a4, t5
                  sub          sp, s11, s8
                  auipc        s3, 805910
153:              addi         s10, s7, -95
                  lui          t4, 981252
                  slti         s5, t1, -140
                  sltu         t3, gp, s7
                  sll          s7, t2, gp
                  xori         t0, t6, -2000
                  xor          zero, s7, t2
160:              nop
                  nop
                  nop
                  srli         s0, s4, 31
                  srl          t4, zero, a5
                  lui          sp, 866220
                  sltu         s3, s4, s9
                  sub          s8, a2, a5
                  slt          s6, a1, t2
                  bge          zero, s0, 170f
170:              lui          sp, 108499
                  and          s0, t6, a4
                  ori          tp, zero, -204
                  bltu         ra, t6, 178f
                  sub          s10, tp, zero
                  srl          a6, s8, t4
                  addi         s0, a6, 1573
                  nop
178:              srli         t4, a2, 10
                  xori         s5, a1, -247
                  ori          s0, a4, -261
                  srl          t1, s11, t4
                  xori         a6, t1, -901
                  beq          s1, s0, 201f
                  slt          s3, s4, s3
                  andi         t3, s4, -79
                  sltiu        s7, zero, -122
                  auipc        a0, 541345
                  sub          gp, s5, sp
                  srli         a5, s9, 15
                  slti         a0, a7, 867
                  srl          s5, s5, s7
                  sub          a2, s4, t5
                  beq          tp, sp, 204f
                  sub          s6, a4, s4
                  lui          t2, 823457
                  srai         a0, tp, 28
                  lui          a0, 256114
                  slli         s7, a3, 2
                  auipc        a6, 738181
                  slli         sp, s10, 9
201:              sll          sp, gp, t5
                  ori          s6, s7, 1538
                  or           tp, a1, s1
204:              addi         a5, zero, 1479
                  srl          a5, s10, ra
                  sra          s11, tp, t2
                  add          t5, t4, a4
                  bltu         a6, s9, 214f
                  ori          s4, s11, -19
                  bne          s11, a5, 212f
                  or           s2, s7, t4
212:              add          t1, s1, s1
                  slti         t3, s9, -810
214:              slli         s9, s7, 15
                  bltu         a3, s11, 230f
                  srli         a0, a0, 0
                  slli         t1, s0, 20
                  ori          t1, a2, 612
                  andi         tp, s6, 1033
                  xor          s6, a4, a1
                  and          t0, t4, s9
                  nop
                  bltu         sp, t0, 229f
                  auipc        s5, 419560
                  xor          t6, t6, a4
                  slti         s11, s7, -461
                  bge          t5, t1, 243f
                  lui          a5, 778700
229:              sll          s11, t5, s2
230:              addi         a4, s2, 2027
                  srl          a5, t6, sp
                  bge          t3, t4, 251f
                  bne          s4, s6, 237f
                  srli         s2, s3, 23
                  auipc        s5, 551084
                  bge          a1, s2, 248f
237:              lui          sp, 26246
                  bge          a2, t6, 258f
                  or           s8, s0, s11
                  sll          s7, s10, a4
                  sltu         s7, a7, a3
                  addi         s2, t4, 845
243:              xor          t2, t3, a2
                  and          t3, s4, t0
                  xori         s5, s4, 1667
                  blt          s2, t5, 264f
                  srli         s11, zero, 29
248:              nop
                  and          s6, t3, s2
                  bge          s3, s5, 251f
251:              ori          t2, a4, -1684
                  lui          a4, 916115
                  sltiu        a0, a7, 559
                  bgeu         s1, s0, 256f
                  sub          t4, tp, t0
256:              addi         s8, a3, 283
                  bge          t5, sp, 276f
258:              slt          t4, t6, tp
                  srl          s5, a2, s4
                  and          t5, a0, zero
                  srl          a5, s1, zero
                  srai         s8, s8, 17
                  srli         a2, s4, 1
264:              srli         s5, s3, 6
                  lui          a5, 396281
                  blt          s3, a4, 281f
                  add          s6, t4, ra
                  srli         s6, a1, 1
                  lui          t3, 856322
                  sltu         t6, s3, t4
                  sll          t0, a6, s7
                  blt          t2, sp, 285f
                  slt          s11, s4, s9
                  auipc        ra, 513809
                  beq          a1, s2, 286f
276:              sltu         t0, s5, a6
                  sub          a4, s5, sp
                  nop
                  and          a2, a4, s2
                  srai         t6, s5, 28
281:              srli         sp, sp, 18
                  srl          s9, s0, ra
                  auipc        s7, 286226
                  sltiu        s10, zero, -1150
285:              and          s0, s9, a5
286:              bne          s1, s0, 295f
                  ori          s2, a2, -1704
                  sltu         t6, t4, t2
                  sub          sp, t0, s8
                  add          a3, s2, s10
                  blt          s9, t4, 294f
                  slti         s4, a3, 1803
                  xori         t4, a2, 942
294:              lui          t2, 1013520
295:              add          sp, s9, a5
                  lui          sp, 997183
                  sub          zero, t6, t4
                  addi         s4, s2, 622
                  slli         tp, a3, 2
                  slli         s6, s10, 6
                  auipc        s3, 1024770
                  sll          a6, zero, s0
                  slti         s8, a7, 1711
                  add          s0, zero, s5
                  auipc        t3, 38922
                  beq          s8, a6, 324f
                  srl          sp, gp, s1
                  lui          t4, 1018045
                  sltiu        t3, sp, 1030
                  srli         t6, s6, 15
                  srli         s9, t6, 20
                  xori         s9, t0, -1507
                  srai         ra, s4, 17
                  lui          t6, 543338
                  sll          gp, a2, a5
                  bgeu         s8, s9, 328f
                  slt          zero, ra, zero
                  slti         t5, t3, -30
                  lui          t3, 827536
                  nop
                  sltiu        s9, s2, 1976
                  bltu         a3, t5, 333f
                  beq          t6, sp, 333f
324:              bltu         s11, s2, 335f
                  sll          s8, s9, s5
                  add          s7, s3, a2
                  slt          t1, t2, s3
328:              bge          t3, s1, 339f
                  bltu         zero, a7, 344f
                  nop
                  addi         t2, t5, 49
                  bgeu         s2, a6, 334f
333:              xor          s6, a1, a4
334:              slti         t3, t0, -683
335:              sltiu        gp, s1, -893
                  srl          t1, a7, zero
                  bne          a6, t0, 349f
                  nop
339:              andi         a4, a7, 1094
                  sub          zero, a4, a6
                  srl          s4, t3, t0
                  and          s3, t2, s2
                  xor          a0, s2, tp
344:              nop
                  bne          s11, s1, 349f
                  sltiu        sp, t6, -6
                  slti         gp, s11, -88
                  sltu         t2, a2, a6
349:              sltiu        t1, s0, 1271
                  lw           ra, 4(a7)
                  sltiu        s8, s10, -586
                  slt          t2, s4, t5
                  slli         t1, t6, 18
                  sltu         t3, a2, t5
                  addi         a7, a7, 52
                  sltu         s5, s8, s3
                  andi         s10, t6, -1751
                  lui          s11, 218727
                  sltu         s11, t1, a2
                  sra          a2, a2, s2
517:              addi x29, x1, 0
517:              jalr x29, x29, 0
sub_5:            bltu         t4, a4, sub_5_stack_p
                  andi         a5, sp, 1018
                  lui          s2, 421735
                  sra          t1, a3, a3
                  sltiu        s7, ra, -1264
sub_5_stack_p:    addi         a7, a7, -16
                  slli         s11, t2, 31
                  nop
                  slli         a0, s1, 12
                  sw           ra, 4(a7)
                  ori          t4, t6, -1990
                  addi         a4, zero, 1 #init loop 0 counter
                  sltiu        s10, s10, -1309
                  ori          s6, t1, -465
                  addi         sp, zero, 17 #init loop 0 limit
                  or           a2, s4, a7
                  xori         ra, t2, -11
                  srl          s6, s11, s9
sub_5_5_0_t:      slti         s6, tp, -446
                  addi         a4, a4, 8 #update loop 0 counter
                  andi         s3, s8, -3
                  sra          t6, t1, s5
                  sra          t2, s7, t0
                  sra          t4, s6, zero
                  sltiu        zero, s5, 607
                  auipc        a3, 169864
                  sll          t0, tp, a0
                  srai         t0, a3, 4
                  sltu         s9, s8, a3
                  beq          a4, sp, sub_5_5_0_t #branch for loop 0
                  nop
                  addi         ra, zero, 6 #init loop 1 counter
                  slti         a2, a1, -896
                  ori          a0, s4, 872
                  xori         s2, gp, 407
                  addi         t1, zero, 19 #init loop 1 limit
                  ori          gp, tp, -429
                  srli         s3, s11, 24
sub_5_11_1_t:     andi         t4, zero, -682
                  and          s2, a0, t4
                  add          s3, s7, s2
                  sra          s4, s7, s7
                  addi         ra, ra, 3 #update loop 1 counter
                  addi         s11, zero, 9 #init loop 0 counter
                  andi         s3, ra, -997
                  addi         s9, zero, 19 #init loop 0 limit
                  sub          s3, a5, a6
                  auipc        sp, 424332
sub_5_11_0_t:     sltiu        a6, a7, -529
                  slti         a2, a4, -205
                  sltiu        s8, a0, -120
                  xor          s10, a3, t6
                  addi         s11, s11, 7 #update loop 0 counter
                  auipc        a3, 388232
                  bltu         s11, s9, sub_5_11_0_t #branch for loop 0
                  auipc        a2, 941864
                  srai         a6, t6, 24
                  blt          ra, t1, sub_5_11_1_t #branch for loop 1
                  and          s5, sp, s9
                  addi         s11, zero, 6 #init loop 0 counter
                  xor          a5, s2, s6
                  addi         ra, zero, 6 #init loop 0 limit
sub_5_6_0_t:      slt          s9, a7, s8
                  srli         s9, s3, 23
                  addi         s11, s11, -5 #update loop 0 counter
                  bgeu         s11, ra, sub_5_6_0_t #branch for loop 0
                  slti         s8, s0, 1302
                  addi         t4, zero, 4 #init loop 1 counter
                  ori          s11, s1, 1935
                  slti         t2, gp, 1592
                  nop
                  addi         s2, zero, -1697
                  addi         a3, zero, 15 #init loop 1 limit
                  addi         s7, a5, 400
sub_5_3_1_t:      sltu         zero, t3, ra
                  auipc        a0, 189321
                  addi         t4, t4, 1 #update loop 1 counter
                  add          s0, s9, t4
                  addi         sp, zero, 7 #init loop 0 counter
                  srl          a4, t0, t2
                  sltu         s4, a7, s0
                  addi         t6, zero, -17 #init loop 0 limit
                  nop
sub_5_3_0_t:      sltiu        t5, s1, 1622
                  addi         sp, sp, -8 #update loop 0 counter
                  beq          sp, t6, sub_5_3_0_t #branch for loop 0
                  or           t0, a2, t5
                  ori          s7, s8, 1777
                  bltu         t4, a3, sub_5_3_1_t #branch for loop 1
                  or           t3, a1, a7
                  addi         a0, zero, 3 #init loop 0 counter
                  slt          a6, a3, a1
                  slli         s6, a7, 0
                  slli         a6, s9, 1
                  srl          a3, s2, t3
                  nop
                  add          s8, s2, gp
                  or           a5, s5, t2
                  addi         s9, zero, 10 #init loop 0 limit
                  sltu         ra, t6, s5
                  add          t1, t5, s3
sub_5_1_0_t:      andi         t6, s11, -390
                  sll          s4, a3, s6
                  slli         s2, t6, 18
                  sll          a4, a0, t1
                  addi         a0, a0, 5 #update loop 0 counter
                  xor          s8, s11, a6
                  addi         t3, s1, 1940
                  lui          gp, 419821
                  add          t2, s8, t4
                  sltu         a5, sp, s4
                  sra          gp, s2, a0
                  or           a6, tp, a7
                  sub          t4, t3, s6
                  sll          a4, t2, t3
                  ori          t5, a5, 18
                  bltu         a0, s9, sub_5_1_0_t #branch for loop 0
                  or           t4, s6, a4
                  addi         s9, zero, 10 #init loop 0 counter
                  srl          s11, s1, a5
                  nop
                  addi         a3, zero, 10 #init loop 0 limit
sub_5_0_0_t:      auipc        gp, 1001714
                  addi         s9, s9, -9 #update loop 0 counter
                  bgeu         s9, a3, sub_5_0_0_t #branch for loop 0
                  slt          s2, t5, s8
                  addi         t5, zero, 10 #init loop 0 counter
                  auipc        t2, 778314
                  srl          s5, s3, s1
                  xor          gp, tp, s1
                  and          t4, a2, tp
                  add          ra, sp, a2
                  slt          ra, a5, a6
                  addi         s2, zero, 9 #init loop 0 limit
                  sll          s4, a0, a5
                  xor          tp, s7, s2
                  srai         a2, tp, 13
                  srai         a5, t3, 8
                  addi         s5, s8, 18
                  srai         t6, t3, 27
                  xor          t0, t1, a6
                  ori          s7, s1, -1189
                  andi         sp, a0, -1697
                  slt          zero, tp, t5
                  lui          a5, 858248
sub_5_9_0_t:      ori          sp, gp, -46
                  sll          a0, s0, t5
                  addi         t5, t5, -4 #update loop 0 counter
                  sub          a3, s7, s3
                  sltu         t0, a3, tp
                  bgeu         t5, s2, sub_5_9_0_t #branch for loop 0
                  xori         t3, s1, 1065
                  addi         a2, zero, 9 #init loop 0 counter
                  sra          s4, gp, s8
                  xor          zero, s11, ra
                  addi         sp, zero, -5 #init loop 0 limit
sub_5_2_0_t:      sltu         s6, t3, s6
                  addi         a2, a2, -2 #update loop 0 counter
                  nop
                  srl          a3, tp, s7
                  bne          a2, sp, sub_5_2_0_t #branch for loop 0
                  add          s7, s4, a2
                  addi         t3, zero, 2 #init loop 0 counter
                  slt          s7, s4, s3
                  addi         s6, zero, -6 #init loop 0 limit
sub_5_12_0_t:     sub          a2, s8, s8
                  addi         t3, t3, -5 #update loop 0 counter
                  bge          t3, s6, sub_5_12_0_t #branch for loop 0
                  xor          t2, ra, s8
                  addi         gp, zero, 8 #init loop 1 counter
                  slti         s4, a0, 1720
                  addi         a4, zero, -3 #init loop 1 limit
                  sll          t5, s9, a5
sub_5_15_1_t:     nop
                  slti         t4, t2, 690
                  and          s5, a0, t1
                  addi         gp, gp, -2 #update loop 1 counter
                  addi         tp, zero, 9 #init loop 0 counter
                  and          s8, s7, t2
                  addi         a3, zero, 8 #init loop 0 limit
sub_5_15_0_t:     lui          t2, 166813
                  sltu         s4, s4, t1
                  addi         tp, tp, -3 #update loop 0 counter
                  bgeu         tp, a3, sub_5_15_0_t #branch for loop 0
                  addi         s6, a5, 490
                  bge          gp, a4, sub_5_15_1_t #branch for loop 1
                  slt          s0, s5, gp
                  addi         t2, zero, -9 #init loop 0 counter
                  andi         s6, a7, 542
                  xor          t6, s2, s1
                  andi         s11, t3, -1638
                  addi         t3, zero, -17 #init loop 0 limit
                  sltiu        zero, s9, -1582
sub_5_8_0_t:      and          gp, s2, t2
                  andi         sp, t2, -475
                  auipc        t4, 994084
                  addi         t2, t2, -4 #update loop 0 counter
                  slli         s0, s8, 15
                  addi         t6, a0, -619
                  sra          s3, a0, s8
                  xori         s7, s7, 1350
                  nop
                  ori          t6, t5, -1948
                  slt          s11, s1, tp
                  xori         a3, t4, 510
                  andi         zero, t2, -556
                  srl          tp, s7, s4
                  beq          t2, t3, sub_5_8_0_t #branch for loop 0
                  sll          a6, s8, a4
                  andi         s6, a4, -858
                  nop
                  lui          t0, 327160
                  blt          s10, s6, 15f
                  beq          t1, s4, 11f
                  xor          s9, a4, s6
                  beq          s6, t4, 22f
                  addi         a4, t6, 1316
                  sll          t2, s11, a6
                  add          a0, t6, s4
                  xor          a5, ra, s8
11:               andi         t5, s10, -671
                  srli         t5, t6, 30
                  srl          s3, t5, t6
                  nop
15:               bltu         a1, a1, 32f
                  slli         a6, a6, 17
                  blt          t6, t2, 29f
                  slli         a4, a1, 15
                  srli         t0, a4, 2
                  xor          s6, t6, t3
                  xori         s2, s4, -1421
22:               slli         s7, a2, 10
                  slti         a0, a5, -373
                  lui          s4, 253087
                  srai         s11, t5, 23
                  bltu         s3, a4, 29f
                  sltu         t1, t5, a4
                  bge          gp, t3, 35f
29:               beq          s7, s11, 39f
                  srl          s9, t3, s9
                  or           t6, sp, tp
32:               xor          t5, a3, s11
                  addi         t4, gp, 157
                  bne          a0, s9, 37f
35:               sra          sp, t0, s10
                  beq          a5, zero, 56f
37:               bgeu         tp, s8, 47f
                  and          s2, a0, s5
39:               bgeu         s11, s3, 50f
                  add          s2, s4, gp
                  xori         s5, t2, -1023
                  bne          t2, t6, 61f
                  sll          tp, s2, t1
                  sltu         s8, ra, s1
                  add          s11, t0, t3
                  and          a2, a1, s4
47:               sltiu        s10, t1, 388
                  bgeu         a1, a5, 49f
49:               slti         s2, s0, 60
50:               ori          t0, s6, -611
                  nop
                  bge          s9, s4, 70f
                  or           zero, sp, t4
                  sltiu        s9, t6, -756
                  or           a3, s9, t0
56:               srai         a6, t0, 10
                  bne          t0, t2, 74f
                  or           t0, a6, s5
                  slli         sp, zero, 23
                  sltu         t5, a5, s9
61:               bge          s11, s1, 64f
                  addi         t0, s6, -601
                  sra          s10, s8, a7
64:               bltu         t5, gp, 65f
65:               bge          s0, s10, 66f
66:               sll          t6, s1, s10
                  blt          t2, s0, 83f
                  lui          a2, 1048432
                  bltu         ra, s6, 73f
70:               xor          a2, a2, s0
                  bge          a5, a6, 82f
                  and          s6, s2, zero
73:               beq          a0, zero, 76f
74:               sll          a3, t6, a5
                  srl          t1, s8, a4
76:               xor          s3, a7, a6
                  andi         t0, t2, -802
                  ori          zero, a2, -1835
                  sll          a4, gp, a3
                  andi         t1, s8, 1725
                  srai         a0, a6, 24
82:               srai         a6, a2, 10
83:               add          zero, s3, a7
                  or           s5, s9, a3
                  sra          s5, t3, s0
                  bltu         s5, t6, 92f
                  bge          s9, a3, 104f
                  xori         t0, s4, -53
                  sra          a5, s9, a1
                  beq          a2, s7, 104f
                  xor          a4, s10, s6
92:               srai         a0, a7, 3
                  xor          a3, s4, a7
                  sltu         a6, s4, t1
                  addi         a0, s4, -1023
                  nop
                  lui          s5, 720336
                  sra          t1, t0, tp
                  xor          t2, a1, a7
                  slli         t3, s4, 27
                  slti         s9, t6, 855
                  andi         s2, s6, -1515
                  nop
104:              nop
                  sll          a6, s0, a3
                  add          s6, t3, s6
                  andi         t2, zero, 1455
                  srai         t0, t4, 26
                  srl          ra, a1, gp
                  srai         s3, s8, 26
                  sll          t1, ra, s2
                  lui          s10, 312361
                  slli         sp, s2, 2
                  slli         a0, s1, 11
                  xor          a2, a4, a1
                  blt          s8, s7, 132f
                  andi         a6, a5, 871
                  auipc        t1, 163232
                  auipc        a0, 646375
                  bne          a3, s3, 131f
                  xori         a3, zero, 1782
                  add          a3, a7, t2
                  lui          a4, 799139
                  slt          s10, t1, s8
                  or           t0, s7, s6
                  bge          t5, a0, 131f
                  auipc        sp, 1021691
                  bne          a7, s10, 137f
                  srai         s4, a3, 28
                  xori         t2, tp, -606
131:              and          s11, a2, ra
132:              beq          a3, s11, 135f
                  nop
                  slli         s6, s2, 1
135:              sltiu        tp, t0, 1191
                  bgeu         zero, s8, 146f
137:              xori         s0, a3, 122
                  or           s3, s2, t2
                  bltu         tp, t3, 142f
                  beq          s4, a7, 147f
                  sra          a3, s5, zero
142:              slti         t1, s8, 1018
                  sltu         s8, s3, s3
                  slli         t1, a6, 5
                  ori          t3, s10, -1362
146:              and          a5, s8, t2
147:              srl          s5, s5, s8
                  slti         t2, ra, 1425
                  addi         s6, zero, -1101
                  sub          s9, t2, sp
                  sra          s7, ra, t3
                  bgeu         a3, s6, 168f
                  addi         s9, a3, 1919
                  sltu         s7, a7, a4
                  auipc        s6, 797940
                  lui          s2, 299033
                  or           t2, t5, s4
                  slt          t2, s3, a4
                  andi         s11, s0, -279
                  srl          t6, zero, a5
                  beq          t4, t4, 171f
                  add          s10, sp, gp
                  blt          a7, a0, 168f
                  sll          s3, a0, ra
                  nop
                  bgeu         s0, s1, 167f
167:              bge          a2, a5, 184f
168:              sltu         a5, s6, s0
                  bge          s2, s10, 185f
                  srli         s4, zero, 12
171:              xor          s6, s11, a2
                  bgeu         a3, s1, 173f
173:              xori         t6, s8, -98
                  auipc        a0, 169090
                  slti         a0, s0, -1993
                  lui          s3, 950227
                  blt          t3, a0, 180f
                  xori         ra, s3, -1336
                  andi         s4, s0, -1294
180:              nop
                  slti         t4, s7, -630
                  sltu         s7, s3, t0
                  bge          a2, s1, 195f
184:              sub          s3, s11, a5
185:              nop
                  sub          t1, s3, s7
                  add          zero, zero, tp
                  slt          s11, a1, a0
                  sll          s9, ra, s3
                  andi         t4, s7, 433
                  sub          t1, t5, gp
                  srai         s2, t1, 2
                  sll          gp, sp, gp
                  auipc        s6, 28246
195:              andi         s10, s7, 450
                  xori         s2, s0, -187
                  addi         tp, zero, 1 #init loop 0 counter
                  lui          sp, 649497
                  sra          a3, s10, t4
                  sltiu        t0, a2, -2010
                  lui          a6, 762369
                  xor          s6, t6, t2
                  slli         s11, t2, 12
                  addi         s4, zero, -13 #init loop 0 limit
                  slt          s9, sp, s7
                  sll          a2, t0, a6
                  lui          s8, 49102
sub_5_14_0_t:     nop
                  slli         s8, s8, 20
                  addi         tp, tp, -7 #update loop 0 counter
                  add          a3, t3, a0
                  srl          a2, s11, a1
                  bne          tp, s4, sub_5_14_0_t #branch for loop 0
                  add          a0, t0, a7
                  bltu         t5, s5, 214f
                  bge          t6, gp, 210f
                  srai         t5, gp, 7
                  auipc        s2, 146727
                  beq          s0, t4, 208f
                  bge          zero, a2, 213f
                  ori          s5, s4, -526
                  bne          sp, s5, 210f
                  ori          t5, gp, -623
                  sll          a3, s6, t4
                  lui          s5, 196562
208:              xori         t3, a6, -1290
                  sltu         tp, t5, s7
210:              slti         s5, s1, 1686
                  slli         a5, s0, 14
                  sub          t5, t5, a0
213:              ori          a4, s3, 97
214:              ori          s7, sp, 566
                  lui          tp, 610847
                  and          s0, s7, s10
                  or           s7, s0, s6
                  bgeu         s5, s7, 237f
                  srai         s6, s1, 7
                  beq          s10, s5, 234f
                  andi         s10, a6, -642
                  xori         zero, a4, 65
                  and          s11, t6, a7
                  blt          ra, s5, 235f
                  sra          sp, s2, a5
                  ori          t6, t4, -1045
                  slt          s4, a2, a7
                  srai         t6, s4, 13
                  bgeu         t3, ra, 240f
                  lui          a0, 335052
                  andi         a2, a7, -219
                  ori          sp, s3, 770
                  bne          a2, s8, 253f
234:              lui          s3, 751061
235:              addi         zero, a6, 553
                  or           s5, a1, s9
                  addi         s0, zero, 10 #init loop 0 counter
                  addi         t6, s2, -456
                  sll          a3, s4, a2
                  addi         zero, s2, 609
                  xor          t1, a2, tp
                  xori         a6, s3, 758
                  addi         t5, zero, 19 #init loop 0 limit
                  sltu         t6, a3, s2
                  slli         zero, t5, 20
                  srl          s7, s11, a6
                  nop
                  lui          zero, 87171
                  srli         ra, t2, 3
                  xor          a5, a3, zero
                  ori          tp, s6, 778
sub_5_7_0_t:      addi         s10, s2, -1346
                  nop
                  andi         a4, t2, -1750
                  addi         s0, s0, 9 #update loop 0 counter
                  srai         zero, a0, 13
                  beq          s0, t5, sub_5_7_0_t #branch for loop 0
                  add          ra, gp, s9
237:              andi         t0, s6, 159
                  bltu         a7, a0, 256f
                  lui          s6, 135803
240:              srai         a2, zero, 8
                  slt          a2, s0, sp
                  and          zero, s5, ra
                  nop
                  ori          ra, gp, 277
                  sub          ra, a0, s4
                  xor          s3, tp, a6
                  addi         a2, s7, -20
                  srai         s0, s1, 19
                  xor          s3, t6, gp
                  sltu         a3, a2, s6
                  bge          tp, s11, 252f
252:              or           a5, s5, t1
253:              xor          t0, a2, s10
                  sll          a0, a4, s8
                  addi         s5, s2, 2032
256:              slti         s3, s9, 175
                  srli         s7, a4, 9
                  xor          t0, ra, t0
                  xor          s9, s8, s11
                  slt          s5, t3, t2
                  xori         s2, a3, -675
                  or           gp, a7, s9
                  sub          t3, gp, t1
                  andi         a2, a5, 964
                  ori          s4, s4, -1689
                  bltu         gp, t4, 270f
                  bge          t1, ra, 284f
                  xori         t4, a1, -598
                  auipc        s0, 100067
270:              auipc        t0, 135111
                  sra          gp, s1, a5
                  andi         t6, a6, -79
                  add          s6, s0, t1
                  slt          t0, a7, a0
                  sltiu        s11, gp, 330
                  srli         a0, t6, 28
                  slti         s11, s3, 2039
                  xori         s4, s8, -1015
                  slti         t5, t5, -1357
                  xori         s3, t5, -1500
                  sltiu        t5, t1, -1024
                  and          ra, s5, a6
                  or           a5, s6, s10
284:              bgeu         a5, sp, 300f
                  bgeu         s3, s2, 288f
                  slt          a2, s3, s3
                  lui          t0, 435867
288:              srl          a4, s9, s3
                  sub          s4, s10, a4
                  andi         t5, gp, 46
                  blt          s5, a0, 300f
                  lui          s5, 182388
                  srli         s3, s1, 1
                  or           s9, tp, t1
                  bgeu         s6, a0, 312f
                  nop
                  sltu         s2, ra, zero
                  bge          s9, ra, 301f
                  bge          s7, s10, 317f
300:              srli         ra, s6, 19
301:              sll          a6, a7, a3
                  ori          sp, a2, 444
                  or           t0, s7, tp
                  blt          a6, a4, 308f
                  slli         ra, sp, 21
                  sll          s3, gp, t0
                  sltiu        t6, a7, -1953
308:              sll          a0, a0, t1
                  srli         a4, s10, 12
                  srl          s10, t6, a6
                  srai         t3, t6, 27
312:              slti         s9, s4, 185
                  bltu         tp, s1, 316f
                  bltu         t2, gp, 319f
                  nop
316:              bgeu         s1, s7, 330f
317:              slt          t4, t0, ra
                  bne          a5, zero, 321f
319:              lui          t0, 1004283
                  ori          ra, a6, 1083
321:              sll          a3, t3, t0
                  addi         s11, s9, 1615
                  blt          t3, a4, 339f
                  sltu         a5, t5, s1
                  sltu         zero, ra, s9
                  or           t0, t1, s9
                  slti         s9, a4, 1347
                  bltu         a6, s1, 340f
                  srli         ra, a4, 10
330:              srai         a3, a5, 1
                  add          s7, s11, a4
                  ori          t3, s2, -1301
                  srli         zero, a7, 31
                  slli         t2, t5, 6
                  bgeu         t0, t6, 341f
                  beq          a6, s0, 346f
                  srai         t4, t2, 14
                  xori         s2, t6, -67
339:              ori          s4, a1, -565
340:              sltiu        a4, a5, 1293
341:              bltu         t4, sp, 344f
                  sub          sp, s7, zero
                  xori         t2, s3, 1001
344:              slti         t0, a4, -266
                  and          t6, zero, a7
346:              addi         a6, s2, 1935
                  sra          t0, t4, t6
                  slti         sp, s10, -1433
                  beq          t5, s11, 356f
                  sltu         s9, s0, a1
                  xor          s2, ra, s11
                  sltu         s7, sp, s4
                  srli         ra, s3, 2
                  add          gp, tp, gp
                  bltu         s1, s2, 356f
356:              slti         s6, s10, 824
                  sll          s10, t4, zero
                  or           s0, a4, s9
                  bne          a1, a5, 376f
                  srli         t1, a0, 16
                  slti         s10, a4, 1734
                  srai         t6, sp, 8
                  nop
                  srl          s10, s11, s8
                  bge          t4, t4, 382f
                  srli         s8, a4, 10
                  and          t3, s7, s2
                  addi         tp, ra, -1376
                  nop
                  xori         a6, t1, -794
                  sltiu        a0, s11, 263
                  slti         tp, t2, -1890
                  srli         s8, s2, 7
                  sra          a2, t1, s1
                  bne          s5, s8, 391f
376:              srl          a5, s7, a1
                  lui          gp, 822933
                  slti         sp, a1, 304
                  bge          s11, s7, 399f
                  slli         s10, s4, 29
                  bltu         s4, s0, 382f
382:              sra          s8, a4, s0
                  bgeu         s9, tp, 392f
                  bltu         tp, s9, 394f
                  bge          t2, s11, 401f
                  nop
                  nop
                  sll          t2, a5, s8
                  xor          s7, ra, sp
                  lui          gp, 517594
391:              nop
392:              slti         a4, s7, -639
                  srli         s8, t1, 3
394:              slt          a5, s8, a0
                  andi         t3, a6, 1226
                  xori         t0, tp, 1146
                  bne          a7, t6, 398f
398:              sltu         ra, a2, t0
399:              and          ra, a0, a3
                  xor          a2, s3, t0
401:              lui          s2, 703986
                  bgeu         s1, a2, 413f
                  andi         zero, t6, -1895
                  sra          t5, ra, a0
                  sub          s5, s2, s4
                  sll          sp, a2, t3
                  srl          a4, s11, a4
                  sub          t0, gp, a5
                  ori          zero, ra, -778
                  andi         a5, s0, 1337
                  bgeu         s11, t6, 422f
                  sub          s5, t0, a2
413:              andi         a2, tp, 1550
                  bgeu         t4, t5, 425f
                  bgeu         t3, s9, 427f
                  blt          s0, a5, 423f
                  ori          s11, tp, -926
                  srli         s8, s8, 13
                  sll          tp, a5, a0
                  bgeu         s11, s3, 439f
                  slt          a0, s8, t5
422:              nop
423:              slli         s8, t2, 23
                  andi         t1, a0, -1265
425:              sra          tp, a0, s1
                  add          s3, a3, s2
427:              bgeu         t2, s2, 439f
                  bge          a2, a4, 444f
                  srl          sp, a2, t3
                  xor          s6, zero, s5
                  sltiu        a5, s10, -1104
                  slti         s0, gp, -83
                  sltu         a5, sp, t6
                  slti         s0, gp, -461
                  nop
                  xor          t2, a1, a4
                  srai         t0, ra, 1
                  srli         s2, s8, 29
439:              sub          s11, a1, s10
                  addi         ra, sp, -233
                  sra          s2, s8, s3
                  addi         s9, s11, -1878
                  srai         t0, t3, 10
444:              bltu         a4, s5, 461f
                  bge          t1, t6, 451f
                  sltu         ra, s3, s0
                  slti         s6, ra, 679
                  sltiu        t1, ra, 210
                  auipc        s7, 787074
                  slt          s0, zero, t4
451:              xori         t6, t5, -789
                  auipc        s11, 611291
                  slt          s4, t2, t1
                  slti         s8, a4, 642
                  srli         t5, zero, 4
                  ori          t0, a0, -461
                  or           t4, t6, t2
                  sltu         t4, a0, zero
                  sltiu        a0, tp, -1314
                  sltu         tp, zero, a0
461:              lui          s5, 400017
                  srli         t2, s5, 5
                  srl          s0, s11, a4
                  lui          s0, 900464
                  bne          t1, s3, 466f
466:              lui          a4, 62512
                  beq          a5, a7, 468f
468:              or           t0, tp, a6
                  slli         tp, s6, 14
                  blt          s5, s10, 473f
                  nop
                  sub          t1, t0, s9
473:              sll          tp, s3, t0
                  sub          a2, s10, t3
                  beq          zero, s3, 486f
                  ori          s5, t4, -925
                  or           t3, a6, t6
                  ori          a5, ra, -134
                  blt          s3, t1, 482f
                  lui          t0, 1030670
                  auipc        gp, 140424
482:              sra          s11, tp, a5
                  sltiu        t0, s0, 0
                  bne          a2, s2, 502f
                  lui          sp, 148339
486:              sub          s11, s11, s3
                  slti         s2, t5, 963
                  addi         t1, s5, -878
                  addi         ra, s3, -547
                  srli         tp, a4, 26
                  add          s5, ra, zero
                  slti         s10, s2, -1840
                  srl          zero, t0, t6
                  ori          gp, s10, 1547
                  beq          gp, s9, 506f
                  sll          s9, t4, s1
                  and          s9, t1, s11
                  sltiu        sp, s3, -428
                  xor          a0, s7, t4
                  sra          s6, ra, t4
                  srli         s7, s10, 18
502:              add          s10, t2, t6
                  blt          s7, a3, 510f
                  slti         s9, s9, -820
                  nop
506:              lui          t4, 957187
                  beq          t0, t4, 517f
                  or           gp, a2, t6
                  xor          t4, t3, t2
510:              slt          s2, t1, t3
                  andi         t6, a3, -70
                  and          a5, t3, t3
                  blt          s0, s10, 520f
                  addi         a3, s7, 1441
                  slt          t4, sp, a1
                  bne          a3, a1, 533f
517:              sltu         a4, t6, s7
                  srai         t0, a0, 13
                  srl          t6, a3, a5
520:              ori          t1, t0, 1610
                  ori          t1, gp, 2
                  bge          s11, zero, 532f
                  xor          sp, s6, s10
                  lui          zero, 313987
                  slti         t3, s9, 1075
                  slli         s11, t5, 15
                  lui          s11, 909618
                  ori          t5, s1, -1736
                  beq          t3, gp, 541f
                  sra          s7, s5, s8
                  srl          zero, s9, s5
532:              srai         s5, tp, 17
533:              bltu         s2, a2, 542f
                  ori          ra, sp, 2020
                  andi         s11, gp, -17
                  bgeu         t4, t6, 537f
537:              nop
                  lui          t1, 517136
                  srl          s9, a4, t4
                  ori          t1, ra, -986
541:              nop
542:              bge          s4, s10, 558f
                  blt          s5, tp, 559f
                  slli         s8, gp, 9
                  srl          s3, tp, a5
                  xori         t1, a5, 529
                  auipc        s10, 639459
                  beq          gp, a2, 559f
                  sltu         s7, s1, a5
                  bge          a4, a7, 553f
                  nop
                  beq          t0, a7, 566f
553:              bgeu         a6, t6, 557f
                  srl          tp, s4, a0
                  slt          a5, a2, s9
                  bgeu         tp, a0, 575f
557:              bgeu         zero, s5, 560f
558:              lui          s6, 523883
559:              bgeu         s2, a6, 576f
560:              slli         t3, a4, 28
                  bge          s6, a5, 581f
                  slt          s6, a5, t1
                  srai         s7, a5, 0
                  bne          a7, ra, 569f
                  addi         gp, s3, 1375
566:              ori          gp, t6, -857
                  srli         t4, s10, 27
                  srl          ra, a1, a6
569:              xori         a3, a3, 23
                  slt          t0, sp, a7
                  sub          t2, s4, sp
                  srl          a0, a4, t6
                  bltu         a7, s7, 591f
                  auipc        ra, 781991
575:              ori          t0, s9, -1107
576:              lui          t6, 579967
                  or           t5, zero, s2
                  srai         t3, a4, 0
                  ori          tp, s4, 1507
                  xori         t1, gp, 1419
581:              ori          s2, a1, -1370
                  or           zero, s3, s0
                  sltiu        zero, s4, -938
                  bne          s8, t5, 585f
585:              or           t5, zero, s0
                  ori          t2, s5, 595
                  bge          s11, ra, 588f
588:              xori         a2, t0, 820
                  or           a0, s7, t0
                  srli         t1, s10, 9
591:              bltu         s11, s7, 608f
                  slli         t2, s1, 22
                  sltu         s0, tp, a5
                  auipc        s9, 11640
                  bge          zero, t3, 596f
596:              bgeu         s3, t5, 616f
                  and          s9, s2, t2
                  sltu         s11, t3, s9
                  lui          a5, 416033
                  sltiu        ra, t0, -568
                  srl          a6, sp, s0
                  blt          s10, s10, 613f
                  add          zero, sp, s5
                  lui          t1, 95056
                  slti         t0, s1, -1339
                  srai         t0, t4, 2
                  srl          t4, a1, sp
608:              ori          a5, s7, 353
                  bgeu         a5, s3, 626f
                  xor          a0, sp, a2
                  srl          a0, t2, a3
                  blt          t2, s7, 629f
613:              xori         ra, zero, 235
                  sub          s6, tp, a0
                  srai         a3, a7, 23
616:              srli         s3, t1, 14
                  slli         t5, s11, 14
                  sub          s10, a6, ra
                  sll          tp, s4, t6
                  bge          a5, s8, 631f
                  xori         s7, ra, -369
                  slti         a5, t2, -799
                  slli         tp, s2, 24
                  or           t0, s5, a4
                  slt          t1, s4, t6
626:              sll          zero, s8, t2
                  and          a4, s11, s9
                  sub          a2, sp, t2
629:              or           t2, s2, s5
                  sltiu        zero, a7, 294
631:              blt          a6, s1, 634f
                  slt          s4, sp, s7
                  slt          sp, s3, a7
634:              slti         t2, t5, -957
                  or           s2, t3, a2
                  srai         t0, gp, 22
                  ori          s7, t2, 496
                  lui          t6, 408097
                  slti         t3, t0, -1659
                  sll          s0, sp, zero
                  sll          a4, t5, tp
                  bne          s8, sp, 656f
                  andi         s0, t6, -2022
                  and          t1, t3, s3
                  bgeu         a1, a1, 654f
                  or           t2, a2, t6
                  slli         t0, t3, 3
                  auipc        a0, 372086
                  xor          sp, t3, t4
                  bltu         s2, s9, 657f
                  srai         t4, a2, 12
                  slti         t5, gp, -792
                  bne          a0, t6, 658f
654:              and          a5, a5, t3
                  bne          a7, a1, 661f
656:              nop
657:              bge          ra, s10, 673f
658:              bne          t5, gp, 670f
                  xor          t4, a7, t2
                  add          t4, t1, a7
661:              sub          s4, s11, s5
                  sltu         s2, t6, ra
                  blt          s5, s11, 674f
                  lui          s9, 442427
                  bge          t6, sp, 668f
                  bne          a1, a2, 682f
                  xori         gp, s3, 1676
668:              slt          s7, t6, s10
                  auipc        s3, 934099
670:              bge          t4, a0, 686f
                  add          t0, s9, s9
                  srai         a0, s7, 23
673:              andi         t5, s5, -1621
674:              ori          s6, s3, -395
                  sra          t5, t2, t4
                  bgeu         t5, t1, 686f
                  addi         s3, s7, -993
                  addi         t4, zero, 3 #init loop 0 counter
                  lui          t2, 19410
                  sra          s3, a1, ra
                  and          s6, s0, s1
                  addi         a3, zero, 3 #init loop 0 limit
                  sll          a0, tp, s3
                  add          s11, t6, zero
                  srl          s10, s6, sp
                  andi         s10, s0, -1848
                  and          s6, t5, ra
                  addi         s2, s5, 2027
                  nop
                  add          t3, a3, s11
                  auipc        s2, 649091
sub_5_13_0_t:     xor          s6, a2, t2
                  srai         t2, t1, 3
                  lui          ra, 952522
                  and          s11, s7, zero
                  ori          t0, s1, 628
                  sll          s11, a0, s11
                  nop
                  slt          t3, sp, t4
                  addi         t4, t4, -1 #update loop 0 counter
                  slli         a0, s9, 3
                  sll          s10, a3, t3
                  sub          gp, t6, s6
                  xor          s3, zero, tp
                  srli         s4, a7, 31
                  bgeu         t4, a3, sub_5_13_0_t #branch for loop 0
                  sra          s3, a2, t4
                  srai         t3, t4, 1
                  xori         t0, s10, -880
                  sltu         zero, s9, ra
                  ori          t2, a7, -276
682:              bltu         s7, a7, 692f
                  srai         s2, a2, 27
                  sub          a3, s2, s2
                  bge          s2, s0, 692f
686:              beq          t2, s11, 689f
                  auipc        gp, 204468
                  slti         s0, a2, 1476
689:              and          s6, a7, ra
                  srai         a4, t5, 14
                  srli         a2, a7, 15
692:              slti         gp, s6, -798
                  srai         gp, ra, 5
                  xor          gp, a6, s11
                  beq          s0, a6, 714f
                  add          s11, sp, sp
                  andi         s6, s7, 1394
                  xori         a4, a1, -637
                  bltu         s0, a3, 711f
                  and          zero, t6, s5
                  nop
                  sltiu        a5, t6, -570
                  srli         ra, a1, 2
                  sltiu        gp, a4, -1231
                  xor          gp, a5, s4
                  blt          a0, s5, 709f
                  sra          s10, ra, a0
                  bgeu         s0, s4, 712f
709:              sltu         s3, t0, a7
                  beq          a4, t5, 721f
711:              sltiu        t3, s11, -1965
712:              sll          a3, t0, s8
                  sll          s2, t0, a7
714:              or           s3, t3, a6
                  sltu         s6, s2, t5
                  slli         t2, gp, 28
                  andi         zero, s1, 1685
                  sra          a6, s4, t3
                  bge          a5, gp, 736f
                  and          s2, t2, t1
721:              sltu         s0, a5, a4
                  or           s10, a0, s0
                  sra          gp, t0, s5
                  slli         t1, a3, 2
                  and          a2, t5, s7
                  sltiu        s4, a0, -1985
                  xor          t1, t2, gp
                  xor          s0, s10, s4
                  slli         sp, a3, 30
                  slti         t5, a0, -1604
                  bge          s7, s4, 735f
                  srai         t4, a0, 6
                  sub          s10, zero, s4
                  auipc        s9, 327135
735:              or           s6, a3, s3
736:              bge          a0, a6, 746f
                  bgeu         s5, tp, 749f
                  srli         s10, t6, 23
                  sll          s9, zero, zero
                  auipc        s10, 100802
                  lui          a3, 839647
                  andi         ra, s9, 1500
                  bne          t0, a1, 749f
                  ori          gp, a6, -772
                  sll          sp, t2, s3
746:              add          a6, s2, t5
                  addi         t2, zero, 1 #init loop 1 counter
                  addi         t3, zero, 17 #init loop 1 limit
                  sltu         t0, a4, t4
sub_5_4_1_t:      sltiu        s4, s8, 1773
                  addi         t2, t2, 7 #update loop 1 counter
                  addi         s11, zero, 6 #init loop 0 counter
                  srai         a3, s10, 3
                  addi         ra, zero, 2 #init loop 0 limit
sub_5_4_0_t:      addi         sp, a2, -1745
                  addi         s11, s11, -4 #update loop 0 counter
                  xori         a6, a7, 1163
                  beq          s11, ra, sub_5_4_0_t #branch for loop 0
                  blt          t2, t3, sub_5_4_1_t #branch for loop 1
                  or           t0, s1, t5
                  lui          t4, 825358
                  bgeu         s8, s1, 751f
749:              sll          t4, s2, t4
                  sltu         s6, a2, s11
751:              sub          s5, a7, s3
                  beq          s7, s1, 768f
                  srai         a3, a4, 22
                  ori          t0, a2, 847
                  slti         a2, s1, -9
                  sll          a6, a6, t1
                  sltiu        s9, s7, 293
                  sll          a3, ra, s0
                  sll          s3, a4, s6
                  beq          s10, s9, 776f
                  slt          gp, t6, a1
                  lui          a3, 167137
                  srai         s8, t1, 14
                  sra          s9, s2, s2
                  srai         tp, gp, 26
                  srl          t2, a2, a6
                  beq          t2, a3, 774f
768:              sra          s0, tp, s5
                  slli         gp, t1, 13
                  bne          sp, t6, 771f
771:              bltu         s3, a1, 772f
772:              bge          a2, t2, 779f
                  andi         t6, t3, -1817
774:              bne          s2, t6, 777f
                  slti         s5, s2, -483
776:              sra          tp, a2, s4
777:              srai         t0, t6, 9
                  nop
779:              bgeu         a3, s3, 798f
                  slli         t4, tp, 4
                  sltu         t2, a6, s7
                  slt          s6, a0, s9
                  beq          s6, s4, 799f
                  bge          s6, s3, 799f
                  bne          t3, a0, 794f
                  lui          s4, 747045
                  srli         t4, s7, 16
                  xor          a5, t5, t0
                  xori         gp, a4, 798
                  sll          s0, zero, t4
                  addi         s5, zero, 3 #init loop 0 counter
                  slt          gp, a6, zero
                  srl          s0, t5, t5
                  andi         s10, t4, -1265
                  xori         s10, a2, 489
                  ori          s7, t2, -1109
                  add          a6, gp, sp
                  and          zero, s11, s2
                  addi         s2, zero, 15 #init loop 0 limit
                  auipc        a3, 713722
                  xori         tp, s6, -160
                  ori          gp, a4, -1871
                  addi         t5, a4, -474
                  addi         t0, s6, -325
sub_5_10_0_t:     add          a5, s9, a6
                  addi         s5, s5, 2 #update loop 0 counter
                  auipc        t0, 324230
                  auipc        a0, 667344
                  slli         a0, t5, 7
                  sltu         a3, s8, a5
                  auipc        ra, 297649
                  andi         s6, s7, -544
                  add          s7, s0, a6
                  addi         t1, t2, -1914
                  sltu         s11, a0, t1
                  slt          tp, zero, s11
                  sltu         ra, s10, t3
                  bltu         s5, s2, sub_5_10_0_t #branch for loop 0
                  srli         a5, a7, 28
                  sltu         s5, s8, zero
                  sub          s9, t2, s3
                  slli         ra, t4, 3
794:              slli         s4, a6, 8
                  bltu         t1, s6, 799f
                  add          s11, t3, t0
                  blt          s11, a5, 799f
798:              bge          t2, zero, 799f
799:              slt          t5, a0, a3
                  andi         t0, s6, 1130
                  lw           ra, 4(a7)
                  ori          s7, a6, 1376
                  slli         zero, a3, 4
                  nop
                  sra          s4, t6, s3
                  addi         a7, a7, 16
                  slt          s8, a7, s2
                  sltiu        s3, s2, -633
1131:             addi x19, x1, 1
1131:             jalr x19, x19, 0
sub_4:            addi         a7, a7, -28
                  or           a4, s10, t0
                  sw           ra, 4(a7)
                  sra          t1, s9, a3
                  add          t1, a6, tp
                  andi         t1, a7, 978
                  sll          a2, t1, s3
                  auipc        a5, 456620
                  srli         a0, t3, 25
                  blt          ra, t0, sub_4_j7 #branch to jump instr
                  srli         t0, a3, 9
                  sltu         s9, t2, s0
sub_4_j7:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  xor          s10, s3, s5
                  ori          s2, t4, 1867
                  lui          a6, 766887
                  bne          a3, a7, 14f
                  sll          s8, a6, t3
                  bne          gp, tp, 14f
                  slt          a0, t0, s7
                  add          a3, t6, s5
                  srli         t6, s5, 6
                  sra          t6, s11, s0
                  bltu         s1, t4, 14f
                  slt          s7, gp, s6
                  bge          s1, s6, 14f
                  bne          a5, a0, 14f
14:               lui          t5, 236763
                  slt          a5, t6, zero
                  lw           ra, 4(a7)
                  ori          t4, a1, 157
                  nop
                  addi         a7, a7, 28
                  slti         s3, s2, -1685
34:               addi x12, x1, 0
34:               jalr x12, x12, 0
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
mmode_intr_vector_1:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x11, x17, zero
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x24, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x24, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x24, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x24, x25, ecall_handler
                  li x25, 0x1
                  beq x24, x25, instr_fault_handler
                  li x25, 0x5
                  beq x24, x25, load_fault_handler
                  li x25, 0x7
                  beq x24, x25, store_fault_handler
                  li x25, 0xc
                  beq x24, x25, pt_fault_handler
                  li x25, 0xd
                  beq x24, x25, pt_fault_handler
                  li x25, 0xf
                  beq x24, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x17, x11, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x11, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x11, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x17, x11, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x17, x11, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x17, x11, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
