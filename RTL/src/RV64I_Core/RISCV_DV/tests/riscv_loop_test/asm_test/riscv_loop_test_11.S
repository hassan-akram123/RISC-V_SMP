.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0x6
                  li x1, 0x8e2bd74c
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x1808eb4a
                  li x5, 0x0
                  li x6, 0xf3b1831b
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x1
                  li x10, 0xfaffa90a
                  li x11, 0x24085d9d
                  li x12, 0x3d1a7ed7
                  li x13, 0xeeb2c53d
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x65e828d2
                  li x17, 0xa
                  li x18, 0x3
                  li x19, 0x63b1fc85
                  li x20, 0x9
                  li x21, 0xf609291f
                  li x22, 0xfd09cd49
                  li x23, 0x80000000
                  li x25, 0x0
                  li x26, 0xe
                  li x27, 0x80000000
                  li x28, 0xfc91dc00
                  li x30, 0x9
                  li x31, 0x1ac8dd02
                  la x29, user_stack_end
main:             ori          s9, s4, -645
                  add          s2, t4, s7
                  or           s1, s4, tp
                  srli         a3, tp, 4
                  sra          t2, s8, s6
                  sub          t3, a7, t3
                  la           a2, sub_1
                  xor          s1, a7, t5
                  addi         a2, a2, -939
                  sltiu        a7, s1, 801
                  sltu         s5, s7, s6
                  xori         s6, t3, 57
main_j2:          jalr         ra, a2, 939 #jump main -> sub_1
                  la           s6, sub_2
                  sra          s10, s1, s2
                  addi         s6, s6, 472
                  slti         s2, t3, -962
                  andi         s7, t2, 1134
                  or           a5, t0, s3
                  srli         a0, t5, 20
main_j3:          jalr         ra, s6, -471 #jump main -> sub_2
                  addi         s9, zero, 6 #init loop 1 counter
                  slti         t0, a2, -42
                  sltu         a5, a3, a0
                  ori          s0, s8, 1247
                  auipc        t2, 727621
                  add          a7, s2, s9
                  addi         t6, zero, -8 #init loop 1 limit
                  lui          a0, 1048392
                  auipc        s10, 836933
main_0_1_t:       andi         s11, s4, 25
                  andi         a0, s2, -290
                  auipc        a4, 951918
                  addi         a2, a0, -1067
                  addi         s9, s9, -7 #update loop 1 counter
                  srli         s2, a4, 10
                  addi         a1, zero, -3 #init loop 0 counter
                  slli         s2, a6, 20
                  addi         t3, zero, 11 #init loop 0 limit
                  auipc        s1, 117624
                  xori         a7, s7, 313
main_0_0_t:       add          s3, zero, gp
                  sub          a7, s6, s7
                  add          s1, a4, a5
                  addi         a1, a1, 7 #update loop 0 counter
                  sltiu        a0, t5, -1574
                  sra          t0, t1, zero
                  auipc        s1, 529987
                  and          ra, s7, s11
                  bne          a1, t3, main_0_0_t #branch for loop 0
                  slt          s10, s5, sp
                  xor          s7, s11, a0
                  bne          s9, t6, main_0_1_t #branch for loop 1
                  sltu         s4, a7, tp
                  blt          s4, a3, 10f
                  ori          a1, ra, -1041
                  srai         t2, a0, 8
                  slti         a6, sp, -151
                  bne          s7, s5, 10f
                  auipc        tp, 222178
                  sltiu        ra, a3, 142
                  xori         t3, s4, 342
                  srli         tp, s0, 2
                  andi         t3, s3, 1656
                  lui          ra, 614315
                  sltu         a2, s0, s9
                  la           s4, sub_2
                  slli         zero, a0, 11
                  addi         s4, s4, -291
                  srai         s2, a1, 5
                  bge          a2, s10, main_j1 #branch to jump instr
                  ori          ra, sp, -1706
main_j1:          jalr         ra, s4, 291 #jump main -> sub_2
10:               xor          s10, a4, s4
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t4, t4, -16
                  lui          t2, 803444
                  xor          s4, a1, s11
                  sw           ra, 4(t4)
                  lui          s9, 889994
                  srli         a5, s1, 31
                  xori         t3, s3, 671
                  add          s5, t4, t1
                  sub          a4, zero, sp
                  la           s10, sub_3
                  andi         t1, a6, 1321
                  xori         s6, tp, -1517
                  addi         s10, s10, -945
                  sub          a7, t4, a4
sub_2_j4:         jalr         ra, s10, 946 #jump sub_2 -> sub_3
                  addi         t0, zero, 5 #init loop 0 counter
                  and          t3, a7, a0
                  sub          s10, tp, sp
                  sll          a0, a1, t2
                  sltiu        s7, t3, 875
                  slti         gp, s9, 1528
                  addi         a5, zero, -9 #init loop 0 limit
                  sll          s3, s11, t3
                  srli         t1, s2, 2
                  sra          t2, a1, s1
                  sll          s6, a2, zero
sub_2_0_0_t:      ori          s2, tp, -755
                  nop
                  or           a3, s9, tp
                  srl          t2, t1, t6
                  addi         t0, t0, -7 #update loop 0 counter
                  andi         gp, sp, -1183
                  slti         s0, ra, -1505
                  andi         zero, s9, 59
                  slt          a6, s6, t4
                  sltiu        s5, a2, -1911
                  slt          a3, s7, a1
                  beq          t0, a5, sub_2_0_0_t #branch for loop 0
                  slli         s7, t1, 7
                  xor          s5, a0, s8
                  auipc        a0, 500723
                  bltu         t3, t4, 22f
                  nop
                  add          t6, a3, t0
                  lui          ra, 370452
                  andi         s4, s7, 1228
                  srl          s2, a0, a7
                  auipc        s1, 820222
                  xori         s5, zero, -462
                  xori         t6, s4, 482
                  sra          a6, t6, a0
                  and          a1, s2, s8
                  blt          s4, t0, 18f
                  xor          zero, t1, s10
                  sll          s3, s2, t3
                  bgeu         s7, t1, 30f
                  sltu         a2, s9, a0
18:               sll          a4, t2, ra
                  bltu         a3, a0, 21f
                  or           t6, a2, s5
21:               auipc        s6, 266845
22:               sub          t6, s0, s6
                  or           a5, s5, s9
                  addi         a4, s11, 1247
                  beq          t0, a5, 36f
                  auipc        a0, 79985
                  srli         s1, a2, 13
                  sll          s7, t3, a5
                  slli         s9, a6, 27
30:               sltiu        t3, s0, -1400
                  sra          a2, zero, s0
                  bgeu         a3, t6, 38f
                  andi         tp, s4, -1629
                  srai         s3, ra, 1
                  slti         a7, zero, -1423
36:               andi         t6, t3, 1007
                  andi         t2, s4, -666
38:               andi         s3, a7, 1816
                  andi         sp, a7, 725
                  nop
                  xori         zero, s2, 827
                  and          s9, t0, t6
                  sll          s0, s3, t6
                  add          zero, s9, s11
                  sll          a7, a7, s1
                  xor          a4, s5, t3
                  sub          s5, a5, t0
                  sltiu        tp, a6, -988
                  xor          a3, t3, a2
                  nop
                  bge          ra, s8, 55f
                  auipc        s3, 824037
                  ori          a2, a0, 1625
                  xor          a5, s7, s10
55:               and          t2, s2, s1
                  srli         tp, tp, 14
                  slti         a5, t4, -1378
                  lw           ra, 4(t4)
                  sltu         s9, t3, a3
                  addi         t4, t4, 16
                  srl          a6, a2, s3
                  sub          a2, t5, t1
                  srli         t2, t5, 17
103:              addi x22, x1, 0
103:              jalr x22, x22, 0
sub_4:            add          gp, a1, ra
                  slti         a1, gp, -1436
                  addi         t4, t4, -60
                  srli         s3, t0, 11
                  sw           ra, 4(t4)
                  xor          a0, s1, a5
                  srl          a1, sp, t3
                  and          a0, t4, ra
                  xor          tp, a7, t5
                  or           s6, t5, t6
                  addi         s2, zero, 4 #init loop 0 counter
                  slt          gp, s7, t2
                  sra          gp, s8, a4
                  addi         a5, zero, 8 #init loop 0 limit
                  addi         a6, sp, -1573
                  lui          s11, 929335
                  sub          a0, zero, s9
                  lui          sp, 214105
                  slti         s3, a0, -1024
                  auipc        tp, 160192
sub_4_8_0_t:      xor          s0, s2, t2
                  or           t6, gp, s11
                  xor          t6, a7, a5
                  xor          a4, tp, s9
                  sll          s9, t6, s5
                  addi         s2, s2, 4 #update loop 0 counter
                  slt          t6, a7, s7
                  sltiu        a7, t3, 597
                  auipc        a3, 751378
                  sll          s11, t3, s5
                  add          tp, zero, t4
                  xori         t0, a0, -350
                  bne          s2, a5, sub_4_8_0_t #branch for loop 0
                  lui          s9, 643532
                  addi         t6, zero, 7 #init loop 1 counter
                  srai         ra, s1, 11
                  slli         ra, s1, 18
                  addi         s6, zero, -17 #init loop 1 limit
                  andi         t2, s9, 1967
                  sltiu        sp, tp, 16
sub_4_4_1_t:      nop
                  lui          a2, 653712
                  addi         t6, t6, -1 #update loop 1 counter
                  ori          a2, s11, 1339
                  addi         a4, zero, 0 #init loop 0 counter
                  xori         a2, zero, -1188
                  addi         s2, zero, -1 #init loop 0 limit
                  slti         a3, t4, -445
sub_4_4_0_t:      auipc        a5, 491661
                  xori         s3, s3, -501
                  addi         a4, a4, -7 #update loop 0 counter
                  bge          a4, s2, sub_4_4_0_t #branch for loop 0
                  addi         zero, a2, -228
                  srai         a2, s8, 2
                  add          t2, s3, s10
                  bge          t6, s6, sub_4_4_1_t #branch for loop 1
                  srai         a0, t2, 3
                  addi         a0, zero, 8 #init loop 0 counter
                  addi         s1, zero, 7 #init loop 0 limit
sub_4_6_0_t:      and          s9, s11, zero
                  addi         a0, a0, -6 #update loop 0 counter
                  bgeu         a0, s1, sub_4_6_0_t #branch for loop 0
                  addi         a6, tp, -499
                  addi         s7, zero, -9 #init loop 1 counter
                  slli         a4, s0, 9
                  xori         s4, s0, 1515
                  addi         a1, zero, -17 #init loop 1 limit
                  nop
                  ori          s2, s2, 1153
                  xor          tp, gp, t5
                  srai         a4, t4, 5
sub_4_1_1_t:      xor          a2, s2, a3
                  slli         t3, a7, 0
                  srl          a4, t4, zero
                  addi         s7, s7, -4 #update loop 1 counter
                  xori         t2, t6, -1691
                  addi         a0, zero, -10 #init loop 0 counter
                  sll          t0, s9, t1
                  addi         t6, zero, -18 #init loop 0 limit
                  sll          t3, t2, t4
                  sra          sp, a6, gp
sub_4_1_0_t:      addi         s0, s3, 84
                  xor          a4, s8, gp
                  addi         a0, a0, -8 #update loop 0 counter
                  xori         s11, s6, -915
                  sll          s2, a7, s10
                  sub          s1, tp, a3
                  auipc        t0, 471629
                  beq          a0, t6, sub_4_1_0_t #branch for loop 0
                  srai         s11, s2, 3
                  xor          a3, s5, s9
                  beq          s7, a1, sub_4_1_1_t #branch for loop 1
                  auipc        s5, 1036323
                  addi         a3, zero, -4 #init loop 0 counter
                  sltiu        a7, a1, 374
                  ori          s11, s1, -1896
                  addi         s9, zero, -12 #init loop 0 limit
                  sltu         s5, s1, t0
                  sltu         t6, s11, s1
                  nop
                  slti         a7, a0, 1014
                  srai         s3, a7, 20
sub_4_3_0_t:      andi         a6, s6, -15
                  addi         a3, a3, -8 #update loop 0 counter
                  sltu         s6, s6, t4
                  lui          s2, 832776
                  add          t0, t6, ra
                  and          s11, s0, zero
                  sltiu        t2, tp, 397
                  sra          zero, gp, zero
                  and          s2, t2, s5
                  addi         s0, t4, 489
                  xor          t1, t6, a6
                  add          a4, s10, s1
                  nop
                  beq          a3, s9, sub_4_3_0_t #branch for loop 0
                  andi         t3, a2, 2046
                  addi         t3, zero, -5 #init loop 0 counter
                  ori          a5, t6, -919
                  addi         tp, zero, -13 #init loop 0 limit
                  addi         a1, a1, -1763
                  srl          s6, a4, a5
sub_4_2_0_t:      addi         s11, t3, 2027
                  lui          s6, 809452
                  addi         t3, t3, -8 #update loop 0 counter
                  sub          s0, s2, t3
                  add          t6, t3, s10
                  sltiu        s6, t2, -207
                  beq          t3, tp, sub_4_2_0_t #branch for loop 0
                  addi         sp, a4, -1079
                  addi         t2, zero, 10 #init loop 1 counter
                  sub          zero, s3, s2
                  addi         s5, zero, 9 #init loop 1 limit
sub_4_5_1_t:      xori         a5, s6, 1125
                  addi         t2, t2, -7 #update loop 1 counter
                  slli         a0, s9, 26
                  addi         gp, zero, 1 #init loop 0 counter
                  addi         s4, zero, 13 #init loop 0 limit
                  srai         t1, s1, 16
