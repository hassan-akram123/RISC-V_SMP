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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 0
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf78c7ef4
                  li x2, 0xf74e6216
                  li x3, 0xa
                  li x4, 0xf33c41da
                  li x5, 0x6
                  li x6, 0x6e1a56e2
                  li x7, 0xf
                  li x8, 0xa
                  li x9, 0xf91d11c4
                  li x10, 0x6f9f46fd
                  li x11, 0x80000000
                  li x12, 0xfe098e09
                  li x13, 0x0
                  li x14, 0x9
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x4
                  li x18, 0x4
                  li x19, 0xdb7b7f7c
                  li x20, 0x0
                  li x22, 0x80000000
                  li x23, 0x7
                  li x24, 0xf
                  li x25, 0x80000000
                  li x26, 0x3df8b9f
                  li x28, 0x88cd7dba
                  li x29, 0x4
                  li x30, 0x0
                  li x31, 0xf003d994
                  la x21, user_stack_end
main:             xori         a3, s9, -2038
                  slli         s1, a5, 9
                  la           s7, sub_1
                  auipc        s4, 629276
                  lui          s9, 1043627
                  addi         s7, s7, 303
                  lui          s6, 754377
                  bltu         t1, a7, main_j2 #branch to jump instr
                  xori         s8, s8, 834
main_j2:          jalr         s6, s7, -303 #jump main -> sub_1
main_0:           jal          s6, 6f
0:                jal          ra, 11f
1:                jal          sp, 0b
2:                jal          ra, 9f
3:                jal          s2, 4f
4:                jal          s1, 13f
5:                jal          ra, 3b
6:                jal          s1, 10f
7:                jal          ra, 2b
8:                jal          ra, 17f
9:                jal          s2, 16f
10:               jal          ra, 1b
11:               jal          ra, 15f
12:               jal          t1, 5b
13:               jal          ra, 8b
14:               jal          t1, 12b
15:               jal          t1, 7b
16:               jal          t1, 14b
17:               sra          s2, s4, a1
main_2:           jal          s6, 9f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          a0, 7f
3:                jal          s0, 8f
4:                jal          s8, 5f
5:                jal          ra, 1b
6:                jal          ra, 14f
7:                jal          gp, 0b
8:                jal          t1, 13f
9:                jal          ra, 2b
10:               jal          ra, 11f
11:               jal          s10, 4b
12:               jal          t1, 3b
13:               jal          s7, 6b
14:               sub          t1, s6, s10
main_1:           jal          s6, 2f
0:                jal          a6, 5f
1:                jal          t3, 3f
2:                jal          ra, 6f
3:                jal          ra, 4f
4:                jal          ra, 13f
5:                jal          ra, 7f
6:                jal          ra, 10f
7:                jal          ra, 1b
8:                jal          t1, 11f
9:                jal          ra, 14f
10:               jal          sp, 0b
11:               jal          a1, 12f
12:               jal          ra, 9b
13:               jal          ra, 8b
14:               auipc        t0, 341237
                  auipc        s4, 1011436
                  ori          a5, t1, 457
                  sltu         s2, s6, s5
                  bltu         a6, a2, 15f
                  sub          s0, t1, t4
                  sltu         a2, t1, a3
                  slt          s7, s7, s11
                  lui          s0, 479172
                  bne          s5, s3, 25f
                  sub          zero, s3, a3
                  lui          t2, 75211
                  sll          sp, t6, t3
                  blt          s7, a3, 23f
                  and          a2, s0, s1
                  sltu         s6, a0, a1
15:               ori          s6, a3, -1533
                  addi         t2, sp, 1975
                  xor          s3, zero, s4
                  bne          s4, s6, 27f
                  add          t4, s1, ra
                  srli         tp, s5, 16
                  slt          a4, t0, t3
                  bne          a3, t5, 25f
23:               sll          s7, a7, a7
                  nop
25:               srl          sp, s10, s7
                  slt          s0, a3, a3
27:               sub          zero, t6, a7
                  sub          a6, sp, s6
                  slli         t3, s4, 8
                  sltu         s2, s4, t3
                  sltu         a0, s6, t5
                  slt          t0, a0, a1
                  blt          a3, t4, 45f
                  and          t1, tp, ra
                  slti         t0, s0, 1483
                  sra          s4, a3, a7
                  slti         s3, s9, 2039
                  and          a6, s7, ra
                  sub          a3, s6, a6
                  or           s10, s11, gp
                  addi         a4, a6, 1878
                  andi         a2, s1, -147
                  addi         s10, s6, -1009
                  and          a4, a4, s6
45:               xor          t1, a5, t1
                  and          sp, t6, s7
                  auipc        a6, 1007916
                  xori         s2, s9, 872
                  lui          a0, 973491
                  beq          tp, s8, 61f
                  lui          t3, 644212
                  sltiu        t2, t5, 124
                  slt          s2, a3, sp
                  bne          t6, a3, 71f
                  blt          s2, a7, 59f
                  sra          s7, zero, t4
                  addi         t4, gp, -905
                  xori         s2, s3, -1875
59:               slt          tp, s2, t4
                  sra          s8, t5, t4
61:               bge          s7, t0, 75f
                  slti         s2, s0, 1469
                  nop
                  nop
                  xor          t2, s8, t4
                  auipc        a4, 760097
                  sll          ra, tp, gp
                  bge          s11, sp, 77f
                  auipc        tp, 964454
                  ori          s4, gp, -858
71:               ori          a2, t5, 1600
                  nop
                  sltiu        gp, t6, -646
                  xori         a2, ra, 1706
75:               bltu         ra, a3, 92f
                  beq          a3, a6, 88f
77:               nop
                  slt          a0, a6, t2
                  beq          t4, t5, 83f
                  bltu         s1, a7, 82f
                  slli         s0, a6, 9
82:               sra          t2, t1, t1
83:               sra          t3, s11, s4
                  sltiu        s9, zero, -899
                  nop
                  lui          a2, 215836
                  slli         s3, s8, 14
88:               lui          t1, 113977
                  or           s7, s3, s3
                  bltu         s4, s11, 108f
                  bgeu         t5, gp, 99f
92:               blt          s0, t2, 96f
                  bge          a0, a6, 105f
                  slli         s2, s10, 23
                  srl          s1, s8, t5
96:               sltu         s4, a5, t3
                  or           s2, s6, a2
                  sll          s8, s8, a5
99:               or           s4, s1, s0
                  or           zero, tp, a1
                  auipc        zero, 977273
                  bne          s1, t6, 122f
                  addi         s2, s9, -915
                  beq          s9, s0, 107f
105:              blt          a4, tp, 107f
                  sra          t1, a2, s6
107:              addi         s9, t1, 828
108:              sub          a3, s10, s5
                  beq          a0, s8, 124f
                  xor          zero, s11, t1
                  and          a1, s8, t6
                  addi         s7, s9, 829
                  slti         t6, tp, 723
                  bne          s9, t3, 126f
                  or           s10, t6, a1
                  andi         s3, s8, 739
                  bgeu         a0, t4, 127f
                  xori         t3, s3, 1950
                  srli         tp, t0, 29
                  bgeu         t6, s0, 130f
                  sll          a3, s1, ra
122:              addi         a3, s4, -1020
                  andi         t1, a3, -1673
124:              add          a2, a3, a2
                  bltu         s11, sp, 144f
126:              sltu         gp, s0, t1
127:              sltiu        t4, a7, 52
                  sltu         s2, zero, s10
                  nop
130:              ori          a0, ra, 1422
                  srai         ra, t3, 4
                  beq          t4, t5, 152f
                  sltiu        a5, s2, -688
                  nop
                  srai         t1, tp, 10
                  la           ra, sub_2
                  sltiu        t2, s10, 550
                  ori          t0, zero, 1615
                  srai         s8, a1, 26
                  sltiu        a3, s0, 1292
                  addi         t0, a7, 102
                  addi         ra, ra, 813
                  slli         t1, sp, 14
                  beq          t0, a4, main_j1 #branch to jump instr
                  auipc        t0, 1005566
                  xori         t2, a4, -1838
main_j1:          jalr         s6, ra, -813 #jump main -> sub_2
                  and          a4, s9, s4
                  sra          ra, a0, a2
                  add          a5, s1, a7
                  sll          s3, t1, a1
                  sltu         gp, s6, s6
                  auipc        t1, 361682
                  srai         s4, s3, 27
                  sll          s0, zero, s0
                  xori         ra, a1, -385
                  or           s10, a1, s3
144:              srli         s10, t1, 23
                  bltu         s8, a6, 148f
                  andi         t2, t6, 1874
                  xor          a7, a5, t4
148:              and          tp, sp, tp
                  xor          a3, a0, t5
                  blt          t5, s7, 168f
                  bgeu         a3, a6, 168f
152:              nop
                  srai         s2, s0, 21
                  srli         a1, t5, 15
                  nop
                  and          a5, s0, s8
                  ori          s2, ra, 734
                  addi         a7, s0, -1646
                  sltu         t3, a4, s11
                  slti         s6, a3, 1710
                  or           s7, s8, gp
                  sra          a5, t1, s7
                  bltu         s7, a3, 180f
                  slt          s0, a6, a7
                  ori          s4, s4, 868
                  blt          s5, s1, 178f
                  addi         t6, tp, -1775
168:              bne          s0, gp, 184f
                  slti         t4, s0, 753
                  slti         tp, s4, -24
                  blt          s3, s6, 184f
                  srl          s3, s7, a0
                  sll          s6, a5, a4
                  nop
                  beq          s4, t3, 184f
                  sll          s4, t5, t2
                  or           sp, t4, a0
178:              sra          t1, s4, t0
                  sltiu        t0, zero, -138
180:              srl          a0, s5, s11
                  sltiu        a1, t3, -911
                  srli         t1, a4, 24
                  sll          gp, a0, s10
184:              slti         zero, t5, -514
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            ori          sp, tp, -1313
                  addi         s5, s5, -48
                  lui          t4, 951906
                  slti         a5, s1, 470
                  slt          s2, t1, a3
                  xor          tp, s11, sp
                  sw           s6, 4(s5)
                  srai         t2, s2, 20
                  sltu         a2, a0, s3
                  ori          a7, ra, 840
                  sub          t1, a0, a5
                  la           s4, sub_3
                  lui          zero, 406270
                  or           a2, a5, s10
                  ori          s9, a6, -541
                  add          a0, a7, sp
                  and          a4, s10, t2
                  sra          a1, s5, s2
                  addi         s4, s4, -683
                  srai         s2, t2, 20
                  beq          s5, zero, sub_1_j4 #branch to jump instr
                  auipc        zero, 35216
                  sltu         a4, s11, a2
sub_1_j4:         jalr         s6, s4, 683 #jump sub_1 -> sub_3
sub_1_4:          jal          s6, 3f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          ra, 12f
5:                jal          t6, 11f
6:                jal          ra, 16f
7:                jal          t1, 10f
8:                jal          ra, 1b
9:                jal          t1, 17f
10:               jal          t4, 18f
11:               jal          t1, 19f
12:               jal          s6, 2b
13:               jal          t1, 6b
14:               jal          t1, 5b
15:               jal          ra, 9b
16:               jal          ra, 8b
17:               jal          ra, 14b
18:               jal          t1, 13b
19:               and          s2, t3, s5
sub_1_2:          jal          s6, 9f
0:                jal          t1, 4f
1:                jal          s2, 6f
2:                jal          t1, 12f
3:                jal          s1, 11f
4:                jal          t2, 1b
5:                jal          ra, 3b
6:                jal          ra, 10f
7:                jal          s3, 8f
8:                jal          ra, 5b
9:                jal          ra, 2b
10:               jal          ra, 7b
11:               jal          ra, 13f
12:               jal          t2, 0b
13:               slli         a1, a1, 15
sub_1_3:          jal          s6, 0f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          sp, 4f
3:                jal          t1, 2b
4:                jal          s3, 9f
5:                jal          ra, 10f
6:                jal          t1, 5b
7:                jal          t1, 8f
8:                jal          t2, 11f
9:                jal          tp, 7b
10:               jal          ra, 3b
11:               xori         a1, gp, 583
sub_1_1:          jal          s6, 1f
0:                jal          ra, 12f
1:                jal          ra, 4f
2:                jal          t1, 0b
3:                jal          ra, 9f
4:                jal          s10, 11f
5:                jal          t1, 7f
6:                jal          t1, 2b
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          t1, 8b
10:               jal          t0, 6b
11:               jal          ra, 3b
12:               slli         s2, a0, 13
sub_1_0:          jal          s6, 2f
0:                jal          t1, 3f
1:                jal          t3, 10f
2:                jal          a6, 6f
3:                jal          s2, 1b
4:                jal          ra, 8f
5:                jal          a0, 4b
6:                jal          tp, 9f
7:                jal          ra, 5b
8:                jal          ra, 0b
9:                jal          s7, 7b
10:               and          sp, t6, zero
sub_1_5:          jal          s6, 16f
0:                jal          ra, 12f
1:                jal          ra, 5f
2:                jal          ra, 15f
3:                jal          t1, 11f
4:                jal          ra, 7f
5:                jal          t1, 0b
6:                jal          s0, 19f
7:                jal          ra, 10f
8:                jal          t1, 1b
9:                jal          ra, 17f
10:               jal          ra, 20f
11:               jal          tp, 8b
12:               jal          t0, 9b
13:               jal          t0, 4b
14:               jal          ra, 18f
15:               jal          ra, 6b
16:               jal          a4, 3b
17:               jal          ra, 2b
18:               jal          ra, 13b
19:               jal          ra, 14b
20:               jal          ra, 21f
21:               addi         t4, t6, 1691
sub_1_6:          jal          s6, 14f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          gp, 21f
3:                jal          t1, 0b
4:                jal          ra, 16f
5:                jal          a6, 15f
6:                jal          a6, 5b
7:                jal          s6, 11f
8:                jal          ra, 22f
9:                jal          ra, 17f
10:               jal          t3, 6b
11:               jal          ra, 18f
12:               jal          ra, 20f
13:               jal          ra, 10b
14:               jal          gp, 2b
15:               jal          ra, 3b
16:               jal          ra, 8b
17:               jal          ra, 7b
18:               jal          ra, 4b
19:               jal          a2, 9b
20:               jal          t1, 19b
21:               jal          ra, 13b
22:               nop
                  srai         a7, a1, 0
                  lui          s1, 577428
                  srl          t2, t6, s0
                  blt          t1, zero, 20f
                  ori          a7, s1, -1940
                  add          t2, t4, a1
                  blt          t3, sp, 10f
                  sra          s8, s10, s6
                  srl          t3, gp, s4
                  bne          t3, s1, 12f
10:               srai         s3, t3, 12
                  xori         a2, a6, 652
12:               andi         ra, t0, 1083
                  slt          t4, t5, a0
                  beq          s4, t3, 33f
                  auipc        gp, 337270
                  xori         ra, a7, 86
                  slti         s8, s4, 1550
                  blt          t1, s0, 29f
                  beq          t2, a4, 26f
20:               auipc        s8, 219735
                  bge          t5, tp, 39f
                  slt          a6, t1, s7
                  sll          a3, t2, t5
                  bne          sp, a1, 41f
                  add          s3, s6, t4
26:               add          a0, s8, t3
                  sra          s4, sp, t0
                  and          t3, s2, tp
29:               slt          tp, a2, gp
                  auipc        tp, 29728
                  sra          t2, s0, t3
                  beq          t3, s5, 38f
33:               sub          a5, s8, t3
                  andi         a6, s3, -1160
                  srl          a4, sp, s5
                  addi         a7, a1, -420
                  bge          s10, t0, 39f
38:               bge          t4, t5, 58f
39:               slti         zero, s11, 1104
                  add          s0, a1, a3
41:               lui          s4, 839582
                  bne          a7, s6, 54f
                  lui          gp, 504566
                  or           tp, s1, a1
                  bge          s2, t1, 48f
                  slti         a6, s11, 790
                  bge          sp, s7, 52f
48:               sltu         a7, s9, s9
                  blt          ra, t5, 59f
                  or           s1, a2, s9
                  add          ra, zero, t6
52:               lui          sp, 290609
                  beq          a4, t2, 55f
54:               sra          t1, a4, a6
55:               slt          s7, s2, s5
                  srai         t1, t5, 14
                  slt          gp, a3, tp
58:               nop
59:               slt          ra, ra, a7
                  blt          t2, gp, 71f
                  sltiu        a7, a5, 1803
                  bne          gp, t2, 77f
                  xori         s4, s0, -654
                  lui          t4, 304303
                  blt          a2, a3, 70f
                  or           a5, ra, s9
                  sub          s10, s3, s7
                  nop
                  and          t2, t2, a4
70:               bgeu         s4, a3, 85f
71:               nop
                  sll          a3, a6, t0
                  add          t6, a5, t6
                  bltu         a3, tp, 86f
                  nop
                  xor          t4, s2, t1
77:               sltu         a1, a6, s0
                  blt          a4, s11, 89f
                  or           t2, tp, t6
                  beq          a2, zero, 92f
                  slt          gp, sp, s3
                  sltiu        zero, ra, -1232
                  srl          s4, s2, s10
                  lui          gp, 353290
85:               bne          t4, a4, 105f
86:               ori          zero, s1, 906
                  srl          ra, sp, sp
                  nop
89:               slti         s7, s3, -413
                  bgeu         s6, a1, 92f
                  bne          s5, s0, 106f
92:               srli         a1, s1, 8
                  auipc        a7, 432417
                  sltiu        t4, t1, -986
                  srli         gp, t5, 29
                  andi         t6, t5, -930
                  xor          a3, s4, t3
                  sll          s3, a2, a5
                  bge          s5, a3, 119f
                  bne          s6, t2, 104f
                  bgeu         a3, a4, 119f
                  srli         s10, s10, 21
                  xor          s1, s2, s1
104:              bge          a4, t1, 115f
105:              srli         a4, sp, 14
106:              auipc        a6, 681082
                  xor          s6, s3, t4
                  bltu         t1, t2, 128f
                  or           s10, tp, s9
                  beq          s3, s1, 128f
                  and          t2, t6, a2
                  lui          sp, 879320
                  sltiu        a3, a5, 126
                  auipc        a7, 41507
115:              sll          ra, a2, t5
                  srl          t3, s6, s11
                  sll          sp, s11, zero
                  and          t6, a3, gp
119:              sra          s0, s4, s1
                  sltiu        a5, t5, -373
                  sltu         zero, ra, ra
                  and          t1, a7, s5
                  xori         s3, t3, 1426
                  blt          t6, t4, 126f
                  sltu         a2, t1, sp
126:              sltiu        a3, a1, 612
                  sub          a2, t3, t1
128:              sub          tp, gp, gp
                  nop
                  slli         s0, t1, 28
                  srli         s0, s7, 17
                  xor          t3, s10, tp
                  add          a6, s0, a5
                  bgeu         gp, a6, 146f
                  beq          a3, a1, 146f
                  bne          a2, a5, 151f
                  sltu         s10, t6, t2
                  lui          s10, 790684
                  slli         a3, s9, 17
                  sltiu        a6, a3, 845
                  sltu         s7, s4, s1
                  andi         s0, a3, -1850
                  srai         s2, sp, 3
                  srai         s10, t6, 26
                  or           a0, s11, t2
146:              sub          a1, t5, a6
                  sll          tp, gp, tp
                  nop
                  bne          a0, s8, 161f
                  sub          a0, a0, s6
151:              and          t1, a5, s2
                  sltu         a5, s2, s4
                  srai         t2, a6, 21
                  sltiu        tp, s2, 1066
                  xor          s4, a3, ra
                  slt          t2, zero, zero
                  nop
                  srli         s10, s2, 5
                  srli         t6, t2, 9
                  bge          s6, t6, 166f
161:              xori         s3, a1, 1815
                  xor          t2, t0, s7
                  xori         tp, s11, 721
                  nop
                  blt          s0, s1, 169f
166:              add          a5, t3, a3
                  blt          t0, a7, 178f
                  xor          s2, t0, s10
169:              and          s7, t0, ra
                  sra          s1, tp, t0
                  andi         a1, t5, 1179
                  bne          t4, t2, 174f
                  sub          s0, a7, a2
174:              auipc        s10, 53178
                  sub          zero, s2, s6
                  andi         a5, a5, -731
                  sltu         a2, s0, a0
178:              slt          s0, ra, a3
                  slli         s3, s7, 19
                  sub          t0, ra, s8
                  auipc        gp, 1013242
                  slti         s1, s9, 2005
                  auipc        gp, 153852
                  srli         a3, gp, 14
                  srl          s1, a4, s8
                  bne          s2, a4, 198f
                  add          t6, a2, t5
                  blt          t1, t4, 207f
                  or           t2, t2, zero
                  bge          s10, s6, 195f
                  srl          t1, t1, tp
                  sltu         sp, t5, ra
                  bne          s4, a6, 196f
                  sltiu        t4, a2, -1870
195:              bgeu         t1, s1, 210f
196:              sub          a3, sp, a4
                  slli         t2, s6, 14
198:              and          a5, a3, gp
                  auipc        zero, 251799
                  auipc        s6, 722054
                  bgeu         zero, t1, 203f
                  ori          s0, s3, -937
203:              beq          t1, a1, 214f
                  slti         sp, s1, -669
                  slli         a7, ra, 10
                  beq          a7, a5, 226f
207:              srai         sp, a1, 25
                  andi         a5, t1, 1826
                  sra          t0, t3, a4
210:              srai         sp, s11, 4
                  auipc        s8, 337703
                  bne          s10, a1, 216f
                  srai         gp, zero, 31
214:              sll          s9, s1, a6
                  blt          t4, a5, 233f
