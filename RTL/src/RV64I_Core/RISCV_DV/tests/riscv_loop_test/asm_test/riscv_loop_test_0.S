.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 1
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0xae08ee70
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x10feefda
                  li x5, 0xfaebc9bf
                  li x6, 0xcdd1b3ae
                  li x7, 0xb071b79c
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x8f63797
                  li x12, 0x5
                  li x13, 0xfe33d03c
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0x3a813631
                  li x18, 0xde3ef842
                  li x19, 0xf85b9dc3
                  li x20, 0xfbaf054e
                  li x21, 0xf1336daf
                  li x22, 0x80000000
                  li x23, 0x91a6216c
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0xf41ffa5b
                  li x27, 0x0
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x28, user_stack_end
main:             sll          ra, a0, s7
                  la           a3, sub_2
                  addi         a3, a3, 635
                  auipc        s10, 924603
                  sltiu        t0, sp, -1991
                  srli         t0, s0, 25
                  lui          s9, 601312
                  bge          s2, s1, main_j2 #branch to jump instr
                  slt          sp, a5, t2
main_j2:          jalr         ra, a3, -634 #jump main -> sub_2
                  addi         a4, zero, 4 #init loop 1 counter
                  sltiu        sp, tp, 515
                  addi         t2, zero, 4 #init loop 1 limit
main_1_1_t:       sub          s0, t5, s7
                  xor          gp, tp, s4
                  addi         a4, a4, -2 #update loop 1 counter
                  addi         a1, zero, 4 #init loop 0 counter
                  srli         t5, a0, 16
                  sltu         tp, a0, ra
                  srli         s1, a4, 2
                  addi         s8, zero, 14 #init loop 0 limit
                  lui          a2, 274164
                  sra          a6, t6, s4
                  slt          t1, t3, s8
main_1_0_t:       add          sp, s6, tp
                  lui          s3, 357592
                  addi         a1, a1, 2 #update loop 0 counter
                  ori          ra, t3, 1999
                  auipc        s9, 332263
                  bltu         a1, s8, main_1_0_t #branch for loop 0
                  andi         s0, a1, -1432
                  addi         a5, a1, 1784
                  slli         a3, gp, 8
                  auipc        a3, 1012228
                  auipc        t0, 142752
                  slti         a6, t6, -1434
                  bgeu         a4, t2, main_1_1_t #branch for loop 1
                  or           gp, t6, tp
                  addi         t5, zero, -3 #init loop 1 counter
                  addi         a5, zero, 5 #init loop 1 limit
                  ori          s7, s8, 463
                  and          s0, s2, a6
main_2_1_t:       ori          t0, s5, 1358
                  sra          a6, a6, a4
                  addi         t5, t5, 8 #update loop 1 counter
                  addi         t2, zero, -9 #init loop 0 counter
                  addi         ra, zero, -13 #init loop 0 limit
main_2_0_t:       sltiu        s5, s9, 385
                  or           s1, t5, s1
                  addi         t2, t2, -7 #update loop 0 counter
                  bge          t2, ra, main_2_0_t #branch for loop 0
                  blt          t5, a5, main_2_1_t #branch for loop 1
                  ori          s8, t6, -1096
                  addi         t1, zero, 2 #init loop 1 counter
                  sltiu        s1, t0, 192
                  srai         ra, s2, 0
                  andi         s7, s0, 118
                  srai         gp, a5, 17
                  sub          a1, s4, ra
                  slt          a3, t6, ra
                  addi         s8, zero, 7 #init loop 1 limit
                  and          s5, s11, s10
main_0_1_t:       or           s7, sp, t2
                  srai         s2, s3, 27
                  addi         t1, t1, 7 #update loop 1 counter
                  srli         s2, a5, 30
                  addi         t2, zero, -7 #init loop 0 counter
                  and          t0, a0, s7
                  addi         s5, a0, 785
                  addi         a5, zero, -10 #init loop 0 limit
main_0_0_t:       xori         a7, a3, -1703
                  addi         t2, t2, -3 #update loop 0 counter
                  xor          s11, gp, gp
                  andi         s10, a4, -2008
                  bge          t2, a5, main_0_0_t #branch for loop 0
                  ori          a6, a1, -38
                  slli         tp, a6, 1
                  bltu         t1, s8, main_0_1_t #branch for loop 1
                  sltiu        a1, gp, 2027
                  addi         s2, s0, -184
                  bltu         t4, a3, 8f
                  xori         gp, s3, -363
                  addi         t6, t5, -589
                  slti         a3, a1, 633
                  slt          a5, s0, a1
                  nop
                  srai         s5, t6, 9
8:                sll          gp, a0, a4
                  bne          s6, s2, 21f
                  and          s8, zero, t3
                  beq          a6, s3, 21f
                  add          t5, ra, s4
                  nop
                  auipc        a1, 755494
                  blt          a6, gp, 16f
16:               bgeu         a2, s5, 27f
                  ori          tp, s8, 387
                  nop
                  ori          a7, s1, 108
                  ori          a5, t5, -253
21:               bge          ra, s6, 39f
                  sltiu        s3, s3, 981
                  sltu         s8, t5, ra
                  andi         a5, a3, -1938
                  sub          tp, zero, t5
                  ori          s11, ra, 1516
27:               ori          s10, a2, 1881
                  xori         s7, a5, -38
                  bltu         s5, a3, 39f
                  sub          a7, t6, s1
                  xori         a7, t5, 1149
                  blt          a6, a7, 48f
                  bgeu         t0, s2, 42f
                  bltu         a0, s7, 54f
                  beq          a5, sp, 44f
                  lui          a7, 456715
                  lui          a1, 662232
                  auipc        a2, 970061
39:               slti         a0, t6, 1313
                  auipc        a3, 887468
                  srl          a4, s6, a0
42:               addi         a7, s10, 259
                  bne          a4, t2, 55f
44:               ori          t2, s11, -1174
                  slt          s4, a0, t1
                  nop
                  nop
48:               bltu         s9, s8, 52f
                  bge          t2, s0, 50f
50:               srli         a7, zero, 0
                  sll          t5, s10, a3
52:               xor          a6, a4, tp
                  sll          s11, a7, s5
54:               and          a6, gp, a5
55:               sub          zero, a1, s10
                  beq          a2, t5, 63f
                  nop
                  bltu         s5, s11, 78f
                  xori         t5, tp, -1021
                  sltiu        a0, s9, 1372
                  srli         s4, s6, 29
                  slti         s0, gp, -2042
63:               srai         t1, s3, 24
                  bltu         s11, a6, 77f
                  bge          a5, t1, 84f
                  slt          s4, tp, t1
                  auipc        ra, 395641
                  lui          s5, 1033823
                  andi         a4, zero, 963
                  xori         t0, s8, -1216
                  bgeu         s3, s0, 88f
                  slli         a3, s2, 0
                  beq          a3, a3, 79f
                  add          s9, t5, ra
                  andi         sp, a4, -1278
                  auipc        s7, 782693
                  la           t2, sub_2
                  xori         zero, sp, -1662
                  ori          s0, t3, 1480
                  addi         t2, t2, 955
                  xor          a6, t4, a6
                  ori          a3, s4, -515
                  srai         s10, s7, 31
                  sll          s3, s3, s7
                  andi         t5, t3, 2021
main_j4:          jalr         ra, t2, -954 #jump main -> sub_2
                  sll          a5, t0, s2
                  srl          a1, s6, tp
77:               nop
78:               bltu         t2, t3, 96f
79:               and          t1, s1, s0
                  slt          s2, zero, a2
                  sll          a6, a0, s5
                  xor          a5, a2, t0
                  lui          s8, 469810
84:               sltiu        a4, s5, -1662
                  auipc        gp, 913789
                  xor          a4, s3, s0
                  andi         s1, s6, 702
88:               and          s4, zero, gp
                  lui          s0, 281301
                  sll          t6, s5, a1
                  addi         s5, gp, 1722
                  la           a7, sub_3
                  sll          gp, ra, a6
                  xori         s9, t1, 1815
                  andi         s1, a2, -1959
                  auipc        a4, 769115
                  auipc        zero, 561631
                  slli         gp, s5, 11
                  andi         a3, t2, -1082
                  addi         a7, a7, 806
                  blt          s0, s8, main_j3 #branch to jump instr
                  or           s10, t3, s7
main_j3:          jalr         ra, a7, -805 #jump main -> sub_3
                  andi         tp, t2, 2024
                  srli         sp, s11, 19
                  auipc        a6, 590529
                  srl          s4, a2, t0
                  srl          zero, s5, t1
                  or           s2, t4, t2
96:               auipc        a7, 466569
                  sltiu        s8, t1, -1961
                  andi         s11, s8, -5
                  slti         ra, a1, 1283
                  xori         t2, t3, 669
                  lui          s2, 166407
                  bltu         zero, sp, 112f
                  auipc        zero, 754981
                  auipc        a1, 830458
                  xori         a7, a2, -1131
                  sub          sp, t2, s6
                  add          t6, tp, gp
                  sll          t1, a2, t0
                  beq          a0, t3, 119f
                  srl          a4, t4, t1
                  slt          s9, ra, gp
112:              and          a7, sp, t1
                  srl          a1, t4, a2
                  lui          s4, 540693
                  addi         a6, s3, 1200
                  bge          s8, t0, 119f
                  sll          s10, s5, s4
                  addi         t2, s2, 37
                  xor          a1, s6, tp
                  sra          tp, s1, sp
                  la           s4, sub_1
                  and          a4, s1, s6
                  addi         s4, s4, 49
                  addi         a4, t3, 1972
main_j1:          jalr         ra, s4, -49 #jump main -> sub_1
                  bge          a4, s2, 127f
119:              xor          s5, s8, a0
                  beq          a3, a0, 131f
                  xori         sp, s9, -1925
                  lui          zero, 848826
                  lui          a1, 1043207
                  add          s9, a3, s1
                  srai         s8, t1, 6
                  add          a4, a7, s2
127:              nop
                  andi         s3, s11, -1828
                  ori          s11, a0, 1367
                  beq          s6, s8, 132f
131:              nop
132:              slli         a5, zero, 31
                  slt          s5, s9, s10
                  slt          s7, s0, s7
                  auipc        a3, 755755
                  srli         s1, s4, 30
                  sll          tp, s3, ra
                  sltu         zero, t1, s8
                  xor          a1, zero, t1
                  sub          s2, a2, a6
                  lui          s1, 4058
                  or           t5, t6, t1
                  addi         s10, a3, 67
                  sub          a5, a1, s8
                  xor          zero, t0, a4
                  slli         s0, tp, 30
                  sll          t2, a0, t3
                  slti         s5, t2, 1293
                  and          s9, a6, t5
                  and          a2, a6, s8
                  beq          a0, gp, 160f
                  auipc        zero, 217320
                  andi         t6, s9, -1725
                  sll          tp, sp, a2
                  blt          a4, s7, 157f
                  srli         s1, t5, 11
157:              slti         a7, a2, -1139
                  ori          a3, a4, 2012
                  add          a3, sp, a7
160:              srl          a2, s11, tp
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            nop
                  addi         t3, t3, -12
                  sltu         a4, ra, s9
                  addi         s3, a7, 728
                  sw           ra, 4(t3)
                  nop
                  xori         a2, ra, 1357
                  sltiu        s5, a2, 1767
                  srli         s8, s3, 6
                  beq          s8, t3, sub_3_j6 #branch to jump instr
                  ori          a0, sp, -1542
                  sll          s0, s1, s10
                  ori          s1, a0, 1358
                  slli         ra, gp, 18
                  lui          s4, 1043973
                  ori          a2, s0, 1672
                  or           a6, t1, a1
                  sub          s8, t3, s1
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  sra          a1, a0, t1
                  slli         t1, a4, 19
                  andi         a1, a7, -1802
                  xori         t2, t5, 575
                  sra          t1, s2, a4
                  sra          s0, s4, t5
                  sltu         s10, a4, s11
                  sra          zero, a5, t0
                  sub          s9, zero, s3
sub_3_j7:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  addi         s1, zero, 9 #init loop 1 counter
                  or           a3, a4, s6
                  or           a7, s9, s3
                  srai         ra, s6, 14
                  sll          s0, s7, s10
                  addi         gp, zero, -2 #init loop 1 limit
sub_3_0_1_t:      sltu         s8, a3, s6
                  addi         s1, s1, -9 #update loop 1 counter
                  slt          a0, tp, a3
                  slti         a1, a7, 1078
                  addi         s4, zero, -10 #init loop 0 counter
                  xori         a1, s11, 777
                  sra          s8, t2, s9
                  addi         s3, zero, -13 #init loop 0 limit
sub_3_0_0_t:      auipc        s10, 830008
                  addi         s4, s4, -1 #update loop 0 counter
                  sltu         t2, s5, s6
                  bge          s4, s3, sub_3_0_0_t #branch for loop 0
                  add          t6, t5, s10
                  sltiu        s7, t4, 164
                  and          zero, a2, s8
                  bge          s1, gp, sub_3_0_1_t #branch for loop 1
                  sra          a0, a2, s4
                  nop
                  xori         a2, a0, -1339
                  sll          t2, s7, s3
                  slt          sp, s4, a5
                  sll          gp, t0, a0
                  nop
                  xori         s7, t5, 520
                  blt          t3, a3, 21f
                  nop
                  bge          a3, s9, 14f
                  bge          s9, gp, 16f
                  beq          s6, tp, 24f
                  andi         t5, s10, -996
                  xori         t6, t6, 13
14:               srli         t6, t2, 7
                  addi         sp, s6, -1783
16:               bne          s5, s2, 24f
                  blt          ra, tp, 34f
                  beq          t1, s9, 38f
                  bgeu         a5, s1, 31f
                  sra          t5, s4, s11
