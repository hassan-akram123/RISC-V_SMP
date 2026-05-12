.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0xfdf5cc6e
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xf
                  li x5, 0x215bc0ed
                  li x6, 0x0
                  li x7, 0x9
                  li x9, 0x80000000
                  li x10, 0xb35eb5b3
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x127002dd
                  li x14, 0x80000000
                  li x15, 0xe354844
                  li x16, 0xfb62bae8
                  li x17, 0x0
                  li x18, 0x9844bbac
                  li x19, 0x9e0cc79d
                  li x20, 0xfb870366
                  li x21, 0x0
                  li x23, 0xf81b8bb6
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xa
                  li x27, 0xf
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xada773d7
                  la x22, user_stack_end
main:             sltu         a1, ra, t5
                  srl          a1, s4, a7
                  la           s4, sub_1
                  auipc        a2, 83518
                  slli         zero, s6, 24
                  addi         t4, sp, 1140
                  sra          t1, a3, s8
                  sra          zero, a1, t5
                  slli         a5, gp, 9
                  addi         s4, s4, 161
                  nop
main_j2:          jalr         s9, s4, -161 #jump main -> sub_1
                  srli         a5, s2, 30
                  xori         gp, a7, 312
                  lui          ra, 1004264
                  la           s2, sub_3
                  nop
                  xori         gp, s10, 1580
                  addi         s2, s2, -190
                  ori          a2, t6, 743
                  sra          zero, t2, gp
                  bne          sp, t6, main_j3 #branch to jump instr
                  nop
main_j3:          jalr         s9, s2, 190 #jump main -> sub_3
main_0:           jal          s9, 5f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          ra, 6f
4:                jal          gp, 3b
5:                jal          a2, 4b
6:                jal          ra, 12f
7:                jal          a5, 11f
8:                jal          a5, 10f
9:                jal          s8, 7b
10:               jal          t1, 9b
11:               jal          ra, 1b
12:               jal          t0, 13f
13:               jal          ra, 0b
14:               add          s2, sp, a1
                  sra          a0, t2, s3
                  slli         t0, gp, 28
                  xor          a1, s1, s7
                  bge          t1, ra, 8f
                  xor          a7, a3, s8
                  bne          t3, a2, 9f
                  beq          s2, a4, 13f
                  bge          s4, zero, 8f
                  lui          a0, 33644
                  la           a4, sub_2
                  sra          gp, s7, ra
                  sll          s11, t3, s5
                  slt          s5, s0, s9
                  slli         t4, t0, 29
                  addi         a4, a4, -98
                  bltu         zero, t2, main_j1 #branch to jump instr
                  lui          s9, 772202
                  srl          a6, s0, ra
                  slti         s3, s5, 1829
                  sltu         a7, tp, s11
main_j1:          jalr         s9, a4, 99 #jump main -> sub_2
8:                sll          a6, t2, s5
9:                slt          s1, a3, a4
                  sub          a7, a1, a6
                  slli         t6, a5, 30
                  srli         sp, a2, 28
13:               srl          a3, a4, t4
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltiu        s3, s5, -1059
                  addi         s6, s6, -48
                  sw           s9, 4(s6)
                  srli         s5, t1, 13
                  slt          s1, tp, a4
                  or           a4, t4, s7
                  nop
sub_2_0:          jal          s9, 6f
0:                jal          ra, 7f
1:                jal          ra, 10f
2:                jal          a0, 8f
3:                jal          s5, 4f
4:                jal          ra, 17f
5:                jal          t1, 9f
6:                jal          t1, 11f
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          ra, 16f
11:               jal          ra, 13f
12:               jal          ra, 15f
13:               jal          s11, 12b
14:               jal          ra, 18f
15:               jal          ra, 5b
16:               jal          ra, 14b
17:               jal          t1, 0b
18:               srl          s11, s0, a6
                  sltu         t0, s6, a1
                  sltiu        s2, a2, 1079
                  ori          t0, s8, -690
                  xori         t2, t6, 1530
                  bne          a3, s8, 24f
                  sub          t3, a6, s3
                  sltiu        a6, s1, 564
                  xori         a1, s2, 1389
                  sra          t6, t5, s10
                  slti         a6, s8, -1216
                  slt          a6, s7, s1
                  beq          s1, a2, 12f
12:               bne          sp, t5, 28f
                  nop
                  xor          a6, t5, a6
                  beq          s3, s10, 18f
                  sltiu        a0, s2, 2045
                  srai         s5, s3, 15
18:               bne          s1, s6, 21f
                  sltiu        gp, t2, -457
                  add          sp, s3, s4
21:               blt          t2, s9, 23f
                  auipc        a4, 862921
23:               lui          s9, 17038
24:               nop
                  srli         s11, a6, 29
                  bltu         sp, t4, 33f
                  srli         t4, t0, 10
28:               bge          t2, t5, 48f
                  srl          s11, a4, a3
                  sll          s10, s6, t4
                  sltu         s9, sp, a5
                  addi         a4, a3, 1697
33:               bne          t3, sp, 48f
                  ori          a7, a3, -1622
                  ori          zero, s10, 1254
                  sltiu        zero, t6, 1536
                  bne          s11, tp, 56f
                  addi         t6, a4, -403
                  or           gp, sp, a1
                  xor          t2, a6, s11
                  ori          t6, t4, -1317
                  sltu         s2, s6, a6
                  sra          a5, s11, s10
                  srli         t4, s5, 23
                  bge          a7, a6, 61f
                  slti         sp, t4, -2040
                  bge          a1, s9, 53f
48:               slt          t6, s1, a3
                  and          s3, s11, t5
                  auipc        a0, 856513
                  and          s9, t2, ra
                  srli         s1, s3, 17
53:               addi         s10, s0, -1852
                  sltu         a7, s4, t6
                  auipc        zero, 590044
56:               addi         a3, a1, 1017
                  addi         a7, s3, 1967
                  sra          a5, s4, tp
                  slt          s5, s5, gp
                  nop
61:               sll          gp, a3, tp
                  bne          a6, s0, 64f
                  sra          a7, s7, t4
64:               sltiu        s9, t4, 1753
                  lw           s9, 4(s6)
                  srai         s2, t4, 21
                  addi         s6, s6, 48
                  xor          a0, a6, a7
                  sub          s8, ra, a1
                  xor          s1, s8, a3
                  ori          s5, s7, -2001
99:               addi x5, x25, 1
99:               jalr x5, x5, 0
sub_1:            sub          t1, ra, t5
                  andi         a2, ra, -665
                  add          s8, t0, s4
                  sltiu        s10, a3, -507
                  addi         s6, s6, -56
                  sw           s9, 4(s6)
                  slli         s7, s1, 3
sub_1_7:          jal          s9, 13f
0:                jal          ra, 17f
1:                jal          t1, 15f
2:                jal          ra, 7f
3:                jal          ra, 14f
4:                jal          a5, 5f
5:                jal          t4, 6f
6:                jal          ra, 16f
7:                jal          s10, 3b
8:                jal          ra, 18f
9:                jal          ra, 11f
10:               jal          t1, 8b
11:               jal          ra, 4b
12:               jal          s2, 19f
13:               jal          ra, 0b
14:               jal          ra, 1b
15:               jal          ra, 20f
16:               jal          ra, 10b
17:               jal          ra, 12b
18:               jal          ra, 2b
19:               jal          t1, 9b
20:               xor          s1, zero, s7
sub_1_3:          jal          s9, 21f
0:                jal          t1, 17f
1:                jal          ra, 4f
2:                jal          t1, 10f
3:                jal          t0, 1b
4:                jal          ra, 12f
5:                jal          ra, 23f
6:                jal          t1, 15f
7:                jal          ra, 27f
8:                jal          ra, 0b
9:                jal          t1, 28f
10:               jal          ra, 9b
11:               jal          a0, 5b
12:               jal          ra, 16f
13:               jal          ra, 26f
14:               jal          ra, 20f
15:               jal          s9, 13b
16:               jal          ra, 11b
17:               jal          ra, 14b
18:               jal          ra, 24f
19:               jal          t6, 29f
20:               jal          ra, 30f
21:               jal          ra, 25f
22:               jal          t1, 6b
23:               jal          a3, 8b
24:               jal          ra, 19b
25:               jal          ra, 22b
26:               jal          ra, 2b
27:               jal          ra, 18b
28:               jal          t1, 7b
29:               jal          ra, 3b
30:               addi         a5, t2, 115
sub_1_0:          jal          s9, 8f
0:                jal          ra, 6f
1:                jal          ra, 17f
2:                jal          t1, 20f
3:                jal          t1, 0b
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          t0, 23f
7:                jal          a1, 16f
8:                jal          ra, 15f
9:                jal          t0, 21f
10:               jal          ra, 12f
11:               jal          ra, 3b
12:               jal          t0, 7b
13:               jal          ra, 22f
14:               jal          s2, 18f
15:               jal          ra, 1b
16:               jal          ra, 9b
17:               jal          ra, 14b
18:               jal          ra, 19f
19:               jal          ra, 2b
20:               jal          ra, 13b
21:               jal          s8, 4b
22:               jal          ra, 10b
23:               sll          a2, a7, a6
sub_1_5:          jal          s9, 1f
0:                jal          gp, 13f
1:                jal          ra, 0b
2:                jal          a7, 18f
3:                jal          t1, 9f
4:                jal          ra, 5f
5:                jal          t1, 16f
6:                jal          t1, 11f
7:                jal          t1, 3b
8:                jal          ra, 17f
9:                jal          a1, 14f
10:               jal          s2, 12f
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               jal          t1, 7b
14:               jal          ra, 10b
15:               jal          ra, 8b
16:               jal          t1, 15b
17:               jal          s2, 6b
18:               andi         s2, s6, 1144
sub_1_2:          jal          s9, 9f
0:                jal          t1, 1f
1:                jal          t0, 7f
2:                jal          ra, 11f
3:                jal          a7, 2b
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          ra, 0b
7:                jal          t1, 13f
8:                jal          ra, 12f
9:                jal          s4, 4b
10:               jal          a1, 8b
11:               jal          ra, 6b
12:               jal          t6, 5b
13:               and          s4, s8, a6
sub_1_6:          jal          s9, 8f
0:                jal          ra, 11f
1:                jal          gp, 10f
2:                jal          ra, 4f
3:                jal          gp, 14f
4:                jal          s4, 19f
5:                jal          ra, 6f
6:                jal          t1, 1b
7:                jal          t1, 18f
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          gp, 13f
11:               jal          t3, 2b
12:               jal          ra, 7b
13:               jal          t0, 0b
14:               jal          t1, 17f
15:               jal          ra, 20f
16:               jal          ra, 21f
17:               jal          ra, 16b
18:               jal          ra, 9b
19:               jal          ra, 15b
20:               jal          t2, 12b
21:               sub          gp, t6, t1
sub_1_1:          jal          s9, 11f
0:                jal          s11, 21f
1:                jal          ra, 19f
2:                jal          ra, 16f
3:                jal          ra, 14f
4:                jal          t1, 15f
5:                jal          a5, 2b
6:                jal          s11, 22f
7:                jal          ra, 23f
8:                jal          s8, 17f
9:                jal          a6, 4b
10:               jal          sp, 3b
11:               jal          s7, 12f
12:               jal          t1, 5b
13:               jal          t3, 8b
14:               jal          s9, 18f
15:               jal          a7, 20f
16:               jal          t3, 6b
17:               jal          ra, 9b
18:               jal          t1, 7b
19:               jal          ra, 13b
20:               jal          ra, 0b
21:               jal          t6, 10b
22:               jal          ra, 1b
23:               srai         a4, s10, 17
                  or           s8, s1, s0
                  sltu         a5, s3, s7
                  beq          s9, s1, 12f
                  bne          s9, zero, 5f
                  slli         t1, s0, 23
5:                srai         t4, a1, 9
                  slti         t1, s4, -456
                  xor          s7, a4, a4
                  sll          a5, ra, t2
                  nop
                  lui          a6, 112129
                  sub          s9, a2, s4
12:               sltu         t2, s7, a4
                  xori         a7, gp, 165
                  andi         a5, s5, 1658
                  slli         s4, ra, 25
                  and          s1, a6, zero
                  auipc        t4, 993642
                  or           gp, s9, s7
                  srai         t3, s10, 17
                  sll          a6, a0, a1
                  auipc        ra, 392032
                  slti         a7, t5, -1817
                  bge          t3, s6, 34f
                  xori         gp, s5, 1219
                  bne          a1, sp, 40f
                  nop
                  bgeu         gp, s4, 38f
                  blt          s2, t5, 31f
                  xor          s5, s2, a7
                  bne          ra, s3, 41f
31:               bgeu         tp, t5, 33f
                  sll          s2, s3, a3
33:               sltiu        a6, t0, -1147
34:               slti         sp, t3, -1961
                  srli         a5, s8, 5
                  xori         s2, s9, -1123
                  slli         s7, t2, 21
38:               bne          s3, a1, 50f
                  sltu         a5, s6, s3
40:               sra          gp, ra, t1
41:               slli         a5, s8, 8
                  srl          a5, s1, s10
                  nop
                  bne          sp, tp, 59f
                  xori         t1, ra, -14
                  slt          t2, s1, s3
                  slli         a7, a5, 26
                  sltiu        a4, a6, 614
                  beq          zero, a0, 55f
50:               lui          a2, 621158
                  sra          a1, s10, a5
                  blt          gp, a6, 60f
                  sub          gp, s10, a6
                  srai         t6, ra, 0
55:               auipc        s8, 242762
                  sub          s4, a1, s9
                  addi         s4, tp, -1626
                  slt          zero, a7, a0
59:               lui          gp, 1026437
60:               xori         a3, s4, 575
                  srai         s1, s8, 4
                  bgeu         t4, a7, 72f
                  lui          ra, 307671
                  bgeu         a1, s10, 68f
                  and          ra, t5, a6
                  bne          s10, s6, 83f
                  sltu         a7, sp, a0
68:               srli         a7, s0, 31
                  bne          zero, gp, 86f
                  andi         a4, t6, 2036
                  bne          a5, s3, 85f
72:               and          s9, a0, t6
                  slti         a1, s5, -1078
                  blt          s3, a1, 90f
                  nop
                  slt          a5, t1, t0
                  lui          a5, 935312
                  bge          t6, a1, 96f
                  auipc        s8, 59036
                  srli         a3, s4, 20
                  sub          zero, zero, a5
                  lui          t4, 435937
83:               srl          zero, a6, s0
                  slti         t3, s7, 1922
85:               srai         sp, a5, 12
86:               nop
                  ori          t5, a7, -1674
                  auipc        t5, 750023
                  sub          t2, t0, s10
90:               ori          s9, s8, 1240
                  sra          a2, tp, sp
                  add          sp, a6, s5
                  slt          gp, s0, a7
                  bgeu         s10, s1, 104f
                  srli         t4, zero, 13
96:               xori         a2, a4, -373
                  slli         a4, a6, 14
                  bne          ra, gp, 113f
                  auipc        a1, 6882
                  ori          s7, tp, -1054
                  nop
                  sll          s7, a6, zero
                  slli         t3, a2, 1
104:              xor          a1, t6, sp
                  bgeu         a6, s11, 118f
                  sub          t1, tp, a5
                  lui          a3, 581861
                  auipc        s3, 895630
                  sub          t3, s7, t0
                  sltu         s3, gp, s1
                  bne          t2, a2, 130f
                  add          s5, tp, t0
113:              add          s1, a1, a2
                  andi         sp, ra, 1528
                  nop
                  sra          ra, s10, s4
sub_1_4:          jal          s9, 11f
0:                jal          ra, 8f
1:                jal          ra, 13f
2:                jal          ra, 0b
3:                jal          t1, 10f
4:                jal          t5, 18f
5:                jal          t0, 3b
6:                jal          ra, 16f
7:                jal          a3, 1b
8:                jal          gp, 6b
9:                jal          ra, 14f
10:               jal          ra, 9b
11:               jal          ra, 4b
12:               jal          gp, 20f
13:               jal          ra, 21f
14:               jal          sp, 17f
15:               jal          ra, 12b
16:               jal          ra, 19f
17:               jal          ra, 2b
18:               jal          ra, 15b
19:               jal          ra, 7b
20:               jal          a1, 5b
21:               sra          a6, t2, t0
                  srli         s2, s6, 20
118:              bne          a5, gp, 131f
                  ori          a3, s7, -331
                  lui          gp, 877936
                  sll          a6, t2, zero
                  add          t0, t4, s10
                  bgeu         t2, gp, 141f
                  sltiu        t0, s9, 1976
                  lui          a5, 995821
                  and          zero, s7, t5
                  sltiu        ra, s5, -720
                  xori         a2, t2, -896
                  lui          a3, 25349
130:              lui          s5, 21008
131:              sltu         a2, s8, t4
                  bgeu         t3, s7, 137f
                  sltiu        a1, a0, -954
                  ori          zero, a4, -42
                  andi         sp, gp, 211
                  xori         t3, t6, 186
137:              lui          zero, 555526
                  and          a1, a6, t3
                  srai         t0, zero, 28
                  srai         a0, t0, 14
141:              bge          a6, s2, 146f
                  srai         s10, sp, 28
                  and          s5, s10, a5
                  or           s8, t2, a1
                  sltu         s7, s11, s0
146:              srl          s8, a7, a0
                  bltu         s11, s0, 158f
                  beq          s0, a1, 152f
                  srai         s2, a4, 30
                  blt          a0, a2, 155f
                  slli         sp, a1, 1
152:              or           ra, a2, a2
                  and          a3, tp, ra
                  andi         t6, s0, -1626
155:              add          t2, t5, ra
                  andi         s1, a2, 1932
                  srai         a3, s5, 8
158:              auipc        a0, 904229
                  add          ra, t0, t5
                  addi         a1, s4, 915
                  beq          sp, t5, 178f
                  xori         t0, t5, 1213
                  andi         t0, a2, 1169
                  beq          s0, t1, 175f
                  lui          a4, 137107
                  sra          ra, ra, s11
                  blt          a7, t0, 177f
                  auipc        t1, 1013692
                  srli         a3, t4, 24
                  bge          a4, s11, 185f
                  slli         t6, s2, 17
                  nop
                  blt          a2, s5, 177f
                  auipc        a1, 575539
175:              srl          a6, t6, a5
                  auipc        a3, 490805
177:              srl          a5, a1, s5
178:              sltiu        sp, s0, -715
                  ori          s2, a6, -1958
                  bltu         s7, s6, 185f
                  srli         a6, t6, 1
                  ori          s5, s6, -1894
                  beq          gp, s4, 198f
                  slli         t3, gp, 16
185:              slli         zero, sp, 0
                  beq          a3, t5, 201f
                  sltiu        s8, t1, 906
                  srai         sp, a4, 16
                  sltu         t6, a0, t5
                  nop
                  bne          t2, a2, 193f
                  sll          ra, t6, sp
193:              sltiu        a4, s3, 442
                  beq          s8, a6, 198f
                  and          a0, a0, t5
                  andi         s8, gp, -562
                  srai         zero, t4, 26