216:              sltiu        a7, t1, 141
                  xor          t2, s7, a7
                  sub          a4, s3, t1
                  blt          s7, s1, 224f
                  auipc        t2, 572370
                  sltiu        t0, gp, 574
                  sltu         s1, s4, t1
                  srl          t6, a6, t6
224:              sub          sp, a4, s10
                  lui          s10, 635623
226:              bne          t4, s1, 237f
                  sll          a6, s7, a2
                  srai         tp, a6, 0
                  bge          a4, a0, 244f
                  lui          a2, 2437
                  srl          a3, a0, t4
                  slti         s0, a5, -560
                  slt          s9, zero, s10
                  or           t3, s11, s2
                  srai         sp, t5, 24
                  and          t1, a7, s10
                  add          ra, sp, a0
                  bgeu         a6, zero, sub_1_j3 #branch to jump instr
                  or           a0, a5, s10
sub_1_j3:         jal          s6, sub_3 #jump sub_1 -> sub_3
                  sub          a1, gp, t1
                  andi         s1, gp, 555
                  slli         t1, a6, 7
233:              srli         t4, a3, 14
                  beq          s3, t3, 244f
                  srl          s4, s11, t4
                  srai         tp, s2, 23
237:              andi         s10, s1, 217
                  nop
                  srli         s7, t6, 15
                  add          a5, s5, s0
                  slt          s10, a0, t5
                  sltu         tp, a1, s3
                  blt          s2, s3, 260f
244:              srl          a3, a4, s9
                  srai         s4, s1, 23
                  sltiu        ra, s5, 539
                  bge          a2, s9, 267f
                  bgeu         a4, s1, 265f
                  auipc        t6, 767275
                  auipc        s4, 921023
                  add          s1, t6, gp
                  blt          a5, t6, 259f
                  lui          s8, 134102
                  slt          s7, t3, s9
                  bltu         a0, t6, 258f
                  and          s4, a2, s4
                  addi         t3, s7, 2036
258:              blt          t6, a4, 269f
259:              srai         s6, t0, 18
260:              slt          s1, gp, s3
                  or           a3, a3, a3
                  slli         t2, a1, 2
                  slt          s7, a2, a7
                  xori         t2, a4, -502
265:              nop
                  sra          t3, a5, s10
267:              srl          sp, s10, t0
                  srli         t4, a4, 15
269:              andi         s1, a0, -1700
                  sra          t1, a5, s6
                  beq          s0, t4, 291f
                  bge          t6, t6, 275f
                  and          a5, a6, t1
                  ori          ra, s4, 1611
275:              add          s9, t2, a1
                  sra          a6, s7, tp
                  blt          s6, s0, 288f
                  slt          s6, tp, s5
                  sltu         a0, a2, t4
                  srli         zero, t6, 14
                  bgeu         a2, s2, 293f
                  addi         s8, t6, -1582
                  and          s3, a3, tp
                  sltiu        a3, t5, 1101
                  nop
                  and          a5, s1, t5
                  sltu         t0, s9, s10
288:              andi         s6, t0, 1620
                  xor          ra, a3, s3
                  ori          s7, s11, -2011
291:              bltu         s0, s7, 298f
                  srai         gp, s5, 31
293:              addi         a3, s9, 1040
                  or           zero, s0, s1
                  ori          a1, ra, 209
                  slti         s3, s6, 1938
                  sltiu        t1, sp, -114
298:              sra          t3, t6, t3
                  sra          t3, a5, a2
                  ori          a1, s3, 1323
                  srli         zero, s2, 7
                  slli         t4, a3, 20
                  and          s0, t1, t3
                  slti         a7, s6, -200
                  bltu         t1, a5, 316f
                  beq          a0, a6, 326f
                  bltu         a6, t3, 318f
                  bltu         a4, tp, 320f
                  xori         a0, a5, -1563
                  slt          a4, t3, s5
                  xor          s7, t5, zero
                  slli         a6, a3, 27
                  sra          gp, t5, t6
                  addi         t1, s8, 1409
                  bgeu         s2, zero, 330f
316:              ori          a5, a1, 2026
                  blt          s7, s2, 320f
318:              srai         s0, a7, 14
                  sub          sp, t2, a1
320:              sub          s10, a4, s2
                  beq          t1, s9, 327f
                  sra          sp, a5, a2
                  nop
                  bne          zero, a5, 326f
                  bge          a6, t2, 343f
326:              xori         sp, s0, -1550
327:              sltiu        a6, t1, 1538
                  nop
                  slt          a5, s9, a1
330:              sltu         ra, zero, s4
                  and          ra, a5, t4
                  slt          s8, a5, s2
                  bge          s9, t6, 345f
                  bne          ra, a0, 353f
                  lui          s9, 977340
                  srl          s10, a1, t0
                  addi         s0, a4, 1182
                  sltu         t3, a1, t1
                  slti         zero, a6, -1005
                  srl          s4, s4, s4
                  slli         s4, s1, 24
                  sll          ra, s10, sp
343:              slli         t6, t1, 18
                  bne          s2, t5, 348f
345:              bltu         s2, ra, 347f
                  bne          t5, s9, 361f
347:              nop
348:              srai         a7, t6, 12
                  srli         t1, t4, 8
                  sra          s8, ra, a5
                  add          s4, s1, t1
                  ori          s2, t0, 318
353:              lui          gp, 204728
                  bne          s5, zero, 361f
                  addi         s0, a6, 862
                  sltu         t3, t0, t2
                  nop
                  beq          a7, a3, 361f
                  or           t3, a4, t0
                  ori          a3, s9, 359
361:              or           a2, a0, a7
                  ori          ra, a3, -1478
                  sltiu        s10, a6, -170
                  lw           s6, 4(s5)
                  addi         s5, s5, 48
                  srli         t2, a5, 30
524:              addi x17, x22, 1
524:              jalr x17, x17, 0
sub_5:            addi         s5, s5, -24
                  sw           s6, 4(s5)
                  sub          s8, a3, a7
                  sltiu        t2, t6, -1005
                  sub          s9, ra, s1
                  lui          a3, 478721
                  auipc        a5, 947716
                  slt          s7, s8, t4
                  ori          a3, s6, -816
sub_5_1:          jal          s6, 11f
0:                jal          ra, 27f
1:                jal          s10, 29f
2:                jal          ra, 19f
3:                jal          ra, 2b
4:                jal          ra, 24f
5:                jal          tp, 12f
6:                jal          ra, 21f
7:                jal          s0, 4b
8:                jal          gp, 28f
9:                jal          ra, 6b
10:               jal          ra, 7b
11:               jal          ra, 10b
12:               jal          ra, 18f
13:               jal          s1, 15f
14:               jal          t1, 5b
15:               jal          t1, 26f
16:               jal          ra, 13b
17:               jal          t3, 9b
18:               jal          s1, 22f
19:               jal          ra, 30f
20:               jal          ra, 8b
21:               jal          t1, 0b
22:               jal          t0, 1b
23:               jal          s3, 3b
24:               jal          t1, 20b
25:               jal          ra, 17b
26:               jal          ra, 25b
27:               jal          t1, 14b
28:               jal          s4, 16b
29:               jal          ra, 23b
30:               sltiu        s6, s4, 297
sub_5_6:          jal          s6, 11f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          sp, 12f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          ra, 8f
6:                jal          tp, 2b
7:                jal          s4, 1b
8:                jal          t1, 13f
9:                jal          tp, 6b
10:               jal          t1, 0b
11:               jal          s8, 9b
12:               jal          ra, 4b
13:               slt          s0, a2, t0
sub_5_15:         jal          s6, 5f
0:                jal          ra, 9f
1:                jal          ra, 6f
2:                jal          ra, 4f
3:                jal          gp, 0b
4:                jal          ra, 12f
5:                jal          ra, 8f
6:                jal          s10, 2b
7:                jal          ra, 10f
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          ra, 1b
11:               jal          ra, 3b
12:               slt          a5, t6, zero
sub_5_7:          jal          s6, 5f
0:                jal          s7, 16f
1:                jal          tp, 20f
2:                jal          t1, 15f
3:                jal          s2, 2b
4:                jal          ra, 9f
5:                jal          ra, 24f
6:                jal          ra, 28f
7:                jal          ra, 14f
8:                jal          s7, 10f
9:                jal          a4, 23f
10:               jal          s1, 17f
11:               jal          ra, 29f
12:               jal          ra, 4b
13:               jal          t0, 7b
14:               jal          t1, 12b
15:               jal          ra, 6b
16:               jal          ra, 22f
17:               jal          ra, 19f
18:               jal          ra, 8b
19:               jal          ra, 26f
20:               jal          ra, 18b
21:               jal          ra, 11b
22:               jal          s4, 3b
23:               jal          s9, 25f
24:               jal          ra, 13b
25:               jal          s10, 27f
26:               jal          a0, 21b
27:               jal          ra, 0b
28:               jal          ra, 1b
29:               xor          t6, t6, s10
sub_5_5:          jal          s6, 3f
0:                jal          ra, 6f
1:                jal          t1, 2f
2:                jal          ra, 9f
3:                jal          ra, 11f
4:                jal          ra, 14f
5:                jal          ra, 8f
6:                jal          t2, 5b
7:                jal          ra, 4b
8:                jal          ra, 13f
9:                jal          ra, 0b
10:               jal          ra, 12f
11:               jal          tp, 1b
12:               jal          ra, 7b
13:               jal          s4, 10b
14:               xor          t4, tp, ra
sub_5_10:         jal          s6, 5f
0:                jal          t1, 19f
1:                jal          ra, 10f
2:                jal          ra, 16f
3:                jal          ra, 12f
4:                jal          ra, 20f
5:                jal          s3, 22f
6:                jal          ra, 18f
7:                jal          ra, 24f
8:                jal          t0, 14f
9:                jal          gp, 15f
10:               jal          ra, 21f
11:               jal          ra, 1b
12:               jal          ra, 23f
13:               jal          t1, 3b
14:               jal          t1, 17f
15:               jal          a4, 25f
16:               jal          ra, 4b
17:               jal          t1, 26f
18:               jal          ra, 0b
19:               jal          ra, 7b
20:               jal          t1, 13b
21:               jal          ra, 2b
22:               jal          t3, 11b
23:               jal          ra, 6b
24:               jal          s10, 9b
25:               jal          s4, 8b
26:               srli         a2, s6, 26
sub_5_19:         jal          s6, 12f
0:                jal          ra, 2f
1:                jal          s9, 0b
2:                jal          ra, 9f
3:                jal          s0, 13f
4:                jal          ra, 1b
5:                jal          t1, 6f
6:                jal          s6, 7f
7:                jal          a5, 11f
8:                jal          s10, 10f
9:                jal          a3, 8b
10:               jal          ra, 5b
11:               jal          ra, 3b
12:               jal          a1, 4b
13:               and          s10, a7, s1
sub_5_12:         jal          s6, 14f
0:                jal          s3, 11f
1:                jal          s9, 3f
2:                jal          ra, 7f
3:                jal          ra, 4f
4:                jal          a7, 23f
5:                jal          ra, 15f
6:                jal          ra, 26f
7:                jal          a1, 8f
8:                jal          a5, 9f
9:                jal          t1, 21f
10:               jal          ra, 22f
11:               jal          ra, 10b
12:               jal          ra, 19f
13:               jal          a4, 27f
14:               jal          ra, 2b
15:               jal          a4, 12b
16:               jal          s2, 25f
17:               jal          t1, 24f
18:               jal          ra, 5b
19:               jal          t0, 1b
20:               jal          ra, 13b
21:               jal          ra, 6b
22:               jal          t3, 18b
23:               jal          t1, 17b
24:               jal          t1, 20b
25:               jal          t1, 0b
26:               jal          ra, 16b
27:               auipc        zero, 172251
sub_5_8:          jal          s6, 12f
0:                jal          ra, 3f
1:                jal          t0, 0b
2:                jal          t1, 1b
3:                jal          ra, 10f
4:                jal          s2, 13f
5:                jal          t2, 4b
6:                jal          ra, 8f
7:                jal          ra, 6b
8:                jal          s6, 2b
9:                jal          ra, 7b
10:               jal          t2, 11f
11:               jal          ra, 16f
12:               jal          ra, 5b
13:               jal          gp, 14f
14:               jal          t1, 18f
15:               jal          t1, 9b
16:               jal          t1, 17f
17:               jal          t1, 19f
18:               jal          ra, 15b
19:               slt          a5, a0, t4
sub_5_4:          jal          s6, 8f
0:                jal          ra, 25f
1:                jal          t1, 15f
2:                jal          t1, 9f
3:                jal          t1, 4f
4:                jal          t1, 7f
5:                jal          t1, 24f
6:                jal          ra, 1b
7:                jal          a3, 20f
8:                jal          t0, 14f
9:                jal          ra, 5b
10:               jal          s7, 2b
11:               jal          ra, 22f
12:               jal          ra, 19f
13:               jal          ra, 26f
14:               jal          ra, 10b
15:               jal          ra, 12b
16:               jal          ra, 6b
17:               jal          ra, 18f
18:               jal          tp, 13b
19:               jal          ra, 0b
20:               jal          ra, 23f
21:               jal          s7, 3b
22:               jal          ra, 17b
23:               jal          t1, 11b
24:               jal          t1, 16b
25:               jal          s10, 21b
26:               sub          t0, a2, tp
sub_5_20:         jal          s6, 1f
0:                jal          a6, 16f
1:                jal          t1, 3f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 17f
5:                jal          s2, 11f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          s4, 5b
9:                jal          ra, 14f
10:               jal          t1, 20f
11:               jal          ra, 18f
12:               jal          t1, 15f
13:               jal          ra, 21f
14:               jal          ra, 6b
15:               jal          ra, 2b
16:               jal          t1, 4b
17:               jal          t1, 19f
18:               jal          ra, 9b
19:               jal          ra, 13b
20:               jal          gp, 0b
21:               sltiu        a0, t3, -866
sub_5_21:         jal          s6, 7f
0:                jal          t1, 21f
1:                jal          a1, 4f
2:                jal          gp, 5f
3:                jal          t6, 6f
4:                jal          sp, 9f
5:                jal          t1, 14f
6:                jal          ra, 13f
7:                jal          t1, 1b
8:                jal          ra, 3b
9:                jal          ra, 17f
10:               jal          t1, 2b
11:               jal          ra, 12f
12:               jal          ra, 18f
13:               jal          t1, 19f
14:               jal          t1, 8b
15:               jal          a2, 0b
16:               jal          ra, 10b
17:               jal          ra, 20f
18:               jal          t0, 23f
19:               jal          sp, 22f
20:               jal          s1, 15b
21:               jal          ra, 16b
22:               jal          t1, 11b
23:               srl          zero, s0, s6
sub_5_24:         jal          s6, 10f
0:                jal          ra, 8f
1:                jal          ra, 5f
2:                jal          ra, 7f
3:                jal          ra, 1b
4:                jal          ra, 2b
5:                jal          ra, 11f
6:                jal          sp, 4b
7:                jal          t1, 14f
8:                jal          ra, 9f
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          ra, 6b
12:               jal          ra, 3b
13:               jal          ra, 0b
14:               sub          t1, a2, s3
sub_5_3:          jal          s6, 8f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          t0, 6f
4:                jal          ra, 0b
5:                jal          s3, 7f
6:                jal          ra, 10f
7:                jal          sp, 16f
8:                jal          sp, 12f
9:                jal          s1, 13f
10:               jal          t1, 9b
11:               jal          t6, 14f
12:               jal          s0, 4b
13:               jal          ra, 2b
14:               jal          ra, 17f
15:               jal          t1, 11b
16:               jal          ra, 15b
17:               auipc        a5, 178700
sub_5_13:         jal          s6, 19f
0:                jal          ra, 10f
1:                jal          ra, 0b
2:                jal          t6, 26f
3:                jal          t0, 11f
4:                jal          ra, 24f
5:                jal          ra, 17f
6:                jal          ra, 29f
7:                jal          ra, 22f
8:                jal          s3, 12f
9:                jal          ra, 25f
10:               jal          gp, 9b
11:               jal          t1, 7b
12:               jal          sp, 2b
13:               jal          a5, 21f
14:               jal          ra, 4b
15:               jal          t1, 18f
16:               jal          ra, 27f
17:               jal          a4, 3b
18:               jal          ra, 13b
19:               jal          ra, 5b
20:               jal          a4, 6b
21:               jal          t1, 8b
22:               jal          ra, 20b
23:               jal          tp, 14b
24:               jal          ra, 28f
25:               jal          ra, 15b
26:               jal          t1, 16b
27:               jal          ra, 30f
28:               jal          ra, 1b
29:               jal          ra, 23b
30:               ori          t2, t1, -1107
sub_5_17:         jal          s6, 8f
0:                jal          t1, 14f
1:                jal          sp, 0b
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          t1, 10f
5:                jal          ra, 15f
6:                jal          ra, 3b
7:                jal          ra, 1b
8:                jal          ra, 13f
9:                jal          a7, 2b
10:               jal          ra, 6b
11:               jal          ra, 4b
12:               jal          t1, 11b
13:               jal          ra, 7b
14:               jal          t1, 9b
15:               srai         s3, a0, 2
sub_5_26:         jal          s6, 4f
0:                jal          ra, 1f
1:                jal          t1, 8f
2:                jal          ra, 12f
3:                jal          ra, 2b
4:                jal          tp, 9f
5:                jal          ra, 0b
6:                jal          t1, 13f
7:                jal          t4, 10f
8:                jal          t0, 6b
9:                jal          t1, 3b
10:               jal          ra, 5b
11:               jal          ra, 7b
12:               jal          s4, 11b
13:               addi         s2, a2, 2003
sub_5_9:          jal          s6, 0f
0:                jal          a1, 7f
1:                jal          ra, 10f
2:                jal          t1, 3f
3:                jal          ra, 9f
4:                jal          t1, 2b
5:                jal          t1, 6f
6:                jal          gp, 4b
7:                jal          s0, 5b
8:                jal          ra, 1b
9:                jal          tp, 8b
10:               nop
sub_5_25:         jal          s6, 17f
0:                jal          sp, 9f
1:                jal          t1, 13f
2:                jal          ra, 7f
3:                jal          ra, 5f
4:                jal          t3, 10f
5:                jal          ra, 12f
6:                jal          t1, 19f
7:                jal          gp, 15f
8:                jal          ra, 4b
9:                jal          ra, 21f
10:               jal          ra, 16f
11:               jal          ra, 20f
12:               jal          ra, 0b
13:               jal          ra, 6b
14:               jal          tp, 8b
15:               jal          sp, 1b
16:               jal          ra, 18f
17:               jal          t0, 14b
18:               jal          t1, 3b
19:               jal          a7, 11b
20:               jal          ra, 22f
21:               jal          a1, 2b
22:               and          a1, s2, s9
sub_5_2:          jal          s6, 1f
0:                jal          t2, 2f
1:                jal          ra, 6f
2:                jal          ra, 3f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          s2, 4b
6:                jal          a7, 0b
7:                jal          sp, 11f
8:                jal          ra, 5b
9:                jal          ra, 10f
10:               jal          t1, 8b
11:               xor          t6, s3, ra
sub_5_23:         jal          s6, 10f
0:                jal          t1, 3f
1:                jal          a2, 19f
2:                jal          ra, 18f
3:                jal          ra, 12f
4:                jal          ra, 15f
5:                jal          ra, 6f
6:                jal          t1, 1b
7:                jal          t1, 9f
8:                jal          ra, 11f
9:                jal          ra, 20f
10:               jal          ra, 8b
11:               jal          t1, 0b
12:               jal          a3, 16f
13:               jal          s8, 7b
14:               jal          ra, 4b
15:               jal          s10, 13b
16:               jal          ra, 17f
17:               jal          gp, 2b
18:               jal          ra, 5b
19:               jal          ra, 14b
20:               addi         s7, s0, -527
sub_5_14:         jal          s6, 9f
0:                jal          ra, 23f
1:                jal          t1, 6f
2:                jal          ra, 1b
3:                jal          ra, 13f
4:                jal          t6, 0b
5:                jal          ra, 26f
6:                jal          t1, 25f
7:                jal          s4, 24f
8:                jal          ra, 5b
9:                jal          ra, 12f
10:               jal          a1, 7b
11:               jal          tp, 10b
12:               jal          ra, 14f
13:               jal          t1, 28f
14:               jal          s2, 8b
15:               jal          ra, 19f
16:               jal          ra, 21f
17:               jal          ra, 27f
18:               jal          sp, 16b
19:               jal          ra, 2b
20:               jal          ra, 4b
21:               jal          ra, 17b
22:               jal          a6, 3b
23:               jal          ra, 15b
24:               jal          t1, 18b
25:               jal          t1, 22b
26:               jal          t1, 11b
27:               jal          s10, 20b
28:               srli         a1, ra, 20
sub_5_16:         jal          s6, 0f
0:                jal          a1, 1f
1:                jal          s2, 11f
2:                jal          ra, 17f
3:                jal          a3, 8f
4:                jal          t1, 5f
5:                jal          ra, 7f
6:                jal          a6, 3b
7:                jal          ra, 14f
8:                jal          t1, 22f
9:                jal          ra, 20f
10:               jal          t1, 21f
11:               jal          ra, 26f
12:               jal          a4, 27f
13:               jal          t1, 10b
14:               jal          ra, 2b
15:               jal          t1, 13b
16:               jal          ra, 18f
17:               jal          ra, 12b
18:               jal          t2, 25f
19:               jal          t1, 16b
20:               jal          t1, 15b
21:               jal          ra, 24f
22:               jal          ra, 23f
23:               jal          ra, 19b
24:               jal          ra, 6b
25:               jal          t1, 4b
26:               jal          ra, 9b
27:               sltu         a3, sp, s0
sub_5_0:          jal          s6, 2f
0:                jal          ra, 3f
1:                jal          ra, 0b
2:                jal          sp, 10f
3:                jal          s1, 5f
4:                jal          ra, 8f
5:                jal          t2, 7f
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          ra, 12f
10:               jal          t1, 11f
11:               jal          ra, 4b
12:               slt          t0, t3, a5
sub_5_18:         jal          s6, 11f
0:                jal          t1, 4f
1:                jal          ra, 10f
2:                jal          s3, 17f
3:                jal          ra, 0b
4:                jal          ra, 7f
5:                jal          t6, 14f
6:                jal          ra, 16f
7:                jal          ra, 6b
8:                jal          t1, 2b
9:                jal          t1, 13f
10:               jal          ra, 3b
11:               jal          t3, 9b
12:               jal          ra, 15f
13:               jal          t1, 1b
14:               jal          a1, 12b
15:               jal          ra, 8b
16:               jal          ra, 5b
17:               sltiu        s9, s0, 1225
                  sub          s6, t6, a0
                  ori          s0, s2, -1808
                  blt          a2, gp, 4f
                  andi         s4, sp, 575