21:               andi         s8, a2, 379
                  andi         s0, t3, -1689
                  slt          a5, sp, a4
24:               srai         s10, s6, 19
                  blt          s11, s9, 38f
                  and          a0, a0, s1
                  auipc        t1, 588636
                  sltu         s4, sp, t0
                  slti         a3, s5, 382
                  add          a1, s9, a4
31:               ori          zero, a1, 721
                  auipc        sp, 134391
                  auipc        a3, 962178
34:               sll          t5, t2, t4
                  slti         ra, sp, 611
                  bne          a6, tp, 46f
                  and          a7, s8, t6
38:               srl          s10, s1, s1
                  blt          a6, t6, 55f
                  or           a1, s7, s4
                  sra          s5, t4, s11
                  bgeu         t2, a6, 51f
                  bge          s2, t1, 46f
                  srli         a7, t1, 26
                  andi         s7, gp, 388
46:               xori         a4, t5, -1638
                  bne          s1, t0, 59f
                  srai         sp, s9, 27
                  sltiu        t6, t6, 1135
                  ori          s0, t6, 23
51:               bge          s7, t6, 61f
                  xor          sp, t5, s2
                  or           a2, s4, ra
                  sra          s0, t2, s5
55:               auipc        t2, 693002
                  sltiu        tp, s11, -1552
                  srli         t2, t2, 17
                  bltu         zero, s1, 68f
59:               beq          a2, t3, 63f
                  sll          a4, tp, t3
61:               nop
                  addi         a7, s0, 1736
63:               sra          a0, s6, a5
                  add          ra, s8, a6
                  sll          a2, s11, s6
                  blt          t0, t3, 68f
                  add          s10, a3, s11
68:               sra          s1, a0, a4
                  auipc        s1, 656353
                  lw           ra, 4(t3)
                  add          s0, a6, sp
                  slt          s10, t1, a7
                  or           a1, t3, s4
                  slt          s8, s10, s2
                  or           s4, zero, a5
                  and          s4, t5, tp
                  or           s8, s9, ra
                  srl          a2, gp, s4
                  addi         t3, t3, 12
                  slt          s9, s9, gp
133:              addi x12, x1, 1
133:              jalr x12, x12, 0
sub_4:            addi         t3, t3, -24
                  srl          t2, s11, s5
                  and          s5, s11, s0
                  slli         s5, t0, 12
                  auipc        a2, 310440
                  sw           ra, 4(t3)
                  srli         a1, a1, 30
                  xor          a3, s6, t1
                  bge          s4, s5, 5f
                  bne          zero, s10, 12f
                  slt          a6, a1, a4
                  sltu         s10, s4, t2
5:                xor          s4, s9, a6
                  xori         t1, s10, -669
                  slli         a1, s11, 26
                  sltiu        t6, zero, -968
                  xor          sp, a3, sp
                  xori         tp, s6, -849
                  sub          a5, gp, s10
12:               bgeu         s3, s2, 14f
                  slti         zero, t0, 138
14:               ori          t0, a3, -287
                  lw           ra, 4(t3)
                  and          a5, t4, t1
                  addi         a3, s3, 467
                  and          s9, t3, s1
                  addi         t3, t3, 24
                  add          a4, s10, t5
                  andi         s10, a0, -246
                  sub          tp, a5, a3
                  sltiu        s10, a1, -388
31:               addi x15, x1, 1
31:               jalr x15, x15, 0
sub_2:            andi         s5, t4, 1632
                  slli         t0, a3, 4
                  addi         t3, t3, -28
                  srai         s5, s6, 3
                  slt          sp, s7, sp
                  sw           ra, 4(t3)
                  add          s5, a2, t1
                  sltiu        t0, s11, 1992
                  sub          t5, a0, s2
                  add          s0, s2, t1
                  andi         a2, s5, -1680
                  addi         t0, zero, 9 #init loop 1 counter
                  slti         s7, s10, 528
                  addi         s2, zero, 0 #init loop 1 limit
                  addi         ra, a4, 350
                  srli         s1, sp, 29
sub_2_9_1_t:      andi         s1, s7, -295
                  addi         t0, t0, -9 #update loop 1 counter
                  addi         a2, zero, 10 #init loop 0 counter
                  addi         s9, zero, 10 #init loop 0 limit
                  addi         gp, s4, -1958
                  addi         s4, a7, 1925
sub_2_9_0_t:      add          gp, a5, tp
                  addi         a2, a2, -9 #update loop 0 counter
                  bgeu         a2, s9, sub_2_9_0_t #branch for loop 0
                  auipc        a5, 276835
                  andi         a5, t5, -223
                  bne          t0, s2, sub_2_9_1_t #branch for loop 1
                  lui          s3, 556864
                  addi         a3, zero, 1 #init loop 0 counter
                  lui          t6, 130751
                  xori         a7, s8, 702
                  addi         t5, zero, -13 #init loop 0 limit
                  and          a6, a0, s8
                  andi         s0, s5, -2039
                  addi         a5, a4, 831
sub_2_7_0_t:      nop
                  sltiu        t6, t2, -161
                  xor          t0, s8, t4
                  xori         t6, s8, -1197
                  addi         a3, a3, -2 #update loop 0 counter
                  auipc        s10, 838301
                  andi         s4, s7, 483
                  ori          a0, t5, 1540
                  srai         a0, zero, 31
                  ori          t1, a0, 1241
                  ori          t2, s9, 1441
                  bge          a3, t5, sub_2_7_0_t #branch for loop 0
                  sra          gp, tp, t2
                  addi         s9, zero, -10 #init loop 0 counter
                  addi         s11, zero, -16 #init loop 0 limit
sub_2_0_0_t:      lui          a1, 640234
                  addi         t1, s9, -782
                  addi         s9, s9, -5 #update loop 0 counter
                  srl          s10, a5, s3
                  nop
                  bge          s9, s11, sub_2_0_0_t #branch for loop 0
                  srl          s7, a3, a5
                  addi         s8, zero, 8 #init loop 0 counter
                  srli         a7, t4, 19
                  addi         ra, zero, 13 #init loop 0 limit
                  sltu         a6, a3, gp
                  srai         t0, t5, 1
                  and          s4, s4, a4
                  nop
                  srli         s3, a6, 6
sub_2_8_0_t:      xor          t2, s4, s1
                  xori         s10, s5, -1001
                  nop
                  slti         a3, t0, 1004
                  srl          s7, t3, s5
                  srli         s1, t4, 5
                  auipc        s9, 670755
                  sll          s1, s10, ra
                  nop
                  andi         s11, sp, 1114
                  auipc        t6, 258398
                  ori          t1, s5, -264
                  addi         s8, s8, 8 #update loop 0 counter
                  lui          sp, 709449
                  bltu         s8, ra, sub_2_8_0_t #branch for loop 0
                  sll          a0, a3, t6
                  addi         ra, zero, 10 #init loop 1 counter
                  xor          a4, s11, a4
                  sub          a0, tp, s11
                  srai         gp, t5, 23
                  addi         a6, zero, -18 #init loop 1 limit
                  srl          a1, t5, a1
sub_2_2_1_t:      or           a5, t2, t1
                  addi         ra, ra, -7 #update loop 1 counter
                  slti         s1, zero, -459
                  addi         s3, a6, -888
                  sra          s3, sp, t0
                  sll          s0, zero, ra
                  addi         t2, zero, 9 #init loop 0 counter
                  srl          a4, a3, s1
                  addi         a4, t1, -1294
                  addi         s2, zero, 7 #init loop 0 limit
                  and          t0, s11, s4
sub_2_2_0_t:      or           s1, a3, zero
                  addi         t2, t2, -6 #update loop 0 counter
                  slt          a3, sp, s6
                  nop
                  bgeu         t2, s2, sub_2_2_0_t #branch for loop 0
                  srai         s1, s3, 5
                  sra          s10, sp, t6
                  srli         s3, s5, 29
                  or           a0, s7, s8
                  slli         s10, zero, 0
                  srl          t1, t1, s6
                  beq          ra, a6, sub_2_2_1_t #branch for loop 1
                  add          a3, s1, t4
                  addi         s5, zero, -5 #init loop 0 counter
                  add          a4, s1, sp
                  slt          t2, t4, gp
                  addi         a5, ra, 1392
                  xori         s3, s11, 1142
                  sra          a1, s5, s10
                  sll          t2, s5, a7
                  sra          sp, s10, sp
                  xori         s0, t2, 590
                  addi         s10, zero, -14 #init loop 0 limit
                  slti         ra, t0, 577
                  sll          t2, t0, s7
                  lui          a0, 338191
sub_2_4_0_t:      addi         t2, t0, -1466
                  sll          t6, s9, t6
                  addi         s5, s5, -9 #update loop 0 counter
                  sltu         a7, gp, s11
                  srli         s7, s11, 13
                  sltiu        a3, ra, -475
                  slt          s1, t4, s9
                  sra          a2, s11, s1
                  sltu         s3, a0, t4
                  and          a5, t2, t3
                  sra          t5, s11, a1
                  srli         a0, s6, 24
                  slli         a6, s4, 30
                  bne          s5, s10, sub_2_4_0_t #branch for loop 0
                  andi         tp, s7, 408
                  addi         s0, zero, 0 #init loop 0 counter
                  xor          t6, ra, t5
                  srli         s11, t5, 4
                  srli         a2, a5, 10
                  addi         t6, tp, 524
                  and          zero, t5, s4
                  addi         a3, zero, -9 #init loop 0 limit
                  xor          t2, t6, a2
                  srli         t0, t5, 31
                  xor          a0, s0, t4
                  xori         a4, t3, 1554
sub_2_1_0_t:      add          a5, s2, t0
                  and          s8, a7, a0
                  slti         s8, s5, -951
                  srai         a2, s10, 6
                  lui          t6, 1008342
                  addi         s0, s0, -9 #update loop 0 counter
                  slli         a0, a1, 19
                  nop
                  slt          s3, s0, s9
                  srli         a4, a3, 24
                  slti         gp, s0, -482
                  xor          tp, s0, s7
                  nop
                  beq          s0, a3, sub_2_1_0_t #branch for loop 0
                  nop
                  addi         s4, zero, 9 #init loop 0 counter
                  lui          s10, 88722
                  addi         t6, zero, 9 #init loop 0 limit
sub_2_6_0_t:      xori         t5, a4, 949
                  sub          a5, t0, a3
                  sra          zero, t0, s11
                  addi         s4, s4, -7 #update loop 0 counter
                  andi         s9, gp, -1255
                  and          s8, s4, s1
                  and          s11, gp, s7
                  bgeu         s4, t6, sub_2_6_0_t #branch for loop 0
                  sltiu        gp, t5, -1058
                  srl          gp, s3, a2
                  beq          a3, t5, 11f
                  or           a7, a0, s1
                  sltiu        s8, a3, -477
                  slti         a1, s0, -1576
                  bgeu         s10, s2, 8f
                  blt          a5, tp, 26f
                  blt          t5, s11, 19f
8:                xori         tp, a5, -670
                  xor          t6, t3, a0
                  bne          s8, t0, 21f
11:               addi         s11, t1, 1473
                  auipc        a6, 568297
                  srl          t6, s4, t4
                  andi         ra, t0, -654
                  slli         a4, s0, 19
                  slti         tp, a0, 1734
                  sltu         t1, s8, t1
                  slli         s10, s6, 16
19:               sra          s1, t5, s3
                  srli         s7, zero, 28
21:               srai         zero, s2, 1
                  sub          tp, s6, s11
                  andi         t1, s1, 323
                  xor          t2, s10, s8
                  lui          t2, 73783
26:               xor          a4, a6, s1
                  andi         zero, a7, -1833
                  slti         a4, a3, 1371
                  blt          sp, s6, 38f
                  or           gp, a1, s2
                  xor          a5, s4, s2
                  bgeu         t5, s10, 51f
                  xori         gp, sp, 829
                  ori          t2, a6, -1687
                  xor          s0, a5, s10
                  and          s2, t2, tp
                  sltu         s0, tp, gp
38:               bne          s5, s0, 45f
                  add          t1, tp, ra
                  bne          a5, s9, 49f
                  or           s8, s1, t0
                  beq          t5, s10, 54f
                  sub          s5, s4, gp
                  addi         t6, zero, 7 #init loop 1 counter
                  addi         a3, zero, 4 #init loop 1 limit
sub_2_5_1_t:      andi         s2, ra, 1709
                  addi         a1, a3, -574
                  addi         t6, t6, -1 #update loop 1 counter
                  add          a5, a1, s1
                  addi         s8, zero, -4 #init loop 0 counter
                  add          a0, s8, a3
                  addi         sp, zero, 10 #init loop 0 limit
                  add          zero, a0, a0
sub_2_5_0_t:      slti         t1, a6, -1510
                  addi         s8, s8, 1 #update loop 0 counter
                  beq          s8, sp, sub_2_5_0_t #branch for loop 0
                  sra          tp, s3, zero
                  bgeu         t6, a3, sub_2_5_1_t #branch for loop 1
                  auipc        a6, 596271
                  sltiu        s2, a3, -839
45:               slti         s10, s10, 15
                  slti         a0, s8, -1514
                  or           s7, s7, gp
                  slti         s1, zero, 1621
49:               bge          s10, a3, 58f
                  srai         s8, s0, 25
51:               sll          s0, tp, s0
                  srli         a5, gp, 11
                  xori         s5, ra, -911
54:               or           s2, t1, sp
                  blt          t5, s11, 74f
                  sltiu        t2, a1, 687
                  srli         s10, s2, 18
58:               slt          s10, s8, s8
                  srl          a4, gp, a0
                  xori         s9, s6, 1751
                  bne          ra, tp, 70f
                  xori         t5, tp, -696
                  ori          a5, t1, 1700
                  auipc        s4, 838310
                  sltiu        a4, ra, 275
                  slli         t2, a1, 15
                  auipc        zero, 42441
                  sra          t6, s0, t0
                  sltiu        s5, t6, -1419