sub_4_5_0_t:      sltu         t3, s11, a6
                  addi         gp, gp, 3 #update loop 0 counter
                  bne          gp, s4, sub_4_5_0_t #branch for loop 0
                  bgeu         t2, s5, sub_4_5_1_t #branch for loop 1
                  or           t6, s6, tp
                  addi         t2, zero, -6 #init loop 0 counter
                  lui          s6, 905202
                  sll          s1, s11, s4
                  slt          gp, a1, a2
                  addi         t6, zero, -15 #init loop 0 limit
                  sra          a1, s1, t3
sub_4_7_0_t:      ori          s7, t0, -874
                  xor          a1, a5, t5
                  srli         gp, s1, 16
                  addi         t2, t2, -3 #update loop 0 counter
                  srli         s4, t6, 12
                  lui          s11, 1016323
                  lui          s11, 535812
                  bne          t2, t6, sub_4_7_0_t #branch for loop 0
                  sra          a1, s4, ra
                  or           a0, a5, tp
                  ori          tp, ra, -179
                  srai         a7, a1, 20
                  sltiu        a7, t6, -1839
                  srli         ra, a1, 5
                  slti         zero, t5, 1822
                  slli         a2, a6, 3
                  blt          s8, zero, 8f
8:                xor          s11, a3, gp
                  bne          sp, t2, 17f
                  sra          s7, a6, s1
                  add          s6, s6, s5
                  xor          s6, s3, a4
                  addi         t3, a3, -1415
                  nop
                  addi         s2, s2, 1344
                  blt          s11, s0, 35f
17:               beq          a1, a7, 30f
                  sra          a1, a2, a2
                  slli         t2, gp, 18
                  auipc        s6, 554484
                  sll          sp, t1, s8
                  sll          a4, t1, a1
                  beq          a4, t3, 28f
                  sltu         s9, s6, s10
                  sub          s6, zero, s10
                  blt          t2, s1, 41f
                  auipc        zero, 522286
28:               xori         a0, a7, 1585
                  sll          s1, sp, a7
30:               andi         gp, a3, -1634
                  slli         a4, s8, 29
                  or           s11, s10, s10
                  xori         a6, s7, -1156
                  srli         t2, s11, 21
35:               blt          s3, a3, 40f
                  sll          s5, a1, t0
                  sra          s4, sp, tp
                  slti         s9, gp, 1532
                  bltu         s4, s9, 57f
40:               slli         a6, a7, 29
41:               addi         a7, s8, -1286
                  slti         s2, tp, 987
                  slli         s5, a5, 19
                  add          s1, t0, t5
                  sltu         s3, s5, s5
                  xor          t0, a1, t0
                  slli         a2, a1, 16
                  bge          a0, t6, 67f
                  srai         s0, s2, 5
                  andi         tp, a1, -2017
                  or           s7, tp, s3
                  lui          zero, 241044
                  bgeu         s3, s1, 69f
                  nop
                  srli         s2, a4, 26
                  sll          t0, s8, a3
57:               bgeu         a1, zero, 69f
                  add          a7, s6, s3
                  and          a2, t5, a7
                  sltu         a1, ra, gp
                  srai         s6, s5, 29
                  andi         s10, s9, -589
                  andi         ra, a4, -1594
                  sltu         s2, t0, t5
                  ori          t6, t2, -98
                  srai         s10, a2, 30
67:               srl          s7, s3, s4
                  slti         ra, t2, 747
69:               slli         a2, s8, 27
                  lui          a1, 682676
                  sltiu        s2, s5, -249
                  nop
                  ori          s6, t6, 1155
                  bltu         a7, s6, 92f
                  addi         s0, ra, 1286
                  or           s6, tp, a1
                  auipc        t0, 332639
                  sra          a2, a1, s8
                  bne          a2, s1, 97f
                  sra          s0, gp, s0
                  or           s3, t0, s6
                  xori         t0, s8, -782
                  sltu         a1, t0, s4
                  and          zero, s10, s7
                  srai         a0, s7, 11
                  and          ra, a6, s9
                  srai         s5, a4, 0
                  xori         a4, tp, -1149
                  sltiu        t0, sp, -1677
                  bge          a7, s0, 102f
                  ori          s10, s5, -468
92:               srai         t2, s4, 13
                  ori          a5, s5, -1159
                  andi         a7, a2, -836
                  sltu         ra, a6, s7
                  bgeu         t5, a2, 99f
97:               lui          a3, 491557
                  andi         a3, gp, -561
99:               nop
                  slti         a6, a0, 440
                  srai         t6, sp, 23
102:              slt          s5, s11, s9
                  add          a7, s5, t4
                  slt          a3, ra, t6
                  sltu         t0, a4, a7
                  slli         zero, s0, 21
                  sltiu        a1, s11, -213
                  addi         s6, s9, 390
                  nop
                  or           a6, s2, s2
                  srai         s7, s9, 17
                  srl          s7, t5, ra
                  sltiu        t2, s2, 1239
                  xor          s10, s0, a6
                  addi         tp, a4, -452
                  srli         t3, s7, 10
                  add          gp, a2, a4
                  blt          a5, s5, 138f
                  bge          t1, s1, 132f
                  slti         tp, s0, -1088
                  blt          t4, a0, 127f
                  blt          s8, s0, 124f
                  add          ra, ra, s1
124:              or           a2, t0, gp
                  bltu         s0, t4, 132f
                  slt          sp, a0, sp
127:              sub          t3, s8, s8
                  sra          s4, a3, a1
                  lui          t3, 191330
                  sltu         gp, s2, s3
                  srai         tp, a7, 20
132:              slti         s0, s11, -1378
                  bgeu         sp, s8, 134f
134:              srai         s7, a0, 26
                  bgeu         t5, tp, 153f
                  add          s6, t2, a3
                  auipc        ra, 477453
138:              sltu         s5, t2, ra
                  slt          sp, a7, t2
                  nop
                  nop
                  sub          s10, s0, a1
                  slt          a6, t2, s4
                  xori         s6, t1, 482
                  blt          t1, a4, 162f
                  slt          s10, s11, s3
                  sltu         t2, s9, s11
                  slli         a3, t1, 8
                  slti         a6, t1, -56
                  slt          s0, tp, ra
                  sra          s4, ra, t0
                  xor          zero, a4, s2
153:              or           s1, s7, a4
                  auipc        a7, 674604
                  xori         t0, s0, -1159
                  sltiu        s3, gp, 149
                  srli         s7, a2, 14
                  bltu         t6, zero, 174f
                  xori         s11, gp, 1390
                  blt          t5, s7, 178f
                  beq          a2, s6, 178f
162:              ori          s9, s3, -399
                  sltiu        ra, s1, -870
                  blt          a6, a0, 170f
                  ori          t1, s10, 569
                  sub          a0, t3, a7
                  addi         a2, a5, 706
                  andi         s0, t4, -447
                  slli         s9, t5, 13
                  addi         t1, zero, 10 #init loop 0 counter
                  sll          s11, t6, s11
                  sra          a5, gp, t1
                  or           t2, sp, s2
                  add          a3, t5, tp
                  sltiu        s2, a1, 1254
                  sub          t6, s5, a3
                  addi         sp, a5, 1555
                  auipc        s1, 865957
                  xor          sp, s10, t0
                  addi         t6, a6, 603
                  slti         ra, a6, -419
                  addi         a1, zero, 7 #init loop 0 limit
                  sra          s0, a6, t2
                  sltiu        s11, s8, -313
sub_4_0_0_t:      add          a5, s4, a4
                  lui          zero, 493231
                  lui          ra, 903104
                  addi         t1, t1, -1 #update loop 0 counter
                  lui          s9, 24640
                  nop
                  ori          s10, ra, -838
                  andi         s10, t3, 170
                  bgeu         t1, a1, sub_4_0_0_t #branch for loop 0
                  sll          a5, a4, s11
170:              sll          s7, a4, t1
                  slt          s11, a1, ra
                  sltiu        t6, gp, 1288
                  and          a6, a6, s11
174:              srai         s6, ra, 0
                  addi         t3, a3, 1083
                  xori         s11, ra, -984
                  slli         gp, s5, 9
178:              nop
                  srli         t6, tp, 25
                  slt          ra, a3, s3
                  bgeu         a6, tp, 201f
                  sra          s11, s3, t0
                  xori         s0, a2, 1791
                  andi         t3, zero, -303
                  slli         a3, s0, 0
                  slt          a6, a7, t2
                  lui          s10, 459946
                  or           tp, gp, t5
                  or           s11, a1, a2
                  srai         gp, t4, 27
                  xori         a4, s6, 574
                  and          a5, s2, sp
                  sll          a6, s5, zero
                  sll          t1, s6, s2
                  sub          s1, ra, a1
                  auipc        t6, 345166
                  srli         a2, t1, 0
                  auipc        a7, 133853
                  bgeu         s2, t3, 204f
                  nop
201:              blt          s4, t1, 207f
                  add          gp, gp, s1
                  blt          a5, s1, 223f
204:              addi         s5, s0, 370
                  beq          a3, a4, 208f
                  bge          t3, s4, 219f
207:              addi         ra, s0, -201
208:              bne          s5, t2, 209f
209:              sub          s1, t4, t1
                  srai         zero, a6, 31
                  bge          t5, s0, 231f
                  sra          s0, zero, a2
                  slti         s1, a0, 1463
                  addi         gp, t1, 740
                  bge          a6, s0, 222f
                  srli         s7, a6, 5
                  beq          s5, a3, 222f
                  blt          s3, t3, 223f
219:              sra          s7, tp, sp
                  sll          a0, s0, s3
                  slti         a5, s2, 1351
222:              beq          s9, a7, 240f
223:              ori          a4, a0, -1160
                  sub          a7, s9, s2
                  sll          a5, tp, s7
                  sll          s6, t0, ra
                  add          a6, ra, a6
                  add          s5, ra, s2
                  sub          s0, s0, s8
                  sra          s11, s3, a1
231:              ori          a0, s10, 374
                  bgeu         t6, a7, 249f
                  bltu         s4, s7, 248f
                  ori          s2, a7, -972
                  bgeu         s0, s1, 254f
                  bgeu         a5, a5, 254f
                  sltu         t0, a4, s7
                  sub          sp, s7, zero
                  srai         s5, s6, 24
240:              xor          s9, t5, a7
                  bgeu         a1, s5, 247f
                  bltu         t6, s0, 258f
                  sltiu        a4, s1, -853
                  nop
                  xori         ra, a3, 1590
                  ori          t1, a7, 178
247:              bgeu         t6, s10, 263f
248:              xori         gp, s2, 923
249:              blt          t6, zero, 257f
                  xori         s1, a3, -1387
                  slt          sp, s0, s0
                  bltu         t3, s8, 270f
                  nop
254:              sll          t2, s10, t1
                  add          gp, a4, gp
                  and          a3, a4, a0
257:              andi         a0, t2, 1502
258:              slt          s0, zero, t6
                  blt          zero, zero, 278f
                  slt          ra, s8, t6
                  or           a4, tp, s9
                  slt          a0, s3, s1
263:              auipc        s3, 79480
                  slt          gp, t0, s10
                  bge          s11, a0, 277f
                  slt          sp, s7, s0
                  srl          ra, s0, gp
                  xor          zero, tp, s1
                  srli         gp, s4, 18
270:              xori         s7, a1, -871
                  slti         a0, a4, 491
                  bge          a2, t6, 278f
                  nop
                  lui          s4, 87982
                  slti         a2, s8, -784
                  slli         t0, s0, 17
277:              srai         a7, s11, 16
278:              bltu         s2, s9, 296f
                  or           a7, a6, a2
                  lui          s10, 710097
                  xori         t6, a7, -541
                  and          s7, s1, a1
                  srai         s3, a3, 30
                  bge          t3, gp, 297f
                  sub          a2, t2, t0
                  auipc        t3, 940006
                  nop
                  slli         s2, gp, 24
                  slli         s3, a2, 17
                  bge          s1, t2, 307f
                  srai         a5, s8, 8
                  slti         t1, t6, -607
                  sltu         zero, a7, gp
                  addi         a2, t2, -4
                  add          s4, t1, a3
296:              beq          tp, tp, 298f
297:              bge          zero, s5, 315f
298:              nop
                  slli         s3, s4, 14
                  bltu         a3, s4, 306f
                  bne          s10, s10, 313f
                  beq          tp, t0, 307f
                  bne          s7, sp, 304f
304:              or           a0, s2, a6
                  slt          s1, a3, s5
306:              ori          a7, s8, 394
307:              srai         gp, s5, 13
                  bgeu         s4, a3, 310f
                  srli         a7, a7, 28
310:              slt          s11, tp, a2
                  sub          s4, s9, a3
                  or           tp, s4, zero
313:              sra          s2, a2, a7
                  bltu         zero, a1, 330f
315:              and          sp, s10, s7
                  sra          t1, a7, s11
                  srai         zero, a3, 4
                  xor          s5, a6, s2
                  auipc        zero, 629945
                  srl          a3, s1, a2
                  blt          s5, s11, 326f
                  addi         s6, s2, 914
                  lui          tp, 287614
                  lui          s2, 300891
                  sub          ra, a1, a2
326:              nop
                  srli         a5, s2, 18
                  andi         t0, t1, -976
                  slt          t1, gp, t1
330:              bge          t0, s0, 336f
                  srai         a1, t6, 25
                  bne          t4, a4, 337f
                  and          s4, a2, t1
                  srai         tp, ra, 24
                  slt          sp, s0, s8
336:              lui          s1, 568351
337:              andi         a1, s0, 376
                  blt          s3, a4, 356f
                  add          a3, a2, s1
                  andi         a0, t5, 1104
                  srl          s1, tp, s4
                  slt          s2, tp, s8
                  addi         a6, s3, 1846
                  ori          a0, s5, -1564
                  add          s4, s7, sp
                  and          t1, s4, s10
                  srai         s11, a7, 5
                  sltu         t3, sp, ra
                  add          s2, gp, a2
                  srli         zero, s1, 30
                  srl          s3, s1, t1
                  lui          ra, 45231
                  sra          s3, s0, a6
                  xori         s10, a6, -519
                  auipc        a1, 732723