4:                srai         s2, a2, 31
                  sub          t0, gp, a1
                  bge          s1, s5, 11f
                  srl          tp, s3, s4
                  slti         tp, sp, 211
                  bltu         a5, t0, 13f
                  slti         s0, t0, 1986
11:               bgeu         a6, a7, 18f
                  bne          s1, s0, 18f
13:               bltu         tp, a2, 21f
                  beq          a7, t5, 30f
                  nop
                  addi         tp, a1, 1749
                  and          s9, a6, a7
18:               bge          s7, s4, 36f
                  srai         t0, a6, 0
                  sll          t2, t2, s10
21:               sll          a2, sp, a5
                  bne          a4, sp, 23f
23:               slti         a7, t5, -228
                  bne          t5, tp, 37f
                  slt          s2, a3, a0
                  bne          a6, t1, 28f
                  slt          s8, gp, s9
28:               lui          t0, 837270
                  sra          s9, s3, t0
30:               add          s0, s0, s9
                  addi         sp, s10, -1693
                  beq          tp, t0, 34f
                  beq          s2, gp, 49f
34:               bge          s2, s4, 46f
                  srl          s7, t6, zero
36:               auipc        a6, 713064
37:               srl          gp, t0, a6
                  and          s7, s2, a1
                  add          s6, t3, s11
                  sltiu        s6, a3, 385
                  ori          a7, a2, 796
                  add          s2, s4, s3
                  sltu         s0, gp, s7
                  add          a7, zero, a1
                  add          zero, a6, s9
46:               lui          tp, 519567
                  add          a4, ra, t6
                  sltiu        s9, s7, 1987
49:               andi         s1, t6, -1545
                  sltiu        zero, a3, 946
                  or           s4, s6, s8
                  bgeu         a0, a3, 60f
                  sra          s4, a4, a6
                  srl          ra, a0, a0
                  sub          s4, s5, s4
                  beq          s8, gp, 63f
                  slti         s3, s2, 150
                  sub          zero, s3, a0
                  slt          s6, s0, t3
60:               sll          a6, s0, s0
                  slti         s2, a1, -935
                  lui          a2, 1037072
63:               slli         s9, t2, 28
                  sltiu        a3, t2, 1074
                  and          zero, t3, a2
                  sra          s9, s10, s5
                  and          s10, zero, t6
                  srai         a7, a1, 23
                  auipc        s6, 624309
                  or           t0, s3, a4
                  bgeu         s7, zero, 72f
72:               lui          a6, 145650
                  blt          sp, s1, 82f
                  sltu         a1, s8, a4
                  ori          s3, t1, 85
                  bne          a5, s6, 87f
                  slli         a4, ra, 6
                  beq          s11, s5, 94f
                  sub          a7, a0, s11
                  srai         a0, t5, 28
                  blt          a0, a0, 101f
82:               lui          s2, 105722
                  andi         a2, gp, -322
                  srli         s10, ra, 4
                  srai         a1, s1, 21
                  lui          s4, 640858
87:               bgeu         s3, s1, 103f
                  addi         s6, s2, -13
                  srl          s7, t0, s6
                  bne          s1, s4, 101f
                  auipc        t2, 92485
                  and          zero, s1, t6
                  or           gp, a4, sp
94:               srl          t3, t6, s6
                  sltiu        t1, s4, -318
                  sub          a0, a6, s7
                  bltu         a5, tp, 114f
                  slli         a6, t5, 25
                  slti         ra, s9, 1899
                  blt          s0, t4, 108f
101:              srli         t3, a7, 16
                  and          a2, zero, a6
103:              lui          s2, 832500
                  bgeu         a3, s11, 120f
                  slti         sp, t3, -893
                  xori         ra, a5, -928
                  srli         a2, tp, 16
108:              ori          s8, a4, -176
                  sub          t1, sp, t3
                  xor          t6, a5, s0
                  bne          a0, a7, 125f
                  slt          zero, a6, s1
                  sra          t4, a0, s4
114:              and          a5, t0, s1
                  sub          sp, a6, zero
                  srai         tp, sp, 14
                  and          s1, s11, s5
                  bgeu         s4, s6, 130f
                  beq          ra, tp, 127f
120:              bltu         ra, s8, 133f
                  srai         t3, a6, 8
                  and          a4, a5, tp
                  beq          s11, s11, 139f
                  srai         a1, t1, 1
125:              bltu         s11, a4, 141f
                  and          t6, s6, s0
127:              lui          a6, 789184
                  bltu         s9, a5, 136f
                  sltiu        a0, t2, -1069
130:              sub          t3, t3, t1
                  andi         ra, a2, -500
                  srai         a2, s0, 27
133:              bgeu         s2, s11, 153f
                  addi         s10, a1, -264
                  sll          t2, a5, a1
136:              andi         s1, t2, 52
                  bne          a0, t2, 139f
                  sub          a5, s7, gp
139:              bgeu         a1, t3, 144f
                  bge          s2, s2, 146f
141:              slt          t3, tp, s1
                  bltu         a1, s11, 146f
                  bgeu         s3, a3, 151f
144:              slt          a7, a5, a2
                  srli         zero, s10, 25
146:              srl          zero, t0, ra
                  slti         gp, t1, 220
                  sll          a4, t2, a2
                  nop
                  lui          a7, 296063
151:              bge          t0, s2, 153f
                  bne          a2, s0, 159f
153:              sra          s1, a4, a7
                  or           s10, s5, s5
                  auipc        tp, 123635
                  bltu         s4, a7, 165f
                  auipc        a5, 476484
                  andi         s0, a0, 1239
159:              and          s7, s3, a7
                  nop
                  srai         zero, s6, 19
                  lui          s10, 1005055
                  slli         a0, zero, 7
                  slli         a0, a0, 3
165:              srl          t0, s2, a5
                  srli         gp, t2, 4
                  sra          t3, s9, t4
                  sll          s3, t1, a1
                  beq          s9, t1, 182f
                  srl          a1, sp, t1
                  bltu         t3, sp, 172f
172:              sltiu        s9, gp, -1608
                  andi         a4, gp, 11
                  blt          s9, a5, 182f
                  bgeu         ra, a2, 183f
                  srai         a5, t1, 5
                  bne          t2, s0, 195f
                  bltu         ra, s0, 190f
                  slli         ra, s11, 19
                  bgeu         a4, a1, 191f
                  srai         a6, s11, 0
182:              sltiu        t0, a2, -562
183:              auipc        s4, 542900
                  ori          t2, a1, -606
                  bne          a5, t3, 186f
186:              xori         s7, t1, 1888
                  sltu         a5, s8, sp
                  bltu         s4, t2, 204f
                  sltu         t2, t1, s11
190:              blt          a6, t5, 192f
191:              blt          s3, a6, 202f
192:              auipc        s3, 389541
                  sra          s3, t0, t6
                  bne          t6, ra, 206f
195:              bgeu         t4, zero, 202f
                  auipc        s1, 317678
                  auipc        s1, 792361
                  and          a3, t2, a3
                  bne          a4, a3, 215f
                  slli         t6, s2, 29
                  beq          a4, t6, 217f
202:              add          a0, a6, a6
                  xor          t3, a2, t0
204:              slti         t1, s11, -1169
                  srli         s2, t4, 31
206:              bgeu         ra, tp, 220f
                  blt          gp, a7, 220f
                  slli         t1, t1, 9
                  sub          a4, tp, t5
                  bltu         a6, a1, 227f
                  andi         t3, t2, 627
                  nop
                  ori          a6, s5, -735
                  sll          a0, s4, zero
215:              srai         s7, a1, 18
                  blt          s7, t5, 218f
217:              lui          t4, 87124
218:              beq          tp, tp, 225f
                  sub          s2, t4, zero
220:              and          a1, ra, a1
                  sltiu        t3, a6, 1073
                  xori         t1, a0, -327
                  xori         a1, a1, 1942
                  bgeu         s6, s10, 242f
225:              add          sp, s11, t1
                  sltu         a4, a0, t1
227:              bltu         t5, s9, 240f
                  bge          t4, t5, 240f
                  bgeu         s6, s11, 237f
                  slt          t6, a3, t2
                  beq          s3, sp, 247f
                  bltu         a4, tp, 240f
                  sub          s8, s5, t0
                  or           s0, a1, t4
                  slt          a6, t5, zero
                  xor          t6, zero, s9
237:              bge          a4, s5, 241f
                  beq          s6, sp, 244f
                  and          gp, s5, a6
240:              sra          t2, s1, s11
241:              sll          t6, s5, s5
242:              srli         t6, a3, 23
                  slti         s10, s1, -817
244:              and          s8, a5, s9
                  add          t2, a1, a0
                  addi         s10, gp, 406
247:              srli         a7, sp, 9
                  xori         s4, t4, -1356
                  xor          s4, a1, s7
                  andi         s2, t3, 162
                  bgeu         s0, a2, 271f
                  srl          t3, a1, a5
                  or           a7, t2, sp
                  slli         tp, a5, 22
                  sll          t3, s0, s5
                  add          zero, s3, a6
                  srai         s10, t2, 12
                  bne          a6, s4, 274f
                  srli         s6, s7, 28
                  bne          s0, s1, 277f
                  bge          s1, t2, 269f
                  sra          a4, t5, s0
                  lui          s8, 482063
                  bgeu         sp, s6, 269f
                  xor          t4, t5, s0
                  srl          ra, t3, s8
                  bgeu         s7, s6, 279f
                  bgeu         s2, a0, 279f
269:              bltu         t0, a1, 280f
                  srl          t1, ra, t4
271:              andi         a6, t2, -1031
                  addi         a4, s11, -6
                  xor          t3, s6, s8
274:              bltu         tp, t1, 275f
275:              and          s2, gp, a2
                  add          tp, s3, s1
277:              slti         ra, a5, -1176
                  nop
279:              srl          s7, s6, s10
280:              auipc        s4, 931726
                  and          t2, a1, t4
                  or           s10, s1, a6
                  xori         t3, s1, 1107
                  bne          s9, sp, 285f
285:              sltiu        s10, t3, -1105
                  bgeu         a2, a3, 295f
                  ori          a6, ra, 1686
                  sltiu        zero, s7, 256
                  blt          t2, t2, 305f
                  and          a7, tp, t4
                  bge          a1, tp, 307f
                  slti         t0, s6, 1938
                  addi         tp, s10, 1213
                  xor          a3, s3, tp
295:              auipc        t4, 569657
                  beq          t5, s0, 304f
                  and          s2, s2, a4
                  lui          a4, 805259
                  sltiu        t3, a5, 1770
                  sub          gp, s5, s7
                  bgeu         a7, tp, 303f
                  sra          t3, s6, sp
303:              sub          ra, s7, s2
304:              slli         gp, ra, 14
305:              or           t1, t3, a6
                  beq          a3, s5, 320f
307:              blt          a3, a4, 314f
                  sll          a4, s1, t3
                  sltu         t6, t2, a3
                  bgeu         s0, s5, 312f
                  slli         s6, s6, 18
312:              sltiu        a1, tp, -775
                  srai         s3, s7, 27
314:              nop
                  auipc        zero, 1014491
                  auipc        s7, 400174
                  lui          a6, 443647
                  sltiu        a0, s8, 654
                  bne          a4, s8, 335f
320:              slti         s8, s4, -147
                  bge          t4, s2, 334f
                  slt          s3, t2, t6
                  slti         s1, a5, -1310
                  slt          s10, t0, s6
                  add          s4, zero, s11
                  or           s10, sp, s9
                  slt          ra, t6, s3
                  add          tp, tp, s10
                  or           a5, a5, s1
                  or           s10, t2, t2
                  bne          a7, ra, 335f
                  lui          t2, 772646
                  bgeu         s10, t3, 345f
334:              slt          a6, ra, s4
335:              add          s9, t4, t3
                  slt          s7, ra, a1
                  bne          t5, a6, 354f
                  add          s2, a2, s4
                  addi         a7, t3, -2004
                  auipc        t1, 445189
                  addi         s8, tp, -837
                  slli         sp, s10, 19
                  slti         sp, a0, 1831
                  xori         s2, s3, -1651
345:              sub          s9, a5, t6
                  xori         zero, s6, 1243
                  srai         s0, ra, 0
                  addi         s7, tp, 536
                  and          a1, s6, a7
                  srai         gp, a0, 4
                  bne          a3, s6, 364f
                  xori         t0, t0, 25
                  bne          a3, s4, 369f
354:              lui          t4, 21604
                  lui          a2, 468319
                  sltiu        t3, s5, 434
                  addi         zero, t2, -847
                  xor          s7, t0, a6
                  srai         a6, s6, 1
                  bltu         s9, s11, 373f
                  blt          ra, a1, 377f
                  bltu         zero, t3, 378f
                  bgeu         s3, s8, 371f
364:              slli         a5, s0, 11
                  or           s4, a2, s1
                  andi         s3, s4, -416
                  bgeu         sp, gp, 368f
368:              slli         s3, gp, 18
369:              bltu         a7, s8, 387f
                  lui          a5, 513511
371:              bne          t2, s1, 385f
                  or           a2, t5, s5
373:              bgeu         t1, a2, 381f
                  or           a1, s6, a3
                  sra          s8, t2, a2
                  slti         a5, s4, -112
377:              nop
378:              srai         t2, a2, 23
                  sltiu        s4, sp, 538
                  sra          tp, s2, gp
381:              slt          tp, a5, s2
                  sra          ra, a4, s1
                  sltiu        a4, a6, 878
                  sub          sp, s1, sp
385:              auipc        t3, 155898
                  slt          a5, sp, s6
387:              or           t0, tp, a7
                  xori         s8, t4, 278
                  lui          a7, 922636
                  slti         a1, t3, -1090
                  add          t4, a5, tp
                  andi         s9, s11, 1944
                  bge          a0, s0, 398f
                  blt          s7, t0, 402f
                  slli         s0, ra, 10
                  and          a4, t1, t2
                  andi         t0, t6, 697
398:              sltiu        s2, s4, -1997
                  blt          a3, a4, 401f
                  slli         a5, a5, 26
401:              slli         gp, a4, 19
402:              sra          t1, s6, t4
                  sub          t1, t1, a2
                  slti         s2, ra, -343
                  beq          t5, a3, 407f
                  beq          a3, a7, 414f
407:              andi         s6, a3, 1274
                  bltu         s1, a1, 409f
409:              sub          s7, t0, t1
                  beq          s6, t2, 417f
                  bgeu         s0, t4, 417f
                  nop
                  andi         tp, zero, 397
414:              auipc        tp, 390554
                  add          a6, s11, s0
                  add          s4, t6, s1
417:              sll          a0, s2, a1
                  or           sp, t5, zero
                  xori         s7, s10, -718
                  add          a0, ra, t5
                  sltiu        s0, s8, -121
                  add          sp, t5, s6
                  srl          a0, a4, s0
                  sltu         s9, s7, t5
                  srli         s9, gp, 9
                  or           t1, t3, s1
                  xor          a5, s1, s7
                  bge          a3, s4, 437f
                  srl          t6, a7, t6
                  nop
                  srli         zero, s4, 4
                  sltiu        s0, s5, -231
                  slt          a1, t1, gp
                  sltu         s2, ra, a3
                  or           a6, a0, a4
                  xor          tp, s4, t2
437:              sra          s3, t5, s11
                  beq          t3, s4, 440f
                  xor          tp, t5, s6
440:              andi         t0, t4, -524
                  ori          sp, s3, 677
                  or           t4, a6, a2
                  nop
                  sltu         s1, ra, a3
                  blt          s7, s6, 465f
                  bge          s6, tp, 458f
                  addi         a2, a7, -624
                  and          a2, gp, t1
                  xor          s1, t4, sp
                  ori          s8, gp, 110
                  bge          s0, s11, 467f
                  auipc        tp, 347717
                  auipc        s4, 14334
                  slli         a1, s8, 23
                  bltu         a2, s9, 466f
                  srai         s9, ra, 18
                  addi         s7, s7, -873
458:              sltiu        a1, s1, 543
                  sltiu        t6, s9, 1843
                  sub          s4, t3, s0
                  slli         a0, a4, 22
                  slt          s6, ra, s3
                  bltu         s10, s6, 479f
                  auipc        a0, 446528
465:              auipc        zero, 56505
466:              andi         tp, a0, -1317
467:              xori         s10, a2, 1242
                  ori          s2, t2, 1048
                  addi         a4, gp, 1352
                  sltiu        a3, a6, -1066
                  bltu         tp, ra, 478f
                  auipc        t4, 495521
                  sub          s0, tp, s5
                  blt          s1, s4, 485f
                  xor          t4, t2, s0
                  xori         s10, s9, -607
                  auipc        t6, 396593
478:              ori          s8, s9, -484
479:              xor          a6, a2, s7
                  blt          t2, t5, 487f
                  srl          sp, t5, s8
                  auipc        s8, 428503
                  srli         s6, zero, 30
                  srl          a3, a6, a7
485:              sll          a6, a6, a4
                  srli         s2, t2, 12
487:              slti         a1, t6, 1387
                  add          t0, a2, t0
                  andi         zero, s7, -1838
                  xori         s1, a7, 858
                  srai         gp, a1, 10
                  auipc        t1, 295098
                  slt          a7, s0, s2
                  xor          s1, s4, t4
                  srl          gp, s6, t1
                  slli         s9, s7, 1
                  sra          a2, s9, s11
                  sub          t2, a5, sp
                  srli         t6, s0, 17
                  add          s7, s10, t4
                  add          gp, a5, s0
                  addi         s2, t0, -1006
                  lui          gp, 929276
                  addi         t2, t5, 313
                  and          zero, a7, s6
                  bltu         s3, t2, 522f
                  srli         gp, s0, 23
                  bltu         s11, s7, 516f
                  bgeu         a2, a3, 510f
510:              blt          a3, a2, 526f
                  sra          s1, sp, zero
                  srl          ra, t1, zero
                  or           s8, t1, s1
                  xori         t4, t4, -1852
                  sll          a2, a0, a2
516:              beq          a0, a3, 527f
                  sltu         s6, s6, s10
                  or           s2, t2, s11
                  sltiu        a6, a1, 738
                  blt          a2, a4, 531f
                  bge          s11, tp, 525f
522:              ori          a6, s11, -286
                  bgeu         s0, a2, 525f
                  lui          s1, 740699
525:              xor          s4, s4, a7
526:              nop
527:              beq          s3, sp, 528f
528:              beq          sp, a3, 540f
                  andi         s0, a3, -536
                  ori          a6, t4, -759
531:              bge          s3, gp, 539f
                  or           t2, s8, s7
                  sub          t6, t2, ra
                  srai         s1, t2, 23
                  addi         ra, t5, 864
                  sll          s7, s2, t3
                  sltiu        zero, t5, -43
                  beq          tp, sp, 558f
539:              sltu         s7, s9, s4
540:              bne          t1, a3, 553f
                  srl          a2, s2, t1
                  bge          a1, a4, 547f
                  lui          a6, 186894
                  bge          s0, a4, 552f
                  sll          a1, s1, s3
                  xor          ra, tp, s7
547:              bne          a1, a6, 554f
                  bgeu         ra, s3, 557f
                  bne          s2, a4, 566f
                  srl          s4, zero, a3
                  bge          a3, s8, 567f
552:              add          a1, s3, a3
553:              sra          s4, a4, s11
554:              sltiu        s10, s2, 1308
                  slti         t3, t0, -742
                  bne          s4, s1, 562f
557:              bgeu         zero, s11, 575f
558:              andi         s3, s1, -178
                  srl          s9, s8, t4
                  blt          sp, t2, 576f
                  srl          s8, tp, t5
562:              sub          a4, a3, ra
                  slti         s7, a3, -913
                  srli         s0, t3, 3
                  slti         a5, s8, -1407
566:              nop
567:              srai         t1, a5, 5
                  sra          a6, gp, t5
                  sub          t0, s5, a6
                  beq          s11, t0, 578f
                  xor          s6, s11, s7
                  bge          t0, t4, 574f
                  sub          t4, a0, s11
574:              slti         s2, t2, -701
575:              xori         gp, a3, -1331
576:              bne          a5, s0, 578f
                  bge          sp, s7, 589f
578:              xor          t0, tp, a4
                  srli         s2, a5, 24
                  or           s4, tp, t4
                  sra          a5, s9, s10
                  slti         a2, t3, -132
                  bne          t6, tp, 599f
                  add          tp, t0, t4
                  andi         a6, s9, -806
                  add          s2, t1, t1
                  bltu         t6, s2, 601f
                  sll          s1, a4, s4
