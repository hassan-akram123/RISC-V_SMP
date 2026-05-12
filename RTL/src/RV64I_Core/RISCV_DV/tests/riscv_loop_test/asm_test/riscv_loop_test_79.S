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
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0x6bf22cd2
                  li x1, 0xfc2ba67c
                  li x2, 0xf4c74a60
                  li x3, 0xd
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xfc61a975
                  li x10, 0x0
                  li x11, 0xf9d914c7
                  li x12, 0x4d36e7de
                  li x13, 0x0
                  li x14, 0x7e7b5286
                  li x15, 0x80000000
                  li x16, 0xc7919d96
                  li x17, 0x80000000
                  li x18, 0xaa9f9a5
                  li x19, 0xfa3810ed
                  li x20, 0x6cdfd27d
                  li x21, 0x2
                  li x22, 0x0
                  li x24, 0xb35ca82f
                  li x25, 0x80000000
                  li x26, 0x86473f0e
                  li x27, 0xf1658634
                  li x28, 0xf8afde45
                  li x29, 0x2
                  li x30, 0xf169bdbc
                  la x23, user_stack_end
main:             addi         s4, zero, -6 #init loop 0 counter
                  xori         s0, a7, 1165
                  lui          s10, 303737
                  nop
                  slt          s0, t1, a7
                  and          a6, ra, gp
                  or           s9, t1, zero
                  auipc        a2, 455382
                  lui          t1, 35056
                  sll          a4, s8, t6
                  addi         ra, zero, -13 #init loop 0 limit
main_0_0_t:       sub          sp, s2, a3
                  add          t4, a7, a2
                  add          a7, s7, s7
                  andi         tp, s2, -739
                  addi         s4, s4, -7 #update loop 0 counter
                  bne          s4, ra, main_0_0_t #branch for loop 0
                  ori          t1, s5, -853
                  bne          s11, s10, 19f
                  srl          ra, s1, t4
                  sltu         s10, tp, s7
                  bgeu         s9, s1, 17f
                  xori         zero, s11, 726
                  xor          a7, a1, a1
                  slti         a7, s0, 1463
                  slli         a2, a4, 26
                  or           t1, s8, s0
                  auipc        s10, 618235
                  addi         s9, zero, 5 #init loop 1 counter
                  srli         s8, t4, 12
                  srl          tp, t0, s9
                  addi         s0, zero, 9 #init loop 1 limit
                  xori         a6, s4, -1656
main_1_1_t:       and          gp, gp, a2
                  nop
                  addi         s9, s9, 3 #update loop 1 counter
                  slti         s11, s7, -1376
                  addi         t1, zero, 9 #init loop 0 counter
                  xor          gp, a4, s7
                  addi         t5, zero, 9 #init loop 0 limit
                  xor          zero, a2, a1
main_1_0_t:       sub          s11, t1, a7
                  auipc        zero, 489821
                  or           t0, s9, t6
                  sltiu        s1, s2, -518
                  addi         t1, t1, -8 #update loop 0 counter
                  srai         a3, s7, 1
                  bgeu         t1, t5, main_1_0_t #branch for loop 0
                  blt          s9, s0, main_1_1_t #branch for loop 1
                  srl          tp, gp, sp
                  sub          s2, s1, a5
                  auipc        a4, 385963
                  and          a6, t6, s7
                  sub          t0, a1, a6
                  srai         s0, a7, 31
                  auipc        s8, 369638
                  sltiu        a5, s3, -1357
17:               bge          t1, zero, 24f
                  srli         s11, s11, 4
19:               auipc        a7, 612920
                  sltu         sp, s4, t6
                  sltiu        s8, t3, 46
                  sll          zero, zero, zero
                  blt          t6, t0, 25f
24:               bgeu         zero, a1, 32f
25:               srl          t2, s3, a7
                  sltiu        a6, t4, -1447
                  nop
                  slli         s11, sp, 25
                  blt          a2, s2, 32f
                  bne          s9, s0, 37f
                  bltu         a2, zero, 51f
32:               srli         zero, s0, 15
                  bltu         t2, a7, 44f
                  sub          a7, a3, a5
                  srai         s9, t0, 24
                  srli         a1, t4, 28
37:               xor          s9, t4, a1
                  sltiu        t0, t2, -433
                  lui          sp, 19345
                  ori          s11, s5, -855
                  bgeu         ra, t3, 61f
                  srl          a3, ra, t0
                  srl          t0, zero, s10
44:               and          sp, s9, a1
                  slt          a1, a6, a4
                  sltu         t1, t5, s2
                  sra          t0, s10, t5
                  bgeu         gp, a1, 64f
                  addi         s10, s2, 946
                  slti         s11, s9, -1258
51:               or           tp, gp, a3
                  bne          t5, s6, 72f
                  bgeu         s3, t1, 68f
                  sub          s0, a7, s2
                  or           a2, s2, t6
                  and          sp, s9, a1
                  blt          zero, ra, 76f
                  and          s3, s2, sp
                  beq          s10, a5, 60f
60:               ori          s2, t0, -1219
61:               or           s3, a5, s11
                  add          t1, t1, t3
                  sub          t0, gp, t6
64:               sub          t2, t2, t2
                  srli         t4, s4, 25
                  andi         zero, a5, -900
                  blt          ra, s10, 72f
68:               bge          s5, s7, 86f
                  beq          t4, s9, 71f
                  xor          t2, s6, s1
                  and          gp, s2, a7
                  sll          tp, s3, t4
                  slt          t0, a2, s4
                  slli         s4, a7, 23
                  slt          a3, s5, s8
                  add          s4, s1, a4
                  lui          a3, 1044623
                  la           a6, sub_1
                  addi         a6, a6, 513
                  nop
                  or           s1, t0, a1
                  sra          s4, a1, s0
main_j1:          jalr         t1, a6, -512 #jump main -> sub_1
71:               sltiu        a1, tp, 932
72:               xori         t0, s5, 456
                  lui          zero, 362381
                  sub          a3, a3, a5
                  or           t4, t5, s9
76:               sltu         a6, s4, t3
                  add          t3, a5, t1
                  ori          s9, t4, -41
                  slt          t3, s10, t3
                  sra          s5, a6, ra
                  sltu         a7, t3, s3
                  sltu         a7, s0, a3
                  sub          a1, tp, s9
                  bgeu         s10, zero, 100f
                  nop
86:               auipc        t3, 86115
                  bltu         s5, t3, 98f
                  add          a6, s7, s3
                  blt          a3, t1, 97f
                  slt          a5, tp, s5
                  add          t3, s3, a1
                  beq          t3, s2, 112f
                  sll          t3, a5, s11
                  addi         ra, t0, -701
                  blt          t2, t1, 97f
                  blt          s3, tp, 108f
97:               addi         s1, t0, -918
98:               xor          ra, s3, s10
                  beq          s9, s4, 119f
100:              sltu         a0, s4, zero
                  sltu         zero, s8, ra
                  xor          s3, a5, s2
                  ori          tp, t5, -483
                  srai         s4, ra, 5
                  andi         t3, a3, -1116
                  srai         s5, s8, 0
                  addi         s4, s3, 1775
108:              xor          a7, t3, a1
                  srli         gp, s3, 29
                  srai         s0, s5, 25
                  or           t5, gp, a2
112:              bltu         s1, t3, 115f
                  or           ra, a7, s9
                  srai         s3, a0, 0
115:              lui          t4, 1015198
                  bgeu         gp, s9, 119f
                  bltu         t0, t1, 119f
                  andi         s10, tp, -1061
119:              andi         a2, zero, -99
                  addi         gp, s7, 2020
                  lui          s8, 764820
                  bne          a4, zero, 129f
                  srai         t0, s11, 7
                  blt          s4, zero, 128f
                  sltu         t0, s4, t4
                  bge          a0, s1, 146f
                  bgeu         s6, a2, 129f
128:              ori          tp, t4, -914
129:              add          a2, s2, s6
                  sll          s3, s6, tp
                  bltu         s4, s7, 146f
                  slli         s5, s10, 31
                  auipc        t5, 990968
                  or           a7, s1, s6
                  and          s4, zero, t5
                  sll          t3, s2, tp
                  add          a0, s3, t5
                  nop
                  andi         s0, a0, -1761
                  or           tp, s2, t6
                  lui          a6, 299441
                  ori          s1, a3, -1888
                  bltu         s7, a7, 146f
                  slli         t1, s8, 22
                  srl          s2, s2, a4
146:              sub          a7, s1, a1
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            ori          sp, s6, -1418
                  slti         s5, s9, 1583
                  bgeu         t3, t5, sub_2_stack_p
                  sra          a3, t6, a2
sub_2_stack_p:    addi         s7, s7, -56
                  sw           t1, 4(s7)
                  sub          a6, a7, sp
                  sll          a7, t3, s7
                  sltu         t1, a1, t6
                  slli         ra, a0, 25
                  la           tp, sub_3
                  slli         t4, t1, 8
                  sra          s4, s5, s7
                  xori         s9, a4, 1803
                  addi         tp, tp, -875
                  sra          t4, s10, t5
                  slt          sp, a6, s4
sub_2_j4:         jalr         t1, tp, 875 #jump sub_2 -> sub_3
                  addi         sp, zero, -3 #init loop 1 counter
                  addi         s4, zero, -17 #init loop 1 limit
                  slt          s2, a3, a1
sub_2_0_1_t:      ori          gp, a1, 1332
                  ori          t1, t1, -1230
                  add          s0, s4, s8
                  addi         sp, sp, -7 #update loop 1 counter
                  xori         s3, s1, -546
                  sltu         zero, s3, zero
                  sltu         t5, s10, t1
                  andi         t3, a2, 1052
                  add          s8, t3, s5
                  slti         s3, s6, 1927
                  addi         a0, zero, -6 #init loop 0 counter
                  srl          t2, t2, gp
                  addi         s9, zero, 15 #init loop 0 limit
                  auipc        t5, 533825
                  xor          a5, a2, s4
sub_2_0_0_t:      nop
                  sltu         tp, gp, tp
                  addi         a0, a0, 7 #update loop 0 counter
                  beq          a0, s9, sub_2_0_0_t #branch for loop 0
                  ori          ra, t3, 1572
                  srl          t5, a7, a5
                  sra          s8, t2, t2
                  and          s8, s9, s6
                  bne          sp, s4, sub_2_0_1_t #branch for loop 1
                  sltu         t3, a2, tp
                  srli         tp, s8, 21
                  xor          a3, t1, t6
                  sltiu        t3, t2, -1146
                  or           t2, s1, s4
                  ori          ra, t2, -238
                  or           s8, s0, a5
                  auipc        a2, 302022
                  bne          s1, s6, 16f
                  andi         a1, s0, 864
                  sltiu        a0, s0, -1333
                  sll          a7, t5, t0
                  srl          gp, t3, s0
                  sra          ra, s5, ra
                  srli         s0, s2, 27
                  slt          tp, a2, a3
                  xori         t0, s8, 682
16:               bgeu         a7, s5, 29f
                  add          s1, s8, zero
                  sltu         ra, ra, a0
                  andi         t1, a5, -827
                  or           s2, a5, t2
                  slt          sp, t6, zero
                  or           s10, gp, a3
                  sltu         s0, s6, t1
                  sra          t3, t1, s10
                  auipc        s4, 729810
                  sltu         a3, s7, s0
                  xori         t0, t0, -1727
                  sltiu        s11, a5, 808
29:               add          s0, a2, t2
                  and          s0, t6, s10
                  slti         s8, s0, -1205
                  andi         ra, a2, 931
                  srli         t4, s4, 6
                  srli         a7, zero, 9
                  beq          a0, s11, 50f
                  or           a1, a3, s10
                  andi         s8, t5, 965
                  bge          s7, s11, 42f
                  blt          a1, t4, 41f
                  or           a2, s2, s6
41:               srl          a7, s9, t3
42:               lui          s5, 171786
                  slti         a1, s8, 359
                  sltiu        s8, s2, 1480
                  bltu         a6, t0, 48f
                  slti         t5, t5, 1105
                  bge          a5, tp, 50f
48:               addi         t3, tp, -110
                  add          a0, t4, tp
50:               slt          s5, a4, a0
                  lui          s0, 870616
                  or           a2, s6, a6
                  lw           t1, 4(s7)
                  addi         s7, s7, 56
                  xor          a5, t3, ra
                  lui          s5, 373460
                  sub          s11, s3, s7
                  srl          s2, s11, tp
                  sub          sp, a4, a3
106:              addi x19, x6, 0
106:              jalr x19, x19, 0
sub_5:            nop
                  and          s4, sp, t1
                  and          t3, s1, s5
                  addi         s7, s7, -12
                  sll          s1, s7, s5
                  sll          s8, s9, t6
                  sw           t1, 4(s7)
                  xor          a1, s2, ra
                  addi         s8, zero, 5 #init loop 0 counter
                  ori          zero, a2, 1698
                  sll          a7, t3, s7
                  sra          s0, t3, s0
                  addi         s5, zero, 7 #init loop 0 limit
                  and          ra, a1, s4
sub_5_1_0_t:      add          a6, gp, a0
                  or           s2, gp, s3
                  srai         ra, s3, 5
                  addi         s8, s8, 3 #update loop 0 counter
                  xori         gp, s5, -817
                  auipc        zero, 700011
                  blt          s8, s5, sub_5_1_0_t #branch for loop 0
                  addi         s1, a6, 615
                  sub          a1, a6, s9
                  bgeu         ra, a7, 15f
                  slti         a5, t1, -782
                  auipc        s10, 800356
                  bne          zero, t6, 7f
                  andi         a6, t0, -1065
                  ori          s9, s0, 292
7:                auipc        t0, 1008890
                  slt          t2, s3, s9
                  sll          t4, t5, s11
                  add          a1, a4, a0
                  lui          a6, 888319
                  beq          t3, s3, 27f
                  lui          a2, 802751
                  slli         s4, a4, 9
15:               addi         s11, s6, -1097
                  nop
                  sub          s0, s4, s3
                  bgeu         t5, s6, 21f
                  slti         zero, a6, 1041
                  srl          s9, a2, a1
21:               ori          a3, s8, -1990
                  or           sp, s8, a4
                  add          t5, a1, a3
                  sltu         a0, a4, s11
                  xor          ra, sp, t2
                  bne          s0, s1, 39f
27:               and          s11, a7, s1
                  blt          gp, t1, 40f
                  sra          t4, ra, s2
                  sub          t2, a6, t0
                  addi         t5, t5, 1666
                  sra          t1, t0, a3
                  nop
                  sltu         a0, a4, a2
                  or           t3, t6, t6
                  slti         s9, a7, 1708
                  bgeu         a7, a1, 38f
38:               ori          a5, gp, 1031
39:               and          t1, s7, t1
40:               sra          t0, a3, t6
                  and          a7, s3, s7
                  srli         a2, s5, 22
                  nop
                  sra          a7, t2, zero
                  sll          a3, a5, t2
                  or           a0, gp, s7
                  blt          a0, a2, 56f
                  srai         a6, t4, 25
                  sltu         a4, s9, a4
                  bltu         zero, s8, 59f
                  bge          t6, a5, 56f
                  sra          a3, t1, t3
                  bltu         t4, a0, 67f
                  sltiu        t0, s0, 1217
                  andi         zero, s5, -1211
56:               sll          t5, t2, a7
                  andi         a4, s2, -332
                  sltiu        tp, a5, 1741
59:               and          s2, a5, a6
                  bne          a2, tp, 72f
                  srl          a7, s10, zero
                  bltu         t2, s7, 74f
                  slli         t0, s3, 23
                  addi         a2, sp, 63
                  bne          s0, s0, 76f
                  blt          t3, a3, 75f
67:               lui          a4, 513367
                  slti         s3, a3, 1471
                  addi         s4, s0, -1769
                  and          gp, s11, s8
                  sltiu        s9, sp, 1949
72:               bge          gp, a3, 88f
                  nop
74:               and          s4, a6, s4
75:               auipc        s10, 710723
76:               xori         t1, gp, 1462
                  slli         s10, sp, 3
                  bge          s5, t5, 83f
                  add          zero, t3, a2
                  sll          a0, a4, s8
                  blt          t3, s8, 101f
                  sra          ra, a0, s4
83:               slt          s10, ra, a6
                  and          gp, a2, a2
                  bltu         gp, t2, 94f
                  srli         a1, s9, 8
                  addi         s0, zero, 0 #init loop 0 counter
                  srai         s8, s1, 9
                  slt          a3, t5, s3
                  addi         s2, zero, 1 #init loop 0 limit
                  sltu         a0, s6, gp