356:              beq          s8, a1, 363f
                  sll          a5, a0, s7
                  slli         s9, t2, 5
                  slt          a6, t6, a4
                  ori          a7, t5, -1541
                  slt          t6, s7, a7
                  nop
363:              bge          t3, s8, 380f
                  or           s4, t3, sp
                  nop
                  bgeu         s6, s5, 384f
                  xor          s5, t1, t2
                  blt          s4, t1, 374f
                  bge          ra, t6, 384f
                  blt          s3, ra, 371f
371:              or           t2, s2, s6
                  add          tp, t1, s8
                  slli         s5, a5, 13
374:              xori         zero, a4, -1990
                  bgeu         s2, s0, 387f
                  sra          sp, t2, a2
                  xori         a7, a1, 869
                  andi         a7, t6, -1025
                  sra          ra, s5, s4
380:              srli         a5, s9, 14
                  andi         a2, a4, 1772
                  sltiu        zero, s3, 263
                  bltu         tp, s4, 403f
384:              nop
                  bgeu         s8, a1, 403f
                  lui          s7, 626956
387:              bltu         tp, a4, 399f
                  sltiu        a0, t4, -1498
                  slti         s11, s1, 1232
                  slti         a4, t1, -31
                  slti         ra, t6, 176
                  bne          s3, a6, 400f
                  sra          s5, a0, a1
                  beq          a3, s6, 414f
                  bge          s10, t4, 408f
                  bge          a6, s9, 402f
                  bne          t0, t2, 416f
                  slli         ra, a6, 18
399:              addi         ra, tp, 706
400:              nop
                  sub          ra, s1, s11
402:              xori         t6, zero, 841
403:              or           t2, s6, s0
                  add          s11, t6, s5
                  sra          s4, a2, a6
                  lui          t3, 462838
                  add          gp, a0, s5
408:              srl          s6, a4, a4
                  xor          ra, s5, s4
                  add          gp, ra, s9
                  ori          s4, t6, 2007
                  srai         s1, sp, 2
                  addi         tp, a2, 1811
414:              sra          s1, a4, s5
                  andi         zero, a7, -1858
416:              sll          s9, s9, s8
                  bne          s3, s10, 418f
418:              xor          s2, t5, a0
                  bltu         s0, a4, 422f
                  xor          t2, ra, t2
                  bgeu         s5, t3, 437f
422:              bne          s1, t3, 439f
                  ori          s7, t1, -1784
                  addi         t6, t0, 934
                  beq          a4, tp, 438f
                  add          ra, s2, a7
                  ori          gp, s10, -1492
                  srai         s5, a3, 3
                  sltu         a6, a0, t5
                  blt          zero, a0, 449f
                  bge          t3, s3, 449f
                  bltu         s10, ra, 450f
                  sra          a6, gp, a2
                  slti         s6, s6, 38
                  bne          a2, t0, 440f
                  blt          s9, t0, 444f
437:              bne          zero, a5, 456f
438:              srl          zero, s4, a3
439:              add          t1, s6, s4
440:              xori         a3, a0, 1084
                  slt          s11, t6, ra
                  srai         ra, sp, 0
                  lui          s11, 670293
444:              blt          t1, ra, 447f
                  lui          s3, 374048
                  xor          a3, t3, s2
447:              srli         a6, a4, 25
                  andi         s11, s8, 1553
449:              bltu         s3, gp, 456f
450:              blt          zero, t1, 469f
                  sub          s9, s11, ra
                  sra          s9, gp, s9
                  sltu         s9, a7, s5
                  nop
                  sub          a0, zero, s10
456:              sra          s9, s2, a1
                  and          t0, s1, a6
                  sltu         t1, gp, a7
                  sll          a2, tp, sp
                  sltu         sp, tp, t4
                  and          t0, a5, zero
                  xor          s3, s1, s1
                  xori         a5, a0, 53
                  auipc        s6, 910307
                  slli         s5, a7, 7
                  bgeu         s7, gp, 472f
                  lui          zero, 292561
                  beq          s5, s2, 472f
469:              bltu         sp, t4, 472f
                  xor          s9, s6, s9
                  or           zero, t0, s9
472:              srl          s7, a5, ra
                  slti         s6, s9, -1982
                  lw           ra, 4(t4)
                  srli         t3, a0, 8
                  sltiu        a4, s4, -742
                  addi         t4, t4, 60
                  nop
663:              addi x11, x1, 0
663:              jalr x11, x11, 0
sub_5:            xori         a1, ra, 695
                  slt          s2, t5, a0
                  srli         tp, a4, 10
                  add          t6, s7, s10
                  addi         t4, t4, -20
                  sw           ra, 4(t4)
                  nop
                  slt          s5, s10, gp
                  slti         a2, t4, 1569
                  bge          gp, t1, 19f
                  sll          a4, ra, a5
                  xor          s5, zero, tp
                  bltu         zero, s3, 19f
                  blt          s4, t3, 19f
                  blt          s2, s5, 8f
                  or           a6, s3, a2
                  sll          s1, s8, t1
8:                beq          s7, a4, 12f
                  xori         a5, t5, 1828
                  sll          s7, a3, tp
                  add          a2, s1, sp
12:               beq          s11, a6, 19f
                  xori         ra, a5, 1860
                  or           t3, s4, a6
                  bltu         a2, s5, 27f
                  xori         t2, a1, -1372
                  lui          s1, 101715
                  sll          s5, s3, s1
19:               xor          s5, tp, s4
                  slti         t6, a0, -897
                  beq          s3, sp, 28f
                  bgeu         t3, a4, 28f
                  srai         s0, a2, 21
                  auipc        sp, 423229
                  slt          s10, a2, s6
                  lui          s5, 346489
27:               sra          a4, s10, sp
28:               xori         s11, t5, 394
                  addi         a6, s4, -654
                  and          s6, t1, s5
                  lw           ra, 4(t4)
                  ori          s0, s4, 735
                  addi         t4, t4, 20
                  sltu         s3, s3, s4
                  or           s11, t5, s1
                  sll          s4, t5, zero
                  andi         s11, t6, 1656
47:               addi x6, x1, 0
47:               jalr x6, x6, 0
sub_3:            addi         t4, t4, -36
                  xori         a0, s7, 1186
                  sltu         s10, s0, a1
                  sw           ra, 4(t4)
                  ori          a1, s2, 624
                  or           s10, a4, a2
                  srl          s11, s11, t4
                  nop
                  add          t2, t3, sp
                  beq          a2, sp, sub_3_j6 #branch to jump instr
                  add          a5, a3, gp
                  srai         s11, a6, 31
                  slli         s10, s9, 11
                  xor          t0, a7, s11
                  or           a7, a6, t4
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  ori          sp, t0, -619
                  sltiu        sp, a7, 1625
                  la           t6, sub_5
                  sltu         t1, a4, t0
                  sltiu        s3, s6, 208
                  addi         t6, t6, 226
                  slt          tp, ra, s10
                  addi         s7, s10, 770
                  auipc        s2, 561545
sub_3_j7:         jalr         ra, t6, -225 #jump sub_3 -> sub_5
                  addi         a1, zero, -7 #init loop 1 counter
                  addi         s7, zero, -13 #init loop 1 limit
sub_3_3_1_t:      or           s4, t1, sp
                  sub          s10, a4, s1
                  slt          s0, s1, t4
                  addi         a1, a1, -2 #update loop 1 counter
                  addi         t2, zero, 9 #init loop 0 counter
                  addi         s5, zero, 7 #init loop 0 limit
sub_3_3_0_t:      addi         a0, a2, -13
                  slti         s6, a4, -527
                  addi         t2, t2, -5 #update loop 0 counter
                  bgeu         t2, s5, sub_3_3_0_t #branch for loop 0
                  bne          a1, s7, sub_3_3_1_t #branch for loop 1
                  slt          s6, s6, s3
                  addi         s5, zero, 6 #init loop 1 counter
                  addi         a6, zero, 4 #init loop 1 limit
                  srli         a2, s1, 29
sub_3_1_1_t:      nop
                  addi         s5, s5, -2 #update loop 1 counter
                  and          s4, a5, a3
                  addi         tp, zero, 3 #init loop 0 counter
                  addi         sp, zero, 3 #init loop 0 limit
sub_3_1_0_t:      andi         zero, a4, 1452
                  addi         tp, tp, -2 #update loop 0 counter
                  srl          a1, a5, t5
                  bgeu         tp, sp, sub_3_1_0_t #branch for loop 0
                  sra          s1, s6, s6
                  bgeu         s5, a6, sub_3_1_1_t #branch for loop 1
                  sltiu        a1, t4, 1135
                  addi         t3, zero, 6 #init loop 0 counter
                  xori         gp, t1, -619
                  addi         a4, zero, 4 #init loop 0 limit
                  xori         sp, s8, -1704
                  slli         gp, t4, 25
sub_3_0_0_t:      xor          t1, s10, a6
                  addi         t3, t3, -2 #update loop 0 counter
                  addi         s11, t1, 1283
                  xor          a0, s8, a1
                  slti         s11, s4, 632
                  slti         s7, s6, 441
                  nop
                  xor          zero, s1, s8
                  slti         a2, s2, -1147
                  sltu         sp, s10, s9
                  bgeu         t3, a4, sub_3_0_0_t #branch for loop 0
                  xor          s0, t6, t3
                  addi         t2, zero, -7 #init loop 1 counter
                  addi         s9, zero, -19 #init loop 1 limit
                  sltiu        a6, s2, -64
sub_3_2_1_t:      andi         t6, a6, 1213
                  addi         t2, t2, -4 #update loop 1 counter
                  addi         s5, zero, 0 #init loop 0 counter
                  srai         s7, a6, 11
                  addi         sp, zero, -4 #init loop 0 limit
                  andi         zero, t4, 518
sub_3_2_0_t:      slti         a2, s7, 1133
                  add          s10, zero, s2
                  sra          a4, s0, t4
                  addi         s0, t4, 1855
                  addi         s5, s5, -6 #update loop 0 counter
                  srli         a0, t4, 29
                  bge          s5, sp, sub_3_2_0_t #branch for loop 0
                  slti         ra, s0, -332
                  bne          t2, s9, sub_3_2_1_t #branch for loop 1
                  nop
                  addi         a6, zero, -8 #init loop 0 counter
                  andi         a4, t5, -1051
                  addi         s11, zero, 0 #init loop 0 limit
                  addi         a5, t1, -37
                  slti         s5, ra, -1299
                  lui          s0, 840909
sub_3_4_0_t:      auipc        s7, 419781
                  slt          a1, t2, t3
                  or           t1, a0, a7
                  xor          ra, s2, t1
                  lui          s6, 373219
                  sra          tp, t0, t2
                  sub          s4, s7, a7
                  addi         a6, a6, 7 #update loop 0 counter
                  and          a0, a0, s0
                  slli         a2, a1, 24
                  addi         a5, s1, -1584
                  sltiu        a2, s6, 411
                  blt          a6, s11, sub_3_4_0_t #branch for loop 0
                  xor          a3, a5, t2
                  slt          gp, gp, a7
                  add          gp, s2, t2
                  auipc        t3, 971083
                  srl          a6, t3, s4
                  andi         a2, a1, -1803
                  addi         t2, s6, 590
                  srli         s7, a7, 7
                  andi         t6, t5, 653
                  xori         a2, s2, -562
                  lui          a3, 999369
                  sll          s4, gp, t6
                  bltu         s5, s8, 27f
                  and          s9, s7, a7
                  bgeu         t6, s0, 18f
                  sra          a0, t2, ra
                  sltiu        a0, s9, 1465
                  sltu         a0, t1, gp
                  sll          s11, s7, s4
18:               nop
                  sra          a3, a5, s1
                  auipc        a5, 477325
                  sltu         t0, t0, s6
                  sltu         zero, s11, s5
                  andi         tp, s10, -184
                  slt          sp, s8, s0
                  la           a4, sub_5
                  addi         a4, a4, 972
                  sra          s9, t3, a3
                  xori         s4, t3, -180
                  add          a3, ra, s11
                  nop
                  bge          a1, s4, sub_3_j5 #branch to jump instr
                  slti         tp, t2, -2007
                  ori          a7, a1, 1507
sub_3_j5:         jalr         ra, a4, -971 #jump sub_3 -> sub_5
                  andi         a3, a6, -1204
                  lui          s11, 814792
                  nop
                  sll          s3, a6, ra
                  xori         s5, a1, 748
27:               nop
                  addi         t6, t4, 134
                  bne          s10, t1, 45f
                  add          t6, t6, t2
                  bgeu         s10, s11, 40f
                  bge          t6, s9, 35f
                  slli         t6, ra, 13
                  sltu         a7, a3, zero
35:               beq          s3, t0, 51f
                  sltu         s0, a1, t2
                  or           a0, s6, s9
                  bne          s2, a4, 40f
                  and          s7, ra, zero
40:               nop
                  slli         s3, s0, 23
                  srli         s5, t3, 2
                  auipc        t1, 993185
                  slti         sp, s11, -148
45:               sltiu        a4, a5, 722
                  bge          gp, s0, 51f
                  srli         s0, s1, 31
                  bltu         s2, s0, 56f
                  srli         s6, sp, 31
                  andi         s6, a2, 1369
51:               xor          s6, a1, a0
                  xor          t6, a7, t1
                  bne          s0, ra, 57f
                  addi         t1, tp, -1610
                  auipc        a7, 704504
56:               ori          t1, s5, 408
57:               sll          a0, s5, s4
                  or           a3, s10, t4
                  bne          t1, t4, 70f
                  xor          s10, a0, s7
                  or           s3, a4, s10
                  xor          t1, s6, s11
                  blt          gp, t0, 79f
                  bne          s7, t6, 78f
                  andi         a1, s6, 1996
                  auipc        s1, 203248
                  sltu         s4, a6, s3
                  bne          t5, tp, 79f
                  lui          t1, 195416