589:              auipc        s7, 123875
                  srli         s0, s3, 16
                  sltu         t0, a4, a2
                  and          gp, gp, sp
                  andi         ra, a0, -1195
                  sll          s1, gp, s5
                  addi         t6, t3, -1130
                  srai         s1, s6, 1
                  sltiu        a0, s4, -1231
                  sll          ra, s11, s5
599:              xor          t3, s4, a4
                  bgeu         s0, t2, 613f
601:              sll          t0, s1, ra
                  sltu         s0, s6, a6
                  nop
                  ori          a1, s5, -1614
                  bge          s8, s0, 616f
                  bltu         t5, s7, 614f
                  sltiu        sp, s0, -1597
                  and          s9, s0, tp
                  ori          a4, a6, 1180
                  blt          sp, s2, 626f
                  beq          t1, t4, 629f
                  or           a7, zero, s10
613:              bge          tp, s8, 620f
614:              bgeu         t5, s5, 615f
615:              add          s4, a7, ra
616:              ori          a2, s5, -884
                  blt          s10, ra, 619f
                  ori          a0, t5, 641
619:              sub          ra, a6, s7
620:              addi         a1, s9, -1014
                  andi         ra, sp, 147
                  bltu         t1, a2, 631f
                  auipc        ra, 571379
                  slli         t1, s11, 21
                  srl          s9, a2, s5
626:              lui          tp, 399610
                  addi         a1, a4, 549
                  or           s1, s3, sp
629:              ori          s8, s5, -1298
                  sll          t2, s4, s2
631:              sltu         a6, s8, a4
                  slli         a6, gp, 4
                  auipc        a3, 824357
                  addi         a3, s6, 878
                  sll          a4, t6, a0
                  addi         t4, t2, -216
                  addi         t2, a3, -1835
                  srli         s8, s7, 15
                  bgeu         s5, s0, 640f
640:              slli         s10, t4, 28
                  andi         sp, zero, -1038
                  sra          t4, t1, a6
                  srl          a3, s1, s1
                  slt          s2, s0, t2
                  srl          s10, s1, s10
                  bne          s0, t2, 654f
                  sub          sp, a4, t6
                  xor          a1, a5, a5
                  srl          a1, s0, gp
                  bgeu         s10, tp, 656f
                  bltu         a7, zero, 667f
                  xor          a3, s2, t5
                  sltu         t2, t1, a6
654:              and          a0, a1, t6
                  bltu         a0, s8, 666f
656:              slti         s7, s4, 1881
                  bltu         s4, a3, 671f
                  xori         s4, a1, 1827
                  nop
                  slli         s6, zero, 14
                  slt          a3, a7, a6
                  bltu         t4, t5, 682f
                  or           s0, zero, t5
                  bne          s4, t3, 680f
                  and          s6, sp, t0
666:              lui          t0, 441872
667:              sub          t4, ra, s10
                  slt          a1, s4, a2
                  sub          a1, t5, s11
                  slti         t6, s7, 1252
671:              sra          s0, s5, a0
                  slt          s6, t2, s3
                  sll          zero, s0, zero
                  blt          zero, s9, 690f
                  beq          s8, t2, 683f
                  add          s2, a4, s10
                  srai         t0, s2, 17
                  andi         t4, a4, 965
                  slt          a4, a2, s3
680:              sltiu        t6, t0, -1413
                  slt          a0, a1, a6
682:              sra          s4, t5, a6
683:              slt          a4, t4, a7
                  bne          t3, gp, 700f
                  nop
                  bne          s1, t5, 699f
                  slli         s7, s10, 2
                  sltu         a0, s4, a7
                  sra          t2, s6, s9
690:              sra          zero, s0, a5
                  lui          s9, 397985
                  and          a7, s6, ra
                  xor          gp, gp, a5
                  ori          s9, a2, -1440
                  slli         s0, t3, 4
                  xori         s1, sp, -1127
                  sltu         s4, t2, s8
                  bge          zero, t0, 702f
699:              lui          a4, 921406
700:              lui          gp, 411179
                  bne          s4, s8, 713f
702:              xor          a0, a2, a7
                  sltiu        t2, s1, 1296
                  sltiu        a2, sp, 162
                  add          s1, a7, a0
                  sltu         t0, s4, zero
                  ori          a4, t4, 1415
                  blt          s11, t0, 713f
                  ori          s2, s1, 1158
                  or           s4, t4, s1
                  sra          a7, a3, s2
                  slli         t2, a5, 6
713:              slt          a6, a5, s6
                  bge          a7, s2, 726f
                  and          a5, tp, s5
                  bgeu         s10, gp, 718f
                  sll          a5, t3, s10
718:              xori         a2, t1, 287
                  slli         s7, t2, 10
                  sll          zero, s4, ra
                  nop
                  and          zero, a1, zero
                  sltu         zero, a3, s5
                  xor          a0, s0, sp
                  xori         s8, t5, 657
726:              sltu         zero, t5, s5
                  bge          a7, sp, 735f
                  bgeu         s9, t0, 741f
                  slt          t3, s1, a5
                  xor          s8, s3, sp
                  and          a7, a6, s10
                  sra          s9, s11, s1
                  bgeu         zero, s11, 750f
                  lui          s9, 157097
735:              add          s6, s3, tp
                  nop
                  slli         a7, gp, 3
                  bgeu         a4, s2, 740f
                  xor          tp, t1, s2
740:              slt          s6, sp, t3
741:              sub          zero, s10, s1
                  srli         t2, tp, 7
                  andi         s1, t3, 1886
                  srl          t3, a6, a6
                  and          s8, t5, s0
                  bltu         s8, t4, 753f
                  xor          t0, s8, t0
                  sll          t1, s10, t3
                  sll          t1, s9, s1
750:              srli         a5, sp, 16
                  beq          a5, a2, 763f
                  xor          t1, a6, s9
753:              xori         ra, a7, 738
                  slli         s1, a7, 27
                  slti         s10, s8, 1615
                  nop
                  or           a3, s2, ra
                  auipc        s0, 744807
                  andi         s2, sp, -1948
                  bne          tp, tp, 774f
                  xor          s3, a6, s9
                  xori         a2, s2, 151
763:              xori         s9, t1, 860
                  sltu         a2, s11, zero
                  auipc        t4, 60708
                  sra          t2, t0, a3
                  bne          zero, a4, 768f
768:              ori          s0, s0, 599
                  beq          s9, s10, 785f
                  srl          s2, s1, a6
                  bltu         s7, tp, 783f
                  bne          s2, tp, 783f
                  sltu         s7, s0, s9
774:              bltu         s10, s1, 778f
                  ori          a5, s0, 835
                  srli         a3, a5, 0
                  or           s1, a4, s1
778:              nop
                  add          gp, t0, s7
                  srli         t4, zero, 19
                  and          a1, s3, t1
                  sll          a4, a7, s11
783:              lui          gp, 670585
                  beq          t1, s2, 790f
785:              andi         tp, a7, -313
                  xor          t6, t6, s10
                  addi         a3, a4, 1052
                  srai         s1, t5, 24
                  slti         a2, gp, -19
790:              blt          s10, t1, 799f
                  blt          s2, a0, 798f
                  slt          zero, ra, a0
                  sll          t2, a5, s0
                  auipc        a7, 1002586
                  lui          s3, 239902
                  or           t0, t1, t2
                  sll          s9, s0, s7
798:              bltu         a4, t0, 814f
799:              slti         s3, a2, 1664
                  bne          tp, a2, 820f
                  bgeu         s0, a0, 818f
                  sltiu        s3, a0, -47
                  add          a7, s9, t3
                  add          t2, a4, t6
                  slti         a1, s11, -503
                  sra          s9, t1, s5
                  blt          a0, s3, 809f
                  bge          s3, s6, 815f
809:              srai         sp, t6, 19
                  sub          s2, s6, s2
                  bgeu         s7, s4, 824f
                  and          a6, s9, a0
                  srl          a5, s7, s11
814:              sra          t4, a0, t1
815:              beq          s4, s3, 817f
                  slti         s7, sp, 1978
817:              sra          a6, s11, s2
818:              bltu         a0, t2, 834f
                  sltiu        t6, s2, 1240
820:              or           tp, s10, s0
                  nop
                  xori         gp, s2, -606
                  bltu         a0, s11, 831f
824:              auipc        s8, 489061
                  slti         s9, s4, 563
                  andi         s4, tp, -1113
                  add          s7, a2, a2
                  xori         s10, s2, 518
                  slli         s1, s0, 3
                  nop
831:              xor          a4, t2, s8
                  srli         a3, s10, 3
                  srl          sp, sp, gp
834:              sub          s3, t4, zero
                  bltu         t2, t5, 843f
                  srli         tp, t3, 23
                  slli         tp, t6, 18
                  and          t0, t3, s6
                  sltu         s3, s3, s9
                  andi         s9, ra, -353
                  nop
                  sltiu        ra, s4, 244
843:              slt          a3, t1, tp
                  srl          a7, s9, s8
                  slti         t1, sp, -522
                  bne          t2, s2, 862f
                  slti         s10, s11, 1096
                  srl          s1, t4, tp
                  xori         a6, a4, -460
                  andi         a6, tp, -884
                  or           ra, t1, s10
                  bge          a6, s2, 870f
                  add          a1, sp, s11
                  xori         t3, s2, 88
                  or           a6, t5, a0
                  slti         t6, a3, -773
                  nop
                  or           s2, t2, a5
                  andi         t2, s3, -1298
                  bgeu         s11, s1, 865f
                  blt          gp, a0, 863f
862:              xori         s1, s0, -1313
863:              auipc        a6, 856653
                  xor          zero, ra, a5
865:              blt          gp, sp, 873f
                  bne          t3, s7, 867f
867:              xor          s8, s8, t2
                  srl          s10, a6, s6
                  srai         t1, a6, 7
870:              bge          a0, t1, 881f
                  bltu         s9, s1, 879f
                  auipc        ra, 634218
873:              and          s4, t2, gp
                  sltu         a7, a5, a1
                  nop
                  slti         s3, t0, 71
                  srai         ra, s8, 1
                  xori         s1, t6, -1629
879:              andi         a6, zero, -1556
                  ori          s1, a0, 1341
881:              addi         s6, a5, 1578
                  srl          tp, a7, s4
                  sub          t6, tp, a3
                  slti         t6, s4, -1869
                  bne          tp, t6, 901f
                  xori         gp, a6, -1594
                  nop
                  xori         a6, s3, 1015
                  bge          t0, a2, 902f
                  srl          sp, a2, t2
                  or           t0, s7, t5
                  addi         s4, s4, -732
                  addi         gp, a5, 953
                  sltu         ra, s4, t4
                  addi         s8, s10, -1846
                  and          s2, a2, tp
                  addi         ra, s0, -737
                  auipc        a6, 857929
                  sra          ra, s9, t1
                  and          zero, t1, s2
901:              sltiu        s7, s11, 1450
902:              sltiu        t2, a0, -1826
                  srl          t6, s11, a2
                  xori         a4, t1, -1687
                  sltiu        t0, s7, -445
                  and          s4, t2, a7
                  slti         s6, a4, -397
                  bgeu         s1, s1, 916f
                  addi         a7, t6, 1489
                  nop
                  bge          s1, a4, 928f
                  sll          t0, s10, s11
                  andi         sp, a7, 1102
                  sltiu        s2, t6, -763
                  xori         gp, s6, 2043
916:              bltu         a6, a1, 924f
                  sltiu        a3, s11, 279
                  sub          a1, zero, s10
                  or           t1, a5, t6
                  sltu         s7, t5, s3
                  slli         s6, s8, 29
                  xor          t6, gp, a4
                  lui          t2, 274007
924:              add          s7, a3, s9
                  sub          sp, a0, a2
                  beq          s3, s3, 932f
                  beq          t1, s6, 938f
928:              sltu         a5, a6, t4
                  or           a6, a5, s9
                  sltu         s9, a1, s5
                  beq          t1, a7, 945f
932:              nop
                  slli         s9, tp, 19
                  sltiu        a6, t4, -1164
                  auipc        a2, 706223
                  xori         s9, sp, -120
                  nop
938:              sll          s3, ra, tp
                  andi         t4, ra, 1559
                  add          a6, s9, a4
                  ori          a7, a7, -1356
                  beq          s0, s4, 960f
                  bne          a6, tp, 959f
                  xori         s9, sp, 1450
945:              srli         ra, zero, 6
                  andi         s10, a3, 359
                  andi         t2, s6, -526
                  lui          a6, 960279
                  bltu         s9, s2, 953f
                  slti         a6, s9, 1059
                  ori          a7, t6, -1078
                  srai         s4, t2, 27
953:              bge          tp, t2, 969f
                  sltiu        s8, tp, 66
                  ori          a2, a2, 1020
                  nop
                  bltu         s10, a1, 965f
                  addi         a7, t5, 1677
959:              addi         t2, s5, 727
960:              andi         sp, ra, 1222
                  slli         gp, sp, 27
                  and          t0, t0, s5
                  slti         ra, a6, -943
                  srli         s3, s1, 3
965:              sltiu        ra, s2, 1445
                  beq          s2, s4, 968f
                  beq          s11, a6, 980f
968:              sra          s1, t3, s9
969:              nop
                  sltiu        a7, s1, -524
                  auipc        s0, 592774
                  addi         s1, a6, 1364
                  slti         s2, ra, 932
                  beq          gp, s8, 990f
                  auipc        a5, 942523
                  bgeu         t2, a0, 989f
                  srai         a5, s8, 30
                  srai         ra, s7, 0
                  sll          t4, s3, s3
980:              nop
                  slli         s2, s7, 13
                  sltu         t1, s6, a0
                  xor          t4, a6, ra
                  and          a5, a4, s1
                  lui          t4, 251598
                  slt          tp, t0, t5
                  sll          ra, tp, t1
                  ori          zero, s3, 1827
989:              sll          gp, s2, sp
990:              sra          s7, t3, s11
                  bge          t6, t6, 1002f
                  auipc        t6, 271959
                  or           s8, a7, t2
                  bgeu         tp, s3, 1010f
                  srl          sp, a1, a1
                  slt          s4, gp, a4
                  lui          a2, 963179
                  nop
                  bltu         gp, ra, 1006f
                  lui          a1, 99352
                  sll          s9, s8, s4
1002:             xor          ra, t3, gp
                  and          gp, t0, t6
                  and          a3, a1, t0
                  bne          gp, s0, 1017f
1006:             bgeu         s8, s6, 1008f
                  ori          s7, s2, -23
1008:             bne          s7, a6, 1028f
                  beq          s1, t0, 1016f
1010:             sltiu        s0, a5, 1889
                  lui          s2, 572939
                  xor          s0, tp, a6
                  slli         t1, gp, 1
                  sub          a0, s4, ra
                  srl          a2, s3, t6
1016:             slti         ra, a1, 1606
1017:             bgeu         zero, s6, 1029f
                  add          a4, s0, a1
                  sltiu        a5, s5, -124
                  srai         s3, a1, 30
                  slt          a1, s9, s3
                  sll          s9, a3, a4
                  slt          a2, zero, a6
                  srli         s7, s11, 16
                  or           a7, t3, t4
                  bltu         s0, s5, 1035f
                  slli         s10, t3, 30
1028:             xori         ra, t1, -920
1029:             slti         s8, s10, 1098
                  srli         gp, a1, 1
                  xori         s2, a2, -555
                  bne          s1, s6, 1040f
                  xori         t4, t5, -1520
                  blt          a3, a1, 1050f
1035:             slt          s9, t5, s11
                  sll          a1, s5, s7
                  lui          zero, 881395
                  xori         t1, t4, -487
                  slli         t2, s7, 2
1040:             sub          s7, s10, s5
                  blt          s8, a2, 1043f
                  blt          s0, a6, 1043f
1043:             xori         a7, a5, 1331
                  blt          t0, s6, 1049f
                  auipc        s8, 136253
                  sltiu        s9, t6, -1416
                  add          zero, s1, a7
                  lui          a7, 263046
1049:             auipc        s0, 519250
1050:             sra          s1, t2, gp
                  sra          s10, s5, t1
                  nop
                  bge          zero, a1, 1054f
1054:             beq          ra, a3, 1062f
                  or           t6, tp, s7
                  blt          s4, s6, 1064f
                  xor          s6, tp, a5
                  bgeu         t0, t4, 1064f
                  sra          s8, zero, t6
                  xori         s2, s7, 741
                  sra          t2, s0, t3
1062:             srli         t4, a2, 2
                  and          a1, s6, s5
1064:             sltu         a4, a4, s5
                  sll          gp, a4, a3
                  or           s6, s2, s1
                  srai         gp, s10, 6
                  sra          s4, s7, s6
                  sll          a4, a0, s1
                  xori         a2, t3, -1409
                  sra          s9, t0, t3
                  lui          s0, 452037
                  addi         s1, s9, 1496
                  beq          a2, a6, 1086f
                  sltu         s3, s10, gp
                  slt          a5, t6, gp
                  sltu         s3, s4, gp
                  xor          s9, a4, t3
                  srli         a7, s6, 25
                  srai         tp, t6, 16
                  slti         a4, s6, 1481
                  srai         a2, s1, 2
                  nop
                  blt          t0, s9, 1097f
                  auipc        s8, 607972
1086:             srli         t3, sp, 15
                  xor          zero, s8, gp
                  addi         t2, s0, 311
                  bne          ra, s0, 1109f
                  andi         t2, t1, 1920
                  beq          s9, a4, 1107f
                  lui          t3, 854558
                  sltu         a6, s6, t0
                  lui          t6, 365413
                  lui          a7, 19633
                  srl          s1, zero, a4
1097:             sll          t1, s5, s3
                  sub          a6, a1, a7
                  xori         s7, s1, 1978
                  bltu         s6, s3, 1111f
                  and          a7, a0, a6
                  nop
                  or           a7, s2, a7
                  srli         s2, a7, 30
                  slti         gp, a0, 1965
                  bgeu         s10, s9, 1122f
1107:             bne          a4, a5, 1125f
                  addi         s0, t0, 1048
1109:             or           a0, t4, sp
                  auipc        t0, 534220
1111:             bge          s11, s11, 1112f
1112:             srli         t2, t1, 8
                  slli         s0, t3, 26
                  lui          s3, 1005408
                  auipc        a3, 701204
                  sltu         s10, a5, s5
                  slti         s1, t6, -1752
                  xori         a3, t0, 2035
                  sra          t2, t0, s5
                  bgeu         s9, s0, 1132f
                  lui          t1, 370580
1122:             bgeu         s1, sp, 1138f
                  sltu         a6, tp, t1
                  bgeu         s4, a1, 1131f
sub_5_11:         jal          s6, 6f
0:                jal          ra, 18f
1:                jal          ra, 20f
2:                jal          ra, 1b
3:                jal          a0, 15f
4:                jal          ra, 2b
5:                jal          s4, 3b
6:                jal          gp, 24f
7:                jal          t1, 12f
8:                jal          gp, 4b
9:                jal          sp, 8b
10:               jal          tp, 5b
11:               jal          ra, 16f
12:               jal          a4, 9b
13:               jal          tp, 0b
14:               jal          a6, 13b
15:               jal          ra, 19f
16:               jal          ra, 25f
17:               jal          ra, 10b
18:               jal          t1, 17b
19:               jal          ra, 22f
20:               jal          t1, 14b
21:               jal          ra, 7b
22:               jal          ra, 23f
23:               jal          t1, 11b
24:               jal          t6, 21b
25:               sra          zero, s7, s8
1125:             nop
                  srai         s2, ra, 25
                  andi         a5, s8, 1164
                  blt          a1, sp, 1137f
                  nop
                  bge          ra, a1, 1138f
1131:             nop
1132:             bne          ra, s1, 1134f
                  sub          s1, s1, s1
1134:             ori          s6, s10, -1132
                  nop
                  srai         s10, t2, 21
1137:             ori          s3, tp, -1501
1138:             beq          s4, a2, 1140f
                  andi         s10, s10, -1272
1140:             and          ra, ra, s11
                  blt          s0, ra, 1149f
                  addi         sp, t0, 333
                  bne          s4, gp, 1159f
                  beq          t4, tp, 1157f
                  or           ra, s3, a6
                  srl          s4, zero, a5
                  bltu         s0, s9, 1148f
1148:             srli         sp, a2, 14
1149:             add          a0, s9, gp
                  beq          s5, s7, 1155f
                  lui          tp, 916261
                  addi         t2, t5, 1420
                  srl          a4, ra, t0
                  ori          a2, s8, 1620
1155:             blt          s4, s2, 1169f
                  sub          s10, t6, s1
1157:             nop
                  bge          a5, s11, 1174f
1159:             srl          t6, s0, s5
                  xori         a6, s6, -83
                  or           s10, s11, a2
                  auipc        t4, 87831
                  sub          a0, t5, tp
                  xor          t3, ra, a4
                  ori          ra, s8, -682
                  bge          s3, t0, 1168f
                  auipc        a1, 166958
1168:             bgeu         a4, a5, 1179f
1169:             xori         s10, s2, 1625
                  srl          a1, t1, s1
                  xori         s6, sp, -536
                  bge          gp, s9, 1176f
                  addi         s9, a0, 139
1174:             slti         zero, t6, 1910
                  lui          s2, 461895
1176:             xori         sp, s2, 717
                  beq          t3, t3, 1194f
                  bgeu         a0, gp, 1185f
1179:             add          s7, a5, a5
                  or           s3, s4, s1
                  ori          t0, t4, -948
                  andi         s6, zero, -693
                  sll          s10, s6, tp
                  nop
