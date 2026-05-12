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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x4
                  li x2, 0x3
                  li x3, 0x80000000
                  li x4, 0x93802cc7
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xf20f0396
                  li x8, 0x0
                  li x9, 0x80000000
                  li x11, 0x9d8cdc69
                  li x12, 0xf9f665e8
                  li x13, 0x80000000
                  li x14, 0xfb41c53a
                  li x15, 0xa70cfbe6
                  li x16, 0x0
                  li x17, 0x8
                  li x18, 0xb
                  li x20, 0xfd83a7a1
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xc535d77d
                  li x24, 0x7c188428
                  li x25, 0x80000000
                  li x26, 0xf7f6cc56
                  li x27, 0xfa453eed
                  li x28, 0xf03021e0
                  li x29, 0xfa676f03
                  li x30, 0xf28321d1
                  li x31, 0x0
                  la x19, user_stack_end
main:             lui          t2, 478783
                  slt          s10, a7, s0
                  la           t1, sub_4
                  slli         t2, s9, 23
                  addi         t1, t1, 341
                  srl          zero, s6, a3
                  srl          s8, s7, a2
                  sltiu        t4, a0, -28
                  sltu         s6, ra, s4
                  srl          ra, s9, t1
main_j2:          jalr         ra, t1, -340 #jump main -> sub_4
                  la           s5, sub_2
                  addi         s5, s5, -479
                  ori          t3, s11, -792
                  slli         t4, s10, 6
                  and          a6, a3, gp
                  bgeu         a6, s1, main_j3 #branch to jump instr
                  srli         s10, t4, 9
                  addi         a3, a1, -1128
main_j3:          jalr         ra, s5, 480 #jump main -> sub_2
                  addi         tp, s8, 1418
                  srai         zero, sp, 15
                  sltiu        tp, t5, 1132
                  la           t4, sub_5
                  addi         t4, t4, -324
                  auipc        a2, 537596
                  sltiu        s11, s2, 482
                  blt          s0, a4, main_j4 #branch to jump instr
                  auipc        a6, 929989
                  slt          s6, t5, a3
                  srl          a3, s7, a7
main_j4:          jalr         ra, t4, 325 #jump main -> sub_5
                  la           t1, sub_1
                  and          sp, t0, s11
                  xori         a5, t5, 1945
                  and          a6, a4, a3
                  addi         t1, t1, 371
                  sltu         t0, t0, s5
                  and          sp, s2, t0
                  sltiu        t5, a4, -624
                  beq          t5, s6, main_j5 #branch to jump instr
                  sltiu        a7, s6, -283
main_j5:          jalr         ra, t1, -370 #jump main -> sub_1
                  la           a3, sub_3
                  slli         gp, a1, 24
                  sll          t3, s9, s1
                  srai         a5, s0, 21
                  addi         a3, a3, -117
                  bgeu         s11, s2, main_j6 #branch to jump instr
                  addi         t2, t4, -819
                  or           s11, s8, s5
                  xor          s0, s10, s7
main_j6:          jalr         ra, a3, 117 #jump main -> sub_3
                  addi         s0, zero, 10 #init loop 0 counter
                  auipc        t0, 650884
                  or           t4, s6, t0
                  addi         s2, zero, -13 #init loop 0 limit
                  xori         tp, t6, -729
                  srli         t5, a7, 31
                  or           t3, s10, s0
                  slti         s4, zero, -759
                  sub          a5, a0, t2
                  lui          s7, 820249
                  and          sp, t2, s8
                  sll          gp, a1, s10
                  ori          s9, s0, -1256
                  sltiu        s6, s8, -507
main_0_0_t:       andi         a5, s8, -1824
                  and          s5, a2, s8
                  add          t0, s5, t5
                  addi         s0, s0, -1 #update loop 0 counter
                  xori         t1, s8, -1044
                  slli         t0, a4, 29
                  and          s10, a5, a0
                  addi         gp, t2, -1953
                  srl          gp, s2, t1
                  srli         t4, tp, 15
                  sll          s5, ra, gp
                  andi         a2, t5, -1119
                  bge          s0, s2, main_0_0_t #branch for loop 0
                  nop
                  sll          t0, s8, zero
                  blt          a2, a1, 6f
                  slti         a7, t2, 754
                  andi         s8, s9, 614
                  sltiu        s2, s3, 1904
                  xori         s11, s10, -1391
6:                bltu         zero, t2, 26f
                  andi         s9, a6, 1229
                  andi         t2, t2, -912
                  xori         s6, s8, 1581
                  bge          t2, t5, 13f
                  srl          t2, s10, s3
                  lui          tp, 510480
13:               nop
                  xor          s11, s2, zero
                  srai         s10, gp, 2
                  and          t4, gp, s4
                  sltu         ra, s9, gp
                  add          t4, s9, s4
                  srl          tp, a1, s7
                  nop
                  lui          t4, 709589
                  bgeu         s5, ra, 27f
                  andi         t2, t2, 1831
                  auipc        tp, 141274
                  slt          t0, a6, s11
                  slt          a6, s9, s2
                  la           t5, sub_5
                  srli         ra, s8, 31
                  srli         gp, s10, 2
                  sra          a4, s9, a4
                  xor          s10, a3, s3
                  addi         t5, t5, 104
                  sll          t0, t4, a4
                  srai         s6, t1, 23
                  blt          t1, s11, main_j1 #branch to jump instr
                  lui          t0, 851284
main_j1:          jalr         ra, t5, -104 #jump main -> sub_5
                  slli         ra, t2, 0
                  bgeu         t2, s2, 42f
26:               lui          a5, 622664
27:               and          gp, s8, zero
                  or           a6, s4, a7
                  srl          s9, t1, t6
                  slt          t0, s0, s9
                  slli         t3, a7, 18
                  addi         s10, s8, -391
                  slli         s11, t1, 21
                  ori          s11, s9, -452
                  blt          s7, t3, 47f
                  slti         s8, a1, -295
                  bne          s8, a7, 44f
                  slli         s4, s7, 14
                  bne          s8, sp, 47f
                  slti         s1, t5, 1522
                  bne          a6, a2, 45f
42:               xor          a5, a6, s6
                  sll          a3, sp, a5
44:               sll          s0, a4, t3
45:               sll          s7, zero, t0
                  xor          s8, a7, a7
47:               bne          s6, zero, 49f
                  or           t3, zero, s6
49:               blt          s2, a1, 64f
                  bne          s7, a7, 69f
                  sra          s6, t0, t5
                  ori          s2, t0, 732
                  bgeu         a6, s0, 72f
                  bne          s7, t0, 70f
                  srli         sp, sp, 11
                  blt          s7, ra, 64f
                  lui          a3, 142692
                  lui          a2, 174633
                  blt          s2, s6, 73f
                  addi         a7, sp, -1591
                  srai         a1, a1, 29
                  add          s8, s1, t0
                  slli         a5, t4, 15
64:               addi         zero, s10, 1383
                  srli         s9, s0, 23
                  slli         a2, a1, 10
                  srl          s0, t0, s2
                  and          s1, s1, t3
69:               nop
70:               andi         t0, a2, 466
                  bgeu         zero, t3, 84f
72:               addi         zero, s4, 1570
73:               andi         a5, tp, 799
                  xor          tp, tp, a7
                  bne          a2, s3, 93f
                  slt          s1, a1, s7
                  or           ra, s4, a1
                  sub          t3, s1, t1
                  bge          gp, gp, 91f
                  bne          t5, gp, 82f
                  sltiu        s9, gp, -266
82:               slli         a4, s9, 0
                  bgeu         s9, t3, 94f
84:               lui          s0, 460982
                  slt          s8, a0, s1
                  slti         s0, zero, -431
                  srl          s5, a3, a5
                  bgeu         a7, zero, 94f
                  add          gp, s8, t5
                  sra          s5, a1, a2
91:               bltu         a3, tp, 94f
                  add          a2, s4, s2
93:               sub          s8, s5, t6
94:               andi         a1, gp, 176
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bgeu         a5, t5, sub_2_stack_p
                  sltiu        zero, a1, -1738
                  sll          a3, s6, tp
                  sltiu        a4, a4, -1162
                  slli         a6, a7, 14
sub_2_stack_p:    addi         s3, s3, -40
                  sw           ra, 4(s3)
                  srl          t3, t0, t0
                  addi         s11, zero, 3 #init loop 1 counter
                  sltu         s9, s4, t1
                  auipc        a6, 415560
                  addi         t4, a5, -1927
                  andi         s0, a2, -1490
                  add          s10, sp, s10
                  auipc        s0, 832274
                  addi         s4, zero, 3 #init loop 1 limit
                  andi         a6, s4, 1496
sub_2_7_1_t:      nop
                  addi         s11, s11, -1 #update loop 1 counter
                  xori         s9, a6, 2008
                  auipc        s8, 31258
                  andi         a7, a4, 38
                  sltiu        s6, s11, 763
                  xori         zero, s4, -44
                  srai         sp, zero, 20
                  sltu         a6, t3, a0
                  addi         t3, zero, -2 #init loop 0 counter
                  addi         tp, zero, 18 #init loop 0 limit
                  srli         t0, s5, 9
                  add          a3, a3, zero
sub_2_7_0_t:      ori          a7, t6, -809
                  sltu         a7, s1, a4
                  sub          s9, a4, t3
                  addi         t3, t3, 6 #update loop 0 counter
                  sltiu        t4, s5, -912
                  bltu         t3, tp, sub_2_7_0_t #branch for loop 0
                  andi         s7, ra, 552
                  sra          s8, a2, s0
                  and          ra, s7, a5
                  bgeu         s11, s4, sub_2_7_1_t #branch for loop 1
                  nop
                  addi         a7, zero, -1 #init loop 1 counter
                  addi         s4, zero, 8 #init loop 1 limit
sub_2_3_1_t:      add          t5, s9, a2
                  addi         a7, a7, 3 #update loop 1 counter
                  addi         s7, zero, 5 #init loop 0 counter
                  addi         a2, zero, 3 #init loop 0 limit
sub_2_3_0_t:      sltu         t5, zero, s9
                  addi         s7, s7, -1 #update loop 0 counter
                  bgeu         s7, a2, sub_2_3_0_t #branch for loop 0
                  blt          a7, s4, sub_2_3_1_t #branch for loop 1
                  lui          t5, 608569
                  addi         a7, zero, -9 #init loop 1 counter
                  addi         t0, zero, -19 #init loop 1 limit
sub_2_8_1_t:      and          zero, a0, s3
                  addi         a7, a7, -6 #update loop 1 counter
                  and          a4, t6, zero
                  addi         s5, zero, 10 #init loop 0 counter
                  addi         t5, zero, 10 #init loop 0 limit
sub_2_8_0_t:      lui          s1, 317887
                  addi         s5, s5, -8 #update loop 0 counter
                  bgeu         s5, t5, sub_2_8_0_t #branch for loop 0
                  bge          a7, t0, sub_2_8_1_t #branch for loop 1
                  srli         s6, t1, 23
                  addi         s2, zero, 4 #init loop 1 counter
                  addi         s4, zero, 19 #init loop 1 limit
sub_2_9_1_t:      add          s9, t5, gp
                  addi         s2, s2, 4 #update loop 1 counter
                  addi         s8, zero, 0 #init loop 0 counter
                  addi         t2, zero, 2 #init loop 0 limit
sub_2_9_0_t:      andi         zero, zero, -954
                  slli         a7, a1, 23
                  addi         s8, s8, 3 #update loop 0 counter
                  bltu         s8, t2, sub_2_9_0_t #branch for loop 0
                  bltu         s2, s4, sub_2_9_1_t #branch for loop 1
                  srli         sp, a2, 6
                  addi         s4, zero, -5 #init loop 0 counter
                  addi         a6, zero, -2 #init loop 0 limit
sub_2_6_0_t:      addi         tp, s4, -652
                  sll          s0, ra, a4
                  addi         s4, s4, 4 #update loop 0 counter
                  add          a7, zero, s10
                  blt          s4, a6, sub_2_6_0_t #branch for loop 0
                  slli         t1, s9, 29
                  addi         a4, zero, -5 #init loop 0 counter
                  sltiu        t4, t4, 652
                  sltu         ra, t2, a5
                  srai         t0, a4, 18
                  addi         a1, zero, 20 #init loop 0 limit
sub_2_0_0_t:      auipc        a3, 942922
                  srai         s10, zero, 30
                  addi         a7, s8, -1372
                  and          s2, a2, a4
                  addi         s7, a3, 764
                  add          s0, a5, gp
                  sra          zero, a1, s6
                  ori          a2, t2, 1147
                  add          a3, s1, s1
                  srai         a3, a4, 0
                  addi         a4, a4, 5 #update loop 0 counter
                  sltiu        t5, s8, -408
                  lui          t2, 632915
                  ori          t5, t0, 1145
                  blt          a4, a1, sub_2_0_0_t #branch for loop 0
                  auipc        s8, 544721
                  addi         tp, zero, 3 #init loop 0 counter
                  slt          a4, s1, s10
                  addi         a5, zero, 10 #init loop 0 limit