70:               ori          a3, t0, -251
                  beq          sp, t3, 78f
                  addi         s4, a5, 812
                  auipc        a3, 897549
                  bltu         s8, s5, 77f
                  auipc        a5, 565938
                  addi         t0, a1, -931
77:               bne          ra, s1, 95f
78:               bne          a5, a2, 92f
79:               bltu         a0, s0, 90f
                  lui          zero, 402045
                  add          zero, t5, ra
                  sll          a3, a2, gp
                  sra          t3, s0, ra
                  sra          a0, s1, s7
                  bne          sp, zero, 86f
86:               srl          a2, a4, a6
                  bltu         a0, s2, 91f
                  bge          t2, a1, 93f
                  auipc        a3, 61352
90:               xor          t6, a6, s8
91:               andi         a5, a0, -256
92:               sltiu        s7, a3, 419
93:               ori          s1, a4, -28
                  and          ra, t1, tp
95:               sra          a6, s4, s8
                  auipc        t3, 294731
                  slti         s7, s8, -1512
                  and          zero, s0, a6
                  xori         s2, a5, -329
                  and          s9, a0, s3
                  sra          a5, t5, a1
                  addi         t1, s6, 1316
                  bge          a0, s3, 119f
                  sltu         a4, s4, zero
                  srl          a7, a5, a7
                  srl          s11, t2, a1
                  bgeu         a0, zero, 109f
                  bgeu         s2, a3, 112f
109:              srai         zero, a4, 19
                  xor          zero, s6, sp
                  ori          s9, s2, -169
112:              srai         a6, tp, 0
                  sltiu        a2, a4, -1587
                  addi         s7, sp, -2029
                  andi         a0, a1, 798
                  srl          ra, sp, s10
                  xor          s3, s5, a0
                  bne          a7, s2, 137f
119:              or           s9, t5, t1
                  xor          a7, t2, a2
                  xori         a5, t4, 1608
                  bltu         s5, s5, 135f
                  blt          s10, t4, 137f
                  sltiu        s11, tp, 1170
                  sll          a4, ra, zero
                  xor          s3, tp, s3
                  sra          zero, zero, t0
                  srli         s3, a4, 27
                  or           s0, s7, t3
                  add          s3, sp, t0
                  nop
                  blt          t3, gp, 147f
                  sll          tp, a2, t3
                  sltiu        a3, s3, 991
135:              addi         t2, s1, -610
                  xor          t1, t6, t5
137:              srai         t6, ra, 7
                  bltu         s5, s3, 147f
                  bgeu         tp, a1, 154f
                  andi         s5, a0, -451
                  sltu         s0, t6, zero
                  sll          a3, a5, s1
                  slli         zero, t0, 7
                  srl          t1, a2, s9
                  sra          sp, a6, zero
                  slti         t1, t1, 1367
147:              andi         s3, a1, 18
                  auipc        s7, 790766
                  xor          s11, a4, t2
                  bltu         s8, a7, 163f
                  and          a5, a4, t2
                  addi         s5, t5, 625
                  blt          s6, gp, 169f
154:              srli         t0, s11, 31
                  sltiu        a6, s2, 205
                  auipc        t2, 730928
                  andi         a3, s8, 819
                  srli         s9, s3, 7
                  sra          a6, a0, s2
                  xori         s4, sp, -1014
                  bgeu         t4, a0, 175f
                  nop
163:              srli         s6, gp, 0
                  and          a0, a6, tp
                  sra          s1, a1, s7
                  nop
                  xori         a5, t2, -1578
                  slli         zero, t5, 1
169:              sltiu        gp, s6, 812
                  addi         s6, s6, 639
                  sll          a2, s3, s10
                  bne          t6, a5, 183f
                  or           t3, s8, s2
                  auipc        a2, 162327
175:              xori         s5, a0, 43
                  bge          tp, a1, 180f
                  sub          t6, ra, s0
                  bltu         a2, s11, 181f
                  lui          s0, 926868
180:              add          s10, s11, t2
181:              srli         sp, a1, 26
                  sub          a7, t4, a5
183:              or           sp, s0, ra
                  slti         s3, t4, -1171
                  srli         a1, zero, 14
                  bne          t2, t3, 202f
                  srai         a6, s4, 7
                  andi         s0, a7, -1892
                  srai         a1, a7, 30
                  xori         s0, s1, -1339
                  blt          s9, t5, 207f
                  nop
                  andi         a6, sp, -174
                  beq          a3, zero, 196f
                  addi         s9, t0, 1699
196:              sltiu        s3, a5, -1126
                  bge          t3, t0, 202f
                  bgeu         sp, s5, 207f
                  sltiu        a3, t0, 585
                  or           t2, s2, t6
                  srai         s10, s8, 19
202:              srli         s10, a0, 7
                  slt          ra, s11, a3
                  or           a0, t1, s4
                  bltu         a5, a3, 224f
                  sub          a5, t2, t6
207:              sltiu        s4, t4, -684
                  srli         a5, s8, 14
                  srl          a2, s2, a3
                  slt          t1, ra, ra
                  ori          t6, zero, -480
                  sltiu        s5, t5, 1957
                  auipc        s4, 376234
                  lui          t1, 404590
                  bltu         s8, a4, 219f
                  xori         s0, s4, -540
                  xori         zero, a1, 268
                  srai         s0, t3, 1
219:              bltu         a1, gp, 222f
                  xor          s2, s5, a7
                  srai         s1, a5, 14
222:              blt          t3, s9, 238f
                  or           t0, a6, a3
224:              addi         a5, tp, -1806
                  bgeu         a2, zero, 233f
                  add          s0, t2, t2
                  sltu         s4, t3, s3
                  xor          a6, t4, t2
                  beq          a2, a3, 245f
                  srli         gp, a0, 0
                  bltu         zero, a5, 242f
                  srli         s9, t6, 15
233:              and          t0, s5, s9
                  bgeu         t0, s0, 238f
                  addi         ra, s4, -642
                  sltiu        a7, s10, -349
                  sub          sp, t3, t4
238:              srl          t2, s1, t2
                  bltu         a2, s11, 257f
                  auipc        s11, 654079
                  bgeu         s11, s4, 242f
242:              lui          s9, 927212
                  bne          a0, t0, 252f
                  xor          s1, s0, a6
245:              bltu         s1, t2, 259f
                  srli         s9, a5, 5
                  xori         s6, a7, -241
                  ori          s4, a3, 1465
                  sub          t0, s11, a1
                  srl          tp, t4, t1
                  addi         s0, sp, -1339
252:              and          zero, a3, a4
                  beq          a5, a4, 258f
                  bgeu         s7, t0, 259f
                  slli         a1, t2, 30
                  srl          s3, t4, a0
257:              blt          t0, ra, 259f
258:              add          gp, t0, a2
259:              sub          t0, t5, t3
                  xori         t2, a0, 1118
                  andi         a2, s2, 1290
                  sltu         s4, ra, t6
                  slli         s10, s0, 8
                  srl          s4, s1, t5
                  bltu         t6, s11, 279f
                  slti         s10, s2, 29
                  sltu         t2, gp, s10
                  andi         a0, t6, 1907
                  addi         a5, t4, 111
                  or           s3, a3, t2
                  andi         a4, a7, -1775
                  srli         s5, t2, 27
                  lui          t2, 430804
                  ori          t3, s2, -1204
                  slli         s4, tp, 14
                  sltiu        zero, t2, -498
                  bltu         a2, s1, 288f
                  nop
279:              blt          a5, t6, 286f
                  sra          t1, gp, s11
                  srl          t2, s1, s8
                  or           s7, gp, t6
                  srli         s11, ra, 0
                  nop
                  lui          a7, 46637
286:              sltiu        s9, s2, -928
                  nop
288:              andi         a0, ra, 1468
                  and          a7, s2, ra
                  bne          zero, a2, 292f
                  sll          t6, a4, t5
292:              ori          s5, zero, -1357
                  or           t1, a1, t2
                  xori         t0, s10, -549
                  lw           ra, 4(t4)
                  slti         t1, t5, -910
                  addi         t4, t4, 36
                  xori         a7, a6, 1204
                  andi         s3, a0, 1213
                  or           s5, gp, s2
                  slt          s10, s5, a3
426:              addi x8, x1, 0
426:              jalr x8, x8, 0
sub_1:            addi         t4, t4, -36
                  slti         s1, a5, -1494
                  slli         t0, t2, 4
                  sw           ra, 4(t4)
                  slli         s6, t6, 23
                  addi         a5, zero, 4 #init loop 1 counter
                  sra          gp, s1, s6
                  lui          a4, 954871
                  lui          a0, 1027864
                  ori          t1, t0, -862
                  slt          gp, s0, a5
                  auipc        sp, 236036
                  andi         t1, t4, -165
                  addi         s5, zero, 19 #init loop 1 limit
sub_1_15_1_t:     ori          tp, tp, -343
                  sll          t1, t3, a5
                  addi         a5, a5, 3 #update loop 1 counter
                  slt          zero, gp, t2
                  addi         t0, zero, 7 #init loop 0 counter
                  sltu         a2, t0, tp
                  auipc        sp, 247666
                  addi         s3, zero, 18 #init loop 0 limit
                  slt          a6, a3, a3
sub_1_15_0_t:     ori          a0, t0, -1923
                  nop
                  xori         s10, t2, 1966
                  slli         t1, a0, 25
                  addi         t0, t0, 2 #update loop 0 counter
                  addi         a1, s6, -2000
                  auipc        s11, 934832
                  slti         a3, s7, 760
                  slt          s0, ra, t1
                  slli         s2, s6, 10
                  sltu         a7, s2, s0
                  bltu         t0, s3, sub_1_15_0_t #branch for loop 0
                  slt          s4, tp, s10
                  beq          a5, s5, sub_1_15_1_t #branch for loop 1
                  lui          a6, 949204
                  addi         a5, zero, -9 #init loop 0 counter
                  sra          a4, s2, a1
                  nop
                  srai         s5, t3, 4
                  slli         s5, t6, 17
                  or           a7, s3, s5
                  add          t1, s3, a6
                  sltiu        a3, gp, 1942
                  addi         a1, zero, 17 #init loop 0 limit
                  add          s1, t3, a0
                  sll          s4, a0, a2
                  sub          t1, t0, tp
sub_1_14_0_t:     ori          a6, s7, 888
                  auipc        a4, 321173
                  nop
                  and          a2, s4, s3
                  sub          s6, zero, s3
                  sra          s7, gp, s1
                  addi         a5, a5, 3 #update loop 0 counter
                  sltu         tp, s4, a4
                  and          s7, a2, t0
                  lui          s5, 239139
                  or           a4, s5, t1
                  srli         tp, t5, 22
                  ori          s5, s0, 1504
                  nop
                  nop
                  blt          a5, a1, sub_1_14_0_t #branch for loop 0
                  sll          t3, s0, sp
                  addi         s6, zero, 0 #init loop 0 counter
                  sltu         a1, t1, t3
                  add          t2, s9, t3
                  slli         s0, ra, 25
                  auipc        t2, 837926
                  addi         s1, zero, 8 #init loop 0 limit
                  srli         s0, t3, 21
sub_1_18_0_t:     xor          a1, s6, s9
                  sltiu        a4, s9, 536
                  srai         a1, s4, 24
                  addi         s6, s6, 8 #update loop 0 counter
                  or           t0, t6, s0
                  slli         t3, a4, 14
                  sltu         s2, t0, a0
                  slt          tp, s1, t1
                  slli         t6, s0, 13
                  bne          s6, s1, sub_1_18_0_t #branch for loop 0
                  srai         a6, ra, 7
                  addi         a6, zero, 10 #init loop 0 counter
                  sltu         s5, s6, s2
                  addi         t6, zero, 10 #init loop 0 limit
sub_1_1_0_t:      slti         a2, gp, -407
                  addi         a6, a6, -3 #update loop 0 counter
                  and          s5, t0, s8
                  bgeu         a6, t6, sub_1_1_0_t #branch for loop 0
                  sltiu        a7, s1, 1510
                  addi         t2, zero, 2 #init loop 0 counter
                  or           a0, t6, s11
                  sra          s7, t3, s6
                  ori          tp, a3, -92
                  slli         t0, s11, 21
                  addi         gp, zero, -6 #init loop 0 limit
sub_1_10_0_t:     slt          a3, s11, a3
                  nop
                  nop
                  sub          a4, t2, a0
                  addi         t2, t2, -2 #update loop 0 counter
                  slt          a4, s2, a5
                  or           sp, s0, s10
                  sub          s5, a3, s7
                  and          ra, s4, s9
                  sra          s9, s8, t4
                  sll          s1, s4, a5
                  sra          a4, s6, s3
                  slti         a5, a1, -374
                  bne          t2, gp, sub_1_10_0_t #branch for loop 0
                  sll          zero, t4, s7
                  addi         a1, zero, 0 #init loop 1 counter
                  srli         t0, t5, 11
                  srli         ra, s7, 21
                  srai         s5, ra, 9
                  and          a3, a3, t2
                  ori          t1, t4, -1573
                  addi         a5, zero, -1 #init loop 1 limit
                  slt          a7, sp, s6
                  auipc        s3, 229502
                  sll          s4, t6, zero
                  srli         t0, s8, 11
sub_1_12_1_t:     andi         t3, a1, 836
                  sub          s1, s3, s11
                  addi         a1, a1, -9 #update loop 1 counter
                  sltiu        s6, s10, -1631
                  addi         a0, zero, -4 #init loop 0 counter
                  sub          zero, a5, a6
                  addi         s11, zero, -14 #init loop 0 limit