sub_5_0_0_t:      xor          a5, s3, s9
                  addi         s0, s0, 8 #update loop 0 counter
                  sltiu        s11, t2, -953
                  blt          s0, s2, sub_5_0_0_t #branch for loop 0
                  sll          t5, gp, a7
                  blt          ra, a3, 90f
88:               sltu         a3, a4, s10
                  blt          a4, s3, 107f
90:               andi         a1, s1, -488
                  beq          s0, a4, 107f
                  sll          s3, gp, t2
                  srli         s5, t4, 7
94:               addi         s8, a1, 1299
                  sll          s10, s9, s5
                  srli         sp, t2, 31
                  lui          s11, 331103
                  beq          s0, t3, 107f
                  bgeu         a0, a3, 105f
                  add          s2, a5, t4
101:              bge          t1, a7, 103f
                  beq          a1, s5, 107f
103:              srai         tp, a3, 27
                  ori          a7, a6, 556
105:              xori         s5, s8, 1698
                  or           tp, s1, t3
107:              srl          gp, s11, tp
                  lw           t1, 4(s7)
                  sub          gp, ra, t5
                  addi         s7, s7, 12
                  and          gp, tp, s5
                  sub          s2, s0, a1
                  sub          s1, a2, s4
                  sltiu        zero, t4, -291
                  addi         s4, s3, 1402
                  ori          s0, a1, -11
149:              addi x28, x6, 1
149:              jalr x28, x28, 0
sub_4:            bgeu         a2, a3, sub_4_stack_p
                  ori          s11, t4, 829
sub_4_stack_p:    addi         s7, s7, -60
                  or           t2, gp, t2
                  sra          sp, t6, s2
                  andi         s3, t0, 676
                  sll          t2, a3, t5
                  sw           t1, 4(s7)
                  addi         t3, zero, 984
                  srli         a5, t1, 14
                  addi         t3, zero, -10 #init loop 0 counter
                  sltu         s9, t1, t1
                  srli         s10, gp, 7
                  and          s10, s1, gp
                  addi         a7, s8, 1738
                  srli         t2, sp, 15
                  addi         a5, zero, -2 #init loop 0 limit
                  andi         a1, tp, 1129
sub_4_0_0_t:      auipc        a4, 133084
                  srai         s3, s3, 18
                  addi         t3, t3, 8 #update loop 0 counter
                  beq          t3, a5, sub_4_0_0_t #branch for loop 0
                  andi         s0, t1, -1642
                  srai         a0, t5, 15
                  slti         t3, t1, 381
                  add          t3, t1, s4
                  srli         a7, tp, 22
                  srl          s10, s6, t3
                  srl          s0, s4, t4
                  srl          t3, zero, s3
                  bge          s7, s3, 9f
                  bgeu         sp, s3, 23f
9:                sra          t3, t0, t4
                  add          t3, t2, a5
                  bgeu         tp, t1, 31f
                  blt          a4, a6, 25f
                  blt          a2, s2, 33f
                  andi         s9, a1, -1459
                  bltu         zero, s4, 33f
                  sll          t5, a6, gp
                  addi         s5, a1, -1900
                  slti         a5, t3, 1163
                  srli         tp, a0, 29
                  lui          a5, 113918
                  addi         s2, s9, -1899
                  andi         zero, t3, 1538
23:               slli         a5, tp, 23
                  sltiu        s4, s6, 1166
25:               sub          sp, s6, t5
                  auipc        s2, 1033859
                  sltiu        t2, a3, 86
                  slti         tp, t1, -825
                  and          sp, t2, s4
                  blt          a7, a3, 33f
31:               andi         s2, a1, -1173
                  srli         a6, a3, 26
33:               blt          gp, s1, 49f
                  sll          t3, s6, a6
                  blt          zero, gp, 55f
                  bne          s0, a2, 39f
                  xor          sp, a0, a0
                  sltiu        gp, s4, -1083
39:               bge          s5, s4, 58f
                  slt          s5, s7, t2
                  and          s9, s10, s10
                  sll          t4, a4, tp
                  sra          s8, t6, s3
                  sltu         a7, s6, t0
                  slli         a3, s11, 26
                  bltu         s5, t3, 58f
                  slti         a7, ra, -1579
                  srli         s3, a1, 26
49:               slli         s5, s4, 26
                  bgeu         t3, ra, 64f
                  slti         s9, a3, -1773
                  ori          t0, s1, 1303
                  sra          sp, t5, s8
                  beq          s7, a7, 74f
55:               sub          s11, s0, t0
                  ori          ra, ra, 571
                  slti         sp, s7, -423
58:               beq          s10, t0, 59f
59:               xori         s5, s9, -1976
                  bne          a4, s10, 67f
                  sub          tp, s4, s4
                  sltiu        s8, s3, -1017
                  beq          s6, s8, 69f
64:               sll          s8, s8, a3
                  sltiu        a5, s5, -871
                  slli         ra, s6, 2
67:               bge          s9, s4, 68f
68:               xori         tp, s8, -201
69:               nop
                  bge          a5, a4, 75f
                  srl          a7, a4, s0
                  srli         t1, t6, 12
                  addi         s4, s5, -832
74:               slti         s3, t6, -298
75:               sra          s4, a6, s7
                  lw           t1, 4(s7)
                  srl          sp, s9, tp
                  srai         s1, t3, 15
                  addi         s7, s7, 60
                  xor          a1, s8, t5
104:              addi x7, x6, 0
104:              jalr x7, x7, 0
sub_1:            srli         a3, t3, 28
                  bltu         a6, a3, sub_1_stack_p
sub_1_stack_p:    addi         s7, s7, -52
                  xori         s2, s8, 637
                  sw           t1, 4(s7)
                  sll          t4, s7, tp
                  xori         a4, sp, -1841
                  sltiu        s4, a5, -1033
                  add          t0, t5, sp
                  and          s11, a4, s5
                  lui          t5, 193361
                  slti         t2, s4, 1275
                  sra          t4, s9, s7
                  or           t0, ra, a2
                  sra          s5, a2, t3
                  andi         s1, tp, 6
                  slli         s10, tp, 30
                  la           a5, sub_2
                  lui          s2, 113825
                  addi         a5, a5, 32
                  add          t5, s6, s0
                  bne          ra, ra, sub_1_j2 #branch to jump instr
                  auipc        t5, 675764
                  lui          tp, 515330
sub_1_j2:         jalr         t1, a5, -31 #jump sub_1 -> sub_2
                  addi         a3, zero, 9 #init loop 1 counter
                  addi         t4, zero, 20 #init loop 1 limit
                  xori         a4, a4, -1897
sub_1_15_1_t:     xori         gp, s2, -1555
                  lui          s2, 414615
                  sltu         s1, s2, tp
                  addi         a3, a3, 4 #update loop 1 counter
                  addi         s2, s7, 317
                  addi         t5, zero, 6 #init loop 0 counter
                  addi         t2, zero, -14 #init loop 0 limit
sub_1_15_0_t:     lui          s1, 1012333
                  or           a6, tp, sp
                  sltu         s9, t6, s6
                  addi         t5, t5, -10 #update loop 0 counter
                  srli         t0, gp, 16
                  auipc        s2, 360925
                  sra          sp, a2, s7
                  addi         s1, t4, 1662
                  bne          t5, t2, sub_1_15_0_t #branch for loop 0
                  bltu         a3, t4, sub_1_15_1_t #branch for loop 1
                  add          s11, s7, s2
                  addi         a3, zero, -4 #init loop 1 counter
                  sltiu        s11, a4, -649
                  lui          a2, 790545
                  addi         ra, zero, -6 #init loop 1 limit
sub_1_0_1_t:      and          s11, a4, s3
                  nop
                  addi         a3, a3, -7 #update loop 1 counter
                  addi         s0, zero, 7 #init loop 0 counter
                  addi         s8, zero, 6 #init loop 0 limit
sub_1_0_0_t:      and          gp, t6, a7
                  and          s5, s6, tp
                  slti         t4, a0, 999
                  xor          t4, a0, s4
                  slti         s2, s11, 1034
                  sltu         s5, s10, s2
                  addi         s0, s0, -5 #update loop 0 counter
                  bgeu         s0, s8, sub_1_0_0_t #branch for loop 0
                  sub          s5, t2, t4
                  bge          a3, ra, sub_1_0_1_t #branch for loop 1
                  xor          a2, s9, t2
                  addi         a0, zero, 5 #init loop 0 counter
                  ori          zero, s8, 811
                  addi         s10, zero, -10 #init loop 0 limit
sub_1_4_0_t:      sub          s11, s3, a0
                  auipc        a3, 422595
                  addi         a0, a0, -2 #update loop 0 counter
                  bge          a0, s10, sub_1_4_0_t #branch for loop 0
                  add          t0, tp, t4
                  addi         t0, zero, 9 #init loop 0 counter
                  slli         t5, s3, 9
                  add          s1, tp, s11
                  and          a3, a5, t4
                  xori         a1, s7, -1774
                  addi         a6, zero, 13 #init loop 0 limit
                  lui          s8, 156274
                  srli         ra, ra, 6
sub_1_10_0_t:     slt          t4, a6, s2
                  sub          s9, a6, a5
                  addi         t0, t0, 2 #update loop 0 counter
                  srai         a0, s3, 0
                  srai         s1, t5, 8
                  srl          t5, t3, s5
                  bltu         t0, a6, sub_1_10_0_t #branch for loop 0
                  slt          s2, gp, tp
                  addi         ra, zero, 9 #init loop 0 counter
                  and          t1, t6, s0
                  sll          gp, t6, s10
                  sra          gp, s3, s6
                  addi         s2, zero, 15 #init loop 0 limit
sub_1_12_0_t:     nop
                  nop
                  addi         ra, ra, 3 #update loop 0 counter
                  and          s1, s4, ra
                  ori          a4, s10, -1026
                  blt          ra, s2, sub_1_12_0_t #branch for loop 0
                  nop
                  addi         a0, zero, -1 #init loop 0 counter
                  ori          s1, s5, -1241
                  and          s5, a6, tp
                  addi         s9, zero, 18 #init loop 0 limit
sub_1_3_0_t:      sub          s3, s5, t1
                  slt          a5, a3, t2
                  addi         a0, a0, 6 #update loop 0 counter
                  srl          a3, t1, a3
                  slti         s11, s0, 480
                  srai         ra, a4, 6
                  srai         a2, s4, 23
                  xori         a7, t5, -203
                  srai         gp, s3, 11
                  bltu         a0, s9, sub_1_3_0_t #branch for loop 0
                  or           s5, t0, ra
                  addi         a6, zero, -4 #init loop 1 counter
                  xor          s2, a7, t0
                  addi         a3, zero, 3 #init loop 1 limit
sub_1_8_1_t:      slti         zero, gp, 332
                  or           t4, s9, gp
                  sltiu        s9, a4, -1095
                  addi         a6, a6, 9 #update loop 1 counter
                  sra          s8, s10, a3
                  addi         tp, zero, -2 #init loop 0 counter
                  addi         t0, zero, 1 #init loop 0 limit
                  ori          t3, a1, -1739
sub_1_8_0_t:      add          gp, s0, s11
                  sltu         s9, s9, a2
                  addi         tp, tp, 1 #update loop 0 counter
                  bltu         tp, t0, sub_1_8_0_t #branch for loop 0
                  srai         s11, sp, 0
                  bltu         a6, a3, sub_1_8_1_t #branch for loop 1
                  sltu         s8, t4, a7
                  addi         a6, zero, -10 #init loop 1 counter
                  addi         a0, zero, 2 #init loop 1 limit
sub_1_14_1_t:     xori         s0, a0, -122
                  addi         a6, a6, 2 #update loop 1 counter
                  slli         a5, s3, 13
                  addi         s3, zero, 9 #init loop 0 counter
                  addi         t0, zero, 12 #init loop 0 limit
sub_1_14_0_t:     nop
                  addi         s3, s3, 1 #update loop 0 counter
                  blt          s3, t0, sub_1_14_0_t #branch for loop 0
                  bltu         a6, a0, sub_1_14_1_t #branch for loop 1
                  xori         t3, a7, -1208
                  addi         t1, zero, -10 #init loop 1 counter
                  srl          a4, s0, a5
                  sltiu        s0, t5, -2048
                  nop
                  srai         a3, a3, 2
                  xori         t2, s6, 2003
                  addi         s2, zero, 11 #init loop 1 limit
                  xor          a4, tp, s0
sub_1_6_1_t:      sltiu        a0, gp, -1852
                  addi         t1, t1, 7 #update loop 1 counter
                  addi         s1, zero, 2 #init loop 0 counter
                  slti         s0, s5, 1418
                  addi         a1, zero, 20 #init loop 0 limit
                  xori         t2, zero, 1276
sub_1_6_0_t:      sltu         a5, a3, s3
                  ori          t3, a2, 715
                  addi         s1, s1, 9 #update loop 0 counter
                  ori          t2, s10, 1413
                  addi         a3, s5, 104
                  beq          s1, a1, sub_1_6_0_t #branch for loop 0
                  ori          s9, a6, -1211
                  beq          t1, s2, sub_1_6_1_t #branch for loop 1
                  srl          sp, a6, zero
                  addi         a0, zero, 4 #init loop 0 counter
                  add          ra, s1, s4
                  ori          s0, s6, -425
                  ori          t2, s11, -2018
                  ori          t4, tp, -407
                  or           a1, s5, a3
                  sltu         s4, t4, sp
                  sll          a4, a2, t4
                  srli         t4, a6, 8
                  addi         sp, zero, -19 #init loop 0 limit
                  and          s4, t6, a5
                  xori         a3, t2, -1272
                  lui          a2, 681368
                  lui          t5, 353010
                  slti         a2, a1, -290
                  addi         a6, sp, -1701
                  ori          s3, t0, -1130
                  xor          zero, a7, s10
sub_1_7_0_t:      xor          s1, s10, t4
                  slt          a2, t5, s6
                  xori         s9, s2, -1789
                  sltiu        a6, a1, -1940
                  xor          t0, s3, t2
                  addi         a0, a0, -9 #update loop 0 counter
                  andi         a7, s6, 116
                  lui          s5, 843386
                  sltu         a4, s1, s8
                  bge          a0, sp, sub_1_7_0_t #branch for loop 0
                  andi         s1, a4, 751
                  addi         s2, zero, -4 #init loop 1 counter
                  addi         t5, zero, 14 #init loop 1 limit
sub_1_9_1_t:      nop
                  addi         s2, s2, 9 #update loop 1 counter
                  srli         tp, s3, 21
                  addi         t0, zero, 10 #init loop 0 counter
                  addi         t3, zero, 9 #init loop 0 limit
sub_1_9_0_t:      nop
                  addi         t0, t0, -7 #update loop 0 counter
                  bgeu         t0, t3, sub_1_9_0_t #branch for loop 0
                  beq          s2, t5, sub_1_9_1_t #branch for loop 1
                  slt          s0, a3, s11
                  addi         a4, zero, 8 #init loop 0 counter
                  srli         t0, t6, 0
                  addi         a2, zero, 10 #init loop 0 limit
sub_1_13_0_t:     sltiu        ra, s5, 663
                  addi         a4, a4, 8 #update loop 0 counter
                  sltu         s5, t1, ra
                  blt          a4, a2, sub_1_13_0_t #branch for loop 0
                  slli         s4, s11, 20
                  addi         a5, zero, 2 #init loop 0 counter
                  addi         a7, zero, 5 #init loop 0 limit
sub_1_5_0_t:      andi         t2, s11, -678
                  addi         a5, a5, 1 #update loop 0 counter
                  sltiu        a2, s1, 1343
                  nop
                  bltu         a5, a7, sub_1_5_0_t #branch for loop 0
                  srli         a3, t2, 25
                  sll          t2, s7, s3
                  srai         a7, s10, 22
                  bne          s0, t0, 21f
                  andi         a4, t2, -921
                  beq          s11, ra, 19f
                  srl          zero, a6, s7
                  bltu         a1, ra, 21f
                  xor          s1, tp, a1
                  sll          s9, zero, s8
                  beq          a2, a6, 27f
                  lui          ra, 53722
                  srli         s11, t6, 0
                  and          t1, tp, a5
                  add          zero, t2, s6
                  sra          t2, s3, t2
                  sltu         t4, a0, a5
                  add          s2, zero, t1
                  addi         a7, a6, -346
                  srli         s2, s2, 25
19:               auipc        s8, 967118
                  slli         s11, zero, 0
21:               srli         a7, a3, 21
                  xor          t5, t6, a0
                  ori          s11, t1, -1373
                  bltu         t1, t2, 25f
25:               srl          s5, s8, a7
                  slt          s5, t3, a4