1185:             srai         a7, gp, 2
                  and          gp, t6, t5
                  lui          t1, 106532
                  sra          s9, t2, s1
                  sra          zero, s7, s7
                  bgeu         t1, s0, 1206f
                  sra          s8, a3, t5
                  sll          zero, s11, zero
                  beq          s10, t3, 1204f
1194:             bgeu         s10, t5, 1201f
                  nop
                  bne          a7, s4, 1212f
                  auipc        ra, 163562
                  sra          s1, s6, a5
                  slt          t3, a5, s5
                  addi         a5, s8, -1389
1201:             bltu         s3, a5, 1205f
                  addi         t6, s7, 1737
                  xori         s7, s8, 464
1204:             slti         a6, s1, -1185
1205:             nop
1206:             beq          a0, a7, 1211f
                  ori          s9, s6, 240
                  addi         a5, t3, 231
                  srai         t1, t0, 26
                  srai         zero, a2, 3
1211:             blt          s4, s5, 1219f
1212:             slti         t4, s8, 1148
                  bne          t0, a4, 1229f
                  srli         s3, s6, 4
                  srai         a7, s11, 28
                  ori          t2, t1, -1439
                  srli         s8, tp, 10
                  bge          a7, a1, 1236f
1219:             srli         s7, tp, 2
                  add          s2, tp, ra
                  srai         a2, s3, 10
                  srli         a4, a2, 27
                  bltu         s0, s4, 1235f
                  sltu         t4, t1, tp
                  sll          sp, t1, s11
                  sltiu        s9, sp, 1897
                  or           s6, t2, a4
                  xor          s2, t0, t6
1229:             and          s8, t0, t4
                  add          s8, s11, s11
                  bgeu         t1, t6, 1237f
                  add          s3, s4, a4
                  beq          a5, t0, 1241f
                  lui          s3, 308430
1235:             ori          s3, a4, -423
1236:             addi         a7, t2, 1852
1237:             bge          a5, s1, 1251f
                  sub          t3, a0, s1
                  nop
                  slti         ra, s2, -2036
1241:             srai         a4, s11, 12
                  sltiu        t6, tp, 1693
                  slli         s0, s8, 28
                  bge          tp, ra, 1264f
                  sra          a5, a3, a3
                  slli         gp, s10, 28
                  slt          a6, s8, t3
                  sll          t4, s7, s0
                  srli         a6, s5, 7
                  auipc        s4, 878803
1251:             sll          s10, t6, s0
                  or           s8, s11, s7
                  slti         s8, s8, -1013
                  slt          gp, s6, t2
                  or           a4, s11, a0
                  add          tp, a0, a1
                  bltu         a2, s1, 1258f
1258:             slt          tp, t1, a7
                  nop
                  sltiu        s4, tp, 602
                  slti         s7, s11, 1587
                  ori          s3, t3, 1522
                  sll          s9, a4, s9
1264:             sltu         s3, s2, a2
                  xor          t4, s2, a1
                  bne          s7, s2, 1274f
                  sll          t4, tp, s11
                  addi         a7, t0, 903
                  beq          s9, a7, 1277f
                  slti         t3, t3, -1381
                  or           a2, zero, s0
                  srli         t1, s5, 7
                  bgeu         a5, gp, 1275f
1274:             ori          s8, s1, 2037
1275:             xori         sp, a0, 356
                  bge          s2, t4, 1285f
1277:             add          a2, s5, t1
                  lui          s2, 94753
                  nop
                  xor          ra, t5, s10
                  slti         s0, s10, -307
                  bge          a4, s7, 1283f
1283:             sltu         s3, t1, t2
                  andi         s6, s4, -1765
1285:             lui          s4, 931054
                  auipc        a3, 37110
                  lui          zero, 388957
                  nop
                  sra          a0, t4, a3
                  sltu         a0, t3, tp
                  bltu         s8, ra, 1293f
                  auipc        ra, 888577
1293:             nop
                  blt          t0, a5, 1305f
                  srai         zero, zero, 20
                  bltu         s0, ra, 1312f
                  ori          gp, s3, 1890
                  sub          t4, t3, s6
                  sub          a0, s3, s8
                  slti         a4, s9, -1912
                  beq          s5, s8, 1303f
                  auipc        s1, 1030783
1303:             auipc        a2, 220300
                  bne          a6, a6, 1311f
1305:             auipc        t4, 372489
                  sll          zero, t1, s3
                  and          a4, s3, s0
                  srl          s7, t6, gp
                  add          s4, t1, a7
                  sra          zero, s0, s7
1311:             and          gp, s1, a6
1312:             lui          a0, 536250
                  sub          tp, t4, a7
                  or           tp, tp, gp
                  or           tp, s1, a7
                  xor          a5, s3, a3
                  sltu         s9, t6, s4
                  xori         a6, a7, 1653
                  ori          a4, a3, 1621
                  sltiu        a2, s7, -1879
                  xori         s8, gp, 1351
                  lui          a2, 756108
                  beq          a6, s0, 1339f
sub_5_22:         jal          s6, 10f
0:                jal          t1, 1f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          ra, 17f
5:                jal          ra, 13f
6:                jal          s2, 18f
7:                jal          t1, 5b
8:                jal          ra, 7b
9:                jal          ra, 0b
10:               jal          ra, 16f
11:               jal          t1, 6b
12:               jal          t1, 14f
13:               jal          ra, 2b
14:               jal          ra, 11b
15:               jal          ra, 4b
16:               jal          ra, 15b
17:               jal          t0, 3b
18:               srl          gp, t0, t6
                  srli         gp, s11, 11
                  add          s3, a0, a7
                  andi         t4, s1, -720
                  beq          a3, a3, 1340f
                  andi         s3, s6, 2012
                  or           zero, s5, a7
                  xori         t6, t2, 733
                  sltu         t2, a3, a6
                  sra          t4, s10, sp
                  add          s10, sp, a5
                  sltiu        t3, s0, -312
                  slti         s8, a2, -1322
                  sll          a4, zero, t5
                  and          s8, a2, gp
                  bltu         t1, s3, 1351f
1339:             sra          s3, t2, s8
1340:             slt          a0, s6, a1
                  bge          s10, s8, 1353f
                  beq          t2, gp, 1359f
                  srli         a0, t6, 0
                  sub          tp, zero, s11
                  bne          t2, a3, 1361f
                  bne          s3, a3, 1350f
                  sll          s7, t3, t6
                  xori         gp, t0, 319
                  nop
1350:             srli         sp, s4, 28
1351:             xori         s9, a2, -814
                  ori          s3, s9, 896
1353:             beq          s0, s1, 1364f
                  beq          t2, zero, 1361f
                  slti         s7, t3, 1831
                  srai         a0, t0, 9
                  slli         s2, s0, 7
                  srai         s6, sp, 12
1359:             xor          t0, s3, s4
                  srai         sp, sp, 14
1361:             sltiu        a0, t6, -93
                  lui          s1, 139960
                  slt          a7, t5, tp
1364:             sll          s2, a0, s7
                  lui          gp, 833944
                  bltu         ra, t3, 1367f
1367:             addi         t1, s1, -1519
                  or           a1, a3, ra
                  sltiu        a0, a6, -1159
                  or           a2, t0, s0
                  xori         a1, s11, -342
                  sltu         a5, a4, a1
                  xori         t3, t3, 1541
                  bltu         s11, t0, 1378f
                  beq          t5, a6, 1378f
                  srl          a0, s4, a2
                  srli         t2, s10, 28
1378:             xor          t2, s11, a2
                  nop
                  andi         t3, a0, -1345
                  lw           s6, 4(s5)
                  addi         s8, s5, -1278
                  or           a1, s11, s7
                  addi         s5, s5, 24
                  slli         gp, t1, 20
                  or           zero, s5, t0
                  sll          s1, gp, a2
1983:             addi x24, x22, 0
1983:             jalr x24, x24, 0
sub_4:            blt          t1, s6, sub_4_stack_p
                  add          t4, s10, a3
sub_4_stack_p:    addi         s5, s5, -20
                  sw           s6, 4(s5)
                  xori         s7, t2, 518
                  ori          t6, t5, 245
                  xori         t3, s3, 350
                  or           t0, ra, t5
                  addi         t1, zero, 1523
                  or           s9, s9, s11
                  sltiu        t2, a7, -636
                  bne          s9, s4, 12f
                  sltu         a7, s4, s10
                  bge          a1, s3, 11f
                  sra          t1, zero, s7
                  slti         t1, a5, 1347
                  slt          a6, t5, s7
                  sltiu        s3, t4, -273
                  ori          s2, s3, 649
11:               bltu         a3, t0, 12f
12:               sra          s2, t3, a0
                  slt          s9, s3, sp
                  lw           s6, 4(s5)
                  or           t6, a3, s3
                  lui          t6, 14799
                  auipc        a7, 619390
                  sub          s4, a2, s4
                  addi         s5, s5, 20
                  ori          s3, tp, -1579
                  slti         zero, t6, -1388
                  nop
                  andi         a4, tp, -1322
32:               addi x23, x22, 0
32:               jalr x23, x23, 0
sub_3:            and          a2, s6, t1
                  srl          ra, sp, zero
                  sltu         a2, s6, s4
                  xor          s10, s6, s8
                  and          a5, s1, s2
                  bne          t3, a3, sub_3_stack_p
                  srai         a1, t4, 27
                  lui          a2, 648669
                  srl          gp, s10, sp
sub_3_stack_p:    addi         s5, s5, -24
                  sw           s6, 4(s5)
                  srai         s10, t3, 19
                  srai         a6, a0, 7
                  srl          s7, s0, a2
                  srli         gp, t1, 25
                  sub          t0, t3, t4
                  xori         ra, tp, 1413
                  sll          a4, s9, s10
                  slt          s4, a6, t4
                  ori          s10, a7, -1508
                  auipc        s0, 132950
                  auipc        s3, 297161
sub_3_j5:         jal          s6, sub_4 #jump sub_3 -> sub_4
                  xori         t4, tp, 1205
                  xor          gp, s11, a7
                  la           s7, sub_5
                  addi         s7, s7, -32
                  nop
                  xori         s4, s1, -605
                  sltu         a6, t4, gp
                  ori          t6, t0, 1906
                  beq          s10, a3, sub_3_j6 #branch to jump instr
                  xor          a2, s3, a2
                  andi         s2, s6, 2034
                  srl          a4, a3, s9
sub_3_j6:         jalr         s6, s7, 33 #jump sub_3 -> sub_5
                  bgeu         s8, t4, sub_3_j7 #branch to jump instr
                  addi         s7, t2, -624
                  sltiu        zero, a1, -1230
                  addi         s1, t5, 1637
                  lui          a6, 642949
                  slti         zero, t4, -486
sub_3_j7:         jal          s6, sub_5 #jump sub_3 -> sub_5
                  bltu         t2, tp, 12f
                  srli         a3, tp, 25
                  and          t3, a4, s2
                  add          a5, s6, t5
                  slti         s9, t4, -1515
                  addi         s6, a7, -1340
                  sltiu        t0, sp, -1201
                  sub          t6, a3, gp
                  or           ra, t4, s9
                  sltiu        s4, t4, 647
                  ori          t3, a0, 442
                  sll          s1, a2, a5
12:               xor          t4, a0, s2
                  sltu         a0, s2, ra
                  andi         s0, a6, 1576
                  lui          t2, 541099
                  ori          s8, s2, -1833
                  add          t1, t1, gp
                  xor          s3, s9, s4
                  sub          s10, s10, t0
                  nop
                  lw           s6, 4(s5)
                  srli         t6, t1, 12
                  addi         s5, s5, 24
                  sra          t0, sp, t4
68:               addi x4, x22, 0
68:               jalr x4, x4, 0
sub_2:            slt          ra, a4, s11
                  bltu         a4, s6, sub_2_stack_p
                  andi         a6, s4, 1563
sub_2_stack_p:    addi         s5, s5, -28
                  xor          s7, t1, s9
                  srl          t4, s0, gp
                  sw           s6, 4(s5)
                  xor          s1, s5, s2
                  andi         t0, s4, 760
                  slti         s0, a6, 728
sub_2_0:          jal          s6, 18f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          s2, 19f
3:                jal          t1, 22f
4:                jal          ra, 6f
5:                jal          ra, 4b
6:                jal          tp, 14f
7:                jal          gp, 12f
8:                jal          ra, 5b
9:                jal          ra, 16f
10:               jal          ra, 3b
11:               jal          t2, 2b
12:               jal          ra, 21f
13:               jal          t1, 17f
14:               jal          s2, 1b
15:               jal          t1, 8b
16:               jal          ra, 10b
17:               jal          ra, 20f
18:               jal          ra, 0b
19:               jal          ra, 13b
20:               jal          t1, 15b
21:               jal          ra, 11b
22:               slti         s2, a7, 821
sub_2_2:          jal          s6, 14f
0:                jal          ra, 11f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          ra, 25f
4:                jal          ra, 5f
5:                jal          t1, 13f
6:                jal          t1, 15f
7:                jal          t1, 24f
8:                jal          t1, 18f
9:                jal          t1, 19f
10:               jal          ra, 23f
11:               jal          ra, 20f
12:               jal          gp, 0b
13:               jal          ra, 22f
14:               jal          gp, 6b
15:               jal          gp, 8b
16:               jal          ra, 1b
17:               jal          ra, 2b
18:               jal          a3, 4b
19:               jal          ra, 12b
20:               jal          t3, 7b
21:               jal          ra, 26f
22:               jal          tp, 10b
23:               jal          ra, 16b
24:               jal          ra, 21b
25:               jal          ra, 17b
26:               and          zero, tp, a1
sub_2_11:         jal          s6, 8f
0:                jal          t1, 18f
1:                jal          t1, 5f
2:                jal          t1, 26f
3:                jal          t0, 11f
4:                jal          s0, 12f
5:                jal          t1, 20f
6:                jal          ra, 10f
7:                jal          t1, 14f
8:                jal          ra, 2b
9:                jal          ra, 19f
10:               jal          ra, 0b
11:               jal          t1, 9b
12:               jal          s6, 16f
13:               jal          t1, 22f
14:               jal          ra, 25f
15:               jal          ra, 23f
16:               jal          ra, 21f
17:               jal          ra, 27f
18:               jal          a2, 24f
19:               jal          ra, 28f
20:               jal          a3, 7b
21:               jal          ra, 17b
22:               jal          tp, 6b
23:               jal          t1, 13b
24:               jal          ra, 4b
25:               jal          t1, 15b
26:               jal          ra, 1b
27:               jal          ra, 3b
28:               andi         zero, s10, 1544
sub_2_14:         jal          s6, 4f
0:                jal          ra, 12f
1:                jal          a3, 14f
2:                jal          t1, 0b
3:                jal          t0, 2b
4:                jal          t1, 5f
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          s10, 1b
8:                jal          t1, 13f
9:                jal          ra, 8b
10:               jal          t1, 9b
11:               jal          ra, 6b
12:               jal          t4, 10b
13:               jal          ra, 11b
14:               sltiu        t3, a1, 862
sub_2_1:          jal          s6, 2f
0:                jal          tp, 18f
1:                jal          ra, 13f
2:                jal          t1, 10f
3:                jal          ra, 19f
4:                jal          s2, 21f
5:                jal          t1, 4b
6:                jal          tp, 23f
7:                jal          ra, 1b
8:                jal          t1, 22f
9:                jal          t1, 17f
10:               jal          ra, 9b
11:               jal          t0, 12f
12:               jal          ra, 15f
13:               jal          ra, 0b
14:               jal          tp, 6b
15:               jal          ra, 5b
16:               jal          s9, 20f
17:               jal          ra, 16b
18:               jal          t1, 8b
19:               jal          ra, 11b
20:               jal          ra, 3b
21:               jal          ra, 7b
22:               jal          ra, 14b
23:               sub          a2, a1, s0
sub_2_7:          jal          s6, 14f
0:                jal          ra, 20f
1:                jal          gp, 25f
2:                jal          gp, 0b
3:                jal          ra, 7f
4:                jal          t1, 26f
5:                jal          ra, 28f
6:                jal          tp, 10f
7:                jal          t1, 2b
8:                jal          ra, 22f
9:                jal          t6, 27f
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          t2, 1b
13:               jal          sp, 17f
14:               jal          ra, 12b
15:               jal          a7, 16f
16:               jal          t1, 8b
17:               jal          t1, 21f
18:               jal          ra, 15b
19:               jal          t1, 11b
20:               jal          a2, 19b
21:               jal          ra, 23f
22:               jal          t1, 4b
23:               jal          ra, 6b
24:               jal          ra, 13b
25:               jal          t1, 18b
26:               jal          t0, 9b
27:               jal          ra, 24b
28:               sub          ra, sp, s1
sub_2_3:          jal          s6, 0f
0:                jal          a6, 2f
1:                jal          gp, 10f
2:                jal          ra, 11f
3:                jal          ra, 8f
4:                jal          ra, 1b
5:                jal          ra, 9f
6:                jal          s1, 3b
7:                jal          s3, 5b
8:                jal          ra, 12f
9:                jal          ra, 4b
10:               jal          s9, 6b
11:               jal          ra, 7b
12:               andi         t1, a5, -107
sub_2_5:          jal          s6, 8f
0:                jal          ra, 17f
1:                jal          t1, 12f
2:                jal          t1, 3f
3:                jal          a5, 4f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          t1, 0b
7:                jal          ra, 9f
8:                jal          a3, 16f
9:                jal          ra, 13f
10:               jal          t1, 14f
11:               jal          ra, 2b
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          ra, 15f
15:               jal          ra, 5b
16:               jal          s7, 11b
17:               sltiu        tp, s2, 1723
sub_2_10:         jal          s6, 5f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          ra, 11f
3:                jal          t1, 10f
4:                jal          ra, 19f
5:                jal          sp, 12f
6:                jal          ra, 4b
7:                jal          t1, 20f
8:                jal          ra, 15f
9:                jal          ra, 7b
10:               jal          s4, 8b
11:               jal          t1, 0b
12:               jal          a4, 13f
13:               jal          gp, 17f
14:               jal          t0, 21f
15:               jal          ra, 14b
16:               jal          ra, 6b
17:               jal          t1, 18f
18:               jal          ra, 16b
19:               jal          tp, 9b
20:               jal          ra, 1b
21:               srl          s0, t6, t1
sub_2_13:         jal          s6, 10f
0:                jal          t3, 15f
1:                jal          ra, 4f
2:                jal          s6, 12f
3:                jal          t0, 1b
4:                jal          ra, 11f
5:                jal          t1, 21f
6:                jal          t1, 3b
7:                jal          a0, 2b
8:                jal          t1, 7b
9:                jal          ra, 5b
10:               jal          ra, 24f
11:               jal          ra, 20f
12:               jal          t1, 6b
13:               jal          ra, 23f
14:               jal          t1, 25f
15:               jal          s6, 17f
16:               jal          t1, 0b
17:               jal          ra, 19f
18:               jal          s2, 13b
19:               jal          ra, 22f
20:               jal          s4, 14b
21:               jal          ra, 8b
22:               jal          t0, 9b
23:               jal          ra, 16b
24:               jal          a4, 18b
25:               nop
sub_2_12:         jal          s6, 8f
0:                jal          t1, 5f
1:                jal          a2, 2f
2:                jal          ra, 3f
3:                jal          s8, 10f
4:                jal          t6, 0b
5:                jal          t1, 6f
6:                jal          ra, 9f
7:                jal          ra, 4b
8:                jal          t1, 7b
9:                jal          s2, 1b
10:               lui          s6, 48925
sub_2_9:          jal          s6, 7f
0:                jal          ra, 12f
1:                jal          ra, 6f
2:                jal          t1, 8f
3:                jal          ra, 1b
4:                jal          ra, 13f
5:                jal          ra, 14f
6:                jal          ra, 11f
7:                jal          ra, 3b
8:                jal          t1, 15f
9:                jal          s2, 5b
10:               jal          ra, 0b
11:               jal          ra, 9b
12:               jal          a0, 4b
13:               jal          ra, 2b
14:               jal          sp, 10b
15:               xori         tp, s5, 1441
sub_2_15:         jal          s6, 12f
0:                jal          t1, 15f
1:                jal          ra, 21f
2:                jal          t1, 19f
3:                jal          ra, 24f
4:                jal          ra, 7f
5:                jal          t1, 3b
6:                jal          t1, 23f
7:                jal          ra, 6b
8:                jal          t1, 14f
9:                jal          a1, 1b
10:               jal          t1, 18f
11:               jal          ra, 16f
12:               jal          t1, 10b
13:               jal          t0, 9b
14:               jal          sp, 0b
15:               jal          ra, 5b
16:               jal          ra, 4b
17:               jal          t6, 11b
18:               jal          t1, 17b
19:               jal          gp, 13b
20:               jal          ra, 22f
21:               jal          ra, 8b
22:               jal          a2, 2b
23:               jal          t2, 20b
24:               sub          s3, a7, s8
sub_2_6:          jal          s6, 2f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          ra, 6f
3:                jal          a2, 1b
4:                jal          ra, 7f
5:                jal          a4, 4b
6:                jal          t1, 5b
7:                jal          ra, 3b
8:                jal          ra, 10f
9:                jal          gp, 0b
10:               slli         s10, ra, 8
sub_2_19:         jal          s6, 8f
0:                jal          t1, 27f
1:                jal          ra, 3f
2:                jal          ra, 19f
3:                jal          t0, 10f
4:                jal          t1, 21f
5:                jal          a6, 25f
6:                jal          ra, 5b
7:                jal          a1, 0b
8:                jal          ra, 4b
9:                jal          ra, 26f
10:               jal          a6, 2b
11:               jal          ra, 12f
12:               jal          ra, 6b
13:               jal          sp, 20f
14:               jal          sp, 24f
15:               jal          ra, 28f
16:               jal          gp, 14b
17:               jal          ra, 18f
18:               jal          ra, 11b
19:               jal          ra, 23f
20:               jal          sp, 17b
21:               jal          ra, 16b
22:               jal          ra, 13b
23:               jal          ra, 7b
24:               jal          ra, 9b
25:               jal          s2, 15b
26:               jal          tp, 1b
27:               jal          ra, 22b
28:               and          a1, t0, t0
sub_2_18:         jal          s6, 13f
0:                jal          s0, 8f
1:                jal          ra, 12f
2:                jal          ra, 14f
3:                jal          s1, 2b
4:                jal          t1, 19f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          ra, 17f
10:               jal          ra, 18f
11:               jal          ra, 15f
12:               jal          ra, 11b
13:               jal          s10, 16f
14:               jal          t1, 7b
15:               jal          gp, 6b
16:               jal          t1, 10b
17:               jal          s7, 1b
18:               jal          ra, 3b
19:               xor          tp, a7, a5
                  bne          s8, ra, 10f
                  bge          s3, a2, 9f
                  sub          s7, t6, a4
                  bge          t2, a1, 23f
                  add          s1, s5, t1
                  xori         t2, a7, -320
                  slli         t4, s9, 9
                  lui          ra, 914438
                  ori          t0, t3, 1408