sub_1_12_0_t:     slt          s9, t1, ra
                  sub          s1, ra, t5
                  slt          s2, ra, t6
                  addi         a0, a0, -10 #update loop 0 counter
                  or           a2, s3, s10
                  lui          t1, 139009
                  nop
                  beq          a0, s11, sub_1_12_0_t #branch for loop 0
                  sltu         s9, t4, s4
                  sll          s10, a4, a0
                  bge          a1, a5, sub_1_12_1_t #branch for loop 1
                  sltiu        s6, t5, 1658
                  addi         a5, zero, 8 #init loop 1 counter
                  lui          tp, 710310
                  addi         t3, zero, -10 #init loop 1 limit
                  srli         s3, t3, 19
                  slli         a3, a2, 14
sub_1_2_1_t:      ori          s0, gp, 1817
                  and          gp, ra, t1
                  sll          a6, a5, tp
                  srli         a6, a2, 25
                  addi         a5, a5, -5 #update loop 1 counter
                  auipc        s5, 640147
                  srl          a3, gp, s6
                  addi         s2, tp, -737
                  addi         s7, zero, 0 #init loop 0 counter
                  addi         a2, zero, -8 #init loop 0 limit
                  auipc        s0, 4498
                  ori          a7, s0, -1057
                  xor          t6, sp, gp
sub_1_2_0_t:      nop
                  addi         s7, s7, -4 #update loop 0 counter
                  xor          a7, t4, a0
                  beq          s7, a2, sub_1_2_0_t #branch for loop 0
                  or           a4, s5, s4
                  srl          s1, s9, s7
                  bge          a5, t3, sub_1_2_1_t #branch for loop 1
                  and          tp, a7, t5
                  addi         t2, zero, -1 #init loop 0 counter
                  or           sp, a4, a3
                  and          s0, a4, t0
                  lui          a6, 941236
                  srai         a4, s5, 22
                  ori          s3, s10, 1001
                  addi         tp, zero, 17 #init loop 0 limit
                  sra          s4, t1, sp
                  andi         s0, s3, -745
                  or           a4, a4, a0
                  add          a5, sp, t3
sub_1_8_0_t:      andi         t0, s10, 1485
                  ori          a7, s2, 1327
                  ori          s11, s2, 160
                  srli         s5, s7, 3
                  add          ra, a7, a6
                  addi         t2, t2, 9 #update loop 0 counter
                  auipc        t0, 224139
                  slti         a0, s9, 1966
                  xori         s3, a3, -1395
                  sub          t1, ra, t3
                  or           s6, s7, s1
                  sltiu        s3, s10, 1105
                  auipc        a7, 231038
                  and          a6, zero, a0
                  ori          t6, s8, -1276
                  srai         a6, ra, 26
                  slt          s1, a3, s1
                  beq          t2, tp, sub_1_8_0_t #branch for loop 0
                  addi         s2, s3, 912
                  addi         a2, zero, 2 #init loop 1 counter
                  srai         s9, gp, 18
                  sltu         s4, t1, s4
                  auipc        s10, 402719
                  addi         tp, zero, 18 #init loop 1 limit
                  sltiu        sp, s3, 74
sub_1_6_1_t:      and          a4, s0, t5
                  addi         a2, a2, 8 #update loop 1 counter
                  addi         s3, zero, -6 #init loop 0 counter
                  slti         s6, s1, -545
                  andi         t2, s0, 1577
                  sltu         s10, ra, a3
                  addi         s11, zero, 0 #init loop 0 limit
                  slt          s10, a2, t4
                  ori          t2, gp, -1091
                  andi         a0, s9, 717
                  and          ra, s3, s8
sub_1_6_0_t:      or           a1, t6, zero
                  addi         s3, s3, 6 #update loop 0 counter
                  lui          a5, 412701
                  bne          s3, s11, sub_1_6_0_t #branch for loop 0
                  blt          a2, tp, sub_1_6_1_t #branch for loop 1
                  srai         s4, t3, 20
                  addi         a5, zero, 4 #init loop 0 counter
                  sub          a3, s5, a3
                  sra          a4, t5, s7
                  slli         s11, s0, 12
                  sll          sp, s11, s6
                  lui          a7, 390174
                  srai         ra, t2, 2
                  addi         gp, zero, 4 #init loop 0 limit
                  sltiu        t2, s4, -1015
                  nop
                  xor          ra, s1, t0
                  add          s9, s7, a6
                  slli         s9, a4, 15
sub_1_19_0_t:     auipc        s1, 1019370
                  sub          s9, t5, t6
                  and          t2, t4, s4
                  nop
                  lui          zero, 12843
                  sltiu        sp, t0, 46
                  xori         t2, a6, -560
                  nop
                  sltu         s2, tp, t4
                  addi         a5, a5, -2 #update loop 0 counter
                  slti         t3, s1, 115
                  ori          s2, t5, -1927
                  sltu         zero, s0, t4
                  sltu         a1, s2, a6
                  and          s2, ra, t0
                  bgeu         a5, gp, sub_1_19_0_t #branch for loop 0
                  xori         t2, zero, 1803
                  addi         a4, zero, -1 #init loop 1 counter
                  addi         t3, zero, -17 #init loop 1 limit
                  srl          gp, s10, t4
                  lui          a1, 762049
sub_1_21_1_t:     lui          a3, 430151
                  addi         a4, a4, -8 #update loop 1 counter
                  srl          s3, a1, gp
                  addi         s10, zero, 7 #init loop 0 counter
                  addi         ra, zero, 6 #init loop 0 limit
                  ori          t2, s3, -822
sub_1_21_0_t:     xori         t1, s10, -350
                  addi         s10, s10, -2 #update loop 0 counter
                  bgeu         s10, ra, sub_1_21_0_t #branch for loop 0
                  xori         s9, a0, -1123
                  add          a3, s0, s0
                  nop
                  beq          a4, t3, sub_1_21_1_t #branch for loop 1
                  srl          a0, a3, a1
                  addi         t2, zero, 1 #init loop 0 counter
                  addi         s2, zero, 17 #init loop 0 limit
sub_1_0_0_t:      sltu         ra, s6, a4
                  addi         t2, t2, 4 #update loop 0 counter
                  xor          s1, zero, a1
                  and          s9, s10, s6
                  bne          t2, s2, sub_1_0_0_t #branch for loop 0
                  xor          s4, a6, s5
                  addi         a7, zero, 0 #init loop 0 counter
                  auipc        s4, 430807
                  addi         s10, zero, 15 #init loop 0 limit
                  andi         a2, t6, -368
                  xori         a4, s4, 589
                  add          a4, sp, s10
                  addi         a6, t0, 1022
                  slt          a3, s1, tp
                  andi         tp, zero, 816
                  srl          s0, s3, t2
                  ori          s9, s4, 1210
                  ori          s2, a3, 1169
sub_1_20_0_t:     or           zero, t2, a1
                  srl          a3, a7, s1
                  sltu         t0, a3, zero
                  sra          s11, t1, a4
                  slt          s3, a4, a2
                  ori          a6, a0, -2041
                  lui          s9, 148862
                  addi         a7, a7, 2 #update loop 0 counter
                  slti         a4, a2, -286
                  slli         a0, a5, 13
                  slti         a3, s3, 478
                  srl          zero, s7, s1
                  srl          ra, a1, a1
                  auipc        a4, 691427
                  srai         a2, t3, 29
                  srli         t3, a6, 10
                  blt          a7, s10, sub_1_20_0_t #branch for loop 0
                  sll          s6, t3, a6
                  addi         s9, zero, -6 #init loop 0 counter
                  sub          s1, t1, s8
                  addi         gp, zero, 3 #init loop 0 limit
                  or           ra, s5, a6
                  add          sp, a6, t1
sub_1_3_0_t:      ori          a4, s1, -376
                  nop
                  addi         s9, s9, 9 #update loop 0 counter
                  srl          a4, ra, gp
                  auipc        s3, 710990
                  sltu         t1, s7, a6
                  sub          sp, tp, a3
                  bne          s9, gp, sub_1_3_0_t #branch for loop 0
                  sub          s0, zero, t6
                  addi         a1, zero, 9 #init loop 1 counter
                  addi         s10, zero, 6 #init loop 1 limit
sub_1_5_1_t:      sltu         t2, sp, t5
                  and          s5, tp, a3
                  addi         a1, a1, -2 #update loop 1 counter
                  addi         a3, zero, 6 #init loop 0 counter
                  addi         s7, zero, 14 #init loop 0 limit
sub_1_5_0_t:      sltiu        t6, s4, -1422
                  addi         a3, a3, 4 #update loop 0 counter
                  bne          a3, s7, sub_1_5_0_t #branch for loop 0
                  ori          sp, gp, -764
                  bgeu         a1, s10, sub_1_5_1_t #branch for loop 1
                  slti         t1, s6, -367
                  addi         ra, zero, 8 #init loop 1 counter
                  addi         s1, zero, 8 #init loop 1 limit
                  nop
sub_1_13_1_t:     slt          tp, sp, tp
                  addi         sp, s5, -1099
                  sltiu        s3, sp, -408
                  auipc        a4, 264400
                  slli         tp, t4, 12
                  srli         t2, gp, 2
                  addi         ra, ra, -6 #update loop 1 counter
                  xor          s6, tp, s6
                  xor          a1, s3, s2
                  or           s4, a4, a7
                  slt          s6, a4, a7
                  addi         s7, zero, 9 #init loop 0 counter
                  addi         a7, zero, 7 #init loop 0 limit
                  srai         t2, a4, 23
sub_1_13_0_t:     sub          s10, a1, a2
                  addi         s7, s7, -6 #update loop 0 counter
                  addi         a2, a2, 1053
                  bgeu         s7, a7, sub_1_13_0_t #branch for loop 0
                  xor          t2, a3, s5
                  bgeu         ra, s1, sub_1_13_1_t #branch for loop 1
                  addi         s9, a1, -864
                  addi         s10, zero, 10 #init loop 1 counter
                  addi         s7, zero, 14 #init loop 1 limit
                  addi         t1, s0, -730
sub_1_17_1_t:     sltiu        a7, a2, 1813
                  addi         s10, s10, 2 #update loop 1 counter
                  andi         s6, s10, -620
                  addi         tp, zero, 7 #init loop 0 counter
                  lui          t3, 319621
                  addi         ra, zero, -17 #init loop 0 limit
sub_1_17_0_t:     slti         a3, a6, 1252
                  addi         tp, tp, -4 #update loop 0 counter
                  nop
                  beq          tp, ra, sub_1_17_0_t #branch for loop 0
                  addi         a5, a3, -1877
                  beq          s10, s7, sub_1_17_1_t #branch for loop 1
                  xori         t2, t4, -1980
                  and          zero, s5, s1
                  srli         a1, s2, 16
                  sltiu        t6, sp, -1370
                  ori          s7, a5, -436
                  xori         a0, t0, 133
                  addi         a4, zero, -1256
                  ori          s4, tp, -722
                  srai         a0, t6, 22
                  sltiu        a6, a1, 473
                  slli         t3, zero, 30
                  sltu         s9, s4, a4
                  auipc        a2, 185378
                  xor          t2, s8, t1
                  lui          s1, 498184
                  blt          t5, t0, 27f
                  lui          a0, 344113
                  sltiu        sp, sp, 102
                  beq          a4, sp, 29f
                  sltiu        s9, s1, -247
                  xori         s0, t2, 1299
                  bgeu         a1, a0, 39f
                  sub          a7, a2, a2
                  sra          a2, a2, t3
                  slli         ra, a2, 24
                  sub          t2, s0, tp
                  bge          a7, t5, 32f
                  sub          gp, sp, s9
27:               xori         tp, s1, -1827
                  addi         s1, zero, -8 #init loop 0 counter
                  addi         s4, zero, 1 #init loop 0 limit
                  sra          s6, s3, tp
sub_1_7_0_t:      sltiu        gp, s1, -1219
                  andi         s3, zero, 1491
                  addi         s1, s1, 9 #update loop 0 counter
                  bne          s1, s4, sub_1_7_0_t #branch for loop 0
                  addi         s3, ra, 1630
                  slti         ra, t5, 949
29:               auipc        a0, 565767
                  bltu         a2, a7, 39f
                  sltu         ra, sp, t4
32:               or           s4, s8, s4
                  bne          s9, a2, 52f
                  andi         a7, s11, -1390
                  andi         a2, t0, -41
                  andi         a4, s3, -1230
                  and          t0, a7, s6
                  bne          a1, s4, 39f
39:               bne          s10, t2, 44f
                  slli         s10, s0, 20
                  xor          t1, a4, gp
                  ori          s1, a1, -1815
                  xori         ra, s9, -146
44:               srl          s9, s11, s0
                  bgeu         tp, zero, 64f
                  nop
                  bltu         t6, s1, 51f
                  xor          a3, gp, a2
                  xor          s10, a4, s11
                  or           t2, a4, s5
51:               ori          t1, s9, 330
52:               slti         t1, s1, 1590
                  or           s0, a2, a6
                  andi         a7, t2, 284
                  auipc        gp, 355801
                  bgeu         zero, s10, 68f
                  andi         s3, ra, -1548
                  lui          a6, 859153
                  xor          a7, t3, a4
                  ori          a2, a3, 668
                  srai         a5, s3, 5
                  bltu         t3, t4, 65f
                  or           a4, s6, t3
64:               lui          a1, 309784
65:               xori         s7, s8, -1159
                  slt          s1, t0, s5
                  sltu         s7, zero, t3
68:               slti         a6, t1, 1611
                  ori          ra, a7, -664
                  slt          s4, tp, s4
                  sltiu        ra, t4, -1329
                  bne          s3, s0, 84f
                  sltiu        gp, a4, -948
                  srai         s4, t0, 8
                  sub          a2, t6, t1
                  sra          s9, t6, t5
                  and          s6, s2, s7
                  andi         t3, a3, 969
                  andi         t0, a4, -50
                  lui          s1, 372085
                  slti         t0, t3, -1456
                  slli         s5, a0, 0
                  sltu         t0, s5, a1