27:               srai         t3, t4, 19
                  ori          s1, t3, 1158
                  slli         s4, t1, 13
                  srli         a6, s9, 22
                  xori         sp, gp, -585
                  bltu         a1, t1, 50f
                  xor          a7, a3, a6
                  srli         ra, gp, 28
                  slt          s9, a0, sp
                  slli         a2, s4, 6
                  srli         a3, ra, 10
                  addi         a5, t5, 1496
                  bltu         t5, a1, 42f
                  add          zero, t5, a6
                  add          t2, a0, a2
42:               xor          a3, t1, t1
                  ori          s2, s8, -221
                  slli         t0, s3, 9
                  addi         a4, s6, 1381
                  slt          s2, s8, t5
                  and          a3, a6, t2
                  sltu         ra, ra, s9
                  xori         t0, t6, 630
50:               srli         zero, s0, 9
                  bne          sp, t6, 66f
                  add          sp, s10, t0
                  srl          a1, s2, t1
                  nop
                  srli         a0, s8, 25
                  sub          a5, t3, a6
                  andi         t3, s9, 685
                  beq          a2, a6, 74f
                  sll          t4, t6, tp
                  sltiu        tp, t4, 1928
                  xor          s0, s3, s5
                  xor          t0, a2, t2
                  bgeu         t5, a4, 75f
                  andi         a1, s7, -1669
                  add          s2, t6, a2
66:               lui          sp, 110519
                  sltiu        tp, t3, 908
                  xori         s8, s8, -1814
                  lui          t1, 761691
                  slti         t1, a7, -765
                  xor          a0, t2, t0
                  bltu         s11, t0, 78f
                  slti         s10, t2, 1252
74:               sll          s1, t3, gp
75:               slli         a4, t3, 12
                  nop
                  nop
78:               sltu         a7, s11, a3
                  add          a5, s9, a7
                  beq          a3, s3, 91f
                  sll          t4, s11, s10
                  xori         s2, s2, -1539
                  srai         s5, t1, 5
                  bltu         a4, a5, 103f
                  xor          t4, s6, s5
                  beq          s7, gp, 101f
                  sub          gp, sp, a3
                  beq          s0, s5, 104f
                  beq          s8, s2, 103f
                  srli         s3, ra, 10
91:               add          sp, a3, a6
                  bne          a3, a7, 108f
                  srai         sp, sp, 3
                  srai         a1, s7, 8
                  bltu         a1, t0, 115f
                  sltu         s2, t4, s5
                  nop
                  srli         gp, a5, 22
                  bgeu         a5, s3, 119f
                  auipc        s0, 536478
101:              bltu         s3, a5, 111f
                  nop
103:              auipc        tp, 107203
104:              xor          a0, s4, a3
                  sra          s3, ra, a7
                  auipc        tp, 71748
                  xor          a1, tp, a6
108:              beq          tp, ra, 112f
                  bne          t5, s9, 129f
                  sltiu        s0, t2, -282
111:              slt          a6, t6, a5
112:              slli         a4, a3, 31
                  lui          t1, 686270
                  sub          t4, s8, a0
115:              srai         s2, a1, 7
                  srli         s8, t3, 8
                  sltu         a0, a5, tp
                  slli         t5, a0, 17
119:              or           a4, s1, s7
                  sll          a2, zero, s2
                  sltiu        sp, a6, -888
                  blt          s8, s7, 128f
                  xori         a4, t5, 1458
                  beq          t3, s7, 125f
125:              blt          s9, t2, 132f
                  nop
                  bgeu         s8, t0, 132f
128:              srli         s0, t2, 25
129:              srli         t0, a5, 7
                  blt          a0, t3, 143f
                  bne          tp, a5, 142f
132:              bltu         s4, s3, 150f
                  sltiu        t1, s7, 1927
                  xor          a7, t4, a2
                  auipc        a3, 21001
                  or           s4, s7, a1
                  bne          t6, s6, 148f
                  bgeu         a4, a4, 149f
                  slti         s9, s0, -1902
                  andi         a1, t1, -1848
                  beq          t3, a5, 152f
142:              slli         a0, s2, 23
143:              slti         t4, t6, -1635
                  lui          t2, 404590
                  slt          s1, a3, s7
                  blt          a4, gp, 151f
                  slt          s9, a2, t3
148:              xori         s5, tp, 372
149:              blt          a4, s3, 156f
150:              ori          a6, a6, 845
151:              sub          a4, s7, a5
152:              slti         a0, s0, 711
                  and          s8, a5, s2
                  slt          t4, s11, tp
                  nop
156:              or           t3, t2, s9
                  bne          s3, t4, 163f
                  srli         s2, t2, 2
                  sltiu        gp, ra, 51
                  bltu         s7, t2, 175f
                  ori          t2, s5, -1499
                  bgeu         s6, s4, 177f
163:              slti         s9, a7, -1722
                  and          a0, a0, a7
                  sltu         t2, gp, t3
                  andi         t5, t6, 1432
                  bltu         s5, a2, 185f
                  andi         t4, a4, 695
                  sltiu        t1, sp, -1627
                  sltu         s10, t4, a6
                  bge          a7, s8, 189f
                  bgeu         s10, a3, 192f
                  and          s1, s6, t6
                  slt          s3, s7, a7
175:              sltiu        a1, s5, 706
                  slli         a0, t6, 29
177:              sra          a0, s7, tp
                  ori          s0, t0, 48
                  srai         zero, s2, 31
                  nop
                  sra          a3, ra, s4
                  sll          s1, ra, s10
                  sll          s10, s5, t5
                  blt          s6, t0, 204f
185:              bne          t1, s3, 204f
                  sub          a4, s1, s10
                  bltu         t1, t0, 206f
                  slt          a0, s0, s5
189:              ori          s8, s3, 1712
                  nop
                  srl          t3, a1, s3
192:              xor          t2, s5, s3
                  srl          gp, s4, s6
                  addi         a1, gp, -9
                  blt          a1, sp, 196f
196:              sll          s3, a5, a5
                  srai         sp, t5, 31
                  slli         gp, s4, 7
                  nop
                  blt          t1, s3, 213f
                  srli         sp, s1, 8
                  auipc        a5, 408101
                  sltiu        a1, gp, 118
204:              lui          s8, 507655
                  add          t4, t5, s6
206:              slli         s0, gp, 12
                  bgeu         s6, s5, 213f
                  lui          a1, 815403
                  nop
                  slti         t4, a7, 465
                  blt          s1, s9, 226f
                  sub          a2, s0, t0
213:              sub          a7, s9, s4
                  auipc        a7, 813039
                  add          s9, a2, s9
                  bge          t4, s5, 232f
                  srai         s3, a1, 15
                  sll          s1, t5, s8
                  sub          s0, a6, t2
                  srai         t2, ra, 31
                  sra          s5, a1, s10
                  slt          s9, s11, zero
                  sltu         s1, t2, t3
                  or           tp, s8, s6
                  nop
226:              bltu         s11, t1, 238f
                  beq          s10, gp, 243f
                  ori          s3, s5, 557
                  xor          sp, s7, a3
                  sra          a7, t3, s0
                  addi         t1, zero, 9 #init loop 1 counter
                  srl          a1, s5, a1
                  nop
                  sltiu        s9, t0, -1027
                  xor          t4, t2, ra
                  addi         s0, zero, -1 #init loop 1 limit
sub_1_1_1_t:      sltu         gp, a6, a4
                  slt          a3, zero, s11
                  addi         t1, t1, -10 #update loop 1 counter
                  lui          t4, 66145
                  srl          s2, a0, a3
                  addi         sp, zero, 1 #init loop 0 counter
                  addi         a0, zero, -8 #init loop 0 limit
                  lui          a7, 892651
sub_1_1_0_t:      slti         ra, a4, -491
                  xor          s11, a7, s6
                  xori         s9, a1, 749
                  slli         a6, a2, 7
                  sll          s1, s2, s4
                  andi         t2, s5, -965
                  srl          s8, s0, tp
                  addi         sp, sp, -1 #update loop 0 counter
                  slti         gp, t1, 494
                  bne          sp, a0, sub_1_1_0_t #branch for loop 0
                  sltiu        s3, s10, -1086
                  bne          t1, s0, sub_1_1_1_t #branch for loop 1
                  slt          s10, a7, ra
                  sub          a7, tp, t5
232:              slli         sp, s9, 4
                  sll          s1, a5, s0
                  bge          a7, s5, 252f
                  srai         gp, s9, 17
                  addi         zero, t3, 823
                  bne          t4, t2, 251f
238:              xor          s9, s8, s11
                  beq          s10, s10, 243f
                  sub          a0, a6, s8
                  bge          a6, s5, 251f
                  sll          s4, s3, s1
243:              srai         a2, s10, 28
                  lui          zero, 1031179
                  or           t5, s11, s2
                  bne          t3, a5, 262f
                  bne          t6, t0, 248f
248:              bne          s9, ra, 263f
                  slti         a3, s8, -405
                  and          a7, a6, s6
251:              sll          s1, a6, s5
252:              bge          t0, t2, 263f
                  and          a3, t5, a7
                  slti         s9, t6, 261
                  beq          t4, a5, 275f
                  or           s5, a2, tp
                  auipc        a6, 692079
                  slli         a4, s5, 25
                  and          t2, s11, s0
                  bge          t1, a2, 263f
                  bgeu         t0, s2, 272f
262:              xori         s5, t5, 1714
263:              sub          t1, s11, a2
                  sra          s9, t4, a1
                  beq          a1, a3, 275f
                  srli         s1, zero, 28
                  or           s8, a3, s5
                  auipc        a2, 142024
                  xor          s0, t6, sp
                  lui          a5, 516533
                  addi         s1, a6, -895
272:              srli         tp, s9, 30
                  slli         s0, s5, 30
                  auipc        t3, 547325
275:              xor          t3, s1, s9
                  sra          t0, zero, s8
                  srli         s3, a4, 19
                  slti         t4, a5, -526
                  ori          t4, t2, -498
                  auipc        a1, 782148
                  srai         tp, t4, 3
                  or           a0, s6, a7
                  blt          s9, s3, 296f
                  sub          s11, s2, s1
                  xor          t5, a2, a5
                  xor          ra, s1, s10
                  sll          s10, s11, t6
                  add          a0, t1, sp
                  bltu         t0, t6, 308f
                  srli         t4, t2, 11
                  slt          a0, a2, tp
                  sltu         t2, sp, s0
                  addi         tp, a0, 1040
                  slti         a0, gp, 1407
                  and          s4, s11, zero
296:              srl          a3, a5, a7
                  srl          zero, t1, s4
                  xor          a2, a1, s6
                  sub          zero, a5, zero
                  srai         s8, a6, 5
                  sll          s1, ra, a1
                  add          s4, sp, s5
                  blt          a2, a1, 309f
                  slti         a6, s8, 1110
                  srl          sp, ra, t0
                  srai         t0, t2, 3
                  slti         t3, gp, -1710
308:              sra          t1, t4, s5
309:              sra          t1, s7, s3
                  srli         s5, a6, 26
                  bgeu         gp, a7, 331f
                  beq          a6, t2, 330f
                  lui          t2, 82417
                  sra          s4, s7, s1
                  bne          s4, gp, 335f
                  srli         a4, s3, 20
                  sltiu        a6, sp, 179
                  xor          ra, t6, t1
                  sra          a4, s9, tp
                  sltiu        s2, t1, -1940
                  sll          t2, tp, sp
                  add          s4, t3, s10
                  slt          a0, s10, s10
                  srl          s4, gp, t1
                  sub          a6, gp, t2
                  bge          gp, s7, 341f
                  xor          tp, a1, s7
                  blt          a3, a1, 344f
                  sltu         s10, s2, s9
330:              lui          s3, 678808
331:              xor          t5, s5, s9
                  or           a0, s0, s9
                  slti         a1, t0, 257
                  and          t5, s3, t5
335:              sltiu        a3, a1, 95
                  srai         s10, s10, 28
                  auipc        a5, 979048
                  sub          t1, a2, s3
                  slt          zero, a5, s11
                  xor          a1, sp, s7
341:              add          a1, s4, s11
                  srai         gp, s2, 31
                  sll          ra, s4, gp
344:              srai         s4, t5, 6
                  slt          zero, s1, s5
                  srl          a5, a7, t2
                  andi         s8, tp, -43
                  sltu         a4, a5, a4
                  bltu         t5, s2, 363f
                  nop
                  or           s11, s0, a7
                  bge          tp, t0, 355f
                  and          s3, a7, s5
                  srli         t3, s6, 1
355:              sltu         tp, s6, s7
                  nop
                  andi         s2, s1, 1673
                  nop
                  bltu         s7, s3, 374f
                  sub          a3, a0, ra
                  bge          s3, s8, 379f
                  addi         zero, a6, 947
363:              xori         s1, sp, -676
                  nop
                  or           s4, zero, tp
                  srl          a4, t1, t0
                  xor          s2, s0, t5
                  addi         t4, s1, -1018
                  addi         tp, a4, 30
                  bltu         a5, s9, 382f
                  auipc        a2, 488139
                  add          s4, s2, a0
                  srl          t1, a3, s6
374:              slli         s2, a1, 0
                  slti         a3, t1, 1152
                  srl          a4, t5, s4
                  bgeu         a4, a6, 393f
                  sll          t5, a3, t1
379:              bge          s6, a6, 383f
                  srai         s0, a3, 10
                  xor          s3, t3, s6
382:              sra          s0, a0, tp
383:              srl          s4, s10, gp
                  slli         t3, s0, 8
                  sltiu        a1, a0, 999
                  srl          a2, a0, s7
                  bne          s7, s3, 393f
                  bne          t6, s3, 408f
                  bltu         s7, t3, 404f
                  nop
                  sltiu        a5, s5, -2045
                  xor          a6, s7, s11
393:              bgeu         sp, t6, 400f
                  sub          s11, gp, t0
                  bge          a3, a4, 400f
                  slti         s2, t1, 1948
                  sub          t3, t0, s0
                  lui          a1, 904599
                  slli         t3, a7, 8
400:              sltu         t2, zero, t0
                  or           a5, t3, s3
                  blt          a5, t1, 418f
                  bltu         zero, s11, 404f
404:              slli         a0, s11, 27
                  srl          tp, t4, tp
                  bne          t3, s0, 407f
407:              srl          t5, s2, ra
408:              xori         tp, s5, 1198
                  slli         s11, t6, 26
                  lui          a4, 799148
                  bltu         s11, s3, 426f
                  slt          s3, s1, s5
                  srl          t0, t2, a3
                  sltu         s2, s5, t5
                  ori          s0, t5, 1503
                  auipc        s1, 168277
                  srli         s10, s3, 4
418:              bgeu         s1, s9, 436f
                  sub          a6, s10, s2
                  lui          t5, 810692
                  sub          a1, tp, a1
                  sltiu        zero, s0, -282
                  xori         zero, s10, -535
                  beq          s9, a3, 435f
                  sll          a4, sp, s10
426:              ori          zero, s7, -216
                  lui          a3, 385696
                  bgeu         s7, zero, 439f
                  blt          s1, a7, 448f
                  auipc        a1, 842882
                  ori          zero, a7, -361
                  auipc        tp, 494207
                  sll          t0, a4, t0
                  beq          a4, a5, 454f
435:              srli         t4, s5, 20
436:              ori          a1, tp, -1957
                  xori         a0, t4, 1340
                  andi         a7, t4, 1677
439:              addi         s0, s4, 637
                  addi         a5, s0, 930
                  srl          a2, a3, s9
                  sltiu        t5, zero, -1997
                  bltu         s10, t6, 463f
                  sltiu        s3, a4, -228
                  srli         t0, s5, 1
                  srli         s3, ra, 29
                  addi         zero, t4, 874
448:              lui          a5, 810968
                  add          gp, tp, t5
                  lui          s2, 363889
                  addi         sp, sp, -127
                  slti         s2, a4, -1095
                  sltiu        t5, t1, 677
454:              sltiu        s9, s0, -442
                  srl          t3, a5, t0
                  sltiu        t1, s4, -1274
                  sltiu        s8, s10, -1741
                  bne          t5, a7, 471f
                  sltu         s5, s8, s11
                  auipc        a7, 878081
                  bgeu         s1, a3, 479f
                  xori         s4, s0, -170
463:              xor          s0, t2, a3
                  slti         a6, s6, 1910
                  ori          s11, s4, -1980
                  xori         s9, a4, -121
                  xori         a2, tp, 1743
                  sra          zero, s11, s1
                  srl          s2, s8, sp
                  andi         s10, s5, -1272
471:              and          a4, s5, s0
                  blt          t2, t3, 483f
                  ori          a3, s7, -1445
                  bltu         s1, s4, 481f
                  bge          zero, s7, 476f