198:              and          s1, s1, a0
                  beq          s10, s11, 210f
                  slli         s2, s8, 30
201:              slt          zero, s7, s2
                  srli         t2, a1, 3
                  or           s7, a7, s0
                  sll          s10, a4, a1
                  ori          s3, t4, -711
                  sra          s2, t5, a6
                  andi         a3, a1, 1601
                  xori         s11, s3, 975
                  add          a1, t1, s6
210:              sll          a0, a6, zero
                  srli         t1, t2, 17
                  slli         ra, a0, 15
                  add          s2, s0, s5
                  bgeu         a2, s11, 220f
                  add          s2, s1, zero
                  and          s10, t6, t5
                  beq          t6, t5, 236f
                  sub          s7, t2, gp
                  andi         zero, zero, -268
220:              add          a1, s3, t5
                  auipc        s4, 765142
                  blt          t3, a4, 224f
                  bgeu         s6, s3, 241f
224:              srai         t1, s2, 12
                  andi         ra, t3, -1892
                  sll          a4, s9, t0
                  and          s1, t2, t6
                  bne          a5, t3, 233f
                  xori         s2, s1, -1112
                  sltiu        s5, a7, 179
                  xor          t1, t4, s8
                  sra          s9, t6, t3
233:              sltiu        s11, s7, 244
                  slti         ra, a7, 1561
                  andi         a5, t2, 1459
236:              ori          t6, t2, -1955
                  and          a3, t4, s5
                  nop
                  xori         s10, s5, 384
                  sub          s4, t6, s4
241:              srai         gp, s5, 1
                  bne          s4, t2, 245f
                  xori         t6, a4, 1791
                  slti         a1, s0, 1074
                  slli         s10, a7, 2
                  nop
                  bge          s11, gp, sub_1_j4 #branch to jump instr
                  or           a0, s6, ra
                  srl          s11, s4, a4
                  or           sp, t2, s2
                  xori         s3, a2, -78
sub_1_j4:         jal          s9, sub_4 #jump sub_1 -> sub_4
                  and          a7, s6, t5
                  ori          s11, a1, -1274
245:              srai         gp, sp, 26
                  sll          t5, s5, t6
                  ori          s5, t1, -781
                  slli         a0, a1, 20
                  srl          ra, a1, t1
                  beq          t0, s0, 264f
                  sra          t5, a4, s1
                  sltu         s10, s5, s4
                  andi         a5, s0, 752
                  bne          t3, s0, 272f
                  bgeu         a3, s6, 268f
                  bne          t1, a7, 269f
                  blt          a6, ra, 268f
                  slli         a3, zero, 4
                  sra          s8, ra, s10
                  andi         a5, a5, -432
                  bltu         a4, s5, 278f
                  or           zero, tp, t3
                  and          zero, t2, s8
264:              addi         s3, a0, 1107
                  bne          t6, a6, 281f
                  srli         s11, t6, 28
                  xori         s2, s11, -284
268:              slli         t4, s11, 26
269:              srli         t5, a2, 29
                  addi         a5, s9, -352
                  or           sp, s10, t5
272:              blt          t6, s6, 282f
                  bge          t5, gp, 284f
                  sltiu        s9, tp, 586
                  beq          s10, s6, 285f
                  slt          a4, s4, t3
                  xori         a0, a3, 1825
278:              add          a7, s8, s8
                  lui          t1, 427612
                  sltu         sp, a6, t0
281:              sll          t0, s6, t0
282:              srli         a0, a2, 31
                  blt          a5, s3, 288f
284:              andi         a3, a5, -1190
285:              blt          a7, s2, 297f
                  bltu         a4, a6, 294f
                  and          s10, a3, s8
288:              sra          s10, tp, a0
                  and          a6, s4, gp
                  sltiu        t3, s0, -1430
                  srli         s7, t5, 30
                  addi         a3, t2, 1605
                  auipc        s9, 409816
294:              sll          t3, gp, a7
                  or           zero, t2, s2
                  addi         a4, t5, 910
297:              xor          sp, s7, t6
                  sub          a2, a3, s4
                  slti         a3, s0, -286
                  slti         s10, t5, 986
                  sub          s5, t2, t1
                  lui          t4, 1039374
                  xori         a5, s5, -1930
                  xor          a2, a2, a0
                  bltu         sp, s1, 322f
                  sll          t3, a6, gp
                  lui          s3, 818462
                  slti         sp, a4, 521
                  auipc        t3, 130106
                  nop
                  xori         s3, s0, -431
                  slti         a5, a7, 1431
                  or           s4, a7, t6
                  or           s5, s5, t5
                  sll          s11, s7, s9
                  nop
                  slli         t5, a3, 31
                  bltu         ra, a7, 323f
                  xori         s7, a3, 529
                  slt          t5, s6, t5
                  ori          a4, s8, 1360
322:              xor          s3, s10, s5
323:              nop
                  addi         ra, sp, 424
                  lui          s5, 777186
                  srai         t5, a3, 11
                  srl          a2, t3, t2
                  addi         ra, s3, 1034
                  or           t4, a5, a0
                  bne          a1, s11, 335f
                  and          s11, a7, s5
                  sra          t0, a4, tp
                  xor          s4, a5, a4
                  beq          a3, a1, 338f
335:              add          t3, a3, s7
                  beq          zero, s11, 353f
                  blt          s1, gp, 347f
338:              slti         s9, s2, 787
                  sub          s10, ra, s6
                  srl          a5, t5, tp
                  slli         t1, t1, 12
                  srai         s7, t6, 10
                  xor          s11, t2, zero
                  sra          t1, s1, a3
                  bne          s4, t3, 356f
                  xor          s9, s0, a2
347:              slt          ra, a6, zero
                  sub          s3, s6, tp
                  srai         zero, s2, 15
                  sra          s3, zero, s7
                  add          s7, a2, s0
                  sub          a5, s3, a6
353:              add          t6, ra, a3
                  xor          t3, s3, t0
                  bge          s10, a5, 370f
356:              blt          a5, s9, 368f
                  srli         t2, s5, 11
                  or           t5, a5, a7
                  bge          s10, a2, 377f
                  nop
                  nop
                  sltiu        s9, s11, 997
                  sltu         a1, a1, s4
                  slli         t4, t5, 11
                  xor          a7, a7, t3
                  bgeu         s10, s2, 382f
                  auipc        a7, 964157
368:              sll          a2, t4, s3
                  srai         s11, a2, 23
370:              auipc        a7, 884903
                  auipc        s10, 258912
                  bge          s0, s7, 374f
                  or           t6, zero, a4
374:              bltu         t4, ra, 388f
                  add          s8, t0, t0
                  lui          a7, 344
377:              auipc        t6, 755900
                  beq          s5, a5, 393f
                  sll          a2, s4, a6
                  slti         s4, s3, -73
                  srl          zero, a2, gp
382:              slti         sp, tp, 1213
                  auipc        t2, 45862
                  bltu         a0, t6, 402f
                  sll          s5, t1, s10
                  auipc        t3, 849672
                  sll          a2, a0, gp
388:              srl          gp, gp, s1
                  or           t6, s2, s3
                  xor          t4, s0, s4
                  bltu         t3, t6, 399f
                  add          t5, t6, zero
393:              sltiu        gp, a5, 1517
                  bne          a4, tp, 407f
                  srl          s8, t3, s1
                  sub          a0, a0, a7
                  sll          s4, s11, t6
                  srl          t2, s6, s11
399:              srli         s9, s0, 2
                  slt          a1, s2, gp
                  slt          t1, a6, t5
402:              sll          s7, gp, s2
                  auipc        t4, 18614
                  lui          ra, 703458
                  sltu         a2, s5, s7
                  sub          s5, zero, t2
407:              bne          t6, s0, 410f
                  srl          t2, s1, a5
                  auipc        a2, 440891
410:              srl          a1, s1, s7
                  andi         a7, tp, 203
                  and          s1, s2, s11
                  srl          s8, zero, s4
                  srli         s3, t5, 14
                  bgeu         a4, gp, 422f
                  srli         a3, zero, 31
                  srli         s7, t5, 24
                  xor          zero, s6, a6
                  xor          s2, a3, a5
                  srl          s4, tp, a5
                  srl          s11, a7, s4
422:              slti         t6, s8, 855
                  nop
                  lw           s9, 4(s6)
                  sll          a3, sp, ra
                  and          a6, t1, s6
                  slti         t6, s2, 1648
                  addi         s6, s6, 56
                  or           t0, s5, t0
                  auipc        s1, 359974
633:              addi x5, x25, 0
633:              jalr x5, x5, 0
sub_4:            xor          s8, a0, ra
                  addi         s6, s6, -28
                  sw           s9, 4(s6)
                  srli         s10, t2, 17
                  xor          s1, gp, gp
                  srai         s10, s4, 18
                  srli         a3, t0, 7
                  ori          a5, t4, 824
                  sub          s1, a1, t0
                  sltiu        t6, s4, 1548
                  ori          s7, s1, -1968
                  addi         a2, gp, -857
                  sub          s3, s2, s10
                  bge          t5, a0, sub_4_j6 #branch to jump instr
                  srai         s10, t1, 30
                  sltiu        s10, a5, -1086
sub_4_j6:         jal          s9, sub_5 #jump sub_4 -> sub_5
sub_4_0:          jal          s9, 0f
0:                jal          ra, 5f
1:                jal          ra, 16f
2:                jal          t3, 14f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          t1, 7f
6:                jal          t1, 15f
7:                jal          ra, 8f
8:                jal          t6, 13f
9:                jal          t0, 10f
10:               jal          s7, 2b
11:               jal          ra, 12f
12:               jal          t1, 4b
13:               jal          ra, 3b
14:               jal          s11, 18f
15:               jal          ra, 9b
16:               jal          ra, 19f
17:               jal          s11, 1b
18:               jal          ra, 17b
19:               addi         t3, sp, 145
sub_4_1:          jal          s9, 3f
0:                jal          ra, 2f
1:                jal          a3, 13f
2:                jal          ra, 11f
3:                jal          gp, 6f
4:                jal          ra, 5f
5:                jal          a7, 0b
6:                jal          t6, 14f
7:                jal          t1, 16f
8:                jal          ra, 19f
9:                jal          ra, 7b
10:               jal          a5, 21f
11:               jal          s5, 20f
12:               jal          t1, 1b
13:               jal          ra, 17f
14:               jal          ra, 12b
15:               jal          s9, 9b
16:               jal          ra, 22f
17:               jal          ra, 10b
18:               jal          ra, 4b
19:               jal          ra, 15b
20:               jal          ra, 8b
21:               jal          t0, 18b
22:               srl          s8, s3, s6
                  auipc        sp, 3555
                  sub          s5, s9, s11
                  addi         s1, s11, -68
                  srai         a4, a2, 28
                  xor          a5, s1, sp
                  bltu         a7, s4, 18f
                  sub          s8, s5, s5
                  andi         t3, s9, -563
                  bge          s3, ra, 9f
9:                srai         s3, a2, 2
                  xori         s1, s0, -1211
                  sll          gp, t4, s11
                  srli         s8, t1, 2
                  beq          s8, s2, 27f
                  sltu         zero, ra, a3
                  addi         t4, zero, 1147
                  bne          s5, s7, 17f
17:               addi         t5, s4, -629
18:               xori         s8, t1, 1350
                  slti         gp, t0, 915
                  add          a3, t5, t3
                  or           sp, s3, a1
                  bltu         t2, s1, 28f
                  bgeu         a0, s6, 25f
                  sub          t5, t0, a1
25:               slti         t0, a3, 1624
                  add          a3, t3, a6
27:               sltiu        a4, s11, -1250
28:               bltu         sp, a3, 30f
                  sltiu        s11, a3, 552
30:               slti         a3, s5, -1140
                  srai         t3, t5, 14
                  slli         a6, a4, 4
                  sub          gp, s11, s7
                  sltiu        zero, a4, 1515
                  add          a5, a2, s10
                  xor          a4, t5, s7
                  andi         t2, a5, -1570
                  srli         sp, t4, 8
                  sltu         t4, t6, a6
                  sll          s1, s3, s5
                  bne          t1, t1, 57f
                  bltu         t4, s6, 57f
                  srli         t3, tp, 27
                  bgeu         gp, s8, 56f
                  srai         a0, ra, 10
                  sub          a4, tp, t5
                  slti         a5, t5, 188
                  xori         sp, s3, 848
                  beq          tp, gp, 62f
                  srli         a2, s1, 9
                  sltu         s9, s0, a0
                  bge          sp, a5, 67f
                  ori          s7, s5, 1910
                  slt          zero, t3, t0
                  or           a0, s3, sp
56:               slli         ra, a1, 24
57:               sub          t2, t5, s2
                  bgeu         t2, s3, 68f
                  sra          s11, s2, s1
                  lui          t2, 544657
                  sltu         s3, a4, t1
62:               and          zero, zero, s4
                  sltiu        a6, t4, 570
                  srai         t3, s8, 22
                  srai         t2, a4, 17
                  srai         gp, s4, 23
67:               sra          s4, zero, s9
68:               slti         a1, t3, -1751
                  andi         s3, a7, -1740
                  lui          a5, 146127
                  bge          t1, a2, 87f
                  srai         zero, s6, 26
                  xor          t1, zero, s3
                  and          t0, t0, a6
                  blt          zero, gp, 83f
                  xori         a4, a3, 1220
                  blt          a4, sp, 93f
                  sll          a0, s9, s4
                  beq          t1, s11, 92f
                  nop
                  add          a1, t3, s8
                  nop
83:               xor          a2, t5, a2
                  xor          t0, s8, a2
                  addi         s10, t1, -1560
                  blt          t6, zero, 93f
87:               sra          t6, s0, a2
                  add          t6, s6, a7
                  lui          s5, 704255
                  slli         t3, a3, 17
                  bge          zero, s8, 102f
92:               srai         s3, t0, 20
93:               bltu         a1, t6, 102f
                  slt          s9, a6, s7
                  bgeu         t5, zero, 102f
                  slli         gp, a2, 3
                  ori          s10, t5, -1805
                  la           t1, sub_5
                  add          s1, s4, t1
                  addi         t1, t1, -837
                  ori          t2, gp, -548
                  sltu         a6, t6, s5
sub_4_j7:         jalr         s9, t1, 837 #jump sub_4 -> sub_5
                  xori         t3, s8, -684
                  andi         zero, gp, 737
                  slti         a0, t6, 987
                  sltu         s5, sp, s8
                  slti         a5, t5, 2002
                  bltu         s7, a7, 102f
102:              srli         s3, t2, 19
                  lui          s8, 814750
                  addi         a1, zero, -1538
                  lw           s9, 4(s6)
                  addi         s6, s6, 28
                  sltu         a7, a7, a2
178:              addi x9, x25, 1
178:              jalr x9, x9, 0
sub_5:            or           t3, t5, ra
                  sll          ra, a1, a1
                  blt          t1, a2, sub_5_stack_p
                  slti         sp, t6, 1820
                  slt          a6, s7, t1
                  srai         a2, a4, 4
                  ori          s3, t6, -613
sub_5_stack_p:    addi         s6, s6, -52
                  sub          a2, tp, t2
                  sw           s9, 4(s6)
                  xori         t4, a5, 1263
sub_5_1:          jal          s9, 22f
0:                jal          ra, 12f
1:                jal          ra, 11f
2:                jal          gp, 1b
3:                jal          ra, 4f
4:                jal          a7, 10f
5:                jal          a1, 2b
6:                jal          ra, 5b
7:                jal          t3, 17f
8:                jal          ra, 16f
9:                jal          ra, 25f
10:               jal          ra, 8b
11:               jal          ra, 3b
12:               jal          ra, 6b
13:               jal          t0, 20f
14:               jal          t1, 24f
15:               jal          sp, 18f
16:               jal          t1, 23f
17:               jal          ra, 0b
18:               jal          ra, 19f
19:               jal          ra, 21f
20:               jal          t1, 15b
21:               jal          ra, 9b
22:               jal          s2, 7b
23:               jal          t1, 14b
24:               jal          ra, 13b
25:               nop
sub_5_2:          jal          s9, 8f
0:                jal          ra, 13f
1:                jal          ra, 14f
2:                jal          ra, 10f
3:                jal          t1, 11f
4:                jal          a7, 5f
5:                jal          ra, 3b
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          ra, 15f
10:               jal          ra, 7b
11:               jal          a7, 0b
12:               jal          ra, 2b
13:               jal          s8, 12b
14:               jal          ra, 4b
15:               and          t4, s1, zero
                  nop
                  and          a2, s9, a2
                  blt          s2, a3, 10f
                  beq          sp, t0, 17f
                  srli         s9, t1, 14
                  add          t2, t1, t2
                  sra          a5, ra, ra
                  lui          a3, 1030746
                  srli         s4, t6, 19
                  ori          sp, s3, -1657
10:               lui          a7, 749433
                  ori          s10, a6, -1914
                  blt          ra, s4, 16f
                  srl          s1, s7, a7
                  sltiu        t2, a1, -909
                  sltiu        s11, t4, -433
16:               bge          s8, t5, 27f
17:               sub          a6, t1, ra
                  slti         ra, a0, 217
                  srai         a2, s4, 26
                  or           a4, t4, s6
                  bne          s0, zero, 26f
                  auipc        a3, 745495
                  add          s7, s8, a0
                  or           sp, s5, zero
                  sltu         a4, s9, a1
26:               bgeu         s6, t4, 41f
27:               and          a1, t3, tp
                  xor          a2, zero, s9
                  srl          a2, a3, ra
                  blt          s7, s2, 33f
                  add          a1, s6, s8
                  sra          a2, t6, s9
33:               bne          sp, ra, 46f
                  sltiu        a5, t4, 762
                  bge          ra, t5, 45f
                  nop
                  or           a3, a2, s0
                  bne          ra, t2, 56f
                  sra          s9, s5, s3
                  lui          t5, 993386
41:               add          t5, s7, gp
                  sra          t0, s4, s0
                  andi         t0, s7, -2023
                  addi         t5, s11, 1450
45:               addi         sp, a5, -1436
46:               slt          s11, a6, a3
                  or           s11, tp, zero
                  beq          s0, tp, 53f
                  or           a0, s11, tp
                  and          a4, t5, t2
                  xori         s10, gp, 1822
                  srai         t1, a4, 15
53:               srl          s5, ra, s10
                  sll          t0, s7, s9
                  slt          s7, gp, sp
56:               beq          t6, a7, 76f
                  nop
                  lui          t3, 850777
                  slt          s11, tp, a5
                  add          t6, s2, a5
                  bge          s6, t5, 79f
                  blt          a5, t5, 73f
                  add          s8, s0, ra
                  addi         zero, t5, -138
                  or           s5, a3, s1
                  srl          a4, s9, a2
                  slli         sp, a1, 7
                  slli         gp, ra, 10
                  addi         ra, s10, -80
                  srli         t5, s7, 25
                  srli         t0, sp, 3
                  xori         s5, a6, -989