84:               bltu         a2, s11, 91f
                  slti         s2, s11, 1488
                  xori         a1, s10, -368
                  andi         s11, t5, -1443
                  beq          a5, a5, 107f
                  andi         s0, s3, 1768
                  beq          s9, t6, 101f
91:               xor          a6, zero, t0
                  sltu         a3, a0, s5
                  xor          s7, a1, s0
                  sll          s1, t6, t6
                  auipc        tp, 1000099
                  slti         t1, a6, -1050
                  beq          a3, sp, 104f
                  srai         t0, gp, 27
                  add          s3, ra, s10
                  srai         s2, s2, 14
101:              srli         a1, t6, 7
                  xor          zero, s3, s10
                  srli         s3, a5, 19
104:              bltu         a0, s8, 108f
                  srli         zero, t1, 2
                  bge          s5, zero, 122f
107:              andi         t6, s9, 629
108:              bltu         t0, a0, 110f
                  srli         a1, s7, 30
110:              srli         gp, s3, 20
                  bltu         a3, a5, 118f
                  slt          zero, zero, a0
                  srl          s7, a6, t6
                  slli         a6, t1, 8
                  addi         s1, s1, 113
                  slt          a3, s2, s9
                  or           a7, s11, s8
118:              sra          s3, s3, a1
                  lui          s5, 169517
                  lui          a5, 150215
                  addi         s2, a2, 143
122:              xor          a5, s11, t6
                  sltu         s10, ra, a0
                  srl          t6, s8, tp
                  bltu         s8, sp, 135f
                  slti         a2, s2, 534
                  slli         a6, s3, 2
                  slli         s2, s9, 27
                  xori         s6, gp, -1110
                  lui          s4, 561256
                  lui          t0, 29202
                  auipc        s2, 1033791
                  sltiu        gp, t1, -87
                  nop
135:              blt          sp, a1, 147f
                  and          a6, s8, t4
                  xori         a3, s3, -56
                  blt          a7, s6, 157f
                  xori         t0, a3, -1670
                  slti         a6, s3, -1572
                  slt          t1, s2, s11
                  xor          a1, s2, s1
                  and          s0, t1, s11
                  ori          t6, a0, 1764
                  slt          s1, t1, s1
                  or           a6, a7, a0
147:              srai         t1, s1, 4
                  sll          a2, a0, s3
                  slli         s9, t0, 9
                  sltiu        s10, t4, 213
                  xor          a5, s5, ra
                  and          a5, s8, zero
                  bge          a5, s3, 173f
                  add          a6, a4, s5
                  and          a6, a6, s10
                  beq          ra, s6, 169f
157:              slli         a0, ra, 17
                  lui          s10, 249334
                  sltu         a3, sp, t5
                  bge          s1, s0, 166f
                  slt          t0, a3, a0
                  xori         a0, a1, 517
                  lui          a1, 876416
                  srl          s5, t3, t4
                  sltu         a2, tp, zero
166:              srl          a4, s5, a6
                  sub          ra, s11, t6
                  addi         s3, t1, -1197
169:              auipc        s2, 316626
                  andi         s10, a2, 397
                  slti         s6, a0, -1082
                  sltu         t2, a3, t2
173:              beq          t4, gp, 182f
                  ori          s10, t6, 1718
                  sub          s6, a5, s11
                  sll          a7, t4, s9
                  srl          s10, ra, s10
                  srli         a5, a6, 5
                  slli         t0, a2, 23
                  lui          sp, 578280
                  nop
182:              srli         s1, s7, 31
                  or           tp, t3, s4
                  beq          t6, a4, 200f
                  xori         tp, a4, 1546
                  ori          t6, a1, 389
                  sltu         a3, t3, a3
                  lui          t0, 57778
                  sltu         sp, t4, t2
                  auipc        s3, 1036733
                  bne          s6, a6, 197f
                  bge          t5, a5, 194f
                  sub          a0, s7, a1
194:              nop
                  slli         t2, a4, 12
                  sltu         s7, a2, s2
197:              slli         s4, tp, 7
                  slt          ra, a0, a2
                  sra          a3, gp, s11
200:              add          a4, a4, a2
                  beq          t1, gp, 204f
                  xor          s1, t6, s3
                  blt          t3, gp, 216f
204:              sra          s11, t0, t4
                  sll          a5, s10, s8
                  srai         ra, t3, 2
                  or           a5, sp, s9
                  xor          s0, s1, s3
                  nop
                  ori          zero, zero, 485
                  slt          a0, a7, zero
                  ori          s9, s9, 66
                  sra          ra, s10, a3
                  or           sp, s0, s10
                  lui          s6, 261498
216:              sltiu        tp, s2, 905
                  auipc        t2, 295857
                  beq          s8, t0, 230f
                  addi         s4, t0, 1202
                  bne          s0, t3, 231f
                  bne          s1, ra, 227f
                  slli         s7, gp, 26
                  add          s9, s8, gp
                  and          a5, a3, s4
                  add          a0, a4, t3
                  and          t6, s4, s4
227:              srl          s9, s8, s6
                  srai         s9, tp, 25
                  andi         t6, t3, 219
230:              sub          a3, t5, zero
231:              add          a6, a3, t3
                  sra          tp, a6, t1
                  slli         ra, t6, 31
                  slt          s5, tp, s11
                  srai         s4, gp, 10
                  sltu         a4, a2, a4
                  xori         s3, s11, -2001
                  add          s3, t3, s1
                  andi         a6, a5, 369
                  xori         t0, a2, 1569
                  slti         s2, s4, -673
                  xor          s1, s6, t3
                  xor          a2, t4, gp
                  slt          s2, s1, s10
                  srl          a2, s6, a4
                  sll          t3, s8, s6
                  lui          s11, 1034366
                  and          t1, t1, s6
                  srli         zero, s7, 10
                  nop
                  slli         s10, t2, 24
                  slti         a1, a1, -1218
                  beq          s4, s2, 262f
                  beq          t3, t4, 255f
255:              bgeu         a2, a5, 274f
                  addi         t3, ra, 549
                  nop
                  srli         s10, a2, 24
                  slli         s11, s4, 12
                  andi         a2, s2, -2019
                  and          zero, s2, a4
262:              slli         tp, a5, 18
                  sll          zero, tp, s2
                  xori         s2, a5, 516
                  add          t3, a7, t2
                  or           tp, sp, s0
                  lui          sp, 91807
                  lui          t6, 171098
                  sub          s3, t6, s2
                  sub          a6, t6, tp
                  add          s2, s5, t1
                  or           s2, s8, s3
                  srl          zero, s8, s5
274:              bne          s5, s0, 279f
                  and          s5, a3, t0
                  lui          gp, 589514
                  sltu         t0, t3, a0
                  sub          s4, a2, a7
279:              and          a5, s11, a6
                  sltu         a0, a3, a2
                  blt          s6, tp, 294f
                  sub          s3, t5, s11
                  xori         ra, s1, 738
                  srli         a5, a1, 2
                  bgeu         t5, t5, 297f
                  beq          a0, s2, 302f
                  xor          t1, s7, t4
                  lui          s0, 569899
                  andi         a3, a1, -1633
                  sra          sp, t2, s10
                  add          a2, s3, t6
                  xor          zero, s4, ra
                  add          t3, sp, s6
294:              or           a1, s2, a1
                  xor          ra, a4, a6
                  srli         a3, a4, 13
297:              slti         s7, t4, -373
                  sra          a7, ra, sp
                  srai         s11, tp, 2
                  slti         a0, t4, -1976
                  andi         t3, zero, 1343
302:              blt          t1, s2, 318f
                  sltiu        s11, s4, 1180
                  slt          s3, s7, t3
                  andi         s2, t6, 1924
                  bltu         a2, s8, 316f
                  slt          s3, s6, t2
                  ori          s7, s7, -37
                  or           gp, tp, t6
                  auipc        a4, 731506
                  add          s5, s11, a4
                  srai         s10, a2, 2
                  bltu         s1, s3, 320f
                  bgeu         a4, s1, 323f
                  sub          s10, zero, a7
316:              xor          a4, s4, a7
                  blt          s5, s11, 324f
318:              add          t0, t3, s7
                  bge          a0, s2, 338f
320:              sltu         a6, a7, ra
                  srl          a3, zero, a7
                  sub          s0, s3, ra
323:              ori          gp, t0, -690
324:              slt          a1, a6, s1
                  bltu         s10, t6, 344f
                  sltiu        t0, a6, -1655
                  bgeu         s1, ra, 346f
                  and          s0, s3, zero
                  ori          ra, s1, -867
                  and          sp, a4, t5
                  lui          a1, 315461
                  sltiu        a6, a5, -319
                  sub          s1, s4, s6
                  bgeu         a7, t6, 354f
                  slti         t2, a0, -715
                  add          s11, gp, t6
                  auipc        gp, 723312
338:              and          s4, sp, a2
                  sltu         t2, a2, s8
                  srai         s11, a3, 25
                  sll          t0, a5, t6
                  bgeu         a3, a3, 354f
                  nop
344:              sub          s0, s10, a2
                  blt          s2, ra, 349f
346:              sub          a6, a3, t5
                  bge          a7, gp, 351f
                  add          s5, tp, a0
349:              slti         s3, s10, -1994
                  srli         a2, tp, 1
351:              bgeu         s4, s4, 358f
                  addi         s7, s11, 1836
                  nop
                  addi         s7, zero, 0 #init loop 1 counter
                  sltu         zero, s4, a1
                  srl          a7, s3, a2
                  sra          a6, t2, s1
                  sll          a2, a7, sp
                  nop
                  srai         a7, t1, 31
                  slt          a6, t4, gp
                  slt          a3, t2, a2
                  srai         a7, tp, 11
                  sra          a3, s1, a4
                  sltiu        t0, s8, 1369
                  addi         s4, zero, 9 #init loop 1 limit
                  slli         a3, a1, 31
                  slli         a5, gp, 27
                  xor          sp, zero, t5
sub_1_11_1_t:     add          sp, a0, s0
                  xori         s6, t5, 730
                  addi         s7, s7, 3 #update loop 1 counter
                  xor          t0, s2, s5
                  addi         a0, zero, -7 #init loop 0 counter
                  add          ra, a2, a6
                  addi         a1, zero, -2 #init loop 0 limit
                  sra          zero, s6, s3
                  srai         t3, gp, 0
                  sra          t0, s1, t1
sub_1_11_0_t:     or           t0, s2, s10
                  addi         s1, t3, -497
                  addi         a0, a0, 8 #update loop 0 counter
                  sra          sp, t5, t2
                  blt          a0, a1, sub_1_11_0_t #branch for loop 0
                  sub          t3, a2, gp
                  nop
                  beq          s7, s4, sub_1_11_1_t #branch for loop 1
                  ori          sp, t3, -401
354:              bltu         a7, s10, 373f
                  or           s1, s3, tp
                  bgeu         a1, a6, 368f
                  slli         tp, s9, 3
358:              srli         tp, a5, 28
                  sub          a1, t5, t4
                  addi         zero, tp, -237
                  srai         s9, a2, 28
                  andi         t1, a1, -1181
                  slt          s7, s5, s5
                  slti         t6, s8, -1417
                  slt          s11, tp, s5
                  sltu         s10, s8, s9
                  add          s3, a2, t6
368:              bne          s8, zero, 375f
                  srl          s0, t4, s3
                  addi         s6, a5, 180
                  slti         a2, t6, -180
                  bge          a6, s2, 378f
373:              nop
                  xor          ra, a4, s8
375:              lui          a1, 215755
                  ori          tp, s9, 1220
                  sll          s7, s2, sp
378:              and          a5, a0, ra
                  srli         s4, a5, 11
                  lui          a2, 128584
                  sra          t3, t5, t1
                  srli         t3, s7, 23
                  sub          s5, s9, a6
                  srli         s10, s5, 30
                  slti         s10, s2, 295
                  slti         tp, t2, 1572
                  srai         s11, zero, 22
                  or           s5, s8, s4
                  srl          t0, tp, gp
                  bgeu         ra, ra, 409f
                  srli         t6, a6, 23
                  bgeu         tp, s0, 411f
                  and          s0, a7, a6
                  bge          t5, a0, 406f
                  add          t1, s9, a0
                  bltu         s11, t5, 408f
                  sltiu        a0, t3, -1232
                  beq          a1, s4, 399f
399:              lui          a1, 694049
                  sltu         t2, a6, a3
                  sra          t0, a0, a0
                  sub          a1, s9, a0
                  bltu         tp, tp, 405f
                  sltiu        a5, t2, -675
405:              sll          s5, a0, a7
406:              bge          a3, t5, 425f
                  xori         ra, a1, -562
408:              auipc        t0, 772388
409:              sltiu        s9, a5, -1050
                  addi         a1, s11, 18
411:              blt          a5, t2, 420f
                  blt          s5, a7, 419f
                  bne          a4, s1, 419f
                  auipc        gp, 1024984
                  sll          a1, tp, a4
                  add          a5, a2, ra
                  slt          s1, a1, s7
                  slti         a2, a1, 1194
419:              bne          a1, t0, 432f
420:              andi         a2, t2, 182
                  srai         s10, t1, 12
                  ori          a7, s6, -1048
                  slt          t3, t0, s3
                  slli         sp, t2, 3
425:              xori         tp, a2, 1808
                  blt          s6, a4, 446f
                  auipc        sp, 654262
                  sra          s11, a5, s11
                  srai         t6, a5, 14
                  srai         a7, sp, 27
                  slti         a4, sp, -1646
432:              bne          s11, s6, 437f
                  slli         s10, a0, 29
                  bne          tp, a2, 446f
                  sltu         gp, a4, t4
                  and          a6, sp, t4
437:              sra          a0, gp, s0
                  or           zero, s1, s0
                  srl          s5, s7, ra
                  add          a7, sp, t1
                  addi         s7, a7, 961
                  sra          s5, s7, a1
                  add          s10, a1, s7
                  auipc        s2, 210181
                  bgeu         t5, s9, 449f