476:              slt          s1, t5, s1
                  sll          a2, t0, s5
                  slli         a1, t2, 23
479:              nop
                  srl          s2, sp, s3
481:              slt          s9, s4, zero
                  slti         t5, a6, 972
483:              sll          t2, gp, t0
                  srl          gp, t2, s11
                  andi         a5, t3, -1223
                  bgeu         t3, a4, 489f
                  or           tp, gp, t6
                  bge          a2, tp, 502f
489:              beq          a4, gp, 508f
                  nop
                  add          s1, t5, s2
                  addi         a4, s9, 1499
                  bge          ra, s9, 497f
                  blt          a5, ra, 499f
                  andi         t1, t0, -147
                  auipc        s4, 490550
497:              sra          tp, a7, t6
                  blt          t5, a7, 504f
499:              sra          t5, s4, ra
                  bltu         a0, zero, 516f
                  srai         s8, a2, 22
502:              sll          zero, s9, t3
                  or           s11, t3, a2
504:              sltu         s10, zero, s3
                  bge          a6, a1, 515f
                  sltu         t0, s9, s5
                  sub          s5, a1, t3
508:              xori         a0, sp, -2014
                  bgeu         ra, s10, 524f
                  ori          s8, t4, 247
                  bltu         s8, s9, 530f
                  beq          s10, s4, 527f
                  slli         a0, t6, 16
                  beq          a0, s11, 525f
515:              lui          s9, 838843
516:              nop
                  ori          s9, s11, 900
                  add          s11, s11, t3
                  srli         t3, zero, 15
                  sltu         a5, a1, t0
                  bgeu         a7, s3, 536f
                  blt          s1, gp, 540f
                  nop
                  addi         gp, zero, -1 #init loop 0 counter
                  slt          a6, zero, s5
                  addi         tp, zero, -11 #init loop 0 limit
                  sll          t5, s0, t2
                  ori          a0, t2, -1535
sub_1_11_0_t:     sltiu        zero, s1, 1915
                  slti         s0, ra, -542
                  addi         gp, gp, -10 #update loop 0 counter
                  lui          sp, 871894
                  or           a2, a4, a2
                  beq          gp, tp, sub_1_11_0_t #branch for loop 0
                  xor          a7, a4, s4
524:              bltu         s3, tp, 544f
525:              auipc        s5, 323356
                  and          s11, t6, a5
527:              bne          a6, s8, 543f
                  blt          s10, ra, 529f
529:              blt          zero, t2, 540f
530:              blt          s5, s2, 542f
                  srl          s1, t3, gp
                  sltiu        ra, s7, 1615
                  xor          s10, zero, tp
                  and          s5, s3, s9
                  lui          a7, 852643
536:              and          a3, t5, a5
                  xori         zero, tp, 1065
                  ori          tp, a1, -614
                  nop
540:              sll          s0, a7, t4
                  srl          a3, ra, sp
542:              slt          s9, sp, s6
543:              slti         s8, s7, -904
544:              bgeu         s4, a4, 560f
                  auipc        s5, 9282
                  sub          s8, sp, a7
                  blt          t6, a0, 565f
                  srl          t5, s10, gp
                  sra          t3, s8, zero
                  and          s5, s3, sp
                  ori          s3, s7, -1917
                  bge          s4, s5, 567f
                  xori         ra, a5, -23
                  blt          t0, a7, 560f
                  add          t1, s10, a7
                  sra          tp, s2, gp
                  slli         a1, s4, 1
                  slti         sp, a7, -222
                  auipc        zero, 1007832
560:              sltiu        s5, s9, -337
                  sra          s11, t0, s0
                  andi         a0, a4, -1918
                  nop
                  add          s10, a2, t1
565:              ori          a0, a2, 41
                  lui          t1, 49866
567:              srli         zero, s1, 5
                  add          t5, s0, t5
                  xori         s10, s4, -1581
                  auipc        s11, 829130
                  bge          a7, s3, 581f
                  ori          sp, s0, -768
                  sll          tp, s9, a6
                  xori         a7, s5, -312
                  bne          s8, s5, sub_1_j3 #branch to jump instr
                  andi         s10, s3, -1879
                  xori         a3, t5, -1354
                  nop
                  and          a2, s7, a3
                  add          a4, t6, t0
                  ori          s4, t0, -398
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sltiu        a3, t5, -854
                  srli         a7, s9, 8
                  sub          t1, s11, s5
                  slt          s8, tp, a3
                  bge          s0, s10, 597f
                  addi         a3, zero, -4 #init loop 0 counter
                  sra          sp, t3, a0
                  sltiu        a2, s8, -880
                  sltiu        t4, a1, -752
                  xor          ra, s10, a3
                  addi         s0, sp, -1226
                  ori          a0, ra, 1159
                  lui          s2, 321491
                  xor          sp, s1, sp
                  slt          s8, zero, s2
                  slli         a5, a0, 15
                  auipc        s3, 317148
                  andi         a5, s2, -1766
                  lui          a7, 547057
                  addi         tp, a4, -468
                  addi         s4, zero, -14 #init loop 0 limit
                  and          t2, t1, tp
                  auipc        ra, 448734
                  srl          a0, sp, t6
sub_1_2_0_t:      ori          a6, gp, 813
                  srli         tp, zero, 21
                  sra          t3, s0, t2
                  addi         a3, a3, -10 #update loop 0 counter
                  beq          a3, s4, sub_1_2_0_t #branch for loop 0
                  srli         t0, t4, 22
                  blt          s1, a2, 580f
580:              bge          t1, a7, 591f
581:              addi         t1, t3, -1454
                  sltu         s5, t2, a5
                  add          a3, a7, s4
                  slt          s9, t3, ra
                  blt          s8, ra, 591f
                  andi         a0, t2, 1264
                  bne          t5, t2, 602f
                  bltu         t0, s10, 595f
                  srai         tp, s5, 25
                  srl          a5, s3, s11
591:              sltu         a5, a0, t5
                  blt          s2, a4, 604f
                  blt          a5, t6, 609f
                  sra          a0, t4, t2
595:              sltiu        s3, s1, 157
                  ori          gp, s5, -1147
597:              srli         a2, t0, 1
                  xor          s1, t4, tp
                  bge          a2, s1, 617f
                  srl          a5, s1, s11
                  bltu         tp, t3, 604f
602:              bgeu         s11, s8, 608f
                  bltu         a5, a6, 618f
604:              sll          a4, a4, s2
                  slli         s0, t1, 15
                  srl          a5, s3, a5
                  srli         a2, t4, 8
608:              xori         t2, t5, 234
609:              beq          t2, ra, 614f
                  auipc        s10, 226242
                  slt          t0, tp, gp
                  bltu         s7, sp, 627f
                  and          s1, s5, a4
614:              or           gp, s0, t4
                  slt          a6, s10, t2
                  srli         zero, s1, 8
617:              xori         a5, s1, -482
618:              xori         t5, s0, 904
                  nop
                  slli         a3, s9, 1
                  bne          s3, s2, 639f
                  addi         a2, ra, 1467
                  srai         s5, a2, 11
                  andi         t4, a1, 1218
                  beq          s4, s5, 636f
                  andi         t1, s0, 1979
627:              nop
                  slt          s10, ra, t0
                  addi         t5, sp, -1966
                  srai         t4, a2, 12
                  xori         s1, zero, -1592
                  xori         a4, s7, -200
                  ori          s0, gp, 23
                  blt          s3, a4, 650f
                  bgeu         s3, sp, 636f
636:              auipc        a0, 719918
                  beq          t3, s1, 653f
                  xori         a6, s9, -1848
639:              addi         s11, t2, -853
                  srli         gp, a2, 17
                  bge          s1, s4, 661f
                  sltiu        s5, s1, -1534
                  beq          s8, t5, 657f
                  srli         s0, a3, 20
                  srl          gp, s4, s3
                  bne          a4, a6, 666f
                  srl          s2, gp, s11
                  nop
                  beq          s10, a6, 662f
650:              lui          a2, 662103
                  xori         a2, gp, 1964
                  addi         s10, s5, -441
653:              slli         a4, s2, 27
                  blt          tp, s3, 672f
                  nop
                  slti         a4, a6, 1833
657:              beq          s2, tp, 677f
                  lui          t5, 232534
                  xori         a1, t0, -459
                  andi         a5, t0, -1076
661:              xori         s11, t4, -1668
662:              ori          a5, a0, 214
                  andi         t1, tp, 1371
                  xori         tp, sp, 1151
                  lui          s5, 657066
666:              and          s2, a5, a7
                  andi         t3, s8, -2045
                  srai         s1, t1, 13
                  xori         a7, t4, 977
                  bgeu         gp, a2, 685f
                  sra          ra, t5, zero
672:              sub          s9, a4, a4
                  slt          s3, s10, s7
                  blt          s7, t6, 685f
                  srl          s11, s3, sp
                  xor          gp, a7, s4
677:              srl          s4, ra, sp
                  xor          sp, s9, a7
                  bltu         a6, a4, 683f
                  sltiu        gp, t1, -1695
                  sub          t2, t3, sp
                  beq          a1, a6, 701f
683:              addi         zero, s3, 216
                  nop
685:              ori          s8, sp, -1790
                  slli         s5, t4, 9
                  or           s2, sp, tp
                  andi         zero, zero, 461
                  bge          s2, s5, 696f
                  blt          tp, a3, 710f
                  srl          a2, a5, a5
                  slli         s1, a1, 23
                  srli         s11, a2, 21
                  and          s11, t0, a3
                  srli         s2, s8, 18
696:              srli         ra, s2, 30
                  srai         ra, zero, 25
                  auipc        t3, 641663
                  sra          tp, a2, s3
                  add          t5, ra, s4
701:              slli         gp, s8, 19
                  add          s0, a5, s0
                  ori          a4, s0, 195
                  xori         a1, ra, -1525
                  andi         t0, a5, 1716
                  andi         a1, t6, 855
                  addi         a0, s5, 1913
                  bge          s7, t3, 719f
                  addi         a0, a1, 1850
710:              blt          s11, s4, 721f
                  nop
                  bge          t3, s9, 725f
                  xori         a2, a3, 644
                  slli         s5, a3, 22
                  bgeu         s6, s3, 733f
                  sub          zero, s2, t6
                  beq          gp, s3, 723f
                  srl          zero, a1, s8
719:              bltu         s1, s9, 739f
                  andi         ra, a6, 661
721:              sub          a6, gp, t5
                  slti         zero, s0, -1796
723:              nop
                  blt          a0, t0, 735f
725:              addi         ra, t4, 1419
                  auipc        s1, 384108
                  nop
                  lui          t1, 698434
                  bgeu         a5, s11, 745f
                  ori          t2, s10, -679
                  bgeu         a2, t3, 732f
732:              srl          t4, t0, tp
733:              sra          s3, s9, s10
                  lui          t2, 589692
735:              ori          s2, a5, -399
                  andi         a5, a3, -878
                  bge          sp, s1, 751f
                  bne          tp, s0, 756f
739:              sra          zero, s11, s2
                  or           s8, t0, tp
                  lui          t4, 216321
                  slti         t5, a0, -79
                  lui          sp, 901960
                  andi         s1, a7, 184
745:              and          s9, ra, a6
                  auipc        s8, 105445
                  nop
                  sltu         a6, a3, a7
                  srl          a5, t6, a7
                  srl          ra, sp, s7
751:              sra          t5, a6, s6
                  sltiu        s11, s7, -1772
                  blt          s8, s7, 768f
                  beq          a6, a5, 760f
                  and          t5, a5, a3
756:              slt          s8, t0, s11
                  addi         t4, t1, -1868
                  sltiu        a4, zero, -1246
                  srli         s0, a7, 28
760:              xori         a2, s3, 576
                  and          a4, t0, a2
                  andi         a5, s11, -1455
                  bne          s1, s11, 779f
                  bgeu         s10, s9, 782f
                  and          s10, sp, a1
                  addi         t5, a5, -1894
                  slti         s1, s4, 1742
768:              andi         s10, s11, 555
                  sltiu        a2, t1, 436
                  bltu         tp, zero, 775f
                  or           a0, ra, s4
                  xor          tp, s0, s2
                  sltu         s1, ra, s0
                  auipc        a3, 631552
775:              xori         a2, a0, 616
                  slli         s11, a4, 28
                  sra          a7, a6, a6
                  bgeu         t5, zero, 794f
779:              bge          s2, t6, 794f
                  sltu         s10, t6, s1
                  bgeu         s1, t1, 784f
782:              srai         zero, a5, 27
                  srli         s3, s0, 28
784:              ori          tp, a6, 625
                  bne          a3, s9, 800f
                  andi         t1, s3, -1182
                  xori         s2, a5, 1864
                  slli         s5, s2, 0
                  sll          s5, s11, s0
                  bgeu         s8, a7, 809f
                  slli         zero, s6, 27
                  srai         t5, t3, 19
                  nop
794:              or           s1, tp, t2
                  xor          s11, s7, tp
                  bltu         a6, s10, 800f
                  bgeu         s10, ra, 811f
                  srli         s11, s2, 24
                  sltu         s3, s1, sp
800:              bne          sp, s6, 801f
801:              add          a5, gp, t6
                  slti         tp, s2, 394
                  xori         t1, t5, -1200
                  sltiu        t3, a3, 465
                  ori          s0, sp, 257
                  lui          s8, 255878
                  bgeu         t0, a1, 811f
                  or           s1, ra, a5
809:              sra          a6, t2, a4
                  bge          s9, s8, 811f
811:              add          t4, a7, sp
                  sltiu        a0, sp, 716
                  lw           t1, 4(s7)
                  srai         s9, t5, 17
                  sltu         s3, t0, s3
                  addi         s7, s7, 52
                  ori          a5, s3, 1546
                  sll          a3, s10, t6
                  or           s2, t3, t5
                  andi         s5, s9, 820
                  srl          a4, t6, a6
                  nop
1123:             addi x20, x6, 0
1123:             jalr x20, x20, 0
sub_3:            addi         s7, s7, -16
                  sw           t1, 4(s7)
                  ori          a1, s8, 884
                  sub          a4, sp, sp
                  srli         t4, t0, 19
                  slt          a7, a5, s4
                  add          s1, s7, s2
                  addi         a2, zero, 2 #init loop 1 counter
                  addi         a7, zero, -16 #init loop 1 limit
                  srli         s11, t6, 3
                  sll          a6, s8, a1
                  sub          a0, t2, zero
                  sub          t1, s10, t2
sub_3_10_1_t:     or           zero, ra, s7
                  addi         a2, a2, -9 #update loop 1 counter
                  slti         s11, t5, -124
                  srai         a4, t4, 11
                  auipc        s9, 512991
                  addi         s1, zero, 2 #init loop 0 counter
                  lui          s10, 406118
                  addi         s8, zero, -14 #init loop 0 limit
                  ori          t5, s2, 921
                  sub          zero, a5, s0
                  or           s3, s9, a6
sub_3_10_0_t:     sub          gp, gp, s2
                  add          a6, a0, s6
                  slt          s3, a1, sp
                  addi         s1, s1, -10 #update loop 0 counter
                  bge          s1, s8, sub_3_10_0_t #branch for loop 0
                  sltiu        tp, s10, 1158
                  slti         tp, t5, -330
                  beq          a2, a7, sub_3_10_1_t #branch for loop 1
                  add          s2, a1, s4
                  addi         a1, zero, 9 #init loop 0 counter
                  nop
                  slti         zero, a4, -1258
                  sub          t1, s6, s1
                  xori         a7, t2, -127
                  addi         a4, zero, 12 #init loop 0 limit
                  ori          s11, t2, 965
                  srli         zero, tp, 11
                  srli         s11, s4, 13
                  xor          gp, a5, s4
                  xor          zero, s1, t6
sub_3_11_0_t:     sub          t0, t2, a3
                  add          t0, a7, s10
                  sll          s11, a5, t6
                  slt          zero, s11, s3
                  addi         a1, a1, 9 #update loop 0 counter
                  srl          s3, s2, s0
                  xor          ra, a7, s8
                  or           a2, zero, s9
                  andi         s5, a0, -489
                  slt          ra, a0, a7
                  addi         s8, s11, -395
                  lui          a5, 869544
                  andi         a7, s7, 1697
                  addi         a6, s2, 401
                  ori          t0, a0, 1953
                  blt          a1, a4, sub_3_11_0_t #branch for loop 0
                  ori          a0, s0, 591
                  addi         s2, zero, 3 #init loop 1 counter
                  srli         a2, s7, 6
                  addi         a7, zero, 19 #init loop 1 limit
                  slli         t4, s9, 24