73:               ori          a1, a3, -1554
                  lui          a1, 544444
                  or           a6, s10, a2
76:               srai         s3, t0, 17
                  and          s7, t5, ra
                  bgeu         t2, a7, 85f
79:               addi         a6, a5, -1745
                  and          a7, gp, s8
                  bge          t4, t3, 98f
                  bge          t3, s4, 99f
                  slti         a1, a1, -1755
                  beq          tp, t0, 96f
85:               bltu         gp, t2, 92f
                  sub          t4, s7, a4
                  andi         a4, t6, -1052
                  ori          s7, t6, -260
                  bltu         s4, tp, 102f
                  lui          a6, 879735
                  slli         s7, a7, 18
92:               or           a2, sp, a1
                  bltu         s8, t4, 112f
                  addi         t3, s4, -1268
                  slli         gp, a1, 1
96:               srli         s4, s1, 15
                  blt          s5, a0, 103f
98:               xor          t1, s8, s4
99:               srli         a7, s8, 22
                  srai         s3, a0, 2
                  bne          s5, a0, 108f
102:              sll          t1, tp, s6
103:              srai         ra, t3, 6
                  auipc        a5, 395174
                  srli         t2, a2, 17
                  bgeu         s5, s9, 107f
107:              auipc        t6, 185806
108:              slli         s4, a2, 6
                  add          ra, a2, t0
                  lui          t6, 451593
                  sltiu        a0, s0, 1779
112:              and          s3, s1, s6
                  slt          a1, a5, gp
                  bgeu         s4, s6, 127f
                  or           a1, s8, s11
                  sra          ra, t0, s9
                  ori          ra, gp, -1793
                  sub          s4, s10, tp
                  bge          a2, s1, 121f
                  sltu         a3, a2, a7
121:              auipc        t3, 325384
                  xori         s7, s1, -448
                  slli         s9, s0, 2
                  and          t3, zero, t6
                  ori          s10, t6, 327
                  slt          a0, t3, a3
127:              add          ra, gp, t0
                  xor          t3, a4, s11
                  and          t3, zero, a6
                  sltiu        t2, a2, -1558
                  beq          t2, sp, 143f
                  slli         a1, zero, 0
                  bne          sp, a5, 143f
                  slti         t2, s11, -1210
                  bne          s4, a3, 151f
                  andi         a3, s7, -90
                  xori         ra, s2, -249
                  sll          t1, s0, s10
sub_5_0:          jal          s9, 0f
0:                jal          ra, 8f
1:                jal          t1, 6f
2:                jal          ra, 7f
3:                jal          ra, 1b
4:                jal          t1, 3b
5:                jal          ra, 4b
6:                jal          sp, 9f
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          a0, 10f
10:               andi         a3, a1, 1566
                  xori         s9, a5, -750
                  xor          sp, s10, s9
                  sltiu        s8, s5, 1146
                  xori         s5, tp, -1752
143:              sub          t3, t0, a7
                  sll          ra, a7, t1
                  slti         sp, t4, -2042
                  auipc        t2, 86565
                  nop
                  xor          s5, a7, a3
                  lui          a7, 928800
                  and          t5, gp, s4
151:              addi         t4, a6, -1851
                  andi         t1, a4, 743
                  srl          a0, t2, s11
                  beq          s7, a4, 156f
                  addi         ra, s11, -485
156:              sltiu        ra, t2, 915
                  sub          ra, s3, a2
                  bne          ra, s4, 174f
                  srli         s9, t6, 12
                  slti         a3, t2, -1621
                  blt          t4, t4, 169f
                  bge          s8, ra, 169f
                  or           t6, t3, s3
                  or           s11, t4, s0
                  srai         s8, s0, 27
                  xor          s7, t6, s5
                  slli         t6, s3, 14
                  sub          s2, a4, t0
169:              sltu         t3, a3, t5
                  xor          a4, ra, sp
                  bne          t6, s2, 180f
                  lui          s2, 174516
                  sub          a6, s4, t1
174:              sub          t2, a3, s6
                  and          s2, t3, s10
                  xor          a1, a5, ra
                  sll          t6, s2, t3
                  bgeu         t4, t1, 180f
                  srl          s3, gp, s10
180:              or           zero, a5, s9
                  slt          s5, s4, t6
                  lw           s9, 4(s6)
                  addi         s6, s6, 52
                  slli         a3, a7, 4
                  srli         a2, s1, 11
                  and          t4, s2, t2
                  sltiu        t4, s9, -1133
                  sub          a1, a2, s6
                  addi         gp, a1, 745
                  nop
258:              addi x6, x25, 1
258:              jalr x6, x6, 0
sub_3:            xor          a0, t4, a2
                  xor          a7, s2, tp
                  addi         s6, s6, -28
                  add          t1, s10, s1
                  add          gp, t4, t5
                  sw           s9, 4(s6)
                  slli         sp, t3, 6
sub_3_0:          jal          s9, 13f
0:                jal          t1, 9f
1:                jal          ra, 25f
2:                jal          t1, 24f
3:                jal          ra, 2b
4:                jal          t5, 22f
5:                jal          t1, 18f
6:                jal          gp, 15f
7:                jal          t0, 20f
8:                jal          s8, 21f
9:                jal          ra, 8b
10:               jal          t1, 1b
11:               jal          t0, 0b
12:               jal          ra, 23f
13:               jal          t1, 4b
14:               jal          ra, 10b
15:               jal          a3, 12b
16:               jal          a6, 19f
17:               jal          ra, 6b
18:               jal          ra, 14b
19:               jal          t1, 17b
20:               jal          t0, 11b
21:               jal          ra, 5b
22:               jal          s10, 3b
23:               jal          ra, 7b
24:               jal          a3, 16b
25:               nop
sub_3_36:         jal          s9, 2f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          t1, 10f
3:                jal          t1, 7f
4:                jal          t1, 13f
5:                jal          ra, 6f
6:                jal          t1, 0b
7:                jal          s11, 14f
8:                jal          ra, 3b
9:                jal          s8, 5b
10:               jal          ra, 11f
11:               jal          t1, 9b
12:               jal          ra, 1b
13:               jal          ra, 12b
14:               xori         a2, t3, -1518
sub_3_32:         jal          s9, 11f
0:                jal          ra, 1f
1:                jal          t1, 4f
2:                jal          sp, 3f
3:                jal          t1, 17f
4:                jal          ra, 27f
5:                jal          t4, 13f
6:                jal          a2, 18f
7:                jal          a3, 5b
8:                jal          ra, 22f
9:                jal          t1, 10f
10:               jal          ra, 6b
11:               jal          s3, 7b
12:               jal          ra, 24f
13:               jal          t1, 8b
14:               jal          ra, 25f
15:               jal          ra, 20f
16:               jal          t1, 19f
17:               jal          ra, 21f
18:               jal          ra, 15b
19:               jal          s7, 9b
20:               jal          t1, 23f
21:               jal          sp, 0b
22:               jal          ra, 14b
23:               jal          ra, 26f
24:               jal          ra, 16b
25:               jal          ra, 12b
26:               jal          t1, 2b
27:               slti         a2, s1, -1252
sub_3_23:         jal          s9, 4f
0:                jal          ra, 8f
1:                jal          sp, 0b
2:                jal          sp, 22f
3:                jal          t1, 18f
4:                jal          t1, 1b
5:                jal          t1, 14f
6:                jal          a6, 13f
7:                jal          s3, 10f
8:                jal          ra, 15f
9:                jal          t1, 2b
10:               jal          ra, 21f
11:               jal          ra, 26f
12:               jal          s9, 5b
13:               jal          a3, 12b
14:               jal          ra, 7b
15:               jal          ra, 9b
16:               jal          ra, 3b
17:               jal          ra, 16b
18:               jal          t1, 23f
19:               jal          t1, 17b
20:               jal          ra, 19b
21:               jal          t1, 24f
22:               jal          t1, 20b
23:               jal          t1, 6b
24:               jal          ra, 25f
25:               jal          ra, 11b
26:               sltu         ra, tp, t3
sub_3_6:          jal          s9, 1f
0:                jal          ra, 8f
1:                jal          a0, 14f
2:                jal          sp, 5f
3:                jal          t1, 0b
4:                jal          s9, 7f
5:                jal          t1, 4b
6:                jal          ra, 15f
7:                jal          ra, 12f
8:                jal          ra, 2b
9:                jal          a1, 11f
10:               jal          ra, 3b
11:               jal          ra, 10b
12:               jal          t1, 13f
13:               jal          a6, 6b
14:               jal          t1, 9b
15:               or           ra, s3, a6
sub_3_1:          jal          s9, 0f
0:                jal          a5, 3f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          gp, 1b
4:                jal          ra, 6f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          t1, 4b
8:                jal          t1, 7b
9:                jal          ra, 2b
10:               srai         s2, t3, 10
sub_3_7:          jal          s9, 13f
0:                jal          ra, 4f
1:                jal          t1, 9f
2:                jal          s9, 10f
3:                jal          t1, 14f
4:                jal          ra, 19f
5:                jal          s4, 8f
6:                jal          ra, 1b
7:                jal          ra, 11f
8:                jal          t1, 6b
9:                jal          ra, 15f
10:               jal          sp, 16f
11:               jal          ra, 17f
12:               jal          t1, 5b
13:               jal          t1, 2b
14:               jal          a5, 0b
15:               jal          s5, 3b
16:               jal          ra, 18f
17:               jal          ra, 12b
18:               jal          ra, 7b
19:               nop
sub_3_26:         jal          s9, 3f
0:                jal          a1, 13f
1:                jal          ra, 18f
2:                jal          t1, 0b
3:                jal          a6, 16f
4:                jal          ra, 2b
5:                jal          a1, 7f
6:                jal          ra, 4b
7:                jal          ra, 14f
8:                jal          ra, 15f
9:                jal          sp, 1b
10:               jal          sp, 17f
11:               jal          t1, 6b
12:               jal          ra, 9b
13:               jal          s9, 8b
14:               jal          ra, 11b
15:               jal          ra, 19f
16:               jal          ra, 12b
17:               jal          t1, 5b
18:               jal          ra, 10b
19:               or           s5, s8, s5
sub_3_20:         jal          s9, 5f
0:                jal          t1, 12f
1:                jal          ra, 8f
2:                jal          ra, 3f
3:                jal          sp, 9f
4:                jal          t1, 24f
5:                jal          ra, 20f
6:                jal          t1, 13f
7:                jal          t1, 25f
8:                jal          t1, 15f
9:                jal          ra, 1b
10:               jal          a4, 21f
11:               jal          t0, 6b
12:               jal          s7, 23f
13:               jal          ra, 14f
14:               jal          t6, 16f
15:               jal          a6, 18f
16:               jal          t0, 0b
17:               jal          t1, 4b
18:               jal          ra, 10b
19:               jal          t1, 7b
20:               jal          ra, 2b
21:               jal          ra, 17b
22:               jal          ra, 19b
23:               jal          ra, 22b
24:               jal          ra, 11b
25:               lui          a6, 330793
sub_3_33:         jal          s9, 14f
0:                jal          ra, 4f
1:                jal          ra, 12f
2:                jal          ra, 15f
3:                jal          s1, 9f
4:                jal          t6, 13f
5:                jal          gp, 6f
6:                jal          a4, 1b
7:                jal          gp, 16f
8:                jal          ra, 17f
9:                jal          ra, 11f
10:               jal          sp, 5b
11:               jal          ra, 19f
12:               jal          t1, 20f
13:               jal          t5, 18f
14:               jal          ra, 21f
15:               jal          ra, 23f
16:               jal          ra, 24f
17:               jal          ra, 2b
18:               jal          s11, 22f
19:               jal          ra, 0b
20:               jal          ra, 7b
21:               jal          ra, 8b
22:               jal          gp, 10b
23:               jal          ra, 3b
24:               sltu         t0, s11, s9
sub_3_22:         jal          s9, 2f
0:                jal          ra, 22f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          ra, 16f
4:                jal          s4, 19f
5:                jal          sp, 13f
6:                jal          ra, 3b
7:                jal          s9, 21f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          a4, 14f
11:               jal          gp, 17f
12:               jal          ra, 9b
13:               jal          t5, 20f
14:               jal          t1, 23f
15:               jal          ra, 18f
16:               jal          s10, 7b
17:               jal          ra, 6b
18:               jal          ra, 10b
19:               jal          t1, 15b
20:               jal          t1, 11b
21:               jal          ra, 4b
22:               jal          t1, 12b
23:               slli         s1, ra, 31
sub_3_27:         jal          s9, 6f
0:                jal          ra, 15f
1:                jal          a6, 19f
2:                jal          t1, 0b
3:                jal          ra, 8f
4:                jal          ra, 2b
5:                jal          t5, 9f
6:                jal          a7, 7f
7:                jal          ra, 5b
8:                jal          t6, 11f
9:                jal          ra, 13f
10:               jal          ra, 16f
11:               jal          s3, 1b
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               jal          t1, 12b
15:               jal          ra, 17f
16:               jal          s8, 18f
17:               jal          gp, 3b
18:               jal          ra, 14b
19:               nop
sub_3_17:         jal          s9, 6f
0:                jal          sp, 27f
1:                jal          t1, 7f
2:                jal          t1, 0b
3:                jal          t6, 24f
4:                jal          t1, 19f
5:                jal          t1, 18f
6:                jal          s2, 25f
7:                jal          gp, 29f
8:                jal          t1, 16f
9:                jal          a5, 5b
10:               jal          ra, 17f
11:               jal          ra, 1b
12:               jal          ra, 21f
13:               jal          t1, 28f
14:               jal          ra, 26f
15:               jal          ra, 2b
16:               jal          s1, 20f
17:               jal          ra, 13b
18:               jal          t1, 14b
19:               jal          a7, 10b
20:               jal          t1, 4b
21:               jal          t1, 11b
22:               jal          ra, 8b
23:               jal          t1, 9b
24:               jal          a5, 22b
25:               jal          ra, 23b
26:               jal          sp, 3b
27:               jal          t4, 12b
28:               jal          ra, 15b
29:               xor          zero, s7, sp
sub_3_24:         jal          s9, 26f
0:                jal          ra, 9f
1:                jal          ra, 13f
2:                jal          t1, 22f
3:                jal          ra, 5f
4:                jal          ra, 2b
5:                jal          ra, 15f
6:                jal          s7, 4b
7:                jal          ra, 19f
8:                jal          ra, 20f
9:                jal          ra, 10f
10:               jal          ra, 24f
11:               jal          ra, 0b
12:               jal          ra, 8b
13:               jal          a7, 6b
14:               jal          ra, 21f
15:               jal          ra, 12b
16:               jal          t1, 27f
17:               jal          ra, 11b
18:               jal          ra, 3b
19:               jal          t1, 14b
20:               jal          ra, 7b
21:               jal          ra, 25f
22:               jal          t1, 23f
23:               jal          t1, 18b
24:               jal          ra, 1b
25:               jal          ra, 16b
26:               jal          ra, 17b
27:               and          t6, s3, t6
sub_3_5:          jal          s9, 2f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          t1, 0b
3:                jal          s5, 9f
4:                jal          ra, 6f
5:                jal          t1, 1b
6:                jal          a6, 8f
7:                jal          ra, 10f
8:                jal          t1, 5b
9:                jal          t1, 7b
10:               addi         t1, gp, -1202
sub_3_3:          jal          s9, 18f
0:                jal          t1, 3f
1:                jal          t1, 9f
2:                jal          s1, 11f
3:                jal          ra, 17f
4:                jal          ra, 1b
5:                jal          t1, 10f
6:                jal          s9, 16f
7:                jal          ra, 4b
8:                jal          t1, 24f
9:                jal          t0, 20f
10:               jal          t1, 13f
11:               jal          ra, 23f
12:               jal          s1, 0b
13:               jal          ra, 14f
14:               jal          ra, 8b
15:               jal          ra, 7b
16:               jal          ra, 12b
17:               jal          t1, 28f
18:               jal          ra, 2b
19:               jal          ra, 26f
20:               jal          t1, 27f
21:               jal          ra, 5b
22:               jal          ra, 6b
23:               jal          t1, 21b
24:               jal          t1, 22b
25:               jal          gp, 29f
26:               jal          ra, 15b
27:               jal          t0, 25b
28:               jal          ra, 19b
29:               xor          sp, a2, s9
sub_3_31:         jal          s9, 12f
0:                jal          t3, 13f
1:                jal          ra, 5f
2:                jal          ra, 8f
3:                jal          t1, 1b
4:                jal          ra, 9f
5:                jal          s5, 4b
6:                jal          t1, 7f
7:                jal          ra, 11f
8:                jal          t1, 0b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          gp, 3b
12:               jal          s2, 6b
13:               add          t0, t6, s0
sub_3_43:         jal          s9, 7f
0:                jal          t3, 6f
1:                jal          ra, 8f
2:                jal          a5, 9f
3:                jal          t1, 5f
4:                jal          ra, 3b
5:                jal          a7, 11f
6:                jal          ra, 13f
7:                jal          s4, 4b
8:                jal          t0, 10f
9:                jal          ra, 12f
10:               jal          gp, 0b
11:               jal          sp, 2b
12:               jal          ra, 1b
13:               nop
sub_3_37:         jal          s9, 8f
0:                jal          t1, 13f
1:                jal          t0, 21f
2:                jal          t1, 1b
3:                jal          t0, 0b
4:                jal          a5, 26f
5:                jal          ra, 20f
6:                jal          s11, 15f
7:                jal          a1, 9f
8:                jal          ra, 7b
9:                jal          ra, 2b
10:               jal          ra, 3b
11:               jal          sp, 25f
12:               jal          ra, 10b
13:               jal          ra, 18f
14:               jal          sp, 12b
15:               jal          t1, 23f
16:               jal          t3, 24f
17:               jal          ra, 27f
18:               jal          s5, 17b
19:               jal          ra, 28f
20:               jal          t1, 22f
21:               jal          t2, 4b
22:               jal          a0, 16b
23:               jal          t1, 5b
24:               jal          s11, 11b
25:               jal          t1, 19b
26:               jal          s1, 14b
27:               jal          a7, 6b
28:               lui          a2, 47821
sub_3_12:         jal          s9, 2f
0:                jal          ra, 9f
1:                jal          ra, 4f
2:                jal          gp, 1b
3:                jal          t6, 5f
4:                jal          ra, 3b
5:                jal          s10, 0b
6:                jal          ra, 10f
7:                jal          ra, 11f
8:                jal          ra, 6b
9:                jal          ra, 8b
10:               jal          ra, 7b
11:               srl          sp, t0, t6
sub_3_10:         jal          s9, 13f
0:                jal          a1, 22f
1:                jal          ra, 21f
2:                jal          ra, 23f
3:                jal          t1, 7f
4:                jal          gp, 3b
5:                jal          ra, 14f
6:                jal          t6, 11f
7:                jal          ra, 2b
8:                jal          ra, 4b
9:                jal          ra, 1b
10:               jal          ra, 25f
11:               jal          ra, 17f
12:               jal          a4, 19f
13:               jal          ra, 18f
14:               jal          ra, 0b
15:               jal          sp, 9b
16:               jal          t1, 12b
17:               jal          t0, 20f
18:               jal          ra, 5b
19:               jal          t1, 8b
20:               jal          a0, 24f
21:               jal          ra, 6b
22:               jal          ra, 16b
23:               jal          ra, 15b
24:               jal          ra, 10b
25:               srai         s7, s4, 26
sub_3_15:         jal          s9, 16f
0:                jal          ra, 15f
1:                jal          ra, 10f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          t1, 13f
5:                jal          s7, 2b
6:                jal          ra, 5b
7:                jal          a3, 14f
8:                jal          t3, 4b
9:                jal          s11, 22f
10:               jal          t1, 20f
11:               jal          t1, 17f
12:               jal          ra, 6b
13:               jal          ra, 12b
14:               jal          t1, 18f
15:               jal          sp, 23f
16:               jal          gp, 19f
17:               jal          t1, 1b
18:               jal          s5, 9b
19:               jal          t1, 11b
20:               jal          t1, 8b
21:               jal          t1, 0b
22:               jal          ra, 21b
23:               andi         s8, t0, -627
sub_3_19:         jal          s9, 10f
0:                jal          t0, 5f
1:                jal          ra, 16f
2:                jal          t2, 4f
3:                jal          t1, 9f
4:                jal          t1, 18f
5:                jal          ra, 3b
6:                jal          s7, 7f
7:                jal          s11, 13f
8:                jal          ra, 12f
9:                jal          t1, 15f
10:               jal          a0, 8b
11:               jal          ra, 6b
12:               jal          ra, 1b
13:               jal          a3, 0b
14:               jal          a5, 11b
15:               jal          ra, 2b
16:               jal          s9, 17f
17:               jal          t1, 14b
18:               srl          zero, s1, s4
sub_3_42:         jal          s9, 19f
0:                jal          ra, 24f
1:                jal          ra, 9f
2:                jal          s1, 15f
3:                jal          t5, 20f
4:                jal          t5, 17f
5:                jal          gp, 16f
6:                jal          t1, 7f
7:                jal          ra, 22f
8:                jal          ra, 23f
9:                jal          ra, 6b
10:               jal          ra, 14f
11:               jal          ra, 12f
12:               jal          ra, 1b
13:               jal          s1, 3b
14:               jal          t1, 4b
15:               jal          ra, 11b
16:               jal          t1, 2b
17:               jal          t2, 5b
18:               jal          sp, 13b
19:               jal          t1, 21f
20:               jal          a4, 8b
21:               jal          t1, 18b
22:               jal          ra, 0b
23:               jal          s4, 10b
24:               sltu         s2, a0, s8
sub_3_18:         jal          s9, 27f
0:                jal          t1, 17f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          ra, 23f
4:                jal          ra, 26f
5:                jal          s3, 21f
6:                jal          a3, 5b
7:                jal          t1, 24f
8:                jal          ra, 22f
9:                jal          ra, 3b
10:               jal          ra, 20f
11:               jal          t1, 8b
12:               jal          ra, 1b
13:               jal          t1, 28f
14:               jal          ra, 15f
15:               jal          ra, 25f
16:               jal          ra, 13b
17:               jal          ra, 4b
18:               jal          ra, 14b
19:               jal          gp, 16b
20:               jal          t1, 18b
21:               jal          ra, 9b
22:               jal          ra, 7b
23:               jal          ra, 10b
24:               jal          ra, 29f
25:               jal          ra, 11b
26:               jal          t0, 19b
27:               jal          s2, 12b
28:               jal          ra, 6b
29:               lui          s2, 98796
sub_3_35:         jal          s9, 1f
0:                jal          a0, 9f
1:                jal          ra, 18f
2:                jal          ra, 5f
3:                jal          sp, 16f
4:                jal          t1, 10f
5:                jal          ra, 13f
6:                jal          ra, 7f
7:                jal          a2, 2b
8:                jal          ra, 19f
9:                jal          a6, 6b
10:               jal          s7, 15f
11:               jal          a5, 12f
12:               jal          ra, 4b
13:               jal          a5, 8b
14:               jal          ra, 17f
15:               jal          ra, 3b
16:               jal          t1, 0b
17:               jal          t1, 11b
18:               jal          ra, 14b
19:               andi         t1, a7, 658
sub_3_8:          jal          s9, 4f
0:                jal          ra, 11f
1:                jal          ra, 3f
2:                jal          ra, 10f
3:                jal          t3, 7f
4:                jal          ra, 6f
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          gp, 2b
8:                jal          sp, 0b
9:                jal          s11, 1b
10:               jal          ra, 8b
11:               jal          ra, 12f
12:               srl          s7, a3, a1
sub_3_39:         jal          s9, 8f
0:                jal          t1, 23f
1:                jal          t1, 13f
2:                jal          gp, 6f
3:                jal          ra, 22f
4:                jal          a7, 7f
5:                jal          t1, 21f
6:                jal          ra, 1b
7:                jal          ra, 10f
8:                jal          t3, 19f
9:                jal          s10, 0b
10:               jal          t1, 5b
11:               jal          t3, 2b
12:               jal          a6, 9b
13:               jal          ra, 4b
14:               jal          ra, 16f
15:               jal          t1, 17f
16:               jal          ra, 12b
17:               jal          t1, 3b
18:               jal          t1, 11b
19:               jal          ra, 15b
20:               jal          s4, 18b
21:               jal          a1, 14b
22:               jal          sp, 20b
23:               sra          s5, s0, a0
sub_3_40:         jal          s9, 5f
0:                jal          t1, 2f
1:                jal          gp, 6f
2:                jal          a6, 19f
3:                jal          t1, 7f
4:                jal          s9, 17f
5:                jal          ra, 0b
6:                jal          a3, 21f
7:                jal          a5, 23f
8:                jal          ra, 25f
9:                jal          s8, 3b
10:               jal          ra, 16f
11:               jal          t1, 18f
12:               jal          ra, 13f
13:               jal          t1, 14f
14:               jal          ra, 11b
15:               jal          ra, 9b
16:               jal          ra, 20f
17:               jal          ra, 8b
18:               jal          ra, 4b
19:               jal          t1, 15b
20:               jal          ra, 12b
21:               jal          s10, 22f
22:               jal          ra, 10b
23:               jal          ra, 24f
24:               jal          t1, 1b
25:               sltu         a1, s11, a0
sub_3_29:         jal          s9, 24f
0:                jal          ra, 14f
1:                jal          t0, 5f
2:                jal          ra, 4f
3:                jal          s2, 7f
4:                jal          ra, 1b
5:                jal          ra, 21f
6:                jal          t1, 23f
7:                jal          ra, 26f
8:                jal          ra, 15f
9:                jal          gp, 18f
10:               jal          t0, 2b
11:               jal          ra, 25f
12:               jal          t1, 20f
13:               jal          ra, 8b
14:               jal          ra, 11b
15:               jal          t5, 10b
16:               jal          ra, 22f
17:               jal          ra, 6b
18:               jal          ra, 0b
19:               jal          ra, 27f
20:               jal          a7, 13b
21:               jal          ra, 17b
22:               jal          ra, 9b
23:               jal          ra, 19b
24:               jal          ra, 3b
25:               jal          ra, 12b
26:               jal          ra, 16b
27:               xor          a4, s5, s0
sub_3_14:         jal          s9, 7f
0:                jal          ra, 11f
1:                jal          t1, 0b
2:                jal          ra, 3f
3:                jal          ra, 1b
4:                jal          t5, 8f
5:                jal          t1, 9f
6:                jal          ra, 5b
7:                jal          ra, 6b
8:                jal          sp, 2b
9:                jal          ra, 10f
10:               jal          a7, 4b
11:               jal          ra, 12f
12:               sub          a5, s0, sp
sub_3_30:         jal          s9, 3f
0:                jal          ra, 7f
1:                jal          ra, 12f
2:                jal          t1, 4f
3:                jal          s9, 11f
4:                jal          t4, 16f
5:                jal          ra, 15f
6:                jal          ra, 9f
7:                jal          t2, 13f
8:                jal          t1, 0b
9:                jal          t0, 8b
10:               jal          a5, 5b
11:               jal          ra, 1b
12:               jal          ra, 6b
13:               jal          ra, 10b
14:               jal          t1, 2b
15:               jal          s4, 14b
16:               and          s10, a5, s6
sub_3_34:         jal          s9, 3f
0:                jal          t1, 6f
1:                jal          ra, 5f
2:                jal          ra, 29f
3:                jal          t1, 14f
4:                jal          s2, 10f
5:                jal          sp, 19f
6:                jal          ra, 8f
7:                jal          ra, 16f
8:                jal          a5, 17f
9:                jal          ra, 23f
10:               jal          t1, 20f
11:               jal          ra, 18f
12:               jal          ra, 27f
13:               jal          t1, 12b
14:               jal          t1, 7b
15:               jal          ra, 26f
16:               jal          t0, 24f
17:               jal          a6, 13b
18:               jal          ra, 28f
19:               jal          ra, 15b
20:               jal          ra, 2b
21:               jal          ra, 11b
22:               jal          t1, 1b
23:               jal          gp, 22b
24:               jal          ra, 21b
25:               jal          s8, 9b
26:               jal          t1, 0b
27:               jal          t1, 4b
28:               jal          ra, 25b
29:               sra          ra, t3, s3
sub_3_28:         jal          s9, 6f
0:                jal          s3, 2f
1:                jal          ra, 16f
2:                jal          ra, 14f
3:                jal          s2, 20f
4:                jal          ra, 5f
5:                jal          t1, 21f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          a2, 1b
9:                jal          gp, 13f
10:               jal          gp, 17f
11:               jal          ra, 22f
12:               jal          ra, 15f
13:               jal          ra, 18f
14:               jal          ra, 11b
15:               jal          t5, 7b
16:               jal          ra, 3b
17:               jal          ra, 8b
18:               jal          t1, 19f
19:               jal          ra, 4b
20:               jal          ra, 12b
21:               jal          a2, 0b
22:               lui          t6, 403339
sub_3_16:         jal          s9, 4f
0:                jal          t1, 7f
1:                jal          ra, 10f
2:                jal          ra, 9f
3:                jal          t1, 13f
4:                jal          ra, 5f
5:                jal          t1, 2b
6:                jal          s3, 8f
7:                jal          sp, 3b
8:                jal          t0, 11f
9:                jal          ra, 12f
10:               jal          t4, 6b
11:               jal          ra, 0b
12:               jal          t1, 1b
13:               add          t1, s6, sp
sub_3_41:         jal          s9, 14f
0:                jal          ra, 16f
1:                jal          t1, 25f
2:                jal          ra, 20f
3:                jal          ra, 19f
4:                jal          ra, 22f
5:                jal          t1, 0b
6:                jal          a3, 26f
7:                jal          ra, 27f
8:                jal          ra, 1b
9:                jal          a0, 12f
10:               jal          gp, 15f
11:               jal          ra, 18f
12:               jal          ra, 4b
13:               jal          ra, 5b
14:               jal          t1, 11b
15:               jal          ra, 21f
16:               jal          t6, 10b
17:               jal          ra, 8b
18:               jal          ra, 9b
19:               jal          t1, 23f
20:               jal          t1, 3b
21:               jal          t1, 24f
22:               jal          ra, 17b
23:               jal          ra, 28f
24:               jal          a2, 2b
25:               jal          t1, 6b
26:               jal          t1, 7b
27:               jal          ra, 13b
28:               and          a3, s7, s9
                  ori          s10, t4, 1320
                  nop
                  srli         a5, a0, 25
                  xori         s10, a6, -1875
                  slti         ra, s5, 591
                  sll          s8, s9, a7
                  bne          s2, s10, 22f
                  srl          s10, t1, s5
                  sra          t5, a1, t5
                  sltiu        a5, t1, -1961
                  xori         t3, a4, 1354
                  xori         s10, t6, 132
                  addi         a2, a4, 893
                  beq          t6, s5, 18f
                  and          s10, gp, t1
                  add          ra, s8, a3
                  and          a1, t3, a4
                  lui          t1, 908995