70:               ori          s10, a3, 92
                  sra          a5, a3, s6
                  auipc        a6, 947351
                  srli         s7, s10, 14
74:               blt          a5, s7, 78f
                  srai         t1, a1, 13
                  blt          a4, s5, 89f
                  slli         s7, a3, 1
78:               xor          a5, t5, t3
                  beq          t3, s1, 83f
                  slt          sp, t0, ra
                  bne          s10, t6, 98f
                  bge          a4, t0, 85f
83:               ori          sp, a0, 1910
                  xor          s3, a7, s9
85:               sltu         s4, s9, s10
                  slli         t6, t2, 1
                  nop
                  and          tp, zero, sp
89:               srai         s10, s3, 3
                  addi         sp, gp, -1283
                  sltiu        t0, a4, 867
                  addi         zero, a0, 1158
                  srai         a7, s3, 20
                  slli         s11, s7, 11
                  slt          sp, sp, s1
                  beq          s5, s5, 99f
                  addi         a5, s1, -1424
98:               sltiu        s0, t4, 1253
99:               auipc        ra, 861844
                  add          zero, s5, a2
                  or           t5, s3, s10
                  add          a6, s9, tp
                  sltu         s8, a5, a7
                  sub          t1, t3, sp
                  slli         a0, a4, 18
                  sub          a3, t6, s1
                  ori          t0, s8, -1176
                  auipc        s3, 914342
                  lui          s7, 390651
                  andi         s10, a7, -1117
                  sltu         s0, s6, s1
                  xori         a4, a0, -1282
                  srai         s11, t3, 6
                  addi         t0, sp, -524
                  srai         s10, a2, 25
                  srli         s5, s3, 13
                  nop
                  slli         a0, ra, 6
                  and          s10, a0, s2
                  xori         s2, zero, -763
                  addi         sp, a0, 468
                  bltu         tp, a0, 135f
                  nop
                  xori         s2, a6, -1381
                  or           s4, s0, a2
                  auipc        a2, 793980
                  auipc        tp, 109072
                  beq          s7, s4, 139f
                  xor          s9, s3, s8
                  xori         s2, a1, 1256
                  ori          s1, s10, 1474
                  slt          t1, zero, t1
                  addi         s2, t0, -213
                  beq          s10, a7, 154f
135:              bge          sp, s6, 151f
                  sltu         a6, a4, s5
                  add          sp, a3, s11
                  addi         s5, t6, -1644
139:              ori          a0, tp, 671
                  xori         s4, t6, 1458
                  sra          s8, t3, a0
                  slti         a7, s2, 1391
                  bne          t0, a1, 147f
                  sll          gp, t4, zero
                  srl          a0, t5, s0
                  bltu         t1, s8, 155f
147:              slt          zero, t1, a4
                  sltu         t2, tp, tp
                  sub          zero, a0, s6
                  or           a1, sp, s3
151:              xori         a1, t6, -1496
                  blt          s4, s1, 160f
                  addi         a3, s9, -183
154:              slti         gp, a6, -795
155:              blt          a5, a7, 174f
                  and          a6, s2, t3
                  xor          s2, s10, s11
                  sub          a4, t4, t0
                  slli         a4, gp, 17
160:              beq          t2, t3, 178f
                  bltu         sp, a6, 181f
                  srai         s9, s4, 19
                  slt          a3, t0, t1
                  bne          a1, t1, 176f
                  sltiu        t0, s5, 283
                  slli         s4, gp, 17
                  sltu         a6, t5, a2
                  bge          a5, sp, 179f
                  sltu         ra, t2, s7
                  bne          t5, s7, 173f
                  bge          s6, s6, 191f
                  srai         t0, t1, 6
173:              xor          a3, ra, a7
174:              or           a3, a5, a6
                  bge          s10, t5, 187f
176:              blt          ra, s6, 192f
                  lui          gp, 61773
178:              bltu         s0, tp, 186f
179:              auipc        s1, 581455
                  beq          a0, ra, 197f
181:              bne          t3, a3, 188f
                  blt          s5, s9, 191f
                  sll          s0, a1, t3
                  sltu         a0, s2, s0
                  sll          s9, t2, a0
186:              and          gp, a6, a1
187:              srli         zero, t3, 12
188:              beq          t3, s10, 200f
                  andi         s4, gp, -1767
                  add          t0, a6, a6
191:              sltiu        s10, s0, 1746
192:              bltu         a1, s0, 211f
                  nop
                  sltu         t1, t3, t3
                  addi         ra, a6, 1715
                  sltiu        s10, s4, 1
197:              srl          a2, sp, a3
                  sra          s4, a5, t0
                  or           t0, t3, s0
200:              add          s1, gp, s10
                  sra          a3, t2, s9
                  sra          s5, ra, s8
                  bge          t1, t2, 212f
                  or           sp, t5, t2
                  srai         a3, s7, 5
                  srai         s10, a6, 18
                  sltiu        tp, s0, 1072
                  slt          s7, t0, gp
                  auipc        ra, 906728
                  lui          s1, 440240
211:              beq          t4, a1, 222f
212:              bge          s5, a3, 231f
                  slt          a3, s6, s1
                  srli         s1, t3, 3
                  nop
                  bgeu         s9, s7, 225f
                  beq          a0, a1, 237f
                  sltiu        a6, gp, 1165
                  bge          t0, s6, 239f
                  bne          t6, tp, 233f
                  bgeu         a2, t5, 225f
222:              blt          t5, a6, 225f
                  auipc        s10, 999097
                  slt          a5, s5, t3
225:              ori          gp, a1, -1742
                  sltu         a0, s5, a3
                  auipc        s7, 47110
                  xori         s1, tp, -538
                  bltu         s2, t4, 238f
                  xor          a1, t5, s11
231:              or           t0, s10, t0
                  blt          gp, t5, 244f
233:              sub          s1, s11, t3
                  or           s3, t3, s1
                  xori         s4, t5, -798
                  slli         s5, t0, 15
237:              srai         a3, a6, 6
238:              bltu         a1, s7, 257f
239:              bgeu         a5, a7, 243f
                  xori         s5, s7, -1691
                  srl          a2, a1, s4
                  sll          t0, a0, s8
243:              srai         s8, a4, 12
244:              addi         tp, s6, -1878
                  sltiu        s5, s6, 988
                  nop
                  lui          tp, 408349
                  add          s5, gp, s5
                  bgeu         s4, t6, 259f
                  beq          s6, s11, 259f
                  sub          zero, t5, s11
                  blt          sp, a7, 265f
                  blt          s4, sp, 271f
                  srli         t6, s10, 30
                  srl          tp, s2, s4
                  xor          s0, s3, zero
257:              andi         a3, t1, 1061
                  bltu         zero, s5, 261f
259:              lui          s8, 246929
                  sub          s11, ra, a4
261:              srli         s1, t3, 3
                  sltu         s8, sp, a7
                  auipc        s1, 631479
                  or           s9, s9, t6
265:              bge          s6, s11, 269f
                  sub          t5, s9, a7
                  bge          gp, zero, 284f
                  sltiu        s9, a7, -405
269:              xori         s0, t3, 1704
                  or           ra, s2, a6
271:              auipc        s2, 735352
                  srli         ra, s11, 10
                  andi         a3, tp, 558
                  bgeu         t1, s2, 287f
                  sll          a0, s1, t3
                  sra          s3, zero, a7
                  sra          s3, s5, s1
                  beq          a7, s8, 297f
                  sra          a2, a3, s11
                  blt          t2, t4, 291f
                  sub          s3, s6, s11
                  lui          a4, 722949
                  srl          t0, a1, s9
284:              beq          s5, a7, 303f
                  or           a5, s1, a4
                  sltiu        zero, s0, -1485
287:              srai         ra, t1, 13
                  beq          a0, tp, 292f
                  slt          s7, s0, s7
                  nop
291:              or           a3, a1, gp
292:              ori          tp, t5, -1754
                  auipc        a7, 299654
                  xor          a4, s4, a4
                  xori         a2, zero, 354
                  slti         a1, a4, -1442
297:              auipc        s7, 128842
                  xor          a5, a3, a7
                  xori         gp, a1, -381
                  slti         t1, t5, 2011
                  srl          s7, s2, a1
                  lui          s11, 554956
303:              bne          tp, tp, 312f
                  bgeu         s8, a4, 313f
                  sll          a7, t0, t4
                  srai         gp, t5, 11
                  and          a2, t2, t1
                  srai         s11, s2, 18
                  sra          s5, a5, t4
                  add          s9, a0, s1
                  bne          a0, tp, 324f
312:              bgeu         a7, a1, 321f
313:              lui          a4, 709058
                  srai         a1, s1, 4
                  bne          s6, s10, 318f
                  addi         s3, s7, -845
                  and          s3, gp, zero
318:              add          s10, a1, a6
                  blt          s8, t6, 326f
                  beq          s5, a7, 336f
321:              add          t6, zero, sp
                  nop
                  nop
324:              bgeu         s3, s8, 336f
                  nop
326:              ori          t6, t6, -882
                  bne          tp, s1, 335f
                  srli         t2, t2, 28
                  bltu         sp, s0, 341f
                  bne          s7, a3, 349f
                  xor          gp, s8, tp
                  or           a7, s11, a4
                  sra          s11, t0, a5
                  slli         s1, t3, 5
335:              sll          s8, s10, s6
336:              blt          s1, ra, 339f
                  sll          s10, s9, a6
                  sltu         s1, s3, a2
339:              slti         s8, sp, 774
                  beq          a2, a2, 349f
341:              slli         s10, a0, 17
                  srli         sp, a7, 16
                  slti         s10, t1, -1023
                  bne          s8, a4, 364f
                  slti         gp, a2, 1507
                  sltiu        t2, t1, -1564
                  sra          a5, s4, a2
                  addi         a4, sp, 1254
349:              nop
                  bge          t1, t3, 370f
                  blt          a1, a3, 360f
                  xori         s10, s3, -1724
                  and          gp, a7, s10
                  srl          s0, t0, ra
                  and          t0, s2, s2
                  beq          t1, s1, 360f
                  sll          s11, s7, a0
                  sub          t2, a3, s10
                  nop
360:              sra          s2, a7, s6
                  bge          a2, t2, 372f
                  srl          s8, t3, s6
                  xor          s9, s5, a2
364:              slti         a0, s6, -241
                  and          a6, t4, t0
                  xor          s3, t0, s8
                  blt          t2, s9, 371f
                  andi         a1, t1, 1340
                  ori          a1, zero, -314
370:              slt          zero, zero, s7
371:              bgeu         a3, s1, 389f
372:              bge          t2, t4, 392f
                  xori         gp, sp, 1909
                  srai         s9, s6, 7
                  srai         a2, t3, 10
                  sub          s4, a6, t0
                  srli         t1, t3, 30
                  slt          s7, s2, t5
                  srl          s10, s2, a3
                  andi         a1, tp, -939
                  sltiu        a1, a2, -309
                  bge          zero, gp, 385f
                  bgeu         zero, a4, 393f
                  blt          a3, s7, 396f
385:              beq          t5, t0, 395f
                  slli         a5, s0, 15
                  bgeu         a2, t5, 391f
                  sra          s5, s8, s4
389:              and          t2, s11, s9
                  add          t1, s9, a1
391:              sra          a0, ra, a7
392:              sra          s11, zero, a6
393:              andi         s4, t3, -298
                  sltiu        s4, t5, -808
395:              xori         s11, s9, -601
396:              sra          t2, tp, tp
                  beq          sp, a1, 406f
                  srai         s5, a6, 8
                  ori          gp, s8, -2022
                  bgeu         t0, sp, 404f
                  beq          sp, a3, 417f
                  srli         ra, a6, 18
                  andi         ra, a5, 1661
404:              xor          a5, t3, a1
                  add          t1, s7, t3
406:              ori          s10, a7, -1586
                  or           s4, s6, s10
                  or           s11, s2, s5
                  auipc        s2, 1014194
                  sub          s0, a2, t3
                  bne          sp, t0, 428f
                  or           t5, s8, s9
                  srai         t1, a0, 13
                  bne          a6, a1, 434f
                  auipc        s9, 914235
                  andi         t5, a4, 1928
417:              xor          s4, zero, a0
                  srl          s9, a3, s5
                  auipc        a2, 957618
                  addi         t5, zero, 10 #init loop 1 counter
                  addi         s7, zero, 10 #init loop 1 limit
sub_2_3_1_t:      addi         t2, s5, 1163
                  addi         t5, t5, -7 #update loop 1 counter
                  addi         a5, zero, -4 #init loop 0 counter
                  addi         a3, zero, -17 #init loop 0 limit
sub_2_3_0_t:      xori         a6, a0, -1624
                  addi         a5, a5, -1 #update loop 0 counter
                  bge          a5, a3, sub_2_3_0_t #branch for loop 0
                  bgeu         t5, s7, sub_2_3_1_t #branch for loop 1
                  lui          a0, 79922
                  and          s1, a2, zero
                  sltiu        gp, s5, -1139
                  auipc        s9, 548929
                  ori          a5, s7, 1306
                  xori         s4, s8, 711
                  sra          s10, t5, s7
                  sub          ra, t0, tp
                  sltiu        t5, a2, 198
428:              srai         t5, a6, 21
                  slt          ra, t2, s0
                  addi         a7, a3, -493
                  blt          a6, a4, 434f
                  blt          a6, zero, 451f
                  xor          a4, a7, a6