sub_2_4_0_t:      ori          a6, gp, 1398
                  slti         t3, a2, 973
                  and          s8, s11, a7
                  xor          a6, sp, s8
                  slti         a6, t3, -6
                  addi         tp, tp, 6 #update loop 0 counter
                  xori         sp, s1, 743
                  lui          t4, 509933
                  ori          s0, s5, 1442
                  bltu         tp, a5, sub_2_4_0_t #branch for loop 0
                  slti         s10, a2, -1008
                  addi         a5, zero, 1 #init loop 0 counter
                  add          s8, a7, s0
                  srai         t5, s5, 0
                  addi         s7, zero, 16 #init loop 0 limit
                  xor          a1, s4, a4
                  or           ra, a2, t4
                  nop
                  sub          s9, t3, a6
                  add          s10, a3, s6
                  auipc        s6, 620981
                  srai         a6, a1, 21
                  srli         s1, t0, 13
                  and          a3, t1, sp
                  sub          tp, s9, gp
                  nop
                  addi         s11, a1, 791
sub_2_2_0_t:      ori          s9, s9, 84
                  sltiu        t5, a5, -1384
                  sra          t4, a1, zero
                  slli         t2, s9, 26
                  slli         s5, s1, 1
                  addi         s9, s10, -1113
                  addi         a5, a5, 2 #update loop 0 counter
                  srl          t5, s11, t3
                  nop
                  add          t3, ra, a5
                  or           gp, t1, s3
                  bltu         a5, s7, sub_2_2_0_t #branch for loop 0
                  srai         a6, s2, 29
                  addi         s10, zero, -4 #init loop 0 counter
                  srai         s5, a6, 11
                  addi         t3, zero, 4 #init loop 0 limit
                  add          sp, a1, s2
sub_2_1_0_t:      and          a1, s0, s1
                  addi         gp, a2, 710
                  ori          a5, t0, -1014
                  addi         s10, s10, 4 #update loop 0 counter
                  slt          s2, s1, a0
                  nop
                  addi         t5, s4, 1225
                  or           t0, s6, s11
                  bne          s10, t3, sub_2_1_0_t #branch for loop 0
                  andi         t0, sp, -1352
                  beq          t0, s0, 11f
                  sub          zero, a4, a4
                  and          a2, a6, a0
                  srai         t2, t5, 25
                  or           a1, s8, a1
                  nop
                  sub          t0, t5, sp
                  beq          t5, s3, 20f
                  srai         t2, zero, 29
                  sub          s7, s8, a6
                  srl          a1, s11, t0
11:               auipc        t1, 520684
                  sra          tp, a3, s9
                  addi         a5, t3, -1686
                  and          s6, a6, s7
                  add          t4, t5, s7
                  blt          a7, ra, 28f
                  slt          a7, s8, s1
                  lui          t2, 645235
                  lui          t3, 168639
20:               srli         t2, t4, 16
                  xori         s5, tp, 1775
                  blt          t5, sp, 36f
                  srli         t4, t4, 7
                  ori          a3, s1, 412
                  slti         sp, a2, 1924
                  auipc        a4, 997943
                  addi         a1, s8, -1890
28:               bgeu         t5, a0, 48f
                  and          s7, a5, a1
                  srli         t2, t0, 21
                  addi         t2, a5, 1814
                  xori         s10, a3, -1396
                  xor          a6, a0, a3
                  blt          a7, t1, 49f
                  xori         s2, t4, 173
36:               lui          s11, 963020
                  slti         t2, s8, 148
                  lui          s9, 132108
                  blt          t2, t6, 44f
                  sub          a3, t4, s11
                  bge          t5, t0, 47f
                  auipc        t0, 513173
                  bltu         s11, s8, 46f
44:               bltu         s6, zero, 64f
                  slt          tp, a4, t0
46:               blt          a3, s1, 55f
47:               sltiu        tp, s3, -769
48:               add          gp, a5, s10
49:               add          a1, a4, a0
                  or           s4, t1, t3
                  addi         zero, t6, -1644
                  bge          s1, t3, 67f
                  or           s6, t3, a0
                  auipc        a7, 951909
55:               srai         s7, s2, 18
                  ori          gp, s4, 1173
                  andi         t4, s1, -439
                  slli         tp, a1, 16
                  bgeu         gp, s11, 79f
                  bltu         gp, zero, 64f
                  add          s0, sp, a4
                  bgeu         ra, t5, 69f
                  auipc        gp, 816590
64:               srai         tp, s2, 26
                  bgeu         t4, t4, 83f
                  slt          t0, s1, a7
67:               sub          t0, s3, s11
                  blt          a5, gp, 81f
69:               sll          gp, s9, t5
                  or           t3, a5, a3
                  srli         ra, t3, 0
                  slti         a6, a5, 1917
                  or           t1, a0, t0
                  add          s8, a1, a5
                  bltu         s6, s2, 77f
                  srai         zero, a4, 29
77:               sra          a3, s6, sp
                  nop
79:               srli         s11, a6, 26
                  lui          t2, 1010984
81:               addi         s6, s5, 209
                  sub          s7, s7, s2
83:               beq          s9, t5, 94f
                  addi         a6, s7, 1587
                  bltu         s3, s3, 86f
86:               bge          s10, t3, 94f
                  xori         t5, s7, -444
                  slli         tp, t5, 5
                  addi         s4, zero, -7 #init loop 0 counter
                  auipc        gp, 318113
                  xori         a3, s7, 1349
                  addi         a4, zero, 14 #init loop 0 limit
                  addi         a3, a0, 1114
sub_2_5_0_t:      sltiu        t3, a0, 1045
                  and          s11, a0, s10
                  srai         a5, s6, 6
                  srli         s2, ra, 28
                  nop
                  addi         s4, s4, 9 #update loop 0 counter
                  ori          s10, a4, -826
                  add          s0, a7, a0
                  bltu         s4, a4, sub_2_5_0_t #branch for loop 0
                  sltu         t3, a4, s7
                  bgeu         a1, s11, 97f
                  lui          a1, 783109
                  bne          t6, t4, 110f
                  sub          t5, a2, a6
                  or           t5, a5, gp
94:               and          s5, s9, t6
                  blt          a1, s9, 113f
                  xori         s10, ra, 784
97:               beq          s6, a1, 98f
98:               slti         s11, sp, -660
                  blt          t2, s4, 109f
                  sub          t4, s9, s2
                  ori          s5, t3, -1294
                  auipc        ra, 601071
                  srl          tp, s8, s7
                  or           t0, a2, sp
                  ori          t1, t6, -433
                  addi         s11, sp, 969
                  sub          s8, t1, ra
                  lui          a5, 747965
109:              sll          t2, t0, a3
110:              or           t2, a7, s10
                  bne          s9, s4, 127f
                  addi         s9, s2, -1288
113:              andi         tp, s6, 1751
                  blt          s3, a2, 123f
                  slli         s6, a6, 24
                  slt          s1, gp, s11
                  sub          s10, s4, s2
                  and          a6, s4, s3
                  slli         tp, s3, 4
                  bne          t3, s4, 128f
                  sra          s4, s5, sp
                  bge          s4, a0, 132f
123:              xor          t2, t1, s6
                  bltu         s6, s11, 139f
                  nop
                  nop
127:              ori          a1, t5, -1110
128:              ori          s9, s11, 502
                  bge          sp, s9, 142f
                  nop
                  nop
132:              slti         t1, ra, 869
                  bgeu         t3, a5, 142f
                  beq          s4, s8, 145f
                  slti         t1, gp, 1123
                  slt          zero, t3, s5
                  and          s8, ra, s8
                  addi         ra, t0, 1691
139:              xori         a3, s1, -1298
                  bltu         a1, s1, 154f
                  xori         t3, s0, 1056
142:              xori         t0, a4, 1421
                  auipc        s2, 8324
                  xor          ra, s9, t4
145:              and          s0, t3, a7
                  bltu         s7, s5, 147f
147:              bltu         gp, zero, 154f
                  auipc        t4, 284623
                  slli         a2, s4, 0
                  srai         ra, s4, 7
                  lui          a1, 172190
                  slli         s1, zero, 25
                  sll          tp, t3, s9
154:              add          s1, t6, zero
                  bne          s5, s5, 158f
                  bge          ra, s3, 166f
                  xori         a2, a5, -1675
158:              add          gp, tp, zero
                  srai         s0, a7, 28
                  bgeu         t0, t6, 178f
                  bltu         a5, t3, 165f
                  sltiu        t5, tp, -1200
                  andi         s8, tp, -1060
                  andi         s8, zero, 463
165:              andi         t0, s8, 1137
166:              nop
                  sub          a6, t3, tp
                  xori         a3, t0, 818
                  sra          a2, s4, s9
                  bge          t1, ra, 190f
                  sub          a7, a3, a1
                  nop
                  beq          s0, s10, 182f
                  nop
                  ori          a3, sp, 1492
                  andi         gp, gp, 977
                  auipc        t2, 688333
178:              or           s10, t3, gp
                  lui          a7, 611402
                  xori         a3, a0, 1989
                  ori          s9, t3, 1001
182:              xor          t1, t1, t0
                  xori         a7, s6, -887
                  slt          t3, t4, s5
                  addi         tp, t5, 1217
                  beq          s8, s6, 205f
                  bgeu         t0, tp, 207f
                  slt          a5, t5, s11
                  auipc        t2, 379861
190:              auipc        s4, 596001
                  xor          gp, s11, a5
                  auipc        s2, 436874
                  srli         s10, a5, 8
                  lui          s2, 93112
                  sub          gp, t3, s11
                  bltu         t5, s2, 204f
                  sll          gp, s2, a4
                  sltu         a7, t6, a4
                  sub          s5, s11, gp
                  blt          s5, s11, 208f
                  xor          t0, a0, a4
                  srai         t3, s6, 0
                  andi         t5, a0, 421
204:              blt          a0, s11, 215f
205:              add          a2, s4, a5
                  slt          s2, s4, t3
207:              sll          s0, s3, s3
208:              add          t2, t0, s8
                  beq          s10, a2, 221f
                  xori         a5, ra, 818
                  auipc        s9, 1035344
                  srli         s9, sp, 26
                  addi         s2, t2, -1414
                  auipc        s1, 305253
215:              sub          t2, s9, ra
                  xor          sp, s0, a6
                  ori          s9, t0, -353
                  srli         a3, s10, 31
                  sltu         s10, sp, s0
                  sltiu        t2, s2, 2042
221:              sltiu        t4, sp, 134
                  sll          a4, a5, a3
                  bltu         s7, s2, 231f
                  bgeu         t2, a6, 244f
                  beq          t6, s11, 238f
                  bgeu         t1, s8, 228f
                  lui          s11, 639681
228:              blt          a7, tp, 246f
                  lui          a1, 266311
                  slli         a5, t2, 17
231:              slli         s11, t6, 1
                  beq          a6, t0, 242f
                  bltu         a2, a1, 238f
                  sltiu        t0, s1, -1089
                  bne          t3, a4, 236f
236:              bgeu         t0, t5, 252f
                  addi         a4, s8, -1074
238:              sll          gp, s6, t1
                  addi         gp, s10, 2029
                  slt          a3, a4, tp
                  sub          s7, t6, s2
242:              slli         ra, gp, 13
                  auipc        s5, 177554
244:              sra          a1, s0, a3
                  srai         t1, a5, 10
246:              auipc        s5, 749156
                  slli         t2, zero, 19
                  bne          s7, a6, 263f
                  srai         s0, t6, 28
                  addi         t4, s3, -1815
                  xor          a4, s3, t6
252:              bne          t3, s10, 258f
                  nop
                  sltiu        s9, t3, -1256
                  auipc        s8, 839388
                  srai         s6, s7, 5
                  slt          gp, a3, a2
258:              sll          sp, s5, a3
                  srl          zero, zero, a5
                  bltu         a5, ra, 271f
                  auipc        a5, 923914
                  sltu         a7, zero, tp
263:              sll          s2, a0, s5
                  sltiu        s4, a5, 959
                  bgeu         t2, a5, 277f
                  srai         tp, s8, 17
                  bgeu         a3, a3, 271f
                  srl          s5, zero, a5
                  sll          a4, t1, ra
                  andi         s2, t6, 396
271:              andi         s5, s10, -69
                  beq          a5, a2, 286f
                  srl          sp, a6, s6
                  slt          s0, s4, t5
                  bltu         a2, s2, 277f
                  sra          s8, s4, s2
277:              add          s2, s8, s2
                  srl          a6, s8, gp
                  slt          s7, a2, zero
                  nop
                  add          s2, t6, t1
                  auipc        a7, 207240
                  auipc        a2, 625453
                  slli         sp, s1, 31
                  srl          t0, s6, s9
286:              srai         s6, a2, 9
                  lui          zero, 378130
                  sltu         t4, t0, s10
                  nop
                  xor          s10, t2, s4
                  or           s7, s2, a1
                  slt          t5, s5, a1
                  bge          a5, t6, 303f
                  bne          t1, a3, 300f
                  srli         s11, s7, 28
                  beq          a4, tp, 311f
                  xor          tp, s1, s6
                  xori         s9, a5, 840
                  slli         s0, gp, 18
300:              auipc        t0, 697727
                  bltu         t2, s5, 314f
                  sra          s10, t5, a1
303:              sltiu        a2, s11, 1907
                  auipc        a4, 683625
                  sra          t0, a3, t3
                  nop
                  xori         t5, a7, -592
                  andi         ra, a3, -679
                  srai         a5, a3, 6
                  andi         sp, t6, -1894
311:              bge          a2, gp, 319f
                  srli         s5, t1, 0
                  or           t4, tp, s4
314:              add          t3, s11, s5
                  srai         t3, tp, 25
                  sra          a5, t5, s0
                  beq          a2, s9, 337f
                  xori         s7, t6, -241