18:               nop
                  nop
                  addi         a2, sp, -1535
                  ori          a5, s1, -294
22:               srli         a5, t5, 7
                  bltu         a7, t2, 34f
                  sub          a0, s4, t6
                  srai         s10, t3, 12
                  sub          t6, a4, t6
                  sltu         a7, sp, a1
                  lui          gp, 119358
                  nop
                  ori          t2, s7, -1163
                  sltu         s2, t5, s5
                  blt          a0, ra, 34f
                  bltu         a1, t2, 44f
34:               slli         s11, s0, 18
                  srli         t2, s10, 1
                  sltiu        a1, gp, 1190
                  sltu         a2, s4, a6
                  bge          a3, s6, 46f
                  srai         t3, t6, 24
                  beq          s7, s6, 50f
                  sra          s5, s8, s9
                  auipc        t5, 432047
                  and          gp, s8, t4
44:               ori          t4, s6, -1155
                  slti         s9, t5, -1803
46:               beq          s8, t2, 56f
                  lui          s1, 971117
                  bgeu         gp, t4, 60f
                  srai         s5, s6, 18
50:               bgeu         t6, s10, 53f
                  sll          t3, a3, s4
                  sltiu        a6, s10, 420
53:               slli         s2, sp, 10
                  xor          t2, a0, t2
                  addi         zero, a0, -1130
56:               ori          a7, t3, -1566
                  bge          s4, s3, 65f
                  slli         a7, a6, 19
                  srl          a0, tp, a5
60:               nop
                  bge          zero, s1, 65f
                  bne          s0, s11, 68f
                  slti         a1, t6, 1291
                  nop
65:               add          a4, t2, s9
                  srli         t6, s9, 16
                  bge          t5, a4, 81f
68:               srai         a7, s4, 13
                  sll          t1, a7, t6
                  slti         t1, a4, -1615
                  bgeu         t0, s3, 75f
                  sll          a5, t2, a4
                  sltu         s3, t1, t1
                  blt          s10, s11, 81f
75:               or           a6, t1, s4
                  andi         s4, s8, -1670
                  bltu         tp, t1, 82f
                  nop
                  xori         ra, s3, 483
                  or           s1, s1, s11
81:               sltu         t6, s3, s11
82:               nop
                  sra          s7, zero, s2
                  sltu         a6, ra, a7
                  lui          zero, 987263
                  slti         s8, s2, -877
                  bge          t2, t5, 107f
                  nop
                  bgeu         t2, a3, 108f
                  slli         sp, a5, 10
                  auipc        t4, 1007972
                  andi         t2, gp, 1803
                  lui          s9, 546844
                  blt          s6, t3, 97f
                  srli         s1, s3, 10
                  bge          a2, ra, 98f
97:               slt          sp, a6, s3
98:               sll          t4, s1, t4
                  and          s7, a5, t6
                  bne          s7, a0, 117f
                  slti         s10, s7, -1378
                  blt          s2, gp, 103f
103:              add          s7, s7, t1
                  nop
                  slli         a3, a0, 18
                  nop
107:              nop
108:              add          sp, s5, t2
                  addi         a5, s8, -1204
                  lui          s1, 992886
                  sll          s11, a6, sp
                  bltu         t0, a5, 118f
                  bge          s11, s0, 132f
                  add          a6, t2, tp
                  lui          a1, 309960
                  or           s4, gp, a5
117:              xori         a0, s10, 753
118:              lui          a1, 204082
                  bne          a0, ra, 138f
                  slli         t2, s10, 20
                  sra          ra, s5, gp
                  or           t2, a2, a2
                  beq          s3, a5, 133f
                  srli         a5, s4, 30
                  addi         gp, s4, -1172
                  bgeu         a1, s2, 144f
                  srai         s4, s3, 26
                  slt          t4, a5, t6
                  add          s8, gp, s8
                  and          zero, s3, s2
                  lui          s5, 870502
132:              beq          t5, t4, 135f
133:              auipc        s4, 135474
                  and          t5, a1, a0
135:              bge          s3, s11, 140f
                  xor          a2, a7, a2
                  srl          s1, s2, ra
138:              sltiu        t2, a0, -272
                  sltu         t0, sp, a2
140:              srl          a2, t0, a3
                  srl          s1, s8, s11
                  or           a6, s4, t1
                  sltu         a3, s11, s2
144:              beq          t5, t1, 151f
                  bgeu         t3, t1, 153f
                  beq          sp, s2, 152f
                  sll          s10, a0, a6
                  or           s1, t3, s8
                  add          sp, s6, t0
                  slli         s2, s9, 27
151:              xor          s4, s6, a0
152:              blt          t4, a6, 162f
153:              lui          a3, 939956
                  slt          t4, sp, a5
                  or           s4, a2, t6
                  sub          s7, gp, s4
                  lui          a7, 437394
                  bne          a1, s2, 169f
                  sll          t6, a0, a7
                  xori         s10, a2, -1419
                  bge          ra, a6, 178f
162:              slli         t5, s4, 7
                  blt          t2, zero, 183f
                  bge          a0, gp, 166f
                  xor          s8, zero, a4
166:              srl          a2, s9, a4
                  sub          s5, s11, a3
                  bne          s3, s8, 169f
169:              slt          a6, t1, s9
                  bltu         a1, s10, 175f
                  sra          t0, t4, t3
                  xor          t4, s10, t1
                  bge          sp, t5, 187f
                  srai         a5, t6, 7
175:              bge          s3, s3, 179f
                  andi         s7, zero, 2047
                  srai         s10, s2, 25
178:              auipc        a4, 360259
179:              sltu         s9, t5, t4
                  srli         s11, a5, 21
                  blt          t6, s4, 184f
                  nop
183:              sub          ra, a5, a7
184:              bge          ra, zero, 203f
                  ori          a2, s1, -471
                  bge          s0, a7, 191f
sub_3_25:         jal          s9, 1f
0:                jal          gp, 15f
1:                jal          ra, 4f
2:                jal          ra, 17f
3:                jal          t1, 9f
4:                jal          ra, 10f
5:                jal          ra, 18f
6:                jal          t1, 3b
7:                jal          ra, 11f
8:                jal          ra, 6b
9:                jal          ra, 16f
10:               jal          t1, 13f
11:               jal          t5, 8b
12:               jal          ra, 5b
13:               jal          ra, 14f
14:               jal          t1, 7b
15:               jal          ra, 2b
16:               jal          gp, 0b
17:               jal          ra, 12b
18:               auipc        ra, 975559
187:              slt          t3, t1, tp
                  srl          ra, t1, gp
                  and          gp, zero, s4
                  srai         s9, s7, 28
191:              srli         s3, gp, 10
                  sltu         s7, s2, ra
                  srai         sp, s6, 17
                  beq          s10, s4, 212f
                  slti         t0, tp, 1610
                  sll          s1, zero, t2
                  sra          t3, t6, sp
                  nop
                  sltu         a5, s5, t0
                  srl          t2, s4, s10
                  slli         a3, s3, 30
                  and          s11, s7, t5