sub_3_12_1_t:     slti         tp, zero, 362
                  addi         s2, s2, 9 #update loop 1 counter
                  addi         a1, zero, 0 #init loop 0 counter
                  srl          t1, s7, ra
                  addi         t0, zero, 1 #init loop 0 limit
                  sltiu        a3, a6, -1701
                  sltiu        t1, t4, 984
                  and          a3, a6, ra
                  or           s1, t3, s2
sub_3_12_0_t:     slti         a2, a7, -1614
                  lui          t1, 460066
                  addi         a1, a1, 3 #update loop 0 counter
                  sltiu        s1, s3, -1170
                  blt          a1, t0, sub_3_12_0_t #branch for loop 0
                  bltu         s2, a7, sub_3_12_1_t #branch for loop 1
                  or           s10, a4, s0
                  addi         s11, zero, 5 #init loop 1 counter
                  addi         a3, zero, 18 #init loop 1 limit
sub_3_13_1_t:     sltu         s1, a6, t0
                  addi         s11, s11, 4 #update loop 1 counter
                  addi         t1, zero, -7 #init loop 0 counter
                  addi         s2, zero, 11 #init loop 0 limit
sub_3_13_0_t:     slt          sp, t4, a1
                  addi         t1, t1, 7 #update loop 0 counter
                  srl          gp, a2, s8
                  bltu         t1, s2, sub_3_13_0_t #branch for loop 0
                  blt          s11, a3, sub_3_13_1_t #branch for loop 1
                  add          a4, a5, s5
                  addi         t5, zero, 8 #init loop 0 counter
                  addi         t0, zero, 12 #init loop 0 limit
                  addi         zero, zero, -1461
sub_3_9_0_t:      and          s0, s3, s3
                  or           a4, a1, gp
                  addi         t5, t5, 9 #update loop 0 counter
                  ori          s0, s8, 1630
                  sub          s10, tp, ra
                  slli         s2, tp, 10
                  sub          tp, t5, t4
                  blt          t5, t0, sub_3_9_0_t #branch for loop 0
                  xori         tp, a1, -171
                  addi         s4, zero, 2 #init loop 0 counter
                  sltiu        s10, a6, 122
                  addi         ra, zero, -16 #init loop 0 limit
                  add          s9, s0, gp
                  sltiu        t3, t2, 1341
                  xor          s1, sp, s11
sub_3_15_0_t:     sub          t2, a1, s5
                  or           t3, a1, a5
                  sub          zero, zero, zero
                  sltu         t4, t2, a3
                  add          a7, gp, t1
                  addi         s4, s4, -5 #update loop 0 counter
                  xor          a3, zero, a7
                  slti         t2, s8, 1146
                  sltu         s0, t5, a4
                  bge          s4, ra, sub_3_15_0_t #branch for loop 0
                  andi         t3, t6, 1469
                  addi         t0, zero, -1 #init loop 0 counter
                  addi         a2, a3, 1835
                  slli         s8, ra, 7
                  and          s1, sp, s1
                  nop
                  nop
                  srl          t2, t3, tp
                  auipc        tp, 427335
                  auipc        gp, 830820
                  addi         s3, zero, -15 #init loop 0 limit
                  nop
                  srai         a0, s2, 1
sub_3_5_0_t:      xori         ra, ra, 781
                  sltu         a6, a5, a3
                  ori          a1, t2, 1859
                  addi         t0, t0, -2 #update loop 0 counter
                  auipc        ra, 970952
                  addi         s9, gp, 4
                  bge          t0, s3, sub_3_5_0_t #branch for loop 0
                  srl          s2, a0, a0
                  addi         t2, zero, -1 #init loop 1 counter
                  addi         a2, zero, 0 #init loop 1 limit
                  nop
                  addi         a0, t5, -1077
                  sltiu        t4, s2, -144
                  lui          a5, 64507
                  ori          gp, a5, 1074
sub_3_1_1_t:      xor          s1, t3, a2
                  addi         t2, t2, 8 #update loop 1 counter
                  sll          s11, s3, a1
                  sltu         s9, s8, a2
                  addi         s8, zero, -7 #init loop 0 counter
                  sltiu        zero, s8, -550
                  addi         ra, zero, 3 #init loop 0 limit
                  andi         t1, a6, 1167
                  slli         a1, sp, 14
sub_3_1_0_t:      addi         sp, t6, -815
                  lui          a7, 440286
                  addi         s8, s8, 5 #update loop 0 counter
                  beq          s8, ra, sub_3_1_0_t #branch for loop 0
                  lui          t0, 180594
                  or           a3, a7, s9
                  srli         tp, t2, 6
                  add          t3, s7, s8
                  blt          t2, a2, sub_3_1_1_t #branch for loop 1
                  add          zero, s2, a7
                  addi         t4, zero, -4 #init loop 1 counter
                  slti         a2, s6, -318
                  addi         t5, zero, 17 #init loop 1 limit
                  auipc        a0, 762681
sub_3_14_1_t:     andi         a1, t3, -761
                  auipc        t1, 917346
                  srai         a7, s9, 23
                  xor          sp, s5, s2
                  xor          a1, s7, s10
                  addi         zero, s7, 386
                  srai         zero, a0, 29
                  addi         t4, t4, 6 #update loop 1 counter
                  slli         ra, t5, 18
                  and          s2, a7, t5
                  sra          s2, tp, gp
                  ori          ra, s2, -393
                  addi         s3, zero, 1 #init loop 0 counter
                  addi         tp, zero, 15 #init loop 0 limit
                  xori         a4, a7, -2042
sub_3_14_0_t:     add          a0, s8, t2
                  slt          a0, a0, s3
                  addi         s3, s3, 7 #update loop 0 counter
                  blt          s3, tp, sub_3_14_0_t #branch for loop 0
                  ori          a3, tp, 581
                  blt          t4, t5, sub_3_14_1_t #branch for loop 1
                  sll          s0, s2, t0
                  addi         tp, zero, 4 #init loop 0 counter
                  andi         a3, s10, 972
                  srai         t2, s11, 5
                  sltiu        s4, a0, 1104
                  addi         a2, s10, 584
                  sltu         sp, a6, a3
                  addi         a5, zero, 4 #init loop 0 limit
                  sra          t5, a2, a1
                  add          s11, t0, t0
                  xor          a6, t4, s9
sub_3_6_0_t:      and          s10, s5, t1
                  andi         s4, s2, 1877
                  slti         sp, s10, 216
                  addi         a6, s0, 496
                  sub          s9, a7, t0
                  sltu         s4, t4, ra
                  sll          sp, s4, s0
                  add          s9, a3, s6
                  addi         tp, tp, -1 #update loop 0 counter
                  nop
                  or           t0, s2, s7
                  and          ra, t1, s4
                  slti         a2, s1, 73
                  bgeu         tp, a5, sub_3_6_0_t #branch for loop 0
                  slt          s11, s5, s3
                  addi         t3, zero, 8 #init loop 0 counter
                  slli         a3, a2, 20
                  lui          sp, 89788
                  andi         s9, s5, 806
                  slt          t2, a7, tp
                  addi         t5, zero, 20 #init loop 0 limit
                  slt          gp, s7, a1
                  slli         a7, s8, 12
sub_3_7_0_t:      xori         sp, s1, -1763
                  and          a7, s8, a1
                  sub          a5, a4, s6
                  addi         t3, t3, 7 #update loop 0 counter
                  xor          ra, s4, t6
                  sll          gp, s10, a5
                  addi         s8, a5, -569
                  auipc        a3, 123708
                  xor          a3, s8, t4
                  sltu         a7, t6, s0
                  add          s2, sp, a5
                  bltu         t3, t5, sub_3_7_0_t #branch for loop 0
                  addi         t2, s2, -649
                  addi         t3, zero, 6 #init loop 1 counter
                  addi         a5, zero, 20 #init loop 1 limit
sub_3_3_1_t:      slt          a3, a5, zero
                  addi         t3, t3, 7 #update loop 1 counter
                  addi         t2, zero, 8 #init loop 0 counter
                  addi         tp, zero, 10 #init loop 0 limit
sub_3_3_0_t:      slt          a3, s9, gp
                  addi         t2, t2, 8 #update loop 0 counter
                  blt          t2, tp, sub_3_3_0_t #branch for loop 0
                  beq          t3, a5, sub_3_3_1_t #branch for loop 1
                  srl          gp, a0, t4
                  addi         s3, zero, -5 #init loop 1 counter
                  and          zero, s8, s7
                  addi         ra, zero, -19 #init loop 1 limit
                  xor          zero, s3, s0
                  nop
                  sra          a2, zero, a1
sub_3_4_1_t:      xori         t1, sp, 1225
                  addi         s3, s3, -1 #update loop 1 counter
                  or           t4, ra, s10
                  addi         a6, zero, -8 #init loop 0 counter
                  slli         a1, zero, 29
                  srai         t4, a5, 13
                  auipc        t5, 670662
                  addi         a7, zero, -16 #init loop 0 limit
sub_3_4_0_t:      lui          zero, 786175
                  sub          s2, s8, s4
                  sll          a5, a0, s8
                  srai         s11, s7, 4
                  srli         t0, tp, 27
                  add          s8, a6, t2
                  addi         a6, a6, -9 #update loop 0 counter
                  ori          t2, t6, -345
                  bge          a6, a7, sub_3_4_0_t #branch for loop 0
                  sltu         s0, a7, a7
                  srli         t4, a6, 24
                  bge          s3, ra, sub_3_4_1_t #branch for loop 1
                  andi         zero, s6, -645
                  addi         s3, zero, -10 #init loop 0 counter
                  sub          a3, a3, s8
                  sub          t3, s9, s7
                  sltiu        a0, s7, -751
                  and          sp, s0, s9
                  auipc        t3, 129855
                  srli         a0, s6, 30
                  slli         s11, sp, 15
                  addi         s1, zero, 14 #init loop 0 limit
                  ori          t4, s1, 61
                  and          s8, a2, s1
                  sltu         a4, zero, gp
                  slli         s8, t1, 14
                  sll          a1, a5, s4
                  sub          s11, t5, t0
                  sltiu        s9, s1, -1668
                  srli         a0, t3, 6
                  srl          a2, t4, s5
sub_3_0_0_t:      lui          zero, 7365
                  xori         s4, s0, 823
                  sll          a5, a6, a3
                  addi         s3, s3, 6 #update loop 0 counter
                  ori          s5, s8, 1700
                  sltiu        a4, s1, 1840
                  lui          a1, 80765
                  slti         s8, s2, -518
                  beq          s3, s1, sub_3_0_0_t #branch for loop 0
                  and          s8, s10, t3
                  nop
                  srai         gp, zero, 2
                  bne          t3, s4, 17f
                  lui          a4, 897001
                  and          s5, t2, s5
                  xori         s10, t5, -348
                  srl          zero, a5, s3
                  xor          a1, s5, s11
                  or           tp, t4, s11
                  bltu         ra, a4, 18f
                  or           a0, a1, a3
                  xori         t5, sp, 1193
                  add          a4, s6, a2
                  srl          a2, sp, t6
                  srl          s11, t4, s1
                  slt          s11, a1, gp
                  xori         a0, sp, -1776
17:               sltiu        a3, t1, -259
18:               auipc        s3, 303671
                  sub          s8, a3, s5
                  xor          t0, s10, zero
                  bgeu         s1, a1, 24f
                  slt          s9, s6, a6
                  slli         a0, a6, 29
24:               sltiu        t5, s8, -389
                  nop
                  sltu         s3, zero, s8
                  blt          t4, s6, 29f
                  srli         a0, s2, 10
29:               ori          s0, a4, 198
                  srli         t5, gp, 4
                  bltu         a0, s8, 37f
                  nop
                  sltiu        t1, t3, -877
                  addi         zero, gp, 1947
                  or           a4, zero, s6
                  srl          a3, t3, s0
37:               sltu         a4, a6, a5
                  xor          s3, s6, s6
                  xor          t5, a7, a6
                  blt          a2, tp, 54f
                  lui          a0, 156560
                  andi         a1, a7, -2004
                  slli         s3, gp, 8
                  bne          t4, t3, 63f
                  slli         a2, a4, 4
                  xor          ra, s5, tp
                  bltu         s10, s5, 57f
                  add          t0, t2, t5
                  lui          a3, 44775
                  slli         s0, s5, 23
                  ori          s4, t2, -1491
                  slli         s1, a1, 31
                  beq          a3, s10, 61f
54:               srai         s1, t5, 6
                  slli         sp, t5, 21
                  slli         s8, t5, 30
57:               srl          a5, s2, a6
                  bgeu         sp, t6, 77f
                  lui          s9, 39452
                  sll          t2, s1, s0
61:               slli         s10, t6, 2
                  slt          a3, s5, s4
63:               bgeu         zero, s11, 74f
                  slt          a0, a5, t1
                  add          s8, s9, t6
                  sltu         a1, s4, s7
                  xor          a6, a2, t0
                  srli         s4, a2, 1
                  blt          s6, s10, 72f
                  or           t3, s5, t3
                  sltu         s8, t6, s2
72:               slti         s1, t6, -1955
                  srai         s9, t4, 1
                  xori         a5, s0, -1180
                  slt          a4, s0, a0
                  lui          t0, 496941
                  la           t2, sub_5
                  sra          a7, zero, s8
                  sltu         s3, t4, s8
                  addi         t2, t2, -17
                  nop
                  srai         a6, a6, 13
                  beq          t4, t1, sub_3_j5 #branch to jump instr
                  srli         a2, s10, 3
                  ori          tp, s3, 34
sub_3_j5:         jalr         t1, t2, 17 #jump sub_3 -> sub_5
74:               bne          a4, a1, 92f
                  bge          a5, a0, 87f
                  bge          a0, t4, 85f
77:               slti         a3, s6, -410
                  bge          s5, s0, 86f
                  lui          ra, 696663
                  slti         s8, a7, 460
                  sra          s1, ra, t2
                  nop
                  or           t5, s1, s7
                  beq          t1, s4, 93f
85:               bne          t1, s8, 99f
86:               sub          a5, t5, s6
87:               slti         a5, s4, 1372
                  bltu         s7, a5, 108f
                  add          gp, ra, s8
                  beq          gp, s10, 94f
                  nop
92:               xori         s1, s9, 1199
93:               bltu         t1, t4, 99f
94:               srl          s1, a0, s3
                  add          s9, a6, zero
                  or           s10, s11, s1
                  xori         a5, sp, -53
                  slti         gp, t5, 1221
99:               slti         ra, a6, 1516
                  xor          a0, t5, s2
                  sltu         t3, ra, ra
                  sra          a7, a3, a4
                  or           a3, a0, t5
                  or           t3, s10, s4
                  nop
                  xor          s8, s9, gp
                  lui          s2, 1022290
108:              lui          tp, 812143
                  bge          s9, a4, 113f
                  and          t5, t6, zero
                  auipc        s4, 106249
                  blt          s10, t1, 132f
113:              bltu         zero, s8, 118f
                  ori          a7, t4, 476
                  and          tp, a4, tp
                  slt          t3, s11, zero
                  auipc        t5, 416456
118:              xor          a0, a5, gp
                  xor          a3, s8, t1
                  auipc        a5, 387092
                  slli         t0, a7, 19
                  bge          s0, zero, 123f
123:              bgeu         s7, sp, 132f
                  ori          ra, ra, -662
                  bgeu         s2, t5, 130f
                  sra          gp, sp, s10
                  sll          s5, gp, a0
                  xori         s8, ra, 1794
                  srli         s5, gp, 1
130:              bne          s11, ra, 143f
                  slli         s11, t6, 16
132:              slti         s2, t2, 1582
                  sll          s4, t3, t2
                  sltu         t0, gp, a4
                  sll          a0, tp, a7
                  sra          t5, a2, a6
                  bgeu         t2, gp, 153f
                  slti         a2, t0, 5
                  sub          s2, s0, s1
                  addi         s9, t6, 869
                  srli         t1, s7, 14
                  xor          a3, t4, s0
143:              or           a7, s1, t2
                  blt          t1, s8, 149f
                  srl          t2, t1, tp
                  sltu         a2, s8, a4
                  sll          t5, t0, s8
                  addi         s11, ra, -535
149:              xori         a0, s0, -1320
                  xori         a7, t5, -1830
                  srli         a4, s7, 20
                  sltiu        s2, s3, 540