446:              or           s11, s5, a0
                  lui          a6, 412565
                  beq          gp, a2, 452f
449:              add          s6, a5, s8
                  ori          s1, s10, 1387
                  srl          t0, a0, t2
452:              bltu         tp, ra, 464f
                  sll          s4, s4, s5
                  srl          a2, a6, t6
                  sll          t1, sp, s6
                  bne          a0, a4, 459f
                  beq          t6, zero, 463f
                  sltiu        a5, s6, -1159
459:              or           a1, s0, ra
                  blt          a3, s4, 473f
                  srl          t3, t2, s4
                  slli         sp, s3, 4
463:              bltu         t0, sp, 474f
464:              and          t0, zero, s1
                  auipc        gp, 362456
                  and          s1, a5, ra
                  xor          t3, a0, a0
                  bge          t2, zero, 475f
                  sltu         a2, t2, s7
                  sll          a0, s9, a4
                  sltiu        a7, gp, 50
                  andi         s3, gp, -743
473:              sll          s0, s11, a4
474:              slli         s1, a6, 26
475:              slti         s9, a0, -1932
                  sra          a4, t1, s8
                  slti         a4, t0, 1454
                  xor          s6, a2, zero
                  srl          s11, a1, s10
                  lui          s5, 755223
                  srli         a0, t1, 19
                  slt          s7, t3, s1
                  add          sp, a6, a1
                  auipc        a6, 126800
                  slti         s10, a0, 1954
                  lui          s2, 327063
                  bne          t6, t4, 503f
                  sltiu        ra, s11, 1910
                  sra          s11, zero, s6
                  bge          s0, s6, 500f
                  xori         s2, a5, -289
                  addi         t1, zero, -6 #init loop 0 counter
                  sll          gp, sp, t5
                  addi         s1, zero, 3 #init loop 0 limit
                  sltiu        a0, ra, -1598
                  and          a2, t5, s8
                  slli         a0, s0, 13
                  andi         sp, t3, 240
                  add          sp, t0, zero
                  sub          zero, s0, s2
                  srl          s2, a0, s7
                  add          t3, s9, t0
                  srli         a2, ra, 29
sub_1_9_0_t:      ori          tp, t1, -484
                  srli         ra, s6, 29
                  addi         t1, t1, 8 #update loop 0 counter
                  sll          s5, t6, t5
                  srl          ra, s2, zero
                  blt          t1, s1, sub_1_9_0_t #branch for loop 0
                  slti         s9, a2, 1061
                  lui          a3, 498077
                  sra          a6, a2, s3
                  lui          a3, 692644
                  bltu         s8, a7, 502f
                  sra          s10, t6, t1
                  add          t0, a2, t6
                  sll          s11, s11, t6
                  bltu         s0, a0, 508f
500:              sub          s9, s0, s0
                  sltu         a3, gp, t2
502:              slli         s6, a6, 16
503:              blt          gp, a3, 510f
                  nop
                  sltu         t2, s7, a6
                  xori         a3, zero, -455
                  or           t6, s2, s11
508:              andi         s4, zero, -1713
                  or           t1, ra, s5
510:              sll          s9, a4, s5
                  xori         a5, s3, 1555
                  srai         s0, s6, 24
                  srli         s10, a6, 25
                  bgeu         s3, t1, 530f
                  bne          tp, a2, 534f
                  nop
                  slti         s4, s4, 783
                  bltu         s6, a2, 537f
                  srl          a3, s3, t6
                  sltu         tp, a0, s0
                  add          a1, s8, s5
                  sub          a4, a2, zero
                  xor          t3, s9, s8
                  bge          s2, a1, 527f
                  srai         t6, ra, 0
                  slti         sp, t0, -920
527:              sltiu        s5, t6, 915
                  auipc        s3, 1027362
                  and          s6, a0, s6
530:              blt          ra, a7, 550f
                  sll          sp, s5, a0
                  srl          t3, a7, a1
                  bgeu         t3, zero, 534f
534:              bgeu         s4, s4, 536f
                  or           t6, zero, gp
536:              srai         s10, ra, 22
537:              auipc        s6, 205427
                  slti         a3, t3, -402
                  bne          s1, sp, 555f
                  lui          s7, 998490
                  sll          s3, t4, t4
                  srai         s4, tp, 27
                  sltu         sp, t5, s5
                  sltu         a3, t0, s4
                  nop
                  xor          a1, a5, a4
                  srli         s4, a0, 21
                  srai         t6, a6, 17
                  add          a2, s5, s8
550:              or           s5, s6, a2
                  or           gp, sp, a7
                  blt          s0, t2, 565f
                  sltu         s4, t2, a2
                  sltu         a3, s4, a5
555:              addi         a5, sp, 1991
                  nop
                  srl          s7, a5, sp
                  ori          t6, t2, 588
                  sll          s9, s1, a3
                  blt          s11, a4, 565f
                  sltu         gp, s2, s5
                  add          ra, s10, sp
                  xor          s3, a5, s4
                  slli         s5, a7, 24
565:              slli         s6, s8, 16
                  addi         a1, s2, 840
                  xor          a6, a4, t0
                  nop
                  addi         ra, a1, 196
                  addi         t0, gp, -231
                  add          s5, t0, s4
                  lui          t3, 69661
                  sub          sp, a0, t3
                  bgeu         s2, s5, 593f
                  slt          s5, a0, s0
                  beq          t4, t5, 585f
                  and          s9, t6, s8
                  srl          s3, s3, t3
                  and          a3, a3, t5
                  sll          a1, t3, t4
                  ori          t0, a3, 1374
                  addi         a6, s10, -559
                  slli         a5, a3, 26
                  sra          ra, s7, a2
585:              bge          a6, t4, 589f
                  beq          s6, t0, 590f
                  addi         t0, s6, -70
                  slt          s1, t2, s11
589:              addi         s1, t2, -384
590:              srai         t3, a7, 27
                  addi         s7, a3, 441
                  nop
593:              addi         s6, t4, 1637
                  bgeu         a2, s10, 601f
                  ori          a7, gp, -642
                  auipc        s2, 124348
                  bne          ra, s10, 616f
                  bge          a4, s2, 614f
                  srli         s1, gp, 22
                  bne          gp, gp, 607f
601:              bltu         tp, a7, 620f
                  bltu         s10, tp, 614f
                  nop
                  bne          s7, t5, 623f
                  bge          s8, s1, 615f
                  xor          t0, s8, t2
607:              sltu         t6, s8, a2
                  xori         t1, tp, -365
                  and          gp, a2, t6
                  beq          s2, a2, 623f
                  sltiu        s1, a7, -1026
                  addi         s1, a2, 1548
                  blt          tp, t2, 620f
614:              srai         a7, s10, 17
615:              sra          s9, s10, s3
616:              bge          t4, a0, 623f
                  bne          s10, ra, 623f
                  sltu         s4, s6, a1
                  xor          a5, a5, s0
620:              nop
                  slli         t6, a2, 12
                  bge          a2, t6, 634f
623:              ori          t3, t2, -1958
                  xori         t1, a2, -272
                  slt          sp, ra, t5
                  lui          tp, 804556
                  sra          a6, s7, sp
                  sltiu        s9, t0, 1596
                  blt          t3, s9, 641f
                  srai         a6, tp, 7
                  ori          s7, ra, 1460
                  nop
                  slli         sp, s11, 10
634:              lui          s10, 677509
                  bge          t1, s8, 647f
                  srli         t6, a1, 6
                  bltu         s0, a5, 646f
                  bne          sp, a3, 644f
                  andi         s2, t6, -586
                  sll          t3, t6, zero
641:              srai         ra, t5, 21
                  sll          zero, s0, a4
                  ori          a6, zero, -21
644:              auipc        a4, 302463
                  sltiu        t3, a7, 1634
646:              blt          t1, t0, 665f
647:              slt          a1, a4, t6
                  andi         t1, sp, 679
                  addi         t3, s1, -78
                  bltu         a5, s1, 661f
                  ori          tp, s10, -597
                  lui          a6, 209746
                  sll          s5, gp, s7
                  bltu         a4, a2, 670f
                  xori         a0, a1, 382
                  sra          gp, gp, t1
                  srli         sp, a5, 15
                  sra          t0, s8, gp
                  sll          a1, a1, a3
                  sub          s9, s6, s1
661:              sltiu        s10, s7, 1181
                  srli         gp, s7, 7
                  add          s1, s7, a6
                  sltiu        ra, s1, 1126
665:              addi         s0, t4, -711
                  blt          s4, a6, 675f
                  ori          a5, tp, 839
                  beq          s7, t4, 681f
                  lui          tp, 768600
670:              andi         s5, gp, 1669
                  lui          s10, 117769
                  blt          t3, s11, 684f
                  xori         s4, zero, 917
                  sub          s7, t0, s8
675:              lui          zero, 125242
                  lui          tp, 332323
                  add          a5, s7, a7
                  addi         a6, zero, -2 #init loop 0 counter
                  sub          zero, s0, s4
                  srl          s4, s0, a6
                  addi         s1, zero, 6 #init loop 0 limit
                  xori         t6, s10, -966
sub_1_16_0_t:     nop
                  addi         a6, a6, 8 #update loop 0 counter
                  sll          s5, a5, t6
                  beq          a6, s1, sub_1_16_0_t #branch for loop 0
                  slt          t1, t0, a1
                  addi         a5, s5, -902
                  bne          t5, a2, 685f
                  srl          tp, s5, tp
681:              srl          t1, t0, a5
                  slti         gp, s5, 688
                  srli         t1, tp, 14
684:              bgeu         a5, zero, 686f
685:              slli         s11, s7, 0
686:              bne          s11, s9, 698f
                  sltu         s11, t5, s7
                  xor          s3, a2, tp
                  andi         a4, s8, 1746
                  blt          a1, a6, 694f
                  lui          a3, 973492
                  lui          t6, 1041717
                  sll          gp, a6, s11
694:              sll          s10, a0, a4
                  add          a7, a0, s8
                  sra          a1, a2, t4
                  blt          ra, s5, 716f
698:              sll          a1, s4, s0
                  beq          s8, a3, 706f
                  sltu         s7, s8, s0
                  slt          s11, s7, ra
                  srai         zero, a1, 8
                  and          s1, s9, s1
                  bltu         a0, a4, 716f
                  srli         t0, t0, 10
706:              xor          s0, s0, s11
                  blt          a0, a0, 726f
                  and          s4, a4, s0
                  addi         zero, t2, -360
                  srli         s5, s4, 2
                  srai         t3, s9, 0
                  bge          t0, a7, 723f
                  sltiu        zero, a5, 475
                  and          s11, tp, sp
                  bge          t2, a4, 728f
716:              srli         s6, a1, 28
                  slli         a5, t5, 9
                  srl          s3, gp, s10
                  sltiu        s7, gp, -1512
                  addi         t1, t0, 620
                  srli         s5, t5, 26
                  srai         s7, ra, 19
723:              sra          tp, gp, s5
                  bge          s4, s1, 740f
                  sll          s11, a2, s1
726:              sltiu        a1, a7, -74
                  slli         s7, t2, 21
728:              slti         t1, a7, -1110
                  slti         a5, a1, 1863
                  slli         s2, sp, 4
                  addi         s10, s7, 216
                  slli         a0, s11, 31
                  sra          a2, s5, a7
                  bltu         s2, a2, 754f
                  srai         s0, s3, 21
                  beq          a0, t2, 743f
                  or           t3, t1, s0
                  beq          s0, s2, 745f
                  xor          zero, s0, a6
740:              bgeu         sp, t1, 759f
                  or           a4, s0, s4
                  sll          s2, sp, a4
743:              sltu         sp, s0, s1
                  ori          a3, s0, -445
745:              bge          s7, t4, 748f
                  or           a5, a1, s6
                  auipc        ra, 242894
748:              bgeu         a4, a1, 749f
749:              bge          gp, tp, 759f
                  andi         a0, tp, -485
                  slti         t0, a2, 159
                  sll          a6, s6, s2
                  bge          s10, t3, 762f
754:              bge          s8, sp, 761f
                  lui          tp, 229008
                  xor          s9, s0, s7
                  slli         t0, s2, 23
                  slli         t0, t5, 26
759:              srl          a6, a1, s2
                  xori         a5, s1, -921
761:              lui          sp, 1011811
762:              and          tp, t0, ra
                  andi         a4, a6, -95
                  bge          ra, s3, 783f
                  blt          a2, s10, 771f
                  andi         a2, a0, -525
                  sra          t6, s6, gp
                  xori         s4, s11, -1643
                  srai         a7, s8, 17
                  sub          a0, s0, a5
771:              xori         a7, s5, 1164
                  slti         a7, a1, 475
                  addi         tp, s7, -894
                  sltu         a5, zero, t1
                  xori         s0, t0, 1119
                  auipc        s5, 875916
                  sra          s6, s6, s11
                  slli         s3, zero, 26
                  and          s2, s11, s10
                  slt          s7, a1, s8
                  xor          a0, a0, s7
                  add          s4, a5, s2
783:              xori         a1, t3, -445
                  slt          s2, s4, t4
                  bge          a1, s9, 797f
                  xori         a0, a1, 16
                  bne          a1, s9, 791f
                  sltu         t3, s9, t0
                  sltiu        a3, s8, 1098
                  bge          a6, s4, 809f
791:              bge          s8, s8, 796f
                  xor          s9, a4, t3
                  slli         t3, a1, 17
                  slti         a0, zero, -4
                  add          a7, a3, a6
796:              or           a5, s8, s2
797:              bge          s4, s11, 813f
                  and          s9, a4, a2
                  srai         s6, a3, 20
                  beq          a1, a5, 812f
                  and          s11, s4, s6
                  lui          s7, 747622
                  srli         a5, t6, 28
                  bltu         a1, tp, 810f
                  ori          t2, t6, 313
                  addi         t0, t5, -296
                  sub          s9, s4, s5
                  blt          t3, a5, 813f