9:                xori         a7, s8, -496
10:               or           t2, a1, a0
                  and          t0, s2, a4
                  srl          s3, a0, s1
                  bltu         a5, s10, 16f
                  xori         s7, s5, 1314
                  auipc        t2, 230401
16:               or           t4, s2, a2
                  add          tp, s10, t2
                  sll          s1, a1, t6
                  xor          t0, s0, s8
                  slt          ra, s6, a2
                  addi         s3, a2, 1857
                  beq          t5, s5, 41f
23:               ori          zero, t6, 196
                  srli         gp, t6, 21
                  xori         s3, s1, 413
                  auipc        s6, 19353
                  or           zero, t6, a0
                  xor          s2, a0, t1
                  xor          s0, s2, s5
                  sltu         s2, s11, s11
                  or           t1, s8, tp
                  sll          a2, t5, t0
                  xori         a1, t0, -545
                  and          s8, zero, sp
                  sra          s1, a4, t0
                  add          a4, t1, s2
                  beq          s2, a0, 38f
38:               sll          s9, s7, s8
                  bne          gp, a4, 53f
                  bne          s7, t6, 46f
41:               bgeu         gp, t1, 59f
                  srli         t1, s4, 16
                  bge          t1, s11, 49f
                  nop
                  auipc        a3, 848784
46:               or           t3, t0, a1
                  sub          a5, s3, a0
                  bltu         zero, s11, 63f
49:               andi         sp, t1, -684
                  andi         s2, s3, -47
                  and          a1, s6, s3
                  and          s8, s0, tp
53:               srl          a1, a6, s0
                  sltu         t1, s4, s2
                  sll          tp, t1, tp
                  sub          gp, s11, s7
                  add          s0, s6, t0
                  bne          s9, a0, 70f
59:               beq          a7, s1, 64f
                  or           gp, t3, a3
                  bge          s8, a5, 80f
                  or           a4, gp, t1
63:               addi         ra, t2, -1667
64:               sltu         t1, a5, s0
                  srai         sp, s1, 5
                  bge          a0, t1, 73f
                  slli         t4, zero, 20
                  beq          t4, t4, 83f
                  srai         a1, s9, 24
70:               or           s7, a0, t0
                  sll          zero, a7, a1
                  or           a0, tp, a1
73:               bltu         t3, gp, 84f
                  sub          s6, s6, zero
                  addi         t6, a2, 815
                  slt          s7, s5, t6
                  sra          a5, ra, a1
                  bltu         s9, s3, 84f
                  nop
80:               srl          a2, a0, s1
                  add          t3, s11, s8
                  bge          s9, s9, 98f
83:               slt          t4, a4, s2
84:               srai         t1, s10, 3
                  ori          gp, s5, 168
                  sra          gp, gp, s11
                  xori         a4, s9, 1428
                  slti         s6, s0, -470
                  bltu         s0, a6, 91f
                  sltu         t1, t0, s0
91:               andi         tp, s2, 209
                  addi         gp, a2, 553
                  bne          s5, s4, 113f
                  bgeu         a4, t0, 100f
                  sra          t3, s2, s10
                  sra          t4, t5, s0
                  or           a3, sp, s4
98:               sltiu        a3, a4, 1851
                  bgeu         a0, s1, 117f
100:              sltiu        zero, a4, -1012
                  beq          t4, a0, 111f
                  sltiu        t2, a3, -1203
                  sltu         sp, s3, t2
                  sub          s3, s2, s1
                  and          s3, a6, a4
                  add          s8, a0, t3
                  sll          s10, tp, s6
                  addi         sp, s9, 446
                  beq          s0, a5, 115f
                  blt          ra, a3, 120f
111:              slli         s9, t5, 14
                  srli         s10, t5, 13
113:              slt          s9, s2, t4
                  add          s8, t4, a4
115:              bge          t0, t4, 121f
                  andi         a2, gp, 293
117:              bltu         a0, a1, 123f
                  slti         s3, t2, -1874
                  slli         tp, tp, 12
120:              nop
121:              sll          a7, s5, t3
                  ori          s1, a2, -17
123:              srli         gp, s0, 18
                  sra          s0, s10, t0
                  beq          a1, s3, 138f
                  addi         a2, s9, -23
                  srl          a4, s2, t0
                  sltu         s2, tp, a1
                  bge          zero, t6, 139f
                  andi         s0, a2, -1986
                  lui          tp, 716594
                  slti         s0, s11, -1832
                  ori          a5, s3, -404
                  srli         s0, t4, 16
                  sra          s7, gp, s1
                  blt          t5, s4, 142f
                  srl          a1, s8, t6
138:              addi         t0, a7, -1522
139:              slti         zero, a5, 775
                  slli         s10, s4, 24
                  slli         gp, t5, 17
142:              slt          s3, sp, s3
                  slli         a3, s2, 16
                  addi         t1, a5, -528
                  sll          a0, t3, t0
                  slli         s10, s3, 25
                  or           t0, s0, s0
                  sra          t2, s11, t5
                  auipc        t0, 433618
                  or           s7, sp, t6
                  srli         t3, tp, 31
                  srl          a2, t1, a3
                  andi         sp, t0, -622
                  sll          t0, a3, t0
                  and          t2, t3, zero
                  addi         s8, a2, 471
                  slti         t6, s3, 1398
                  bgeu         s5, s9, 164f
                  slt          ra, s5, s11
                  addi         zero, a6, 22
                  bgeu         s1, a3, 176f
                  nop
                  slti         a5, t5, -1957
164:              bgeu         s5, a1, 183f
                  or           a3, s3, a2
                  bne          s3, sp, 177f
                  srl          s7, s9, sp
                  bgeu         s11, s2, 184f
                  auipc        sp, 282773
                  sll          tp, s7, t4
                  ori          t1, s5, -18
                  auipc        a0, 193895
                  sll          a3, s11, s7
                  sltu         a3, t4, s11
                  andi         t1, s4, 69
176:              slli         t4, s8, 25
177:              bgeu         a2, s6, 183f
                  nop
                  addi         a6, s7, -1542
                  sltiu        s3, t6, -1806
                  or           sp, s7, s10
                  srai         s10, s5, 11
183:              sltu         t2, zero, s11
184:              srli         sp, s6, 3
                  beq          gp, t3, 186f
186:              bge          t0, a4, 196f
                  lui          a3, 774506
                  slt          gp, s10, t0
                  beq          t0, s9, 199f
                  srai         s8, s1, 22
                  lui          s3, 42232
                  srli         s0, t5, 22
                  xor          a4, s9, a2
                  bge          a6, t1, 208f
                  srl          s8, a3, a3
196:              sll          t6, s0, t5
                  auipc        a6, 69377
                  slti         t2, t1, -1585
199:              lui          sp, 650288
                  lui          a4, 502416
                  sub          sp, sp, s11
                  sltu         a4, s3, ra
                  sltiu        sp, s9, -1977
                  xor          a5, zero, s10
                  xori         t0, a3, 297
                  lui          t1, 566531
                  auipc        gp, 62
208:              xori         s8, a5, -714
                  slti         s1, a3, 1139
                  srai         s0, s1, 1
                  ori          s2, a2, 581
                  add          s10, s8, s11
                  slli         s9, s11, 11
                  addi         s3, s10, 132
                  sltiu        zero, tp, 1898
                  sltu         a6, t1, t0
                  beq          a7, s1, 236f
                  xori         zero, zero, 1197
                  srl          sp, s2, s0
                  srai         s4, a5, 24
                  xori         zero, a6, 47
                  bge          sp, tp, 240f
                  sub          a4, s11, s2
                  sra          a7, s1, a7
                  srai         s2, s11, 20
                  sub          s8, s3, t2
                  slti         t1, a6, 399
                  lui          a4, 538720
                  lui          s9, 293992
                  xori         gp, s7, 1415
                  lui          a0, 39327
                  andi         gp, sp, -1697
                  beq          a6, gp, 243f
                  blt          zero, t5, 240f
                  nop
236:              sra          s2, s8, s8
                  srli         a2, s7, 12
                  and          a4, s4, a3
                  srl          t0, a6, a6
240:              bltu         t0, a7, 246f
                  sltu         s6, t5, s0
                  ori          t0, s10, -1454
243:              bgeu         t3, s2, 251f
                  srl          a2, zero, s6
                  beq          s6, t6, 265f
246:              sub          a5, a1, t4
                  srli         s3, a1, 27
                  lui          a7, 1018457
                  slti         t2, a0, 751
                  addi         a5, sp, 1137
251:              xori         a7, a1, -1205
                  auipc        s10, 959924
                  slli         a3, a7, 7
                  and          s9, t5, gp
                  lui          a4, 332537
                  xor          t1, s0, s9
                  auipc        s7, 667895
                  sltiu        t2, s3, 1871
                  blt          t4, t2, 266f
                  andi         t1, s1, 160
                  slt          s8, s8, s9
                  lui          a0, 1018062
                  sltu         s9, s5, t5
                  bgeu         s7, a7, 276f
265:              sltiu        s9, s0, -1030
266:              slt          s6, s1, a3
                  slt          zero, t6, a2
                  add          s7, t5, s4
                  andi         a4, tp, 61
                  and          a3, s3, t6
                  srai         t2, a1, 13
                  bgeu         s2, t3, 278f
                  slti         a3, s5, -2020
                  ori          t3, s5, 1557
                  ori          a5, a3, -195
276:              or           s3, s9, a4
                  sra          t2, s5, ra
278:              beq          s0, ra, 284f
                  xor          s8, s2, a0
                  slti         s7, s5, 1120
                  bge          t2, s4, 296f
                  xori         a2, a1, 827
                  blt          t0, t4, 296f
284:              srl          t0, s3, a3
                  slti         tp, a2, -1909
                  sltiu        a0, a6, 577
                  sltiu        a0, zero, -941
                  xor          a7, t1, a0
                  bgeu         s11, s3, 299f
                  sltu         s6, t6, a4
                  and          s6, sp, a2
                  srl          a6, ra, t4
                  sll          t2, a3, s10
                  and          s0, ra, s7
                  sll          a7, s3, t2
296:              slli         a2, t4, 15
                  sltiu        s10, gp, 1666
                  or           a6, sp, a2
299:              auipc        s7, 266775
                  bne          a0, sp, 318f
                  sub          s9, a3, t0
                  add          a4, s2, s4
                  bge          a4, a0, 306f
                  sltu         a1, s11, s0
                  xor          s7, a1, s8
306:              sltiu        a1, s6, 149
                  sub          a7, t5, s2
                  or           s2, zero, zero
                  auipc        zero, 748644
                  addi         ra, s5, 1837
                  sltiu        t4, s0, -1988
                  beq          gp, t0, 314f
                  andi         s9, a5, 1898
314:              bltu         sp, a4, 319f
                  slti         a3, gp, 520
                  bne          s3, s0, 336f
                  slti         ra, t5, 1902
318:              bgeu         s6, zero, 324f
319:              nop
                  add          tp, s4, s3
                  xor          t0, t4, t4
                  add          t1, a6, s7
                  and          tp, gp, a3
324:              slli         s3, a6, 7
                  srl          s0, t6, s7
                  sltu         t2, zero, t4
                  auipc        s3, 269428
                  bge          s4, t1, 335f
                  bgeu         a2, a1, 335f
                  addi         s4, a2, -1823
                  srl          s2, s0, a0
                  slt          a5, t5, t4
                  slt          t2, s1, s3
                  andi         s9, s4, 1958
335:              slli         s10, a5, 22
336:              bltu         a1, s11, 337f
337:              sltu         gp, s7, s3
                  addi         s6, zero, 159
                  ori          a4, s11, 1812
                  sltu         sp, s4, s7
                  sub          a5, a1, s3
                  bgeu         a3, t3, 348f
                  xori         s1, a1, 786
                  blt          s0, s7, 364f
                  sltu         t3, a1, ra
                  srai         s4, a0, 30
                  beq          t3, s6, 357f
348:              slli         gp, a1, 14
                  lui          a5, 563857
                  bltu         a1, zero, 353f
                  xor          s2, a7, s4
                  auipc        a3, 498685
353:              sltiu        ra, s3, 325
                  srli         a0, s8, 3
                  sub          tp, sp, t3
                  slli         t2, s10, 16
357:              or           a5, gp, t3
                  andi         t4, s0, -1294
                  bgeu         a0, t3, 369f
                  slti         t4, a5, 2016
                  srli         t0, t6, 31
                  sub          s7, s6, s1
                  nop
364:              and          a0, tp, s3
                  add          s9, a4, t6
                  blt          t1, s3, 384f
                  sltiu        s10, s4, -1705
                  beq          tp, tp, 378f
369:              srli         s4, s1, 3
                  bltu         s10, s3, 376f
                  and          a2, a2, a6
                  bgeu         s2, a5, 386f
                  lui          tp, 212807
                  xori         s4, t5, -2017
                  lui          s4, 800377
376:              srl          a7, ra, s8
                  srli         s9, a5, 5
378:              and          a1, zero, t4
                  bge          s11, s4, 381f
                  bne          sp, s0, 390f
381:              bltu         a6, t5, 387f
                  srai         s3, t1, 1
                  slli         a3, s3, 27
384:              and          s8, a2, s0
                  xor          zero, s8, t2
386:              addi         s0, zero, -641
387:              slt          s9, tp, t4
                  andi         t2, a3, -1898
                  slti         tp, s2, -522
390:              srl          t2, t2, t2
                  sub          s6, s5, s3
                  blt          t1, s6, 407f
                  or           s4, gp, s0
                  slli         a6, a6, 5
                  nop
                  addi         t2, s1, -568
                  beq          tp, a5, 403f
                  or           sp, s4, zero
                  slt          tp, t3, zero
                  bltu         t3, t2, 406f
                  srl          s7, tp, s1
                  bltu         tp, s3, 413f
403:              slti         a2, s5, -204
                  bltu         s8, s6, 416f
                  bltu         a6, s8, 420f
406:              xor          t2, t2, s7
407:              srai         gp, s7, 31
                  sra          s10, a0, a0
                  blt          a3, a4, 428f
                  srl          s1, s8, s7
                  bgeu         zero, s5, 427f
                  sll          a3, a4, s1
413:              bgeu         s7, t3, 418f
                  slt          gp, s9, tp
                  srai         a0, t4, 26
416:              slli         s2, s9, 11
                  bne          t0, s9, 435f
418:              slt          t1, s4, s0
                  auipc        ra, 425227
420:              add          t1, s0, t4
                  srai         t3, s3, 26
                  auipc        s2, 841814
                  sll          s8, a2, s4
                  or           a6, a1, s5
                  and          ra, s0, a0
                  sra          a6, t5, s0
427:              beq          sp, a2, 440f
428:              bge          s6, s10, 447f
                  sltu         t1, t6, s1
                  bne          t1, s8, 450f
                  blt          t1, gp, 439f
                  bne          t2, s3, 438f
                  add          t4, sp, t1
                  slli         a6, t0, 19
435:              and          t3, t6, a0
                  srli         zero, t5, 31
                  xori         s1, s1, 795
438:              slli         zero, gp, 11
439:              and          s7, a6, t1
440:              bgeu         ra, s7, 453f
                  ori          t1, gp, 1049
                  sltu         s9, a1, tp
                  bltu         s2, ra, 449f
                  slt          t6, tp, s4
                  sltu         t4, s6, t1
                  slli         t6, t0, 9
447:              srai         gp, a4, 17
                  srli         t2, t1, 4
449:              sra          s4, sp, s10
450:              and          gp, a6, sp
                  bge          a3, t3, 461f
                  slt          s9, s1, a7
453:              nop
                  sltiu        t0, a4, 1960
sub_2_4:          jal          s6, 14f
0:                jal          s4, 2f
1:                jal          t1, 3f
2:                jal          ra, 8f
3:                jal          ra, 12f
4:                jal          ra, 0b
5:                jal          a6, 9f
6:                jal          t1, 19f
7:                jal          ra, 15f
8:                jal          s3, 13f
9:                jal          ra, 18f
10:               jal          ra, 16f
11:               jal          a0, 6b
12:               jal          ra, 5b
13:               jal          t1, 21f
14:               jal          ra, 1b
15:               jal          t1, 20f
16:               jal          s2, 17f
17:               jal          ra, 11b
18:               jal          ra, 10b
19:               jal          t1, 7b
20:               jal          ra, 4b
21:               and          a3, t1, s9
                  bne          t1, s9, 465f
                  srli         s0, a7, 13
                  nop
                  srl          t2, tp, s1
                  srl          s2, a3, sp
                  nop
461:              bne          s1, ra, 469f
                  bgeu         s2, t1, 472f
                  ori          a4, s0, -1969
                  ori          ra, a7, 1723
465:              srl          t4, s2, a5
                  blt          a1, a3, 476f
                  bge          a4, s11, 469f
                  sra          a7, s10, s10
469:              srl          t6, s4, s10
                  sltiu        s9, a3, 1520
                  bltu         a3, s6, 477f
472:              bgeu         a5, a6, 490f
                  sll          s9, t0, a2
                  or           t6, ra, a6
                  slli         t2, zero, 25
476:              slt          s1, s3, s6
477:              srli         s2, t4, 11
                  blt          t2, s9, 484f
sub_2_17:         jal          s6, 6f
0:                jal          a2, 20f
1:                jal          ra, 18f
2:                jal          ra, 10f
3:                jal          t1, 11f
4:                jal          s2, 0b
5:                jal          ra, 21f
6:                jal          a6, 13f
7:                jal          ra, 1b
8:                jal          t1, 16f
9:                jal          t1, 8b
10:               jal          ra, 17f
11:               jal          t1, 5b
12:               jal          ra, 15f
13:               jal          ra, 19f
14:               jal          ra, 9b
15:               jal          ra, 7b
16:               jal          ra, 12b
17:               jal          a6, 14b
18:               jal          ra, 4b
19:               jal          ra, 2b
20:               jal          ra, 3b
21:               auipc        a3, 823794
                  bltu         s2, a7, 494f
                  sra          gp, s7, t0
                  and          s0, sp, t4
                  xori         t2, t2, -1785
                  slt          a1, s0, t1
484:              bltu         tp, s11, 498f
                  bltu         a0, s1, 505f
                  ori          t3, s10, 1823
                  srli         s6, zero, 24
                  slli         s6, a5, 28
                  slli         a5, a5, 5
490:              xor          t6, s9, t5
                  srai         sp, a5, 16
                  add          a1, a7, s7
sub_2_16:         jal          s6, 12f
0:                jal          t1, 2f
1:                jal          ra, 16f
2:                jal          ra, 7f
3:                jal          t1, 5f
4:                jal          s7, 15f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          gp, 4b
8:                jal          t1, 3b
9:                jal          t1, 17f
10:               jal          ra, 11f
11:               jal          ra, 8b
12:               jal          ra, 10b
13:               jal          ra, 14f
14:               jal          t1, 6b
15:               jal          gp, 9b
16:               jal          ra, 13b
17:               sltu         gp, t6, ra
                  beq          t4, t1, 512f
494:              auipc        s6, 342214
                  ori          s7, t1, -324
                  lui          zero, 135920
                  sub          a4, s11, sp
498:              slli         a5, s9, 2
                  bltu         s4, s8, 514f
                  sltu         t6, s1, s6
                  srai         s2, s6, 4
                  slt          t1, s7, a4
                  blt          t5, t1, 504f
504:              and          t3, s5, t0
505:              sltiu        t0, t6, -1298
                  slli         zero, t5, 31
                  bne          s11, sp, 527f
                  sltu         s0, s10, s7
                  sltu         s2, s9, s5
                  slt          sp, a2, s10
                  auipc        a0, 288354
512:              addi         s10, ra, 772
                  sltiu        a0, s6, -1815
514:              sll          gp, t1, s11
                  xori         gp, a7, -1476
                  sra          s8, gp, s8
                  andi         t6, a2, -466
                  slt          s7, s11, t6
                  bne          s4, ra, 530f
                  sll          t4, s3, tp
                  sra          t3, s1, s4
                  bgeu         a2, sp, 529f
                  blt          zero, s7, 529f
                  srl          sp, a6, gp
                  sltiu        s6, s10, 851
                  sub          t3, t2, tp
527:              add          tp, s2, a5
                  sll          t1, s9, s4
529:              sub          a3, a5, t5
530:              add          a7, s4, gp
                  sll          ra, t0, sp
                  bne          s9, t4, 537f
                  sub          a1, s9, a4
                  lui          sp, 918407
                  auipc        a3, 227492
                  bgeu         s4, t3, 539f