203:              addi         t4, s10, -880
                  add          s4, ra, a1
                  or           t3, s2, s9
                  bgeu         s3, a6, 216f
                  nop
                  slli         a2, a1, 15
                  and          t3, t5, a6
                  srli         s5, a4, 18
                  bgeu         zero, s1, 216f
212:              auipc        a5, 38610
                  srai         t3, a0, 11
                  bge          a0, t4, 217f
                  sltiu        zero, s3, -1585
216:              sltu         s1, s8, a6
217:              or           t2, a2, a2
                  lui          s3, 329096
                  bge          t2, zero, 223f
                  bne          t3, s11, 230f
                  srli         t1, t6, 20
                  slli         s1, a4, 27
223:              bge          s1, t2, 226f
                  slt          a5, t5, s6
                  srl          s10, t6, a3
226:              beq          sp, s10, 228f
                  srl          a1, s9, t1
228:              xori         t4, s0, -1683
                  blt          t6, sp, 248f
230:              srli         t6, s9, 10
                  sra          ra, a0, gp
                  sltu         gp, s3, s9
                  slli         t0, t2, 11
                  xori         s2, t4, -2027
                  sltu         a3, t2, s5
                  sll          s10, zero, tp
                  slti         t1, s1, 65
                  addi         a7, t5, -499
                  andi         a1, a6, -1063
                  srl          a1, t0, s6
                  auipc        t0, 493505
                  sltu         s1, a5, sp
                  sltu         t6, ra, a6
                  ori          s3, s2, 1001
                  sub          a3, s3, t6
                  auipc        t4, 652283
                  blt          t1, a1, 253f
248:              sltu         a6, zero, tp
                  srl          t1, s6, s1
                  ori          t0, t5, -730
                  bge          s0, t5, 262f
                  addi         s11, zero, -975
253:              srl          s2, t1, a2
                  addi         t2, a3, 1172
                  bge          s0, a3, 263f
                  srl          gp, s9, t0
                  srl          s7, gp, zero
                  nop
                  auipc        a7, 904145
                  bne          s6, a5, 272f
                  ori          t2, a5, 1891
262:              blt          s2, sp, 278f
263:              addi         s9, ra, 883
                  blt          t0, s7, 283f
                  blt          a2, t0, 284f
                  slli         t6, s1, 28
                  blt          gp, s7, 281f
                  xori         zero, t6, -2026
                  andi         t3, s9, -1139
                  srai         a2, gp, 27
                  auipc        s5, 844218
272:              srl          a4, s3, t4
                  bgeu         s11, a3, 289f
                  xori         a0, s1, -2031
                  bgeu         a1, s7, 277f
                  beq          t2, s3, 286f
277:              srl          a6, gp, t1
278:              srl          t5, t2, ra
                  nop
                  ori          s2, t2, -1821
281:              srli         s2, t3, 31
                  sra          ra, a7, sp
283:              sltiu        a1, a0, 1350
284:              sra          t1, s9, s0
                  beq          s10, zero, 288f
286:              ori          a1, ra, 571
                  beq          s8, s1, 307f
288:              xor          a5, t4, s10
289:              sltu         t2, s2, a1
                  auipc        s11, 122788
                  andi         s11, a3, -888
                  andi         t1, t1, -326
                  auipc        s2, 824225
                  bltu         t1, s10, 296f
                  slli         s11, s9, 19
296:              xor          s4, t2, a1
                  and          a5, a3, a5
                  bne          a5, s0, 309f
                  and          a1, s11, gp
                  xor          a3, s7, zero
                  srl          s5, t5, a2
                  bne          s6, sp, 312f
                  nop
                  bne          s1, a1, 316f
                  lui          ra, 448282
                  sltu         gp, a3, a6
307:              sltu         a6, a4, t4
                  lui          a7, 481800
309:              sltu         t6, tp, t6
                  bne          s4, t0, 314f
                  or           s11, t6, s9
312:              addi         a3, t0, -1907
                  sub          s4, s5, s11
314:              sltu         t4, a4, a5
                  beq          a4, t1, 323f
316:              addi         ra, gp, 1094
                  and          a6, s5, t4
                  andi         s1, zero, -750
                  add          a7, s3, s7
                  srai         s2, zero, 4
                  add          ra, a0, a7
                  or           s5, s5, tp
323:              ori          s7, a1, 1566
                  addi         a7, s11, -309
                  xor          sp, t0, a1
                  addi         a3, s9, 1140
                  sltiu        t2, s2, 455
                  and          s4, s7, t2
                  andi         gp, s0, -292
                  beq          s1, a5, 336f
                  srai         a1, t4, 29
                  bne          a3, s1, 340f
                  srl          s1, tp, zero
                  srl          s1, s9, t5
                  slt          a5, t6, a3
336:              sll          s4, s11, a4
                  srli         t1, s0, 29
                  srl          a4, ra, a0
                  ori          s11, t5, -1429
340:              addi         s11, s9, -559
                  slt          a2, a4, t2
                  bgeu         t5, t5, 359f
                  or           s10, s1, t6
                  sra          t0, t3, s9
                  bge          t1, a0, 364f
                  blt          a5, a2, 365f
                  bltu         s5, s9, 352f
                  bgeu         ra, a5, 358f
                  sll          t4, a2, t5
                  auipc        s11, 888159
                  nop
352:              bge          a1, s1, 356f
                  or           ra, t5, gp
                  sltu         t2, s6, zero
                  srai         a5, a3, 27
356:              xori         s8, s4, -1188
                  auipc        ra, 494139
358:              blt          a1, s3, 359f
359:              bge          a7, t6, 362f
                  bltu         s3, s3, 365f
                  and          a4, s4, a2
362:              andi         s4, t5, 382
                  and          a4, s9, s10
sub_3_9:          jal          s9, 19f
0:                jal          t5, 14f
1:                jal          t1, 5f
2:                jal          t1, 17f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          t1, 20f
6:                jal          s10, 12f
7:                jal          t0, 15f
8:                jal          ra, 26f
9:                jal          ra, 25f
10:               jal          ra, 22f
11:               jal          ra, 21f
12:               jal          ra, 16f
13:               jal          s1, 24f
14:               jal          s1, 10b
15:               jal          ra, 0b
16:               jal          t1, 7b
17:               jal          s5, 11b
18:               jal          s4, 9b
19:               jal          gp, 4b
20:               jal          s3, 18b
21:               jal          a0, 13b
22:               jal          s3, 23f
23:               jal          t5, 8b
24:               jal          ra, 6b
25:               jal          gp, 2b
26:               sll          s7, s10, t4
364:              sltiu        s10, a6, -1441
365:              auipc        a3, 737349
                  or           s3, t4, s8
                  blt          s6, s6, 373f
                  xor          s1, s7, s10
                  sra          a4, ra, s7
                  xori         t3, s3, -2018
                  addi         zero, s8, 1891
                  and          s5, a4, a2
373:              add          s2, s4, s10
                  bltu         a4, t4, 385f
                  srai         s10, a5, 31
                  blt          a3, t1, 394f
                  slt          t4, s0, s8
                  srli         s4, s9, 24
                  nop
                  auipc        s9, 91811
                  nop
                  srl          a7, s9, s1
                  and          t4, s10, a3
                  nop
385:              slli         a4, t5, 0
                  and          t6, s0, s1
                  bge          a4, t2, 392f
                  sll          a4, a2, t4
                  srli         a2, s3, 28
                  or           sp, s10, sp
                  bge          a0, a1, 398f
392:              srli         s3, a6, 29
                  beq          s1, s8, 396f
394:              or           s7, a7, t1
                  blt          a6, s5, 396f
396:              slti         a7, s1, 1733
                  auipc        sp, 885221
398:              srli         a5, gp, 24
                  beq          s5, a7, 403f
                  sub          gp, t5, s0
                  ori          a1, s6, 262
                  addi         sp, s0, -1306
403:              blt          t5, a1, 411f
                  sll          a1, t6, t3
                  lui          s1, 208666
                  auipc        s8, 480057
                  bltu         a7, a7, 425f
                  sub          s11, s7, sp
                  sltiu        s11, a4, 1210
                  lui          ra, 369200
411:              slti         a1, a0, -81
                  or           s9, t4, s9
                  blt          t2, sp, 433f
                  sra          s4, a7, s7
                  addi         a5, gp, 824
                  bltu         tp, t5, 427f
                  sltu         zero, tp, s7
                  sra          gp, a0, a0
                  lui          s11, 723808
                  sll          s4, a1, ra
                  slti         a5, a6, -1087
                  srli         t2, a1, 19
                  slt          t1, a3, s6
                  bgeu         t5, t1, 432f
425:              xor          zero, a3, s0
                  nop
427:              slt          a4, t5, s11
                  xori         zero, s11, -360
                  beq          s7, t1, 431f
                  sll          a0, t0, a2
431:              slli         t1, tp, 4
432:              bne          s7, s8, 451f
433:              srai         t5, t3, 18
                  lui          a6, 358727
                  sub          a1, t1, t6
                  slt          s10, t2, s7
                  nop
                  sltiu        a5, s9, -1513
                  slti         a2, s5, 1362
                  bgeu         a6, a6, 445f
                  nop
                  ori          a4, s6, 1600
                  xor          a7, zero, ra
                  slti         a2, s2, -279
445:              xori         a7, tp, 937
                  bne          t6, s8, 451f
                  bne          gp, a0, 449f
                  andi         a1, s4, -93
449:              bgeu         ra, s11, 452f
                  and          t1, t6, a6
451:              slt          s7, a2, a5
452:              bge          s6, s10, 458f
                  sra          a0, t0, s11
                  xor          s9, t0, s0
                  ori          t3, t0, -7
                  blt          s10, t5, 470f
                  sltiu        t2, t4, 1905
458:              xor          t3, a5, a7
                  bge          s4, a0, 476f
                  auipc        t5, 483596
                  ori          gp, a1, 1534
                  nop
                  srli         s7, t1, 13
                  or           a2, t5, a4
                  and          s10, t3, t4
                  xor          gp, s11, s5
                  bge          tp, s4, 477f
                  or           zero, gp, t1
                  sltu         sp, s8, ra
470:              srli         t6, a6, 0
                  andi         t4, t0, 625
                  srl          a1, t6, a2
                  beq          s8, s5, 477f
                  slti         sp, t1, 289
                  bge          a2, s11, 480f
476:              sltiu        t4, s0, 131
477:              srai         s5, a1, 16
                  sub          s9, tp, t1
                  srai         t3, zero, 24
480:              auipc        s1, 685032
                  ori          a4, t2, 379
                  bgeu         s6, zero, 493f
                  add          s1, s4, a4
                  sub          a2, s9, t5
                  slt          zero, a4, t6
                  bge          sp, s2, 496f
                  slli         t0, t5, 9
                  and          s2, s6, a3
                  srli         a1, ra, 18
                  bgeu         a5, t2, 509f
                  bgeu         a2, t0, 494f
                  bne          s10, s10, 508f
493:              bgeu         sp, s6, 505f
494:              sub          t2, t2, a1
                  srai         a7, s9, 3
496:              sll          a6, s3, t5
                  srli         s4, s0, 23
                  sub          a1, t2, s11
                  sra          t3, s5, s11
                  srai         ra, s7, 12
                  sltu         s4, s7, s10
                  add          gp, sp, a6
                  sltu         s1, a3, t6
                  andi         a0, t3, 1548
505:              sltu         t3, a3, s3
                  add          s11, s7, s7
                  and          s9, s6, s5
508:              addi         t0, a1, -158
509:              sltiu        a4, s11, -1643
                  sltiu        s8, s7, 2008
                  sll          t4, t1, s4
                  and          s1, s6, s6
                  sltiu        a1, s2, 787
                  xori         gp, t1, -488
                  or           gp, a1, zero
                  ori          a2, a6, -437
                  beq          a4, s3, 524f
                  nop
                  addi         a1, s7, 429
                  slti         s1, s9, -1688
                  slti         s5, zero, -960
                  bltu         s3, s10, 528f
                  srai         s11, sp, 10
524:              sra          s3, t5, s0
                  ori          t2, a7, 1388
                  sltiu        t2, a6, 1292
                  sll          a1, t2, gp
528:              blt          s5, a5, 547f
                  or           t5, s5, gp
                  slt          s8, a6, s1
                  sub          s5, s2, s4
                  addi         a3, zero, -1898
                  bltu         t1, a2, 543f
                  addi         s9, a2, -1960
                  slli         s8, t5, 14
                  and          s11, a4, s5
                  bgeu         s5, s6, 540f
                  bgeu         t4, t3, 549f
                  bgeu         ra, s9, 542f
540:              slti         zero, s3, -1861
                  slli         s7, s5, 19
542:              sub          ra, s5, t0
543:              sll          t5, a2, t5
                  xori         s3, a6, 1136
                  sll          s11, s0, a7
                  beq          sp, s9, 558f
547:              slti         a1, s10, 546
                  srai         s5, a6, 26
549:              srai         s8, s7, 28
                  beq          t3, s9, 554f
                  bge          zero, t3, 570f
                  slli         gp, t3, 1
                  bge          s7, s10, 563f
554:              bne          s0, a2, 562f
                  srl          t0, a1, gp
                  blt          s9, s6, 559f
                  srai         ra, t3, 14
558:              lui          zero, 1019589
559:              slti         zero, s6, 196
                  sll          t5, a6, s1
                  nop
562:              sltu         zero, s5, s2
sub_3_4:          jal          s9, 3f
0:                jal          s11, 23f
1:                jal          ra, 24f
2:                jal          t5, 18f
3:                jal          ra, 20f
4:                jal          t1, 8f
5:                jal          ra, 12f
6:                jal          ra, 26f
7:                jal          ra, 29f
8:                jal          sp, 11f
9:                jal          s1, 10f
10:               jal          ra, 22f
11:               jal          t0, 7b
12:               jal          ra, 13f
13:               jal          ra, 15f
14:               jal          ra, 17f
15:               jal          ra, 6b
16:               jal          s5, 1b
17:               jal          a5, 25f
18:               jal          s11, 28f
19:               jal          ra, 5b
20:               jal          ra, 0b
21:               jal          ra, 19b
22:               jal          ra, 16b
23:               jal          ra, 14b
24:               jal          ra, 4b
25:               jal          t1, 21b
26:               jal          ra, 2b
27:               jal          t1, 9b
28:               jal          t1, 27b
29:               sub          t4, s2, a4
563:              beq          s9, sp, 568f
                  sll          s4, t5, s4
                  slt          s1, s9, zero
                  sra          s3, s10, s4
                  lui          s11, 425054
568:              srai         t1, s11, 6
                  srli         t2, a7, 20
570:              bne          s9, s11, 573f
                  or           s4, s1, s10
                  xori         gp, s0, 1490
573:              bgeu         t5, a0, 592f
                  andi         a5, s7, -1076
                  slt          s7, a0, s10
                  auipc        a2, 130618
                  addi         gp, a1, 1198
                  sltiu        s1, t2, 33
                  and          s8, s9, s6
                  xor          s1, sp, a4
                  sltiu        a6, a3, 738
                  xori         s1, a4, 888
                  addi         s1, a3, -652
                  srl          t1, t3, s5
                  sub          t5, s7, s9
                  slti         s1, s4, -1318
                  bgeu         t2, a7, 592f
                  srl          t2, tp, s5
                  bge          a0, a4, 606f
                  sltiu        t1, a4, -578
                  addi         a3, zero, -459
592:              bge          s7, t1, 603f
                  auipc        t3, 701031
                  andi         s3, a4, -1926
                  auipc        s4, 173252
                  andi         t1, a3, 1764
                  srl          s3, s0, s0
                  bgeu         zero, t6, 599f
599:              xori         s3, a1, -1319
                  slti         a3, t2, 1366
                  beq          a4, s2, 609f
                  sra          t3, s11, a1
603:              auipc        s7, 586604
                  addi         zero, s0, -86
                  lui          a2, 715733
606:              or           a7, gp, t5
                  slt          a6, sp, t2
                  bge          a7, t4, 622f
609:              srli         sp, a2, 19
                  slti         ra, t4, 946
                  xor          t0, t1, a4
                  slt          t0, a3, s7
                  beq          s2, t1, 618f
                  blt          s1, t5, 633f
                  srai         s2, a7, 28
                  slti         a1, a5, 938
                  slt          a1, t5, t6
618:              blt          s6, s9, 620f
                  srli         a5, s8, 20
620:              xor          a2, a4, a0
                  add          zero, a4, t6
622:              and          s7, gp, s3
                  sltu         s7, s6, s4
                  bgeu         sp, ra, 631f
                  slli         t5, a3, 15
                  slli         s3, a5, 22
                  andi         t6, a4, -152
                  nop
                  bltu         a4, s5, 631f
                  lui          t6, 570430
631:              sltu         sp, a2, t1
                  srl          a1, s2, s2
633:              sltu         a2, s2, a4
                  nop
                  sltiu        ra, s11, 1759
                  bgeu         zero, t6, 646f
                  srli         a6, t1, 9
                  srli         t4, t3, 23
                  xori         a3, s3, -1791
                  sra          t0, gp, s4
                  bgeu         a0, t1, 647f
                  sltiu        t6, t2, 313
                  blt          t6, s10, 653f
                  slli         a1, s11, 22
                  lui          t4, 636911
646:              andi         t0, t5, 1293
647:              addi         t2, ra, 2002
                  or           t3, s11, t0
                  slti         a1, sp, -1945
                  blt          s10, t2, 666f
                  srli         s4, t3, 10
                  xori         a0, ra, 278
653:              blt          t4, t4, 657f
                  beq          tp, s0, 674f
                  and          a4, a2, t0
                  blt          zero, t2, 674f
657:              sltiu        t4, t0, 1314
                  bge          s0, t2, 664f
                  sub          ra, a3, a1
                  srli         t1, t3, 19
                  srl          a1, s0, s10
                  sub          t5, ra, t0
                  and          t5, a1, a2
664:              srai         s3, s5, 17
                  bge          s2, s6, 679f
666:              bne          t6, t4, 684f
                  srl          t2, a0, t4
                  sltiu        ra, a7, 350
                  ori          s4, s3, 802
                  bne          t0, zero, 680f
                  sra          t4, gp, a7
                  srai         t4, a0, 20
                  srli         s1, a3, 22
674:              sra          s11, s9, s3
                  slt          s1, s2, a7
                  add          t2, zero, s5
                  addi         sp, s3, -796
                  xor          ra, s7, t5
679:              sra          a7, t0, a3
680:              bge          t5, t0, 688f
                  or           s9, ra, s5
                  bgeu         t0, gp, 690f
                  srai         t1, s10, 22
684:              sub          s3, s11, tp
                  xor          s8, ra, t6
                  srl          s9, t4, sp
                  srli         sp, sp, 6
688:              bltu         s1, s10, 692f
                  or           t1, a0, s5
690:              xor          s5, tp, a4
                  nop