319:              slli         tp, s6, 8
                  or           a1, tp, a4
                  auipc        t4, 17833
                  slt          t4, s2, s11
                  lui          a5, 1028380
                  slt          s5, gp, s7
                  srl          s7, t4, zero
                  nop
                  xor          s2, t2, s8
                  bgeu         t4, s3, 344f
                  nop
                  srai         tp, s7, 13
                  srl          sp, gp, a1
                  blt          t3, s0, 350f
                  slt          s0, a1, t3
                  blt          a5, s3, 342f
                  addi         s0, gp, -1172
                  bge          t2, t2, 354f
337:              and          a7, t5, s8
                  bltu         gp, t6, 348f
                  xor          s2, sp, t1
                  sltiu        a3, a1, -715
                  slt          t1, t1, ra
342:              sra          t4, s3, t3
                  bltu         a1, gp, 346f
344:              sra          tp, s11, s8
                  nop
346:              srl          gp, a5, t3
                  srl          s8, t5, s6
348:              bne          a7, t3, 368f
                  and          t4, s7, s3
350:              blt          t3, a7, 351f
351:              sub          zero, s2, s5
                  slti         a4, ra, -1402
                  xori         a1, s0, -753
354:              sltu         t4, s2, t5
                  slt          t2, s11, a6
                  slli         s1, s6, 2
                  slti         zero, a5, 1302
                  lui          t4, 894050
                  ori          sp, a3, 89
                  bge          a1, ra, 380f
                  blt          a1, a5, 370f
                  sra          sp, s8, ra
                  slt          a2, a7, a0
                  addi         a5, a2, -1420
                  auipc        a1, 72718
                  srl          s6, a7, gp
                  bge          t1, s3, 382f
368:              xor          s7, s0, gp
                  sll          s4, t3, s3
370:              addi         s4, zero, 641
                  ori          s1, t6, -227
                  sltu         t4, a0, tp
                  bge          gp, s3, 382f
                  lui          s4, 404954
                  slti         s6, t1, -1134
                  srl          s0, s3, zero
                  bltu         t3, t2, 382f
                  slti         t5, t2, 1388
                  or           ra, s10, t0
380:              addi         s5, a0, 510
                  sltu         a6, s11, a0
382:              lui          t2, 997956
                  nop
                  srli         a2, sp, 15
                  add          s6, sp, a5
                  andi         a2, a6, -381
                  bgeu         zero, t4, 395f
                  auipc        zero, 669465
                  addi         ra, s1, 768
                  slt          gp, a2, s2
                  or           gp, zero, t6
                  sll          s2, sp, a6
                  beq          s8, s9, 400f
                  slt          s8, t0, gp
395:              xori         t5, a1, -354
                  bgeu         a2, tp, 407f
                  sll          a6, t2, t5
                  and          s9, a1, s5
                  bgeu         s6, a6, 418f
400:              nop
                  andi         t4, t2, -1626
                  slt          s4, tp, sp
                  xori         s10, s5, 662
                  auipc        a6, 495588
                  blt          a3, s2, 418f
                  nop
407:              sub          t2, s3, a5
                  xor          sp, s5, zero
                  bne          s4, tp, 410f
410:              lui          t2, 567508
                  xor          a6, a2, t5
                  addi         t3, s9, -1002
                  nop
                  sra          s0, t1, sp
                  bge          a7, t2, 428f
                  sub          t0, t2, zero
                  beq          a6, s9, 427f
418:              xor          tp, t0, t0
                  nop
                  sra          a2, zero, t1
                  sltiu        a3, ra, 1669
                  or           s6, t4, t2
                  srli         a7, s6, 19
                  auipc        tp, 725050
                  blt          s0, s7, 429f
                  xor          t1, s11, t1
427:              lui          t4, 491058
428:              slt          s10, s5, s4
429:              xor          zero, s1, a1
                  andi         gp, t1, -1500
                  bltu         t1, ra, 439f
                  sra          t3, a0, ra
                  slt          t3, s2, s10
                  auipc        t1, 358221
                  nop
                  or           a1, zero, s8
                  ori          s5, ra, 882
                  slt          s1, s9, t1
439:              srli         a2, s0, 18
                  slt          s10, zero, s4
                  slti         s9, a7, -84
                  blt          t2, a2, 454f
                  sll          sp, a5, t6
                  slli         t4, a2, 16
                  or           a1, s1, t2
                  beq          a5, a3, 465f
                  andi         s7, t5, -1548
                  andi         gp, t5, 1966
                  and          t1, t3, a5
                  bne          s11, s5, 451f
451:              sll          s5, s8, s7
                  nop
                  sub          t1, gp, s2
454:              blt          t3, a6, 468f
                  or           tp, s1, a5
                  sra          s6, s5, s2
                  slt          t5, a2, a6
                  andi         a6, t6, -1378
                  sra          a4, t6, s8
                  add          zero, a1, s6
                  bltu         s5, s7, 469f
                  bltu         s5, s2, 473f
                  slli         t4, s10, 17
                  beq          s11, a4, 473f
465:              or           sp, t2, t1
                  sra          a5, s0, sp
                  sub          t4, ra, t3
468:              or           a1, s6, s10
469:              srl          tp, s3, a5
                  sub          t1, s9, s7
                  blt          s9, s7, 489f
                  ori          s7, a7, -1105
473:              slti         s7, a6, 1225
                  andi         zero, t2, 1499
                  or           t2, s2, s0
                  auipc        sp, 126148
                  andi         t4, t0, 1990
                  addi         a2, a0, 766
                  sll          s10, a0, s11
                  slli         t0, s5, 29
                  andi         s6, t0, 286
                  bltu         s3, t1, 487f
                  slti         s9, t6, -865
                  add          s11, s6, t4
                  bgeu         a2, s1, 493f
                  slti         a4, t5, -1765
487:              blt          s11, t1, 494f
                  auipc        t2, 140403
489:              slt          s7, s9, t5
                  slt          t0, s5, a5
                  srli         t1, s1, 31
                  slt          s4, t1, t3
493:              andi         t5, a3, -1151
494:              slt          a6, s11, ra
                  slli         a3, t1, 1
                  slti         s5, t0, 854
                  sltu         ra, s3, s8
                  addi         t1, a0, -407
                  sra          s8, t3, s7
                  auipc        gp, 846927
                  slti         t0, a5, 467
                  bltu         t6, s8, 513f
                  sltu         s6, t6, tp
                  ori          a5, tp, 968
                  bne          gp, t4, 506f
506:              bgeu         a3, a1, 515f
                  bgeu         t3, s1, 515f
                  sra          s1, a4, s7
                  blt          a7, t6, 515f
                  srl          s5, t4, s3
                  srl          t5, a1, t4
                  srai         a2, a3, 15
513:              sltiu        s7, gp, 1889
                  auipc        t3, 502611
515:              srai         t4, t5, 31
                  ori          a7, s11, 1446
                  lw           ra, 4(s3)
                  lui          s0, 1021496
                  slli         a3, t2, 1
                  add          s10, a5, a5
                  slti         s2, t4, -1141
                  addi         sp, t0, 1202
                  sltiu        gp, s11, -2001
                  or           s4, t6, a7
                  addi         s3, s3, 40
                  sra          t5, t4, a5
704:              addi x11, x1, 1
704:              jalr x11, x11, 0
sub_4:            beq          zero, s8, sub_4_stack_p
sub_4_stack_p:    addi         s3, s3, -24
                  slli         s9, t6, 2
                  sll          t5, s10, a7
                  nop
                  sw           ra, 4(s3)
                  slti         t3, a3, -515
                  sub          a5, a4, s2
                  addi         a3, zero, 7 #init loop 0 counter
                  andi         s1, a3, 507
                  srai         s6, a0, 17
                  addi         a6, zero, 3 #init loop 0 limit
                  xor          t3, a2, s5
                  and          a4, s5, s0
sub_4_0_0_t:      andi         t2, s7, 1364
                  addi         a3, a3, -2 #update loop 0 counter
                  slti         s9, s7, -931
                  add          gp, a6, a0
                  slti         gp, s8, -388
                  addi         tp, a2, -1487
                  bgeu         a3, a6, sub_4_0_0_t #branch for loop 0
                  slli         tp, zero, 27
                  addi         tp, zero, 8 #init loop 0 counter
                  sltu         s6, a3, a0
                  srl          a4, t2, t6
                  andi         a2, ra, 1434
                  slt          s0, s6, a2
                  addi         t3, zero, 20 #init loop 0 limit
                  xori         s10, a5, 524
sub_4_1_0_t:      nop
                  slli         s5, a2, 14
                  add          a2, s4, s11
                  srai         ra, s0, 2
                  addi         tp, tp, 2 #update loop 0 counter
                  addi         a2, t0, 159
                  sltu         s9, a4, s6
                  sll          a2, s7, t3
                  srl          s8, s3, s1
                  blt          tp, t3, sub_4_1_0_t #branch for loop 0
                  sra          s9, a2, s10
                  andi         t2, t1, -949
                  bne          ra, a2, 21f
                  bltu         t3, t6, 8f
                  addi         s9, t6, 493
                  beq          t4, a7, 17f
                  slli         gp, tp, 1
                  add          s5, s2, s8
                  slt          a3, s1, a4
8:                bne          ra, sp, 23f
                  bltu         zero, a6, 11f
                  bge          s5, s1, 15f
11:               addi         s2, s0, -1531
                  bne          a4, a5, 32f
                  andi         s9, t1, 1386
                  blt          s10, s5, 34f
15:               or           gp, a0, s3
                  nop
17:               slti         s8, a1, -742
                  slt          a7, a3, ra
                  sra          s9, sp, t3
                  sra          s8, t3, a1
21:               slt          s1, s8, sp
                  srli         s2, ra, 31
23:               addi         t1, t2, 849
                  bgeu         tp, zero, 26f
                  blt          a7, a5, 36f
26:               add          a5, a3, s5
                  ori          s9, t6, -863
                  xori         s10, s5, -601
                  bgeu         s2, s2, 34f
                  xori         s2, gp, -1991
                  xor          gp, s8, t4
32:               sub          sp, a0, s9
                  slli         a3, a7, 13
34:               bltu         a0, s1, 45f
                  nop
36:               lui          gp, 911051
                  lui          sp, 798206
                  andi         t5, a0, 627
                  ori          ra, s1, -564
                  andi         t1, a1, -1434
                  lui          sp, 770705
                  sltiu        a3, s2, 1654
                  andi         a1, a1, 63
                  srai         s10, s6, 5
45:               srli         tp, ra, 9
                  bltu         s1, s3, 56f
                  srli         a5, s0, 3
                  and          a3, gp, a6
                  slti         a1, s0, -1881
                  bne          s4, s7, 55f
                  bne          ra, s11, 69f
                  slli         s2, a2, 6
                  add          gp, t3, a7
                  blt          t1, a1, 63f
55:               slt          ra, gp, t4
56:               or           a7, gp, s3
                  bne          t1, s6, 59f
                  beq          gp, t2, 68f
59:               sltiu        t0, t1, 63
                  sll          ra, s0, s3
                  sltu         sp, ra, s4
                  srli         a7, t6, 22
63:               andi         t4, a2, -587
                  slti         t3, a2, 1385
                  slt          a5, gp, t0
                  bne          a2, a3, 79f
                  nop
68:               add          a5, a2, a7
69:               and          a4, t0, t3
                  sltiu        s0, s5, -1911
                  lui          s10, 48527
                  and          gp, a6, gp
                  slt          t3, s5, t5
                  auipc        a5, 967221
                  and          s10, s5, a7
                  srli         t0, s9, 16
                  sub          a3, s6, a2
                  slt          a7, t1, s10
79:               sra          s9, t3, t0
                  slli         a5, s7, 29
                  sub          s10, s9, s11
                  slti         s9, s5, 1979
                  or           gp, t5, s1
                  ori          s4, ra, -425
                  slt          s4, a2, ra
                  bltu         gp, t2, 87f
87:               nop
                  ori          s2, t2, 1000
                  sub          s9, t1, tp
                  and          t2, s1, s9
                  sra          a1, a0, t1
                  sltu         t0, t1, s1
                  slti         zero, s2, 807
                  bltu         s5, t2, 98f
                  lui          a5, 159682
                  or           t1, s4, s8
                  srl          t2, s1, a4
98:               slli         s11, t2, 22
                  sub          s2, s2, s2
                  sub          s6, s0, ra
                  blt          a6, gp, 110f
                  xori         t5, a0, -324
                  srl          s9, s6, s5
                  lui          s9, 75683
                  nop
                  lui          s2, 1026876
                  bgeu         s2, s1, 122f
                  andi         s11, ra, -1091
                  bltu         a0, a5, 115f
110:              andi         s7, a6, -1820
                  and          a4, s7, a4
                  and          a3, a5, s8
                  srai         gp, t6, 15
                  auipc        sp, 986678
115:              xor          tp, gp, s10
                  srl          a4, ra, t3
                  slt          a6, sp, a0
                  nop
                  addi         s5, t2, -1310
                  slti         gp, a0, 30
                  bgeu         s2, t4, 133f
122:              bne          tp, t0, 129f
                  srai         s5, s5, 31
                  srli         s11, sp, 2
                  srai         a7, s8, 18
                  add          t0, t2, t2
                  beq          a0, s4, 136f
                  xori         gp, a5, 448
129:              auipc        a7, 107949
                  xor          tp, a6, s1
                  or           t2, a0, t6
                  bne          a3, gp, 136f
133:              sltu         t2, s1, t5
                  xori         t4, s9, -285
                  srl          s4, a5, s7