434:              ori          s8, t2, 319
                  auipc        tp, 169318
                  sub          s2, s2, t3
                  srl          s4, sp, t2
                  and          s10, s6, a0
                  bltu         s1, gp, 451f
                  bge          s11, s4, 459f
                  srl          s9, t3, t2
                  bgeu         s2, t5, 449f
                  slli         a7, s6, 4
                  slt          s10, t1, a4
                  bltu         sp, zero, 457f
                  slli         a7, s9, 15
                  bgeu         t1, a3, 451f
                  andi         gp, a0, 1875
449:              slt          a1, a0, t1
                  bgeu         t3, t2, 461f
451:              srli         s4, a3, 15
                  nop
                  xor          t0, tp, a4
                  sll          s8, gp, tp
                  sub          a3, t1, tp
                  lui          t6, 817324
457:              andi         tp, t3, 1198
                  and          s8, t2, a3
459:              nop
                  slti         s10, s5, 1253
461:              srl          a3, tp, t6
                  sltu         tp, t4, s8
                  beq          s6, a5, 472f
                  srli         a6, s6, 9
                  lui          t6, 192405
                  add          s9, zero, s11
                  slti         ra, a0, -699
                  auipc        t2, 767679
                  slt          t2, gp, t5
                  bltu         s1, a5, 483f
                  ori          s7, a5, 1223
472:              slli         a3, a2, 23
                  srli         s4, s8, 23
                  nop
                  lui          a4, 896808
                  add          s1, s2, t5
                  slti         a3, s1, -1069
                  xori         t0, s1, -327
                  ori          ra, s1, -323
                  bltu         s3, s2, 500f
                  bgeu         a0, a1, 484f
                  andi         t0, t6, -1407
483:              sltiu        s5, s0, -888
484:              or           s1, s11, ra
                  bltu         a5, t4, 498f
                  bgeu         a3, tp, 489f
                  bge          a4, s5, 498f
                  srli         s8, a2, 21
489:              sll          s10, t5, a4
                  andi         a1, sp, 265
                  xori         t6, t5, -2002
                  blt          s8, s4, 500f
                  bge          s0, ra, 505f
                  xori         gp, tp, -968
                  srli         sp, a5, 31
                  bne          t5, a4, 505f
                  blt          a5, s5, 506f
498:              srai         sp, a3, 20
                  bltu         a4, t5, 517f
500:              srl          gp, a7, t5
                  sub          gp, s10, s4
                  or           a0, s8, a3
                  bgeu         s9, a3, 512f
                  addi         a7, gp, 193
505:              bne          t2, a1, 524f
506:              addi         zero, s11, 1215
                  bge          a6, t0, 527f
                  sltu         s10, s2, a1
                  auipc        a0, 227044
                  nop
                  srai         t6, t4, 15
512:              auipc        s3, 417415
                  sll          a0, s1, t2
                  slti         a7, a6, 1424
                  xor          s8, a6, s11
                  slli         s1, ra, 31
517:              bltu         gp, s2, 528f
                  or           a2, s2, s7
                  xor          s1, s8, s11
                  slti         zero, a7, -566
                  or           a4, s6, a3
                  addi         s5, a1, -1997
                  ori          s7, s0, 1022
524:              bgeu         zero, s0, 533f
                  blt          a6, tp, 528f
                  srli         a5, s5, 10
527:              andi         t6, s5, 1105
528:              slti         s5, s1, 1802
                  slli         zero, ra, 19
                  bltu         s7, ra, 542f
                  beq          s7, t5, 540f
                  bltu         a3, t1, 542f
533:              nop
                  slti         gp, t4, 1970
                  or           t6, a1, s4
                  add          s1, t4, a4
                  add          a5, s3, t4
                  xori         s0, a6, 1609
                  bltu         s2, t4, 542f
540:              slti         a3, a0, -1569
                  srai         t1, t0, 23
542:              lui          a1, 726139
                  or           tp, s0, t3
                  srli         s7, a0, 24
                  lw           ra, 4(t3)
                  auipc        a3, 682030
                  addi         t3, t3, 28
                  srl          s0, t2, a6
                  srl          t6, s5, t2
                  ori          s0, s0, 17
756:              addi x19, x1, 0
756:              jalr x19, x19, 0
sub_1:            addi         t3, t3, -56
                  sll          sp, a7, a3
                  xori         a5, t6, 250
                  sw           ra, 4(t3)
                  lui          a2, 635799
                  srl          gp, s7, t2
                  nop
                  lui          s0, 349503
                  sub          s8, t0, tp
                  srl          s2, s9, s0
                  sltiu        a3, a3, -1870
                  or           s4, t2, t4
                  sub          a5, t2, t6
                  andi         s8, t5, -1414
                  blt          a4, t3, sub_1_j5 #branch to jump instr
                  sll          s11, s2, a0
                  ori          a7, t2, 1679
sub_1_j5:         jal          ra, sub_5 #jump sub_1 -> sub_5
                  addi         s7, zero, 8 #init loop 0 counter
                  sltu         gp, t1, t2
                  andi         a4, s9, -95
                  slt          a1, t2, s2
                  addi         s5, zero, 14 #init loop 0 limit
                  sltu         tp, s5, a0
                  xor          s9, s1, s0
                  addi         a1, t1, 839
sub_1_2_0_t:      and          t5, sp, a4
                  sltu         s1, a3, s6
                  add          a4, s8, t5
                  nop
                  addi         s7, s7, 3 #update loop 0 counter
                  lui          a2, 231783
                  bne          s7, s5, sub_1_2_0_t #branch for loop 0
                  sub          a5, s9, ra
                  addi         s7, zero, -10 #init loop 0 counter
                  sltu         t5, s2, t0
                  sltu         s3, s7, s6
                  lui          a6, 317944
                  sll          ra, t5, a2
                  sltu         s1, t6, a2
                  lui          s3, 161742
                  addi         a2, zero, 3 #init loop 0 limit
sub_1_1_0_t:      andi         a0, s5, 998
                  slt          s0, a7, a0
                  srli         s8, s8, 15
                  srli         a3, s8, 22
                  srl          gp, a6, a7
                  addi         s7, s7, 3 #update loop 0 counter
                  sll          t6, s3, s11
                  sltu         a4, t4, gp
                  srai         t1, s7, 0
                  blt          s7, a2, sub_1_1_0_t #branch for loop 0
                  sltiu        zero, s2, 1574
                  addi         s5, zero, 2 #init loop 0 counter
                  auipc        t5, 957131
                  xori         a5, a6, -1610
                  andi         a3, t1, -1121
                  slli         t2, s5, 12
                  xori         s2, s2, -1142
                  ori          s10, t5, -1573
                  sra          s9, s5, ra
                  ori          s11, t1, 212
                  and          ra, ra, s5
                  addi         s1, zero, 15 #init loop 0 limit
                  nop
                  nop
                  slt          a0, s6, s9
                  srai         s10, a1, 5
sub_1_0_0_t:      add          ra, s9, gp
                  addi         s5, s5, 9 #update loop 0 counter
                  slti         s9, zero, 27
                  lui          a4, 227017
                  auipc        gp, 633626
                  srai         a7, s1, 1
                  add          t1, s9, s3
                  auipc        tp, 677342
                  slli         s8, s7, 29
                  auipc        t6, 826396
                  blt          s5, s1, sub_1_0_0_t #branch for loop 0
                  srli         a2, a6, 12
                  beq          a4, s11, 14f
                  xori         gp, s4, 604
                  beq          s8, s6, 21f
                  addi         tp, a4, -1605
                  slt          t0, tp, gp
                  slt          s10, t6, t1
                  sltiu        s9, a1, 1829
                  bne          t2, a7, 23f
                  nop
                  xori         t2, s4, 1919
                  sltu         t0, s5, a4
                  xori         t2, sp, 1168
                  slli         gp, s9, 6
                  slti         a0, s8, -1061
14:               bne          s6, a3, 18f
                  xori         a0, a5, -1867
                  andi         gp, tp, 537
                  beq          s5, t0, 25f
18:               bne          s6, gp, 25f
                  bgeu         t6, s7, 38f
                  sltu         a2, s11, s10
21:               blt          sp, t5, 33f
                  slli         sp, s1, 26
23:               nop
                  bne          zero, zero, 31f
25:               bltu         sp, s2, 30f
                  srai         t1, ra, 7
                  slti         s2, ra, 1130
                  sub          t0, t0, s2
                  srli         s1, s11, 8
30:               bgeu         gp, t5, 33f
31:               xor          s9, s11, t6
                  auipc        a0, 83546
33:               srai         a5, t0, 23
                  auipc        s1, 56241
                  beq          s10, s11, 42f
                  srli         s7, s10, 13
                  nop
38:               sltiu        t0, a3, 67
                  srai         t2, s8, 28
                  ori          ra, t1, -132
                  srl          gp, s0, t3
42:               sltiu        s5, s6, -715
                  beq          t3, s7, 51f
                  xori         s7, s9, 1629
                  ori          a2, t6, 1256
                  sltiu        s9, t0, -165
                  bge          t5, s4, 61f
                  bne          a5, t1, 54f
                  lui          s8, 93182
                  ori          a1, s2, -177
51:               srli         t5, t6, 19
                  and          a2, a5, s7
                  slli         t6, t4, 12
54:               addi         t5, a5, 646
                  xori         t2, a5, 1287
                  sll          s0, a1, a6
                  or           t2, s8, zero
                  beq          s6, s2, 75f
                  xori         s3, s11, 69
                  srl          gp, a4, t1
61:               beq          zero, a7, 65f
                  xori         a2, a4, 1305
                  add          s3, gp, s1
                  slti         a1, a7, -1494
65:               slli         s1, a1, 6
                  bne          a7, sp, 71f
                  sltu         s7, sp, s11
                  or           s2, a6, a6
                  bge          tp, s8, 73f
                  add          t1, t2, t5
71:               ori          tp, s9, 1178
                  ori          a1, a3, 1986
73:               nop
                  sltiu        a3, t6, 799
75:               xori         zero, a4, 788
                  xor          a4, a2, a0
                  sub          s3, ra, s6
                  bge          t6, a5, 88f
                  xor          s11, a1, a0
                  bne          s8, sp, 88f
                  sltiu        a1, t6, 1616
                  slli         a6, t5, 1
                  sltiu        a5, s9, -1747
                  ori          s7, t5, -1103
                  xori         gp, s6, -1266
                  sltu         s3, s1, a0
                  blt          a2, a7, 97f
88:               sub          t5, t3, s9
                  srai         t6, s2, 0
                  blt          tp, s10, 97f
                  ori          s8, t0, 1369
                  ori          a2, s3, -155
                  ori          t2, s0, -1608
                  bge          sp, t6, 95f
95:               ori          gp, s5, 1149
                  andi         s11, sp, 1771
97:               srli         a7, a0, 14
                  bgeu         s7, a3, 101f
                  andi         t1, s9, 1841
                  sltiu        s10, t0, -270
101:              andi         a7, s8, -931
                  xor          a3, s9, t0
                  auipc        t0, 4808
                  srli         s5, a4, 9
                  nop
                  xori         t0, a0, -1875
                  sltiu        t5, a5, -357
                  sll          a4, s7, s2
                  and          tp, t3, s7
                  lui          s10, 214015
                  blt          s10, zero, 121f
                  bne          s0, tp, 115f
                  bge          s4, t1, 115f
                  and          s0, s6, s8
115:              lui          a6, 297761
                  ori          ra, s4, 680
                  bne          s5, s5, 130f
                  addi         ra, ra, 1967
                  bge          a4, t3, 135f
                  beq          a2, s5, 121f
121:              bltu         s0, s7, 124f
                  addi         a0, s2, 1508
                  sltiu        ra, t3, -343
124:              slli         a7, t1, 11
                  slli         s4, t4, 12
                  srli         a5, s6, 18
                  add          ra, t6, ra
                  or           s0, a3, a2
                  blt          t3, t1, 135f
130:              andi         t1, t1, -657
                  beq          zero, s0, 144f
                  blt          a5, t2, 139f
                  bltu         s7, t6, 143f
                  sltu         ra, zero, t1
135:              beq          a4, a6, 142f
                  bgeu         t6, t1, 140f
                  and          a0, s8, a1
                  sltiu        s8, s3, 1490
139:              slt          s4, t0, t5
140:              bge          s5, tp, 144f
                  srli         sp, t0, 15
142:              ori          s11, s3, 770
143:              and          t5, sp, t0
144:              nop
                  slt          s2, a7, t3
                  sra          a5, s7, zero
                  bgeu         a5, t4, 150f
                  nop
                  ori          s10, zero, -1051
150:              add          s4, s4, s5
                  lui          t6, 278923
                  andi         s10, s8, 661
                  sll          a1, t1, a5
                  lui          t2, 707994
                  srl          t0, s8, a0
                  xor          a0, s5, s10
                  add          zero, gp, t6
                  srai         a0, gp, 1
                  add          a2, s11, sp
                  beq          s9, s5, 162f
                  sltu         a0, s3, s5
162:              bltu         s1, t6, 172f
                  slt          t1, s10, tp
                  addi         s1, s2, 632
                  bltu         s8, t5, 172f
                  sub          s5, a4, a1
                  or           s2, a4, s1
                  xor          sp, s2, s7
                  lui          s0, 458580
                  slti         a2, s10, 562
                  bgeu         a0, gp, 174f
172:              sltu         s11, s6, a6
                  slti         a1, tp, 261
174:              slt          s5, ra, t3
                  slt          s1, t3, a3
                  sub          s4, t5, zero
                  slti         a1, t0, -1136
                  or           t6, s4, s1
                  lw           ra, 4(t3)
                  xor          s4, s11, t1
                  nop
                  sra          s1, s7, a4
                  sub          a0, s1, a4
                  ori          a7, a0, 763
                  addi         t3, t3, 56
                  sltu         t0, t3, tp