692:              add          t2, t0, a4
                  srli         t5, a1, 10
                  sltu         s1, gp, s6
                  sltu         s4, a3, zero
                  lui          a7, 155032
                  bne          t5, s11, 716f
                  nop
                  ori          zero, t4, -1577
                  ori          a3, a5, -1380
                  srli         s11, zero, 11
                  lui          s9, 151197
                  slli         t4, t0, 26
                  sll          t5, s4, s9
                  or           t5, s6, a7
                  bne          s9, s4, 713f
                  andi         a6, a5, 1662
                  addi         s7, s3, 1461
                  slt          s7, a7, s6
                  or           t0, ra, s9
                  beq          sp, t3, 721f
                  srl          s3, t6, s3
713:              add          a1, s6, sp
                  auipc        a7, 386714
                  srai         t1, s8, 21
716:              slli         a3, a0, 20
                  slli         a6, zero, 26
                  xori         t1, tp, -305
                  sltu         sp, a3, t2
                  bne          a5, a1, 732f
721:              srli         s8, a5, 0
                  slti         s8, s4, 224
                  xori         s2, s4, -2009
                  bne          s4, s3, 743f
                  xor          s1, s8, s1
                  xor          s4, s5, s7
                  sub          a1, s7, s6
                  add          s2, s4, s6
                  srai         ra, a1, 10
                  or           gp, tp, a7
                  add          s9, s9, tp
732:              bge          t2, s3, 735f
                  bne          t0, a0, 736f
                  slt          ra, s2, t0
735:              andi         s10, s11, -686
736:              sltiu        s5, a7, -1459
                  blt          t6, ra, 748f
                  lui          a0, 335546
                  srl          s10, s7, s9
                  or           s4, s3, sp
                  nop
                  srl          a0, s2, t6
743:              sltiu        t2, s0, -1626
                  bge          s5, a4, 760f
                  srl          a3, sp, s0
                  or           t1, zero, s1
                  blt          s10, gp, 758f
748:              beq          s10, a7, 765f
                  andi         sp, a5, -1481
                  andi         a6, s4, -879
                  blt          t6, t5, 756f
                  add          s8, t2, t2
                  beq          s0, zero, 754f
754:              ori          a4, a0, 1458
                  bne          s7, zero, 760f
756:              slti         s10, s9, 1084
                  srl          s2, t4, s6
758:              slti         a3, s11, 924
                  sub          a7, t2, t0
760:              xori         gp, s9, 1571
                  auipc        ra, 769971
                  ori          sp, a0, -160
                  srl          s8, gp, t0
                  bgeu         s3, s6, 770f
765:              slli         zero, s11, 2
                  sra          s5, a3, ra
                  slt          s7, t5, a5
                  slti         ra, s3, 1030
                  auipc        a1, 1007762
770:              add          s5, s10, s9
                  sltu         sp, a3, a3
                  beq          s4, s0, 775f
                  auipc        t5, 185466
                  sltiu        a2, a4, -975
775:              sltu         a4, s3, a6
                  or           s2, a3, t6
                  bgeu         a5, a3, 782f
                  slli         t1, s7, 22
                  lui          t1, 31264
                  sltiu        s5, t6, -1025
                  ori          s2, a7, 1396
782:              srli         s9, s11, 5
                  sra          t2, zero, s4
                  srli         t3, s9, 28
                  sltu         a1, s4, s11
                  bne          s7, a5, 788f
                  blt          t2, gp, 793f
788:              andi         gp, gp, 20
                  srai         s2, zero, 23
                  addi         t2, s5, -240
                  ori          a3, s7, -622
                  bne          gp, s2, 812f
793:              sltiu        a0, s9, -368
                  blt          s9, s7, 804f
                  bltu         a4, s8, 797f
                  add          a0, a4, s4
797:              srl          a4, s4, t4
                  bgeu         zero, t2, 802f
                  sltu         a0, s1, t6
                  slt          s3, s0, s7
                  bne          t6, a7, 820f
802:              ori          s4, a3, 1110
                  add          s7, t2, s11
804:              bltu         a2, s1, 816f
                  srl          sp, s7, a5
                  srl          a4, ra, a6
                  auipc        t5, 639053
                  xor          t3, tp, t2
                  xor          t0, ra, s6
                  slti         s7, t0, 1045
                  sltiu        s7, s6, 815
812:              sra          a4, t5, s9
                  sll          a5, s0, a1
                  andi         sp, s10, -1804
                  beq          a5, t6, 820f
816:              sll          a7, t0, s6
                  slt          t4, t0, zero
                  slti         a7, a5, 603
                  slti         t2, s10, -506
820:              and          t2, t0, tp
                  sll          a2, a0, gp
                  bne          s11, a7, 826f
                  bne          t3, a5, 826f
                  bltu         a7, s5, 832f
                  slli         a6, gp, 9
826:              slli         s7, a1, 14
                  or           ra, s2, a5
                  blt          a3, s10, 831f
                  beq          a4, s1, 833f
                  ori          a5, s6, -350
831:              srl          a1, a5, tp
832:              add          a2, s1, s4
833:              sub          s4, t3, s4
                  srai         s10, s4, 14
                  xori         a3, a3, 1852
                  auipc        s3, 550545
                  sltiu        a1, t3, -1983
                  srli         ra, t0, 27
                  nop
                  srl          gp, t0, a4
                  blt          s1, a5, 844f
                  srai         gp, a1, 18
                  blt          a4, s5, 860f
844:              lui          s1, 36606
                  and          t6, a4, s10
                  or           s4, a5, s2
                  bltu         a3, ra, 854f
                  bne          sp, t6, 867f
                  bltu         s9, a3, 855f
                  slli         s7, tp, 13
                  sltu         a1, s6, gp
                  bgeu         s4, t6, 871f
                  sub          s4, s9, s3
854:              bne          a5, s8, 856f
855:              auipc        t6, 901050
856:              bltu         zero, a2, 866f
                  sub          s7, t5, s0
                  sra          a3, a0, t1
                  bne          a5, gp, 864f
860:              srl          a4, t2, zero
                  slli         sp, a0, 28
                  add          a3, s3, ra
                  sltu         a0, sp, sp
864:              ori          a4, a4, 824
                  andi         a4, t3, -135
866:              auipc        t5, 156628
867:              sra          t4, s7, s8
                  andi         t0, t3, -138
                  sltiu        s1, t6, -850
                  nop
871:              and          t5, ra, s7
                  bge          s10, a7, 882f
                  bltu         t4, zero, 884f
                  srai         a7, gp, 10
                  srai         t2, zero, 2
                  or           s2, s4, s3
                  ori          a7, a2, 462
                  srl          t1, t4, s11
                  addi         a4, t6, -279
                  srl          s7, t0, s2
                  sll          t4, t2, s5
882:              blt          t3, a1, 900f
                  bltu         s8, s0, 893f
884:              sub          s11, s1, s6
                  addi         a6, s1, 1871
                  xor          t2, a4, t6
                  slli         t0, s4, 24
                  or           ra, a0, sp
                  srl          gp, t5, sp
                  slli         s9, s10, 30
                  sub          s3, t3, a6
                  bltu         t1, t5, 897f
893:              srl          s1, t2, a3
                  srai         s7, s6, 15
                  and          t5, s3, a4
                  xor          a3, s9, s5
897:              bltu         s2, s8, 916f
                  bne          s5, t1, 912f
                  sll          sp, tp, t1
900:              beq          s9, s9, 906f
                  xori         a1, s9, 772
                  bne          s1, a7, 913f
                  sltu         sp, a1, t3
                  slt          a4, a1, a3
                  blt          a6, gp, 907f
906:              slli         t2, s10, 25
907:              or           gp, s2, s2
                  srai         a6, a0, 15
                  srli         sp, a4, 28
                  and          s8, s6, a0
                  srl          s4, s8, sp
912:              add          gp, a6, a5
913:              sra          a0, s7, t3
                  slli         s4, s2, 15
                  srl          s3, t6, a7
916:              xor          t2, s3, s3
                  and          t2, a1, s10
                  slli         a7, s6, 3
                  addi         t2, s3, 1877
                  sub          sp, s8, a5
                  addi         s10, t0, -1265
                  addi         s1, ra, 398
                  beq          t5, t1, 943f
                  xor          s3, t6, s9
                  andi         sp, t0, 662
                  srai         gp, ra, 13
                  srl          s5, t0, t2
                  ori          zero, s11, 1677
                  bgeu         s0, s0, 945f
                  bge          t6, t2, 938f
                  sra          s8, a3, a7
                  srai         s11, t1, 0
                  sltu         s9, s10, t0
                  sltiu        t3, s5, 352
                  slti         s7, t6, 371
                  sll          s11, tp, t3
                  bne          a5, s6, 938f
938:              xor          s4, a4, s1
                  blt          t3, gp, 943f
                  bge          t6, s1, 943f
                  lui          s5, 287533
                  srai         t5, t3, 16
943:              nop
                  beq          t0, t5, 946f
945:              bltu         s6, a3, 959f
946:              sltu         a0, t2, s11
                  sra          t4, s4, s6
                  bltu         a3, s0, 953f
                  sll          s10, sp, a2
                  sub          t5, t2, s7
                  lui          t1, 930339
                  ori          s5, t4, -528
953:              xor          t5, t1, s0
                  sll          ra, t5, ra
                  addi         a7, s9, -1129
                  and          t1, a6, t5
                  auipc        ra, 7394
                  bge          s4, s11, 961f
959:              and          s4, s0, s0
                  andi         s3, s11, -442
961:              beq          t2, s0, 962f
962:              or           s1, t5, t3
                  beq          s6, t3, 968f
                  slli         zero, a0, 16
                  xor          t4, a4, t6
                  add          s4, s0, sp
                  andi         a1, s10, -529
968:              slt          t0, ra, s9
                  xor          t1, t2, a4
                  sub          a3, a0, s9
                  lui          a0, 1034296
                  sra          t0, s5, s7
                  sll          a6, a0, t2
                  lui          s4, 906403
                  nop
                  and          s10, gp, s0
                  sltiu        t5, a0, 1381
                  srl          s2, a2, s9
                  slli         a2, a4, 15
                  sub          a1, s5, zero
                  ori          s2, t5, 14
                  bge          t5, s9, 992f
                  beq          s0, t3, 994f
                  sltu         a7, a1, a7
                  beq          s4, s0, 997f
                  nop
                  auipc        s9, 96301
                  xor          s8, s1, s0
                  slt          t6, a5, t6
                  slti         s2, t2, -1662
                  srai         a0, s1, 31
992:              sra          t6, gp, s4
                  srai         t2, t0, 2
994:              bgeu         s7, s3, 997f
                  srl          s1, tp, s0
                  xor          a3, a5, zero
997:              lui          a0, 620433
                  srai         s3, tp, 12
                  blt          a0, tp, 1018f
                  auipc        t2, 2309
                  beq          s6, a3, 1003f
                  andi         t3, ra, 1951
1003:             xori         t1, s0, -1887
                  beq          s2, s2, 1020f
                  xor          a7, s4, t0
                  nop
                  bltu         t6, a1, 1025f
                  nop
                  add          a0, s7, s8
                  srl          s3, a3, s1
                  andi         t0, s11, -671
                  sub          s10, a2, gp
                  slli         s2, tp, 4
                  ori          t3, a3, 591
                  and          s3, s9, t3
                  sltu         a2, s3, zero
                  ori          t2, sp, -256
1018:             slli         a3, s9, 5
                  add          s1, a7, a4
1020:             and          a7, t1, gp
                  sll          a5, a2, a2
                  xori         a4, a4, -1491
                  srli         sp, t5, 27
                  slti         s4, a4, -942
1025:             bltu         s8, t3, 1029f
                  and          s4, t6, s0
                  or           t0, t4, a2
                  srai         s5, s11, 7
1029:             slti         a1, a7, 842
                  slti         a2, a0, -721
                  ori          s11, a1, 1958
                  and          s5, a7, t2
                  srli         s1, zero, 27
                  sltiu        s1, s0, 1418
                  ori          s8, zero, -1501
                  xor          a4, t2, s1
                  and          a6, s1, t5
                  ori          s4, t4, 1587
                  sltu         gp, gp, a0
                  srai         ra, sp, 21
                  sub          gp, a2, s9
                  srli         s2, sp, 24
                  sra          s7, t4, t6
                  blt          zero, t2, 1063f
                  sltiu        a2, zero, -1529
                  sltu         gp, a2, s1
                  srl          t4, a7, s2
                  sltiu        ra, t5, -2011
sub_3_2:          jal          s9, 9f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          ra, 21f
3:                jal          ra, 23f
4:                jal          s8, 6f
5:                jal          t1, 12f
6:                jal          a3, 16f
7:                jal          ra, 4b
8:                jal          t1, 13f
9:                jal          t0, 11f
10:               jal          t0, 20f
11:               jal          t0, 8b
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               jal          ra, 17f
15:               jal          t1, 10b
16:               jal          t1, 22f
17:               jal          a3, 15b
18:               jal          ra, 1b
19:               jal          s11, 24f
20:               jal          ra, 7b
21:               jal          ra, 19b
22:               jal          t1, 18b
23:               jal          ra, 5b
24:               sra          s9, t1, a0
                  add          t6, s5, s7
                  ori          t2, s8, -1824
                  sltu         t0, sp, s1
                  nop
                  xor          s9, s1, s3
                  srl          a2, s7, s0
                  srli         a4, a5, 7
                  addi         s4, a3, -1563
                  and          a0, a1, t4
                  blt          s3, a3, 1078f
                  slt          s8, a2, s0
                  lui          a3, 859816
                  bgeu         s9, zero, 1067f
                  slli         s2, a7, 19
1063:             sltiu        s5, t0, -551
                  xori         a7, t1, -1230
                  addi         s1, a4, -1409
                  auipc        s3, 746686
1067:             auipc        a4, 399597
                  sub          s11, s1, sp
                  srli         t6, tp, 4
                  bltu         s6, t4, 1089f
                  bgeu         t2, s11, 1079f
                  or           s1, s11, s2
                  ori          a3, s1, 1729
                  bge          a6, a4, 1079f
                  sltu         s3, s9, a6
                  auipc        t5, 350471
                  srl          a1, tp, a7
1078:             blt          gp, s5, 1089f
1079:             andi         a6, t3, 1044
                  lui          s9, 337715
                  sltu         t1, a1, a7
                  and          s11, s7, a4
                  ori          t5, tp, -1588
                  sra          gp, t6, s1
                  bne          t2, a3, 1093f
                  sltiu        s2, s11, 1986
                  and          s7, ra, tp
                  xori         s4, s8, -1698
1089:             andi         t6, s6, -30
                  ori          s2, s8, 711
                  add          s5, zero, a5
                  ori          t1, a4, -1970
1093:             andi         s8, a2, 1663
                  srli         zero, s4, 13
                  beq          s4, t5, 1112f
                  slti         s3, s5, 936
                  srli         t2, s5, 5
                  addi         s7, s10, -1541
                  srl          t1, s5, ra
                  slli         s9, s11, 6
                  nop
                  slti         s11, t0, -192
                  srli         t5, t4, 23
                  srl          zero, a0, s6
                  and          t1, a4, s8
                  bge          t6, sp, 1116f
                  srli         gp, s6, 17
                  blt          t4, s2, 1115f
                  addi         s7, t0, 1482
                  blt          ra, t3, 1120f
                  sra          t4, a0, tp
1112:             blt          a3, a6, 1118f
                  xor          s10, a4, s3
                  bne          ra, zero, 1133f
1115:             srli         s9, t4, 8
1116:             bgeu         a7, t1, 1132f
                  srai         sp, a0, 5
1118:             srai         s1, s1, 16
                  andi         s4, a4, -1440
1120:             ori          t1, a5, -619
                  sll          s11, a3, s0
                  srl          s7, gp, a3
                  sra          a1, s7, s3
                  addi         s2, s5, -1382
                  ori          a4, s9, 481
                  or           t3, t6, t3
                  blt          sp, s1, 1130f
                  bgeu         s5, s7, 1138f
                  xor          a3, s0, s10
1130:             auipc        s11, 598384
                  lui          t2, 60144
1132:             srli         s9, a0, 30
1133:             bltu         s9, s7, 1136f
                  slt          zero, t5, a5
                  sltu         a1, t6, s11
1136:             slli         a6, sp, 28
                  nop
1138:             addi         s11, t0, -1201
                  beq          s9, s9, 1140f
1140:             sll          t2, s5, t4
                  srl          a3, t3, t5
                  slli         s7, s0, 29
                  srli         a1, a1, 14
                  beq          zero, t5, 1158f
                  bltu         s9, s9, 1155f
                  bgeu         t0, a3, 1156f
                  sltu         a2, s2, s10
                  andi         s4, s5, 187
                  slti         a5, a1, 353
                  sub          a1, s2, t4
                  slti         a4, s5, 599
                  and          s5, s5, a0
                  nop
                  srai         t2, t6, 19
1155:             auipc        a3, 12779
1156:             sll          s7, a6, s8
                  ori          s10, t6, -1573
1158:             ori          sp, s4, 1047
                  bge          a5, s6, 1163f
                  lui          a5, 763557
                  addi         a3, s8, 153
                  bne          s7, a4, 1167f
1163:             xori         s5, zero, -61
                  slt          sp, zero, a0
                  sltu         t5, sp, a2
                  and          t5, t4, s11
1167:             bne          t5, zero, 1173f
                  xor          t6, t3, gp
                  slli         s2, s1, 26
                  slli         a6, s11, 15
                  nop
                  slli         s2, t3, 11
1173:             xori         s5, t3, -1442
                  slti         a0, ra, -546
                  addi         a3, a7, 199
                  bne          a4, s7, 1180f
                  lui          t6, 145897
                  sltu         s10, s4, zero
                  blt          s11, t5, 1197f
1180:             addi         s10, s1, 892
                  srli         s9, s11, 13
                  slt          a2, ra, s0
                  and          a0, zero, t2
                  or           a4, a0, a5
                  sub          t6, a7, a2
                  bltu         ra, s1, 1192f
                  or           t3, gp, t5
                  andi         s11, a4, 1782
                  or           t1, s6, s0
                  sll          gp, s5, a2
                  bge          s7, a0, 1196f
1192:             sub          a5, s7, t1
                  or           a3, s6, s11
                  xor          t2, s6, t5
                  or           a4, a3, ra
1196:             auipc        sp, 792124
1197:             slti         t0, tp, 126
                  beq          s2, zero, 1210f
                  and          a0, gp, s0
                  xori         t5, s1, 482
                  addi         a7, a1, 2012
                  bne          s8, a4, 1213f
                  blt          a6, t0, 1222f
                  auipc        a0, 487711
                  nop
                  srl          a7, t2, t6
                  or           a5, s2, a5
                  xor          s2, s10, a1
                  blt          s6, t1, 1217f
1210:             addi         t4, zero, 814
                  beq          ra, s3, 1219f
                  add          a4, a2, s4
1213:             slti         a0, s10, -140
                  sub          a0, s4, s1
                  xor          t5, a0, gp
                  srl          s9, a2, sp
1217:             slt          a6, t5, s0
                  nop
1219:             sub          t0, zero, s6
                  sll          sp, s5, s0
                  slti         a1, s10, -1265