136:              sra          a2, s10, a3
                  nop
                  lw           ra, 4(s3)
                  add          t1, tp, ra
                  slti         s4, s8, -1215
                  andi         t5, s7, 585
                  or           s0, t5, zero
                  auipc        s0, 184905
                  addi         s3, s3, 24
                  auipc        s5, 634525
186:              addi x25, x1, 1
186:              jalr x25, x25, 0
sub_1:            addi         s3, s3, -16
                  xor          s2, a4, s8
                  srai         s10, sp, 16
                  sw           ra, 4(s3)
                  andi         a6, zero, 391
                  addi         gp, zero, -7 #init loop 1 counter
                  lui          s2, 440307
                  auipc        t1, 869819
                  xor          a4, s5, a1
                  sub          a1, s6, s11
                  and          a1, s1, s10
                  addi         s6, zero, -17 #init loop 1 limit
                  sll          a5, sp, a7
sub_1_0_1_t:      addi         s8, t4, -468
                  addi         gp, gp, -10 #update loop 1 counter
                  slt          tp, sp, sp
                  addi         s4, zero, 9 #init loop 0 counter
                  nop
                  nop
                  addi         s0, zero, 9 #init loop 0 limit
                  srli         a4, a4, 12
sub_1_0_0_t:      slt          s11, a6, t3
                  addi         s4, s4, -8 #update loop 0 counter
                  sll          s9, s2, s5
                  sltiu        s7, s2, 1825
                  bgeu         s4, s0, sub_1_0_0_t #branch for loop 0
                  lui          s1, 538901
                  sltiu        s10, a0, -244
                  xor          a2, a2, s10
                  beq          gp, s6, sub_1_0_1_t #branch for loop 1
                  slt          s5, s6, sp
                  slli         s4, zero, 5
                  andi         s11, s3, 1324
                  xor          s2, s1, t3
                  beq          zero, s2, 17f
                  nop
                  nop
                  andi         t1, a6, -1249
                  sltu         t3, s4, s2
                  bge          t2, a5, 25f
                  bgeu         s5, s8, 23f
                  and          t4, s7, s6
                  andi         s5, sp, 1670
                  nop
                  xor          t0, s3, a6
                  bltu         gp, s8, 15f
15:               auipc        s8, 461874
                  sltu         s5, tp, s11
17:               sll          s8, s10, t4
                  or           a4, a4, s11
                  slt          a5, a2, t2
                  bge          a3, t2, 29f
                  srai         a1, a5, 28
                  sll          s8, sp, t2
23:               slti         sp, s7, 1259
                  sub          s5, s1, t4
25:               sra          ra, s0, t3
                  srl          a5, gp, t4
                  slti         s1, s1, 936
                  bgeu         t4, s3, 38f
29:               xori         s8, a7, -1007
                  xori         zero, t6, 441
                  bgeu         t4, t4, 44f
                  or           t0, ra, s1
                  beq          s4, s3, 40f
                  ori          a7, s6, -488
                  and          ra, s3, s6
                  sra          t5, t6, t0
                  xori         gp, a7, 1253
38:               blt          t2, s8, 49f
                  bne          s8, t3, 41f
40:               bgeu         a6, t0, 47f
41:               beq          t1, t3, 57f
                  addi         t4, zero, 5 #init loop 1 counter
                  sll          t0, ra, t6
                  or           s0, s8, a4
                  addi         s10, zero, -4 #init loop 1 limit
                  andi         s1, s11, -1271
sub_1_1_1_t:      and          s7, a2, s9
                  ori          s2, a0, -1356
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         s5, zero, -8 #init loop 0 counter
                  addi         a3, zero, -9 #init loop 0 limit
sub_1_1_0_t:      xori         gp, a2, 1028
                  sra          a5, a0, s8
                  addi         s5, s5, -6 #update loop 0 counter
                  andi         s1, t0, -1923
                  bge          s5, a3, sub_1_1_0_t #branch for loop 0
                  lui          tp, 772890
                  lui          s0, 30181
                  add          a7, a4, zero
                  xor          t5, tp, s8
                  bge          t4, s10, sub_1_1_1_t #branch for loop 1
                  ori          t3, a7, -1162
                  bge          zero, t1, 54f
                  sltiu        s5, a0, 1505
44:               slt          s1, t3, a2
                  ori          s4, s8, -371
                  andi         s5, s2, -1755
47:               xor          gp, a1, ra
                  nop
49:               xori         a7, a2, 1531
                  slt          s8, a4, t5
                  srli         t5, t2, 2
                  sll          a2, a7, t3
                  srl          s11, s4, a5
54:               auipc        s9, 80385
                  xor          s4, a1, a0
                  ori          s9, s2, 629
57:               add          t1, tp, a4
                  lui          s4, 734183
                  andi         s2, a6, 315
                  sra          zero, tp, a4
                  bge          a2, s10, 73f
                  auipc        s9, 187256
                  add          t1, ra, a3
                  srl          s0, ra, s4
                  addi         s10, s1, -472
                  slt          a5, t2, a5
                  sltiu        t2, t3, 323
                  auipc        a6, 238670
                  slti         s8, t3, 178
                  and          a3, s2, t6
                  lui          s4, 621744
                  or           s10, a5, a3
73:               nop
                  srai         ra, a0, 12
                  nop
                  bne          t3, a6, 84f
                  auipc        s2, 498031
                  srli         t1, a4, 28
                  addi         a6, s4, 1728
                  sub          tp, t1, s0
                  bltu         ra, t1, 97f
                  slli         s5, t6, 20
                  srai         a4, t5, 26
84:               bge          s1, a5, 99f
                  xori         s9, s6, -1025
                  sltiu        t2, t6, -285
                  slti         s4, t2, 565
                  add          a4, a5, a6
                  sltiu        s10, zero, -1240
                  bge          sp, t0, 93f
                  blt          a3, t3, 103f
                  sra          a6, s0, s9
93:               sltu         a7, ra, s9
                  slli         a2, a1, 10
                  auipc        a3, 581434
                  add          t4, t1, a7
97:               bltu         a4, ra, 100f
                  xor          s8, gp, zero
99:               srl          s2, t6, t6
100:              sltiu        a1, a0, 370
                  sltu         a4, s1, s11
                  bne          s6, a4, 103f
103:              slti         t2, t4, -1026
                  bgeu         a1, a6, 108f
                  srli         t1, s0, 29
                  srl          sp, s8, s10
                  sll          t3, t4, t5
108:              srli         sp, tp, 14
                  srli         tp, s10, 11
                  lw           ra, 4(s3)
                  sll          tp, s3, ra
                  xori         s7, a1, -819
                  addi         s3, s3, 16
                  srai         t0, t0, 21
                  slt          a7, t0, t6
                  sltu         a4, a1, zero
                  sltu         s9, a7, t4
170:              addi x17, x1, 1
170:              jalr x17, x17, 0
sub_5:            bltu         a2, s7, sub_5_stack_p
                  slt          t5, s6, a6
                  sltiu        t3, tp, 1047
                  or           s10, t1, s2
                  lui          s7, 220975
sub_5_stack_p:    addi         s3, s3, -40
                  srai         s1, t6, 11
                  sw           ra, 4(s3)
                  slti         s0, s9, -1333
                  slt          gp, s5, gp
                  addi         s6, zero, 3 #init loop 1 counter
                  xor          t0, a5, s8
                  slti         t4, s5, -674
                  slti         a2, s7, -1843
                  sltiu        zero, gp, 325
                  sub          tp, t3, a4
                  slti         s8, a0, -1857
                  addi         ra, zero, 19 #init loop 1 limit
                  and          tp, s3, gp
                  srl          s11, s1, sp
                  lui          a4, 456448
sub_5_0_1_t:      andi         t0, s11, -1286
                  sub          t1, t2, a1
                  addi         s6, s6, 2 #update loop 1 counter
                  addi         sp, zero, 8 #init loop 0 counter
                  sltiu        t3, a2, 766
                  addi         a1, zero, 4 #init loop 0 limit
                  sll          s5, t0, a1
sub_5_0_0_t:      and          gp, a7, a1
                  slti         a3, t6, -426
                  addi         sp, sp, -3 #update loop 0 counter
                  bgeu         sp, a1, sub_5_0_0_t #branch for loop 0
                  slt          a4, s7, a2
                  srli         s1, sp, 25
                  and          gp, s4, t5
                  sltu         a5, gp, t5
                  sra          s1, s8, t5
                  ori          t1, a3, -1446
                  sltiu        t5, t0, -1868
                  and          a4, s10, a2
                  ori          s11, s4, -1059
                  blt          s6, ra, sub_5_0_1_t #branch for loop 1
                  slt          s4, s4, t2
                  bltu         a5, s8, 20f
                  srai         a1, a6, 10
                  xor          t0, s3, a7
                  slti         sp, s7, 87
                  addi         s4, s8, 369
                  beq          t1, zero, 22f
                  sll          s10, t2, s1
                  bne          ra, tp, 17f
                  sltiu        t0, s10, 563
                  beq          a0, zero, 21f
                  blt          gp, a1, 21f
                  addi         s11, s10, -884
                  slt          zero, s6, s3
                  bltu         zero, t1, 25f
                  slt          s4, t5, sp
                  and          s8, t0, a3
                  sltiu        zero, s7, 661
17:               auipc        s2, 484617
                  lui          zero, 200429
                  bgeu         s6, s0, 29f
20:               andi         gp, sp, 1487
21:               sub          s8, zero, s4
22:               lui          t5, 843436
                  or           t5, t4, s8
                  srli         a1, t5, 0
25:               slti         a4, t6, 1593
                  slli         t1, sp, 15
                  slli         a6, s8, 20
                  auipc        s0, 486383
29:               slti         s1, tp, 662
                  srai         t2, t6, 6
                  auipc        zero, 95620
                  bltu         t0, s4, 40f
                  bgeu         s10, t3, 36f
                  beq          s7, a0, 49f
                  or           s1, zero, s7
36:               sll          tp, t0, s4
                  ori          s1, t0, -1541
                  sltiu        t0, a1, -529
                  sltiu        t1, s9, -1141
40:               slli         a3, s0, 16
                  add          s10, zero, a1
                  auipc        s5, 227455
                  ori          t1, s9, 1853
                  or           s10, s5, t4
                  slt          t2, t2, t3
                  blt          a1, sp, 54f
                  bltu         t3, a2, 49f
                  sra          s7, a1, a5
49:               bge          a5, t3, 54f
                  sub          a3, s5, gp
                  andi         ra, s0, -165
                  sll          t4, t1, a3
                  sltu         s1, t4, a4
54:               sll          s9, a0, t6
                  auipc        s5, 1047304
                  addi         a3, t2, 590
                  bgeu         t1, a2, 61f
                  sub          sp, s4, a1
                  srai         s5, t6, 26
                  and          a3, a5, a4
61:               xori         a4, a5, -1579
                  lw           ra, 4(s3)
                  slt          a2, a7, s4
                  xor          s10, s10, a5
                  sll          s11, t1, a4
                  addi         s3, s3, 40
                  ori          a7, s9, -1879
                  xor          sp, t6, s2
                  slli         sp, t1, 20
                  sra          sp, sp, t6
                  addi         tp, tp, 1369
115:              addi x12, x1, 1
115:              jalr x12, x12, 0
sub_3:            sltu         t1, tp, s0
                  nop
                  sub          s5, s0, s2
                  bne          s7, a2, sub_3_stack_p
                  sltiu        s8, s9, 511
                  sub          tp, tp, s4
sub_3_stack_p:    addi         s3, s3, -48
                  xor          a4, s11, s9
                  slt          s11, a2, a1
                  addi         s4, t4, 622
                  sw           ra, 4(s3)
                  or           t3, s0, s3
                  addi         s1, zero, 10 #init loop 1 counter
                  ori          s11, a3, 1639
                  ori          t4, a4, 1800
                  addi         sp, zero, 8 #init loop 1 limit
                  xor          a2, a2, s9
sub_3_7_1_t:      addi         t0, s6, 1135
                  sll          t5, t3, a3
                  sltiu        t0, s8, 628
                  srl          ra, a1, zero
                  slt          s8, t4, a7
                  sra          zero, s3, a6
                  addi         s1, s1, -7 #update loop 1 counter
                  srai         s5, a2, 4
                  addi         s7, zero, 9 #init loop 0 counter
                  and          s10, s6, s1
                  addi         s0, zero, -9 #init loop 0 limit
                  sll          gp, gp, s2
sub_3_7_0_t:      nop
                  slli         t4, s8, 13
                  srli         s9, a5, 21
                  xori         t1, a3, -1625
                  auipc        a1, 496222
                  addi         s7, s7, -1 #update loop 0 counter
                  sll          s2, s10, s7
                  sub          t2, a5, s0
                  bge          s7, s0, sub_3_7_0_t #branch for loop 0
                  srai         a7, t0, 6
                  bgeu         s1, sp, sub_3_7_1_t #branch for loop 1
                  xori         s10, s0, 1770
                  addi         a7, zero, 5 #init loop 0 counter
                  nop
                  sra          a1, t6, a7
                  auipc        ra, 227112
                  addi         s4, zero, 20 #init loop 0 limit
                  slt          sp, t0, s6
                  addi         s6, sp, 1147