267:              addi x9, x1, 1
267:              jalr x9, x9, 0
sub_5:            xor          tp, a7, sp
                  sub          sp, t2, s1
                  bltu         s3, a0, sub_5_stack_p
                  srai         a6, s9, 19
                  srai         s8, s7, 16
sub_5_stack_p:    addi         t3, t3, -16
                  auipc        a2, 468979
                  sw           ra, 4(t3)
                  slti         s1, sp, -1051
                  nop
                  slli         s9, s5, 22
                  sltu         t2, s7, s6
                  addi         s3, zero, -5 #init loop 1 counter
                  addi         t0, zero, 4 #init loop 1 limit
sub_5_12_1_t:     lui          s8, 593605
                  srl          s8, a2, s10
                  addi         s3, s3, 7 #update loop 1 counter
                  and          s2, s4, zero
                  auipc        gp, 649911
                  addi         a2, zero, 10 #init loop 0 counter
                  xor          a4, ra, gp
                  addi         a7, gp, 443
                  srai         a3, t3, 15
                  addi         a6, zero, 8 #init loop 0 limit
                  srai         s2, s3, 2
                  ori          s4, t4, -1356
                  ori          s0, s2, 408
                  auipc        t1, 514614
sub_5_12_0_t:     slti         a4, a4, 388
                  srai         tp, zero, 11
                  addi         a2, a2, -4 #update loop 0 counter
                  and          a4, s1, s2
                  bgeu         a2, a6, sub_5_12_0_t #branch for loop 0
                  bltu         s3, t0, sub_5_12_1_t #branch for loop 1
                  xori         a5, zero, 1050
                  addi         a3, zero, -3 #init loop 0 counter
                  nop
                  andi         a5, t4, 2013
                  addi         s5, zero, 11 #init loop 0 limit
sub_5_9_0_t:      andi         t5, a6, 1472
                  slti         s8, a2, -1664
                  addi         a3, a3, 3 #update loop 0 counter
                  and          ra, s7, a1
                  slli         t1, a5, 26
                  bltu         a3, s5, sub_5_9_0_t #branch for loop 0
                  slt          gp, ra, t3
                  addi         sp, zero, -3 #init loop 0 counter
                  xor          a0, sp, s4
                  nop
                  sltu         s5, a1, s3
                  addi         a1, zero, 2 #init loop 0 limit
                  xori         s7, s6, -348
                  sltiu        s7, s6, -648
                  lui          ra, 486418
sub_5_3_0_t:      addi         s9, zero, 1618
                  add          s11, a4, a0
                  addi         sp, sp, 6 #update loop 0 counter
                  nop
                  blt          sp, a1, sub_5_3_0_t #branch for loop 0
                  nop
                  addi         a7, zero, 8 #init loop 1 counter
                  addi         t1, zero, -10 #init loop 1 limit
                  srli         s10, t3, 17
sub_5_16_1_t:     sub          a5, a6, a2
                  addi         a7, a7, -6 #update loop 1 counter
                  addi         ra, zero, -1 #init loop 0 counter
                  addi         a1, zero, 20 #init loop 0 limit
sub_5_16_0_t:     or           a2, s10, s11
                  addi         ra, ra, 5 #update loop 0 counter
                  slt          sp, a6, a3
                  bltu         ra, a1, sub_5_16_0_t #branch for loop 0
                  bne          a7, t1, sub_5_16_1_t #branch for loop 1
                  sub          s10, s6, a6
                  addi         t1, zero, -7 #init loop 0 counter
                  addi         tp, zero, 3 #init loop 0 limit
                  sltiu        s4, t2, -1972
                  sltu         sp, a4, s4
sub_5_11_0_t:     xori         s11, s2, 680
                  sra          s11, s8, s7
                  addi         t1, t1, 10 #update loop 0 counter
                  slli         s1, a2, 31
                  beq          t1, tp, sub_5_11_0_t #branch for loop 0
                  ori          sp, s8, 1439
                  addi         t5, zero, -6 #init loop 0 counter
                  and          s1, a2, tp
                  srl          t1, t4, a5
                  sltiu        a1, tp, -508
                  slli         s2, t0, 4
                  slti         a0, sp, 310
                  sub          s1, t6, s2
                  addi         t0, zero, -7 #init loop 0 limit
                  srli         a5, t4, 28
                  nop
sub_5_8_0_t:      and          s3, a5, s3
                  ori          tp, a2, -210
                  srl          gp, s9, s10
                  addi         t5, t5, -1 #update loop 0 counter
                  slt          a3, s6, a3
                  nop
                  slt          sp, t3, a6
                  bne          t5, t0, sub_5_8_0_t #branch for loop 0
                  add          s4, t4, a0
                  addi         a0, zero, 4 #init loop 0 counter
                  or           gp, s5, a3
                  addi         s1, zero, 4 #init loop 0 limit
sub_5_14_0_t:     slt          s8, sp, t5
                  xori         s9, t1, 1830
                  sra          a2, a4, a6
                  srai         t0, a2, 22
                  addi         a0, a0, -1 #update loop 0 counter
                  slti         s11, t3, -1721
                  sll          a6, a1, zero
                  bgeu         a0, s1, sub_5_14_0_t #branch for loop 0
                  xori         s5, s1, 1900
                  addi         a2, zero, -7 #init loop 0 counter
                  xori         a4, s2, 42
                  srai         a7, s4, 19
                  srai         a5, s4, 19
                  slt          a5, t2, gp
                  sra          a6, t2, ra
                  add          a0, t5, s10
                  srli         zero, s7, 4
                  add          s11, a0, t6
                  addi         tp, zero, 7 #init loop 0 limit
                  xori         t5, s0, -1418
                  srl          s9, a2, t6
sub_5_15_0_t:     auipc        a6, 16251
                  sltu         zero, t0, a2
                  addi         a2, a2, 1 #update loop 0 counter
                  auipc        a4, 81649
                  blt          a2, tp, sub_5_15_0_t #branch for loop 0
                  sra          a7, s0, a2
                  addi         t6, zero, -5 #init loop 0 counter
                  ori          s0, s4, -1501
                  sub          s0, a2, a6
                  srai         a1, s7, 13
                  srai         a1, a1, 15
                  ori          a5, a2, -1009
                  xor          a6, s2, s1
                  sub          s9, a3, a3
                  or           t5, sp, a4
                  add          a5, a4, s2
                  slt          s9, a4, t6
                  addi         a3, zero, -13 #init loop 0 limit
sub_5_4_0_t:      sltu         tp, a7, gp
                  srli         s2, t0, 1
                  sltiu        s1, t2, -642
                  srl          a4, a2, s3
                  addi         t6, t6, -8 #update loop 0 counter
                  slli         t5, s4, 30
                  sltu         s2, t6, sp
                  sltu         a6, t5, s10
                  slti         a4, s11, -809
                  lui          s2, 625137
                  sub          t2, s0, tp
                  bne          t6, a3, sub_5_4_0_t #branch for loop 0
                  slti         sp, tp, 140
                  addi         t2, zero, 2 #init loop 1 counter
                  addi         s1, zero, -2 #init loop 1 limit
                  lui          tp, 676726
sub_5_19_1_t:     or           a4, s9, a6
                  addi         t2, t2, -4 #update loop 1 counter
                  srl          ra, s5, s10
                  addi         s0, zero, -8 #init loop 0 counter
                  or           s4, a2, a6
                  addi         s8, zero, -14 #init loop 0 limit
                  xori         s7, a4, 1468
sub_5_19_0_t:     and          ra, s8, zero
                  addi         s0, s0, -4 #update loop 0 counter
                  addi         s5, gp, -1881
                  bge          s0, s8, sub_5_19_0_t #branch for loop 0
                  beq          t2, s1, sub_5_19_1_t #branch for loop 1
                  xor          t1, s0, a3
                  addi         gp, zero, 8 #init loop 0 counter
                  srli         s10, t1, 20
                  addi         zero, a0, 371
                  addi         s1, zero, 13 #init loop 0 limit
                  sub          s7, s4, s4
                  sra          a7, s7, a7
sub_5_1_0_t:      ori          t5, gp, 251
                  slt          s5, s2, a0
                  addi         gp, gp, 3 #update loop 0 counter
                  ori          t6, gp, -518
                  srl          zero, s7, a2
                  xor          s9, s5, s6
                  add          t1, zero, t6
                  blt          gp, s1, sub_5_1_0_t #branch for loop 0
                  slti         a5, t1, -1532
                  addi         a7, zero, -9 #init loop 0 counter
                  srl          a2, a5, s5
                  sll          a2, s6, s4
                  xor          t0, tp, a6
                  addi         s9, s9, -794
                  add          s0, ra, s4
                  and          s1, s3, s1
                  addi         a0, zero, 13 #init loop 0 limit
                  addi         tp, t0, 219
sub_5_18_0_t:     sltu         sp, a6, a6
                  addi         a7, a7, 4 #update loop 0 counter
                  slti         tp, s1, -1625
                  auipc        t5, 271882
                  nop
                  srli         ra, t5, 28
                  slti         s10, a0, 1444
                  slti         s11, t1, 89
                  slli         s4, t0, 0
                  srai         t1, t3, 21
                  xor          s1, tp, t3
                  lui          a3, 313523
                  sub          a5, s1, s3
                  xori         s8, s6, 714
                  and          a3, sp, a7
                  sub          s2, tp, t2
                  srli         s7, s3, 12
                  addi         t1, a6, -467
                  xori         a1, s8, -1330
                  blt          a7, a0, sub_5_18_0_t #branch for loop 0
                  or           a5, a0, tp
                  addi         s5, zero, 7 #init loop 0 counter
                  add          ra, s5, t1
                  lui          s7, 49684
                  addi         a7, zero, 6 #init loop 0 limit
                  sra          s11, t5, s3
                  xori         t2, s9, 679
                  sll          s10, t1, s2
sub_5_2_0_t:      sltu         s0, t6, a7
                  slli         t2, s5, 13
                  andi         s10, s7, 1068
                  srl          s2, a2, gp
                  srai         s10, ra, 31
                  addi         s5, s5, -2 #update loop 0 counter
                  nop
                  and          t1, s1, s5
                  bgeu         s5, a7, sub_5_2_0_t #branch for loop 0
                  and          s0, t1, s8
                  addi         s5, zero, 10 #init loop 1 counter
                  sub          s1, gp, s8
                  sltiu        gp, a1, 540
                  addi         s3, zero, 16 #init loop 1 limit
                  and          s11, s3, sp
                  sll          a0, a2, a7
sub_5_17_1_t:     auipc        t0, 883518
                  addi         s5, s5, 6 #update loop 1 counter
                  lui          t6, 986631
                  addi         a7, zero, -3 #init loop 0 counter
                  lui          a0, 909937
                  addi         ra, sp, 356
                  addi         a2, zero, -17 #init loop 0 limit
sub_5_17_0_t:     or           s1, a1, a1
                  xor          s11, s8, s7
                  addi         a7, a7, -2 #update loop 0 counter
                  auipc        s2, 69140
                  bne          a7, a2, sub_5_17_0_t #branch for loop 0
                  nop
                  nop
                  sll          s11, a4, s0
                  bne          s5, s3, sub_5_17_1_t #branch for loop 1
                  add          gp, s6, zero
                  addi         s4, zero, 3 #init loop 1 counter
                  sub          a0, a0, s9
                  ori          t5, zero, 2000
                  or           a4, a5, s10
                  sll          s1, t5, t1
                  add          t2, s7, a4
                  sltu         tp, tp, t3
                  addi         a3, zero, -11 #init loop 1 limit
                  slt          t2, a5, s8
                  nop
sub_5_13_1_t:     auipc        t1, 1047822
                  addi         s4, s4, -7 #update loop 1 counter
                  srai         sp, t4, 12
                  xori         sp, tp, -133
                  srai         s3, a1, 20
                  or           t2, t4, t1
                  lui          s5, 359438
                  addi         t6, zero, 5 #init loop 0 counter
                  xori         a6, s2, -189
                  addi         ra, zero, 4 #init loop 0 limit
sub_5_13_0_t:     add          gp, s11, t6
                  nop
                  slti         zero, zero, 1590
                  sub          s8, s3, s0
                  addi         t6, t6, -3 #update loop 0 counter
                  auipc        a5, 938940
                  nop
                  sub          a0, s4, sp
                  bgeu         t6, ra, sub_5_13_0_t #branch for loop 0
                  xor          s0, a1, tp
                  xor          s2, a3, gp
                  slli         gp, t1, 0
                  bne          s4, a3, sub_5_13_1_t #branch for loop 1
                  slt          s10, tp, a5
                  addi         a6, zero, 10 #init loop 1 counter
                  sra          s9, ra, a2
                  addi         s3, zero, 6 #init loop 1 limit
                  auipc        s2, 743441
sub_5_5_1_t:      ori          zero, s10, -1398
                  addi         a6, a6, -5 #update loop 1 counter
                  addi         a1, zero, 4 #init loop 0 counter
                  andi         zero, ra, -1555
                  addi         t5, zero, -11 #init loop 0 limit
                  slt          s10, a7, a5
sub_5_5_0_t:      sltu         gp, s7, s3
                  addi         a1, a1, -5 #update loop 0 counter
                  bne          a1, t5, sub_5_5_0_t #branch for loop 0
                  addi         sp, t6, 1108
                  or           a7, s2, a6
                  bgeu         a6, s3, sub_5_5_1_t #branch for loop 1
                  sra          s2, s6, a7
                  addi         s2, zero, 8 #init loop 1 counter
                  xor          t6, t0, a4
                  sub          t2, a2, gp
                  addi         a4, zero, -13 #init loop 1 limit
                  auipc        t2, 3785
sub_5_6_1_t:      slt          a2, s7, s1
                  srai         s9, sp, 9
                  or           s11, s10, a3
                  slli         tp, s11, 27
                  addi         s2, s2, -7 #update loop 1 counter
                  addi         a5, zero, 2 #init loop 0 counter
                  addi         gp, zero, -18 #init loop 0 limit