1222:             beq          t3, a3, 1242f
                  and          s9, a7, zero
                  lui          t0, 399880
                  addi         a7, t6, -571
                  bgeu         zero, t1, 1228f
sub_3_21:         jal          s9, 6f
0:                jal          t0, 7f
1:                jal          ra, 9f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          t1, 1b
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          ra, 4b
9:                jal          t1, 11f
10:               jal          t1, 2b
11:               ori          t4, s8, -2005
                  srai         s11, t0, 3
1228:             bne          s2, a3, 1233f
                  nop
                  srli         a5, t2, 7
                  andi         a7, a7, 1526
                  sra          s4, s9, t2
1233:             or           gp, a7, s11
                  nop
                  ori          t6, s10, 1739
                  and          t3, s1, a0
                  srai         s4, t1, 11
                  bge          a1, tp, 1240f
                  and          s2, t5, a4
1240:             bne          gp, a2, 1257f
                  or           s8, a0, s6
1242:             srai         s11, zero, 19
                  auipc        s9, 216232
                  slli         s9, s3, 3
                  xori         t0, zero, -1714
                  blt          a1, a4, 1265f
sub_3_11:         jal          s9, 6f
0:                jal          ra, 12f
1:                jal          ra, 22f
2:                jal          t1, 1b
3:                jal          ra, 18f
4:                jal          t4, 2b
5:                jal          ra, 13f
6:                jal          t1, 3b
7:                jal          gp, 9f
8:                jal          ra, 4b
9:                jal          t1, 14f
10:               jal          ra, 17f
11:               jal          ra, 7b
12:               jal          ra, 8b
13:               jal          t1, 10b
14:               jal          t5, 23f
15:               jal          gp, 19f
16:               jal          ra, 15b
17:               jal          a0, 0b
18:               jal          gp, 5b
19:               jal          ra, 11b
20:               jal          t1, 21f
21:               jal          t5, 16b
22:               jal          t1, 20b
23:               slti         s8, t2, 1333
                  xori         sp, t5, 171
                  sltu         a5, a4, t0
                  srli         t1, s11, 11
                  or           a4, a7, s4
                  sltu         s10, s1, a3
                  blt          t0, s4, 1263f
                  srli         sp, s6, 31
                  srl          zero, s10, a3
                  sltiu        s11, t3, -1226
                  beq          a3, a6, 1259f
1257:             lui          t5, 148056
                  srai         s1, t6, 11
1259:             bge          s5, s6, 1266f
                  bne          s11, t3, 1264f
                  blt          t5, a6, 1272f
                  addi         t5, a3, -1466
1263:             ori          s1, s4, 47
1264:             and          a3, sp, t5
1265:             sra          a3, s1, s8
1266:             srli         s5, a4, 1
                  bgeu         a4, zero, 1286f
                  and          t0, a6, a5
                  slti         a2, a0, 1751
                  nop
                  sltu         t0, a5, s8
1272:             sub          a7, t3, s2
                  sltu         ra, a0, s3
                  or           t6, a2, s1
                  sltiu        a7, tp, -1732
                  xori         s11, s11, -382
                  srl          t6, sp, s6
                  nop
                  slti         zero, s2, -853
                  ori          a5, tp, 387
                  slli         sp, t6, 11
                  bne          s1, t1, 1301f
                  bne          a1, s6, 1288f
                  lui          s2, 681601
                  srai         a7, a5, 29
1286:             blt          a3, a1, 1288f
                  add          t1, a2, s11
1288:             sra          t5, s8, a2
                  nop
                  sll          a5, t5, s11
                  beq          s6, t5, 1301f
                  sub          gp, gp, s2
                  bne          gp, s8, 1303f
                  sltu         t0, t2, t0
                  andi         s4, a4, 702
                  xor          t4, a3, s0
                  slli         a1, t1, 13
                  or           a4, s6, a3
                  bge          a7, t1, 1302f
                  bgeu         tp, s10, 1306f
1301:             sltiu        a0, sp, 714
1302:             beq          s1, s4, 1308f
1303:             sra          s3, t6, zero
                  lui          s2, 590315
                  xor          s5, s3, sp
1306:             addi         a3, s0, -1761
                  beq          t5, ra, 1314f
1308:             xori         t4, s6, 1342
                  slt          s1, ra, s0
                  auipc        t1, 98724
                  bgeu         a4, zero, 1316f
                  auipc        a1, 316530
                  auipc        t5, 856336
1314:             srai         t5, sp, 4
                  sub          ra, a3, gp
1316:             auipc        gp, 919868
                  slli         t4, t1, 8
                  add          gp, t6, s10
                  lui          t1, 566445
                  bge          a2, t3, 1332f
                  add          s9, s3, a0
                  beq          s11, s7, 1338f
                  sub          t1, s3, gp
                  sll          s7, ra, s10
                  or           a1, a4, t1
                  sub          zero, t5, a7
                  sll          s8, a6, a5
                  addi         a2, s0, 1180
                  lui          sp, 152461
                  bne          a7, t3, 1348f
                  srl          t5, s10, zero
1332:             srai         s1, s4, 6
                  bge          t1, s6, 1347f
                  auipc        s8, 808419
                  add          a0, a4, a1
                  add          a5, a3, s11
                  or           a2, tp, a3
1338:             slli         t3, a0, 16
                  bge          t4, t6, 1341f
                  addi         t5, t1, -77
1341:             sub          t0, s5, s4
                  bne          a7, t4, 1353f
                  bltu         s11, a6, 1360f
                  sra          t2, s10, s7
                  andi         s10, s5, -342
                  bgeu         s5, s5, 1349f
1347:             ori          ra, t2, 1799
1348:             lui          t6, 474611
1349:             andi         a2, s3, 1432
                  sltiu        a7, t5, -2010
                  and          t6, s4, s1
                  and          s11, t3, ra
1353:             bgeu         a1, sp, 1358f
                  or           s4, t0, s1
                  and          t1, s3, s11
                  addi         t3, a7, -924
                  addi         t5, a6, -116
1358:             lui          a6, 333723
                  beq          a5, s1, 1379f
1360:             andi         s2, t1, 668
                  srl          t5, s1, a4
                  ori          a7, t2, -211
                  add          a6, t3, zero
                  nop
                  slti         s4, t5, -1143
                  blt          a0, a1, 1385f
                  add          ra, a7, t5
                  and          t1, a3, s8
                  and          s8, t6, s7
                  andi         t0, a7, -1779
                  andi         s9, sp, -36
                  auipc        s8, 203637
                  nop
                  bltu         t6, t4, 1378f
                  srli         a6, t4, 8
                  xori         t3, ra, 18
                  addi         s9, sp, -853
1378:             nop
1379:             bgeu         tp, s8, 1387f
                  or           a5, a7, s9
                  or           s11, t6, t1
                  and          gp, s5, s6
                  srai         s5, zero, 8
                  srli         ra, gp, 5
1385:             nop
                  blt          t1, t4, 1389f
1387:             sub          t3, s6, a2
                  auipc        s8, 556058
1389:             bne          a1, t1, 1399f
                  srli         t3, t2, 19
                  xori         t4, t5, -1229
                  slli         a1, t1, 31
                  slti         s7, t0, -39
                  andi         s8, ra, 1238
                  srai         s8, s3, 31
                  beq          s7, a2, 1404f
                  lui          a1, 968694
                  blt          t2, tp, 1399f
1399:             nop
                  nop
                  srli         s7, t5, 3
                  bltu         sp, s5, 1412f
                  srli         s8, s10, 25
1404:             and          s5, tp, t0
                  srli         ra, s6, 0
                  auipc        s4, 641921
                  sltu         s7, a5, ra
                  slli         s2, t6, 16
                  and          gp, s7, tp
                  or           s4, t6, zero
                  xor          s3, ra, sp
1412:             nop
                  xori         s8, tp, 754
                  slli         a4, a7, 18
                  addi         t6, a5, 1996
                  sltu         s9, s5, s6
                  andi         a2, s8, 566
                  nop
                  auipc        t1, 162743
                  nop
                  and          s5, s0, s8
                  sltiu        s4, a4, -247
                  sltiu        t5, zero, 1717
                  bne          t6, sp, 1427f
                  sll          a0, a0, a3
                  addi         t6, s4, 1449
1427:             or           a5, s1, s1
                  slli         sp, a4, 14
                  sll          s2, s10, s2
                  sub          t1, t5, sp
                  addi         gp, zero, 1870
                  sra          t5, t3, s3
                  addi         sp, t3, 391
                  auipc        s8, 775415
                  sll          s4, s0, s2
                  srli         a4, s6, 5
                  beq          s0, t6, 1448f
                  xor          s10, s9, s7
                  bgeu         a5, a1, 1451f
                  or           t0, s9, tp
                  slt          s11, s1, s0
                  slt          s11, a4, s2
                  nop
                  srli         s11, ra, 27
                  sltiu        t2, a4, 1650
                  beq          s2, a7, 1465f
                  blt          ra, t5, 1464f
1448:             lui          t0, 318424
                  beq          s4, a3, 1468f
                  xori         a1, a7, -1787
1451:             sll          t0, s4, s1
                  srli         ra, zero, 4
                  slti         s5, a1, -747
                  slli         sp, t2, 16
                  and          gp, s3, t2
                  sltu         t3, sp, s6
                  and          ra, t1, a0
                  bne          a7, zero, 1464f
                  xori         a2, ra, -209
                  and          ra, a2, t2
                  bne          s5, s10, 1481f
                  add          t4, a2, ra
                  add          a2, a0, a5
1464:             sra          s5, t2, t5
1465:             nop
                  sra          a6, a6, s10
                  lui          s1, 742231
1468:             bgeu         s9, t6, 1478f
                  or           a2, s10, t3
                  xori         a5, a7, 1299
                  bltu         t0, t2, 1476f
                  srli         s8, ra, 6
                  sub          t6, t3, s8
                  beq          a1, s8, 1482f
                  bge          s9, t5, 1478f
1476:             nop
                  or           gp, s9, s2
1478:             sra          a7, a1, a1
                  bgeu         t4, sp, 1480f
1480:             auipc        s1, 459843
1481:             add          sp, a6, s10
1482:             ori          t6, zero, -230
                  ori          t1, gp, -1039
                  bgeu         t5, a5, 1486f
                  add          s10, t4, a0
1486:             bge          s3, gp, 1497f
                  addi         s3, t2, -547
                  blt          a3, t6, 1502f
                  ori          t6, ra, -1630
                  sub          zero, a7, a3
                  lui          a7, 772635
                  xor          s5, t4, s2
                  ori          s4, a6, 226
                  andi         s3, a3, -1555
                  sra          a4, ra, a7
                  slli         a4, s5, 25
1497:             srli         a4, t5, 16
                  sltu         ra, s9, t6
                  and          t3, zero, ra
                  slti         a4, a6, -1399
                  nop
1502:             sub          t5, s1, s1
                  and          a7, sp, sp
                  slli         t6, zero, 13
                  sll          s7, a1, s3
                  bge          t3, ra, 1512f
                  bltu         s10, a0, 1526f
                  auipc        t1, 605441
                  sll          t3, a6, a5
                  nop
                  bne          s11, s9, 1513f
1512:             andi         gp, s1, -45
1513:             lui          s9, 967331
                  beq          t4, t4, 1530f
                  slli         s8, t1, 11
                  sub          s8, t5, s6
                  andi         s9, s0, -641
                  srl          s3, t5, s0
                  lui          a6, 773719
                  sltu         a3, s7, s5
                  nop
                  sll          s4, t4, sp
                  bgeu         t0, s1, 1533f
                  and          a4, sp, a7
                  sll          s7, s8, a3
1526:             srli         s3, a4, 7
                  auipc        s1, 492607
                  blt          t6, s1, 1532f
                  slt          t6, s6, s1
1530:             bgeu         t0, s11, 1535f
                  slti         t1, gp, -1388
1532:             bgeu         t0, t5, 1540f
1533:             lui          s8, 784130
                  bgeu         s11, s4, 1537f
1535:             slti         s2, s1, -557
                  slti         a6, t2, -991
1537:             xor          s8, t1, a7
                  addi         s7, a3, -1701
                  slli         gp, s0, 23
1540:             srli         s1, t2, 17
                  addi         t1, a0, 522
                  sub          s9, a4, zero
                  sra          a7, s1, s6
                  slt          s8, tp, t6
                  sll          ra, s0, a3
                  add          a6, s7, t5
                  sub          t3, s9, s5
                  srli         gp, t3, 9
                  or           s9, ra, a0
                  addi         ra, s7, 511
                  nop
                  blt          s0, s4, 1559f
                  srl          s3, t0, t5
                  addi         a7, s8, 26
                  sltiu        s8, a3, 289
                  slti         zero, s11, 2047
                  sll          t4, tp, s1
                  bltu         s10, s2, 1563f
1559:             xor          a4, a2, t4
                  andi         s3, s4, -1635
                  slt          t0, s10, t4
                  ori          s7, a1, -1232
1563:             sltiu        ra, t4, -1604
                  or           t0, t0, tp
                  bne          gp, s5, 1569f
                  or           a1, a6, s9
                  lui          a1, 437631
                  srl          s11, a0, s5
1569:             blt          s10, s1, 1587f
                  slt          gp, t6, s9
                  blt          a6, tp, 1581f
                  bltu         a3, zero, 1591f
                  beq          a0, s3, 1578f
                  and          gp, t6, a5
                  addi         s2, s4, 120
                  sub          s2, a4, sp
                  andi         a0, a4, 825
1578:             slt          s10, sp, t3
                  ori          a0, s5, -1906
                  nop
1581:             add          sp, a5, t1
                  sub          s7, a7, zero
                  lui          a7, 513040
                  srl          t1, zero, s11
                  sll          a1, a3, a2
                  srai         ra, t0, 9
1587:             sltu         a5, a2, zero
                  or           a0, a7, a3
                  add          t5, s1, t4
                  blt          sp, zero, 1597f
1591:             sltiu        a0, s7, 277
                  sra          t1, a6, a4
                  and          t3, a5, a0
                  srli         t4, a4, 31
                  and          sp, s5, s0
                  sltu         zero, s2, ra
1597:             bgeu         t3, s9, 1599f
                  bgeu         s1, s0, 1606f
1599:             slti         s7, a7, -166
                  srli         ra, s1, 6
                  bgeu         s1, s2, 1617f
                  sltiu        s4, s11, 1134
sub_3_38:         jal          s9, 11f
0:                jal          s11, 15f
1:                jal          ra, 3f
2:                jal          s7, 16f
3:                jal          ra, 13f
4:                jal          ra, 14f
5:                jal          t1, 17f
6:                jal          t1, 18f
7:                jal          ra, 0b
8:                jal          a2, 2b
9:                jal          t1, 10f
10:               jal          t1, 7b
11:               jal          ra, 12f
12:               jal          t6, 4b
13:               jal          ra, 8b
14:               jal          ra, 5b
15:               jal          t1, 6b
16:               jal          sp, 19f
17:               jal          ra, 9b
18:               jal          t1, 1b
19:               add          t2, a5, t0
                  sll          sp, t6, ra
                  or           s11, t2, s6
                  sltu         t5, s4, t6
1606:             bgeu         t5, s7, 1610f
                  srli         s1, a4, 5
                  bltu         t0, s5, 1610f
                  bne          a1, s10, 1614f
1610:             bgeu         s3, t1, 1620f
                  bne          s2, s2, 1628f
                  bne          s6, s3, 1613f
1613:             bne          s2, a0, 1621f
1614:             slt          t5, t1, a4
                  xor          t4, a5, sp
                  xori         a1, ra, -1296
1617:             srl          a5, s10, gp
                  xori         s2, a3, -1120
                  sll          a6, s5, a7
1620:             ori          s7, s2, -1197
1621:             and          t4, t1, a6
                  sltu         sp, gp, a1
                  sltiu        t2, t6, 1931
                  slt          s11, s1, t6
                  sll          a4, a2, a2
                  lui          t6, 898802
                  bltu         a3, t5, 1638f
1628:             bgeu         zero, a3, 1633f
                  addi         t1, t2, -93
                  addi         t6, a3, -942
                  xor          a4, a7, t3
                  srl          s10, s11, tp
1633:             bge          a6, s3, 1652f
                  addi         gp, s4, -419
                  sub          a6, s4, s7
                  lui          gp, 103348
                  srli         s5, t5, 11
1638:             srai         a3, t6, 10
                  bge          a0, s6, 1642f
                  xor          a6, t0, sp
                  addi         a0, t2, 1495
1642:             ori          a5, t6, -1193
                  ori          s10, t6, 447
                  srli         gp, s11, 21
                  sub          sp, gp, s3
                  sltiu        s5, a7, -1388
                  slt          s8, t4, s4
                  bltu         tp, s3, 1652f
                  lui          ra, 159937
                  slti         sp, t2, 888
                  xori         s9, s4, 1838
1652:             nop
                  sub          s5, a3, t3
                  sub          t5, s7, s1
                  lui          a3, 772797
                  slti         s10, a1, -1313
                  la           t5, sub_4
                  addi         t5, t5, 831
                  sll          s3, s2, sp
                  srai         a1, t6, 29
                  sub          s3, s5, a0
                  sll          sp, t2, s10
sub_3_j5:         jalr         s9, t5, -831 #jump sub_3 -> sub_4
                  xor          s11, s0, t2
                  ori          s1, s7, 885
                  andi         sp, t2, -1988
                  lui          a0, 472195
                  slli         s3, t3, 11
                  lui          a6, 510167
                  bgeu         s5, gp, 1672f
                  lui          s1, 818053
                  srli         s2, s6, 12
                  sll          ra, t5, a3
                  auipc        a6, 485527
                  bne          gp, a2, 1678f
                  bge          ra, s6, 1688f
                  auipc        a7, 196079
                  beq          zero, s6, 1684f
                  sub          t4, zero, tp
1672:             auipc        t3, 478079
                  sltiu        ra, a3, 505
                  slti         a0, s11, 2047
                  srli         a4, t0, 4
                  slt          zero, a3, s2
                  lui          t1, 554498
1678:             slli         t6, tp, 8
                  sra          t0, a3, a4
                  sra          s8, ra, a5
                  add          t2, tp, s7
                  xor          s2, a1, a5
                  or           s5, s9, a3
1684:             sra          t4, a3, s9
                  add          a2, a1, ra
                  srai         s1, zero, 24
                  bne          a4, t6, 1706f
1688:             slt          s9, a2, t3
                  sub          a7, s1, t5
                  slti         s7, a2, -1092
                  bltu         t0, a1, 1703f
                  xori         sp, t4, 1172
                  ori          a4, tp, -603
                  slli         s11, s2, 7
                  slli         t0, gp, 4
                  srl          a2, t4, s3
                  sltiu        s9, t1, 453
                  bge          s7, s2, 1701f
                  and          s8, s1, t6
                  nop
1701:             sll          a2, a3, a3
                  bne          s9, a3, 1708f
1703:             srli         s8, s3, 28
                  lui          t6, 62092
                  andi         s11, s4, 1254
1706:             auipc        s9, 469194
                  bne          a7, sp, 1710f