sub_3_12_0_t:     nop
                  andi         a2, t6, 1290
                  addi         t0, s1, -394
                  lui          s5, 34112
                  sra          s1, a4, tp
                  andi         a6, t0, -224
                  slti         s0, a4, -451
                  xori         a5, t2, 679
                  addi         a7, a7, 1 #update loop 0 counter
                  srli         s11, t1, 2
                  blt          a7, s4, sub_3_12_0_t #branch for loop 0
                  sltu         tp, s1, s1
                  addi         a1, zero, 3 #init loop 0 counter
                  srl          s10, zero, a4
                  nop
                  xor          zero, a0, a6
                  addi         sp, zero, -11 #init loop 0 limit
                  srai         s0, a7, 27
sub_3_9_0_t:      slt          a6, s11, t0
                  addi         a2, s5, -750
                  slt          a5, t6, t6
                  xor          tp, s9, a1
                  sltu         s5, t4, t3
                  sub          s1, ra, ra
                  and          a3, sp, t1
                  sra          s10, sp, zero
                  addi         a1, a1, -2 #update loop 0 counter
                  auipc        a2, 583866
                  or           a5, t6, tp
                  slli         s11, s9, 7
                  sub          a4, s1, gp
                  lui          s2, 717938
                  bne          a1, sp, sub_3_9_0_t #branch for loop 0
                  ori          s1, s1, -496
                  addi         t5, zero, 9 #init loop 0 counter
                  addi         a3, zero, 9 #init loop 0 limit
sub_3_6_0_t:      or           s7, s6, a3
                  addi         t5, t5, -4 #update loop 0 counter
                  slti         s0, s9, -106
                  bgeu         t5, a3, sub_3_6_0_t #branch for loop 0
                  xori         a4, a0, -1709
                  addi         t0, zero, -10 #init loop 1 counter
                  addi         t2, zero, -11 #init loop 1 limit
sub_3_18_1_t:     and          s6, a5, t4
                  addi         t0, t0, -6 #update loop 1 counter
                  slti         s10, t3, -438
                  addi         s4, zero, -6 #init loop 0 counter
                  addi         a6, zero, -15 #init loop 0 limit
sub_3_18_0_t:     xori         s2, s2, -1300
                  or           t1, s4, s8
                  addi         s4, s4, -9 #update loop 0 counter
                  bne          s4, a6, sub_3_18_0_t #branch for loop 0
                  bge          t0, t2, sub_3_18_1_t #branch for loop 1
                  lui          a3, 63101
                  addi         a7, zero, -9 #init loop 0 counter
                  addi         zero, t6, -825
                  addi         tp, zero, 7 #init loop 0 limit
sub_3_2_0_t:      nop
                  and          a2, s2, a4
                  auipc        s0, 413660
                  addi         a7, a7, 7 #update loop 0 counter
                  bltu         a7, tp, sub_3_2_0_t #branch for loop 0
                  auipc        s6, 391166
                  addi         s10, zero, 10 #init loop 1 counter
                  srli         ra, zero, 2
                  addi         s5, zero, 10 #init loop 1 limit
sub_3_8_1_t:      sltu         s6, a1, a1
                  addi         s10, s10, -9 #update loop 1 counter
                  addi         s0, zero, -8 #init loop 0 counter
                  ori          tp, a7, -151
                  addi         t2, zero, 13 #init loop 0 limit
sub_3_8_0_t:      nop
                  auipc        a3, 232154
                  addi         s0, s0, 7 #update loop 0 counter
                  beq          s0, t2, sub_3_8_0_t #branch for loop 0
                  slti         tp, a0, -1144
                  bgeu         s10, s5, sub_3_8_1_t #branch for loop 1
                  slti         a3, t1, -1833
                  addi         t0, zero, 7 #init loop 0 counter
                  slti         a1, s10, 1355
                  srli         a1, t0, 18
                  srai         t1, t6, 14
                  sll          s2, s11, s9
                  sub          t1, ra, s9
                  srli         s4, t2, 10
                  addi         ra, zero, 1 #init loop 0 limit
                  lui          t4, 884098
                  nop
                  sll          a6, s7, a7
                  sra          a3, t0, gp
                  srl          s7, sp, s6
                  or           a5, s9, s10
                  andi         a1, s0, -1808
                  srli         s2, a4, 4
sub_3_19_0_t:     sub          s1, s5, s10
                  srl          a7, s10, s8
                  addi         t0, t0, -2 #update loop 0 counter
                  sll          a5, zero, t5
                  nop
                  srl          tp, a7, sp
                  slt          a4, t0, s8
                  auipc        zero, 130815
                  andi         s10, ra, 1959
                  srli         s5, s10, 2
                  bge          t0, ra, sub_3_19_0_t #branch for loop 0
                  lui          a4, 966832
                  addi         t5, zero, 9 #init loop 0 counter
                  slli         s8, t3, 29
                  and          a3, s3, s9
                  xor          s2, t6, t5
                  srli         zero, t0, 14
                  or           s5, a3, s4
                  sltu         sp, gp, a0
                  addi         a5, zero, 19 #init loop 0 limit
                  xor          s5, s6, gp
sub_3_14_0_t:     sltiu        a4, ra, -614
                  xori         a3, ra, 1461
                  sll          t0, tp, t4
                  nop
                  srli         t3, t4, 7
                  srl          a3, t2, s11
                  slt          t1, a1, s0
                  andi         s1, a5, 912
                  ori          a2, a6, 933
                  sll          a1, s0, sp
                  addi         t5, t5, 8 #update loop 0 counter
                  auipc        s7, 164510
                  xori         a2, t6, -1251
                  auipc        t0, 835439
                  ori          tp, a7, 604
                  add          t3, a5, gp
                  blt          t5, a5, sub_3_14_0_t #branch for loop 0
                  andi         s9, a0, 1256
                  addi         s4, zero, 9 #init loop 1 counter
                  auipc        a2, 796800
                  addi         s7, zero, -6 #init loop 1 limit
                  slli         sp, t4, 28
sub_3_15_1_t:     addi         a4, a0, 158
                  addi         s4, s4, -6 #update loop 1 counter
                  addi         s10, zero, 9 #init loop 0 counter
                  srl          s0, sp, t6
                  addi         s2, zero, 18 #init loop 0 limit
sub_3_15_0_t:     xor          a1, s10, s7
                  srli         t5, a1, 31
                  sub          t0, sp, s7
                  or           a2, sp, t1
                  slt          s5, t3, s8
                  ori          a3, t5, -752
                  and          gp, a2, a3
                  addi         s10, s10, 9 #update loop 0 counter
                  sltu         a1, a7, t2
                  xor          t4, a0, a0
                  andi         a5, s1, 1830
                  beq          s10, s2, sub_3_15_0_t #branch for loop 0
                  auipc        s0, 487812
                  andi         a3, s1, -625
                  xor          s0, s5, s2
                  and          a6, s10, a1
                  or           t3, s10, s5
                  bge          s4, s7, sub_3_15_1_t #branch for loop 1
                  xori         t5, t2, -1226
                  addi         s9, zero, 9 #init loop 0 counter
                  addi         s0, gp, 1472
                  add          a3, gp, s8
                  addi         s0, s1, 488
                  add          zero, t1, s11
                  and          s7, ra, a3
                  nop
                  srl          s7, s5, tp
                  addi         s11, zero, 9 #init loop 0 limit
sub_3_3_0_t:      add          a2, a7, t1
                  slt          t4, t2, s5
                  xori         zero, a7, 1476
                  sll          t4, t0, t4
                  addi         s9, s9, -8 #update loop 0 counter
                  bgeu         s9, s11, sub_3_3_0_t #branch for loop 0
                  sltu         a2, s0, t5
                  addi         s0, zero, 3 #init loop 0 counter
                  or           a2, t3, tp
                  andi         a4, ra, 97
                  addi         t2, zero, 2 #init loop 0 limit
sub_3_4_0_t:      sltu         s6, s1, s3
                  add          a4, t6, sp
                  addi         s0, s0, -5 #update loop 0 counter
                  or           s9, s9, tp
                  sll          s11, t6, a3
                  sra          a2, t5, a2
                  bge          s0, t2, sub_3_4_0_t #branch for loop 0
                  nop
                  addi         sp, zero, 10 #init loop 0 counter
                  lui          t1, 851230
                  srai         a7, t6, 23
                  slli         tp, t3, 23
                  srai         t5, s3, 27
                  srl          a4, s0, s3
                  slt          ra, s9, s8
                  sra          tp, a6, zero
                  add          s4, sp, t3
                  slli         s0, s11, 9
                  addi         s2, zero, 9 #init loop 0 limit
                  xor          s8, a6, zero
                  ori          s6, s6, -622
                  add          ra, t1, s6
                  slli         s8, t1, 30
                  slti         gp, a4, 1550
sub_3_11_0_t:     ori          gp, a4, -863
                  srli         s0, s4, 25
                  addi         sp, sp, -3 #update loop 0 counter
                  slti         a3, s7, -1790
                  sltu         a4, a6, a3
                  sltu         s6, t3, a2
                  sltiu        a2, s7, -1572
                  bgeu         sp, s2, sub_3_11_0_t #branch for loop 0
                  slt          a3, s3, a6
                  addi         t0, zero, 6 #init loop 0 counter
                  add          t3, s8, zero
                  sltiu        a7, s0, -295
                  addi         s4, s3, 1313
                  slti         a7, t4, 149
                  slt          a2, s6, s11
                  addi         a1, zero, 6 #init loop 0 limit
                  sub          sp, t6, sp
sub_3_20_0_t:     slt          s6, tp, gp
                  sltiu        s5, t6, -1979
                  addi         t0, t0, -4 #update loop 0 counter
                  slli         s7, gp, 20
                  auipc        s0, 760781
                  auipc        t5, 820853
                  or           gp, s10, gp
                  nop
                  sltu         s8, s2, s7
                  and          s0, s8, s2
                  sll          ra, ra, a6
                  auipc        t4, 859512
                  xori         t2, a1, -1241
                  xor          tp, ra, t6
                  sltiu        a3, gp, 690
                  or           a2, gp, gp
                  slli         s5, s8, 24
                  ori          s1, s1, -427
                  slt          s11, s9, s3
                  ori          s8, t0, -557
                  bgeu         t0, a1, sub_3_20_0_t #branch for loop 0
                  or           s0, s2, t6
                  addi         s6, zero, -6 #init loop 1 counter
                  and          sp, zero, a5
                  addi         s5, zero, 6 #init loop 1 limit
sub_3_0_1_t:      sub          t0, gp, ra
                  lui          s7, 955028
                  sltu         s10, t5, a4
                  addi         s6, s6, 6 #update loop 1 counter
                  addi         a6, zero, 7 #init loop 0 counter
                  slti         zero, s3, 1061
                  addi         s1, zero, 2 #init loop 0 limit
sub_3_0_0_t:      sltu         zero, a5, a2
                  addi         a6, a6, -9 #update loop 0 counter
                  sra          a5, t4, a4
                  bge          a6, s1, sub_3_0_0_t #branch for loop 0
                  beq          s6, s5, sub_3_0_1_t #branch for loop 1
                  and          s4, s8, sp
                  addi         a3, zero, -9 #init loop 1 counter
                  or           s8, a0, s4
                  xor          a4, t1, s8
                  sltiu        t5, s6, -203
                  addi         s9, zero, -10 #init loop 1 limit
sub_3_16_1_t:     add          s11, a3, a7
                  or           s8, s11, a7
                  slli         s2, a3, 0
                  sltiu        a7, s2, -1497
                  addi         a3, a3, -2 #update loop 1 counter
                  addi         a6, zero, -7 #init loop 0 counter
                  addi         a5, zero, 9 #init loop 0 limit
                  sub          t2, a2, t6
sub_3_16_0_t:     addi         t2, a1, -853
                  sra          t4, zero, sp
                  slti         a7, s1, -384
                  sll          s8, ra, s10
                  addi         a6, a6, 8 #update loop 0 counter
                  bne          a6, a5, sub_3_16_0_t #branch for loop 0
                  slti         t3, a2, 1742
                  bge          a3, s9, sub_3_16_1_t #branch for loop 1
                  addi         tp, s9, -1225
                  addi         s9, zero, 1 #init loop 0 counter
                  addi         tp, s4, 145
                  xori         a2, tp, -158
                  addi         a7, zero, -13 #init loop 0 limit
sub_3_13_0_t:     slt          a2, a6, s11
                  ori          gp, t2, -2035
                  addi         s9, s9, -2 #update loop 0 counter
                  sra          s4, a4, t0
                  bne          s9, a7, sub_3_13_0_t #branch for loop 0
                  srai         sp, a0, 31
                  sll          s2, t3, t3
                  xori         t0, a2, -971
                  auipc        tp, 625322
                  srl          a5, a5, s0
                  sub          t2, t2, ra
                  sltiu        a6, a6, 1579
                  sra          tp, t1, s9
                  slti         s1, a3, -759
                  blt          t0, s4, 12f
                  sra          ra, a4, t4
                  bge          tp, s6, 19f
                  blt          a5, s8, 12f
12:               srli         a5, a7, 21
                  srl          s8, t5, s4
                  ori          s5, t1, -555
                  sub          ra, s3, s4
                  slti         tp, a2, 665
                  and          sp, tp, a2
                  slti         a5, s4, -1915
19:               bne          s5, a4, 24f
                  xori         s11, t6, -751
                  bltu         ra, gp, 37f
                  slli         t5, s0, 16
                  andi         s4, tp, -272
24:               beq          s6, s9, 33f
                  srl          a6, tp, a6
                  srai         s9, s11, 4
                  bge          s9, sp, 45f
                  beq          a1, t4, 40f
                  sll          ra, a1, t1
                  slt          s11, gp, t4
                  slti         gp, a0, 1847
                  slt          ra, a5, a7