sub_5_6_0_t:      xor          ra, a5, s8
                  slli         s8, tp, 20
                  addi         a5, a5, -10 #update loop 0 counter
                  or           s9, s2, tp
                  srai         a7, t5, 27
                  bne          a5, gp, sub_5_6_0_t #branch for loop 0
                  addi         a3, s7, 1758
                  slti         sp, a5, 286
                  beq          s2, a4, sub_5_6_1_t #branch for loop 1
                  sub          a0, t0, s2
                  addi         t2, tp, 675
                  auipc        s0, 569258
                  sltiu        s10, a4, -467
                  bltu         s5, t0, 19f
                  ori          s0, s5, -1649
                  srli         a4, s6, 0
                  andi         tp, t0, 1881
                  bgeu         t2, t6, 18f
                  xor          s0, sp, t2
                  bge          tp, zero, 16f
                  bltu         s2, s4, 18f
                  srai         s7, s10, 2
                  auipc        a4, 104816
                  auipc        a5, 674896
                  nop
                  sltiu        t6, a6, 656
16:               nop
                  slti         a5, s0, 1575
18:               bgeu         a4, t0, 27f
19:               sub          s10, t6, s9
                  slt          s4, a3, s11
                  sltiu        s7, s6, -559
                  beq          gp, a3, 33f
                  andi         a1, a0, 1157
                  and          a2, t1, t4
                  addi         s7, zero, 10 #init loop 1 counter
                  sltu         t6, s5, a2
                  sub          s9, a7, s11
                  auipc        s5, 820905
                  addi         s1, zero, -20 #init loop 1 limit
sub_5_7_1_t:      sltu         ra, s7, a1
                  xor          t6, s3, s10
                  addi         s7, s7, -10 #update loop 1 counter
                  addi         t0, zero, 1 #init loop 0 counter
                  addi         s10, sp, 796
                  slli         a3, t4, 4
                  addi         sp, t0, -26
                  xori         s11, t3, 1547
                  srai         a4, sp, 3
                  addi         a2, zero, -19 #init loop 0 limit
                  slti         a5, a4, 1078
                  nop
                  lui          zero, 1044245
                  addi         s2, gp, -479
                  auipc        s2, 866472
                  sll          gp, sp, a3
                  and          s4, t3, tp
                  xor          t2, s0, s8
                  xor          s2, t4, t5
sub_5_7_0_t:      nop
                  andi         s9, t2, -648
                  slli         tp, tp, 28
                  addi         t0, t0, -5 #update loop 0 counter
                  xori         gp, s3, 1310
                  slli         s8, t6, 5
                  beq          t0, a2, sub_5_7_0_t #branch for loop 0
                  andi         t2, tp, -21
                  sltiu        s0, s9, 533
                  bne          s7, s1, sub_5_7_1_t #branch for loop 1
                  and          tp, a4, a6
                  or           s2, s5, s2
                  xori         a4, s4, 1353
27:               slt          s2, s2, a5
                  srai         t1, t3, 5
                  sltu         s8, tp, a5
                  beq          s8, t1, 46f
                  add          s5, a4, s10
                  srli         t6, s3, 8
33:               xori         zero, s4, -209
                  sltu         s7, s10, a3
                  slt          zero, t0, t0
                  andi         gp, s5, 240
                  and          t6, a2, a3
                  sltiu        s7, a0, -1523
                  sub          a2, t6, a7
                  add          s4, s7, s2
                  sltiu        s5, a2, -1937
                  and          s5, a7, t6
                  ori          s10, a3, 1695
                  auipc        a3, 996209
                  sll          s8, a0, t2
46:               xori         s5, s11, -1138
                  srl          s9, s1, gp
                  bgeu         s1, s4, 56f
                  lui          s5, 765871
                  slt          a1, t5, a4
                  and          tp, s1, a7
                  beq          ra, a2, 56f
                  nop
                  srli         t6, tp, 27
                  add          s10, s5, s11
56:               xori         t6, a6, 192
                  slti         s1, s1, -1038
                  lui          a7, 654858
                  xor          a1, t6, s9
                  bge          a1, a0, 67f
                  sltiu        s10, s5, 477
                  bne          a1, ra, 70f
                  auipc        a0, 849725
                  bge          a3, a5, 84f
                  slti         t0, a3, 9
                  sra          a0, s11, a5
67:               lui          s9, 1040695
                  bge          s7, s11, 84f
                  blt          a5, s3, 73f
70:               slt          a0, s6, s7
                  srl          s5, a0, a7
                  bge          t5, a1, 81f
73:               blt          t4, s4, 93f
                  sub          zero, a7, a5
                  add          s5, t6, s10
                  slt          s3, gp, s10
                  srli         s5, t1, 4
                  andi         a5, a3, 973
                  andi         a6, s4, -1477
                  slti         a0, a5, -1843
81:               beq          a1, s3, 95f
                  sll          ra, s1, s5
                  or           a0, a6, a6
84:               addi         s5, t3, -590
                  bgeu         a2, s2, 87f
                  ori          t2, zero, -1614
87:               slt          ra, a6, s7
                  blt          t4, a6, 92f
                  or           t6, a1, gp
                  slt          s1, s10, t6
                  blt          s11, sp, 101f
92:               add          t2, a3, t2
93:               blt          t3, s3, 95f
                  sltu         a0, a3, a4
95:               xor          a1, a0, t0
                  srli         a7, tp, 25
                  slt          s7, tp, t3
                  andi         s5, s8, 1325
                  srli         s3, t5, 18
                  bgeu         a0, a5, 106f
101:              slt          a4, ra, tp
                  slti         s7, a4, -1721
                  sltu         a1, s11, s3
                  and          t5, s6, a5
                  slti         a1, t3, 128
106:              auipc        sp, 480057
                  nop
                  lui          s11, 568589
                  sltiu        s2, s4, -588
                  andi         a5, s1, -1723
                  slti         s11, s1, -1927
                  slt          s8, s10, t0
                  bltu         t5, ra, 115f
                  sra          s11, t0, tp
115:              sra          a4, s2, s9
                  sltiu        a0, s8, 52
                  srai         zero, s11, 1
                  addi         s2, ra, 1561
                  sra          a4, a3, s10
                  sltu         s9, s6, a7
                  bge          gp, s7, 136f
                  sltiu        a5, s0, -662
                  sub          a1, t5, t6
                  blt          t4, tp, 143f
                  bltu         a7, a0, 145f
                  beq          t3, sp, 138f
                  srli         t2, a6, 4
                  nop
                  bge          a0, t5, 138f
                  lui          s10, 481372
                  sll          a4, zero, s1
                  bne          t6, zero, 140f
                  auipc        a0, 589201
                  xori         t2, s4, 736
                  xori         s9, a5, 900
136:              and          a5, a7, t5
                  srai         t2, t6, 7
138:              or           zero, s3, a5
                  or           t5, s11, s6
140:              bltu         ra, tp, 141f
141:              bne          s10, a1, 157f
                  ori          s11, t3, -1334
143:              lui          s5, 643745
                  slli         a6, s4, 31
145:              beq          a7, s4, 165f
                  sltu         s1, t1, a3
                  nop
                  slti         s1, a1, 1837
                  slti         s11, s2, -1991
                  slt          zero, s10, t0
                  srli         s4, gp, 11
                  srl          t2, ra, ra
                  sltu         a1, s0, a5
                  addi         s11, zero, -7 #init loop 1 counter
                  srl          a2, s3, s0
                  nop
                  sll          a7, s0, t2
                  srai         gp, a1, 7
                  xori         a1, s6, 1931
                  auipc        s10, 360405
                  addi         s1, zero, 20 #init loop 1 limit
                  srli         a6, zero, 17
sub_5_0_1_t:      sltu         s4, s0, s7
                  addi         s11, s11, 8 #update loop 1 counter
                  sll          a0, a5, s2
                  addi         ra, zero, 1 #init loop 0 counter
                  addi         a7, t6, 1392
                  nop
                  sltiu        s3, a1, -551
                  auipc        s0, 118997
                  auipc        t1, 278133
                  sra          a1, s4, s6
                  addi         tp, zero, 17 #init loop 0 limit
                  lui          a3, 689894
                  and          a6, a3, ra
sub_5_0_0_t:      or           gp, s10, t4
                  or           t6, t6, sp
                  or           a4, a1, t3
                  addi         ra, ra, 8 #update loop 0 counter
                  sra          a5, s10, a4
                  srli         t1, t2, 3
                  bltu         ra, tp, sub_5_0_0_t #branch for loop 0
                  add          a4, t0, a1
                  andi         s0, gp, -485
                  slti         s7, a3, -1005
                  srai         a5, sp, 29
                  bltu         s11, s1, sub_5_0_1_t #branch for loop 1
                  slt          t6, t5, sp
                  add          s7, s9, s4
                  nop
                  bgeu         t6, t1, 158f
157:              nop
158:              xor          s3, s7, a0
                  bge          zero, s3, 174f
                  srli         a2, t2, 12
                  sltu         a3, a7, a1
                  sltu         sp, t6, a1
                  sub          s9, a3, t4
                  addi         s10, zero, 1094
165:              srli         a0, a4, 23
                  xor          t2, a1, s2
                  add          a7, s1, s0
                  srai         ra, a3, 26
                  or           a1, a6, s11
                  slti         s2, a5, -1983
                  slli         t1, s2, 29
                  xor          s3, a3, s9
                  sub          gp, s7, a1
174:              lui          gp, 303223
                  sltu         tp, s1, t4
                  slli         a1, s8, 28
                  slt          s5, s7, t3
                  bltu         t2, tp, 182f
                  nop
                  sra          s3, s6, a3
                  srli         a1, s3, 28
182:              beq          a6, a7, 186f
                  lui          s11, 113208
                  srai         a1, a4, 17
                  bne          a4, a6, 204f
186:              auipc        t0, 960464
                  ori          s2, gp, 1510
                  andi         a7, s8, -1896
                  slli         ra, zero, 6
                  nop
                  blt          a6, a5, 192f
192:              add          t6, t2, gp
                  and          t0, tp, a5
                  sub          s11, s3, s5
                  sltiu        a2, t4, 1806
                  sub          a3, s1, s6
                  andi         a5, zero, 1897
                  srai         ra, t2, 16
                  srai         s4, s9, 13
                  addi         a2, t5, -1372
                  addi         a4, t4, -748
                  srai         s11, sp, 6
                  ori          zero, t1, -849
204:              sub          s8, a3, t0
                  sltiu        s4, a1, -1945
                  andi         t6, a6, 1061
                  addi         zero, t4, 1531
                  sra          a1, a0, s1
                  slti         gp, a6, -1608
                  and          s0, a4, a5
                  addi         zero, s9, -1234
                  slti         s3, gp, -1292
                  blt          t3, s1, 233f
                  or           t2, s0, ra
                  srai         a2, a3, 17
                  xori         t0, t5, -1117
                  beq          t0, s9, 219f
                  sra          a4, a1, s1
219:              sra          gp, a0, s6
                  or           a4, zero, a1
                  sra          zero, a4, a6
                  sltiu        t2, s6, 1070
                  or           s0, s11, s8
                  sra          a5, gp, t3
                  srai         t6, s6, 17
                  bltu         a7, s10, 234f
                  auipc        s2, 496109
                  andi         s4, zero, -1460
                  slt          a0, ra, s5
                  srl          zero, zero, t1
                  sra          a3, tp, s8
                  xor          s11, a1, a5
233:              xor          zero, a1, a5
234:              sltiu        a7, t3, 1217
                  andi         a2, t2, -53
                  srli         s7, gp, 18
                  or           t5, s2, a3
                  slti         s10, s9, 1263
                  addi         s9, s4, 369
                  slt          t1, s3, tp
                  srli         a0, a6, 27
                  xori         t1, t0, 1441
                  xor          gp, s11, ra
                  srli         t0, s9, 30
                  sll          t1, s11, t2
                  ori          t6, sp, -11
                  sltiu        a1, s2, -450
                  xori         a6, s5, 1521
                  or           s11, s0, s1
                  or           sp, t6, ra
                  addi         a6, zero, 5 #init loop 1 counter
                  addi         a7, zero, 5 #init loop 1 limit
sub_5_10_1_t:     slti         a0, s5, 1442
                  or           a5, t0, s4
                  addi         a6, a6, -3 #update loop 1 counter
                  addi         s9, zero, -1 #init loop 0 counter
                  and          sp, gp, t6
                  srai         a1, a4, 21
                  addi         a3, zero, 20 #init loop 0 limit
                  andi         s11, s9, 749
                  auipc        s10, 566573
sub_5_10_0_t:     ori          s11, a2, -1264
                  addi         s9, s9, 7 #update loop 0 counter
                  and          a4, s8, t2
                  bne          s9, a3, sub_5_10_0_t #branch for loop 0
                  bgeu         a6, a7, sub_5_10_1_t #branch for loop 1
                  or           a0, s2, gp
                  slt          tp, t2, t2
                  xor          a0, s2, s1
                  sub          gp, t3, s4
                  slli         a6, gp, 3
                  xori         s3, a2, 2031
                  sra          a5, ra, t2
                  xori         s5, a3, 793
                  addi         a6, s9, -705
                  lui          s10, 252684
                  sra          s10, t5, s11
                  bge          t5, a1, 272f
                  addi         s1, a5, 837
                  andi         t5, sp, 446
                  blt          sp, t2, 266f
                  ori          s4, t4, 435
266:              sltiu        t5, t3, -146
                  bne          gp, a1, 276f
                  ori          a1, t2, -269
                  and          a0, s7, s8
                  ori          a6, t4, 802
                  bgeu         ra, a2, 278f