153:              or           s10, sp, a7
                  slti         s10, a3, 568
                  and          s2, s11, a2
                  slti         s8, s0, 27
                  bltu         s10, a6, 177f
                  nop
                  xori         s3, t6, -635
                  srli         t4, a5, 30
                  sltiu        t0, sp, 1753
                  sltu         s8, s6, s2
                  srli         zero, t6, 26
                  slt          zero, a7, t5
                  sll          a4, a6, s10
                  andi         ra, a5, -575
                  addi         a2, a0, 656
                  nop
                  add          s5, s4, s4
                  and          t0, s0, t0
                  nop
                  slli         a5, a2, 30
                  add          t0, t6, s5
                  add          s0, t1, t0
                  sra          t4, s3, a5
                  slt          sp, gp, zero
177:              add          s1, s7, a3
                  ori          s2, a2, -572
                  sub          s5, s6, zero
                  nop
                  addi         a7, a5, -576
                  and          s10, a1, t4
                  bge          s1, t1, 189f
                  bne          a7, gp, 185f
185:              or           a4, a7, a7
                  ori          t2, s7, -1850
                  nop
                  slti         s10, a2, 1253
189:              add          a5, zero, a1
                  ori          t2, t2, 936
                  andi         a6, ra, 1146
                  auipc        gp, 349003
                  bne          a6, s6, 198f
                  slli         gp, a6, 22
                  beq          a7, a2, 209f
                  sltiu        zero, zero, -76
                  add          a7, a2, a2
198:              sltiu        a5, s10, -223
                  sub          s10, s1, s6
                  sll          s10, s6, a3
                  andi         t5, a2, 1512
                  sub          t3, zero, t0
                  lui          s4, 273191
                  add          s0, t2, a2
                  slli         s4, t0, 27
                  ori          a1, ra, 1483
                  beq          a7, s7, 221f
                  blt          s3, ra, 218f
209:              or           sp, a1, a4
                  xori         s3, s7, 1807
                  and          s2, t0, a3
                  blt          s3, a3, 228f
                  or           t4, a5, s1
                  slti         a2, gp, -554
                  ori          zero, t5, -1965
                  ori          a6, t5, 1897
                  sub          zero, a1, s4
218:              xor          s2, a0, s10
                  addi         ra, s3, 1691
                  blt          zero, t0, 239f
221:              bge          gp, s5, 230f
                  sra          s4, s0, tp
                  blt          s3, a0, 227f
                  nop
                  andi         t3, t2, 738
                  bne          a6, s1, 229f
227:              andi         s9, s11, 93
228:              or           s4, t3, s8
229:              blt          s7, s7, 249f
230:              xori         a0, a1, 1610
                  bltu         s1, s9, 240f
                  andi         a2, a7, -1819
                  xor          a1, a1, zero
                  bne          a3, s3, 237f
                  sll          t3, s6, s2
                  sltiu        s1, s9, 748
237:              or           s8, s2, t4
                  nop
239:              addi         s4, s2, -1083
240:              lui          a3, 894912
                  add          t0, gp, s1
                  slti         tp, s1, 528
                  bltu         a4, t3, 252f
                  sltu         s2, a5, a5
                  bne          a1, s9, 253f
                  sra          t5, s11, t1
                  slti         t1, t1, -445
                  bgeu         t5, tp, 254f
249:              xor          s0, a0, s5
                  beq          s7, a6, 258f
                  slli         t5, s2, 5
252:              xor          s1, s4, s7
253:              bgeu         t6, t0, 257f
254:              sra          t0, s7, s0
                  bge          a2, t1, 270f
                  blt          t5, a0, 265f
257:              bltu         s9, a2, 269f
258:              sub          s5, t3, s4
                  sra          zero, a3, zero
                  sra          s0, s0, zero
                  bgeu         gp, s3, 280f
                  srai         a7, t6, 26
                  sll          ra, a5, a0
                  srli         s8, gp, 0
265:              blt          t6, a6, 278f
                  addi         t4, t4, 507
                  add          s8, s6, s3
                  slt          a1, a5, s1
269:              addi         s1, s0, 271
270:              ori          s9, a1, 1231
                  sub          s11, s6, t6
                  blt          s3, a4, 283f
                  bne          t0, s10, 278f
                  bge          ra, sp, 276f
                  xori         sp, zero, 1349
276:              sltu         t5, gp, a0
                  andi         a6, ra, 1565
278:              bgeu         t3, s8, 296f
                  bltu         ra, s11, 284f
280:              blt          t3, t0, 289f
                  sra          t3, s3, s10
                  bge          t4, a0, 288f
283:              slli         a6, s11, 27
284:              sra          s3, s1, s11
                  beq          s7, gp, 290f
                  slt          s3, a3, a2
                  sltu         s10, a2, s5
288:              sra          a1, t6, a3
289:              xori         zero, t6, -511
290:              add          s2, t0, s0
                  slti         sp, gp, 825
                  bltu         t2, s6, 294f
                  sltu         t1, t4, a4
294:              slli         t3, a0, 8
                  blt          s11, s4, 296f
296:              srli         s8, t4, 18
                  srli         s3, s4, 17
                  sub          a4, s3, t5
                  slti         a4, tp, 1614
                  sltiu        a3, t2, 350
                  srli         zero, t0, 16
                  srl          a2, sp, s8
                  sll          a0, tp, zero
                  bne          a1, s1, 308f
                  andi         s5, s3, -2025
                  srli         s9, a0, 24
                  srli         s1, t4, 29
308:              sltiu        ra, s8, -1773
                  ori          t2, t5, -1854
                  or           a0, s3, zero
                  sub          s4, t1, s6
                  beq          s4, t0, 323f
                  blt          t6, ra, 332f
                  blt          a7, a7, 333f
                  sra          s0, tp, s9
                  and          s1, t1, a5
                  beq          s6, t2, 327f
                  srai         s3, s1, 12
                  bgeu         a2, t4, 328f
                  nop
                  bgeu         sp, tp, 327f
                  slt          a3, a4, s8
323:              nop
                  addi         tp, s9, 414
                  ori          s1, s9, -1462
                  sub          s5, t1, s7
327:              and          s5, s5, a1
328:              bltu         gp, t3, 348f
                  nop
                  xor          s4, gp, s4
                  nop
332:              andi         s2, tp, 1060
333:              sltu         t0, s6, s3
                  sltu         s2, a3, t0
                  xori         s9, a0, 1750
                  auipc        t4, 526018
                  xor          ra, t6, t3
                  slt          t4, t4, s1
                  slli         a4, s3, 10
                  bltu         a0, s2, 356f
                  lui          a6, 771613
                  slt          sp, s11, t3
                  nop
                  bne          s0, s3, 358f
                  bgeu         s10, s9, 348f
                  sltiu        sp, a7, 73
                  sltiu        t0, s3, 1221
348:              slt          s0, s0, gp
                  xor          ra, s10, a3
                  slti         s3, a3, -588
                  srai         a1, s7, 21
                  bne          s4, s4, 367f
                  bne          ra, t2, 362f
                  slli         a2, a3, 0
                  xori         s0, s9, 853
356:              bltu         s1, t5, 369f
                  bge          t2, t0, 365f
358:              srli         s10, a2, 14
                  sub          a5, a0, a4
                  andi         s2, s7, -648
                  srai         s0, a4, 25
362:              sra          a7, a2, t5
                  and          zero, t1, s10
                  sll          t4, a5, sp
365:              nop
                  slti         a2, s6, -530
367:              or           s1, a6, a2
                  andi         gp, t6, 856
369:              srai         s8, s7, 19
                  srai         a4, s8, 19
                  bge          s1, a0, 375f
                  sll          a1, s3, t6
                  bgeu         sp, t0, 378f
                  srli         a4, t0, 25
375:              ori          s0, tp, 1090
                  slli         zero, a5, 17
                  slti         s2, a2, 1197
378:              ori          t1, gp, 303
                  and          a1, s4, a7
                  bge          s6, t6, 392f
                  bltu         s2, s3, 395f
                  bgeu         sp, tp, 391f
                  bge          s5, sp, 401f
                  auipc        t2, 132718
                  lui          t1, 359607
                  sltiu        t2, a2, -361
                  addi         s11, a1, -1688
                  slti         a7, tp, 571
                  sltu         t0, s3, s7
                  ori          s4, t3, -1797
391:              slt          t2, s6, t5
392:              or           s9, a6, s3
                  add          s9, tp, s1
                  xor          s0, ra, s1
395:              sra          s0, a0, a1
                  slti         t3, t4, -1450
                  srai         a0, a2, 24
                  slli         sp, s4, 26
                  srl          gp, a2, s2
                  sltiu        a2, s0, 62
401:              xori         zero, t4, -880
                  xori         s3, a3, -2
                  srl          s0, a6, t3
                  bne          s3, a6, 424f
                  xor          s8, a6, zero
                  ori          s0, s5, -75
                  bltu         t6, s9, 412f
                  and          t2, a7, s10
                  blt          s1, a1, 412f
                  auipc        s1, 481068
                  slt          a2, s7, a6
412:              sltu         t5, s11, t4
                  srli         a1, gp, 0
                  andi         sp, sp, 341
                  bge          a3, a6, 423f
                  bge          a5, s3, 432f
                  xori         a3, t6, 333
                  auipc        s9, 740368
                  srai         a0, a1, 13
                  or           tp, a0, s1
                  srli         a7, a5, 2
                  srai         a3, a4, 9
423:              nop
424:              lui          s5, 528961
                  sll          s11, s4, s9
                  slti         zero, s6, -191
                  lui          gp, 565668
                  srli         a1, a1, 20
                  blt          s5, gp, 447f
                  andi         t5, t4, -1652
                  slli         tp, t3, 4
432:              lui          s3, 698925
                  nop
                  xori         a3, t0, 143
                  andi         a1, s10, -1328
                  bgeu         s4, a5, 456f
                  lui          s0, 964885
                  sltiu        s11, tp, -615
                  xori         a1, s8, 729
                  addi         a1, zero, -629
                  ori          a4, t3, 1379
                  sltiu        s10, a3, -1633
                  sra          a7, t6, t4
                  bgeu         a2, s8, 453f
                  addi         s1, t6, 2042
                  lui          sp, 687166
447:              auipc        s9, 617658
                  sll          a1, s8, s9
                  beq          s3, a5, 454f
                  addi         tp, s9, 1208
                  srai         a4, a5, 5
                  sub          a3, s10, a0
453:              sltiu        ra, a4, -1884
454:              or           ra, s9, a4
                  slli         a5, s0, 23
456:              ori          t5, s3, 430
                  addi         s0, zero, 8 #init loop 1 counter
                  srai         s11, t0, 18
                  srl          ra, a0, t4
                  slli         t5, a1, 4
                  addi         a1, zero, 5 #init loop 1 limit
                  nop
sub_3_2_1_t:      slt          t3, s4, gp
                  and          t2, s1, ra
                  addi         s0, s0, -2 #update loop 1 counter
                  xori         a0, a1, 308
                  addi         a7, zero, 6 #init loop 0 counter
                  andi         zero, zero, 372
                  srl          a3, sp, t0
                  addi         s8, zero, 20 #init loop 0 limit
                  ori          t5, s1, -342
sub_3_2_0_t:      slt          s11, s0, s7
                  srli         t3, a7, 4
                  addi         tp, s10, -1582
                  addi         t0, t1, -1326
                  addi         a7, a7, 5 #update loop 0 counter
                  slti         s9, s7, -1395
                  bltu         a7, s8, sub_3_2_0_t #branch for loop 0
                  sltu         s9, t4, s10
                  slli         zero, s5, 22
                  bgeu         s0, a1, sub_3_2_1_t #branch for loop 1
                  sltiu        sp, s11, -322
                  srai         a0, t4, 6
                  bge          t2, tp, 473f
                  bgeu         s11, a1, 468f
                  ori          a3, s0, 640
                  sltu         gp, a7, s2
                  xor          t4, sp, s4
                  slli         a0, a1, 23
                  slli         a3, a3, 10
                  addi         tp, a0, -1649
                  andi         s4, zero, -172
                  addi         t3, s9, -181
468:              slli         t2, s6, 19
                  sub          a6, a0, a5
                  lui          t5, 308505
                  beq          s5, s4, 490f
                  bgeu         s2, tp, 492f
473:              xori         a1, t5, 1859
                  bgeu         tp, s3, 478f
                  lui          s4, 411815
                  bltu         s1, t4, 490f
                  and          a6, gp, tp
478:              sltiu        sp, t1, 1483
                  lui          t1, 1001266
                  bge          s7, a1, 499f
                  xor          a0, a3, s3
                  andi         t1, a1, -458
                  slli         a5, sp, 15
                  bltu         a1, s5, 488f
                  slti         a1, a2, -467
                  sltiu        a1, s8, -354
                  bge          s4, s8, 488f
488:              sll          t2, a3, s2
                  xori         a3, tp, -47
490:              bgeu         a5, s0, 504f
                  slli         a5, s7, 15
492:              bge          a3, s7, 500f
                  srl          sp, a1, sp
                  srl          tp, ra, a0
                  slti         a3, s7, 1579
                  bne          gp, s5, 501f
                  or           s0, s7, t1
                  srai         a0, s4, 5
499:              sltiu        t1, ra, -1514
500:              srl          a7, zero, t0
501:              lui          t1, 255306
                  bltu         zero, a3, 514f
                  sltu         t4, a3, t0
504:              sltu         a7, a2, s11
                  bgeu         t2, s9, 508f
                  srai         ra, a4, 2
                  srli         s10, gp, 28
508:              ori          s10, sp, 1028
                  blt          a5, ra, 511f
                  srai         gp, t6, 2
511:              add          s2, t2, a6
                  or           s4, a6, a3
                  bltu         zero, s4, 523f
514:              slli         zero, zero, 25
                  or           s5, s0, t3
                  slli         a7, s9, 31
                  bge          gp, s6, 530f
                  lui          t2, 532713
                  slt          s0, s1, s0
                  and          s9, t5, a6
                  sltiu        s10, a6, -1679
                  slli         s3, s5, 1
523:              sltiu        t3, ra, 1120
                  sll          s10, a0, t3
                  beq          zero, s0, 536f
                  addi         a4, a6, 1234
                  slt          s11, a6, s4
                  bge          a1, s10, 534f
                  bgeu         s0, t0, 534f
530:              srli         s3, s0, 20
                  bne          a3, a7, 534f
                  blt          t2, t0, 541f
                  andi         a4, t1, 1702
534:              bgeu         a1, t0, 543f
                  srli         a6, a2, 28
536:              srli         t1, s7, 25
                  sub          a4, tp, a7
                  bgeu         s8, s6, 546f
                  sltu         a2, t4, t5
                  and          s2, s9, a7
541:              blt          s8, zero, 547f
                  bgeu         a1, s6, 560f
543:              bge          s11, s4, 548f
                  sll          s4, a3, t1
                  nop
546:              srli         s3, s9, 20
547:              srai         a7, s11, 2
548:              slti         t0, t4, 1893
                  auipc        tp, 325023
                  slt          s2, a2, a0
                  slt          t2, t5, s9
                  sltiu        a0, s3, 626
                  lui          t0, 38718
                  auipc        gp, 81695
                  slt          s4, t4, t3
                  sub          a5, a3, s10
                  slt          a7, sp, s10
                  bne          s4, s1, 563f
                  and          gp, s0, a5
560:              slti         s2, s9, -1036
                  beq          t4, s11, 570f
                  bge          a4, t2, 582f
563:              xori         t5, s6, -1545
                  addi         s10, s3, 1502
                  srl          s0, s1, gp
                  slti         s3, t3, -1361
                  sltiu        t1, s9, -2004
                  slt          a5, a2, s5
                  bltu         s11, s11, 574f
570:              addi         a0, a6, -795
                  bltu         s4, gp, 575f
                  add          a3, s0, a0
                  lui          s2, 122144
574:              sltiu        t1, a6, 1667
575:              slt          a6, a3, ra
                  sltu         s3, s6, a6
                  srai         s3, t1, 20
                  lui          s9, 809125
                  lui          t3, 985948
                  lui          s4, 256077
                  blt          t6, a0, 601f
582:              andi         t2, zero, -1527
                  sra          s8, s4, s1
                  blt          a4, s11, 600f
                  bge          s2, s8, 604f
                  bgeu         a0, s6, 588f
                  auipc        s3, 644771
588:              ori          s2, a5, -160
                  xori         a7, s11, 1052
                  sltiu        a1, s4, -2033
                  bltu         s0, a3, 594f
                  xor          tp, s8, a5
                  lui          ra, 652976
594:              bge          a0, gp, 600f
                  ori          a4, s5, -7
                  or           a6, t6, sp
                  and          zero, a3, s8
                  or           s9, a2, t5
                  sltu         s1, t6, t2
600:              ori          s10, s0, 1111
601:              srl          ra, sp, a6
                  slli         ra, a0, 4
                  lui          a7, 561894