33:               xori         t0, a3, -834
                  and          s7, s3, t6
                  sltiu        ra, s5, 241
                  srli         s9, a0, 13
37:               xor          a3, a3, t0
                  sra          s11, t2, t0
                  bltu         a3, t2, 49f
40:               bne          a6, s9, 44f
                  bne          s1, t0, 54f
                  addi         a4, ra, -694
                  srli         s8, t6, 17
44:               sll          a6, s3, tp
45:               xori         s9, t0, 292
                  blt          t2, sp, 48f
                  xori         tp, s6, 1458
48:               addi         t1, t4, 133
49:               bne          t0, a3, 52f
                  srl          t5, t5, a1
                  beq          s2, t5, 68f
52:               sub          sp, a0, a3
                  or           s5, t1, t5
54:               xori         s5, a5, -184
                  nop
                  bne          s0, a1, 65f
                  and          tp, s7, s6
                  sra          a3, a2, s11
                  slli         a6, t2, 23
                  srl          t2, s7, a7
                  sltiu        a2, a1, -748
                  andi         t1, ra, 487
                  ori          s7, s8, -419
                  add          a1, s8, t0
65:               bne          s10, s11, 67f
                  beq          a2, zero, 73f
67:               add          tp, gp, a0
68:               and          a7, s4, t4
                  xor          s0, s8, a3
                  beq          a7, t3, 75f
                  srli         a4, s3, 30
                  sltiu        zero, a7, -1216
73:               sra          tp, s9, s1
                  slt          s5, t5, sp
75:               bgeu         a5, a0, 82f
                  srli         sp, tp, 26
                  andi         s4, a2, -283
                  and          a2, t2, s0
                  ori          a4, tp, 1874
                  andi         sp, tp, 1845
                  slli         tp, sp, 2
82:               add          ra, s6, s4
                  slli         sp, a5, 5
                  bge          gp, s2, 100f
                  xor          zero, s4, ra
                  beq          t0, t6, 91f
                  ori          s7, s0, 66
                  xori         s6, a6, -1858
                  bge          t6, s6, 101f
                  bltu         t5, s7, 108f
91:               slt          a5, s1, a6
                  xor          t3, t2, a1
                  ori          s5, s8, 1511
                  nop
                  srai         zero, tp, 0
                  slt          a7, s4, t5
                  beq          gp, a6, 106f
                  or           a2, a3, a7
                  bne          zero, tp, 103f
100:              nop
101:              bltu         sp, t6, 108f
                  bltu         t0, s3, 113f
103:              and          ra, s8, zero
                  srl          gp, s8, s5
                  xor          a7, a4, t6
106:              bgeu         a0, t1, 107f
107:              beq          t1, s10, 115f
108:              srl          sp, t1, s1
                  blt          a5, a5, 120f
                  and          t5, a1, s11
                  addi         s4, t2, -42
                  or           s4, a4, s11
113:              bltu         s6, gp, 115f
                  beq          a1, t1, 121f
115:              sra          t5, t6, t5
                  sra          s1, s2, a2
                  bge          s10, t1, 124f
                  ori          s8, tp, -897
                  bgeu         t1, s2, 123f
120:              or           t3, t5, a0
121:              bne          s7, zero, 126f
                  sltiu        t3, t5, -1160
123:              or           s11, t4, a2
124:              slt          s10, s11, a2
                  sltu         gp, t6, tp
126:              auipc        s11, 1037535
                  xor          t4, s6, t5
                  srl          s11, s6, t5
                  xor          a4, tp, s11
                  add          s10, t4, zero
                  and          t3, t6, gp
                  addi         t4, s10, -1908
                  xori         a5, s11, 1795
                  srli         t1, s0, 20
                  srai         s2, s4, 12
                  xori         t2, a5, -1311
                  or           s9, t5, s7
                  nop
                  bgeu         a3, a0, 151f
                  xori         t4, t4, -533
                  slli         zero, s1, 7
                  bne          t5, t1, 160f
                  sub          a4, s8, s11
                  slti         s5, gp, 178
                  nop
                  bne          t3, s2, 157f
                  slti         s1, s9, 169
                  xori         s4, t2, -1694
                  bgeu         zero, a6, 158f
                  lui          t2, 456847
151:              bne          s10, a0, 152f
152:              or           t4, a6, s8
                  slt          t4, a0, s11
                  auipc        s5, 53307
                  bltu         a3, s1, 172f
                  auipc        s8, 553239
157:              bgeu         s7, s8, 164f
158:              srli         a1, a4, 24
                  bne          a6, tp, 177f
160:              slt          t5, s11, gp
                  and          s9, sp, a1
                  or           s9, s5, a2
                  lui          zero, 886612
164:              and          a7, a3, gp
                  srai         a6, a6, 6
                  andi         t1, a7, 723
                  bltu         a4, a1, 170f
                  nop
                  andi         t1, t1, -262
170:              bne          s4, t0, 180f
                  auipc        s7, 789791
172:              sltiu        s11, t2, 178
                  sltu         t5, s2, a3
                  bltu         t0, s6, 183f
                  sltu         a3, tp, s7
                  auipc        s5, 904957
177:              and          t1, a1, s1
                  add          ra, zero, t0
                  xor          ra, sp, a3
180:              bne          a2, tp, 192f
                  sltu         gp, a5, s11
                  xor          a7, s10, t0
183:              add          a6, s10, t3
                  sltiu        t5, t0, 1006
                  add          t5, t4, s10
                  lui          s11, 184492
                  lui          a6, 678074
                  or           s10, a5, a3
                  ori          s2, zero, 1427
                  srli         s11, tp, 2
                  sub          s0, t3, a5
192:              srai         s9, s8, 21
                  add          t1, zero, a7
                  or           a5, t3, t5
                  nop
                  bne          s10, a5, 201f
                  sltiu        gp, s10, 961
                  xor          a7, t4, t2
                  bne          s7, s1, 210f
                  slli         a4, t0, 22
201:              slti         a3, s0, 347
                  slti         gp, a5, 1976
                  andi         a3, a3, 588
                  beq          a2, s1, 209f
                  srai         a4, s9, 2
                  srli         s7, a7, 2
                  slt          s10, a0, s10
                  slti         s8, a0, -1656
209:              auipc        s9, 929047
210:              sra          a2, t0, a4
                  slti         s7, s6, -406
                  slli         a3, sp, 21
                  bne          s1, a3, 215f
                  srl          t1, t5, tp
215:              sltiu        t4, t2, -862
                  addi         a1, t0, 1707
                  addi         s2, t4, 1934
                  sltiu        s8, s2, 1942
                  auipc        t3, 757793
                  slti         s1, a7, 718
                  slt          s8, t0, s10
                  srli         s7, s6, 26
                  auipc        a3, 947450
                  srl          t3, s0, s7
                  slli         ra, t2, 29
                  and          t4, ra, a3
                  xor          t0, s9, s9
                  srai         t2, s7, 8
                  blt          sp, t6, 245f
                  slt          s4, s4, s2
                  or           s10, s6, s0
                  addi         a6, zero, 10 #init loop 0 counter
                  slti         ra, t0, -1075
                  andi         t0, t0, -1412
                  srli         a7, s0, 31
                  sra          s11, t3, zero
                  addi         s5, zero, 19 #init loop 0 limit
                  slli         a1, s3, 26
                  sub          sp, sp, t5
sub_3_1_0_t:      auipc        t4, 472468
                  addi         a6, a6, 8 #update loop 0 counter
                  sra          s8, gp, a6
                  add          s8, t3, s3
                  bltu         a6, s5, sub_3_1_0_t #branch for loop 0
                  sltiu        s6, s11, -1600
                  srli         s9, tp, 14
                  or           t0, s2, a6
                  addi         a3, sp, 275
                  auipc        t1, 606050
                  and          t2, s2, s2
                  add          s0, tp, a1
                  nop
                  addi         t4, s6, 1206
                  sub          s1, s6, s4
                  and          t1, tp, s0
                  sra          a1, s1, ra
                  bne          s9, t4, 247f
                  sll          a4, s0, tp
245:              xor          t4, a2, a7
                  slli         s11, ra, 9
247:              sll          sp, s10, t4
                  sll          a1, sp, s8
                  sra          a5, t5, s4
                  andi         sp, t1, 1440
                  sltu         s7, s0, a3
                  sub          s6, t6, sp
                  bge          t3, a0, 257f
                  sub          t2, a4, a2
                  bge          s9, a2, 263f
                  auipc        s8, 923252
257:              auipc        gp, 306502
                  add          s10, s5, a7
                  lui          t5, 65155
                  sub          s0, s0, ra
                  bgeu         tp, sp, 262f
262:              srli         s0, s8, 8
263:              beq          zero, a7, 276f
                  slti         t5, s10, -915
                  add          sp, s5, s6
                  bge          s4, s10, 282f
                  ori          zero, s11, 1521
                  sll          s8, s6, sp
                  beq          t6, t6, 278f
                  sll          t0, s6, a0
                  srli         s9, t6, 16
                  bge          tp, a2, 281f
                  beq          t1, s5, 281f
                  sub          s9, s10, a2
                  sub          s6, s1, a2
276:              addi         zero, ra, 1951
                  bltu         a5, gp, 282f
278:              addi         s9, s1, -1871
                  beq          a1, zero, 286f
                  addi         s4, a4, 1619
281:              or           s6, s11, a4
282:              sub          s11, s11, ra
                  blt          s3, s2, 284f
284:              srli         a5, a5, 4
                  ori          s4, a1, 821
286:              or           s6, s6, s2
                  add          a4, s9, s5
                  bltu         s7, s1, 301f
                  beq          a4, t4, 293f
                  sltiu        s2, s2, -304
                  slli         s0, a1, 6
                  blt          t6, s8, 296f
293:              or           t2, t1, t6
                  srl          t5, s0, a6
                  sltiu        s5, ra, -764
296:              srai         s0, a2, 0
                  sra          t1, s4, zero
                  bltu         t0, t2, 303f
                  slti         zero, s1, -1737
                  srli         gp, zero, 18
301:              bgeu         t6, zero, 312f
                  bgeu         a6, a3, 312f
303:              blt          t3, a5, 312f
                  bne          s2, t2, 306f
                  and          s4, s7, s5
306:              and          a5, gp, a3
                  xori         t0, tp, 1824
                  ori          t0, s0, 1581
                  slli         a7, s9, 18
                  addi         s4, s0, 938
                  slti         t3, s8, 1919
312:              xor          s0, s4, gp
                  bltu         s1, gp, 329f
                  slt          s2, t0, s0
                  add          t4, gp, a4
                  beq          s5, a2, 323f
                  nop
                  sra          ra, a2, a5
                  sra          a6, a0, s7
                  sra          s11, t2, t5
                  and          t1, tp, t5
                  slt          t5, s9, t2
323:              and          t4, t1, t4
                  sra          a1, a5, s8
                  bltu         zero, t5, 336f
                  andi         s8, s6, -662
                  ori          s6, s8, 1407
                  xori         s1, t2, -509
                  addi         s0, zero, 9 #init loop 0 counter
                  addi         a6, zero, 10 #init loop 0 limit
                  auipc        t5, 862565
sub_3_17_0_t:     lui          a7, 788897
                  addi         s0, s0, 7 #update loop 0 counter
                  auipc        s11, 1019392
                  bltu         s0, a6, sub_3_17_0_t #branch for loop 0
                  auipc        t4, 520937
329:              and          t4, s6, a5
                  bltu         a4, t5, 337f
                  slt          t2, s3, s5
                  or           s10, s4, t2
                  bge          a2, t4, 338f
                  xor          s2, a2, gp
                  add          a2, a4, s9
336:              beq          a3, zero, 348f
337:              nop
338:              sll          a4, a1, t1
                  nop
                  srl          s11, ra, t1
                  xor          t3, t6, t0
                  lui          a5, 912054
                  addi         gp, gp, 492
                  sltiu        sp, a5, 1677
                  lui          a4, 952541
                  bgeu         a6, s4, 362f
                  nop
348:              and          s5, a2, s6
                  srai         tp, a4, 0
                  slli         s0, t4, 0
                  and          a2, t0, s6
                  andi         s6, a0, 1756
                  slt          a2, s7, t4
                  srai         t2, s8, 1
                  add          a6, s11, t4
                  sra          sp, a4, s10
                  blt          a1, a2, 366f
                  sltu         s1, zero, s3
                  addi         zero, a4, -1970
                  beq          sp, t2, 369f
                  xori         s5, s7, -54
362:              sub          t5, sp, t2
                  and          a6, s5, a6
                  auipc        a6, 265185
                  nop
366:              or           t1, s0, t3
                  srli         a7, s10, 8
                  auipc        zero, 288114
369:              blt          t0, a3, 373f
                  xor          s0, tp, s8
                  or           ra, t6, s8
                  xori         s0, a2, -822
373:              auipc        s4, 959332
                  auipc        s9, 635636
                  sub          gp, sp, a3
                  srli         s2, s3, 16
                  nop
                  sltu         t1, tp, s2
                  beq          a1, t6, 382f
                  sltu         a4, a1, t0
                  xor          s8, s9, t5
382:              and          sp, s1, a0
                  andi         s2, t3, 445
                  bne          s3, zero, 385f