272:              xor          a3, t2, a3
                  sltu         t1, a3, s7
                  addi         s11, s4, 1352
                  slt          t6, gp, s6
276:              sra          zero, a6, s1
                  xor          t1, s5, a1
278:              ori          tp, s11, -1811
                  slt          zero, t4, t4
                  srli         t5, a2, 2
                  srli         zero, a4, 20
                  nop
                  srl          zero, gp, t5
                  or           a1, a6, sp
                  add          a4, t2, s9
                  bge          s8, t3, 294f
                  bgeu         a7, a6, 294f
                  add          s10, a5, s4
                  sra          tp, tp, s6
                  bne          s7, a5, 306f
                  srli         s11, a4, 3
                  sra          s10, s11, t0
                  xor          ra, gp, s2
294:              bne          t6, t2, 314f
                  bltu         a7, t2, 304f
                  beq          gp, ra, 307f
                  xori         sp, s3, 909
                  srli         s7, s8, 18
                  sra          a0, s3, s7
                  blt          s9, t0, 304f
                  slt          t6, a6, t0
                  auipc        a6, 802222
                  ori          a0, a0, -1017
304:              andi         a4, t6, -1770
                  sltiu        sp, t1, 269
306:              slli         a7, s7, 21
307:              srl          s7, s11, s0
                  nop
                  andi         s10, s2, -1169
                  slli         zero, a3, 19
                  bge          s8, s3, 320f
                  sub          t5, gp, a7
                  blt          a4, a7, 323f
314:              sll          t6, t2, tp
                  slli         a5, a3, 9
                  xor          a0, gp, a2
                  blt          s5, t5, 323f
                  srli         a3, s1, 22
                  slt          a6, s2, t5
320:              srl          zero, s0, gp
                  addi         t5, t6, -1019
                  lui          gp, 864500
323:              srli         tp, t4, 7
                  andi         tp, tp, -1716
                  beq          t3, a1, 339f
                  bge          s7, a4, 334f
                  slt          t0, s2, s4
                  add          s4, s4, t6
                  and          s0, s2, a0
                  sltu         s1, a4, a5
                  srl          a5, s0, s4
                  add          t0, t6, a7
                  bne          tp, sp, 345f
334:              bltu         s7, a2, 350f
                  bltu         a0, s2, 343f
                  slt          s0, t1, a7
                  nop
                  bltu         t5, a3, 347f
339:              sub          s11, s4, s9
                  xor          s4, s3, s6
                  slli         s3, s4, 7
                  xor          s2, t6, s7
343:              ori          a1, s9, -445
                  add          a5, sp, zero
345:              nop
                  or           s3, s6, s0
347:              blt          t1, s11, 367f
                  sltiu        s5, t4, -1361
                  sll          s5, t3, a2
350:              nop
                  auipc        t1, 60346
                  sub          s2, s6, t0
                  lui          t5, 827670
                  bge          a3, t5, 356f
                  or           gp, s5, a2
356:              lui          t1, 896855
                  xori         a2, a7, 1495
                  bgeu         s3, s2, 369f
                  bge          s8, t4, 368f
                  sub          a2, a6, s10
                  slti         t2, a1, -501
                  slti         t5, a4, -1903
                  auipc        t6, 907016
                  sltu         s2, a5, s11
                  bltu         a7, s0, 367f
                  srli         t1, zero, 12
367:              andi         s4, a1, 550
368:              sltiu        s0, a2, -1575
369:              nop
                  slt          s4, s9, a1
                  addi         t6, s7, -588
                  and          a2, zero, a4
                  xor          s10, t5, zero
                  sltu         s9, s9, a1
                  or           a6, s8, s6
                  nop
                  nop
                  bltu         ra, a7, 388f
                  sltiu        s9, a4, -1518
                  beq          a5, s1, 388f
                  bltu         a1, s2, 393f
                  sub          t2, s4, t6
                  or           ra, a0, s9
                  sra          gp, t0, a6
                  beq          a1, s3, 400f
                  lui          s11, 161436
                  sra          t5, s9, t3
388:              xor          s1, s4, tp
                  auipc        a1, 178668
                  xori         a4, s2, -1981
                  bgeu         gp, zero, 393f
                  ori          sp, a7, 479
393:              sub          s5, t0, ra
                  slti         gp, s7, 1478
                  srli         a5, t4, 5
                  auipc        a7, 187970
                  blt          ra, s8, 417f
                  sll          a1, s4, s7
                  slti         a6, a2, 624
400:              xori         s7, a3, -468
                  bne          a7, zero, 405f
                  sub          a4, s5, sp
                  srli         ra, s1, 0
                  addi         s0, s3, -553
405:              or           a2, zero, zero
                  bltu         s10, a2, 414f
                  andi         t0, t1, -1394
                  sll          s11, s7, s7
                  xor          ra, gp, t6
                  bne          gp, gp, 418f
                  xor          t6, s5, s10
                  bne          s7, sp, 431f
                  slti         t6, a3, -291
414:              slli         sp, s10, 14
                  or           a3, t4, s0
                  xor          a0, s2, a7
417:              or           s5, zero, sp
418:              xori         ra, t2, 471
                  auipc        a5, 541256
                  auipc        tp, 546828
                  sra          sp, s2, s1
                  blt          a6, s10, 433f
                  nop
                  slli         s10, t3, 11
                  sra          s4, a7, a4
                  bge          s6, s4, 432f
                  bltu         a0, t0, 434f
                  sltu         zero, s9, t6
                  xor          t2, s11, sp
                  sub          s8, a2, a1
431:              slti         s3, a2, 1719
432:              andi         a6, gp, 1215
433:              addi         s9, a3, -755
434:              bltu         s0, s5, 450f
                  slli         tp, a4, 1
                  add          s8, s2, s8
                  sub          a2, gp, s2
                  slt          s7, s9, s8
                  sub          a0, s1, a3
                  slti         t0, s3, 1542
                  xor          sp, sp, s9
                  bge          zero, s1, 450f
                  addi         gp, t3, 962
                  slti         s4, s0, 1481
                  slt          t2, s11, zero
                  beq          a7, s8, 460f
                  bge          a6, a0, 451f
                  bgeu         t5, t5, 455f
                  ori          a5, s1, -1259
450:              slt          a4, s5, t4
451:              addi         s7, gp, 280
                  sll          s5, s10, zero
                  sra          s7, s6, ra
                  ori          a5, a5, -60
455:              beq          a4, s11, 471f
                  slt          s1, s7, t2
                  slli         a3, a1, 17
                  add          s5, gp, zero
                  or           s0, t2, s5
460:              sra          a5, t4, t5
                  add          a3, t2, a7
                  bge          s8, tp, 471f
                  and          a2, s7, t2
                  srli         s9, a1, 0
                  auipc        ra, 403784
                  srai         a2, s0, 30
                  ori          s2, a3, 60
                  blt          t3, s4, 472f
                  sra          t0, t2, s8
                  srai         s3, a2, 2
471:              lui          s11, 404309
472:              bltu         a7, t3, 473f
473:              sub          a0, tp, sp
                  xori         gp, s6, -1619
                  srai         s11, s1, 18
                  xor          tp, s2, s10
                  sll          t0, s4, s10
                  sltiu        s3, s2, 868
                  bge          s11, ra, 495f
                  bltu         t2, t5, 500f
                  bge          s6, s4, 485f
                  slt          t5, s0, a5
                  sra          s3, gp, a4
                  addi         s9, s0, 1244
485:              srai         t5, a6, 27
                  sub          s1, s0, t0
                  sub          t6, a5, t5
                  ori          s3, s10, -638
                  slt          s5, t2, t0
                  slli         s1, a4, 29
                  sra          s11, a7, zero
                  bltu         zero, t2, 494f
                  xor          ra, t3, a6
494:              slli         zero, t5, 0
495:              sll          a3, s11, a0
                  bgeu         s8, s0, 507f
                  bltu         s9, sp, 506f
                  xori         s5, t6, -1229
                  sltu         a4, s10, s11
500:              auipc        s10, 612358
                  sltiu        a2, a3, 1990
                  or           s2, a5, a2
                  sltiu        t2, tp, -634
                  sra          a5, s9, s2
                  or           ra, s1, s5
506:              addi         s7, a6, 749
507:              andi         ra, s11, -458
                  sltiu        a5, t0, 1516
                  ori          s9, gp, -1156
                  blt          s9, a6, 521f
                  beq          t1, a3, 519f
                  bgeu         s6, s0, 528f
                  sll          t1, a2, s7
                  bne          t1, s8, 516f
                  slti         s2, s9, 198
516:              xori         s5, tp, 2019
                  and          zero, s0, t4
                  add          a5, t1, t2
519:              srli         t5, t6, 10
                  or           a7, tp, s8
521:              slt          a5, a7, s4
                  slti         s3, s5, -906
                  sra          t0, s5, a1
                  bne          t4, s7, 531f
                  sub          t5, gp, t5
                  sltiu        t5, a3, 334
                  blt          t6, t6, 535f
528:              srai         s9, s11, 20
                  srli         t0, a4, 18
                  nop
531:              andi         a1, s1, -459
                  srai         tp, t6, 17
                  slli         ra, s8, 8
                  slti         gp, s0, 237
535:              slli         a0, t0, 4
                  bge          s7, t5, 540f
                  bgeu         tp, a1, 545f
                  srl          zero, s7, sp
                  slt          a7, s3, t0
540:              bgeu         a4, s3, 542f
                  ori          a7, zero, -1494
542:              sltu         a7, s7, ra
                  blt          sp, a7, 557f
                  lui          s4, 645575
545:              srai         s5, t1, 9
                  nop
                  add          a4, ra, sp
                  or           t0, a3, tp
                  lui          s5, 896273
                  sub          a4, s7, s0
                  lui          sp, 964463
                  slt          t1, s6, s3
                  bltu         a0, a3, 573f
                  sra          zero, a1, s0
                  or           tp, sp, s9
                  xor          zero, t1, t4
557:              or           s9, a2, t5
                  sra          gp, a2, t4
                  srai         s8, a4, 10
                  slli         s1, s1, 20
                  lui          s3, 723245
                  slt          a1, a2, s4
                  andi         tp, s4, 1208
                  sll          s0, s2, ra
                  sll          gp, s2, s7
                  slli         a5, a0, 18
                  nop
                  slti         a4, t0, 1719
                  sub          s8, t1, t4
                  or           a0, s6, t5
                  beq          a2, a5, 580f
                  andi         s4, a4, -325
573:              sll          sp, s11, a2
                  slti         s7, s4, 98
                  sll          s5, a4, s2
                  bltu         a6, t5, 585f
                  blt          t3, zero, 583f
                  slti         a7, s1, 56
                  xor          ra, a5, t2
580:              ori          s8, a7, 171
                  addi         a6, s4, 1183
                  sltiu        a3, s9, 44
583:              beq          a5, s8, 584f
584:              and          s10, a4, zero
585:              sll          t6, a1, s10
                  srai         s11, t4, 15
                  addi         s5, s2, -1986
                  sll          s9, zero, s8
                  slli         a2, a0, 17
                  slli         t2, s6, 8
                  andi         gp, s3, 210
                  xori         zero, s11, -1730
                  sra          s1, a5, t2
                  lui          a3, 621691
                  addi         a1, s5, 1066
                  blt          s6, a7, 612f
                  and          s4, s2, s7
                  add          s5, s5, a4
                  lui          gp, 317621
                  nop
                  slli         a0, s8, 2
                  add          a0, t6, gp
                  sltu         a6, sp, a6
                  srl          a6, s9, a4
                  bgeu         ra, t0, 609f
                  sra          zero, t6, s9
                  srl          s2, a4, gp
                  or           a4, t6, a3
609:              or           s2, a3, t3
                  andi         a7, s7, -692
                  bgeu         s9, a6, 627f
612:              addi         s0, s8, -1971
                  bge          t0, a4, 625f
                  bne          t4, s7, 622f
                  or           s1, s6, s2
                  sltiu        s9, a2, 1599
                  sub          s0, t6, gp
                  nop
                  and          t1, s10, s7
                  bge          t1, zero, 635f
                  srl          zero, s10, s2
622:              andi         s5, t6, 1953
                  srli         s8, s11, 30
                  sll          t2, a2, s6
625:              slti         t5, s7, 461
                  ori          sp, t1, -1564
627:              slt          s9, a7, a3
                  slti         ra, s11, -1439
                  slt          s0, s7, t0
                  or           a4, a4, zero
                  sltiu        s11, s9, -1830
                  and          t0, tp, t5
                  srl          a5, s5, t2
                  auipc        sp, 453813
635:              sll          a7, s1, sp
                  bne          s9, s7, 646f
                  xor          s0, s0, s3
                  sub          t6, s10, s6
                  andi         t1, a0, 140
                  xor          t6, t1, s10
                  auipc        t1, 296556
                  nop
                  sll          gp, t2, s7
                  add          tp, t1, s9
                  srl          a6, s11, t3
646:              addi         s8, s8, 197
                  xor          s5, a4, t4
                  sra          a3, s1, s4
                  or           s4, s6, s0
                  beq          s8, s5, 670f
                  xori         s4, s11, -1309
                  nop
                  bge          a5, s1, 660f
                  and          a7, s7, t2
                  bltu         s4, s9, 674f
                  bge          s9, zero, 676f
                  andi         t2, s0, -407
                  nop
                  beq          a7, a1, 675f
660:              auipc        s1, 124187
                  andi         s2, s4, 1093
                  bltu         tp, t0, 668f
                  sll          a6, s11, s11
                  slt          sp, t4, t4
                  bgeu         a1, s5, 675f
                  or           a3, a5, a5
                  bge          s5, s9, 676f
668:              beq          ra, gp, 676f
                  sll          a6, s5, s1