604:              srai         s9, a3, 1
                  sltu         sp, a4, a6
                  slti         zero, tp, -895
                  slli         tp, t3, 11
                  sltu         s1, sp, s10
                  bge          gp, ra, 610f
610:              sub          s9, a2, a3
                  sll          a3, s7, ra
                  sll          a1, t4, sp
                  srai         s4, t1, 25
                  andi         gp, a2, 1752
                  bgeu         s8, a4, 625f
                  sub          s10, s2, a7
                  andi         t0, ra, -1609
                  beq          t3, s4, 627f
                  srl          s4, tp, a6
                  beq          a3, s3, 623f
                  slli         s0, a1, 7
                  srl          s1, t0, s2
623:              beq          t3, t6, 637f
                  bne          t1, a3, 633f
625:              srl          t4, a1, t2
                  or           a5, s0, t5
627:              sub          a0, a1, t1
                  sltu         s9, gp, a5
                  ori          s0, s9, -29
                  sra          a3, zero, sp
                  auipc        s10, 675210
                  addi         s1, t6, 799
633:              ori          s5, a6, 2038
                  sltiu        t5, s11, -1902
                  lui          t2, 1033908
                  srai         s1, a1, 4
637:              bgeu         s0, t6, 646f
                  xor          a6, s2, s7
                  sub          s1, s5, s4
                  sra          t0, a0, t5
                  bge          sp, s1, 660f
                  srai         s1, a5, 19
                  addi         t1, a3, -1133
                  sll          t5, a1, s2
                  slli         sp, s3, 27
646:              or           gp, t3, t4
                  xori         gp, a6, 678
                  bltu         t5, s10, 656f
                  sra          t1, s2, a4
                  or           gp, s9, s0
                  sltu         t3, s11, s7
                  or           t5, a3, s4
                  bge          t2, sp, 657f
                  bgeu         a7, a3, 667f
                  sltu         t1, s4, zero
656:              xor          a0, a6, s5
657:              bltu         a2, s9, 665f
                  blt          t2, zero, 664f
                  srli         a0, a0, 29
660:              lui          a6, 291340
                  beq          s8, t6, 675f
                  bge          s10, sp, 674f
                  sltu         s5, a2, s10
664:              and          gp, zero, a4
665:              sltu         a0, t2, s3
                  ori          t4, t0, 963
667:              slt          s0, s10, s3
                  sub          a0, a0, s4
                  slti         zero, gp, -1991
                  sub          t2, s0, t5
                  srli         zero, a3, 11
                  sltiu        s10, s8, -2023
                  sra          t5, sp, s0
                  srli         s8, tp, 12
                  addi         a6, s5, 1566
                  sltu         s5, t0, s4
                  blt          s10, t6, sub_3_j6 #branch to jump instr
                  andi         gp, a7, -1385
                  srai         t1, s2, 5
                  andi         a1, t4, -25
sub_3_j6:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  ori          s1, a5, -1940
674:              andi         a0, a1, -735
675:              srai         s8, s3, 24
                  slt          a1, t5, s5
                  andi         ra, a7, 1837
                  auipc        s11, 1004284
                  or           a5, t2, s11
                  sra          t0, s10, a7
                  nop
                  sltu         s3, s7, ra
                  bltu         ra, t1, 694f
                  auipc        ra, 631920
                  xori         zero, a0, -990
                  bltu         s5, s8, 701f
                  lui          s0, 217497
                  xori         s5, t0, 286
                  blt          t1, s2, 703f
                  sub          t1, t2, s7
                  slli         s4, s0, 30
                  slli         sp, t0, 31
                  bgeu         tp, s0, 698f
694:              bltu         t0, a4, 702f
                  and          t3, a3, zero
                  add          tp, t3, s5
                  slti         s1, a0, -1033
698:              bltu         a2, a6, 712f
                  sltiu        t2, t6, -469
                  slli         t4, tp, 29
701:              srli         t1, zero, 20
702:              slt          a2, ra, s4
703:              slli         gp, s8, 27
                  or           s10, s9, s5
                  add          a7, t3, s10
                  and          t2, s10, zero
                  blt          a5, a1, 710f
                  xori         s10, s0, -1870
                  or           a3, s9, s8
710:              and          t3, s10, s11
                  and          s1, s2, ra
712:              auipc        a1, 592976
                  slt          s8, a5, s6
                  andi         ra, s11, -1644
                  sra          s5, s9, s1
                  sub          s3, a4, s8
                  sltu         a2, s1, s9
                  xori         t2, sp, -1352
                  auipc        t4, 728679
                  bltu         a7, s6, 729f
                  auipc        s3, 229634
                  andi         t5, t4, 1137
                  blt          gp, s8, 741f
                  or           a7, t4, s9
                  auipc        t4, 752484
                  or           ra, a7, zero
                  and          a5, tp, s4
                  slt          s3, t1, s6
729:              sra          sp, a5, t0
                  and          gp, a5, a0
                  bge          a3, tp, 736f
                  bne          s10, a5, 745f
                  xori         s1, s11, -574
                  add          s0, a6, s9
                  andi         t4, s7, 1937
736:              lui          a5, 29769
                  or           s10, a7, ra
                  srli         t1, a5, 1
                  xor          a0, s11, s1
                  slti         t1, s4, -1641
741:              xor          a0, a5, tp
                  srl          s5, t0, s7
                  xor          s0, a6, a7
                  srai         gp, s3, 14
745:              and          ra, gp, t5
                  addi         s8, s8, -336
                  nop
                  bne          s4, a4, 759f
                  or           gp, s4, zero
                  auipc        a1, 28178
                  auipc        gp, 231788
                  slti         t2, t3, -757
                  srai         a3, a3, 16
                  sll          s2, s5, a2
                  sub          sp, t2, tp
                  addi         a7, t0, 1926
                  xor          t1, t3, a4
                  lui          s1, 318716
759:              slli         s0, a7, 3
                  ori          sp, t3, 1001
                  srli         s11, s0, 3
                  nop
                  blt          s6, gp, 772f
                  bge          a7, s4, 773f
                  slti         a3, t5, -101
                  addi         ra, zero, -8 #init loop 1 counter
                  auipc        s0, 463474
                  srli         t5, t1, 13
                  addi         zero, t3, -1941
                  sra          s2, tp, a1
                  addi         s9, zero, -16 #init loop 1 limit
                  srli         t3, a4, 18
sub_3_8_1_t:      addi         sp, zero, -93
                  sltiu        s0, s11, 397
                  addi         ra, ra, -1 #update loop 1 counter
                  and          gp, t5, zero
                  addi         a7, zero, -10 #init loop 0 counter
                  addi         s1, zero, 20 #init loop 0 limit
sub_3_8_0_t:      xori         s4, gp, 229
                  sltiu        a6, t1, -665
                  addi         a7, a7, 10 #update loop 0 counter
                  nop
                  slli         s4, zero, 9
                  slli         a1, t6, 24
                  and          t0, s1, zero
                  slli         t2, sp, 7
                  bne          a7, s1, sub_3_8_0_t #branch for loop 0
                  sltu         t3, s4, s6
                  andi         s4, s1, -1785
                  srl          t5, a1, a0
                  add          s5, sp, s5
                  srli         s8, t6, 14
                  nop
                  srli         a3, s9, 3
                  bge          ra, s9, sub_3_8_1_t #branch for loop 1
                  lui          s11, 526535
                  sub          a4, s0, zero
                  bne          sp, t1, 786f
                  bgeu         s3, a1, 780f
                  addi         s3, s3, 368
                  bne          s6, s3, 790f
                  beq          s9, s8, 779f
772:              blt          s1, s3, 787f
773:              sll          t3, s0, a7
                  auipc        t4, 127160
                  sub          s9, a7, t0
                  andi         zero, t1, -387
                  slti         sp, tp, -1881
                  beq          s3, t6, 783f
779:              or           a6, t4, tp
780:              bltu         s10, t5, 789f
                  xor          a2, s2, ra
                  blt          t6, a6, 786f
783:              bgeu         s9, s9, 789f
                  lui          t1, 120613
                  lui          s9, 1166
786:              nop
787:              lui          a2, 846845
                  ori          t4, s4, -1289
789:              blt          gp, zero, 793f
790:              xori         s9, t0, -297
                  auipc        s3, 321993
                  add          ra, t0, t0
793:              sra          gp, a0, ra
                  sll          s1, s6, a4
                  xor          a1, a6, t4
                  srai         t5, gp, 0
                  add          gp, s0, t1
                  beq          sp, a2, 803f
                  sll          tp, t1, s0
                  and          s3, gp, a0
                  srai         ra, t1, 20
                  or           t3, t4, sp
803:              add          gp, t3, a2
                  sra          s4, a6, s4
                  lw           t1, 4(s7)
                  addi         s7, s7, 16
                  nop
                  lui          s0, 1036869
                  or           t4, a7, a5
                  sltiu        s9, s4, -190