537:              add          s1, s10, s11
                  xori         gp, sp, 1922
539:              srai         t6, s10, 9
                  srl          a0, s1, s2
                  ori          a6, zero, -969
                  sra          a2, gp, t3
                  lui          a6, 315238
                  sra          a3, a3, s1
                  sub          t0, t3, s4
                  beq          s11, t3, 564f
                  xor          sp, t6, s3
                  bne          tp, s10, 554f
                  sltu         s10, a6, t1
                  bgeu         a6, t0, 566f
                  sll          s4, t4, a1
                  sltu         a5, t5, s7
                  srai         sp, t3, 24
554:              slli         a0, a0, 4
                  and          a3, t4, s8
                  xor          t1, t2, s2
                  lui          a2, 529657
                  srli         t0, a0, 8
                  sra          a7, sp, s5
                  sltiu        gp, a3, -576
                  sltiu        a0, s1, -722
                  or           zero, s10, a3
                  srli         ra, s10, 13
564:              sll          s0, s5, t1
                  sll          a1, a7, a4
566:              and          a0, t1, s4
                  bltu         t1, a7, 579f
                  slli         s3, s5, 2
                  bgeu         zero, t2, 575f
                  addi         a5, zero, -790
                  sltu         sp, a5, ra
                  sra          t1, s5, ra
                  sub          t4, gp, gp
                  sra          t0, a2, s10
575:              sll          s8, a7, a2
                  andi         t1, s7, 1955
                  bgeu         a1, s6, 596f
                  lui          s9, 800980
579:              sub          a1, s0, t4
                  blt          a1, a1, 586f
                  bge          t5, gp, 587f
                  bgeu         a4, s6, 590f
                  bne          sp, zero, 603f
                  or           ra, a0, ra
                  sltiu        s9, s11, -40
586:              bge          s2, s10, 606f
587:              and          s2, t6, a6
                  lui          t2, 229485
                  srli         t0, sp, 11
590:              bltu         a3, t2, 600f
                  addi         a3, a2, 654
                  bgeu         s0, zero, 595f
                  bltu         s5, t2, 612f
                  beq          a0, s6, 612f
595:              addi         ra, s0, -294
596:              lui          t0, 515345
                  sltiu        a6, sp, 1590
                  andi         s7, t2, -561
                  slt          a3, a2, s6
600:              sltiu        a7, a0, -1179
                  bgeu         s3, s1, 607f
                  sub          a4, t2, s7
603:              bgeu         s2, t4, 609f
                  addi         s7, s9, -826
                  lui          zero, 56495
606:              or           t3, a0, s4
607:              add          s10, t5, s10
                  andi         t4, s1, -852
609:              lui          s9, 525885
                  bgeu         s7, s1, 620f
                  beq          s3, s4, 623f
612:              ori          zero, s0, 1724
                  sltu         t0, a6, s6
                  sll          s2, t1, t3
                  xor          a5, a0, t5
                  sll          s9, gp, a4
                  sltu         t0, a6, t6
                  srl          t4, sp, t5
                  add          ra, s8, a0
620:              andi         s3, a4, -777
                  bge          s8, a0, 627f
                  sltiu        s8, s1, -915
623:              sltu         ra, a1, s7
                  beq          s9, a2, 629f
                  slt          s2, zero, s5
                  ori          a7, tp, 630
627:              sltiu        t4, sp, 1946
                  blt          a5, t5, 647f
629:              ori          a6, s8, 344
                  ori          a5, a5, -1923
                  ori          s1, s2, 765
                  bgeu         s0, sp, 639f
                  sltiu        a2, s5, -845
                  beq          t2, a4, 644f
                  xor          a5, t6, a4
                  sltu         zero, t2, s7
                  xor          a4, s8, s9
                  lui          a2, 257270
639:              sra          s0, s2, s9
                  bgeu         s2, a6, 653f
                  slti         s9, s6, -1030
                  andi         t0, a1, 226
                  addi         ra, a1, -438
644:              sub          t0, s5, t0
                  srli         zero, s4, 3
                  addi         t6, zero, 201
647:              addi         t1, s0, 313
                  sra          a0, s6, a4
                  auipc        a1, 674634
                  nop
                  bge          s0, zero, 652f
652:              slt          zero, t4, s5
653:              sll          a5, t3, t1
                  bne          s0, s5, 670f
                  bge          s0, s0, 669f
                  sub          t3, a1, a0
                  nop
                  beq          s10, t2, 668f
                  and          a4, t3, a4
                  srai         s9, s7, 16
                  bne          s1, zero, 672f
                  bgeu         ra, a6, 664f
                  slt          t4, t0, t3
664:              xor          s8, a5, s2
                  sltu         a7, s6, t3
                  auipc        s10, 999949
                  sll          a7, zero, s7
668:              nop
669:              slti         tp, sp, -1520
670:              addi         a5, tp, 442
                  sra          sp, a0, s7
672:              sll          gp, t0, s8
                  bltu         t4, s8, 688f
                  lui          s8, 651955
                  slli         a3, s4, 25
                  slt          zero, t2, s9
                  and          t1, s6, t6
                  blt          s10, tp, 684f
                  slti         t4, s9, -1490
                  srli         s0, s7, 8
                  slt          t1, t4, gp
                  addi         s10, s2, 1453
                  srl          t2, ra, a4
684:              slt          tp, s0, ra
                  bge          gp, sp, 700f
                  bltu         a4, t2, 704f
                  andi         t4, a4, -1525
688:              addi         s6, t3, 1907
                  bgeu         s9, s5, 695f
                  bne          a4, t0, 696f
                  or           gp, t3, s7
                  bge          s5, s5, 702f
                  lui          s9, 884205
                  sll          s1, s10, s8
695:              slti         tp, zero, -506
696:              sub          a6, s11, zero
                  sub          sp, a2, s3
                  ori          a7, s0, 172
                  srl          a1, tp, a7
700:              bltu         s4, a1, 718f
                  sll          t3, s1, a0
702:              auipc        s10, 531032
                  andi         t6, s8, -306
704:              andi         gp, s11, -723
                  auipc        tp, 904779
                  sll          a1, s8, s0
                  xor          ra, gp, a6
                  lui          a0, 463090
                  slti         a4, ra, 673
                  and          s1, a6, zero
                  blt          s11, a6, 721f
                  srli         s1, t0, 21
                  lui          sp, 352159
                  xor          sp, s5, s6
                  sltu         a2, s5, s11
                  bltu         t2, zero, 726f
                  srl          s3, a1, s10
718:              slt          s9, gp, a7
                  andi         s6, a3, 691
                  xor          s2, a7, sp
721:              slti         s7, a7, 1977
                  srai         ra, s5, 0
                  blt          a5, s6, 742f
                  bgeu         s10, t2, 737f
                  xori         s1, a0, 443
726:              xori         t4, tp, 2002
                  slti         a3, s11, 709
                  lui          a4, 810987
                  sltu         a7, a4, a2
                  sub          s1, s10, a6
                  addi         s7, s10, 1175
                  slli         sp, a4, 10
                  sub          s8, a7, a2
                  andi         s10, s4, -1278
                  ori          t4, s8, -1496
                  slli         s2, s6, 28
737:              and          a7, a2, t6
                  andi         s3, s5, 1514
                  bltu         zero, t3, 745f
                  add          a0, a7, s11
                  or           t1, s10, sp
742:              sll          t6, zero, s11
                  nop
                  bltu         t6, s5, 747f
745:              ori          a7, s10, 1792
                  xori         a2, a5, 189
747:              xori         ra, s5, 1138
                  sra          a3, t5, ra
                  sltu         a7, s8, a3
                  bne          s2, s11, 756f
                  beq          t3, t4, 761f
                  xori         s4, tp, 1938
                  slt          s4, t0, zero
                  srl          a6, s3, s1
                  sll          a1, s8, t6
756:              or           a0, s10, t3
                  bgeu         s0, a4, 763f
                  andi         gp, s11, -845
                  slli         t0, sp, 27
                  bne          a1, s8, 761f
761:              srl          a2, s7, t2
                  sll          a1, s2, t3
763:              bgeu         a5, a4, 769f
                  sltu         a5, sp, s8
                  add          a1, t5, a1
                  nop
                  sra          t3, a6, s6
                  srai         s7, a0, 20
769:              lui          sp, 445503
                  bltu         ra, t3, 778f
                  bne          a5, a4, 777f
                  srl          ra, a1, a6
                  sltu         s0, a3, ra
                  or           a7, gp, s6
                  sltu         a7, s11, a7
                  slti         t2, s8, 1688
777:              slli         s9, zero, 23
778:              sra          a3, t5, a2
                  blt          a2, a1, 793f
                  srl          a4, t0, s8
                  slli         s3, t6, 6
                  blt          t4, s7, 788f
                  srai         t0, s1, 19
                  sra          s10, s3, a5
                  bge          a3, a3, 805f
                  sra          a4, ra, a6
                  andi         sp, t3, 1233
788:              sltiu        a6, a3, -505
                  bltu         sp, s2, 800f
                  sra          t2, t0, a3
                  sltiu        t6, t4, 995
                  bge          a7, a3, 799f
793:              beq          t3, s7, 805f
                  bne          s3, s4, 799f
                  andi         a4, s10, 1596
                  bne          a4, a1, 811f
                  sll          t2, a7, sp
                  addi         a5, t4, -1061
799:              nop
800:              bltu         a2, t5, 818f
                  andi         t6, s3, 1845
                  bne          a1, a3, 821f
                  srai         s10, a5, 30
                  sra          t6, t2, a3
805:              xor          gp, a3, a5
                  sltiu        s8, t1, -960
                  slt          tp, s8, s4
                  sll          a1, t5, a3
                  and          s0, t0, s7
                  slt          s9, s6, s3
811:              sra          a2, a6, s6
                  addi         s4, a0, -1614
                  slli         s4, s4, 17
                  sltu         s8, a7, s7
                  or           t4, s0, s0
                  auipc        s9, 541251
                  xor          a6, a0, s11
818:              lui          s8, 722512
                  bne          a3, s3, 821f
                  ori          s0, s5, 714
821:              sltiu        t2, s9, -1225
                  or           s7, a2, a6
                  auipc        s9, 298995
                  slti         s7, sp, -1607
                  bgeu         s0, tp, 841f
                  beq          s2, zero, 846f
                  ori          a6, ra, -620
                  sra          t3, s10, t3
                  auipc        s2, 196732
                  beq          t6, t6, 845f
                  slt          a5, s7, t1
                  sll          a2, a2, tp
                  and          s3, a6, a4
sub_2_8:          jal          s6, 20f
0:                jal          t1, 14f
1:                jal          a4, 17f
2:                jal          ra, 23f
3:                jal          t1, 5f
4:                jal          ra, 26f
5:                jal          ra, 10f
6:                jal          ra, 24f
7:                jal          t1, 1b
8:                jal          gp, 11f
9:                jal          ra, 4b
10:               jal          t2, 18f
11:               jal          ra, 6b
12:               jal          t1, 9b
13:               jal          ra, 19f
14:               jal          ra, 13b
15:               jal          a2, 3b
16:               jal          t1, 2b
17:               jal          gp, 27f
18:               jal          ra, 7b
19:               jal          s10, 22f
20:               jal          s4, 8b
21:               jal          ra, 16b
22:               jal          ra, 25f
23:               jal          a0, 12b
24:               jal          ra, 21b
25:               jal          gp, 15b
26:               jal          ra, 0b
27:               sra          t1, a6, s3
                  srai         ra, s6, 0
                  sub          s6, s8, s4
                  andi         t0, tp, -881
                  or           s2, s1, a5
                  slli         a4, s11, 19
                  andi         s3, a2, -764
                  sub          t2, t4, t1
841:              add          a3, t6, t4
                  bgeu         ra, s6, 848f
                  slt          a5, t2, s4
                  srl          a4, s7, a6
845:              sltiu        sp, s8, -902
846:              ori          s6, a1, 262
                  add          sp, a7, t4
848:              add          s0, s2, a7
                  auipc        s10, 240627
                  srli         a2, t0, 31
                  xor          s6, a6, s11
                  xori         zero, tp, 526
                  or           s4, a7, a4
                  and          s4, s9, s4
                  sra          gp, t5, a7
                  auipc        a2, 742436
                  slti         zero, a2, 653
                  sltu         s4, s6, a1
                  slli         zero, ra, 18
                  auipc        a3, 948801
                  sra          t2, gp, sp
                  blt          s1, s1, 868f
                  sltu         s3, zero, s0
                  srai         zero, s8, 31
                  bne          t3, t6, 883f
                  beq          t4, t4, 872f
                  xori         t2, a7, -1448
868:              blt          s11, a0, 874f
                  addi         s1, s3, -596
                  or           s4, a2, a6
                  add          zero, ra, gp
872:              sra          s8, sp, s0
                  slt          t6, t6, t4
874:              sltiu        s3, a3, -1748
                  blt          s1, a7, 877f
                  ori          a3, a0, 704
877:              and          a6, s5, zero
                  sll          s8, tp, gp
                  slti         s10, s1, -1746
                  addi         t0, s0, 1464
                  beq          ra, t2, 889f
                  addi         tp, t1, -1925
883:              blt          tp, t1, 888f
                  addi         a3, t4, 1441
                  slti         a1, s6, -1364
                  slti         t1, a2, -755
                  slti         s3, a0, -707
888:              sltiu        sp, t2, -2036
889:              beq          a3, s2, 899f
                  auipc        a4, 10985
                  auipc        zero, 115051
                  xor          a2, a0, a1
                  slti         s2, t5, 1113
                  bne          t3, s7, 900f
                  bne          a6, gp, 902f
                  bltu         s4, t6, 911f
                  beq          t3, t6, 907f
                  sra          s3, s6, s6
899:              srli         t6, gp, 19
900:              bne          gp, a2, 920f
                  sltu         t0, zero, t5
902:              bge          a5, ra, 912f
                  srli         a3, a3, 27
                  bltu         s8, s10, 918f
                  nop
                  bgeu         s7, s4, 916f
907:              bltu         s8, t0, 926f
                  and          t4, a4, s11
                  sltu         gp, t6, t1
                  sra          s9, s8, s4
911:              add          t4, s4, a4
912:              slli         s10, s7, 21
                  or           s8, a5, a6
                  sub          s3, a7, zero
                  bgeu         zero, s8, 933f
916:              sltu         s8, s10, t1
                  lui          a3, 510851
918:              and          t3, s9, s1
                  andi         a3, tp, -721
920:              slt          s8, a3, s4
                  sll          t0, a1, sp
                  xori         a6, zero, 1013
                  or           a6, a4, a3
                  lui          t2, 326536
                  bgeu         t4, a5, 936f
926:              blt          s11, a2, 945f
                  slli         gp, t4, 30
                  nop
                  lui          s9, 273168
                  addi         t0, a5, 786
                  slt          s0, t3, s4
                  srli         a1, s11, 9
933:              slli         a2, t0, 4
                  andi         a3, a3, -1754
                  nop
936:              xor          t2, t1, t6
                  add          a6, s8, s8
                  sra          ra, tp, sp
                  slti         a2, t5, 1354
                  xor          t1, s5, s11
                  xori         gp, s5, -1144
                  srli         s2, a0, 11
                  bgeu         a0, s9, 944f
944:              sra          a0, t0, t3
945:              sltu         t1, a7, zero
                  sltu         s3, a1, t1
                  ori          s7, s4, -1835
                  sub          s10, tp, s10
                  auipc        s3, 554339
                  sra          a7, t6, a7
                  srli         gp, t3, 25
                  bltu         s10, s5, 964f
                  andi         a0, s9, 987
                  bgeu         s2, t6, 970f
                  srl          a3, gp, s8
                  slli         a6, a4, 12
                  or           zero, ra, t2
                  slli         gp, s6, 5
                  or           s7, s4, a0
                  addi         s4, s9, -897
                  lui          t3, 90838
                  beq          s0, s11, 965f
                  sra          s6, t4, sp
964:              or           s6, t6, a3
965:              sltu         s0, a4, a3
                  slti         tp, s5, 1290
                  ori          a3, tp, -404
                  blt          a6, s2, 974f
                  xori         a4, s4, 2010
970:              blt          s7, t0, 983f
                  blt          t3, t6, 977f
                  slt          s8, a1, t6
                  blt          a3, t1, 988f
974:              bne          zero, t4, 994f
                  or           a3, a7, s3
                  xor          t6, s2, tp
977:              or           s8, sp, s5
                  sltiu        zero, a2, 1882
                  add          s0, s6, t3
                  ori          s3, a2, 361
                  xor          s3, s7, t1
                  ori          s1, s2, 66
983:              bge          s4, a5, 995f
                  sra          a6, s7, gp
                  bge          a4, s4, 995f
                  blt          s2, gp, 1002f
                  auipc        a7, 925954
988:              srai         s6, ra, 27
                  srli         a7, s0, 14
                  bgeu         s5, t5, 1001f
                  sub          s9, t4, t0
                  andi         a3, s5, 1729
                  blt          tp, s5, 999f
994:              xori         ra, s2, -419
995:              slti         zero, s7, 1933
                  blt          a2, a4, 1015f
                  srl          s10, t6, t1
                  srl          t1, sp, s6
999:              or           s0, sp, ra
                  sltiu        s8, t1, -209
1001:             srl          s3, tp, s7
1002:             srli         s6, t6, 12
                  and          s3, a4, a1
                  beq          t2, a2, 1005f
1005:             nop
                  ori          s7, a0, 968
                  lui          t0, 724492
                  nop
                  auipc        s7, 741697
                  and          s6, s10, t3
                  bge          s4, sp, 1026f
                  bne          t4, t3, 1032f
                  srli         s2, a3, 26
                  sltu         ra, a7, s7
1015:             lui          s3, 867380
                  nop
                  ori          a6, t2, -810
                  auipc        tp, 704344
                  slti         a7, gp, 1584
                  xori         a0, s0, -80
                  and          a3, s10, t6
                  bgeu         t6, a0, 1028f
                  beq          s11, t6, 1029f
                  bne          gp, s8, 1039f
                  lui          sp, 33557
1026:             xor          t4, s1, s1
                  xor          zero, t2, s11
1028:             srai         t0, t6, 18
1029:             sltu         s4, s1, a6
                  srl          tp, a0, a1
                  add          s6, s8, sp
1032:             or           sp, a0, s8
                  bge          s8, t1, 1039f
                  lui          t4, 784754
                  sub          t6, a2, sp
                  andi         t3, gp, 1319
                  nop
                  ori          a5, t5, 1700
1039:             andi         tp, s6, -749
                  ori          t6, s3, -382
                  and          t2, a6, s4
                  slt          s10, s6, t6
                  sub          s1, s6, t3
                  bltu         a3, t2, 1045f
1045:             sltu         s9, ra, t5
                  lw           s6, 4(s5)
                  addi         s5, s5, 28
                  nop
                  xori         s8, ra, 1308
                  sltu         a2, s7, t4
                  srli         a4, s3, 3
                  addi         s9, sp, 490
                  srli         a5, s1, 29