1708:             sub          s4, a1, s4
                  slti         sp, a4, 80
1710:             addi         s3, t0, 514
                  sra          a3, s5, zero
                  nop
                  add          s7, s4, a0
                  blt          t6, s9, 1720f
                  xor          a2, s6, a5
                  xori         zero, s11, -1539
                  slt          ra, sp, sp
                  sll          t2, gp, t5
                  xori         a5, s8, -1395
1720:             beq          a0, gp, 1738f
                  beq          t6, t2, 1725f
                  srl          a4, t6, t1
                  xori         s7, t0, -1335
                  xori         a2, t5, 1639
1725:             srli         gp, s5, 20
                  and          sp, t3, s7
                  bge          tp, s11, 1732f
                  lui          t2, 443239
                  bne          t0, t4, 1732f
                  or           a6, t5, t3
                  bne          a0, t5, 1742f
1732:             xor          t2, s11, s10
                  sll          s1, a4, a4
                  srli         a5, s6, 31
                  srl          ra, a0, a3
                  blt          s3, a3, 1746f
                  beq          s8, t6, 1741f
1738:             sra          a6, s2, zero
                  ori          s3, s4, -1358
                  bge          s8, a3, 1759f
1741:             xor          s5, s0, s10
1742:             sltiu        s8, s10, 1530
                  add          t4, s8, s4
                  bge          t1, s5, 1750f
                  bne          t0, s9, 1765f
1746:             nop
                  addi         s3, s2, 573
                  xor          s11, t4, s9
                  xori         a1, gp, 863
1750:             slt          a1, s7, ra
                  or           s4, tp, a6
                  slti         a4, t5, 480
                  bge          s1, t6, 1764f
                  andi         ra, a4, -903
                  bltu         t3, a7, 1771f
                  beq          t6, s8, 1758f
                  lui          a0, 82692
1758:             auipc        s1, 177744
1759:             nop
                  slt          a4, t5, s2
                  and          a4, t4, a0
                  addi         t1, zero, 903
                  slt          s2, a4, a2
1764:             nop
1765:             srai         sp, a0, 17
                  and          a1, s6, zero
                  slt          ra, a6, zero
                  sub          ra, s8, a1
                  sltiu        t1, a4, 1962
                  sub          a6, s11, s10
1771:             bge          s3, s7, 1789f
                  bltu         a5, s0, 1780f
                  bgeu         s8, a0, 1778f
                  blt          t4, s11, 1782f
                  auipc        t2, 570030
                  bltu         t0, s7, 1782f
                  srli         t4, a0, 4
1778:             bgeu         s2, s7, 1779f
1779:             andi         a5, a6, -1799
1780:             srl          a1, tp, ra
                  ori          t6, s6, -1517
1782:             blt          s9, s5, 1785f
                  nop
                  addi         t2, zero, -316
1785:             andi         a2, sp, 848
                  bltu         s5, t5, 1798f
                  beq          s6, gp, 1801f
                  lui          a7, 255761
1789:             blt          t2, t4, 1799f
                  beq          tp, sp, 1793f
                  ori          t4, s7, -2039
                  andi         t6, a0, 1003
1793:             andi         a4, t5, -1759
                  bgeu         s3, a0, 1799f
                  srli         s10, s9, 21
                  andi         s1, a4, 1454
                  beq          s6, a4, 1807f
1798:             sltu         s4, s11, s2
1799:             bltu         s7, a7, 1818f
                  srai         a3, a5, 18
1801:             sub          t1, a3, a4
                  andi         a4, s9, -1540
                  andi         a1, a6, 70
                  sub          a5, gp, zero
                  add          t3, t5, tp
sub_3_13:         jal          s9, 1f
0:                jal          ra, 10f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          ra, 5f
4:                jal          gp, 3b
5:                jal          ra, 0b
6:                jal          t1, 8f
7:                jal          ra, 4b
8:                jal          t0, 2b
9:                jal          t1, 6b
10:               and          t1, a4, s8
                  sra          a0, s4, a4
1807:             sll          a1, s4, sp
                  and          zero, t1, t1
                  andi         a1, zero, -2040
                  sra          a2, a2, t6
                  add          t6, t0, s6
                  and          s2, s7, a2
                  auipc        s3, 805033
                  or           sp, s6, s8
                  blt          s1, t0, 1834f
                  bgeu         s9, sp, 1823f
                  srai         t4, a6, 15
1818:             or           s4, a3, tp
                  blt          s4, a5, 1836f
                  bgeu         sp, s9, 1822f
                  bgeu         a7, ra, 1825f
1822:             slli         t2, a1, 18
1823:             srli         t5, s6, 24
                  slli         a3, t6, 3
1825:             srai         s7, zero, 28
                  or           gp, t4, s10
                  srli         s3, s5, 21
                  bne          t5, t1, 1844f
                  sltu         s7, a4, a2
                  srl          s8, s6, a0
                  auipc        t6, 290517
                  bge          s4, t4, 1842f
                  addi         s8, tp, 1893
1834:             auipc        s10, 729730
                  sltiu        ra, s8, -710
1836:             xori         s3, sp, 391
                  xori         a0, s11, -1398
                  sub          t3, a0, a6
                  slt          t6, t6, a1
                  sltu         a5, t4, t0
                  sub          s4, a0, s9
1842:             sltu         t2, s3, t5
                  bge          a1, a4, 1846f
1844:             slli         t6, a7, 27
                  xori         t3, a3, -106
1846:             xor          a3, a3, t2
                  andi         s9, s4, -492
                  nop
                  nop
                  or           zero, t1, s10
                  slli         s9, s1, 24
                  sub          s11, s2, t6
                  andi         s9, a7, -271
                  srl          s10, s3, t5
                  slli         t6, a7, 25
                  bne          s9, t4, 1867f
                  blt          s6, s3, 1875f
                  addi         a1, a7, -51
                  blt          s7, s3, 1867f
                  sub          s4, s6, a4
                  andi         gp, t4, 1875
                  or           s3, a2, s7
                  ori          t1, s7, 1945
                  xori         a7, ra, 990
                  srai         a1, t5, 23
                  bne          t2, gp, 1877f
1867:             add          sp, s3, s8
                  lui          a4, 708058
                  srai         s9, s1, 15
                  lui          s4, 668524
                  srai         s2, t0, 2
                  slti         t3, t1, 1311
                  blt          t6, s8, 1876f
                  slt          s9, s2, t2
1875:             or           s10, a1, sp
1876:             or           a7, s9, t1
1877:             andi         s11, a4, -1270
                  bne          a1, t5, 1888f
                  xor          a7, t1, zero
                  or           a5, s0, s8
                  bge          t4, s11, 1898f
                  slli         t4, s1, 2
                  sll          a1, a6, a0
                  xor          t5, a5, t5
                  blt          t3, s1, 1895f
                  sltiu        s8, a5, 2004
                  xor          s2, s6, a4
1888:             sltu         t0, s9, t1
                  bne          s11, a7, 1890f
1890:             slli         s8, a6, 7
                  sltu         a2, tp, s8
                  sltiu        s10, s6, 1689
                  lui          s2, 819492
                  srai         s10, s11, 18
1895:             nop
                  nop
                  sub          s11, t4, t2
1898:             srl          a2, s11, t3
                  nop
                  lui          a1, 44843
                  bne          ra, a3, 1913f
                  ori          a2, a4, 24
                  bne          s0, s7, 1905f
                  add          t3, a6, a6
1905:             sll          s9, s5, t4
                  and          s1, s11, s9
                  srli         s7, s4, 16
                  ori          t5, t4, 342
                  slt          zero, a7, a6
                  xori         s3, s2, 150
                  andi         s3, zero, 1772
                  sra          zero, a2, gp
1913:             bge          s10, t5, 1915f
                  bgeu         a5, a5, 1928f
1915:             bge          a1, s6, 1920f
                  xor          a6, t1, s8
                  sltiu        a3, a0, 430
                  slti         s7, a6, -2026
                  sll          t4, s5, a1
1920:             srl          a2, ra, t2
                  sll          a2, t1, gp
                  bge          s10, s0, 1928f
                  andi         t4, a5, 1213
                  bgeu         s3, a2, 1928f
                  sltiu        s4, t5, -860
                  bltu         a7, s4, 1929f
                  bgeu         ra, sp, 1935f
1928:             lui          t2, 619026
1929:             sltu         a5, s0, a7
                  or           gp, ra, s5
                  slli         t2, a6, 15
                  sltiu        zero, tp, -28
                  bgeu         ra, a4, 1952f
                  slt          a1, s4, s7
1935:             nop
                  srli         t3, s4, 22
                  add          s11, s9, s7
                  blt          s11, a5, 1944f
                  srai         zero, s8, 8
                  bgeu         t0, a5, 1947f
                  and          sp, t5, t6
                  nop
                  ori          t4, s11, 1187
1944:             slt          t6, s1, zero
                  lui          s8, 830024
                  addi         s4, a6, 633
1947:             ori          s5, t5, -507
                  sll          t5, t1, a1
                  blt          s10, t5, 1954f
                  andi         t6, s5, 298
                  lui          s4, 757101
1952:             sub          a5, s8, a2
                  lui          s4, 227532
1954:             nop
                  xor          s9, s0, a0
                  andi         a6, s8, -2008
                  sltiu        t0, s5, 2041
                  beq          a2, s2, 1977f
                  sll          t1, a3, s8
                  andi         s3, s9, 1011
                  and          a4, a7, a0
                  sub          t3, t0, s10
                  slti         s9, s11, 876
                  beq          a3, a6, 1983f
                  lui          t5, 106676
                  add          s7, s7, t3
                  addi         a5, a3, 1683
                  slli         ra, t3, 20
                  sltu         a0, a0, a0
                  bne          s4, a1, 1975f
                  nop
                  bltu         gp, t2, 1992f
                  beq          zero, ra, 1976f
                  or           s11, s9, s9
1975:             sub          a6, t6, t1
1976:             bge          t6, s11, 1981f
1977:             srl          s9, s7, a4
                  or           a5, t4, s7
                  sltu         s7, gp, a2
                  ori          a6, t3, 2011
1981:             blt          s6, s10, 1997f
                  sub          s8, a1, s2
1983:             sll          zero, a3, a4
                  srli         s5, gp, 11
                  sll          a7, t5, s1
                  srai         t2, a2, 25
                  sltu         sp, a5, a1
                  add          a2, s10, s4
                  srli         s11, s6, 1
                  srai         t5, a6, 11
                  add          s3, s8, s8
1992:             beq          t2, t2, 2011f
                  sltu         s9, s2, s7
                  and          t0, t5, s5
                  xor          gp, a5, a0
                  sra          a5, a6, gp
1997:             bge          t3, s11, 1998f
1998:             and          s1, s6, s0
                  slti         ra, a1, 1107
                  srl          a6, s1, s3
                  bgeu         zero, a7, 2005f
                  nop
                  nop
                  sll          a7, a0, t5
2005:             and          a4, a0, s4
                  sub          s10, s0, s10
                  lui          a5, 722080
                  sra          a0, t1, ra
                  lui          sp, 524005
                  sltu         t3, s2, t3
2011:             and          a0, s5, s3
                  sub          t1, t4, s10
                  andi         t4, a3, -754
                  andi         t2, a2, -1263
                  sll          a0, t2, ra
                  lui          s11, 104372
                  sll          t0, a0, a4
                  srli         s3, t5, 4
                  andi         t0, a5, -1986
                  bge          t5, tp, 2039f
                  beq          t0, s2, 2025f
                  ori          s2, tp, 569
                  beq          a3, a4, 2029f
                  lui          t2, 200630
2025:             ori          s10, a1, 1942
                  nop
                  beq          a1, a5, 2044f
                  bltu         ra, a2, 2048f
2029:             bge          a2, s9, 2039f
                  sll          t3, ra, s5
                  srl          s11, s10, tp
                  sltu         a1, s3, ra
                  add          gp, s5, a6
                  ori          t6, s7, 1109
                  sltu         s3, s8, s2
                  slti         t0, t1, -204
                  sltiu        a7, s8, -977
                  sltiu        t3, s0, 458
2039:             slti         t0, s6, -1118
                  ori          s1, s2, 1120
                  ori          s1, s8, -513
                  bgeu         s11, zero, 2052f
                  or           s10, a3, s5
2044:             addi         zero, s4, -503
                  bgeu         s0, a4, 2052f
                  bne          s9, a5, 2048f
                  sra          s11, s4, zero
2048:             andi         t1, t4, -19
                  ori          a6, a5, 1761
                  srai         s5, t1, 13
                  and          s2, t2, t4
2052:             add          a4, a6, s1
                  ori          a5, a1, -303
                  sltiu        s1, a0, -651
                  srai         s10, s3, 4
                  and          a1, s3, t4
                  ori          s11, s8, 629
                  bne          zero, a3, 2066f
                  addi         s9, tp, -305
                  andi         t6, t1, 191
                  sll          s10, t3, a1
                  lui          s2, 650394
                  srai         t3, a5, 18
                  addi         ra, t2, -478
                  xor          a2, t4, sp
2066:             bgeu         t4, s0, 2080f
                  add          a0, sp, gp
                  auipc        a3, 314132
                  and          s5, s7, s8
                  bne          s9, t2, 2089f
                  slli         gp, a1, 25
                  sub          s2, t2, ra
                  xor          s5, s4, a3
                  slt          t5, t0, s3
                  addi         s4, t5, 474
                  slti         t3, a6, 1341
                  bge          t6, s11, 2088f
                  and          s7, a2, t3
                  srai         a7, a1, 26
2080:             sltu         t1, s4, s9
                  beq          t5, t2, 2092f
                  addi         s3, s8, 1587
                  bltu         s0, t1, 2095f
                  beq          s8, s5, 2089f
                  addi         s9, s7, 1325
                  andi         t6, s9, 424
                  sra          a2, zero, s4
2088:             sltiu        s11, sp, -1286
2089:             xor          t1, s10, t4
                  srli         zero, a4, 30
                  bltu         s6, sp, 2109f
2092:             srl          s5, a3, s0
                  or           zero, t5, a6
                  xori         t1, a3, 1190
2095:             auipc        s11, 215151
                  bne          sp, t4, 2099f
                  beq          t6, a3, 2107f
                  sltiu        s7, s3, -409
2099:             srai         s3, t5, 12
                  srli         a2, s0, 20
                  sltu         ra, s7, a7
                  blt          t3, s1, 2108f
                  beq          t5, s6, 2105f
                  ori          t4, gp, -603
2105:             add          t5, s0, a7
                  bne          t3, s9, 2114f
2107:             srai         t2, a2, 2
2108:             xori         a7, s9, 169
2109:             sra          a7, a1, s8
                  and          t2, s6, a1
                  xor          a4, gp, s4
                  bne          t5, s0, 2115f
                  nop
2114:             and          gp, sp, t4
2115:             andi         s9, t4, -118
                  and          s10, t5, a4
                  xor          s5, t2, a6
                  slti         s5, s10, 454
                  slt          s11, sp, s2
                  nop
                  nop
                  srai         a6, s7, 14
                  sltu         s11, s7, ra
                  slt          t0, zero, s0
                  slt          t6, s10, tp
                  addi         t2, a2, 1824
                  sll          s4, s10, t0
                  sub          a0, s11, a5
                  bgeu         a4, gp, 2134f
                  srl          a0, a0, t5
                  lui          zero, 41689
                  sub          s5, a2, s0
                  andi         s2, t2, 138
2134:             nop
                  or           s10, a3, tp
                  ori          s3, s10, 578
                  sub          ra, s11, s4
                  sra          sp, s11, t6
                  nop
                  add          t5, sp, s0
                  andi         s8, a3, 2
                  srai         s9, zero, 28
                  srai         s7, s3, 19
                  nop
                  bge          t6, t2, 2151f
                  blt          t1, t3, 2151f
                  or           a2, s0, a2
                  bltu         s11, s3, 2168f
                  ori          t2, s2, 851
                  sltu         ra, a1, s10
2151:             sltiu        a4, s9, -830
                  sub          s5, s1, t3
                  lui          s7, 878464
                  xori         a0, s4, -1259
                  auipc        t3, 503384
                  srai         t1, a4, 4
                  beq          t1, t3, 2165f
                  bgeu         ra, tp, 2160f
                  srli         ra, s7, 6
2160:             xor          s8, t4, s5
                  lui          t3, 130330
                  slli         t0, s0, 11
                  sltiu        t6, a3, 837
                  sub          t5, s6, s10
2165:             slt          a4, s2, a6
                  andi         a3, t2, -1167
                  xor          s4, a2, t0
2168:             srli         s11, a7, 1
                  addi         s3, s0, -2011
                  bne          sp, t3, 2174f
                  slli         t5, t5, 22
                  lui          t0, 916099
                  slli         a2, a3, 20
2174:             bltu         a7, t5, 2178f
                  addi         t6, a4, 908
                  bltu         a4, a5, 2187f
                  ori          a6, t3, 487
2178:             addi         t0, gp, 2013
                  sra          zero, a7, s2
                  or           a0, ra, tp
                  bltu         gp, s8, 2198f
                  srli         s1, a7, 8
                  addi         s10, s0, 1160
                  bge          t3, s9, 2195f
                  slt          a7, s1, s10
                  sll          gp, a3, a7
2187:             addi         s8, s7, 2021
                  sra          ra, s9, s2
                  andi         t1, t5, 1818
                  bne          s0, gp, 2208f
                  ori          t1, t6, -1540
                  srli         s7, a5, 3
                  sltiu        s1, s6, 1751
                  sltu         t3, s3, sp
2195:             addi         s1, ra, -925
                  bne          sp, ra, 2212f
                  auipc        a7, 416679
2198:             bge          a7, tp, 2204f
                  srl          s11, s11, ra
                  blt          t0, t6, 2207f
                  srli         a0, a1, 1
                  sub          t4, s10, s5
                  sra          s9, a3, s8
2204:             xori         t1, t5, -1253
                  srl          t2, s2, s4
                  xori         t3, a7, -1073
2207:             nop
2208:             sra          s5, sp, gp
                  srai         t2, s4, 24
                  andi         s10, t4, 1728
                  beq          t1, a4, 2213f
2212:             nop
2213:             sltiu        zero, t0, -572
                  xor          t5, s7, a6
                  lw           s9, 4(s6)
                  addi         s6, s6, 28
                  xor          s3, t0, s7
                  andi         s2, t4, -1339
3233:             addi x26, x25, 0
3233:             jalr x26, x26, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x8, x22, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x7, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x7, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x7, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x7, x31, ecall_handler
                  li x31, 0x1
                  beq x7, x31, instr_fault_handler
                  li x31, 0x5
                  beq x7, x31, load_fault_handler
                  li x31, 0x7
                  beq x7, x31, store_fault_handler
                  li x31, 0xc
                  beq x7, x31, pt_fault_handler
                  li x31, 0xd
                  beq x7, x31, pt_fault_handler
                  li x31, 0xf
                  beq x7, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x22, x8, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x8, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x8, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x22, x8, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x22, x8, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x22, x8, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