1196:             addi x11, x6, 1
1196:             jalr x11, x11, 0
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
.word 0x55c02555, 0x4ffe3f70, 0xece21a7e, 0x088b4b1b, 0xeb18798d, 0x773b108a, 0x888a04fd, 0x613ad3af
.word 0xeb1fd1af, 0xc2e1b88e, 0xa606a730, 0x570653d3, 0xa0761b58, 0x45c75e35, 0x9aecefba, 0xb515d057
.word 0x828551d8, 0xbee38ace, 0x7bbdb6c5, 0x6714cb5f, 0x13775497, 0x5ac14a53, 0x2130cfb2, 0x1c2865e8
.word 0x3b379129, 0x6df6a812, 0xe7e33b5c, 0xb43e577d, 0x0e87a5f1, 0x4d9ecb4e, 0x063cde4d, 0xa7f2f856
.word 0x90eeb36d, 0xf34fd913, 0x9145ead7, 0x6dd29180, 0x0b1661be, 0x081ff5e4, 0xd2568ce7, 0x193f6964
.word 0x6fa967d4, 0xaa89f321, 0xe65c26cb, 0xb01704ed, 0x7eda4b9e, 0x84af2c31, 0x2a0c0c26, 0x85483b90
.word 0x8686a5dd, 0x319c5b3f, 0xb11cced8, 0x81488f4c, 0x6647c7b6, 0xd9f63678, 0xa061622b, 0xcac1bb91
.word 0x7a66921c, 0x076c54f1, 0x1ac8c670, 0x0af22d52, 0x35ce20c7, 0x2bd40b3b, 0x613c7544, 0xcbab5341
.word 0x019479b5, 0xd4fd426e, 0x3ded7036, 0xdfa3c5a7, 0xf198f5bb, 0xbb284708, 0xa516f0da, 0x32fa7b50
.word 0xcaf4e2c9, 0x1ebfa7d7, 0x43ed3e3e, 0x9d00dc1c, 0xa2f2e317, 0xf83244ec, 0x16f05293, 0x40ea9591
.word 0x998392e0, 0xd4baf198, 0x7eafc467, 0x0b779581, 0xb7f114a7, 0xdce89615, 0xaae9ee5f, 0x85416b68
.word 0x6f1d4403, 0xfd26fb56, 0x20e297cf, 0xfa0c46c8, 0xc7de5cb0, 0xba922146, 0x1c90e165, 0x40a75704
.word 0x86cf9def, 0xda515b67, 0x80571e7f, 0x58c597eb, 0x88c2f176, 0xfe362aad, 0x8e74e0d6, 0x5ac81e32
.word 0xeac3c9e4, 0x88548143, 0x436bdb85, 0x38183ad5, 0xde5e9b48, 0x0b9a6858, 0x265fe282, 0xcb8226f1
.word 0xa5feffb8, 0x5c02bba9, 0xc6a550b9, 0xfb1a2dec, 0x8ae08450, 0xe0299f43, 0x5d97f456, 0x33bf4d72
.word 0x0ff0a054, 0x4bcfc556, 0xb5563c2a, 0xa963578d, 0xb229eac9, 0xc6415c9c, 0x371ea650, 0xc0a04112
.word 0xab13c248, 0x107172ff, 0xabdcae48, 0x1b579a92, 0xec11313d, 0x360c5f13, 0xbcae6d67, 0x4e50e840
.word 0x919b62c2, 0xf6cbd457, 0x7c6a9ce3, 0x87c4a9cb, 0xcf63df37, 0x23da2bb9, 0x58da6a36, 0x59773ca4
.word 0xef90d8ac, 0xdd41b7fe, 0xc10221b4, 0x5296613e, 0xc4506e8e, 0x5d1a28a8, 0x4d3e66ca, 0x278912b6
.word 0x0a3932c9, 0x7e7ccbd6, 0x031a1070, 0x3b51e444, 0x21146ba8, 0xdb91f7ae, 0x7c80c3aa, 0x6ad38fab
.word 0x724e39b7, 0x989581a6, 0x702d795b, 0x15f9cff9, 0xc5eb1f5b, 0x486b42a0, 0x72f1e42c, 0xd8ab55a6
.word 0x25500171, 0x755efa3c, 0x207d4bc4, 0x6ff09da1, 0x2a966ed9, 0x4d0983da, 0x31f85323, 0x12a29e92
.word 0x518666f3, 0x2633a3e1, 0x7670ca18, 0x329041d9, 0x6d5c5b54, 0x06f80737, 0x09882e80, 0xcc8498cc
.word 0xa78674ec, 0x279c1eaf, 0x59bbeb25, 0x955c7002, 0x5bb3ad88, 0xac68e333, 0xa78635d2, 0xf205aece
.word 0x5a67d85f, 0x78121b72, 0xec511c71, 0x8907e7eb, 0xc7f7e10b, 0xde3bd513, 0xa575aa4b, 0x63110d8b
.word 0xa59cc890, 0x9bbf92dd, 0x36b8e5c6, 0x3f97c309, 0x7fad9644, 0x884d1fe6, 0xcf744aed, 0x9eb803aa
.word 0x745292eb, 0x9f923b01, 0x8b1ac28c, 0x95060329, 0x15bab129, 0x07f3d9fa, 0xa6fb74af, 0x871d45b9
.word 0xaf365a72, 0x90fd8d0f, 0x6cf2b4d1, 0xeb8b1b97, 0xeb4b88c5, 0xd41156c8, 0xa36474d3, 0x1a0d7e34
.word 0x9cd9be6b, 0x54beae41, 0x9f4ce395, 0x1112d05f, 0x9dde2404, 0x9446bb74, 0x550accd6, 0x73f10e89
.word 0x2de33d76, 0xf1240ff4, 0xa516e6a4, 0x020656a7, 0xb43f84a2, 0xb253cd44, 0xc5b7ba31, 0xccc74fbc
.word 0x194d873c, 0xd9b9ce18, 0x34270957, 0x069efb53, 0xa89cec66, 0xec9fd16b, 0xfc76113c, 0xe19229ca
.word 0x7ae215ca, 0x4ae3ed53, 0x00f00d4d, 0x654cad36, 0x3e2eef45, 0x6e77b0a6, 0xa74fd46e, 0x25da6084
.word 0x1e1a32a6, 0xacb6d463, 0xef1b3f69, 0xa70e8695, 0xa4d06479, 0x4ae57c70, 0x2829336e, 0xd48b88eb
.word 0x882f399d, 0x3214be44, 0x746c4b40, 0xcb7184a6, 0xda2bd59d, 0x33d8e3ba, 0x35e72bda, 0x9e152c1d
.word 0x529b0d6a, 0x8ca5cef8, 0x069ce337, 0x107ff9db, 0xdb95212c, 0xf1ad1870, 0x7b8cf286, 0x1506f33d
.word 0x9320be4a, 0x2c08eed9, 0x6e4a297c, 0x05a9b0a4, 0x5a0cf90a, 0x4192199d, 0xddfb89b6, 0x334da570
.word 0x6386e76c, 0xc1b9ae14, 0x883fc6fc, 0x7978922c, 0xa6a5e58d, 0x8de94af1, 0x73799668, 0xb94bc7a4
.word 0x6e79d366, 0x0518d878, 0x0f1aa3ae, 0xadd88fca, 0x8af95873, 0x56d27d5a, 0x983881b7, 0x6e3c5f24
.word 0x5e1b74f6, 0x6dc205df, 0xb98b2a73, 0xf6fc3082, 0x5656acd7, 0xf428afb4, 0x1c328d69, 0x87520c5f
.word 0x761f7a44, 0xc596e8f5, 0x9611f6e0, 0xeedebdd2, 0x09ae62f8, 0x6aa57357, 0x0f18fc73, 0x91c45167
.word 0xc8e7a4a3, 0x42b8ca3d, 0xed258832, 0x177795af, 0x2c352443, 0xc66ea238, 0x3a4ddd51, 0xfb517dd9
.word 0x09538744, 0xd8ac16e8, 0x609c331a, 0x1b2d728c, 0x92ba1022, 0x10a77ed1, 0xcf02429c, 0xc16efee5
.word 0xa29f415d, 0x57f92d8b, 0x205b9b17, 0x47b8dae4, 0x89b12132, 0xb277e0f7, 0x59654ae7, 0xd8b6d88f
.word 0xb76530fe, 0x8710a2d4, 0x44245685, 0x81d8426a, 0xba34c92c, 0x3cae5f81, 0x351a9b0a, 0x0dbd3972
.word 0x01a48b86, 0xa53474d0, 0x8f8efdf4, 0x5416446b, 0x2ccc4fdb, 0x9d5603f1, 0xcd5301e2, 0xa8c5abce
.word 0x2f6efc78, 0x58f264b1, 0xe1925dd6, 0xf6132e60, 0xa424e3e4, 0x81168408, 0x9165de20, 0x4db28dba
.word 0xfc249a99, 0x012b66e7, 0xf3bf3a3a, 0x6bcc86b1, 0x9473dfcf, 0xe83ea41f, 0xbd7f7a9f, 0xcfc610c9
.word 0x5bd5a8a2, 0x53f8d63c, 0x5c8653fd, 0x0b89ae31, 0xf8cc13b7, 0x2c977a9e, 0xde95a710, 0x3e4194f1
.word 0x446c9a9f, 0x7adf6480, 0xdec31f1f, 0xacbafe83, 0x0517a807, 0x2d3f2cf6, 0x1fcf740a, 0x1c29fdc8
.word 0xe91dc832, 0xd20de573, 0xbe23431a, 0x9addcea0, 0x87f2ac2f, 0x44647ecd, 0x0845e0eb, 0x66748fc1
.word 0xf299181e, 0xe242692a, 0x7eea8587, 0x4c95a202, 0x365c3f63, 0x5f240dc5, 0xc308161c, 0x74b4c9a3
.word 0x8ed3de84, 0x312aab94, 0xab497ca8, 0x82ac00c6, 0x09aa783e, 0xc5d2012c, 0x60c2bf2d, 0x6631501b
.word 0xa399fd18, 0xa37a685a, 0xae8fe815, 0xa09850fe, 0x6cb0c22c, 0xf8d1d1dd, 0x8e17653e, 0x97f0f2ea
.word 0x47978082, 0xc0b34330, 0xa495e5bb, 0xe46a6e80, 0xb77d4f2f, 0xad25adf4, 0x42ebb55c, 0x17d6f020
.word 0x262503f7, 0xc0be3727, 0x5e4fedd3, 0x1bff1a28, 0x1069b34a, 0xbe3ea2f6, 0xe43bd180, 0x0a83b012
.word 0xac85477c, 0x7c3a7cc5, 0x0e0cd091, 0xd9ecfbba, 0xa7ac4487, 0xc085df59, 0x6c91f2fe, 0xc0a51820
.word 0x5d87ffb4, 0x7e24447a, 0x2a5f6575, 0xc2e1531f, 0xc4aa6332, 0xfd60e6ce, 0x306c4023, 0x8f182116
.word 0xdd617647, 0x1feefe4b, 0x0bacc85e, 0x19c2c57d, 0xa6fc754b, 0xcaa00d3f, 0x92caee8e, 0xfe45368e
.word 0x43fd6d6d, 0x71d0569e, 0x0cffb5ea, 0x31a67973, 0x41e040b6, 0xcad918b5, 0x9bde61cd, 0xe0fe4106
.word 0xfe36b36b, 0x1ad3a7fb, 0x58983129, 0x64d3ba00, 0xa85828f0, 0x1120f82f, 0xb8795027, 0x380b4905
.word 0xbd222700, 0x9f63b8d3, 0x3fdcf451, 0x65868fa4, 0xbec06fea, 0x8e72f0ff, 0xd9cf1c86, 0x591117c8
.word 0x2a276e08, 0xa5b2fab4, 0xe9e4d967, 0x18bbebd6, 0x65cf47de, 0x07ba20bd, 0xc0251707, 0x81828c9b
.word 0x3f9bf42f, 0x5b27592d, 0x8bf2b4a2, 0x880dabee
.section .region_1,"aw",@progbits;
region_1:
.word 0x61c13889, 0x0bb023c8, 0xbaf17398, 0xaa4a8977, 0x5dba092a, 0x0eb023da, 0x91f9635e, 0x5c92e484
.word 0x4749f548, 0x5ef43663, 0xc0422f27, 0x2cc07d03, 0xad54c5bc, 0xa1e2b379, 0xb0f89b1b, 0xf420794d
.word 0x06ee86d7, 0x31ee1e70, 0x3efb716b, 0x8bb79321, 0x5a996f9e, 0xb2609637, 0x8a4a613f, 0xf0f81025
.word 0x2007624a, 0xc0b66f62, 0xeea41203, 0x59c09ce6, 0x9f212490, 0xf1acfed0, 0x94dc886b, 0x5821178d
.word 0x6163ccb5, 0x9dc3f842, 0xd0a0fc31, 0x5d22a546, 0x5e250c73, 0x214aeecc, 0x1aa91c6d, 0x6e4383b0
.word 0xf8ad16e4, 0xda8a3c2a, 0x74d33b0e, 0x4a4f4129, 0xf86e31c4, 0xacc3c4ba, 0x23f941b1, 0x3eeb381f
.word 0x320d2cae, 0x0e63c890, 0x9645a164, 0xc9cd5d3c, 0x0ea63ce7, 0x1d23961d, 0xc4023c94, 0x9bd321a1
.word 0x21aea201, 0xcfae6de9, 0x92e6100e, 0xf895ad4a, 0xa263eec0, 0xf13ff457, 0xa8ebee0d, 0xf2fcb92a
.word 0xa9445919, 0xa6030966, 0x7953f9a0, 0xac2aab67, 0x3e274e42, 0xb597b8b1, 0x478078e6, 0x255f294c
.word 0x1af2cfe4, 0x365f5507, 0x2933cf1b, 0xdf6e0c53, 0x199cacce, 0x4b04082a, 0xa79a5156, 0x89ed0826
.word 0x2af565d9, 0x6eb866c1, 0x807f679e, 0x4b68337c, 0x2ecba5ba, 0xc40fdb8c, 0xaf5629b1, 0x8f1d5198
.word 0x9f91a4dc, 0xcba30879, 0xab7e4a4a, 0xa960cb50, 0xd1543681, 0x2d8e8156, 0x6f3327fd, 0x4d1255a2
.word 0xb333dc6a, 0xf46342d7, 0x5f346546, 0xeacfc6ba, 0xa37148cb, 0xfc6d88b1, 0x621c2408, 0xc64cc242
.word 0x416e0008, 0x4122bbdd, 0x5e9a380d, 0x93f43453, 0xefe38ff6, 0x5857ad44, 0xb8c07334, 0xd133a7bb
.word 0xc3abd37a, 0xc106df19, 0xb176bcbb, 0xc1840428, 0x3ab0d955, 0xfeb56177, 0xc70dbfef, 0x3a2828bd
.word 0x4516d34f, 0x985d62c3, 0x2ef54dd2, 0xb5065898, 0xf375edea, 0x49e2ac31, 0x6893a6c9, 0xc50255a0
.word 0x06af42ef, 0x4601edfb, 0x019e12bf, 0xd3190a6c, 0x6cf4a5e5, 0xe8b88d62, 0x313252e9, 0x3a0a9220
.word 0xd3d520ce, 0xee1daf47, 0x7c22cf29, 0xb862973c, 0x13be6621, 0xf078d702, 0x2811da73, 0x597f1d71
.word 0xc8ffd9b3, 0xdb6c924b, 0xd0d0f6e8, 0x8ec0240a, 0x1a4f361c, 0x252876e2, 0xee3ac1b3, 0x8a37a4fb
.word 0xfcf27ab3, 0x9c52138f, 0xe813c52f, 0xb3d5dadc, 0x92adb8d7, 0x99bed877, 0x7166ded9, 0x59a1f85a
.word 0x4c64b6dd, 0x0881c40d, 0xfab6feb1, 0x2b9e0d54, 0x0676e8df, 0xe0165d70, 0xc0c0af8f, 0x0ff3fe9c
.word 0x595b8ecd, 0x938be2e2, 0x508e8cc9, 0xb002f5f4, 0x2f092fa3, 0x4887112c, 0x7ec0a7b2, 0xef48969e
.word 0xa1d1e787, 0x07cbfddf, 0x62a8f074, 0x493a5f9f, 0xcc6764a9, 0x459afec5, 0x64a75b9e, 0xafe58b95
.word 0x853277b7, 0x9bc28894, 0x8871397f, 0x5060bf85, 0xe5cc326d, 0xf0c62fb4, 0xa1fb0079, 0x7232d3f7
.word 0xac8e35e4, 0xe44005f6, 0xd7e20cca, 0x51f5ce7b, 0x460c6709, 0xfab3ece9, 0x08d00121, 0xa840bbb6
.word 0xba577b81, 0x9ac33e38, 0xee5d822e, 0xc11f926a, 0xabbf51f7, 0xc31cdf94, 0x752e57e9, 0x256fd89e
.word 0x49d34588, 0xaa3e8835, 0x8b0ab8dd, 0x9d36e672, 0x8bfc47e7, 0x99f3d281, 0xe0a9b13b, 0xcd7b5f37
.word 0xd11f0b31, 0xc54949d4, 0xa206e650, 0xd1c32173, 0x9096342f, 0x99b23bfb, 0x9e44dd10, 0x11c67682
.word 0xa3d1ba07, 0xa094c378, 0x9753791f, 0x32850d16, 0x9c75e7ca, 0x351cde97, 0x6426a3ba, 0x6fe6a097
.word 0x377c43e5, 0x2cf91814, 0x571cfb3d, 0x52f30f90, 0x7a1cc536, 0xe2fceeab, 0x284c5923, 0x32c197e9
.word 0x49dae11e, 0xe9c42f14, 0x314a0790, 0x5e78cd7c, 0x8fc00532, 0x17e3ab5d, 0x2b2d571a, 0x228a171d
.word 0x2bd77a0a, 0x69c18c61, 0x8076edd4, 0xf0d44bec, 0xa2650021, 0x4b48e93c, 0xabf52a15, 0x5d7f99ef
.word 0xf67b01be, 0x0d078d4f, 0xd24d7979, 0xe0277684, 0xe733459b, 0x3f4a6783, 0x70917ba2, 0x50011991
.word 0x25526420, 0x39242804, 0x957ca9cf, 0xec1649fe, 0x29ba5198, 0x0ad4e389, 0xf9e5f1b0, 0xb7ee7143
.word 0x285b2b38, 0xe07c75f6, 0x421bce31, 0x91a5a481, 0xaee387dc, 0x6cb1675d, 0x4d20af4d, 0x4f3c24f5
.word 0x408db778, 0xa4b8dfaa, 0x1dc44853, 0x64865f1b, 0xea757511, 0xd54f32f0, 0xf897ba71, 0x4edddfd2
.word 0x46469e09, 0xbaf05365, 0x0d99941d, 0x8366e09d, 0x881c38ea, 0x330d463c, 0xf436baaa, 0x0906f32e
.word 0xb12bcd69, 0xa1401059, 0x6bc47fd9, 0x226f79ec, 0xefe44fe8, 0x1dc304fa, 0xb7db8c68, 0x21e2bbb3
.word 0xf41c74b1, 0x54084249, 0x7d1e52c6, 0x1a5d942f, 0x506a779a, 0x511f682f, 0x69f2ee43, 0xdb78e534
.word 0x92c3a209, 0x97b34f95, 0x43ecc418, 0xfb958d87, 0x532ed2a3, 0x58f58e68, 0x35c1dd17, 0x3d7b61db
.word 0xbdb42e50, 0x20e8d8fe, 0x3ae2e78a, 0x10419feb, 0x29e26e48, 0x1a140f65, 0x274ab4ef, 0x4e5a8dc9
.word 0xdf5c21d8, 0x1a8863ab, 0x64993acb, 0xc26e2419, 0x2a638744, 0xe3809160, 0x1f1a944f, 0xf1a9aa18
.word 0xbbe5f7b4, 0x8df91e5f, 0x62289044, 0x130bf70f, 0x312c01a7, 0x4db5e3ac, 0x877981ad, 0x5e6a5f6b
.word 0xc4979a01, 0x76b2cd85, 0x3d0c223e, 0x3a56df1f, 0x7374adb7, 0x1ad2d52f, 0x58b5c6a2, 0xe8a688c3
.word 0x9c4011bd, 0x481bd1b1, 0xc7235f9f, 0x3a19c35f, 0x65083b7f, 0x0a350318, 0xf5d35e8d, 0x5467fe20
.word 0xbe4728dc, 0x3a6bfdaf, 0x811163de, 0xb30a6cea, 0xd017349f, 0xde6be04e, 0x84903bae, 0x14a084de
.word 0x5a140fb1, 0xbb62136f, 0x584dd17f, 0x1c79fe8e, 0x76763f17, 0x201176a5, 0x7d92a486, 0x6aee1076
.word 0xb46f5f6d, 0xdd6b0ef9, 0xf36703f4, 0x4dc8e0c9, 0xbb2f5677, 0xe2bec0cc, 0x5ec31700, 0x2f9ff56c
.word 0xbf6e95b3, 0x9e2625a7, 0x9004bb9e, 0xfeb36517, 0x6f90869a, 0x5be51596, 0x91cda7b8, 0x6dad7288
.word 0xf9d83682, 0xdf3cec28, 0x2360d6be, 0x700b9dab, 0x334430e5, 0x207d6ff1, 0x586a53fa, 0x5d3a7e4f
.word 0x27ac9b84, 0x984340d6, 0x93f05070, 0x90c447e8, 0x1db02d5d, 0x3f4bca0f, 0xb15ae2c1, 0xe485e0e3
.word 0x15bdb0a1, 0x176bdd13, 0xfdc2aa94, 0x2d68e258, 0xc46a9e14, 0x2129ce28, 0xe4506a63, 0x09465b44
.word 0x8a168386, 0x26dccd7c, 0x2046688a, 0x80242a57, 0x25758953, 0xd75b31c5, 0x91881ec0, 0xeea4865c
.word 0x24a3f06f, 0xb38c5890, 0x0cf8dfe6, 0x1eada7b0, 0x8e7da20c, 0xd01af163, 0x77d50199, 0xf03e18cd
.word 0x1d83f108, 0x587f1d8a, 0x67146ac2, 0x0c0cbe38, 0xe88960f2, 0x1fd14028, 0xe8d4bd53, 0x9ce97e5d
.word 0xe7604361, 0x6f1f3004, 0x86172867, 0x7b14035a, 0xdbc69586, 0x68a59ce7, 0xf9aa58b6, 0x1caad174
.word 0x5a0456a0, 0x41d6a26c, 0xeb36cc55, 0xc0965b60, 0x92bde1d6, 0xaca1755e, 0xd3936313, 0x9c654239
.word 0xbe555ea2, 0x1e06366f, 0x8ef5d7d5, 0x76c99d7f, 0xe3cfca57, 0xe0c965e6, 0x58df7f25, 0xa9bba97f
.word 0x3f148e2a, 0xc4c04231, 0x440a986c, 0x916ff118, 0x0c141d46, 0x8081cee8, 0x5d25278a, 0x755e5938
.word 0x4e33825b, 0x8bdbee65, 0x097b089f, 0x1441354d, 0x3eae25ba, 0xf1d72858, 0x195af7b9, 0x9f92ecd9
.word 0xe7ed38de, 0x85aefa01, 0x6d2f965f, 0x2ffde56f, 0x397ba48a, 0x68539576, 0x7baf4af1, 0x3f4a46c0
.word 0x09901281, 0x6ded64fd, 0xab0686da, 0x58830309, 0x752af0a4, 0xcb440210, 0xfa124296, 0x2f829c74
.word 0xe65414ca, 0x5f4107c6, 0x90e0441a, 0x9096350e
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x31, x23, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x12, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x12, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x12, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x12, x7, ecall_handler
                  li x7, 0x1
                  beq x12, x7, instr_fault_handler
                  li x7, 0x5
                  beq x12, x7, load_fault_handler
                  li x7, 0x7
                  beq x12, x7, store_fault_handler
                  li x7, 0xc
                  beq x12, x7, pt_fault_handler
                  li x7, 0xd
                  beq x12, x7, pt_fault_handler
                  li x7, 0xf
                  beq x12, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x23, x31, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x31, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x31, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x23, x31, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x23, x31, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x23, x31, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