385:              add          s2, tp, s0
                  beq          s11, t4, 404f
                  add          t0, s2, t6
                  ori          s4, t3, -322
                  nop
                  srli         ra, gp, 8
                  sub          s7, t6, s2
                  ori          s5, s11, -1055
                  xori         s5, sp, 1593
                  sll          a7, tp, s9
                  andi         t3, s2, 1899
                  sra          s11, zero, ra
                  add          s5, s1, t3
                  sra          s4, s2, a1
                  blt          gp, s3, 416f
                  or           s9, s1, s5
                  or           s2, t0, t6
                  sub          a4, t3, a0
                  addi         gp, s11, 1958
404:              bltu         a2, t6, 422f
                  slt          a3, a4, a7
                  bltu         a4, a7, 408f
                  andi         gp, s6, 1430
408:              and          tp, sp, gp
                  beq          t5, t0, 421f
                  bne          s8, a6, 419f
                  slli         s5, a5, 29
                  nop
                  andi         t2, a2, 577
                  srli         a4, a1, 3
                  slli         a1, t0, 9
416:              xori         t1, s9, -1169
                  bne          a6, a5, 435f
                  sll          t4, s10, a3
419:              or           a4, t4, a2
                  addi         t2, ra, 1325
421:              srai         gp, a4, 1
422:              xor          a5, t4, s3
                  nop
                  slti         a2, t6, 538
                  slti         s0, a2, 1026
                  lui          s0, 540966
                  lui          a3, 448196
                  srai         t4, s1, 19
                  sltu         s4, ra, s2
                  sll          s2, a2, sp
                  srl          s11, a5, t3
                  sll          t5, a6, s8
                  slti         t5, s10, 1229
                  bgeu         s10, a3, 438f
435:              ori          tp, t6, 962
                  addi         s9, s7, 328
                  blt          zero, t2, 446f
438:              beq          s7, t4, 447f
                  slli         s9, a6, 13
                  slt          a7, s8, sp
                  sra          s6, a0, a4
                  auipc        s2, 127468
                  sra          t4, s2, s3
                  bne          t0, s11, 448f
                  or           ra, t1, s9
446:              beq          sp, t6, 453f
447:              xori         s0, s2, 1149
448:              beq          a1, s11, 453f
                  srai         a2, s11, 9
                  xor          s4, a1, sp
                  bltu         zero, s7, 458f
                  bltu         a4, a5, 465f
453:              sltiu        s2, gp, 367
                  bne          s9, s4, 462f
                  andi         t4, sp, 1527
                  bltu         s0, s6, 465f
                  lui          a2, 578305
458:              bgeu         zero, s7, 459f
459:              ori          t1, s1, -1753
                  andi         t3, t3, 133
                  srli         a7, s2, 31
462:              srli         t5, tp, 26
                  sra          s2, a6, s1
                  slli         t4, ra, 10
465:              andi         s5, s8, -1552
                  slt          t3, t6, s8
                  srl          ra, s3, t2
                  sltiu        s5, sp, 179
                  srli         ra, t5, 0
                  xori         a4, s5, 1358
                  xori         a3, a7, -1286
                  xor          t5, tp, s5
                  xor          s2, t3, s8
                  and          sp, t4, a5
                  sll          s6, s2, a1
                  sub          s2, s7, t0
                  andi         a2, a5, -441
                  and          a4, s10, tp
                  slti         a4, gp, 1100
                  xor          s0, s0, a1
                  slt          s5, zero, a4
                  sra          s2, t4, s4
                  sltiu        a6, a7, -1696
                  slti         a3, t2, -254
                  blt          a0, a3, 488f
                  lui          tp, 696867
                  xori         s0, s2, 1238
488:              sltu         t2, t5, s8
                  bltu         t1, a0, 491f
                  xori         s5, t5, 817
491:              blt          s1, s5, 503f
                  beq          a0, zero, 510f
                  bltu         s4, zero, 504f
                  slt          s0, t2, t1
                  add          zero, a6, t6
                  slli         s7, t4, 27
                  srai         s8, t0, 19
                  blt          s1, s4, 503f
                  slti         tp, a7, -383
                  bge          zero, s9, 511f
                  bge          a0, tp, 502f
502:              or           t5, s4, a1
503:              sltu         a5, a7, s0
504:              sra          s11, s2, t4
                  blt          sp, s10, 507f
                  srai         a4, s1, 27
507:              bne          s2, t6, 524f
                  srl          t0, a1, t2
                  slli         a3, t2, 25
510:              srl          a7, a1, s0
511:              slli         s8, s10, 27
                  sltiu        t1, s6, -742
                  lui          sp, 834292
                  or           s4, zero, tp
                  sll          s6, t5, a7
                  slti         s1, s10, -1894
                  ori          s6, s3, 101
                  sll          tp, s1, t3
                  addi         a4, s10, -1011
                  lui          ra, 752522
                  xor          s8, s3, s5
                  lui          s5, 565271
                  srli         t5, s2, 27
524:              sll          a7, zero, t1
                  andi         a3, t5, -1363
                  srai         s5, a6, 4
                  xori         s11, s0, -741
                  sltu         sp, t3, ra
                  sub          a6, a1, t6
                  sra          t4, a6, gp
                  sll          a2, t1, t6
                  ori          t4, s9, 66
                  add          s2, s2, a4
                  bgeu         s4, s2, 541f
                  srai         a5, t5, 1
                  andi         t3, t3, -871
                  srli         s8, s9, 14
                  srl          zero, t5, s10
                  andi         a2, a3, 9
                  slli         a4, s0, 1
541:              bltu         a1, t6, 550f
                  sub          s1, zero, zero
                  add          t4, ra, t5
                  sltu         t4, ra, s0
                  slti         s5, a7, -726
                  slti         t2, s7, -1461
                  bgeu         ra, sp, 563f
                  sltu         s8, a0, t0
                  slti         gp, a5, -693
550:              xori         a7, s7, 1684
                  xori         s0, sp, -1065
                  slt          t0, sp, s11
                  slt          s2, t0, s0
                  xori         t3, a1, -1276
                  andi         s2, a1, -595
                  bltu         t6, zero, 572f
                  blt          s9, gp, 561f
                  bne          t2, s10, 563f
                  ori          s4, s2, -119
                  add          s1, s10, s4
561:              bne          s10, a5, 571f
                  xor          t2, s0, zero
563:              sra          s8, s7, s4
                  sll          s6, t6, a6
                  slti         s11, t6, 1887
                  ori          zero, a4, 1484
                  bge          t3, ra, 579f
                  xor          s8, a3, s3
                  bltu         a2, a3, 570f
570:              bgeu         s6, s9, 579f
571:              blt          s9, a2, 578f
572:              slti         a5, tp, -1124
                  sra          s5, s9, s0
                  blt          t3, s2, 592f
                  or           s8, s7, s11
                  nop
                  slli         a7, a7, 3
578:              slti         s2, s0, 186
579:              add          s7, a6, tp
                  sltu         s7, a4, s8
                  slt          s2, s8, a4
                  nop
                  bltu         s9, tp, 588f
                  blt          t5, a5, 588f
                  auipc        s0, 92135
                  sltu         a3, zero, s2
                  or           gp, s5, t3
588:              sltiu        s0, t6, -838
                  sll          a6, t5, s10
                  andi         s9, s2, 898
                  xor          a6, s8, a0
592:              and          sp, t2, a0
                  and          a1, a4, t6
                  sltiu        s5, t2, -1642
                  sltu         a5, zero, t1
                  srli         t2, t2, 18
                  or           tp, t2, s5
                  sll          a6, zero, a0
                  or           s9, t3, tp
                  andi         s9, a2, -196
                  or           zero, tp, a3
                  xor          a2, t0, t1
                  srli         s9, s6, 13
                  sltu         s1, s3, a3
                  sra          a2, s4, s4
                  xor          s7, tp, a4
                  bge          t1, sp, 612f
                  or           tp, ra, a2
                  sltiu        t5, gp, -1798
                  sltu         s2, s4, t0
                  addi         t3, zero, 0 #init loop 0 counter
                  addi         s0, zero, 16 #init loop 0 limit
sub_3_5_0_t:      slt          s11, a6, ra
                  addi         t3, t3, 8 #update loop 0 counter
                  bne          t3, s0, sub_3_5_0_t #branch for loop 0
                  and          s6, s3, sp
                  sll          a5, s4, t0
612:              lui          a2, 667891
                  srai         t4, t3, 16
                  auipc        a1, 464680
                  auipc        s4, 257390
                  ori          s4, a0, 723
                  addi         s9, a3, 1960
                  add          zero, a5, a4
                  sltu         a6, s4, ra
                  bne          s3, a7, 627f
                  slti         gp, a7, -1519
                  bltu         a6, a6, 630f
                  srli         s1, t5, 3
                  srai         t4, a1, 23
                  ori          zero, s11, 537
                  bltu         t3, a7, 635f
627:              sll          s5, a2, a4
                  srl          s9, a7, s4
                  andi         sp, s3, -848
630:              bge          a6, t4, 631f
631:              add          s10, a3, t3
                  bge          s7, ra, 643f
                  auipc        t1, 756115
                  srai         s11, a7, 16
635:              sub          s7, t0, t5
                  xor          a4, s9, tp
                  bltu         s11, t1, 646f
                  sll          t0, s1, t3
                  bltu         a4, ra, 644f
                  sltu         zero, a7, sp
                  lui          s9, 1009567
                  blt          ra, a3, 646f
643:              add          s0, s1, s11
644:              bge          t5, s3, 662f
                  slti         t1, t5, -670
646:              sltiu        gp, s3, 1871
                  srai         tp, a5, 0
                  srl          s11, gp, a5
                  andi         t4, s11, 985
                  andi         s11, t4, -222
                  xor          t1, s10, zero
                  xori         a5, s9, -1364
                  nop
                  bge          ra, a7, 671f
                  sub          tp, s3, a4
                  srl          s2, s6, a0
                  bge          t6, a7, 669f
                  sltiu        s2, a0, 1523
                  slt          s2, s9, t3
                  auipc        s11, 527434
                  xori         s4, s8, 741
662:              srai         t2, t2, 18
                  bge          s3, t3, 670f
                  srli         t5, a2, 24
                  srli         zero, a4, 29
                  ori          s7, s5, 1300
                  andi         a2, t5, 879
                  add          gp, a2, a4
669:              addi         s11, s0, -218
670:              sub          sp, t5, a5
671:              bltu         sp, t1, 681f
                  auipc        s2, 586871
                  sub          t2, s2, gp
                  bgeu         s4, s6, 687f
                  srli         s7, s10, 13
                  sltu         zero, s9, s3
                  sra          gp, s2, s1
                  blt          t5, s1, 687f
                  beq          s0, s1, 682f
                  lui          a7, 537934
681:              slti         sp, a5, -1218
682:              nop
                  sll          s10, t6, t6
                  bgeu         a1, t2, 686f
                  addi         a6, s5, -1881
686:              lui          a3, 901505
687:              blt          sp, t4, 703f
                  srli         ra, s7, 10
                  slt          s8, a4, a7
                  sltiu        a7, a0, 955
                  bltu         t3, s1, 702f
                  nop
                  sltu         s1, t6, a2
                  ori          s11, ra, -1940
                  and          s11, zero, s6
                  and          a7, t1, t3
                  andi         a5, s7, 650
                  andi         s8, s9, 537
                  bne          tp, a3, 715f
                  srai         s11, s11, 1
                  sub          t5, s3, s7
702:              bltu         a6, s0, 704f
703:              slti         sp, t1, -1961
704:              and          s1, t5, t2
                  sll          t5, a4, s10
                  add          a7, a5, s5
                  srl          s6, s1, a3
                  auipc        s6, 80589
                  lui          ra, 140523
                  sll          s9, t2, gp
                  or           a7, t6, tp
                  auipc        t2, 255523
                  xor          t2, s9, t3
                  auipc        s4, 604134
715:              beq          zero, a4, 719f
                  sra          s4, s1, a4
                  slti         a2, s11, 550
                  slti         s6, s11, 201
719:              add          t5, a7, s6
                  slli         s1, t2, 14
                  sltiu        zero, t4, 1319
                  auipc        t0, 642994
                  auipc        t3, 681256
                  and          sp, t4, s6
                  nop
                  andi         s5, s11, -1540
                  bltu         s4, s2, 739f
                  ori          a7, a0, -131
                  xori         t4, ra, -1053
                  ori          t1, a4, 259
                  slti         tp, t6, -617
                  srl          ra, tp, t2
                  lui          s4, 916408
                  andi         a3, s8, -872
                  sltu         t0, t3, t6
                  auipc        a7, 145092
                  srai         t2, s9, 14
                  and          t0, s6, s11
739:              bne          a6, a1, 743f
                  bge          t0, a3, 745f
                  and          a6, ra, s7
                  srli         s8, t2, 30
743:              and          zero, s4, s6
                  add          t3, a3, t4
745:              andi         t4, a0, 1360
                  xor          s5, a6, a3
                  sltu         s9, t2, t0
                  sltiu        s7, s3, 606
                  or           ra, sp, a3
                  auipc        s7, 818370
                  bltu         s9, tp, 769f
                  addi         a2, s5, -6
                  xor          a3, t1, s5
                  nop
                  slt          s10, sp, t2
                  ori          t4, tp, -576
                  sltiu        s9, tp, 449
                  sltiu        sp, s11, -1016
                  xori         t4, a2, 1031
                  bne          s2, s1, 778f
                  xor          t5, t5, s6
                  auipc        a4, 639110
                  bne          zero, t0, 774f
                  xor          t0, a0, zero
                  bltu         s6, s6, 767f
                  srai         s6, tp, 21