670:              bltu         s5, s3, 685f
                  nop
                  bgeu         a4, ra, 683f
                  add          s10, t6, t4
674:              andi         s5, s11, -1585
675:              and          a6, s9, zero
676:              auipc        a4, 123476
                  slli         a5, t3, 20
                  sub          t5, t0, s0
                  ori          t2, s1, 723
                  bgeu         a6, s10, 694f
                  bltu         s0, tp, 685f
                  srli         s5, s7, 18
683:              sltiu        a2, ra, -1484
                  beq          t0, s5, 686f
685:              srli         s10, s8, 10
686:              sltu         s5, a2, s1
                  xor          t6, s0, a1
                  srli         a0, s2, 9
                  slti         a4, zero, -1171
                  and          t1, a1, s5
                  bge          t5, ra, 699f
                  beq          a0, gp, 701f
                  and          ra, a4, gp
694:              nop
                  srai         ra, t3, 9
                  addi         a3, sp, -1055
                  sra          a3, a0, a1
                  add          a6, s0, a2
699:              srli         tp, t1, 4
                  bne          t6, s10, 702f
701:              blt          t2, a6, 705f
702:              xor          t2, s6, s0
                  srl          sp, t4, s5
                  andi         a5, t3, 577
705:              bne          s10, a7, 725f
                  or           tp, a4, gp
                  slti         s1, gp, 1354
                  srl          a5, s6, zero
                  slli         t2, gp, 19
                  add          s0, t6, t1
                  sub          a3, s7, t0
                  or           s10, a2, sp
                  bne          a0, s6, 714f
714:              andi         s9, tp, 627
                  blt          t1, s0, 735f
                  bne          s8, sp, 725f
                  srai         t5, s2, 0
                  srli         a1, t0, 22
                  blt          s6, zero, 727f
                  srli         t0, a3, 22
                  add          a3, a7, zero
                  beq          a5, s9, 734f
                  xor          a4, t5, a5
                  addi         a5, t6, 1467
725:              bge          s11, s6, 732f
                  add          s0, zero, t2
727:              sra          t2, a3, s9
                  srli         zero, s0, 21
                  xor          s2, s2, s2
                  or           a0, t3, s0
                  auipc        s10, 170256
732:              bgeu         t6, ra, 740f
                  add          gp, s9, s0
734:              srl          s5, a7, tp
735:              bne          a2, zero, 746f
                  auipc        t1, 167488
                  sltiu        t0, a6, -2007
                  addi         s5, t0, -1310
                  beq          t1, s8, 758f
740:              bne          sp, gp, 756f
                  srai         tp, t0, 31
                  srli         s5, s5, 2
                  xor          s2, s11, a2
                  bgeu         t6, a4, 751f
                  bgeu         s2, s5, 765f
746:              lui          t2, 737882
                  sub          a2, zero, s4
                  ori          s10, a6, 1333
                  or           s4, s3, s7
                  srai         s5, s10, 20
751:              bge          s1, t5, 755f
                  beq          s4, s0, 754f
                  auipc        t0, 260950
754:              beq          tp, t5, 770f
755:              or           t6, t0, s1
756:              addi         s8, s5, 567
                  blt          t6, a5, 768f
758:              bne          a0, s6, 764f
                  sll          s5, ra, tp
                  lui          tp, 410010
                  xori         gp, t0, -765
                  or           s2, s1, s3
                  lui          s8, 743126
764:              srl          s5, s10, zero
765:              sltiu        t0, s11, 806
                  add          s5, t6, a7
                  blt          t1, gp, 778f
768:              add          sp, t2, s2
                  andi         s5, a0, -1341
770:              bge          ra, a0, 780f
                  slt          s2, t1, zero
                  sub          a2, tp, a0
                  xor          s0, a4, s1
                  slt          a1, gp, a2
                  or           s9, t3, t0
                  xori         a3, zero, -1170
                  addi         a3, t4, -905
778:              blt          t4, t6, 782f
                  sll          s7, s9, s8
780:              bge          s6, s6, 784f
                  or           a7, s10, t4
782:              nop
                  sra          t5, s4, s9
784:              slli         s5, s6, 26
                  sltiu        s11, tp, -376
                  xor          s10, s8, s0
                  srai         a7, s7, 1
                  ori          t1, t6, 713
                  srl          t5, a3, a3
                  sub          a7, s2, t4
                  srl          ra, t1, s2
                  srl          a7, s3, s8
                  bge          a6, t6, 800f
                  srli         ra, s10, 10
                  sltiu        t5, s2, -1760
                  and          s2, s4, sp
                  slt          s0, sp, gp
                  or           s7, t2, s3
                  bgeu         s6, s6, 807f
800:              bgeu         t4, a7, 809f
                  sll          tp, s7, a5
                  sub          zero, ra, a6
                  sub          s0, a4, tp
                  add          s11, a3, a6
                  sra          a4, sp, a2
                  ori          s4, t6, -1504
807:              blt          s5, s11, 822f
                  sltiu        s8, s4, 1482
809:              andi         ra, gp, -1293
                  auipc        a2, 579336
                  lui          a2, 184619
                  nop
                  xor          a1, s1, a0
                  sltiu        s7, a0, 102
                  andi         s11, t6, -830
                  xori         a7, s1, 274
                  lui          a3, 1792
                  or           t0, a6, a6
                  xor          s2, zero, a7
                  lui          s0, 65498
                  auipc        s9, 274033
822:              sub          a2, s8, s1
                  or           tp, t5, s0
                  addi         s9, s9, -864
                  srl          a7, ra, t2
                  slt          zero, tp, s11
                  auipc        gp, 166181
                  andi         s4, a7, -2014
                  srli         a3, s2, 13
                  andi         a3, gp, -372
                  sub          s10, s1, s10
                  sltu         a0, a3, t3
                  addi         s10, a3, -654
                  and          t6, t2, a7
                  sltiu        s0, t6, -1834
                  bne          t5, s4, 837f
837:              srl          t0, a2, s5
                  bgeu         s7, s6, 840f
                  srai         s7, t6, 26
840:              addi         t5, a7, -1429
                  xori         t5, sp, 705
                  beq          s3, s7, 858f
                  slt          ra, gp, s9
                  srli         a7, s11, 17
                  andi         s3, t5, -1806
                  auipc        s3, 909082
                  slt          s2, s8, s5
                  and          t1, s10, s2
                  sltu         t1, s6, a7
                  bgeu         s0, s10, 854f
                  beq          gp, a2, 860f
                  auipc        a1, 696925
                  addi         sp, zero, 391
854:              nop
                  srl          a5, t4, a1
                  xori         t6, a4, 1435
                  sll          t0, s11, s3
858:              auipc        s5, 790013
                  andi         a0, s9, -2020
860:              or           s11, t4, s6
                  add          t2, t5, gp
                  sltiu        tp, s10, -1200
                  andi         s11, s4, 954
                  sltiu        tp, s8, -383
                  blt          s9, t6, 867f
                  srai         s9, a5, 25
867:              nop
                  addi         s1, s5, 1468
                  bgeu         s11, t0, 889f
                  sltiu        a0, ra, 1362
                  blt          tp, s9, 885f
                  sra          gp, sp, s6
                  nop
                  auipc        s7, 368439
                  slli         s5, s2, 1
                  sltiu        a7, s8, 372
                  sltu         s11, s0, s1
                  slli         gp, zero, 5
                  addi         t0, s6, 1453
                  ori          a1, t3, -396
                  sltiu        t0, t2, -828
                  bge          s11, s1, 889f
                  bgeu         s7, s0, 891f
                  slt          s7, s9, s10
885:              sll          t6, a0, a5
                  bne          t3, t3, 905f
                  auipc        tp, 609337
                  lui          s1, 569675
889:              ori          a0, t1, 1184
                  sub          zero, s1, a3
891:              blt          t0, a1, 893f
                  srli         a5, t3, 20
893:              or           a1, t2, s7
                  beq          s6, s2, 906f
                  sub          s2, t1, t1
                  lui          a2, 688268
                  srli         t0, t1, 17
                  addi         a5, s11, 201
                  blt          tp, t2, 919f
                  beq          s6, s11, 909f
                  sra          s4, a7, s6
                  srli         ra, ra, 14
                  blt          a2, s1, 919f
                  srai         s1, a7, 14
905:              and          a4, a3, s2
906:              and          a5, a4, sp
                  bge          s10, a2, 915f
                  bge          tp, a1, 928f
909:              bne          s4, a6, 925f
                  sll          a4, ra, a7
                  slti         a5, t5, -855
                  bne          ra, zero, 920f
                  bltu         s10, gp, 932f
                  or           s9, s3, s9
915:              slli         s7, tp, 28
                  xor          s2, s1, a7
                  lui          s10, 911865
                  sra          tp, s11, a4
919:              bgeu         t4, s5, 935f
920:              lui          s10, 44473
                  sra          a7, gp, s3
                  addi         a4, s11, -936
                  beq          ra, zero, 935f
                  bltu         a3, a3, 928f
925:              add          s9, a5, s5
                  srl          t5, s9, ra
                  ori          t2, t4, 563
928:              bltu         s1, a5, 929f
929:              beq          zero, a2, 945f
                  sra          sp, t6, s7
                  lui          s0, 551866
932:              sltiu        s5, t6, 292
                  addi         a3, t3, -624
                  xor          s9, s6, sp
935:              andi         a7, s9, -821
                  slli         t2, s8, 30
                  slt          s1, a0, t2
                  lui          gp, 495627
                  bltu         t0, a2, 948f
                  xor          s1, t0, a6
                  add          s11, t6, ra
                  blt          s2, ra, 953f
                  ori          t5, s5, 552
                  srli         s0, t2, 4
945:              bgeu         s6, t5, 965f
                  xor          s8, ra, s9
                  blt          s5, s11, 967f
948:              lui          s3, 1034469
                  bge          s0, zero, 953f
                  sll          s3, s2, s9
                  beq          a4, s3, 966f
                  slt          t1, s2, s2
953:              blt          a3, sp, 955f
                  bltu         s10, a4, 961f
955:              bge          a2, sp, 961f
                  sll          sp, s8, t0
                  lui          zero, 266630
                  sltiu        tp, t6, -219
                  beq          s6, s6, 968f
                  sra          s7, s10, a7
961:              bltu         a0, a5, 969f
                  sra          t1, s8, a5
                  and          s2, t2, a4
                  xori         a2, s9, 1758
965:              lui          t1, 432129
966:              or           a5, s9, tp
967:              add          a4, s4, a7
968:              bne          a5, s5, 984f
969:              slti         tp, s8, -1996
                  bge          s1, a5, 984f
                  lui          ra, 390069
                  addi         a1, s4, -767
                  slli         a7, zero, 5
                  slli         t5, a0, 20
                  blt          s3, ra, 983f
                  lui          a5, 881113
                  add          s9, zero, s1
                  nop
                  srl          a4, a7, s4
                  nop
                  lui          t2, 1046892
                  srai         a1, a5, 30
983:              nop
984:              xor          s0, t6, t0
                  ori          t2, s10, -286
                  auipc        sp, 781397
                  slt          a4, t5, t3
                  sltu         t5, a5, a0
                  sll          ra, zero, t1
                  sll          t0, t1, tp
                  xori         a0, a4, -899
                  sub          s0, ra, a5
                  lui          a0, 853020
                  bltu         a3, t1, 1005f
                  nop
                  sra          a2, gp, s10
                  sra          a7, a0, a0
                  ori          s10, t5, -263
                  andi         s2, s10, -72
                  nop
                  xor          s1, s3, gp
                  srli         ra, tp, 14
                  slli         a7, a4, 3
                  nop
1005:             xor          s7, ra, t6
                  srli         a5, a1, 3
                  srl          t1, a0, s5
                  xori         a5, t5, -73
                  srl          gp, t0, a1
                  sub          t5, t3, s3
                  bne          s0, a6, 1019f
                  sll          s11, s11, s1
                  slt          s5, ra, t4
                  slti         s11, a4, 663
                  blt          a6, a4, 1017f
                  ori          ra, s3, 1386
1017:             bge          s8, tp, 1025f
                  lui          t1, 314777
1019:             sltiu        tp, tp, -498
                  srai         tp, t2, 13
                  addi         a6, a4, -1929
                  or           t5, t2, t0
                  xori         s11, ra, -85
                  add          gp, a5, s3
1025:             sltiu        s9, t1, 938
                  bgeu         gp, tp, 1035f
                  or           t1, a2, a3
                  srli         a0, ra, 6
                  andi         t6, a0, -875
                  slt          a3, s7, s9
                  srli         a0, s10, 6
                  sra          s11, a6, s10
                  srl          s10, s0, s9
                  srl          s9, s7, s2
1035:             xor          a6, a2, zero
                  lw           ra, 4(t3)
                  nop
                  xor          s7, s10, s1
                  ori          s2, t5, -333
                  sltu         s3, s6, s6
                  nop
                  addi         t3, t3, 16
                  and          gp, s0, s2
                  sltu         sp, s4, a3
                  sra          a2, s5, a6
                  or           t6, s3, s4
                  srai         gp, s2, 25
1466:             addi x20, x1, 0
1466:             jalr x20, x20, 0
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x29, x28, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x21, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x21, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x21, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x21, x31, ecall_handler
                  li x31, 0x1
                  beq x21, x31, instr_fault_handler
                  li x31, 0x5
                  beq x21, x31, load_fault_handler
                  li x31, 0x7
                  beq x21, x31, store_fault_handler
                  li x31, 0xc
                  beq x21, x31, pt_fault_handler
                  li x31, 0xd
                  beq x21, x31, pt_fault_handler
                  li x31, 0xf
                  beq x21, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x28, x29, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x29, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x29, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x28, x29, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x28, x29, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x28, x29, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