809:              sub          s2, s11, a1
810:              sltiu        s2, s6, -376
                  lui          zero, 897082
812:              sub          a5, s2, s6
813:              beq          a1, t6, 826f
                  slt          a3, s6, a6
                  srl          a6, tp, s3
                  addi         a2, s5, 200
                  slti         a3, s5, -984
                  or           ra, s9, s2
                  slli         s4, a1, 12
                  srai         s7, a4, 3
                  bgeu         t5, zero, 841f
                  bgeu         tp, sp, 828f
                  or           t6, s6, a3
                  ori          a7, t0, -110
                  xori         zero, t4, 1858
826:              srai         gp, s5, 27
                  srli         a4, t5, 31
828:              sll          a6, tp, t4
                  bge          a2, t0, 839f
                  xori         a2, sp, 1625
                  and          s9, s3, a2
                  srl          zero, a7, t2
                  auipc        s0, 106178
                  xor          a5, s3, a3
                  bltu         a2, t2, 854f
                  bne          s0, s4, 847f
                  slli         s4, s3, 22
                  xori         s6, a7, -2017
839:              slt          t1, t6, a5
                  xor          a5, s4, s4
841:              slli         s4, s6, 18
                  bltu         s4, a1, 851f
                  bltu         a2, t5, 859f
                  add          a7, gp, t0
                  sra          s2, s0, a0
                  or           s9, t0, ra
847:              srl          a3, zero, a3
                  and          tp, s11, s4
                  srli         s9, s3, 3
                  srai         tp, gp, 18
851:              add          s3, t5, a1
                  blt          ra, zero, 864f
                  andi         t2, a7, 1795
854:              auipc        zero, 175178
                  and          a6, s11, s4
                  sltiu        a0, tp, -2045
                  sra          s6, ra, gp
                  bge          s11, t4, 877f
859:              add          ra, s6, t5
                  add          s5, a4, s1
                  sra          a2, t3, s11
                  bgeu         s6, s4, 869f
                  bge          tp, s0, 870f
864:              bge          s5, a0, 868f
                  nop
                  sub          s9, a4, s10
                  slti         a4, s9, 1692
868:              beq          s6, a0, 887f
869:              slti         s2, s0, -8
870:              sra          a6, tp, t0
                  srai         a2, s11, 6
                  ori          t2, ra, 252
                  auipc        s0, 483220
                  sra          t3, s10, s2
                  slti         sp, s2, 4
                  nop
877:              slti         s11, s2, -583
                  slt          a0, s7, gp
                  slti         s10, t5, 1089
                  srl          s6, s3, t0
                  add          a4, a3, a4
                  slli         a1, s7, 29
                  beq          s0, s8, 890f
                  sra          s4, ra, t6
                  slt          zero, t3, s1
                  auipc        s7, 511653
887:              blt          t2, s3, 890f
                  slti         t0, s1, 1530
                  bgeu         s4, t2, 908f
890:              xor          a5, s4, sp
                  auipc        ra, 477940
                  or           a5, s7, s7
                  addi         s9, t1, -571
                  srl          a6, a4, s1
                  slli         s10, s1, 15
                  sra          ra, a4, a3
                  auipc        a2, 789144
                  addi         zero, a2, -1141
                  sra          a6, s7, t3
                  andi         a4, a4, 822
                  sltu         t6, zero, s8
                  slli         sp, s7, 24
                  bltu         s4, t1, 912f
                  srl          a4, a5, t0
                  add          t1, ra, s9
                  sra          ra, t2, zero
                  xor          s10, s6, t2
908:              bne          a0, s7, 920f
                  beq          t6, ra, 922f
                  slt          a4, t6, t2
                  bgeu         a4, s1, 923f
912:              srl          s7, s2, s6
                  srl          sp, a6, gp
                  auipc        a6, 122352
                  sltiu        t3, s4, 944
                  bgeu         s7, a6, 935f
                  sltiu        t0, a3, 1170
                  slli         a6, t2, 18
                  ori          a0, s4, -292
920:              and          a7, s10, zero
                  andi         a2, a5, 1823
922:              sltu         a7, s3, s9
923:              or           t0, s9, s8
                  bne          a4, a4, 931f
                  auipc        gp, 774134
                  sub          s10, s2, s6
                  andi         t0, s3, -859
                  beq          a2, t6, 932f
                  srl          sp, t3, s11
                  slt          a4, t5, a3
931:              blt          t2, a4, 933f
932:              bgeu         a5, s10, 933f
933:              sltu         a6, t4, t3
                  slt          a3, s7, s4
935:              add          t1, zero, s1
                  add          s1, t1, t0
                  xor          s5, a6, s2
                  sltu         a6, sp, s4
                  ori          s4, s4, 923
                  and          s4, gp, t5
                  beq          a7, s10, 945f
                  addi         ra, t3, -740
                  ori          a2, s11, -1251
                  sll          s0, s3, t2
945:              andi         a2, sp, 575
                  addi         t2, tp, -690
                  and          s1, s4, s3
                  sll          t0, zero, s8
                  bltu         a2, t5, 956f
                  addi         s6, zero, -1541
                  or           a4, a0, s5
                  srl          s3, a0, a7
                  blt          t4, s11, 965f
                  blt          ra, s8, 965f
                  slti         ra, s6, -251
956:              andi         a1, a7, 1567
                  srai         s3, t5, 29
                  beq          t1, sp, 965f
                  blt          a1, t2, 972f
                  addi         tp, zero, -8 #init loop 0 counter
                  nop
                  sra          s9, a7, s3
                  sltu         ra, a2, t4
                  auipc        s0, 501095
                  or           sp, a3, t2
                  ori          s1, a7, 1573
                  sltu         s10, t6, a5
                  or           s4, s4, t6
                  sltiu        s1, gp, -856
                  andi         t6, t1, -231
                  addi         t1, zero, 15 #init loop 0 limit
                  and          s3, s9, a4
                  add          a6, s1, s2
                  or           a5, t2, s4
                  nop
sub_1_4_0_t:      sltu         t3, t5, t4
                  addi         tp, tp, 6 #update loop 0 counter
                  lui          t3, 52148
                  slti         t6, s0, 1036
                  slt          s9, a7, t4
                  slli         a2, gp, 15
                  auipc        a3, 505439
                  sltu         s9, a4, a2
                  bltu         tp, t1, sub_1_4_0_t #branch for loop 0
                  sll          a1, s9, a7
                  lui          t6, 865095
                  sltiu        a1, s11, 1255
                  ori          s7, a4, -1803
                  andi         a7, ra, 1960
                  srli         sp, s11, 4
965:              and          s9, t6, t5
                  bgeu         t3, sp, 978f
                  sub          s2, s10, s8
                  sltu         t2, a5, a4
                  sltiu        sp, t0, -482
                  slli         s3, s4, 4
                  bge          a7, tp, 990f
972:              srli         a5, t2, 14
                  sll          s4, tp, a3
                  ori          a1, t4, 1286
                  sltu         a1, a0, t1
                  xori         sp, t3, -418
                  blt          a4, zero, 978f
978:              xori         s4, a4, -1820
                  bltu         s2, a1, 989f
                  ori          a4, a0, 1547
                  sltu         zero, s4, s3
                  ori          t1, a3, 1036
                  srl          s10, t1, ra
                  xor          a7, s4, t4
                  sll          a4, t2, gp
                  srai         s0, t1, 16
                  srai         s1, s8, 7
                  slti         s9, t1, -1790
989:              and          s0, t4, t3
990:              slli         a7, a2, 20
                  sra          a5, a4, t4
                  auipc        t6, 90085
                  or           ra, t4, s9
                  or           a5, s8, t5
                  sltiu        a3, a0, -1463
                  xori         s5, s4, 1685
                  srai         sp, zero, 6
                  srai         a5, a4, 11
                  nop
                  andi         s3, s10, 459
                  slt          s7, s6, a5
                  sra          s10, s11, s11
                  blt          s10, t3, 1010f
                  beq          s2, sp, 1011f
                  bne          s7, s1, 1011f
                  lui          t6, 56211
                  xori         a0, t3, -1293
                  lui          s11, 21316
                  auipc        s3, 230314
1010:             sltiu        s4, s5, 1690
1011:             bne          s6, s10, 1023f
                  bne          zero, zero, 1031f
                  add          t3, s7, t1
                  andi         s6, s7, 1054
                  slti         tp, t5, 1013
                  bne          s0, a6, 1036f
                  bgeu         s7, sp, 1019f
                  and          a7, s7, zero
1019:             ori          zero, a1, -1362
                  blt          t4, a4, 1039f
                  lui          a7, 969247
                  bltu         t6, s4, 1031f
1023:             and          gp, a1, s3
                  andi         a4, a0, -1074
                  auipc        a3, 138851
                  and          a7, a7, t3
                  andi         a5, a6, 38
                  xori         s2, s11, -1001
                  blt          sp, ra, 1032f
                  bltu         s8, s6, 1042f
1031:             blt          s0, zero, 1050f
1032:             andi         s11, t4, -1031
                  ori          s2, s4, 722
                  or           s5, gp, gp
                  add          s11, ra, s5
1036:             xori         t3, a1, 1155
                  and          s2, s2, gp
                  nop
1039:             bgeu         t6, s6, 1055f
                  sll          t3, t0, t0
                  sll          s3, a5, a1
1042:             andi         s9, s0, 1697
                  ori          a7, s4, 1688
                  bge          s4, s0, 1050f
                  sub          a3, s6, sp
                  and          s10, t0, t0
                  bgeu         s6, a4, 1063f
                  sub          t1, a6, a0
                  srl          s9, s11, t2
1050:             slli         s6, s3, 31
                  srl          a5, sp, ra
                  srl          s3, a2, s7
                  slli         a0, s9, 22
                  bge          zero, ra, 1058f
1055:             srl          s5, t3, sp
                  sll          s10, zero, s8
                  bne          s8, t6, 1070f
1058:             beq          gp, s4, 1077f
                  bgeu         t3, t1, 1064f
                  srli         s7, s3, 9
                  lui          t6, 24624
                  xori         t3, tp, -984
1063:             addi         a1, a2, 787
1064:             lui          s1, 813745
                  bge          t3, a2, 1074f
                  sll          s4, s0, a5
                  or           s10, s9, s7
                  xor          s11, a7, t6
                  lui          s11, 197052
1070:             lui          s11, 237617
                  or           s0, tp, t2
                  sltiu        a4, zero, 1661
                  or           a3, s0, a7
1074:             bgeu         ra, s8, 1081f
                  sltu         t2, s0, t6
                  andi         a7, sp, 900
1077:             add          t0, s11, s2
                  blt          a6, zero, 1091f
                  srli         a0, t4, 5
                  bne          s1, t4, 1092f
1081:             blt          s1, s7, 1087f
                  ori          s5, a3, -654
                  slli         a2, zero, 25
                  beq          s5, tp, 1091f
                  xori         t1, s8, 188
                  slti         s5, s1, 247
1087:             srli         s4, s11, 14
                  srl          a1, sp, s7
                  sub          s7, a0, t3
                  sra          s7, t0, a6
1091:             slli         s4, a5, 25
1092:             xor          t0, t4, s9
                  nop
                  sub          sp, t4, t3
                  lui          a2, 269690
                  xori         a5, gp, 634
                  lui          s5, 419694
                  beq          s7, s6, 1109f
                  bltu         s5, a7, 1104f
                  slt          s5, s10, s3
                  slli         tp, a7, 1
                  or           s4, tp, s2
                  sra          s3, a4, ra
1104:             beq          a0, s5, 1108f
                  add          s4, s4, s10
                  lui          a5, 801757
                  andi         t6, a5, 1965
1108:             add          s7, t5, gp
1109:             add          a7, a4, a7
                  bne          t6, s7, 1119f
                  addi         s3, gp, -1024
                  srl          s10, s6, s6
                  bge          s5, s7, 1129f
                  or           s3, a2, sp
                  xor          s1, s9, s1
                  andi         s10, gp, 17
                  slli         s2, tp, 16
                  andi         gp, s1, 1386
1119:             slli         s10, t2, 7
                  ori          sp, t5, 529
                  nop
                  slti         a2, s3, 1927
                  bgeu         t5, s6, 1127f
                  and          s6, ra, a0
                  sub          a0, s3, ra
                  xor          s1, s11, a0
1127:             sra          t1, t5, s8
                  bge          a5, gp, 1137f
1129:             and          s5, s6, t1
                  lui          s1, 732798
                  slli         a0, gp, 7
                  add          tp, t5, s0
                  beq          a7, s2, 1137f
                  xori         s7, a2, -578
                  slt          s1, s4, t1
                  sll          sp, tp, s11
1137:             add          s11, s5, sp
                  sra          a3, t4, a7
                  srai         a6, tp, 4
                  sltiu        s9, s1, 502
                  lw           ra, 4(t4)
                  sltiu        tp, t1, -855
                  andi         s3, t6, -1356
                  sll          a5, a0, ra
                  addi         t4, t4, 36
                  slt          s1, s8, zero
1621:             addi x31, x1, 0
1621:             jalr x31, x31, 0
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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x24, x29, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x15, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x15, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x15, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x15, x7, ecall_handler
                  li x7, 0x1
                  beq x15, x7, instr_fault_handler
                  li x7, 0x5
                  beq x15, x7, load_fault_handler
                  li x7, 0x7
                  beq x15, x7, store_fault_handler
                  li x7, 0xc
                  beq x15, x7, pt_fault_handler
                  li x7, 0xd
                  beq x15, x7, pt_fault_handler
                  li x7, 0xf
                  beq x15, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x29, x24, zero
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
                  add x29, x24, zero
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
                  add x29, x24, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x29, x24, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x29, x24, zero
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
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x29, x24, zero
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