1512:             addi x12, x22, 0
1512:             jalr x12, x12, 0
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
.word 0xdcee5fda, 0xcce8a32f, 0x12e16ca6, 0x29136944, 0xedc27952, 0x6e87b550, 0x63d4fda1, 0xa9e57955
.word 0xe8075434, 0xf217385f, 0x36313781, 0x2530e6a4, 0xef335a12, 0x6751274f, 0xebeee257, 0x07c61319
.word 0x8d2b37d3, 0xb340cf84, 0x4c1ab69f, 0x55c4215d, 0x87a269c6, 0xd5728878, 0x993719d5, 0xa1667ec5
.word 0x187295f6, 0x1b9b4437, 0xdbe5aeff, 0x54c22f52, 0x2aaf6774, 0x7e18534e, 0x24dea8d1, 0x65e4187f
.word 0xd4a3ceda, 0x7cfbd342, 0x63e59fd3, 0x02676613, 0x6e3b23c0, 0xe739e116, 0xa3c5c48f, 0x7f1a733a
.word 0x2eb8f590, 0x6653d49e, 0x97235399, 0x1ac1e2bc, 0x2d8dbf0a, 0x1d910aff, 0xc0ae6c76, 0xf291b21c
.word 0xbc27394f, 0x2069cfb3, 0x054d3f02, 0x53a859d6, 0x3b25c574, 0xf91f3d46, 0xb240b9c2, 0x2d3b1d1b
.word 0x9bc7844e, 0x18c3dda0, 0xdceabe76, 0x3c79508d, 0xffef3781, 0x35ae3191, 0x2faf6c97, 0x208f6173
.word 0xbf34b352, 0x16cf318f, 0x04b9b3e5, 0xa2a9787d, 0xfbcaef12, 0x11c6c9c8, 0x36a30fe8, 0xab0fddda
.word 0xf1c59758, 0xdcb4c63d, 0x065362d6, 0xb8991957, 0xe0473c0b, 0x5371b753, 0x3feb6051, 0x745f8319
.word 0x76c95fc6, 0x23d3a5b4, 0x48e231b9, 0x2b0a477c, 0xd553d102, 0x5ad4fa4b, 0x053de2d3, 0x4d415ca6
.word 0x227e0045, 0x66f7159f, 0x3e147cdf, 0x72cf742c, 0x37f72104, 0x778a125e, 0x0323dfae, 0xa5c2cb05
.word 0x15d1c770, 0xc639924f, 0xeafd3164, 0x6e31e632, 0xaeb8707d, 0x757ebcc4, 0xc7f1af62, 0xccbf56c5
.word 0x19c68bd2, 0x94acd688, 0x73286972, 0x83b9293e, 0xb5c9ca98, 0x7bc89c8f, 0x08c32545, 0xc4e79352
.word 0xdf798799, 0x4c83e4d1, 0x2ca0f6cc, 0x3f686938, 0x5ee7f922, 0x161adfc9, 0xd0c1cceb, 0xf5c379a9
.word 0xba8a7237, 0xcc526d8f, 0x8f9e523d, 0x2e6164f2, 0x3d054cea, 0x886814b1, 0x5d934eef, 0xf405f9dd
.word 0x7a1000bd, 0x7991f1c3, 0xe457e8ac, 0x4bf91ab7, 0x6ac366da, 0x6442f01b, 0xe6baec0a, 0xc1c637eb
.word 0x5ed74f24, 0x22d09382, 0xd1128c03, 0xe107aeb3, 0x6b6813b8, 0xaf056a79, 0x2c262adc, 0x1988e3c6
.word 0xa5b78f9f, 0xf878159f, 0xfb689c76, 0xffca40ab, 0xdbb08508, 0xfcd9743b, 0x527d6001, 0xff325409
.word 0xe219b254, 0xf7d99128, 0xd501eafd, 0x69c44712, 0x4b2e5ca7, 0x861c7845, 0xce7b00c1, 0x9b687778
.word 0x8c3a3ff8, 0xa69a2a3e, 0x6fad305f, 0x9b0f1e17, 0x0a05cf3b, 0x047c8406, 0x23b90bbd, 0xad96e6a6
.word 0x97df1181, 0xb3fc8a83, 0x1cb7ac90, 0x050b511b, 0x78fa03f1, 0x6c55f755, 0x0edb3fe2, 0x6ecd6c13
.word 0xf4126821, 0x902b8659, 0x9b706123, 0xb14fff06, 0xe2112bbb, 0xce3a319b, 0xe2560d09, 0x61ba70d5
.word 0x97fdf164, 0x0dfb4c49, 0x39b6dde9, 0x57890b1a, 0x9b00346e, 0xb7ea206a, 0xd6968986, 0x2ca9c3c3
.word 0x7b4b578d, 0x98da0c31, 0xc88356a9, 0x9641a07b, 0x6bf515ce, 0x91c96664, 0x9dd18f2b, 0x803e3806
.word 0xbf5b2f8f, 0x16ba8913, 0xd54ce60d, 0x1e4aa6b9, 0x1f5f4940, 0xd99f8a85, 0x9af3fbf7, 0x2b443e52
.word 0xa7a8b696, 0x1933a3ab, 0x9b41774d, 0x6f023164, 0x8f96e51b, 0x1ac8e1b5, 0x9d594da2, 0xd22bc017
.word 0x2a527595, 0xb2828ddf, 0x751f9c6a, 0x51cdf7c3, 0xd5a479e2, 0xe01c22c3, 0x2336c862, 0x6f9ee4ee
.word 0x5184eb14, 0x7c3ef33e, 0x447319e6, 0xd6d79fc2, 0xc53e1dff, 0x9d37ce85, 0xe079f920, 0x53ed375e
.word 0xe642d841, 0xc770b888, 0x93ecd89f, 0xdcab9ba1, 0x2e3aeaad, 0x3e6b3c56, 0x5eec4d78, 0x248ed4b0
.word 0xe7d314fd, 0x88923625, 0xeb6b7817, 0xe53dc111, 0x79325871, 0x2918d0a6, 0x03d1730e, 0x94dfe290
.word 0xdd167339, 0x5a840b6a, 0xb07d81c9, 0x1545b6e8, 0x07482956, 0x0db99efb, 0xd2b5a43b, 0x2c77622c
.word 0x75e0f85d, 0x71dcf0a5, 0xb0500172, 0x0dfc0505, 0xf85e3874, 0x41847ba3, 0x9d738016, 0x858faa8f
.word 0x3ba07662, 0x887bc935, 0x8f35b1f7, 0x576564cc, 0xe1781da0, 0x74aba74d, 0xbf9aef71, 0x5d59a0f6
.word 0x77cf743a, 0x48f4f1af, 0xc8de6628, 0x229259fc, 0x534b87c3, 0x753521e0, 0xaa5144ac, 0x77dc11e2
.word 0x963a78a8, 0x86fe7413, 0x1d13008d, 0xbee10b9d, 0xacfe5a65, 0xaa44a4cf, 0x7e1173c3, 0x34778ef5
.word 0x54779b06, 0x107ca75b, 0x2f111fb7, 0xaae04b6f, 0x907577e0, 0x074db610, 0x6272c009, 0xd8c10f2c
.word 0x161c4ace, 0x23fcbea9, 0x30b41254, 0x80870151, 0x4334d01e, 0xd588fd1b, 0x4e0d53b4, 0xd81f1e86
.word 0x5442b7e2, 0x038c8a6e, 0x182c9846, 0x5cd219ea, 0xf03604f0, 0x3c498e18, 0xc0858002, 0x9feb992e
.word 0x3649657a, 0x72d9c9b8, 0xb2609c40, 0x80cd0026, 0x47aca77b, 0x61bca7c2, 0xc40667f9, 0x498d9cdc
.word 0x3794b669, 0x3c492385, 0xb5fa0b0a, 0x1d29f1ed, 0xd0dc77d5, 0xf8666602, 0x84baa458, 0x3c683194
.word 0x251c95b5, 0xe2ae4de9, 0x219ee69b, 0x858fd98b, 0xdf4a8f2e, 0x6038efe8, 0x5271fcde, 0x842fff51
.word 0xa2cf42dd, 0x21724208, 0xe961496b, 0x44e1f5cc, 0xbc50c863, 0x75058e4d, 0x19db1be4, 0x641b83bc
.word 0xb34c80d7, 0x8f8322a0, 0xb3f1f86d, 0xd35097d9, 0x5abf3786, 0x8ef8a2db, 0x4a79bbf6, 0x482fc98f
.word 0x8d60abb0, 0x76cb7623, 0xa92c7653, 0xd3e60fbf, 0x53170660, 0x0b6de8b2, 0x8611a7b4, 0x3a3d38d6
.word 0x345614da, 0x091bdf88, 0x20d4b91f, 0xc8cb21c0, 0x8806ebcc, 0xaa9689fb, 0xd2584f9d, 0x5bac560d
.word 0xb3cc0a8c, 0x3eebb6d2, 0xc6fa89ca, 0x3a8c65b4, 0xbbd78bf8, 0xf2550f4a, 0x310a2c14, 0xbc44840d
.word 0x5388712f, 0xbf56bd5a, 0x3715cd92, 0xa88c91b6, 0x7de6185d, 0x18e64d8b, 0x1e08d558, 0x00bdc33d
.word 0x628f2d2e, 0x6320deea, 0x737cfcb3, 0x912a37ca, 0x606407e5, 0xf9be16f2, 0x9eed17d6, 0x93bf328c
.word 0x7b44d18d, 0x4c002602, 0xae737c82, 0xa4ba7f15, 0xf842e7c8, 0xef1852d7, 0xc999616f, 0xcf7780b2
.word 0xb2dd46f5, 0xb8da0791, 0x86f557ca, 0x0315e3e3, 0xa5a08023, 0x042096ab, 0x3e74f8ad, 0xb1b20707
.word 0x27c47e80, 0x5df568dd, 0x3bf49a07, 0x81f51b2a, 0x84bf2db9, 0xb1052752, 0x156e0c7d, 0x87697875
.word 0xe5ca1e58, 0x5a8cf07b, 0xb075ed67, 0x4e127b3b, 0x7b77060d, 0x9bed3962, 0x7b0421b9, 0xa7d9ff4a
.word 0x9d7a7014, 0x9210587e, 0x51c89733, 0xbb354e4b, 0x8268e57a, 0x4ac7c3d9, 0x05c73aa9, 0xfdcdff8c
.word 0x7b85f0ae, 0xbc54741e, 0x11c352df, 0x1c513b0e, 0xb9d34aaa, 0xf91d309f, 0x27d017ee, 0xfcd5138a
.word 0xf6789590, 0x0df31b6f, 0xa1ce25de, 0xec3e76db, 0xdedd791a, 0x071ad6ea, 0xe4678c12, 0xdf2f1cbf
.word 0x1369cb84, 0x5bf4773a, 0xa1a51afc, 0xfa88a297, 0xa0b7af4c, 0x6279ba82, 0x007c0dc7, 0x062c2faa
.word 0x19dd540e, 0x00afdcff, 0xf01d578e, 0x5fbc846a, 0xa4170b26, 0x9fd57bd3, 0xf12585ef, 0x9d98cad6
.word 0x4716ab1c, 0xed7ba83c, 0x625e7ea4, 0x7033f284, 0x89e24dd0, 0x27097431, 0xeda87645, 0x46978aa0
.word 0xfc5b08d0, 0x1cdf6bb3, 0x0609e8c1, 0xde7f2507, 0x0e8f6fec, 0x24ae7936, 0x3f7a3b2b, 0x7549bd94
.word 0x6d76ca43, 0x3df66923, 0x25daa40d, 0xa13065b5, 0xdaa271e9, 0x0d0d8c8f, 0x50992601, 0x8ab5dfd1
.word 0x3c292ce5, 0x6d47ea05, 0x01e6a4a4, 0x23e8e909, 0x5ba19e82, 0x8bb025ef, 0x59ab814d, 0x6c9a898a
.word 0xcc29d8f4, 0xe9eed627, 0x29c05e65, 0x5d416c05
.section .region_1,"aw",@progbits;
region_1:
.word 0xeccbf341, 0xbffa03e1, 0x646925cc, 0x39ec6ff7, 0xa87a7b40, 0x30987c32, 0x69f06cf7, 0xb8e333be
.word 0xf3365c40, 0x4363f774, 0x997adeee, 0xeb149542, 0x0490d5a2, 0xee276269, 0x250f124f, 0xeb9e4136
.word 0x094641b4, 0xaf140124, 0x71bd6eda, 0x44c851a7, 0x6d294fd0, 0xa56a92ef, 0x5361e607, 0x938762b9
.word 0x9160ecae, 0x52da355c, 0x463de103, 0x2a1ba30c, 0xf9b83e8e, 0x7d7cbd74, 0xcc69ef7d, 0xa5e10cfe
.word 0x84ca7f09, 0x9c597a6a, 0xb7f2155b, 0xfcfc52fc, 0xf3ecf783, 0x5eff7340, 0xa87e00a8, 0xd4c6dd41
.word 0xe3621125, 0xe74215e4, 0x1b65767a, 0x456b4932, 0x42253970, 0xc4616526, 0x65477442, 0x8410ff82
.word 0x7b0336b0, 0x8fdd50c5, 0x73a98c73, 0xa3afad72, 0xdb869b0a, 0x1ce62fea, 0xaf98e190, 0x5d70efb2
.word 0xb1fd9120, 0x8bcad316, 0x0b5b4301, 0x407d85b7, 0xb88287a6, 0x371b5d9b, 0x405ba071, 0x5fdd6c03
.word 0xb63ae957, 0x4036401b, 0xb24ee989, 0xf95a8278, 0xbe9060ca, 0x31a00f0c, 0xa94472aa, 0x65952442
.word 0xd7f4ca8a, 0x24fb739c, 0xf94e8b5b, 0x6fc040fa, 0x2e69219f, 0xfc841b8a, 0xe890200a, 0xcde92f70
.word 0xbc9b2324, 0x71edecaf, 0x77eb55ae, 0x437cd95d, 0x4bff550e, 0x71497539, 0x5ef53961, 0x41de7c9b
.word 0xd7bcd4c3, 0x95cdf506, 0xca8c3b16, 0x8ab1ab9a, 0xa460cfa7, 0x56ee4706, 0x9ed56024, 0x5c2ec75a
.word 0xaea68d42, 0x2ff34714, 0x7dacb3b4, 0x9b6ee749, 0x4ef58b04, 0x2e086009, 0x4aaddcb2, 0x47bcf4e3
.word 0x310a00c3, 0x469d1adc, 0x1ee8dae1, 0xdc4fea0e, 0x4487a39a, 0xc94f5226, 0x43990d18, 0x0ca4e219
.word 0x78264945, 0x7c94ebcf, 0xd36ee8a0, 0x09250e8d, 0x19e77966, 0xcedd896a, 0x332de28e, 0x02ffa098
.word 0x95940051, 0x3b5377e2, 0xa669bdfb, 0xd889bfe2, 0x363eb85e, 0x816437e4, 0x65254f5b, 0x9e40444c
.word 0x31a828c1, 0x0039ac95, 0x92f7c94a, 0xe433a9f6, 0xa0fdf0b1, 0x2c37fcf9, 0x2ff254d9, 0x6fddc845
.word 0x5fd51a73, 0xd978f5f7, 0xf68f994d, 0x7c21ebce, 0xf1ade85d, 0x5ae04806, 0x3a0dd0f2, 0x69dc0276
.word 0x1ea1f7c8, 0x54b846e9, 0x3dd2fe01, 0x58e420f0, 0xf40f666d, 0x176dc963, 0xb120388d, 0xba044a3a
.word 0x52c14404, 0x906f065b, 0x247e5209, 0xdd8d5524, 0xfee6b97c, 0xb129ebe7, 0xb7f46ee1, 0x93edb1d8
.word 0x8cb7605c, 0xb432466e, 0x5069b7b9, 0xdbcae3ac, 0xf4bca981, 0xcadadf65, 0x10fda5dd, 0x7fdc4d01
.word 0x2d85fff9, 0x2a2a92c2, 0x6f269aac, 0x30960656, 0x063b2266, 0x96a36e02, 0x5bef1145, 0x0ee16f44
.word 0xb0597f23, 0x7e8a0aea, 0x88c85cfd, 0x59aeaccb, 0x19766206, 0x117b4e6f, 0x29a4adf2, 0x219c0cbd
.word 0x4ca9d510, 0xb6981ad2, 0x81118f22, 0x951ed8ec, 0xecb7b23d, 0x8d0b4e22, 0xf8b64fd3, 0x232d8aca
.word 0xd30b9bd4, 0x8897ba87, 0xa76048be, 0x58c833df, 0x4348c381, 0xb2012c56, 0x6535443f, 0xe62a1b75
.word 0x45979b2c, 0x2ac9f9b6, 0x86f19336, 0x3fbcaa14, 0x88d5fc20, 0x1cdc8b1e, 0xc08b400f, 0xdc326a12
.word 0x85406dab, 0xf7f69db8, 0x24623c00, 0x8d3726a7, 0xcda62012, 0x1bc18f9c, 0xc920cc2c, 0x2c00b0c6
.word 0x57a4e04d, 0xe34cb50b, 0xbbee0dd1, 0xdc769242, 0x967a50a8, 0x884d48a6, 0x2c51eb4d, 0xe0e04f19
.word 0xfc11ec19, 0x5244001c, 0x594f5b17, 0x9d8ae254, 0x5fb54c12, 0x11839f4e, 0xd2f6551b, 0x437d33f7
.word 0x4257baf3, 0x55763e34, 0xa4b054bf, 0x6c8cb273, 0x3f0001f8, 0xe797bd34, 0x152f3457, 0xa2ceb341
.word 0xc9adecff, 0xd7cc21d7, 0xbf3ee033, 0x08b3c234, 0x3c395c36, 0x18bb3f47, 0xc6a125d2, 0x33650e57
.word 0x50439d74, 0x5ae05b8c, 0x1d1a524c, 0xcf5c69d8, 0x11ae5b6a, 0x8a189150, 0xf33ae6c7, 0xc70119d7
.word 0xf9330463, 0x4704dd66, 0xf5f97ea8, 0xcdc03fdb, 0xe7877990, 0xb7828bef, 0x04930950, 0xc03948fc
.word 0xa4df8000, 0xbf172638, 0x2e4851db, 0xbd5efbd5, 0x5e9a0b2d, 0xcb90cb72, 0x4e87941b, 0x6e37238d
.word 0xfc5bcfbb, 0xdd34e06c, 0x00e75f94, 0x9cc1f942, 0x9f5f8ddd, 0x0c6f374a, 0xc74aaf41, 0x6146cdc6
.word 0xeddfffed, 0x5a4ee32c, 0xaaaaa2fc, 0x91f0794c, 0x455bbd21, 0xadde5531, 0x518e2feb, 0xf94edddd
.word 0xaa7e1fe0, 0xb5463bbf, 0x61ac1d6d, 0xe5baefa9, 0x637b1bca, 0xf5d23070, 0x2d491d2a, 0x63cdc757
.word 0xbaa519cc, 0x0fb57955, 0xbe7b6998, 0x4d73ab85, 0x96726ef0, 0xaab3566a, 0xce2c14e9, 0xfd5c9a1a
.word 0x72160191, 0x8ea9b918, 0x7d9d74f9, 0x20e148f2, 0x049309fa, 0x89700f7f, 0xe04d497c, 0x43202310
.word 0x0ac6ca9b, 0xe03035d5, 0x8c77d914, 0x5a342372, 0xd3c81997, 0x9725fae7, 0xb3e6de37, 0xc3fbeed5
.word 0x1a7e1a72, 0x5863fd82, 0xfb2f41dd, 0x5bd63251, 0x0e27c501, 0x83f545a8, 0xb4b8cf9e, 0x8b34d415
.word 0xc01c13c4, 0x4c495308, 0xd6396fa9, 0x42d067f4, 0x3c352a1f, 0xebe0c2b1, 0x12456eb9, 0x2c41882d
.word 0x4e9fedea, 0x0d37b509, 0xd9d36fce, 0xc23e8edb, 0x6cafbf5d, 0x1f8ce75b, 0x6c050593, 0x030c9163
.word 0x43f8d5c7, 0xdff44e48, 0xda588329, 0x6e8aac3d, 0xa5f3c35a, 0x65e60a41, 0xd183ee58, 0x2f61194e
.word 0x972db3a7, 0x45af377b, 0x2833effd, 0x93114bf4, 0xc7644f9d, 0x1155e696, 0x66f29408, 0x3f4ce297
.word 0xfc931ed4, 0xe4f70e3f, 0x895f675d, 0x49c9b6eb, 0x0a225ba1, 0x0b1edf7e, 0x68425dca, 0x9d62990c
.word 0x74d41365, 0xf7d110a6, 0x96eaf3ae, 0xeb142e6d, 0x081ffab1, 0xdf4dc50c, 0x41548776, 0x848d7470
.word 0x3ca24bc8, 0x44b4478d, 0xf275dad5, 0xd7cc0beb, 0x8709412c, 0x8b776473, 0x4104d201, 0x91f55351
.word 0x700ddf3e, 0x782d0e0e, 0x8ee117e5, 0xf8cf947c, 0xfd1ac14b, 0x82bc3c09, 0xe64d6999, 0x42079ca1
.word 0x0414630d, 0x4752bff6, 0xbc479605, 0xe2b54b21, 0x1e2efa37, 0x51600e08, 0xc6a9d02d, 0x72b3e00f
.word 0x951d8bb6, 0x8a9ece56, 0xa7f0c2b0, 0x6000b2be, 0x5ff140ff, 0xc11b3566, 0xdd1fc5ce, 0x267f9e73
.word 0x2430b031, 0x8959a194, 0x422ab670, 0x2d5202c1, 0x423b61bf, 0x34dfe00b, 0xf3823741, 0x44bd6b06
.word 0x3b5689be, 0x1ddce5bb, 0x36418c26, 0x370929b9, 0x6c88da57, 0xb7d3ba05, 0x5fd96a8d, 0xa52629ea
.word 0xd26c7081, 0x55f5a83a, 0x79565e4d, 0x5b12131b, 0xa1bb53f5, 0xca5cf490, 0xf2e9bad4, 0xb7f8f565
.word 0xc055e476, 0x8474178e, 0x58f16cde, 0xa1e63c68, 0x60cbbe51, 0x7d71f92e, 0xb4e560e3, 0x233bf386
.word 0xab36bf03, 0x7cebe94b, 0xbfee580c, 0x8b65b846, 0xa1bf9fa9, 0xd15dc5be, 0x50fc063f, 0x482f420e
.word 0x7690c8cd, 0x17734022, 0x4d7713d8, 0x6d8f16c9, 0x8acb78e8, 0x7994ac4c, 0xed106b06, 0x5fd548b0
.word 0x796477a4, 0x83bf250a, 0x4324c6b8, 0x677178df, 0x65649b9b, 0x3870563f, 0x002d2b44, 0x7cdf1d2c
.word 0xc660e494, 0x92290427, 0x66642e18, 0x2d3e0bd8, 0x3823f6a4, 0xf5740360, 0x5fe849b5, 0xd871aee2
.word 0xffb80221, 0xdb284ee4, 0xf728660e, 0xffa5454f, 0xfc74fecb, 0x0b48a2b8, 0x06c03cc3, 0x6f7762c8
.word 0x415583f6, 0xf796ac8f, 0x502cbc0a, 0x6fe88e08, 0x356910f9, 0x2ae0a440, 0x6f14e6c1, 0xb798a045
.word 0xd8245d2b, 0xc1fa796a, 0x5abc1a2e, 0x7ecdd32e, 0x2841b608, 0xee8ac73d, 0xfd3e2812, 0x3a1c296d
.word 0xeed5572f, 0x31a0a119, 0x0629483d, 0xaaed5062
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x28, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x28, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x28, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x28, x9, ecall_handler
                  li x9, 0x1
                  beq x28, x9, instr_fault_handler
                  li x9, 0x5
                  beq x28, x9, load_fault_handler
                  li x9, 0x7
                  beq x28, x9, store_fault_handler
                  li x9, 0xc
                  beq x28, x9, pt_fault_handler
                  li x9, 0xd
                  beq x28, x9, pt_fault_handler
                  li x9, 0xf
                  beq x28, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