767:              addi         a5, s3, 759
                  or           s5, ra, s3
769:              xor          a5, a0, t6
                  bltu         s8, a6, 774f
                  slli         a3, gp, 23
                  ori          t2, s0, 1726
                  xor          a5, s3, s9
774:              blt          t2, zero, 779f
                  srai         s11, a1, 23
                  sub          t0, a1, a2
                  xori         t5, zero, -219
778:              sub          a1, s9, zero
779:              bgeu         s5, t5, 796f
                  xori         t4, a4, -123
                  nop
                  add          a4, a6, s0
                  beq          t0, s1, 790f
                  nop
                  slt          s4, s11, t1
                  slti         s7, gp, 1686
                  and          t3, s9, s6
                  bgeu         s5, a6, 793f
                  slli         s11, s5, 7
790:              sub          s1, s5, s9
                  add          a5, s10, a5
                  or           gp, t6, tp
793:              beq          s9, s0, 802f
                  bge          a1, gp, 795f
795:              ori          t2, s2, 420
796:              srl          t2, s11, t0
                  slti         s8, gp, -550
                  srli         t1, a3, 13
                  srl          s0, s9, t6
                  sra          t0, a2, a1
                  slli         t4, t0, 29
802:              nop
                  sra          s11, t3, s3
                  sltiu        s9, zero, -1200
                  srl          s10, t5, a3
                  slt          t0, sp, a6
                  nop
                  blt          s9, a6, 819f
                  andi         s5, s2, -1951
                  srl          gp, a6, t3
                  and          a5, s6, a4
                  blt          a1, a5, 824f
                  addi         s8, zero, 0 #init loop 1 counter
                  sltiu        zero, s2, -1894
                  sll          gp, t2, a5
                  addi         t3, t1, 636
                  srl          sp, sp, a4
                  sltiu        a1, a6, -1253
                  ori          t4, zero, 311
                  addi         a4, t2, -821
                  sltiu        s11, s1, 280
                  addi         a5, zero, -13 #init loop 1 limit
                  ori          s7, s5, -1742
sub_3_10_1_t:     and          s1, a3, s10
                  xori         s1, a0, -904
                  andi         a6, t5, -77
                  addi         s8, s8, -2 #update loop 1 counter
                  srli         s6, s5, 4
                  sub          a6, t3, s8
                  addi         s0, zero, -7 #init loop 0 counter
                  addi         t1, zero, -15 #init loop 0 limit
                  xori         t4, s6, 345
                  sltu         t5, s3, a3
                  slli         a4, tp, 8
sub_3_10_0_t:     xor          s1, a5, tp
                  and          t5, s9, a3
                  addi         s0, s0, -4 #update loop 0 counter
                  bne          s0, t1, sub_3_10_0_t #branch for loop 0
                  sra          a6, s8, ra
                  sltiu        a6, s0, -1815
                  xori         a2, s1, -1200
                  ori          ra, t0, 110
                  bge          s8, a5, sub_3_10_1_t #branch for loop 1
                  lui          s6, 127667
                  sra          tp, t3, a3
                  sltu         t1, s8, t5
                  sltiu        a7, s7, -1463
                  bltu         s1, a5, 824f
                  bltu         s8, s11, 818f
818:              bgeu         zero, t0, 827f
819:              xor          t3, t1, t3
                  lui          t5, 803994
                  lui          t4, 987347
                  xori         a1, t3, 927
                  slt          ra, a2, t4
824:              srl          t1, a5, s0
                  and          gp, sp, t3
                  nop
827:              xori         ra, s3, 662
                  beq          a0, s4, 835f
                  sltiu        a2, a5, 700
                  srli         zero, s0, 9
                  add          a6, t3, zero
                  srai         a5, t3, 22
                  slli         ra, s2, 9
                  sltiu        s11, a1, 156
835:              sub          s1, a2, tp
                  and          s2, a4, s10
                  addi         a7, sp, -1139
                  sll          s6, s0, t5
                  nop
                  and          a1, a6, a5
                  andi         t0, s10, -681
                  bltu         sp, t0, 851f
                  nop
                  ori          s1, a0, -613
                  bltu         s10, t5, 847f
                  nop
847:              lui          t4, 647390
                  nop
                  sub          a2, s2, s4
                  addi         s10, a2, 1970
851:              add          t1, s10, t6
                  add          t5, sp, t5
                  xori         a7, a1, 806
                  sltiu        t4, s8, 997
                  xor          a4, a6, a2
                  sll          a7, t4, tp
                  srai         a4, t0, 2
                  sra          t0, t3, a1
                  slli         t2, s3, 4
                  bge          a1, t0, 873f
                  bgeu         s8, a5, 870f
                  add          t2, t3, a5
                  bge          t6, s10, 875f
                  nop
                  slti         s8, a1, 656
                  and          a1, tp, sp
                  lui          t2, 447127
                  and          s2, s9, a6
                  bge          a4, s3, 872f
870:              bne          s0, a1, 886f
                  ori          s5, a6, -94
872:              bne          s11, s3, 879f
873:              srl          a1, a0, a2
                  addi         ra, s0, -794
875:              sltiu        a3, a6, -1773
                  xori         t0, a3, 98
                  bge          t5, a1, 887f
                  auipc        t5, 564938
879:              or           tp, t1, t2
                  blt          t6, t1, 884f
                  bge          a5, t6, 897f
                  and          s7, s1, s9
                  slti         t3, s11, 1805
884:              srl          s2, zero, zero
                  sltiu        s0, s5, 64
886:              beq          sp, s1, 891f
887:              sltu         t5, t3, s10
                  andi         t1, s4, -784
                  or           s4, s0, a0
                  bgeu         s3, gp, 908f
891:              srai         t5, s4, 3
                  add          s4, t4, a7
                  bltu         t5, s3, 894f
894:              sll          gp, t4, t5
                  srli         s9, s10, 15
                  sltiu        t2, a0, -1720
897:              slti         a1, t3, 79
                  xori         s0, t5, -1643
                  blt          tp, a5, 911f
                  bge          t6, a4, 909f
                  sltu         s11, s8, s7
                  and          a5, tp, s2
                  sub          t2, a5, t4
                  bltu         gp, s0, 906f
                  add          zero, s11, t4
906:              srl          t3, s0, s6
                  sltu         a4, s2, t3
908:              beq          a5, t3, 924f
909:              srl          t1, s4, s1
                  blt          s5, t1, 921f
911:              and          s7, a7, a6
                  addi         s8, t0, 653
                  andi         t2, s0, -187
                  bne          a7, s4, 925f
                  ori          s10, tp, -1568
                  sltiu        s1, ra, 1794
                  and          a5, s7, zero
                  sub          s8, zero, tp
                  auipc        t1, 515763
                  srl          a6, t0, t5
921:              srai         a2, gp, 5
                  beq          s4, a2, 931f
                  auipc        zero, 869550
924:              and          t3, a2, t2
925:              sll          s5, s6, a4
                  sll          s2, t4, gp
                  xor          s8, s8, a3
                  xor          a6, a4, s10
                  sub          gp, a7, s9
                  slli         t0, t0, 8
931:              add          s5, a3, a6
                  bltu         a4, s2, 940f
                  srli         ra, s8, 4
                  beq          ra, zero, 941f
                  or           sp, gp, a1
                  sra          t3, ra, t4
                  and          t1, t4, s3
                  sll          s0, a1, s8
                  and          a4, a3, s11
940:              sltiu        s6, t5, -1121
941:              and          s2, s9, sp
                  addi         a5, s7, 672
                  sra          s0, zero, s2
                  bgeu         a0, s9, 949f
                  srai         a6, a7, 7
                  srli         s4, a0, 2
                  beq          gp, t0, 949f
                  sltu         s0, t4, a1
949:              bltu         s6, s4, 959f
                  auipc        s7, 103818
                  srai         t3, s7, 23
                  slti         t0, a6, -1613
                  blt          t4, a6, 971f
                  blt          s11, s0, 963f
                  ori          a7, t5, 1427
                  add          a7, s5, ra
                  xor          s1, s5, s10
                  addi         ra, s5, -32
959:              bltu         s11, t3, 975f
                  andi         t2, a4, -728
                  sll          s1, ra, s9
                  bne          s9, a7, 966f
963:              sub          s7, a6, t4
                  sub          gp, s7, s11
                  sltu         s9, t6, t6
966:              sltiu        s7, s0, 1965
                  or           ra, t5, sp
                  addi         t2, ra, -1566
                  xor          s0, s5, t5
                  add          s11, t5, s1
971:              lui          t2, 429624
                  blt          s0, s2, 975f
                  slt          t5, a1, s7
                  blt          zero, ra, 981f
975:              xori         ra, s0, 326
                  bltu         a5, s0, 980f
                  bge          t4, s4, 986f
                  srai         s8, a1, 25
                  bne          a2, s0, 983f
980:              bgeu         a7, t4, 993f
981:              sltu         a6, a4, a6
                  add          ra, tp, sp
983:              bgeu         a4, s5, 995f
                  xori         a1, a2, 402
                  sra          a6, t1, s3
986:              srl          sp, s2, gp
                  blt          s8, s1, 1004f
                  slli         t3, a0, 27
                  auipc        s9, 816047
                  or           a2, t2, zero
                  srai         a2, t3, 3
                  or           s6, t1, s1
993:              srai         a5, a5, 25
                  slt          zero, a0, a4
995:              beq          a2, zero, 1002f
                  nop
                  sra          ra, sp, ra
                  addi         s2, s5, -792
                  xori         t3, sp, 851
                  bgeu         a0, a0, 1001f
1001:             sltiu        t4, s5, -1951
1002:             andi         t2, t4, 1394
                  nop
1004:             xor          sp, t0, s6
                  bgeu         tp, s7, 1010f
                  sltiu        s11, s1, -1796
                  bgeu         t2, s10, 1009f
                  slti         s10, a2, -1311
1009:             addi         a1, t2, 876
1010:             auipc        t1, 830231
                  auipc        t5, 239954
                  slti         t1, t6, -1997
                  srli         gp, a1, 1
                  slli         s4, a0, 23
                  bltu         s11, s4, 1031f
                  xor          s4, s6, a3
                  blt          s11, s1, 1029f
                  bgeu         s1, a3, 1035f
                  add          t3, s5, gp
                  bge          a6, ra, 1030f
                  srl          t5, s1, t0
                  addi         s9, ra, -463
                  or           s9, s3, a7
                  slt          t2, a3, a0
                  blt          t1, s10, 1041f
                  slli         t5, s7, 9
                  sra          s4, a5, ra
                  bgeu         s1, a7, 1035f
1029:             slli         s2, s11, 6
1030:             bne          s11, s4, 1041f
1031:             andi         tp, a5, 1090
                  andi         s2, t5, -1345
                  bne          t4, s9, 1038f
                  andi         sp, zero, -112
1035:             auipc        tp, 376859
                  add          s0, t6, gp
                  andi         a5, t0, -1136
1038:             lui          a1, 662082
                  ori          gp, a4, 1404
                  or           a6, s6, s3
1041:             slli         s6, t4, 16
                  sll          sp, t1, a3
                  srai         s4, t2, 11
                  bge          s2, t2, 1051f
                  srai         a5, t3, 2
                  ori          t1, a5, 1946
                  sltiu        s0, zero, -684
                  beq          t6, s0, 1057f
                  xor          tp, s4, t4
                  sub          a4, a7, s9
1051:             beq          zero, s10, 1058f
                  add          zero, gp, a2
                  xor          a4, t1, a6
                  bgeu         ra, t5, 1056f
                  xori         zero, s10, 84
1056:             sltiu        a5, t5, 1458
1057:             sub          sp, a6, s8
1058:             xor          s6, t5, sp
                  and          t4, a2, ra
                  srai         t4, s8, 0
                  slli         t2, s8, 27
                  blt          a6, a0, 1077f
                  xori         gp, a1, -1321
                  sltiu        s7, s5, -750
                  and          a3, s10, s11
                  xori         t0, sp, -1691
                  bge          a1, a6, 1071f
                  or           s10, s10, a1
                  srl          tp, zero, t3
                  ori          tp, a6, 1761
1071:             sltiu        t2, a7, -1325
                  sra          a6, a4, s7
                  xori         t5, a2, 1995
                  blt          gp, a2, 1077f
                  xor          s6, t2, s1
                  blt          s8, s9, 1077f
1077:             sltu         s9, t0, s8
                  sltiu        a4, s0, 267
                  addi         s5, a0, 2
                  lw           ra, 4(s3)
                  sll          t1, a2, s9
                  addi         zero, s8, 519
                  sub          gp, t5, a3
                  addi         s3, s3, 48
                  sub          s2, t5, a4
                  xor          s11, s8, gp
1487:             addi x26, x1, 1
1487:             jalr x26, x26, 0
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
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
                  add x10, x19, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x2, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x2, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x2, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x2, x25, ecall_handler
                  li x25, 0x1
                  beq x2, x25, instr_fault_handler
                  li x25, 0x5
                  beq x2, x25, load_fault_handler
                  li x25, 0x7
                  beq x2, x25, store_fault_handler
                  li x25, 0xc
                  beq x2, x25, pt_fault_handler
                  li x25, 0xd
                  beq x2, x25, pt_fault_handler
                  li x25, 0xf
                  beq x2, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x19, x10, zero
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
                  add x19, x10, zero
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
                  add x19, x10, zero
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
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x19, x10, zero
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
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x19, x10, zero
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
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x19, x10, zero
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
