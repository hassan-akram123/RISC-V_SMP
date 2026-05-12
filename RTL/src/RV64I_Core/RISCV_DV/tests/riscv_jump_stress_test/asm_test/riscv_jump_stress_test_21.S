.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x2, kernel_stack_end

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
                  li x0, 0xf47b0cfc
                  li x1, 0xe
                  li x3, 0xce6d5e68
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x7
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x1
                  li x14, 0x4
                  li x15, 0x80000000
                  li x16, 0x9d65e54a
                  li x17, 0xb
                  li x18, 0xd72aba8e
                  li x19, 0x6
                  li x20, 0x0
                  li x21, 0xf
                  li x22, 0x891ca461
                  li x23, 0xf
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x8b95e4d6
                  li x27, 0xfab128c6
                  li x28, 0x768b7017
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x0
                  la x4, user_stack_end
main:             andi         s10, a7, -24
                  srli         s7, s8, 17
                  la           s8, sub_1
                  addi         s8, s8, 52
                  or           s9, s6, s10
                  beq          a6, s8, main_j2 #branch to jump instr
                  srl          s10, s3, s0
                  auipc        a0, 671874
main_j2:          jalr         ra, s8, -52 #jump main -> sub_1
main_0:           jal          ra, 6f
0:                jal          ra, 1f
1:                jal          t1, 9f
2:                jal          t1, 12f
3:                jal          t1, 10f
4:                jal          t1, 0b
5:                jal          a5, 13f
6:                jal          t1, 4b
7:                jal          s3, 14f
8:                jal          s1, 15f
9:                jal          t0, 5b
10:               jal          ra, 16f
11:               jal          t1, 8b
12:               jal          a5, 3b
13:               jal          ra, 2b
14:               jal          t1, 17f
15:               jal          a0, 7b
16:               jal          t5, 18f
17:               jal          ra, 19f
18:               jal          t1, 11b
19:               addi         s6, ra, 1222
                  bge          gp, s3, 9f
                  xori         s4, a1, -643
                  or           s4, t0, s10
                  nop
                  sub          t6, t5, s8
                  beq          sp, t5, 8f
                  beq          s3, gp, 9f
                  sltu         t2, t5, tp
8:                bne          a6, a5, 9f
                  srli         s9, a2, 12
                  srai         s11, zero, 24
                  la           t3, sub_1
                  sll          a6, s9, s3
                  addi         t3, t3, -544
                  andi         a7, a1, 474
                  bltu         a2, gp, main_j1 #branch to jump instr
                  ori          s5, t5, -1782
main_j1:          jalr         ra, t3, 544 #jump main -> sub_1
9:                srai         s4, a3, 29
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            or           s8, s10, s3
                  bne          t0, gp, sub_4_stack_p
sub_4_stack_p:    addi         tp, tp, -24
                  auipc        a4, 930628
                  sw           ra, 4(tp)
                  ori          a0, sp, -402
                  lui          s11, 557342
                  xor          a4, s9, s3
                  srai         a2, t3, 0
                  slli         zero, s8, 14
                  add          s5, gp, s0
                  slt          a2, s11, a5
                  or           s6, t6, s6
                  sra          t0, a4, a5
                  and          s9, t5, s4
                  beq          a5, s11, sub_4_j8 #branch to jump instr
                  slli         a5, sp, 20
                  srl          a1, t5, a2
                  srl          a0, s1, t0
                  lui          s7, 58203
                  xor          t3, t0, sp
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
sub_4_1:          jal          ra, 22f
0:                jal          ra, 16f
1:                jal          a3, 13f
2:                jal          ra, 18f
3:                jal          ra, 26f
4:                jal          t2, 0b
5:                jal          ra, 9f
6:                jal          ra, 17f
7:                jal          t1, 6b
8:                jal          t2, 12f
9:                jal          ra, 14f
10:               jal          ra, 4b
11:               jal          ra, 27f
12:               jal          t4, 28f
13:               jal          t1, 23f
14:               jal          s9, 1b
15:               jal          s3, 2b
16:               jal          ra, 29f
17:               jal          ra, 15b
18:               jal          ra, 30f
19:               jal          ra, 24f
20:               jal          ra, 19b
21:               jal          a1, 3b
22:               jal          gp, 21b
23:               jal          t1, 20b
24:               jal          t0, 10b
25:               jal          t1, 7b
26:               jal          t1, 11b
27:               jal          ra, 5b
28:               jal          ra, 25b
29:               jal          t1, 8b
30:               sra          a4, s0, t6
sub_4_3:          jal          ra, 8f
0:                jal          ra, 9f
1:                jal          s1, 25f
2:                jal          t1, 10f
3:                jal          s6, 1b
4:                jal          t1, 3b
5:                jal          ra, 19f
6:                jal          s9, 0b
7:                jal          ra, 4b
8:                jal          t1, 11f
9:                jal          t1, 16f
10:               jal          s4, 12f
11:               jal          ra, 5b
12:               jal          ra, 26f
13:               jal          t1, 20f
14:               jal          t1, 13b
15:               jal          ra, 28f
16:               jal          ra, 15b
17:               jal          ra, 7b
18:               jal          t1, 23f
19:               jal          ra, 18b
20:               jal          ra, 17b
21:               jal          ra, 14b
22:               jal          a1, 6b
23:               jal          s11, 24f
24:               jal          s6, 21b
25:               jal          t1, 2b
26:               jal          s6, 27f
27:               jal          gp, 22b
28:               addi         t3, t0, -151
sub_4_2:          jal          ra, 7f
0:                jal          s1, 3f
1:                jal          ra, 0b
2:                jal          ra, 20f
3:                jal          ra, 4f
4:                jal          ra, 22f
5:                jal          gp, 19f
6:                jal          t1, 17f
7:                jal          ra, 5b
8:                jal          ra, 15f
9:                jal          ra, 18f
10:               jal          ra, 9b
11:               jal          ra, 16f
12:               jal          gp, 8b
13:               jal          ra, 2b
14:               jal          ra, 21f
15:               jal          ra, 6b
16:               jal          a1, 13b
17:               jal          ra, 10b
18:               jal          ra, 1b
19:               jal          ra, 11b
20:               jal          t0, 14b
21:               jal          s7, 12b
22:               nop
sub_4_0:          jal          ra, 6f
0:                jal          s4, 14f
1:                jal          t1, 13f
2:                jal          a2, 18f
3:                jal          t3, 4f
4:                jal          t1, 8f
5:                jal          gp, 0b
6:                jal          ra, 7f
7:                jal          ra, 17f
8:                jal          ra, 11f
9:                jal          ra, 5b
10:               jal          s8, 12f
11:               jal          a5, 1b
12:               jal          ra, 15f
13:               jal          ra, 9b
14:               jal          t1, 2b
15:               jal          t1, 16f
16:               jal          t1, 3b
17:               jal          ra, 10b
18:               slli         t2, s6, 4
                  auipc        s1, 570955
                  ori          s10, a7, -1559
                  slti         a0, s5, 1699
                  sll          s1, t4, a5
                  sra          s5, ra, s8
                  and          a3, t4, t1
                  bgeu         s5, s10, 12f
                  sltiu        t4, t5, 282
                  slti         gp, a0, -263
                  xor          gp, a3, s2
                  beq          sp, s9, 15f
                  andi         a4, gp, -1568
12:               sll          gp, s2, a2
                  sra          t5, a6, a0
                  srli         t1, s6, 6
15:               xori         t0, s0, -171
                  bltu         s1, s5, 34f
                  sltiu        s8, s0, -1758
                  and          s9, s6, a6
                  auipc        s7, 955459
                  slt          t5, s3, zero
                  sltiu        s4, a4, -648
                  slt          a2, zero, gp
                  xori         s10, t5, -735
                  sltu         s5, t0, t4
                  auipc        a6, 553673
                  sll          a7, a5, s6
                  lui          t5, 278860
                  nop
                  srai         s0, s0, 17
                  and          s3, t6, s6
                  srl          s1, s0, a6
                  andi         a4, t5, -1578
                  beq          a5, t3, 49f
34:               sub          s11, s3, zero
                  sub          t5, t1, s4
                  xori         t5, zero, -102
                  addi         s11, a6, 944
                  bltu         s8, t6, 50f
                  or           t4, sp, s6
                  sra          s4, s10, t6
                  srli         s3, s7, 24
                  sltu         s0, zero, zero
                  xor          t2, s9, t0
                  addi         s1, t5, -801
                  blt          t3, a6, 65f
                  ori          a5, tp, -1969
                  xori         s8, tp, -812
                  xor          s6, ra, a3
49:               blt          a2, a0, 66f
50:               nop
                  xor          t0, tp, sp
                  and          a5, t3, t0
                  or           t5, a3, s2
                  bne          s11, a0, 67f
                  sub          a6, tp, t6
                  bltu         s2, t5, 59f
                  srai         t2, s8, 0
                  sltiu        s10, s8, 1115
59:               sltiu        s0, t1, -1896
                  slti         gp, t3, -847
                  srai         s4, a7, 23
                  or           gp, t2, tp
                  sra          s1, s8, s2
                  beq          s4, s3, 72f
65:               blt          ra, tp, 69f
66:               blt          a2, a5, 84f
67:               add          t5, t2, t3
                  bltu         t2, s8, 69f
69:               add          t5, s5, s11
                  srai         s9, s7, 0
                  ori          s1, a0, 1041
72:               bge          gp, t6, 77f
                  slt          zero, a3, tp
                  nop
                  sll          t0, t5, t2
                  slli         s11, a7, 12
77:               sltu         s10, t3, a4
                  sra          t5, a6, a7
                  srl          s6, t4, gp
                  auipc        a3, 678861
                  srl          t6, s0, sp
                  srli         gp, t0, 12
                  xori         gp, s10, -2023
84:               bgeu         ra, ra, 85f
85:               xor          s1, sp, sp
                  slli         zero, t5, 25
                  bge          t2, tp, 96f
                  sltu         zero, gp, tp
                  srai         t6, a5, 28
                  sltu         s9, s4, t1
                  blt          a2, s0, 97f
                  bltu         s8, s1, 112f
                  slli         a5, t3, 17
                  xor          a5, a4, s1
                  slti         s11, a1, -321
96:               andi         a1, zero, 1633
97:               add          s1, zero, a5
                  bne          a0, ra, 117f
                  and          a1, t0, ra
                  slti         a1, s8, 407
                  xori         t4, gp, -1836
                  xori         s6, s1, 1048
                  or           s9, t6, t2
                  slli         ra, a6, 25
                  sll          t2, s6, s6
                  and          s9, s1, t1
                  add          t3, s4, s8
                  slli         t4, a5, 1
                  xori         s9, ra, 374
                  la           s6, sub_5
                  srl          t1, t3, ra
                  auipc        a1, 899902
                  auipc        ra, 789952
                  slli         t4, s2, 5
                  addi         s6, s6, 930
                  srai         s3, sp, 1
                  srli         a4, a4, 19
                  lui          t2, 195422
sub_4_j7:         jalr         ra, s6, -929 #jump sub_4 -> sub_5
                  bltu         s2, t2, 118f
                  andi         t6, s3, 1957
112:              bge          a0, sp, 122f
                  slti         s8, t4, 733
                  beq          s2, s2, 117f
                  srl          s6, s7, s3
                  slt          t5, s3, t4
117:              bne          s10, s2, 128f
118:              lui          zero, 683990
                  bgeu         s9, a7, 131f
                  xor          s9, t3, s5
                  srai         s1, t0, 18
122:              slti         s10, a2, -1921
                  slti         t0, s4, -2044
                  ori          t2, gp, -1961
                  add          gp, a4, s6
                  andi         t6, s2, -1511
                  addi         s1, a3, -1826
128:              blt          s5, zero, 144f
                  slt          a7, s10, s0
                  slli         s9, s10, 26
131:              xor          gp, s1, s3
                  andi         t3, s0, -1090
                  auipc        gp, 321007
                  srai         ra, s5, 27
                  and          zero, s9, t3
                  and          s7, s2, s10
                  sll          a6, a4, s9
                  ori          s3, a0, 1953
                  bne          sp, a4, 144f
                  sll          s1, a3, a4
                  xor          zero, t2, s3
                  or           s9, a2, s9
                  slti         a2, t1, 130
144:              sltiu        s9, t1, 1508
                  xor          s11, s11, a6
                  sltu         s4, t3, s3
                  bltu         a0, t4, 154f
                  slli         t1, s1, 17
                  auipc        s7, 635487
                  srli         s0, a7, 1
                  bltu         t2, s4, 162f
                  andi         t6, gp, -559
                  srli         a0, s7, 28
154:              bltu         a7, a5, 162f
                  blt          a5, a6, 169f
                  bltu         s1, gp, 159f
                  ori          a6, a2, -1301
                  and          a0, s11, a1
159:              xor          s0, a5, gp
                  slti         s7, s6, 1345
                  and          a1, s10, a6
162:              slt          s6, t4, t0
                  slt          t5, sp, t4
                  bne          a1, a5, 165f
165:              bge          ra, s7, 173f
                  sra          a7, t4, tp
                  beq          t6, a4, 184f
                  lui          s6, 37652
169:              bgeu         t2, sp, 183f
                  srli         t1, s5, 9
                  slti         s3, t1, 829
                  bge          t4, a5, 179f
173:              or           gp, s11, zero
                  bltu         s11, t1, 183f
                  and          s8, a0, t5
                  nop
                  slli         t3, a1, 31
                  auipc        t1, 894370
179:              blt          a5, s8, 180f
180:              add          s6, t4, s2
                  auipc        s0, 322382
                  sll          s6, tp, a4
183:              andi         s8, a1, 0
184:              sll          t4, s1, s8
                  sra          s9, s1, a5
                  slti         t2, s10, 921
                  andi         s11, s1, 219
                  ori          a5, t2, 1941
                  nop
                  slli         a0, s3, 22
                  slt          zero, s3, zero
                  srai         a1, s4, 10
                  bge          a0, t2, 209f
                  add          a2, s6, a3
                  slti         a6, a5, 1904
                  srl          s8, t0, s3
                  andi         a5, s11, 187
                  slti         a3, a6, 1087
                  andi         zero, s0, 65
                  lui          s8, 454983
                  addi         a0, s7, -86
                  sra          s8, s4, t5
                  sltu         s5, s1, t4
                  srl          t5, s11, a5
                  bne          t5, sp, 213f
                  bne          sp, t4, 211f
                  nop
                  sll          s5, t5, t6
209:              blt          s4, sp, 214f
                  srli         zero, s8, 23
211:              slti         s9, zero, -1449
                  sltu         s8, t4, t1
213:              bge          t4, s1, 217f
214:              addi         t4, t2, -412
                  xori         t4, a6, -1883
                  slt          ra, a6, s9
217:              sltiu        s0, a5, -645
                  xori         a2, t5, 455
                  lw           ra, 4(tp)
                  or           a5, s11, t1
                  sltu         t2, s8, t0
                  andi         s9, t1, -1801
                  addi         tp, tp, 24
                  slti         s7, zero, 439
363:              addi x10, x1, 0
363:              jalr x10, x10, 0
sub_3:            slt          t0, t4, a4
                  addi         tp, tp, -32
                  sw           ra, 4(tp)
                  ori          s9, a6, -859
                  slt          zero, tp, s6
                  addi         t6, s7, -22
                  sra          s3, a0, sp
sub_3_7:          jal          ra, 4f
0:                jal          s11, 22f
1:                jal          ra, 20f
2:                jal          s11, 19f
3:                jal          s4, 5f
4:                jal          ra, 0b
5:                jal          t1, 9f
6:                jal          ra, 12f
7:                jal          ra, 3b
8:                jal          gp, 21f
9:                jal          ra, 10f
10:               jal          s9, 8b
11:               jal          t6, 16f
12:               jal          ra, 14f
13:               jal          gp, 23f
14:               jal          ra, 1b
15:               jal          t1, 7b
16:               jal          ra, 15b
17:               jal          ra, 13b
18:               jal          ra, 17b
19:               jal          ra, 11b
20:               jal          t0, 18b
21:               jal          ra, 6b
22:               jal          t1, 2b
23:               srl          t0, s9, s3
sub_3_8:          jal          ra, 9f
0:                jal          ra, 12f
1:                jal          ra, 4f
2:                jal          a2, 13f
3:                jal          t6, 6f
4:                jal          ra, 11f
5:                jal          s5, 1b
6:                jal          ra, 0b
7:                jal          s0, 5b
8:                jal          a0, 7b
9:                jal          t1, 10f
10:               jal          ra, 3b
11:               jal          ra, 2b
12:               jal          ra, 8b
13:               auipc        a2, 328510
sub_3_3:          jal          ra, 8f
0:                jal          ra, 13f
1:                jal          gp, 5f
2:                jal          ra, 6f
3:                jal          ra, 4f
4:                jal          s6, 12f
5:                jal          t1, 10f
6:                jal          t1, 7f
7:                jal          ra, 9f
8:                jal          t4, 1b
9:                jal          ra, 0b
10:               jal          s5, 3b
11:               jal          t1, 2b
12:               jal          ra, 11b
13:               srl          a6, a3, t5
sub_3_2:          jal          ra, 26f
0:                jal          ra, 10f
1:                jal          ra, 5f
2:                jal          t1, 16f
3:                jal          ra, 13f
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          s4, 18f
7:                jal          t1, 14f
8:                jal          t1, 27f
9:                jal          ra, 7b
10:               jal          ra, 19f
11:               jal          t1, 9b
12:               jal          ra, 6b
13:               jal          ra, 12b
14:               jal          a2, 8b
15:               jal          ra, 1b
16:               jal          t5, 11b
17:               jal          ra, 25f
18:               jal          ra, 2b
19:               jal          ra, 24f
20:               jal          ra, 17b
21:               jal          s11, 23f
22:               jal          ra, 21b
23:               jal          t1, 0b
24:               jal          ra, 15b
25:               jal          ra, 22b
26:               jal          ra, 20b
27:               srai         s0, t2, 14
sub_3_1:          jal          ra, 2f
0:                jal          ra, 14f
1:                jal          a1, 8f
2:                jal          ra, 7f
3:                jal          t1, 5f
4:                jal          gp, 18f
5:                jal          gp, 25f
6:                jal          s10, 9f
7:                jal          ra, 1b
8:                jal          s5, 19f
9:                jal          ra, 12f
10:               jal          ra, 17f
11:               jal          a7, 20f
12:               jal          s4, 21f
13:               jal          s6, 16f
14:               jal          ra, 6b
15:               jal          ra, 11b
16:               jal          t1, 4b
17:               jal          t6, 0b
18:               jal          ra, 27f
19:               jal          gp, 24f
20:               jal          t1, 26f
21:               jal          ra, 3b
22:               jal          ra, 13b
23:               jal          s6, 15b
24:               jal          ra, 22b
25:               jal          ra, 28f
26:               jal          t3, 10b
27:               jal          ra, 23b
28:               srl          t3, s0, s6
sub_3_5:          jal          ra, 22f
0:                jal          ra, 25f
1:                jal          ra, 27f
2:                jal          t1, 5f
3:                jal          t0, 0b
4:                jal          t1, 2b
5:                jal          t6, 24f
6:                jal          t4, 8f
7:                jal          s6, 21f
8:                jal          ra, 7b
9:                jal          ra, 11f
10:               jal          t0, 18f
11:               jal          t1, 29f
12:               jal          a0, 1b
13:               jal          t0, 14f
14:               jal          t1, 9b
15:               jal          ra, 20f
16:               jal          ra, 3b
17:               jal          ra, 26f
18:               jal          ra, 13b
19:               jal          s7, 6b
20:               jal          ra, 23f
21:               jal          t0, 28f
22:               jal          ra, 15b
23:               jal          t1, 19b
24:               jal          t1, 12b
25:               jal          ra, 17b
26:               jal          ra, 4b
27:               jal          t1, 10b
28:               jal          t1, 16b
29:               srai         s6, s2, 2
sub_3_6:          jal          ra, 7f
0:                jal          a2, 10f
1:                jal          a2, 24f
2:                jal          s6, 15f
3:                jal          t1, 14f
4:                jal          ra, 28f
5:                jal          ra, 11f
6:                jal          ra, 9f
7:                jal          ra, 18f
8:                jal          t1, 29f
9:                jal          ra, 22f
10:               jal          t0, 26f
11:               jal          s4, 3b
12:               jal          ra, 2b
13:               jal          ra, 25f
14:               jal          ra, 27f
15:               jal          ra, 19f
16:               jal          s5, 13b
17:               jal          ra, 23f
18:               jal          ra, 12b
19:               jal          ra, 0b
20:               jal          ra, 8b
21:               jal          ra, 17b
22:               jal          t0, 5b
23:               jal          ra, 1b
24:               jal          ra, 20b
25:               jal          t1, 4b
26:               jal          t1, 16b
27:               jal          ra, 21b
28:               jal          ra, 6b
29:               or           a5, a7, a5
sub_3_9:          jal          ra, 10f
0:                jal          t1, 6f
1:                jal          t1, 4f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          s7, 9f
5:                jal          ra, 16f
6:                jal          ra, 11f
7:                jal          t1, 14f
8:                jal          t0, 13f
9:                jal          ra, 7b
10:               jal          gp, 15f
11:               jal          t1, 8b
12:               jal          ra, 1b
13:               jal          gp, 5b
14:               jal          ra, 2b
15:               jal          ra, 12b
16:               nop
                  ori          s0, s8, -1087
                  addi         a2, s1, -513
                  bge          a2, s0, 19f
                  or           zero, s7, a6
                  lui          t6, 775556
                  srli         gp, a2, 30
                  nop
                  slt          a2, s8, zero
                  addi         s7, zero, -739
                  addi         s7, s6, 637
                  sub          t0, s9, s2
                  srli         a6, a7, 15
                  add          s6, sp, ra
                  blt          s0, a5, 19f
                  xori         s10, s5, 1125
                  addi         t1, s6, 1332
                  ori          s3, s9, 1048
                  srai         t1, t3, 20
                  beq          a7, t1, 26f
19:               beq          s9, s0, 39f
                  slli         t3, t0, 30
                  lui          t4, 351498
                  nop
                  slli         s11, tp, 4
                  auipc        s6, 468230
                  bgeu         t0, s6, 32f
26:               sra          a4, t2, t3
                  srli         a1, t5, 28
                  slti         t4, t3, -1936
                  ori          t0, t5, 1628
                  slt          s0, s6, t2
                  ori          s1, a7, -628
32:               bltu         ra, sp, 43f
                  ori          t5, a0, -518
                  addi         s7, gp, 1682
                  or           s8, s2, t5
                  bne          t1, t2, 39f
                  slli         ra, s2, 0
                  and          t1, a5, s6
39:               srli         s4, t4, 12
                  add          s7, s6, a6
                  srai         t4, s4, 10
                  srai         a2, a0, 20
43:               bltu         s5, s4, 61f
                  sub          a7, s2, t5
                  sll          t3, s4, s10
                  andi         s6, t4, 1372
                  auipc        t4, 251522
                  andi         s0, t5, -1605
                  xori         a6, a5, 922
                  srl          s8, a6, a3
                  sub          a2, a3, s1
                  bge          s0, zero, 58f
                  nop
                  xor          a0, t4, zero
sub_3_4:          jal          ra, 20f
0:                jal          a4, 19f
1:                jal          t3, 24f
2:                jal          t1, 3f
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          t1, 2b
6:                jal          ra, 27f
7:                jal          ra, 5b
8:                jal          s0, 18f
9:                jal          t1, 26f
10:               jal          a4, 9b
11:               jal          a4, 8b
12:               jal          ra, 15f
13:               jal          ra, 17f
14:               jal          gp, 23f
15:               jal          gp, 11b
16:               jal          s0, 25f
17:               jal          t0, 21f
18:               jal          ra, 1b
19:               jal          t1, 16b
20:               jal          ra, 4b
21:               jal          ra, 14b
22:               jal          ra, 10b
23:               jal          s6, 12b
24:               jal          ra, 0b
25:               jal          ra, 22b
26:               jal          gp, 7b
27:               slli         a1, s2, 5
                  sltiu        a0, a7, -1888
                  ori          gp, t0, 622
                  xor          s8, s10, s7
58:               bltu         a4, s5, 62f
                  xor          t0, s3, t5
                  blt          t6, t1, 72f
61:               xor          gp, s9, s9
62:               auipc        s9, 606212
                  bltu         a0, t1, 82f
                  xor          s1, s5, t2
                  beq          ra, a6, 85f
                  bltu         t0, a5, 77f
                  bltu         t2, a3, 80f
                  sra          t2, s2, t2
                  slt          s3, s2, gp
                  srai         a3, t5, 29
                  sra          t4, a4, t2
72:               slti         a1, tp, 48
                  andi         s5, s10, 273
                  xori         a3, s10, -1733
                  slt          t1, tp, tp
                  sra          s7, sp, a5
77:               add          s8, a3, ra
                  ori          s6, a7, -1410
                  srli         s10, a3, 0
80:               srli         s0, gp, 26
                  addi         ra, sp, -1332
82:               addi         a4, t0, 797
                  nop
                  sra          a2, s11, s6
85:               bge          a1, s6, 95f
                  slli         a5, gp, 7
                  slti         s6, s6, -1413
                  add          s5, s11, s1
                  blt          gp, s9, 101f
                  or           s4, a2, a6
                  blt          ra, a6, 93f
                  bne          s9, s0, 106f
93:               srli         s4, t2, 25
                  addi         t4, t6, -760
95:               slti         a7, ra, 242
                  ori          s0, s2, -341
                  sub          ra, t3, s1
                  auipc        t3, 526318
                  blt          s2, s2, 108f
                  srai         s7, a2, 7
101:              sltu         s5, s7, s9
                  bltu         t4, a0, 122f
                  bge          tp, a3, 106f
                  or           t0, t3, t4
                  auipc        gp, 115625
106:              lui          t0, 846664
                  sub          s3, t2, t4
108:              sra          a5, a4, zero
                  bne          s4, sp, 125f
                  xor          s7, ra, tp
                  bltu         a4, s5, 113f
                  slti         a0, s1, -551
113:              srli         s0, a3, 29
                  srli         a7, s3, 4
                  sll          t1, a4, a4
                  ori          t0, a1, 498
                  xor          t5, a6, a6
                  blt          t3, t3, 129f
                  beq          t4, s9, 126f
                  slti         ra, s2, -558
                  slt          gp, zero, t6
122:              sltu         a6, a2, t3
                  bgeu         gp, s5, 138f
                  nop
125:              bge          s1, s6, 134f
126:              nop
                  addi         s1, t5, 108
                  and          a7, a2, tp
129:              sltu         s10, s0, s6
                  auipc        a2, 99478
                  srai         a7, a5, 29
                  or           t6, a5, s9
                  nop
134:              slti         a5, a5, 1347
                  sll          s11, a6, s1
                  add          s3, s6, s5
                  and          s7, s9, t3
138:              beq          a3, t1, 139f
139:              bne          s2, s3, 152f
                  add          s11, t4, t3
                  add          a2, a1, s2
                  or           a3, gp, s10
                  bgeu         a1, a0, 144f
144:              lui          s3, 766926
                  bne          zero, t2, 157f
                  blt          a1, s1, 152f
                  add          t5, sp, a4
                  and          a0, a2, s6
                  slli         s4, a1, 10
                  sra          t5, s2, s5
                  bltu         t3, s1, 165f
152:              add          t0, t2, t0
                  addi         s7, t1, -725
                  sltu         a4, gp, t5
                  andi         a4, t6, -266
                  slli         s9, s0, 15
157:              sltu         ra, s5, a6
                  and          s7, t0, t3
                  and          a1, t4, t0
                  sltiu        ra, s4, 237
                  bltu         a4, ra, 170f
                  add          t2, ra, sp
                  srl          a3, s7, s7
                  addi         a4, tp, 852
165:              slt          t5, t1, s6
                  sra          s9, t1, sp
                  beq          tp, a5, 174f
                  sll          t1, a1, s6
                  srai         t4, a7, 5
170:              slti         t2, sp, -584
                  bltu         sp, s8, 186f
                  bltu         s6, t2, 183f
                  sra          t1, s3, s1
174:              xori         s6, t3, -975
                  srl          zero, s11, t0
                  sltu         a6, s8, t2
                  bgeu         t5, s11, 184f
                  addi         t2, a3, 207
                  bgeu         zero, s3, 196f
                  sltu         a2, s2, a3
                  nop
                  lui          s0, 694243
183:              sltu         a5, s7, t6
184:              xor          t2, a4, t3
                  slt          s9, s0, a3
186:              ori          s6, s9, 11
                  srli         s8, s7, 31
                  beq          t6, s0, 191f
                  add          a3, t4, s9
                  sll          zero, s1, gp
sub_3_0:          jal          ra, 22f
0:                jal          t1, 20f
1:                jal          ra, 0b
2:                jal          ra, 9f
3:                jal          gp, 17f
4:                jal          gp, 2b
5:                jal          ra, 7f
6:                jal          ra, 12f
7:                jal          s8, 23f
8:                jal          gp, 11f
9:                jal          t1, 13f
10:               jal          t0, 19f
11:               jal          t0, 16f
12:               jal          a1, 21f
13:               jal          ra, 8b
14:               jal          ra, 1b
15:               jal          ra, 18f
16:               jal          ra, 10b
17:               jal          s6, 5b
18:               jal          t0, 6b
19:               jal          t1, 15b
20:               jal          ra, 4b
21:               jal          t1, 3b
22:               jal          ra, 14b
23:               or           s0, t6, a1
191:              blt          a7, s4, 200f
                  nop
                  slli         t0, a5, 26
                  blt          sp, a5, 204f
                  srai         s7, s3, 21
196:              slli         a2, a4, 15
                  sltiu        a4, s2, -859
                  sll          s6, s4, a7
                  blt          t4, a5, 207f
200:              xor          t3, s1, a4
                  beq          s9, t3, 219f
                  sltiu        a5, t5, 1301
                  bge          ra, s3, 216f
204:              sra          gp, tp, t5
                  or           s5, s9, a0
                  and          s6, a4, gp
207:              slti         t2, s7, -1141
                  sltiu        t2, sp, 160
                  ori          gp, t4, -1649
                  addi         s10, ra, -1659
                  sub          s6, a1, a1
                  sltu         s8, s7, a2
                  slli         a0, sp, 0
                  sltu         a5, t2, a6
                  add          zero, a2, s3
216:              auipc        s1, 417605
                  lui          a2, 996894
                  srli         s11, a3, 11
219:              bge          s3, s8, 238f
                  blt          s7, t1, 222f
                  bltu         t1, s10, 241f
222:              sll          s11, s1, s9
                  and          zero, a0, a2
                  lui          ra, 1009066
                  slt          t5, s0, s4
                  sltu         s8, s2, a0
                  bgeu         s10, sp, 239f
                  slli         a3, s0, 20
                  slli         a5, a4, 20
                  sltiu        a1, s8, 1077
                  slti         a6, t2, 1042
                  slli         s7, a1, 19
                  ori          t4, s10, 1172
                  ori          t0, a5, -1979
                  slli         s10, s1, 8
                  xori         s1, a5, -2037
                  beq          t5, a3, 241f
238:              srl          a0, s5, t0
239:              nop
                  sll          s7, a1, t1
241:              andi         t0, a0, 572
                  xor          zero, s4, t2
                  slt          s9, s8, t0
                  srl          s4, s5, s6
                  bgeu         t4, t4, 265f
                  srai         a7, t6, 21
                  srl          zero, s8, s0
                  slti         zero, s2, -267
                  sra          a0, a5, zero
                  nop
                  slti         a2, a5, -151
                  slti         t3, s1, 822
                  sub          t5, a0, s0
                  addi         a1, a7, 468
                  ori          t4, zero, -1622
                  sltiu        s4, t5, -1734
                  slli         a3, s9, 1
                  bne          s10, a4, 278f
                  and          s8, s11, a4
                  bgeu         a3, a0, 276f
                  lui          ra, 670471
                  slli         a3, tp, 7
                  and          t0, sp, t3
                  xor          s4, t0, t2
265:              sra          s9, s2, tp
                  slti         t4, s5, -948
                  blt          s0, s7, 273f
                  sub          s9, s0, tp
                  xori         gp, s8, 2029
                  and          s4, s9, t1
                  bltu         a7, a7, 284f
                  nop
273:              beq          a3, t1, 284f
                  srai         t5, s0, 3
                  auipc        a4, 521771
276:              srai         a4, a3, 22
                  nop
278:              blt          a5, a4, 280f
                  sra          t1, s8, t3
280:              sub          s10, t1, s2
                  blt          s3, t6, 284f
                  srl          t6, s4, zero
                  srai         a2, s0, 5
284:              bne          sp, t0, 295f
                  bgeu         s5, t0, 287f
                  auipc        zero, 713060
287:              auipc        t4, 111355
                  bgeu         a6, s7, 298f
                  bne          s0, a0, 296f
                  xor          a6, a7, s5
                  srli         s10, s2, 12
                  srli         a4, s0, 17
                  sub          s0, s8, gp
                  ori          s6, a7, 208
295:              sra          a3, a5, sp
296:              bne          a4, zero, 316f
                  sll          t0, t3, s2
298:              sra          t5, a0, t2
                  bgeu         zero, s0, 314f
                  sltiu        ra, s0, -729
                  blt          s11, s9, 304f
                  sub          gp, gp, s11
                  sub          s1, a2, zero
304:              bgeu         t2, s7, 310f
                  slli         gp, a4, 28
                  slt          t1, s6, t1
                  ori          s11, a5, 1003
                  slt          s5, a3, s4
                  sll          t6, s1, tp
310:              sltiu        s7, tp, 1032
                  sra          s8, zero, s7
                  blt          a3, t4, 323f
                  nop
314:              slt          a4, s6, t4
                  sll          s7, ra, a0
316:              ori          s11, s10, 47
                  slli         t4, t0, 5
                  sra          s7, t2, s4
                  srl          s10, t4, s9
                  addi         a1, t4, 888
                  slt          a2, a2, t1
                  andi         t4, t2, 1530
323:              lui          s5, 356962
                  srli         s6, a3, 17
                  sltiu        zero, t1, 178
                  sll          t0, t2, s8
                  sltiu        s11, s5, -1372
                  slti         zero, s8, 1701
                  bltu         t3, s10, 342f
                  bge          s9, gp, 337f
                  nop
                  lui          s10, 945931
                  slti         s0, s0, 1970
                  srli         s9, s3, 5
                  srli         t3, s1, 12
                  srli         s1, s6, 17
337:              xori         s1, t4, 600
                  bge          zero, ra, 340f
                  sltiu        a4, a2, -857
340:              blt          t6, a4, 360f
                  or           s8, s2, a3
342:              bge          s9, s0, 355f
                  sra          s3, t3, a6
                  and          a1, zero, t1
                  xor          t6, t1, s0
                  sll          t5, tp, t3
                  bltu         tp, s6, 365f
                  or           a3, t6, t3
                  or           s1, t6, s9
                  addi         a6, s2, -1113
                  bge          s6, s10, 360f
                  sll          s1, a6, s5
                  sltu         s0, s0, s7
                  nop
355:              blt          gp, s8, 367f
                  xori         a1, gp, -559
                  sltu         s5, ra, a1
                  or           s8, a1, s10
                  bltu         gp, s7, 375f
360:              slli         t4, gp, 19
                  xor          s1, a6, s1
                  xori         s11, ra, -1595
                  ori          t4, a1, 466
                  srl          t0, s9, a5
365:              sltu         gp, t6, t4
                  add          s7, t3, a2
367:              sub          t6, a1, s6
                  sub          s7, s5, a5
                  srai         a6, s8, 30
                  srli         gp, t3, 9
                  and          s8, s9, t3
                  bge          a0, s8, 392f
                  or           t3, s4, t2
                  and          s9, t2, s5
375:              sub          a6, t0, ra
                  blt          s1, ra, 384f
                  nop
                  ori          t0, a3, 565
                  addi         t5, a4, 1444
                  lui          a5, 66427
                  sltiu        s3, gp, 1740
                  bgeu         s2, s2, 391f
                  sra          t1, a0, a1
384:              slli         a3, s2, 3
                  bltu         a5, ra, 402f
                  sll          a0, s6, a5
                  sra          s5, s0, gp
                  slt          t3, s3, s8
                  sra          a7, t2, t5
                  nop
391:              bltu         a0, t3, 395f
392:              bgeu         a7, a4, 403f
                  andi         s0, t6, -1189
                  bltu         t5, s10, 397f
395:              srli         s5, s0, 26
                  bne          s1, s5, 410f
397:              sltiu        a0, s2, -492
                  sll          s6, t5, a5
                  srl          s6, s11, ra
                  bge          a2, t3, 406f
                  bltu         t4, t2, 402f
402:              sltu         t2, s10, a1
403:              srai         s0, t0, 31
                  nop
                  auipc        t3, 597572
406:              srl          s7, a2, tp
                  slti         zero, a1, -283
                  srli         s1, s10, 22
                  bge          s2, s2, 420f
410:              slli         a4, gp, 28
                  bltu         a2, t0, 430f
                  srli         t1, s11, 6
                  ori          a7, a2, -1330
                  auipc        a1, 378700
                  sub          zero, s4, s11
                  sltiu        a1, t3, -1681
                  add          s3, zero, s5
                  slt          s8, s3, gp
                  sra          a4, a1, t6
420:              add          t1, sp, s6
                  srli         s9, t2, 11
                  bne          t3, s10, 434f
                  bge          a7, t0, 436f
                  sub          ra, a4, a6
                  sltiu        a7, gp, 1104
                  slli         s1, t6, 30
                  ori          s5, s10, -239
                  srl          zero, t2, s3
                  addi         s4, a5, 170
430:              bne          a6, s7, 433f
                  slt          gp, t4, a7
                  srai         s11, t4, 2
433:              sltu         s7, t2, a0
434:              sll          a6, s8, s8
                  sltu         t0, s5, ra
436:              nop
                  srli         t5, s7, 22
                  xori         s4, zero, 1650
                  bne          a5, s7, 454f
                  xori         t3, sp, 1363
                  addi         t3, s1, 1483
                  sra          a0, a1, tp
                  lui          s4, 284263
                  sll          s8, zero, a6
                  bne          s9, t5, 453f
                  xori         t2, sp, -161
                  sll          s7, gp, s11
                  addi         a3, t6, -1070
                  slli         s4, a1, 5
                  beq          a5, s3, 457f
                  nop
                  lui          s11, 1022545
453:              add          s6, s11, t4
454:              sltiu        s5, a1, -729
                  slli         s10, s1, 31
                  beq          zero, ra, 459f
457:              sll          a4, a2, tp
                  nop
459:              nop
                  sltiu        s1, a7, -1004
                  beq          tp, s9, 468f
                  srli         a7, s8, 4
                  bltu         tp, tp, 464f
464:              xor          s7, a1, s2
                  bltu         t1, s7, 481f
                  or           s1, t1, a0
                  srl          t5, s4, s6
468:              sra          s8, t0, s11
                  xor          a0, a1, ra
                  sra          a5, a2, a2
                  sltiu        a0, a3, 1550
                  bltu         a0, a1, 478f
                  bge          t6, a6, 485f
                  sll          s6, sp, a1
                  andi         s1, t6, -1718
                  bge          s5, a4, 486f
                  bne          zero, s1, 479f
478:              slti         t1, gp, 1031
479:              slt          s5, s7, s4
                  blt          s5, gp, 497f
481:              sra          t2, t1, t5
                  srl          t1, a6, tp
                  bge          a3, sp, 502f
                  andi         s7, t0, 741
485:              sll          gp, s10, a6
486:              addi         s11, a2, 616
                  sltiu        ra, a1, -1802
                  add          s11, ra, a4
                  add          gp, s10, s7
                  addi         a4, s5, -323
                  slli         t6, gp, 17
                  sra          s4, sp, s8
                  sub          ra, s9, tp
                  andi         s0, s11, -1495
                  bltu         t1, a7, 515f
                  sll          gp, t3, s8
497:              bge          s8, s7, 509f
                  beq          gp, t0, 509f
                  slt          s5, s8, s9
                  bltu         s0, s2, 511f
                  sra          s0, zero, s0
502:              bgeu         tp, s7, 515f
                  srl          a5, t2, a2
                  add          zero, s8, tp
                  andi         a1, s10, 247
                  sll          ra, t0, a7
                  srl          a5, t5, a4
                  sll          s9, s7, s10
509:              bltu         gp, tp, 515f
                  ori          t1, s2, -848
511:              andi         s4, s5, -1435
                  srl          s5, a4, s0
                  ori          s5, s2, 682
                  bgeu         a7, ra, 516f
515:              sltu         s3, s0, tp
516:              slli         t6, t4, 24
                  beq          s0, a6, 518f
518:              andi         a2, a4, -395
                  lw           ra, 4(tp)
                  andi         s8, a3, -1639
                  sll          t1, tp, a0
                  lui          gp, 92180
                  addi         tp, tp, 32
                  add          s9, t4, s1
780:              addi x25, x1, 1
780:              jalr x25, x25, 0
sub_1:            and          s4, tp, t0
                  sub          s6, a2, t1
                  addi         tp, tp, -36
                  sub          s6, t3, a0
                  slt          t3, t0, a0
                  sra          t2, a4, a2
                  sw           ra, 4(tp)
                  auipc        a0, 247493
                  auipc        t1, 779767
                  auipc        a6, 604834
                  sra          t3, s2, s11
                  or           t0, a5, zero
                  la           a1, sub_2
                  addi         a1, a1, -686
                  lui          s3, 287292
                  or           s10, a0, t3
                  bgeu         s5, t5, sub_1_j3 #branch to jump instr
                  or           a7, s1, a4
                  slli         s4, a2, 31
                  and          a5, t1, s11
sub_1_j3:         jalr         ra, a1, 686 #jump sub_1 -> sub_2
sub_1_14:         jal          ra, 5f
0:                jal          t1, 7f
1:                jal          ra, 13f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          ra, 12f
5:                jal          a6, 14f
6:                jal          ra, 1b
7:                jal          ra, 15f
8:                jal          t1, 9f
9:                jal          a5, 3b
10:               jal          ra, 2b
11:               jal          gp, 8b
12:               jal          s8, 6b
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               jal          t1, 16f
16:               sll          a1, t4, s7
sub_1_29:         jal          ra, 9f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          t1, 8f
3:                jal          ra, 2b
4:                jal          t1, 5f
5:                jal          a2, 6f
6:                jal          ra, 7f
7:                jal          t1, 0b
8:                jal          t0, 4b
9:                jal          t1, 1b
10:               jal          ra, 11f
11:               auipc        s0, 962204
sub_1_2:          jal          ra, 15f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          ra, 4f
3:                jal          ra, 18f
4:                jal          ra, 11f
5:                jal          gp, 2b
6:                jal          t1, 14f
7:                jal          ra, 5b
8:                jal          s4, 13f
9:                jal          t1, 10f
10:               jal          ra, 8b
11:               jal          gp, 19f
12:               jal          t1, 7b
13:               jal          ra, 20f
14:               jal          ra, 3b
15:               jal          t5, 16f
16:               jal          a0, 12b
17:               jal          ra, 0b
18:               jal          ra, 17b
19:               jal          t0, 6b
20:               and          t6, a2, a5
sub_1_16:         jal          ra, 5f
0:                jal          t1, 4f
1:                jal          ra, 2f
2:                jal          gp, 8f
3:                jal          ra, 6f
4:                jal          a7, 3b
5:                jal          s11, 7f
6:                jal          ra, 1b
7:                jal          gp, 0b
8:                jal          ra, 9f
9:                jal          ra, 10f
10:               sra          a0, s8, a5
sub_1_22:         jal          ra, 15f
0:                jal          ra, 11f
1:                jal          t1, 7f
2:                jal          ra, 14f
3:                jal          t0, 12f
4:                jal          ra, 9f
5:                jal          a1, 6f
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          a2, 2b
9:                jal          ra, 13f
10:               jal          ra, 16f
11:               jal          ra, 1b
12:               jal          ra, 17f
13:               jal          t1, 5b
14:               jal          gp, 10b
15:               jal          ra, 4b
16:               jal          ra, 0b
17:               addi         a7, s6, -88
sub_1_11:         jal          ra, 4f
0:                jal          t1, 8f
1:                jal          t1, 2f
2:                jal          ra, 5f
3:                jal          t2, 6f
4:                jal          ra, 1b
5:                jal          t1, 0b
6:                jal          s9, 9f
7:                jal          s10, 11f
8:                jal          t1, 3b
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               nop
sub_1_32:         jal          ra, 6f
0:                jal          ra, 8f
1:                jal          s4, 4f
2:                jal          ra, 9f
3:                jal          gp, 1b
4:                jal          gp, 0b
5:                jal          ra, 11f
6:                jal          ra, 3b
7:                jal          t1, 2b
8:                jal          ra, 10f
9:                jal          a6, 5b
10:               jal          t1, 7b
11:               sltu         gp, s3, s7
sub_1_9:          jal          ra, 2f
0:                jal          ra, 11f
1:                jal          ra, 0b
2:                jal          t1, 16f
3:                jal          s1, 29f
4:                jal          ra, 20f
5:                jal          ra, 24f
6:                jal          ra, 7f
7:                jal          a5, 5b
8:                jal          s10, 14f
9:                jal          t1, 25f
10:               jal          t4, 19f
11:               jal          ra, 17f
12:               jal          t0, 21f
13:               jal          s9, 9b
14:               jal          ra, 18f
15:               jal          gp, 8b
16:               jal          ra, 26f
17:               jal          s8, 28f
18:               jal          s9, 22f
19:               jal          t1, 27f
20:               jal          ra, 12b
21:               jal          ra, 15b
22:               jal          t0, 3b
23:               jal          ra, 6b
24:               jal          ra, 13b
25:               jal          t0, 10b
26:               jal          a6, 23b
27:               jal          ra, 1b
28:               jal          t1, 4b
29:               auipc        t0, 123478
sub_1_4:          jal          ra, 11f
0:                jal          s0, 12f
1:                jal          ra, 8f
2:                jal          s3, 6f
3:                jal          gp, 7f
4:                jal          t3, 5f
5:                jal          gp, 10f
6:                jal          t1, 14f
7:                jal          t4, 0b
8:                jal          a6, 15f
9:                jal          ra, 4b
10:               jal          t1, 2b
11:               jal          ra, 3b
12:               jal          t4, 13f
13:               jal          ra, 1b
14:               jal          ra, 16f
15:               jal          t1, 9b
16:               add          zero, s5, t4
sub_1_3:          jal          ra, 24f
0:                jal          ra, 20f
1:                jal          s6, 10f
2:                jal          ra, 8f
3:                jal          t1, 7f
4:                jal          t0, 29f
5:                jal          ra, 11f
6:                jal          s4, 23f
7:                jal          t1, 28f
8:                jal          t4, 3b
9:                jal          a6, 4b
10:               jal          ra, 19f
11:               jal          a7, 26f
12:               jal          s10, 18f
13:               jal          ra, 6b
14:               jal          s1, 22f
15:               jal          ra, 5b
16:               jal          t6, 1b
17:               jal          t1, 25f
18:               jal          ra, 27f
19:               jal          ra, 17b
20:               jal          ra, 16b
21:               jal          ra, 13b
22:               jal          s11, 21b
23:               jal          ra, 15b
24:               jal          ra, 14b
25:               jal          t6, 9b
26:               jal          ra, 2b
27:               jal          ra, 30f
28:               jal          ra, 0b
29:               jal          ra, 12b
30:               nop
sub_1_23:         jal          ra, 8f
0:                jal          t5, 7f
1:                jal          ra, 25f
2:                jal          ra, 13f
3:                jal          t1, 21f
4:                jal          t1, 9f
5:                jal          ra, 27f
6:                jal          t5, 0b
7:                jal          a7, 1b
8:                jal          t1, 3b
9:                jal          ra, 20f
10:               jal          ra, 24f
11:               jal          ra, 18f
12:               jal          ra, 5b
13:               jal          t1, 17f
14:               jal          t1, 4b
15:               jal          ra, 11b
16:               jal          t1, 6b
17:               jal          ra, 14b
18:               jal          gp, 10b
19:               jal          t1, 16b
20:               jal          t1, 12b
21:               jal          ra, 22f
22:               jal          t1, 23f
23:               jal          t0, 26f
24:               jal          ra, 19b
25:               jal          ra, 28f
26:               jal          t1, 2b
27:               jal          ra, 15b
28:               slli         s8, a2, 22
sub_1_5:          jal          ra, 8f
0:                jal          ra, 15f
1:                jal          ra, 12f
2:                jal          gp, 14f
3:                jal          t1, 5f
4:                jal          t1, 1b
5:                jal          ra, 7f
6:                jal          s9, 10f
7:                jal          t1, 9f
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          t6, 4b
12:               jal          ra, 2b
13:               jal          s9, 16f
14:               jal          ra, 0b
15:               jal          t1, 13b
16:               xori         s6, s2, 1670
sub_1_26:         jal          ra, 6f
0:                jal          ra, 11f
1:                jal          a3, 7f
2:                jal          t1, 4f
3:                jal          ra, 1b
4:                jal          gp, 10f
5:                jal          ra, 3b
6:                jal          ra, 2b
7:                jal          ra, 8f
8:                jal          t0, 0b
9:                jal          t1, 5b
10:               jal          ra, 9b
11:               xori         s8, s6, -1498
sub_1_18:         jal          ra, 12f
0:                jal          gp, 3f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          t1, 17f
4:                jal          t1, 5f
5:                jal          ra, 6f
6:                jal          s8, 15f
7:                jal          ra, 8f
8:                jal          ra, 13f
9:                jal          a7, 11f
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          gp, 14f
13:               jal          gp, 16f
14:               jal          ra, 4b
15:               jal          t1, 10b
16:               jal          t1, 0b
17:               nop
sub_1_13:         jal          ra, 13f
0:                jal          a0, 11f
1:                jal          ra, 3f
2:                jal          t1, 0b
3:                jal          a7, 2b
4:                jal          ra, 8f
5:                jal          ra, 10f
6:                jal          t1, 9f
7:                jal          s10, 6b
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          ra, 7b
12:               jal          a3, 14f
13:               jal          ra, 4b
14:               or           s4, s8, s2
sub_1_24:         jal          ra, 15f
0:                jal          t1, 16f
1:                jal          s4, 7f
2:                jal          s9, 0b
3:                jal          t1, 11f
4:                jal          ra, 8f
5:                jal          ra, 1b
6:                jal          t0, 4b
7:                jal          gp, 2b
8:                jal          t0, 17f
9:                jal          t5, 13f
10:               jal          t1, 6b
11:               jal          gp, 9b
12:               jal          t1, 3b
13:               jal          s0, 14f
14:               jal          t5, 5b
15:               jal          ra, 12b
16:               jal          ra, 10b
17:               add          t5, a0, s0
sub_1_1:          jal          ra, 5f
0:                jal          ra, 4f
1:                jal          ra, 13f
2:                jal          s0, 9f
3:                jal          s7, 6f
4:                jal          t1, 12f
5:                jal          a1, 8f
6:                jal          t1, 0b
7:                jal          t1, 11f
8:                jal          gp, 10f
9:                jal          t1, 16f
10:               jal          ra, 15f
11:               jal          t1, 1b
12:               jal          ra, 14f
13:               jal          ra, 3b
14:               jal          gp, 2b
15:               jal          a6, 7b
16:               andi         s3, a2, -1199
sub_1_30:         jal          ra, 11f
0:                jal          ra, 9f
1:                jal          gp, 24f
2:                jal          t0, 16f
3:                jal          t1, 10f
4:                jal          t1, 19f
5:                jal          ra, 1b
6:                jal          ra, 15f
7:                jal          t6, 18f
8:                jal          t1, 0b
9:                jal          ra, 4b
10:               jal          t5, 23f
11:               jal          t1, 6b
12:               jal          t5, 5b
13:               jal          ra, 21f
14:               jal          t1, 22f
15:               jal          ra, 8b
16:               jal          ra, 12b
17:               jal          ra, 13b
18:               jal          t1, 17b
19:               jal          ra, 14b
20:               jal          ra, 3b
21:               jal          s4, 20b
22:               jal          ra, 7b
23:               jal          t4, 2b
24:               srl          ra, t0, s10
sub_1_0:          jal          ra, 14f
0:                jal          ra, 16f
1:                jal          ra, 2f
2:                jal          t1, 4f
3:                jal          ra, 5f
4:                jal          s4, 9f
5:                jal          t4, 19f
6:                jal          ra, 18f
7:                jal          gp, 13f
8:                jal          t1, 20f
9:                jal          ra, 11f
10:               jal          ra, 0b
11:               jal          t1, 6b
12:               jal          s9, 3b
13:               jal          s8, 8b
14:               jal          s5, 12b
15:               jal          ra, 17f
16:               jal          ra, 1b
17:               jal          ra, 7b
18:               jal          s11, 15b
19:               jal          ra, 10b
20:               ori          zero, s5, 70
sub_1_25:         jal          ra, 11f
0:                jal          gp, 4f
1:                jal          s1, 3f
2:                jal          ra, 6f
3:                jal          ra, 8f
4:                jal          a7, 10f
5:                jal          ra, 0b
6:                jal          t1, 12f
7:                jal          t1, 2b
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          ra, 1b
11:               jal          ra, 5b
12:               sub          s11, t1, tp
sub_1_31:         jal          ra, 25f
0:                jal          t1, 27f
1:                jal          s11, 24f
2:                jal          ra, 11f
3:                jal          ra, 23f
4:                jal          t0, 12f
5:                jal          ra, 10f
6:                jal          t1, 13f
7:                jal          t1, 20f
8:                jal          s6, 26f
9:                jal          t1, 7b
10:               jal          gp, 4b
11:               jal          ra, 19f
12:               jal          a2, 18f
13:               jal          ra, 2b
14:               jal          ra, 3b
15:               jal          t1, 0b
16:               jal          ra, 6b
17:               jal          ra, 5b
18:               jal          s8, 29f
19:               jal          t1, 14b
20:               jal          ra, 15b
21:               jal          s9, 16b
22:               jal          t1, 28f
23:               jal          ra, 22b
24:               jal          ra, 8b
25:               jal          ra, 21b
26:               jal          ra, 9b
27:               jal          t1, 17b
28:               jal          ra, 1b
29:               slli         s11, a7, 27
sub_1_20:         jal          ra, 4f
0:                jal          t1, 3f
1:                jal          ra, 6f
2:                jal          t0, 13f
3:                jal          t1, 8f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          t0, 7f
7:                jal          ra, 9f
8:                jal          t0, 1b
9:                jal          ra, 11f
10:               jal          ra, 5b
11:               jal          ra, 12f
12:               jal          t1, 2b
13:               slt          s9, t4, s9
sub_1_7:          jal          ra, 2f
0:                jal          t1, 9f
1:                jal          t1, 8f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          s4, 3b
6:                jal          ra, 5b
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          t1, 4b
10:               nop
sub_1_21:         jal          ra, 2f
0:                jal          t0, 14f
1:                jal          t1, 11f
2:                jal          s5, 13f
3:                jal          t3, 4f
4:                jal          t6, 19f
5:                jal          ra, 12f
6:                jal          ra, 0b
7:                jal          ra, 9f
8:                jal          s8, 18f
9:                jal          ra, 15f
10:               jal          ra, 17f
11:               jal          ra, 20f
12:               jal          ra, 10b
13:               jal          t1, 7b
14:               jal          t5, 8b
15:               jal          s8, 5b
16:               jal          t1, 3b
17:               jal          t1, 6b
18:               jal          t1, 16b
19:               jal          gp, 1b
20:               jal          ra, 21f
21:               add          a2, s1, gp
sub_1_6:          jal          ra, 6f
0:                jal          ra, 12f
1:                jal          t1, 7f
2:                jal          ra, 9f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          t0, 15f
6:                jal          s8, 2b
7:                jal          gp, 16f
8:                jal          t1, 4b
9:                jal          t1, 3b
10:               jal          s11, 1b
11:               jal          ra, 17f
12:               jal          ra, 13f
13:               jal          ra, 14f
14:               jal          ra, 5b
15:               jal          ra, 10b
16:               jal          t1, 18f
17:               jal          ra, 8b
18:               xori         s11, a1, 1357
                  srai         a0, s4, 19
                  sll          s4, a4, sp
                  bge          tp, tp, 10f
                  slti         s10, a1, 320
                  bne          s10, s9, 20f
                  srli         s9, s2, 18
                  slt          t2, s10, a3
                  sltiu        s1, gp, 13
                  blt          gp, s0, 19f
                  bge          s7, s11, 10f
10:               bne          t0, t4, 23f
                  addi         a3, t2, -1731
                  sub          ra, t1, a1
                  slt          a3, s4, s0
                  sltu         s9, a4, s11
                  sltiu        a5, a6, -35
                  srli         a2, ra, 25
                  beq          gp, zero, 35f
                  lui          s0, 351964
19:               xor          a1, s11, t5
20:               bne          gp, s2, 34f
                  lui          s11, 956406
                  sra          a7, a5, a0
23:               xori         s8, a3, 1803
                  sra          t1, t3, s4
                  addi         t2, s2, 462
                  sltiu        t6, a3, -1050
                  slt          t0, s2, s2
                  bne          s0, a3, 35f
                  sll          zero, a6, t6
                  and          s6, t4, s0
                  bne          a6, a6, 43f
                  bgeu         s9, t5, 48f
                  bgeu         s10, t0, 34f
34:               addi         ra, zero, 135
35:               andi         s8, a3, -477
                  srl          a3, s2, t6
                  beq          gp, t6, 46f
sub_1_12:         jal          ra, 7f
0:                jal          gp, 12f
1:                jal          a0, 9f
2:                jal          a2, 13f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          ra, 8f
6:                jal          ra, 0b
7:                jal          s11, 11f
8:                jal          s5, 3b
9:                jal          ra, 10f
10:               jal          t1, 5b
11:               jal          s9, 4b
12:               jal          ra, 1b
13:               srai         t6, t1, 19
                  blt          s9, a7, 46f
                  sltiu        ra, a7, -487
                  bne          t4, s0, 44f
                  lui          t0, 410218
                  bge          s6, t0, 45f
43:               slti         s6, t0, -545
44:               xori         a7, t1, -894
45:               lui          t4, 1028670
46:               bltu         s4, sp, 61f
                  auipc        t4, 122313
48:               addi         t3, s5, 2008
                  sltiu        t1, s6, -736
                  sltiu        ra, ra, 1417
                  sll          t6, s8, s7
                  and          a1, s11, a7
                  srl          a2, t6, a0
                  bge          s2, s2, 61f
                  bge          t3, a6, 70f
                  nop
                  auipc        s0, 654479
                  sra          t2, s10, s5
                  andi         zero, sp, -1972
                  sltu         t0, t5, a4
61:               or           a5, s7, s6
                  ori          s0, s8, -313
                  bgeu         s6, a2, 67f
sub_1_17:         jal          ra, 1f
0:                jal          t5, 7f
1:                jal          t1, 19f
2:                jal          s9, 10f
3:                jal          ra, 12f
4:                jal          t1, 20f
5:                jal          ra, 21f
6:                jal          ra, 13f
7:                jal          t1, 15f
8:                jal          ra, 9f
9:                jal          ra, 17f
10:               jal          ra, 18f
11:               jal          ra, 3b
12:               jal          t1, 2b
13:               jal          ra, 4b
14:               jal          t1, 5b
15:               jal          t1, 11b
16:               jal          ra, 0b
17:               jal          t1, 14b
18:               jal          ra, 8b
19:               jal          ra, 6b
20:               jal          ra, 16b
21:               or           s4, s8, t5
                  ori          t1, s6, 1751
                  lui          t5, 899850
                  xor          a7, s0, s7
67:               auipc        s10, 733224
                  srai         a5, a3, 4
                  xor          t3, s8, a5
70:               slli         s11, s10, 25
                  bne          s6, gp, 88f
                  addi         zero, s6, -341
                  xor          s8, s2, t4
                  ori          t6, t3, 661
                  add          s11, s10, a6
                  blt          s2, a2, 83f
                  slt          t0, zero, s1
                  xor          a4, zero, a0
                  bltu         a3, a6, 94f
                  auipc        s10, 426704
                  xori         s9, a5, 511
                  slti         a2, a5, 503
83:               xori         s1, a5, -345
                  andi         gp, s11, -352
                  srli         s1, a2, 3
                  sltu         ra, t3, sp
                  bltu         gp, a6, 105f
88:               xori         a0, s3, 421
                  sltiu        s1, gp, 1381
                  srl          t3, s10, s10
                  nop
                  sll          s4, t0, a1
                  and          s7, a2, a7
94:               slti         gp, s9, -575
                  blt          gp, t3, 109f
                  beq          gp, a5, 106f
                  bne          s10, a6, 109f
                  bge          t1, a1, 115f
                  xor          t1, a4, s0
                  add          a2, t2, a3
                  sra          s10, s4, sp
                  sub          a3, t1, s4
                  andi         a7, s0, -266
                  bne          s5, s7, 114f
105:              sltu         s6, s2, a3
106:              xor          t2, t6, s4
                  nop
                  slt          t1, s1, ra
109:              slt          t3, s9, sp
                  bgeu         a0, s6, 128f
                  lui          t2, 76671
                  xori         s11, s2, -121
                  addi         gp, t1, -348
114:              slli         s5, t4, 11
115:              slli         a6, s1, 1
                  xor          t3, s8, tp
                  bne          t5, sp, 129f
                  srai         a2, a2, 28
                  bne          a3, t3, 137f
                  srli         t3, a6, 12
                  slli         a1, s11, 25
                  xor          t2, a4, a6
                  and          s9, s5, t2
                  srai         s1, s3, 24
                  auipc        s4, 93524
                  srai         a3, gp, 11
                  xori         s10, s3, -227
128:              andi         a4, s1, -1847
129:              slti         t3, t5, -119
                  ori          a1, t3, 1868
                  slli         s9, s3, 6
                  nop
                  ori          a3, a6, -154
                  sub          s1, s9, s0
                  sll          s8, t4, t4
                  blt          tp, t6, 151f
137:              lui          s1, 639603
                  slti         a2, a1, -162
                  or           t1, s2, s0
                  xor          a5, a4, a6
                  sll          a0, s8, s0
                  slt          s8, tp, s5
                  auipc        s7, 1000387
                  srl          s11, sp, tp
                  xori         gp, a1, 811
                  addi         s0, s9, 454
                  sub          t1, a6, ra
                  sll          a7, gp, s5
                  nop
                  bltu         s10, tp, 157f
151:              xor          t0, s11, s1
                  beq          a7, a4, 164f
                  srl          s6, s3, tp
                  sll          s4, t1, s9
                  srl          s0, t4, s9
                  slti         a4, s6, 1704
157:              ori          gp, s10, 1043
                  blt          t3, a3, 172f
                  sub          a0, t0, tp
                  srl          s9, s0, a2
                  slti         t3, a3, -575
                  bltu         a5, zero, 163f
163:              sll          s10, gp, s8
164:              bge          sp, a7, 174f
                  sub          t3, s3, t0
                  sltu         zero, ra, s5
                  slti         a1, s6, -1591
                  bge          a1, ra, 186f
                  slti         a3, s0, 569
                  and          a6, s9, s6
                  add          ra, s2, s0
172:              beq          tp, s9, 182f
                  slt          s1, a7, t3
174:              slt          t0, gp, t2
                  lui          a3, 571110
                  xori         t4, a7, 557
                  sll          s4, s8, s1
                  sub          a0, a2, s8
                  sltu         t1, s3, ra
                  bltu         a0, s1, 189f
                  sub          s9, t4, t3
182:              xori         s8, s10, -543
                  addi         a3, s9, 753
                  ori          t0, s0, 1419
                  bge          s7, s5, 196f
186:              nop
                  bltu         sp, sp, 188f
188:              add          s3, ra, s10
189:              sub          a1, s8, ra
                  nop
                  sltiu        t5, t4, -1776
                  sltu         s0, t1, gp
                  add          s0, t1, sp
                  sub          t5, a0, t2
                  xori         t0, t1, 1820
196:              slli         t6, s2, 19
                  auipc        s6, 1000600
                  bltu         tp, zero, 213f
                  blt          s2, s1, 206f
                  ori          a1, s2, -739
                  add          a6, tp, t0
                  blt          a6, t4, 210f
                  andi         t4, t6, 1173
                  bltu         zero, zero, 220f
                  ori          s1, a0, -788
206:              sltu         s7, a6, s5
                  beq          a0, a7, 211f
                  slt          s3, s6, t5
                  nop
210:              sll          s3, t1, s2
211:              bne          zero, a1, 228f
                  auipc        s4, 438443
213:              bgeu         a7, zero, 217f
                  sll          t2, s5, a5
                  srai         s9, s9, 4
                  slli         t6, a1, 25
217:              srai         s10, s8, 24
                  srai         t3, a4, 14
                  sltu         s11, gp, s0
220:              beq          t6, a0, 228f
                  beq          s0, s0, 239f
                  blt          sp, t5, 229f
                  xor          s6, s4, s2
                  add          t4, t3, t4
                  add          s9, a0, a5
                  sra          t1, t1, t2
                  lui          s1, 436490
228:              ori          s10, s3, -452
229:              slti         t4, ra, -619
                  bge          a6, zero, 247f
                  add          zero, t1, a1
                  slti         s7, a6, 363
                  andi         s9, gp, -105
                  xor          t4, t3, zero
                  sltiu        a1, s9, 1687
                  bge          s0, s10, 239f
                  xori         t2, a3, 1816
                  bltu         t4, a2, 250f
239:              bltu         a0, zero, 253f
                  lui          t0, 765938
                  srai         a1, a7, 16
                  sll          t1, s11, s10
                  or           s7, s11, s11
                  bge          t1, s8, 257f
                  auipc        t4, 340536
                  beq          s8, s7, 258f
247:              srl          t2, s8, s4
                  sub          zero, s6, a7
                  addi         ra, a3, -327
250:              sra          s4, a6, s5
                  auipc        a6, 505246
                  and          s3, ra, s3
253:              xor          s6, s11, a4
sub_1_27:         jal          ra, 6f
0:                jal          ra, 11f
1:                jal          ra, 5f
2:                jal          s4, 3f
3:                jal          a1, 0b
4:                jal          ra, 13f
5:                jal          t1, 8f
6:                jal          gp, 9f
7:                jal          ra, 1b
8:                jal          s1, 10f
9:                jal          gp, 2b
10:               jal          s0, 12f
11:               jal          t0, 7b
12:               jal          ra, 4b
13:               srli         t4, s10, 27
                  sltu         s10, t2, a0
                  add          gp, a7, s11
                  lui          a3, 596967
257:              and          s4, zero, a5
258:              srai         a1, t0, 27
                  add          a1, a2, a3
                  slli         a0, s0, 30
                  blt          tp, a2, 277f
                  lui          t5, 392685
                  ori          a6, a0, 1916
                  auipc        s1, 5012
                  sltu         a6, t1, a5
                  add          a4, a7, t6
                  and          a6, s10, s8
                  slt          t1, s9, a3
                  srai         s8, a3, 28
                  xori         a7, a5, 1082
                  sltiu        ra, t2, -1515
                  addi         s11, sp, -1580
                  nop
                  sra          gp, t3, s7
                  srl          a4, a1, t6
                  slt          a0, t6, gp
277:              srai         t2, s7, 30
                  addi         s11, s10, 1434
                  sll          a1, sp, sp
                  srl          s6, a2, sp
                  ori          a6, s0, -2041
                  andi         a5, t5, 239
                  sltu         a5, tp, s0
                  bltu         s7, t3, 299f
                  nop
                  bne          t4, s7, 301f
                  andi         s9, t1, 403
                  bge          s4, s9, 303f
                  bgeu         s3, a7, 298f
                  srli         s4, s8, 23
                  beq          s9, t5, 309f
                  nop
                  or           s9, a4, a1
                  sltu         zero, ra, s1
                  sra          s0, t5, a7
                  srai         a0, sp, 3
                  bgeu         a7, s4, 304f
298:              or           s8, s2, a5
299:              bltu         sp, a1, 302f
                  sll          t6, s7, a6
301:              sltu         ra, s0, ra
302:              andi         gp, zero, -1818
303:              slli         a2, t6, 25
304:              slli         t1, t6, 17
                  add          t2, gp, s4
                  sll          s3, t4, s6
                  slt          a3, sp, sp
                  sra          t0, gp, a2
309:              or           s5, s10, sp
                  sltu         s1, t6, a1
                  bgeu         t3, s5, 319f
                  slli         a4, t3, 14
                  and          s6, a0, t1
                  slli         t6, s5, 19
                  addi         a1, a1, -1223
                  and          s6, t6, a2
                  sub          s7, zero, t2
                  sra          a5, a3, s5
319:              xori         t5, t3, 266
                  auipc        a4, 304907
                  lui          s11, 216792
                  bne          a7, tp, 334f
                  srli         t5, s11, 2
                  nop
                  andi         s1, a4, -126
                  srl          t0, a7, s9
                  bltu         t5, gp, 328f
328:              sltiu        a6, sp, 1556
                  and          t0, s3, s6
                  ori          a3, s6, -406
                  sub          a1, a2, s8
                  lui          a7, 626586
                  addi         a3, s8, 283
334:              and          a5, gp, s5
                  bgeu         s10, a1, 353f
                  slt          a7, s11, t2
                  sra          t1, s3, a5
                  srli         s4, a6, 29
                  srai         s11, gp, 16
                  ori          t4, t2, -1170
                  or           t0, t1, tp
                  xor          gp, s6, a2
                  sub          s7, a0, s4
                  andi         t5, s5, -496
                  slti         a1, s3, -1779
                  bge          a1, s1, 353f
                  srl          a3, s5, t6
                  andi         t0, tp, 1971
                  slli         a2, t3, 13
                  blt          s8, sp, 364f
                  or           s3, a4, tp
                  slt          a1, t6, gp
353:              xori         a6, tp, -1714
                  blt          s1, a3, 362f
                  slli         s9, a7, 30
                  beq          a1, t6, 366f
                  sra          s4, a6, t6
sub_1_28:         jal          ra, 0f
0:                jal          ra, 12f
1:                jal          s4, 14f
2:                jal          ra, 19f
3:                jal          ra, 10f
4:                jal          a1, 11f
5:                jal          ra, 21f
6:                jal          t1, 13f
7:                jal          t4, 20f
8:                jal          ra, 23f
9:                jal          ra, 18f
10:               jal          ra, 8b
11:               jal          t1, 1b
12:               jal          ra, 15f
13:               jal          ra, 5b
14:               jal          ra, 16f
15:               jal          ra, 6b
16:               jal          ra, 3b
17:               jal          ra, 2b
18:               jal          ra, 17b
19:               jal          t4, 4b
20:               jal          t1, 9b
21:               jal          ra, 22f
22:               jal          t1, 7b
23:               addi         s10, s9, 1343
                  slli         t0, sp, 13
                  xor          t4, tp, ra
                  blt          s10, t2, 378f
                  slti         s7, t2, -1670
362:              srai         a3, ra, 4
                  add          zero, s6, t2
364:              addi         s8, t4, 345
                  bne          t0, a5, 376f
sub_1_10:         jal          ra, 11f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          ra, 24f
3:                jal          s0, 16f
4:                jal          ra, 8f
5:                jal          t1, 17f
6:                jal          ra, 0b
7:                jal          ra, 2b
8:                jal          t1, 20f
9:                jal          t1, 19f
10:               jal          t1, 4b
11:               jal          a4, 13f
12:               jal          gp, 25f
13:               jal          ra, 18f
14:               jal          ra, 21f
15:               jal          ra, 5b
16:               jal          ra, 6b
17:               jal          ra, 10b
18:               jal          s9, 14b
19:               jal          t1, 23f
20:               jal          ra, 22f
21:               jal          ra, 7b
22:               jal          t1, 3b
23:               jal          ra, 12b
24:               jal          t1, 15b
25:               srai         s11, a5, 1
366:              slti         s9, s0, -459
                  sltiu        s11, s3, -1376
                  bge          a6, a1, 372f
                  bltu         s8, t4, 370f
370:              xori         s3, s6, -731
                  auipc        s3, 48147
372:              andi         t4, t4, 334
                  sub          ra, tp, sp
                  addi         a3, a0, 128
                  lui          t2, 970706
376:              sra          s9, a6, a2
                  srli         s9, a0, 10
378:              xori         a2, t0, -1340
                  andi         s9, s4, 1314
                  nop
                  or           s3, s4, s9
                  bgeu         s5, a4, 395f
                  srli         t6, t5, 27
                  sltiu        a3, t1, 1184
                  bge          t0, s1, 395f
                  andi         a5, gp, -1423
                  andi         t0, a2, -1656
                  auipc        zero, 835368
                  slt          a7, a6, s6
                  slt          t1, s0, ra
                  blt          s3, t6, 407f
                  auipc        t4, 65602
                  sra          s11, t3, s11
                  bge          a3, t3, 406f
395:              addi         a4, s2, -1847
                  lui          a6, 420468
                  ori          a3, s11, -1972
                  sltu         a3, s9, tp
                  andi         a7, s11, 1716
                  sub          t5, zero, gp
                  sltu         s4, s7, s8
                  or           gp, s1, a7
                  sltu         s8, s11, zero
                  bgeu         s7, t1, 411f
                  ori          s7, t1, -718
406:              srai         s7, a3, 20
407:              xor          gp, t3, a4
                  auipc        s9, 164531
                  bne          s8, a3, 426f
                  xori         t1, s10, 262
411:              sll          s9, s6, a1
                  xor          a4, s0, a6
                  nop
                  lui          s11, 531026
                  lui          a6, 303955
                  sltiu        a4, s3, -1182
                  sra          t3, s7, t5
                  slt          a5, sp, a0
                  sub          a6, gp, a0
                  slt          a0, a1, s9
                  sltiu        a0, t0, -884
                  blt          s4, gp, 426f
                  sltiu        a1, t5, -1998
                  andi         s9, gp, -173
                  bge          s5, t2, 439f
426:              srai         zero, a1, 3
                  add          s5, ra, a3
                  andi         a6, s6, 1445
                  bge          s4, a7, 444f
                  bgeu         s2, s2, 447f
                  slti         a2, gp, 1597
                  addi         a1, t4, 104
                  slti         a0, a7, 160
                  sltiu        a3, t6, 1141
                  xori         a0, s3, 1719
                  bne          s8, a4, 448f
                  srli         s0, a1, 0
                  srli         a6, t6, 25
439:              sltu         s4, a1, s10
                  addi         a4, a3, -1050
                  andi         s4, a1, -1327
                  xori         a4, s1, -1708
                  bne          a5, s8, 459f
444:              auipc        t4, 339326
                  nop
                  auipc        a5, 360524
447:              sra          s1, zero, s4
448:              or           a6, t3, t1
                  srl          a7, a7, t3
                  lui          gp, 148495
                  or           s9, tp, s9
                  xori         t1, s8, 1223
                  srai         s4, tp, 7
                  slt          zero, t3, a2
                  blt          a2, s10, 470f
                  add          s6, s0, t5
                  and          ra, s0, t6
                  andi         a3, t1, 1739
459:              sll          zero, s11, zero
                  bgeu         a5, a4, 464f
                  srl          t0, s8, s3
                  blt          tp, a4, 474f
                  add          t5, a2, s11
464:              srl          t5, t5, t3
                  bgeu         a1, a6, 478f
                  nop
                  bgeu         s4, s3, 483f
                  srai         t0, ra, 29
                  sltu         a7, s2, s11
470:              srl          a6, sp, s0
                  ori          t1, s7, 2016
                  bge          s11, t0, 473f
473:              sll          s4, a3, t5
474:              addi         a6, zero, 1614
                  xori         s3, t6, -975
                  ori          t4, s2, -1279
                  sub          a2, gp, t6
478:              slt          s6, s4, a4
                  and          s9, s1, s11
                  bgeu         a7, a2, 490f
                  sltu         t5, a5, s9
                  xor          t6, s10, t4
483:              andi         gp, gp, -1603
                  lui          s3, 557490
                  nop
                  ori          s4, s9, 983
                  bltu         a6, a7, 494f
                  bgeu         s7, sp, 505f
                  sra          s3, s6, s6
490:              sra          gp, s7, s2
                  slli         t2, s0, 11
                  blt          s9, a7, 500f
                  and          zero, s8, tp
494:              sll          s9, t3, s4
                  and          a5, t2, s4
                  sltu         ra, sp, s0
                  bltu         t4, a6, 509f
                  sltu         gp, s4, t2
                  slti         t5, s7, -1068
500:              sltiu        a7, t5, -8
                  bne          s1, s2, 513f
                  srai         gp, s7, 1
                  bne          t3, s4, 512f
                  nop
505:              sub          a0, s0, a2
                  beq          t4, s6, 507f
507:              slt          s1, s6, s7
                  ori          zero, t4, -1702
509:              slli         s6, a5, 8
                  bltu         tp, s0, 528f
                  blt          s4, s0, 514f
512:              bge          s5, s10, 530f
513:              lui          t5, 37873
514:              bltu         a4, tp, 528f
                  auipc        a3, 707283
                  sltiu        s3, s3, 1963
                  bge          s0, zero, 532f
                  sltiu        t3, gp, -398
                  sra          s8, a2, a2
                  slli         zero, ra, 19
                  addi         s4, gp, 197
                  ori          a2, ra, 639
                  bltu         s0, s7, 537f
                  or           t4, s3, t0
                  sra          s8, s5, zero
                  bne          s4, sp, 536f
                  add          t6, s4, a6
528:              sub          a0, t6, t3
                  or           t6, t2, a2
530:              and          t0, t5, s3
                  bne          s4, s5, 539f
532:              beq          s10, s2, 536f
                  sub          t0, s9, s8
                  add          a2, s3, s2
                  xori         t5, t3, -972
536:              ori          s8, tp, 903
537:              slt          t3, t4, ra
                  xori         t0, t5, 134
539:              sub          s0, s9, s4
                  srli         t5, s8, 28
                  bge          a3, s10, 548f
                  andi         s8, s10, 1796
                  slli         a1, t1, 22
                  bgeu         a0, a7, 551f
                  blt          t3, tp, 561f
                  ori          a1, a0, 1377
                  sll          a3, s9, a1
548:              nop
                  nop
                  add          s6, a4, a5
551:              addi         s9, t3, -1202
                  auipc        gp, 627018
                  sltu         t5, s4, t0
                  or           t2, a2, a0
                  sra          s5, s5, s9
                  srli         t1, tp, 10
                  sltu         a5, a6, s5
                  sub          s5, t1, s11
                  srai         s4, a7, 22
                  sra          s11, t4, t4
561:              blt          t5, s5, 578f
                  slti         s5, t5, -144
                  lui          t3, 12907
                  sltu         a5, a2, a3
                  bgeu         s3, a1, 583f
                  beq          s3, s11, 577f
                  add          t3, t2, s0
                  sra          a0, t6, gp
                  bge          a6, a4, 584f
                  bge          gp, t0, 579f
                  slt          s7, a6, ra
                  blt          t3, t4, 573f
573:              xor          s4, t4, a3
                  sra          zero, a5, s3
                  nop
                  sltiu        s5, a1, 1834
577:              srli         a1, s5, 3
578:              auipc        s9, 523353
579:              add          s1, a1, t6
                  sltiu        s8, s8, 742
                  xor          s11, zero, t6
                  srli         s5, t6, 21
583:              blt          ra, a1, 594f
584:              srai         t5, a1, 7
                  srl          t6, s8, t2
                  ori          ra, t3, -635
                  addi         t5, s8, -321
                  slli         t3, s8, 9
                  bltu         s7, a2, 599f
                  add          s7, a4, t0
                  add          s7, gp, s8
                  sltu         s10, a7, s4
                  bgeu         s10, a7, 605f
594:              sltu         t0, t0, a6
                  slti         s3, ra, 1403
                  blt          a4, s8, 606f
                  or           s0, t6, t1
                  blt          s1, s9, 614f
599:              bgeu         s2, t6, 606f
                  slti         gp, tp, -1272
                  bltu         s4, tp, 615f
                  beq          t2, a7, 619f
                  addi         t2, a5, -292
                  sub          s3, s6, a1
605:              sra          s11, s6, t3
606:              bne          t6, s2, 621f
                  auipc        s8, 633809
                  bne          s9, t4, 611f
                  xori         s4, a5, 866
                  andi         s9, zero, 493
611:              sltiu        ra, a7, -1362
                  blt          s9, s11, 626f
                  srli         a4, s1, 19
614:              slt          a5, s6, a0
615:              srai         s7, s2, 1
                  bne          a0, s4, 631f
                  add          a0, s10, t1
                  addi         s10, s6, -70
619:              and          t1, t0, a0
                  srai         t5, t2, 8
621:              addi         t3, s5, -959
                  srai         t5, t5, 6
                  sub          s4, s7, a7
                  slti         s9, a1, -319
                  bgeu         t1, s6, 640f
626:              xor          s7, s4, s0
                  sltiu        t6, a5, -1117
                  sub          a7, a5, a7
                  blt          a1, t5, 636f
                  ori          t4, a4, 1906
631:              add          a6, ra, a3
                  srli         t5, t3, 14
                  ori          a3, a5, -896
                  srli         a6, s2, 14
                  bge          ra, a5, 648f
636:              auipc        zero, 631055
                  sll          s11, s1, a2
                  or           s4, sp, s6
                  bgeu         t4, s8, 657f
640:              sltiu        s0, s11, 1655
                  add          s1, s0, a3
                  lui          t1, 800875
                  srli         a0, a2, 17
                  auipc        a6, 241301
                  sub          a1, s1, tp
                  bgeu         gp, a4, 647f
647:              andi         t3, tp, 1232
648:              slli         a0, s4, 7
                  sltu         s5, s9, s5
                  sltu         s4, zero, t6
                  ori          s10, a5, -1953
                  sltu         zero, s11, s1
                  addi         t6, s0, 831
                  srl          s0, t5, s0
                  addi         s8, a4, 372
                  srai         a0, s6, 1
657:              xori         a0, s2, -1881
                  sltu         t4, s4, s4
                  nop
                  andi         s1, t3, 216
                  addi         t1, t1, 1386
                  bltu         gp, s1, 670f
                  sub          gp, a1, s11
                  sltiu        s6, s1, 1513
                  blt          s7, zero, 669f
                  sub          a7, s8, gp
                  beq          gp, a4, 674f
                  sub          s8, t1, t0
669:              bge          s2, a1, 687f
670:              auipc        a4, 536083
                  ori          s6, a2, 764
                  sub          s4, s7, a5
                  beq          s1, t1, 681f
674:              slli         s9, s7, 3
                  sra          a7, a2, s0
                  bne          s8, zero, 693f
                  lui          s8, 260749
                  slli         s11, ra, 21
                  srl          a1, s11, a6
                  auipc        a2, 250915
681:              srl          s4, a6, t4
                  bne          s1, s8, 700f
                  nop
                  sll          t0, a3, s4
                  sra          s4, s8, t2
                  srli         s11, s3, 26
687:              srli         a0, a3, 16
                  bgeu         s5, zero, 700f
                  nop
                  bgeu         a6, t0, 702f
                  sra          a5, s8, tp
                  slli         t6, s3, 23
693:              xori         s10, t4, -1075
                  slli         s0, s7, 19
                  slti         t3, t3, 1385
                  auipc        s8, 788196
                  add          a5, t5, a0
                  beq          s9, a0, 714f
                  or           a3, s5, t3
700:              beq          s10, s7, 704f
                  beq          s0, a0, 712f
702:              add          s3, s9, s11
                  ori          s5, a1, 679
704:              sll          a4, a3, ra
                  bne          t1, a5, 720f
                  slti         a1, s3, -1942
                  addi         s10, s8, -103
                  xori         s3, a3, 1713
                  bgeu         a6, a4, 727f
                  slt          s3, sp, a2
                  xori         ra, s11, 1829
712:              auipc        a4, 541542
                  sra          ra, a4, t5
714:              nop
                  auipc        s5, 1012023
                  lui          a6, 264331
                  xor          s6, t3, a1
                  bge          s0, a2, 721f
                  srl          t3, t3, t4
720:              beq          s3, s1, 727f
721:              slt          a0, a1, t4
                  lui          s8, 263123
                  lui          a0, 559673
                  slt          s9, t1, s7
                  beq          a4, s10, 742f
                  add          s11, s10, s4
727:              nop
                  add          s0, s1, t5
                  bne          s10, s7, 744f
                  and          gp, s6, s10
                  bge          s3, t2, 735f
                  sltiu        a7, a7, 1547
                  sll          s9, a4, s7
                  sltiu        s11, t5, -394
735:              and          zero, s11, s7
                  sltu         a7, t1, s4
                  slti         a7, sp, 1874
                  sub          t4, sp, s6
                  sra          s5, s2, s6
                  sltiu        s8, s7, 112
                  addi         t0, s3, 1816
742:              sltu         s7, s8, t1
                  srai         ra, s2, 14
744:              ori          s8, s5, -561
                  beq          s5, s6, 754f
                  or           s11, s11, a7
                  auipc        a3, 1006064
                  sub          t2, t4, a7
                  beq          s9, a1, 765f
                  and          a3, a7, s1
                  bltu         a4, t1, 765f
                  addi         a0, a1, 1943
                  bgeu         s11, a0, 754f
754:              auipc        s6, 261218
                  sub          t3, a2, s10
                  slli         t3, s7, 11
                  and          a2, a4, t3
                  srli         a6, a6, 4
                  srli         a4, s5, 30
                  bltu         a2, tp, 764f
                  sltiu        s11, s3, -1778
                  sll          a1, a1, s7
                  sub          s1, a0, t5
764:              lui          t4, 976278
765:              bgeu         s1, t0, 772f
                  slt          s9, ra, t6
                  auipc        s0, 867443
                  ori          ra, ra, 1602
                  or           s8, s6, t4
                  sll          s10, s8, s6
                  slti         a2, t4, -1131
772:              bge          s0, s8, 784f
                  auipc        a7, 102028
                  slt          a5, zero, tp
                  add          t2, a4, t1
                  andi         t2, s1, 1591
                  andi         s6, s5, -396
                  andi         s3, s11, -949
                  ori          a4, s7, 423
                  xor          s8, s11, t6
                  andi         t0, a7, 1520
                  ori          zero, t4, -542
                  srl          t6, a5, a4
784:              sltu         s1, tp, gp
                  or           s8, a7, a1
                  srai         a4, t6, 2
                  lui          s11, 175701
                  slti         s4, s0, 751
                  bltu         zero, s0, 805f
                  xori         s9, a1, -606
                  xor          a6, t1, ra
                  xori         s11, a6, -149
                  sltu         a6, t6, a4
                  and          zero, ra, s0
                  slti         s7, s6, 1614
                  beq          a1, zero, 808f
                  srl          t4, s4, s4
                  bge          s7, ra, 812f
                  slli         gp, zero, 21
                  sub          s3, zero, s4
                  lui          a0, 319999
                  srli         t5, t5, 17
                  add          t6, s5, a7
                  beq          t0, s10, 811f
805:              ori          s6, gp, -1060
                  sltu         t6, gp, s5
                  lui          s1, 834169
808:              sra          a7, t0, s2
                  andi         a6, t2, -996
                  slti         a6, s8, -936
811:              xor          ra, s0, a2
812:              beq          s2, gp, 820f
                  or           t4, zero, tp
                  sub          s9, a1, s8
                  and          a5, t5, s8
                  slt          t1, s10, a0
                  add          a4, a5, a0
                  srl          s5, a3, s0
                  srl          t1, t3, a6
820:              lui          s10, 38389
                  srai         s7, s11, 17
                  andi         s9, s1, 457
                  or           t6, t0, s2
                  slli         s5, s11, 14
                  bgeu         a6, a3, 826f
826:              slti         ra, s8, 1059
                  slli         a7, a7, 24
                  xori         a5, a1, 518
                  sll          a7, t6, t5
sub_1_8:          jal          ra, 15f
0:                jal          t4, 24f
1:                jal          s1, 12f
2:                jal          ra, 19f
3:                jal          s11, 14f
4:                jal          ra, 28f
5:                jal          t1, 6f
6:                jal          t5, 9f
7:                jal          s11, 10f
8:                jal          ra, 25f
9:                jal          t1, 20f
10:               jal          s11, 8b
11:               jal          ra, 7b
12:               jal          t1, 17f
13:               jal          ra, 29f
14:               jal          t1, 2b
15:               jal          ra, 16f
16:               jal          ra, 11b
17:               jal          ra, 0b
18:               jal          ra, 23f
19:               jal          ra, 26f
20:               jal          ra, 27f
21:               jal          ra, 13b
22:               jal          ra, 1b
23:               jal          ra, 21b
24:               jal          ra, 5b
25:               jal          a2, 22b
26:               jal          t1, 4b
27:               jal          t5, 3b
28:               jal          ra, 18b
29:               srai         s9, sp, 26
                  slli         t2, s0, 6
                  srl          s11, s5, zero
                  bne          s8, a7, 850f
                  srl          a0, s9, t2
                  xor          s11, s5, s3
                  sub          a6, a5, gp
                  slli         t0, s10, 22
                  slti         a0, s2, -748
                  bltu         s7, s8, 846f
                  sltu         s1, s4, t6
                  ori          ra, t1, 1017
                  sub          a1, gp, s4
                  and          s7, s4, s2
                  xori         gp, s4, 1561
                  slli         a1, t2, 23
                  add          zero, gp, s7
846:              and          s1, s8, zero
                  sra          a4, a6, s10
                  add          s6, t6, s4
                  sll          s9, t0, t4
850:              sll          s7, ra, t2
                  srl          s10, a5, t3
                  srl          t4, s5, t2
                  bge          t3, gp, 866f
                  add          t6, s11, a7
                  or           s3, a0, s0
                  srai         ra, t4, 27
                  srli         s7, s3, 10
                  add          a1, t3, s3
                  add          a2, s6, a7
                  add          t4, s11, a3
                  andi         s8, s0, -987
                  sub          a0, s8, s7
                  slti         s3, a1, 1094
                  ori          t0, s8, 79
                  bne          s2, a1, 875f
866:              slli         a5, t0, 5
                  sra          t2, a7, s10
                  addi         t1, s10, 1845
                  add          t4, t1, t6
                  bne          tp, a2, 880f
                  bltu         s6, s8, 883f
                  add          t0, a2, a7
                  sltiu        t6, a3, -1423
                  bltu         t6, t5, 892f
875:              slli         a6, s10, 11
                  srl          t4, s4, s5
                  bgeu         ra, ra, 894f
                  xor          s3, s0, a3
                  srl          t2, t5, a3
880:              ori          a4, a7, 930
                  bltu         s7, s2, 896f
                  add          a7, s5, t0
883:              slt          s6, s1, s1
                  or           a5, s7, a6
                  srli         gp, a2, 15
                  sra          a0, s4, t1
                  xori         s10, zero, -1276
                  add          a4, zero, a5
                  sltu         s10, t3, s0
                  xor          s0, t3, a5
                  bne          s0, t0, 898f
892:              bne          t1, a4, 899f
                  bgeu         a5, s5, 905f
894:              ori          t3, a6, 1270
                  srli         t5, s8, 15
896:              srai         gp, s0, 8
                  srai         a7, a3, 7
898:              slt          a7, s3, t5
899:              auipc        a5, 56601
                  andi         s10, t1, -1477
                  ori          a7, t6, 1349
                  nop
                  and          t4, tp, s6
                  sra          t4, s9, t2
905:              add          a0, a3, a3
                  andi         s10, t6, 1695
                  sub          s11, s0, tp
                  or           t6, t6, s1
                  srai         a7, sp, 14
                  xori         a3, a0, -1776
                  lui          a1, 662782
                  auipc        a6, 440702
                  xor          t6, t2, s11
                  xor          a1, zero, s6
                  bge          s7, s8, 930f
                  or           s7, s6, s9
                  xori         t6, a2, -1579
                  slli         ra, s1, 31
                  or           a0, s10, sp
                  xori         a2, s5, -523
                  slti         a1, a6, 1242
                  blt          t1, s3, 925f
                  slti         t0, a5, -1275
                  sltiu        t3, a1, 1273
925:              addi         t4, s2, 517
                  nop
                  lui          ra, 491966
                  bgeu         a3, t3, 932f
                  slli         a7, s9, 30
930:              xor          t2, a4, t3
                  lui          s11, 525771
932:              xori         s1, gp, 602
                  slti         zero, s3, 1701
                  nop
                  andi         t4, s3, -891
                  slt          a7, zero, a0
                  beq          s10, a3, 955f
                  bne          t0, a5, 945f
                  bgeu         tp, s9, 949f
                  slli         a4, a1, 13
                  srl          t4, t0, s6
                  sltiu        t0, a7, -98
                  lui          ra, 138098
                  bltu         sp, t4, 961f
945:              blt          s4, zero, 949f
                  xori         s6, s0, -1068
                  nop
                  bgeu         s0, ra, 960f
949:              andi         t2, tp, 1921
                  addi         a1, sp, -862
                  slt          s6, a7, t2
                  slli         s10, s3, 0
                  bge          zero, t5, 969f
                  slt          s9, s6, zero
955:              bltu         s11, t6, 969f
                  lui          a7, 851288
                  or           s9, s6, tp
                  srl          t4, s11, t3
                  bge          a1, s1, 972f
960:              beq          s7, tp, 969f
961:              slli         s11, tp, 18
                  add          s0, a6, s7
                  sltu         a1, t1, t3
                  xori         t0, a3, 249
                  or           a7, t3, s0
                  srl          s4, s2, s9
                  sll          a3, s9, t5
                  and          t5, ra, t1
969:              auipc        s7, 242971
                  add          t3, a0, s6
                  add          s9, t2, s0
972:              ori          a4, zero, -855
                  auipc        s11, 690415
                  sltu         t6, a2, gp
                  bltu         t2, t1, 992f
                  sub          s5, zero, s6
                  sltiu        ra, t5, 1997
                  bltu         a4, a7, 990f
                  add          s6, tp, s1
                  and          t4, ra, s6
                  sltiu        t1, s8, 713
                  or           a4, s4, sp
                  and          ra, t0, a7
                  sltiu        s0, a2, 16
                  or           ra, s5, a6
                  ori          gp, s1, 1044
                  auipc        s0, 245689
                  addi         a0, zero, 1931
                  lui          gp, 279415
990:              beq          s9, a7, 1005f
                  add          t2, s9, a5
992:              bltu         t5, t1, 1010f
                  sltiu        ra, s2, 62
                  slt          s6, a2, a4
                  srli         a6, a3, 2
                  bgeu         s5, gp, 1007f
                  xor          s4, t3, zero
                  sub          t5, s8, s6
                  andi         a6, s3, -419
                  bltu         a2, s0, 1010f
                  and          a6, sp, t3
                  sub          t5, a2, t1
                  sub          s0, a3, a0
                  sra          s10, tp, s3
1005:             sltu         t6, s5, s10
                  sra          s0, tp, t1
1007:             blt          t5, t2, 1008f
1008:             slt          t2, s3, a6
                  srli         gp, t0, 19
1010:             sll          s11, zero, a3
                  xor          s3, a3, t3
                  sll          zero, a2, ra
                  bge          gp, tp, 1027f
                  lui          t6, 973203
                  sltu         t0, s2, s10
                  nop
                  sub          a7, zero, a0
                  srli         zero, t4, 29
                  xori         t4, s0, -1074
                  lui          s6, 154196
                  add          s0, s10, s10
                  sub          t5, s10, ra
                  lui          s4, 822350
                  bltu         t4, s0, 1025f
1025:             ori          s11, t4, -1198
                  bne          ra, ra, 1034f
1027:             lui          t0, 503675
                  bltu         ra, t6, 1044f
                  beq          t0, s3, 1044f
                  and          s4, t0, s10
                  or           s8, a4, a1
                  ori          t2, t0, 236
                  bltu         sp, s10, 1041f
1034:             slti         t0, a0, 1617
                  bge          s0, gp, 1053f
                  bne          t1, s3, 1045f
                  xori         a2, t0, -1291
                  lui          ra, 983319
                  sltu         a0, a1, zero
                  sub          a6, s4, s7
1041:             slt          s10, s10, s11
                  bne          t2, s7, 1054f
                  sltiu        s3, s2, -679
1044:             and          t0, t2, a6
1045:             srl          a6, s10, s3
                  srai         t3, t5, 21
                  srl          s1, zero, s10
                  sltu         a3, t4, s2
                  sltiu        ra, s3, -1005
                  andi         s11, t5, 549
                  add          s1, s9, a5
                  xor          t6, t1, a6
1053:             bgeu         t5, a2, 1071f
1054:             blt          t0, a1, 1057f
                  bgeu         t1, sp, 1070f
                  blt          s9, t1, 1073f
1057:             lui          a5, 54185
                  nop
                  slli         a7, t6, 10
                  add          t3, t0, a0
                  and          a2, s11, t3
                  slt          s11, t6, a7
                  bgeu         s7, sp, 1080f
                  andi         t4, a6, -516
                  sltiu        s6, s11, -158
                  bltu         s0, t5, 1067f
1067:             xor          s9, sp, s11
                  auipc        zero, 664252
                  sltiu        s4, t1, 1736
1070:             srl          zero, t1, t6
1071:             or           a2, t6, t0
                  or           a3, s6, a3
1073:             sra          ra, a4, t3
                  srai         s7, zero, 25
                  ori          a5, a6, -470
                  auipc        a0, 940673
                  srai         t5, s7, 19
                  bge          zero, s4, 1089f
                  ori          s1, gp, 1265
1080:             slt          s11, a2, a1
                  addi         ra, a3, -302
                  srli         s6, s4, 21
                  sra          s7, a3, t4
                  sll          s9, s3, s7
                  xor          s11, gp, s9
                  ori          a3, tp, -461
                  bltu         s8, a0, 1102f
                  sltiu        a0, s11, 437
1089:             nop
                  blt          t3, zero, 1106f
                  auipc        t0, 373909
                  bne          tp, a5, 1110f
                  sra          a4, ra, a5
                  lui          t5, 919874
                  and          s4, s5, ra
                  srai         t0, a6, 1
                  auipc        s3, 629459
                  slli         a6, a3, 1
                  sra          t6, s7, sp
                  beq          s1, s4, 1107f
                  slt          s10, s9, s10
1102:             bltu         t1, tp, 1114f
                  or           s0, gp, a4
                  lui          s6, 524264
                  sra          a1, s1, gp
1106:             bne          s11, s5, 1113f
1107:             slt          a4, s0, s8
                  xor          t4, s11, t6
                  sltiu        s8, s7, 1378
1110:             ori          t4, a0, 1189
                  bge          t0, s6, 1115f
                  slti         a1, s10, 1873
1113:             or           t4, gp, sp
1114:             srl          s3, a1, a0
1115:             sltiu        t2, t5, -1353
                  nop
                  lui          s10, 145273
                  sra          t3, a2, zero
                  bge          t5, zero, 1126f
                  xori         a4, a7, 574
                  beq          ra, t0, 1139f
                  and          s1, t5, a3
                  sub          a7, s2, t4
                  srli         s6, t6, 1
                  xor          ra, t4, sp
1126:             bge          t1, a0, 1141f
                  lui          t4, 371299
                  nop
                  auipc        a7, 581385
                  xori         ra, s10, 1039
                  lui          s4, 773275
                  nop
                  bne          a6, s5, 1147f
                  lui          s8, 418757
                  sltu         s6, a1, a7
                  addi         s9, zero, 4
                  and          a2, s0, a5
                  sra          a5, t3, s6
1139:             xori         ra, a4, 1298
                  ori          a6, t5, 261
1141:             sll          s10, s11, a3
                  xor          t6, s8, t2
                  sltiu        s10, t2, 535
                  sub          t2, t5, a2
                  nop
                  add          s5, s3, s8
1147:             blt          a7, s1, 1161f
                  addi         a7, a0, 1742
                  auipc        s4, 727417
                  xori         a4, a6, -562
                  blt          gp, a4, 1161f
                  beq          a3, s4, 1164f
                  blt          s0, s6, 1163f
                  bne          tp, ra, 1167f
                  bltu         tp, t2, 1156f
1156:             sra          a3, sp, t3
                  xori         t2, s4, 906
                  lui          s4, 19635
                  ori          s1, s3, 1620
                  xori         t0, s2, 619
1161:             xor          t5, a6, t0
                  slli         ra, a6, 0
1163:             blt          t1, t2, 1167f
1164:             slli         s11, a0, 23
                  slt          ra, a1, a2
                  slti         a0, s4, 1464
1167:             sub          s6, t0, s2
                  sra          s8, s11, t6
                  sltiu        t4, s11, 865
                  srli         t2, a6, 24
                  add          gp, t0, gp
                  and          s7, s10, zero
                  auipc        a3, 97389
                  andi         a6, a3, -348
                  addi         a7, t1, -1251
                  sltu         a3, s8, a6
                  bge          s6, s6, 1185f
                  or           s1, s8, a5
                  bne          t6, a6, 1187f
                  bltu         s6, s8, 1196f
                  ori          s1, sp, -991
                  ori          s3, a0, -798
                  auipc        s6, 983107
                  blt          ra, s5, 1194f
1185:             srai         t1, t4, 8
                  addi         s3, s1, 1144
1187:             srli         a5, t2, 6
                  blt          s2, a2, 1198f
                  sra          s1, s5, t0
                  slti         t4, t5, 1800
                  srai         s4, s9, 7
                  lui          t1, 432185
                  sltiu        s1, a6, 108
1194:             srli         a2, t2, 13
                  lui          t2, 421528
1196:             bltu         a5, t2, 1213f
                  sra          a2, t3, t5
1198:             bgeu         a0, a6, 1202f
                  sll          t2, a0, a7
                  bge          s0, s3, 1215f
                  sltu         t6, a1, a0
1202:             slti         a6, s6, 173
                  auipc        t6, 339079
                  blt          s4, s8, 1220f
                  slt          s3, a2, t1
                  slli         a0, s0, 6
                  sra          a0, a2, t5
                  sll          s7, t4, a2
                  srai         ra, t1, 11
                  xor          a1, sp, a5
                  auipc        t6, 733430
                  add          t0, s9, a2
1213:             nop
                  lui          s9, 181987
1215:             or           s9, s9, t1
                  andi         gp, s10, 858
                  bgeu         a4, gp, 1235f
                  xori         t0, s6, -1374
                  srai         t1, t2, 31
1220:             xori         t4, t2, -370
                  xori         s9, a0, 1327
                  andi         t3, s8, -997
                  blt          tp, ra, 1238f
                  sltiu        zero, a6, -1633
                  bne          a7, a0, 1226f
1226:             lui          s8, 492405
                  and          t6, t5, a4
                  bltu         a6, t4, 1240f
                  blt          a3, s1, 1240f
                  and          s0, s4, a7
                  and          s3, s10, ra
                  and          t0, zero, s3
                  srl          t2, t0, s7
                  bgeu         a5, a7, 1247f
1235:             beq          s2, a4, 1239f
                  bltu         t0, t5, 1244f
                  nop
1238:             bltu         t1, s1, 1254f
1239:             addi         t1, ra, -632
1240:             addi         s6, s9, 242
                  nop
                  or           t4, s8, s3
                  sltu         t1, ra, a3
1244:             bge          s4, t3, 1251f
                  sra          s4, s5, t1
                  slt          a0, t1, t1
1247:             addi         zero, a2, -1668
                  andi         a6, t1, 2003
                  slt          a5, s8, s9
                  addi         t0, a7, 673
1251:             xor          s0, t0, s7
                  add          a1, ra, s4
                  lui          a7, 410636
1254:             blt          sp, a4, 1268f
                  srli         a4, t0, 7
                  or           a2, a4, s0
                  slli         s1, a3, 6
                  ori          t3, t2, 878
                  blt          ra, gp, 1266f
                  xori         a5, a0, 1779
                  bne          s4, t0, 1269f
                  slli         t1, t3, 19
                  bltu         t4, s7, 1280f
                  blt          a4, s10, 1276f
                  and          s5, s9, a1
1266:             auipc        s5, 361744
                  beq          a7, t1, 1281f
1268:             addi         a5, s4, -1738
1269:             srl          t4, s6, a4
                  sra          a5, ra, t6
                  srl          a4, s3, s0
                  slt          zero, s0, s4
                  bne          s2, a1, 1280f
                  bge          s10, a2, 1283f
                  sub          t5, a3, ra
1276:             xori         s3, t0, 2010
                  sltiu        t3, gp, 1256
                  ori          s8, t0, 1815
                  slt          s3, ra, a1
1280:             auipc        t6, 905868
1281:             bgeu         a0, t4, 1284f
                  blt          gp, t3, 1300f
1283:             and          t2, s0, gp
1284:             nop
                  bgeu         a5, s2, 1300f
                  lui          s1, 150847
                  srli         t1, s2, 31
                  blt          t3, s6, 1306f
                  xori         s10, s9, 805
                  add          t2, t1, s11
                  bgeu         s2, s6, 1303f
                  xor          a0, t1, s7
                  add          a2, a0, s8
                  srli         t5, zero, 4
                  bltu         sp, a4, 1296f
1296:             slti         t0, t5, 557
                  ori          a6, t3, 908
                  nop
                  ori          a1, a0, 2016
1300:             addi         s7, a0, -733
                  sltu         a6, a5, s3
                  beq          t6, t1, 1311f
1303:             sra          gp, s11, tp
                  addi         ra, ra, -1982
                  bgeu         s1, t3, 1306f
1306:             slli         s11, a0, 28
                  xori         gp, t4, 1787
                  bgeu         s4, a5, 1320f
                  srl          a3, s1, s8
                  srli         s3, t6, 21
1311:             addi         a1, a5, -629
                  bne          s0, gp, 1329f
                  xori         a4, zero, -1950
                  bgeu         t1, t3, 1315f
1315:             slt          t5, t0, s4
                  xori         a3, t0, -259
                  srl          t0, a3, t0
                  bltu         gp, s8, 1326f
                  sltu         s7, s5, s5
1320:             bne          a5, s4, 1335f
                  bge          s8, a1, 1333f
                  srli         t3, a2, 24
                  slti         a6, s3, -1114
                  sltu         t5, s7, s9
                  sub          ra, s10, zero
1326:             slt          s6, s6, t5
                  srli         ra, s11, 13
                  blt          s3, s6, 1346f
1329:             beq          a2, a1, 1345f
                  sra          s0, s6, zero
                  slti         ra, s1, 1507
                  bltu         s3, s6, 1339f
1333:             sub          a3, ra, s5
                  nop
1335:             srai         s1, a7, 22
                  auipc        a4, 738612
                  sltiu        a0, s7, -1544
                  xor          a7, sp, t1
1339:             slt          t1, s9, s3
                  sub          s11, s1, s6
                  andi         s8, a0, 176
                  srli         a4, a4, 8
                  sll          t2, s2, s3
                  slti         t0, sp, -96
1345:             xor          zero, s11, ra
1346:             slti         a3, a1, -140
                  srl          s3, t6, tp
                  xor          t4, a1, t2
                  srai         s0, t4, 2
                  lui          s0, 757333
                  slti         a1, sp, 1355
                  srli         a1, zero, 13
                  and          a0, s0, s6
                  add          t6, s1, a5
                  blt          gp, t4, 1371f
                  nop
                  sll          s3, t6, a5
                  and          t4, a0, s7
                  sltiu        s8, s5, -1203
                  and          zero, t4, tp
                  sltiu        s9, s6, 927
                  auipc        t6, 1017118
                  beq          t4, s8, 1371f
                  bgeu         a7, s8, 1379f
                  sltiu        s7, zero, -1646
                  addi         t0, s8, 369
                  nop
                  sltu         ra, a6, s10
                  add          t5, t4, s7
                  ori          s0, a4, -118
1371:             srl          t4, s9, s0
                  sub          s5, a1, s4
                  beq          tp, s0, 1387f
                  beq          s6, sp, 1388f
                  bgeu         s1, a4, 1382f
                  addi         a2, t0, 707
                  sltiu        s5, ra, -453
                  and          s4, a2, t4
1379:             slli         t5, a2, 20
                  bge          s6, t1, 1395f
                  slli         a6, s6, 23
1382:             srl          a3, s10, s1
                  sltu         a2, a1, ra
                  bge          a0, t5, 1396f
                  srli         a5, a1, 20
                  auipc        t6, 546482
1387:             sra          ra, s9, t6
1388:             xor          s0, s2, a7
                  addi         s4, s11, -1880
                  bge          s5, s9, 1394f
                  srli         a0, a2, 30
                  sltiu        gp, t1, -1376
                  slt          s4, a4, s1
1394:             beq          s3, a2, 1411f
1395:             srl          s5, t2, s0
1396:             bgeu         s7, sp, 1409f
                  bltu         a4, a1, 1415f
                  bge          t6, s4, 1409f
                  sltu         a2, s7, t4
                  sub          s5, s6, s10
                  add          s0, s0, sp
                  sltu         a5, s6, t1
                  slt          s7, gp, t2
                  lui          a4, 324532
                  srai         t5, s11, 20
                  nop
                  nop
                  bne          t6, s6, 1415f
1409:             addi         a4, s3, 225
                  xori         gp, sp, 136
1411:             andi         a6, ra, -1166
                  and          zero, s11, a2
                  sra          a4, t2, a0
                  blt          tp, s7, 1418f
1415:             auipc        zero, 967291
                  slti         t2, s3, -564
                  addi         t1, t6, 169
1418:             sltiu        s6, s6, -933
                  slti         s7, s0, 611
                  addi         a0, a2, -1243
                  add          s3, gp, a7
                  addi         t2, a5, 322
                  slti         a7, s2, -538
                  bltu         a1, a0, 1434f
                  sra          t2, a7, s8
                  slli         a3, s4, 8
                  srai         ra, s3, 31
                  srai         a7, t4, 13
                  blt          t5, t3, 1439f
                  slti         a3, s3, 301
                  sltiu        t0, t1, -100
                  srli         t3, s6, 25
                  lui          s6, 687460
1434:             sltu         s1, s3, s9
                  lui          a7, 321825
                  bge          a4, s2, 1439f
                  add          s10, s1, a7
                  srai         a0, s6, 24
1439:             srai         s6, a5, 20
                  sll          t6, t4, s3
                  sltu         t6, sp, s7
                  bgeu         s4, ra, 1460f
                  addi         t0, t1, 1652
                  srli         s5, t1, 20
                  bne          s3, s0, 1454f
                  add          t2, a6, s4
                  lui          t3, 831828
                  slti         s5, a3, -1902
                  slt          s4, a3, a5
                  beq          tp, s2, 1454f
                  bgeu         t3, t4, 1455f
                  sltu         gp, s1, s8
                  slli         t0, s0, 31
1454:             srai         s6, t3, 4
1455:             slti         a4, s3, 45
                  sll          s4, t0, a3
                  beq          t2, a5, 1469f
                  sll          a1, a3, s8
                  slli         s6, a2, 19
1460:             sra          a3, s9, a2
                  sll          s0, s11, a2
                  srl          s1, t3, t6
                  lui          s3, 982850
                  slti         s5, tp, -983
                  and          a5, s1, tp
                  srl          s3, a5, ra
                  srli         t4, s10, 18
                  bltu         t6, a7, 1475f
1469:             beq          sp, a0, 1476f
                  sub          s11, a5, a1
                  bne          s11, sp, 1472f
1472:             srl          gp, s9, s8
                  lui          t1, 449998
                  addi         s9, gp, 388
1475:             and          s8, s1, t6
1476:             addi         s11, t2, -1495
                  nop
                  srli         a5, zero, 5
                  sra          s11, a5, t4
                  slli         t0, t0, 25
                  auipc        t6, 368987
                  srli         a1, t6, 29
                  srl          a7, t3, gp
                  xori         gp, a1, -1724
                  bgeu         s11, t1, 1503f
                  sub          t3, a6, tp
                  nop
                  bge          s9, s1, 1503f
                  beq          t4, s3, 1502f
                  slti         t2, a2, -2000
                  addi         t2, a7, -1975
                  sub          s3, s9, gp
                  or           a6, a2, s10
                  slti         s6, a6, -1688
                  slt          a0, zero, a4
                  sltiu        t5, t4, -210
                  andi         a7, a7, 1598
                  blt          zero, t0, 1515f
                  bgeu         s10, sp, 1509f
                  blt          a2, s10, 1512f
                  add          t0, a5, a4
1502:             or           t4, a4, s2
1503:             sra          t3, t3, a1
                  sll          a4, s0, a3
                  nop
                  or           a2, gp, s8
                  sltu         s8, s6, s5
                  sltiu        s0, t3, -788
1509:             andi         a2, a0, 468
                  xor          t4, sp, zero
                  srai         s9, t1, 13
1512:             blt          a0, s4, 1527f
                  sub          t5, ra, t3
                  add          a3, s11, t5
1515:             srai         t2, s9, 0
                  slt          s0, a4, a3
                  auipc        a1, 544406
                  xori         t4, t4, -210
                  xori         t0, s10, 1341
                  and          t0, tp, ra
                  sltu         s4, a1, a6
                  or           t6, s4, s9
                  lui          s10, 921175
                  bne          gp, a7, 1538f
                  srli         a5, s6, 15
                  and          a7, sp, a1
1527:             slt          t2, s5, t5
                  bltu         a6, a1, 1539f
                  srai         gp, t0, 30
                  xori         s6, a7, 1385
                  sltu         a2, s4, t0
                  or           s10, a4, s8
                  blt          t6, t2, 1541f
                  srli         ra, s0, 13
                  xori         s7, t4, 158
                  slli         a6, a1, 18
                  slli         s5, s10, 5
1538:             sra          s8, s5, a7
1539:             bne          a2, t1, 1547f
                  sltu         t3, t4, s2
1541:             and          t1, s6, gp
                  sll          a1, t6, t5
                  add          a2, gp, a1
                  bltu         s0, a0, 1562f
                  sll          t1, a1, s0
                  ori          t6, s7, -2024
1547:             sll          a2, s8, gp
                  and          a4, s6, s1
                  slt          t6, a7, ra
                  and          a6, a0, s0
                  bltu         a6, s1, 1567f
                  slti         zero, a1, 1697
                  auipc        t4, 38667
                  or           s0, s11, a4
                  addi         s0, s11, -1023
                  blt          t6, a4, 1559f
                  sub          a3, t0, a0
                  bne          a5, t4, 1559f
1559:             slt          a2, t4, t2
                  sltiu        a2, s11, 831
                  slli         ra, t4, 25
1562:             nop
                  sltu         s3, s0, s5
                  slli         gp, a5, 0
                  lui          a5, 634720
                  addi         t1, zero, 601
1567:             srai         t4, zero, 27
                  srai         s1, s2, 4
                  andi         a1, ra, -806
                  xor          a1, gp, a2
                  slti         a6, s1, -1107
                  lui          s6, 828338
                  auipc        t2, 364842
                  blt          a3, s3, 1592f
                  bne          s10, ra, 1589f
                  xor          a1, a0, a3
                  addi         gp, tp, 1518
sub_1_15:         jal          ra, 1f
0:                jal          gp, 14f
1:                jal          s6, 13f
2:                jal          ra, 16f
3:                jal          ra, 5f
4:                jal          t4, 6f
5:                jal          t1, 7f
6:                jal          ra, 10f
7:                jal          ra, 2b
8:                jal          t1, 17f
9:                jal          ra, 15f
10:               jal          t4, 12f
11:               jal          t0, 8b
12:               jal          a4, 11b
13:               jal          t1, 3b
14:               jal          t1, 4b
15:               jal          s8, 0b
16:               jal          t1, 9b
17:               xori         a0, a2, -901
                  and          t3, t5, a5
                  srli         a2, a0, 5
                  bge          sp, s5, 1587f
                  add          s11, s5, a3
                  beq          s2, a4, 1597f
                  sll          s8, s1, s3
                  slt          t3, s0, a1
                  sltiu        gp, s9, 1924
                  ori          s0, s9, 170
1587:             ori          s11, s4, 1544
                  sub          a4, s4, tp
1589:             sll          s11, s6, a2
                  slt          t6, a1, a5
                  sra          s0, s9, t0
1592:             blt          a0, a3, 1602f
                  lui          a2, 917401
                  slli         zero, a6, 10
                  srli         s8, t3, 31
                  nop
1597:             sltiu        s10, s2, 1853
                  nop
                  nop
                  srl          s4, a7, a1
                  bne          s3, t4, 1617f
1602:             sltiu        ra, ra, -2017
                  addi         s1, s0, 1280
                  xori         t3, t1, -998
                  nop
                  beq          a2, ra, 1623f
                  srli         s5, tp, 27
                  srai         t0, s7, 24
                  bltu         s9, t1, 1621f
                  sra          s1, s2, t6
                  ori          s4, s7, -797
                  or           a7, t2, a6
                  ori          s6, s11, 734
                  xori         s6, s3, 508
                  addi         s7, a4, 1635
                  add          s7, s9, s10
1617:             sltu         ra, t6, a0
                  srli         t1, s3, 29
sub_1_19:         jal          ra, 10f
0:                jal          t1, 13f
1:                jal          ra, 3f
2:                jal          ra, 21f
3:                jal          a2, 8f
4:                jal          ra, 18f
5:                jal          t1, 23f
6:                jal          t3, 12f
7:                jal          a5, 14f
8:                jal          ra, 4b
9:                jal          t1, 5b
10:               jal          t0, 11f
11:               jal          t5, 24f
12:               jal          ra, 7b
13:               jal          t0, 20f
14:               jal          ra, 0b
15:               jal          a0, 9b
16:               jal          a6, 17f
17:               jal          t0, 6b
18:               jal          t1, 16b
19:               jal          a5, 25f
20:               jal          t1, 2b
21:               jal          ra, 22f
22:               jal          t0, 19b
23:               jal          ra, 1b
24:               jal          t1, 15b
25:               add          s0, zero, tp
                  slli         gp, a3, 5
                  or           gp, s8, t3
1621:             sub          s9, gp, s6
                  lui          gp, 153817
1623:             slt          a4, s2, zero
                  bgeu         t2, s4, 1641f
                  sra          a7, s3, t1
                  sub          ra, a0, s8
                  slli         a6, t4, 20
                  slti         a4, s11, 636
                  srai         gp, s8, 12
                  xor          s7, a1, t6
                  sub          zero, s9, t6
                  srai         t1, s3, 22
                  xori         t2, gp, 1393
                  blt          gp, t4, 1648f
                  lui          a7, 8513
                  bge          a0, t3, 1647f
                  andi         s7, s6, 755
                  auipc        s8, 893283
                  bgeu         a6, a6, 1656f
                  bne          s6, a3, 1654f
1641:             sub          s5, a1, t1
                  lui          s7, 88092
                  sub          a2, a1, s4
                  beq          s10, s7, 1652f
                  slt          s0, sp, a5
                  addi         t6, s1, -738
1647:             slli         a4, s3, 29
1648:             sll          s10, a7, a0
                  sltu         s7, a0, s8
                  srai         t1, t2, 11
                  sub          s7, t2, s8
1652:             srai         t5, gp, 26
                  bgeu         a6, t6, 1666f
1654:             slti         a6, s0, -1593
                  auipc        t0, 647389
1656:             sub          s3, tp, a4
                  sub          a5, s2, s6
                  bltu         s8, s4, 1662f
                  xor          s6, s4, t3
                  and          t0, t1, t4
                  addi         zero, t1, 1423
1662:             lui          s10, 664529
                  lui          t3, 92857
                  srl          a5, a2, a4
                  slt          s3, a5, gp
1666:             or           a3, tp, s4
                  sltiu        t0, a2, 232
                  slli         s6, gp, 6
                  bne          s5, gp, 1679f
                  ori          a4, s2, 544
                  andi         a7, s6, 1113
                  auipc        a3, 157128
                  bge          t4, s8, 1691f
                  bge          a4, s4, 1686f
                  nop
                  bgeu         s7, s6, 1691f
                  sub          ra, s9, s4
                  sltiu        a2, s2, 1338
1679:             bge          t4, sp, 1691f
                  slli         t3, s5, 2
                  bge          ra, tp, 1697f
                  srai         s11, s9, 20
                  add          a5, s0, s11
                  sltiu        gp, a6, -16
                  slli         s0, s7, 27
1686:             bge          s0, a0, 1695f
                  slti         s1, s3, 1491
                  lui          a4, 626448
                  nop
                  sub          a7, t4, gp
1691:             sltu         a1, s4, a2
                  and          t4, gp, zero
                  blt          t1, a6, 1694f
1694:             bge          a2, s7, 1697f
1695:             sll          a0, t4, s5
                  add          s5, a2, a7
1697:             slti         s6, t2, 1288
                  lui          s10, 553495
                  xori         a0, s7, 1045
                  lw           ra, 4(tp)
                  srai         s1, sp, 20
                  andi         a2, sp, 1663
                  addi         tp, tp, 36
                  slti         t3, a1, -694
                  xor          s4, t0, t1
                  slli         gp, s2, 8
                  andi         t2, s3, -337
2398:             addi x13, x1, 0
2398:             jalr x13, x13, 0
sub_2:            sll          zero, s4, a1
                  srl          a0, s11, a6
                  blt          a6, sp, sub_2_stack_p
                  slti         a6, t3, 1892
                  xori         s7, s9, 2046
                  and          s5, s10, a6
                  addi         zero, tp, -620
sub_2_stack_p:    addi         tp, tp, -56
                  sw           ra, 4(tp)
                  slti         t4, t6, -931
                  nop
                  xori         t2, a4, 1898
sub_2_8:          jal          ra, 11f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          ra, 9f
3:                jal          s9, 0b
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          a0, 7f
7:                jal          t1, 1b
8:                jal          ra, 10f
9:                jal          t1, 6b
10:               jal          a7, 5b
11:               jal          t1, 2b
12:               sll          zero, gp, a2
sub_2_4:          jal          ra, 13f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          t1, 17f
3:                jal          t0, 5f
4:                jal          ra, 12f
5:                jal          ra, 9f
6:                jal          s6, 14f
7:                jal          t1, 23f
8:                jal          ra, 11f
9:                jal          s1, 10f
10:               jal          ra, 6b
11:               jal          a6, 20f
12:               jal          t0, 15f
13:               jal          ra, 18f
14:               jal          ra, 16f
15:               jal          ra, 7b
16:               jal          a3, 8b
17:               jal          ra, 1b
18:               jal          ra, 19f
19:               jal          t1, 21f
20:               jal          ra, 24f
21:               jal          ra, 22f
22:               jal          ra, 4b
23:               jal          a0, 0b
24:               nop
sub_2_3:          jal          ra, 2f
0:                jal          s10, 8f
1:                jal          ra, 9f
2:                jal          ra, 5f
3:                jal          t1, 17f
4:                jal          t0, 20f
5:                jal          ra, 10f
6:                jal          ra, 16f
7:                jal          ra, 4b
8:                jal          t1, 18f
9:                jal          ra, 23f
10:               jal          t1, 11f
11:               jal          t0, 1b
12:               jal          ra, 3b
13:               jal          ra, 21f
14:               jal          ra, 24f
15:               jal          a7, 6b
16:               jal          ra, 22f
17:               jal          ra, 19f
18:               jal          t1, 14b
19:               jal          ra, 0b
20:               jal          t1, 15b
21:               jal          t1, 25f
22:               jal          a1, 13b
23:               jal          ra, 12b
24:               jal          gp, 7b
25:               srli         s6, a7, 7
sub_2_7:          jal          ra, 11f
0:                jal          t1, 9f
1:                jal          ra, 12f
2:                jal          ra, 24f
3:                jal          t0, 15f
4:                jal          gp, 22f
5:                jal          ra, 8f
6:                jal          t1, 19f
7:                jal          t1, 1b
8:                jal          a4, 14f
9:                jal          ra, 3b
10:               jal          ra, 21f
11:               jal          a5, 2b
12:               jal          a4, 10b
13:               jal          s9, 6b
14:               jal          gp, 4b
15:               jal          t1, 16f
16:               jal          t1, 17f
17:               jal          ra, 13b
18:               jal          gp, 20f
19:               jal          t1, 5b
20:               jal          t0, 0b
21:               jal          a1, 18b
22:               jal          s4, 23f
23:               jal          ra, 25f
24:               jal          a6, 7b
25:               srli         s10, t5, 12
sub_2_5:          jal          ra, 16f
0:                jal          ra, 8f
1:                jal          a2, 18f
2:                jal          ra, 7f
3:                jal          t0, 17f
4:                jal          ra, 11f
5:                jal          t0, 2b
6:                jal          t0, 4b
7:                jal          ra, 20f
8:                jal          t1, 12f
9:                jal          ra, 19f
10:               jal          ra, 9b
11:               jal          t1, 3b
12:               jal          t1, 13f
13:               jal          ra, 10b
14:               jal          a7, 0b
15:               jal          s10, 5b
16:               jal          s1, 1b
17:               jal          a0, 14b
18:               jal          ra, 6b
19:               jal          t1, 15b
20:               xor          a1, t1, a5
sub_2_6:          jal          ra, 17f
0:                jal          t0, 8f
1:                jal          ra, 5f
2:                jal          ra, 18f
3:                jal          t1, 2b
4:                jal          ra, 21f
5:                jal          ra, 28f
6:                jal          t1, 20f
7:                jal          ra, 10f
8:                jal          ra, 15f
9:                jal          ra, 16f
10:               jal          ra, 6b
11:               jal          ra, 22f
12:               jal          ra, 1b
13:               jal          gp, 11b
14:               jal          a7, 30f
15:               jal          t1, 27f
16:               jal          ra, 13b
17:               jal          ra, 12b
18:               jal          ra, 29f
19:               jal          ra, 7b
20:               jal          s11, 3b
21:               jal          a2, 26f
22:               jal          ra, 14b
23:               jal          ra, 0b
24:               jal          a5, 19b
25:               jal          t3, 24b
26:               jal          ra, 23b
27:               jal          t0, 9b
28:               jal          s5, 25b
29:               jal          t1, 4b
30:               andi         t0, a2, -85
sub_2_0:          jal          ra, 1f
0:                jal          ra, 20f
1:                jal          ra, 17f
2:                jal          s3, 10f
3:                jal          t1, 4f
4:                jal          t1, 11f
5:                jal          ra, 19f
6:                jal          t1, 0b
7:                jal          a7, 16f
8:                jal          ra, 22f
9:                jal          t1, 21f
10:               jal          t4, 9b
11:               jal          s3, 6b
12:               jal          ra, 23f
13:               jal          ra, 14f
14:               jal          ra, 5b
15:               jal          t1, 13b
16:               jal          t1, 12b
17:               jal          ra, 18f
18:               jal          ra, 2b
19:               jal          ra, 8b
20:               jal          ra, 15b
21:               jal          s6, 3b
22:               jal          t1, 7b
23:               sltiu        gp, s3, -1628
sub_2_2:          jal          ra, 20f
0:                jal          s7, 11f
1:                jal          ra, 13f
2:                jal          ra, 19f
3:                jal          ra, 23f
4:                jal          ra, 24f
5:                jal          t1, 1b
6:                jal          ra, 28f
7:                jal          ra, 3b
8:                jal          ra, 18f
9:                jal          t0, 5b
10:               jal          ra, 0b
11:               jal          t1, 4b
12:               jal          ra, 22f
13:               jal          s4, 14f
14:               jal          ra, 17f
15:               jal          t1, 6b
16:               jal          ra, 10b
17:               jal          ra, 15b
18:               jal          s11, 2b
19:               jal          ra, 21f
20:               jal          ra, 7b
21:               jal          s7, 9b
22:               jal          ra, 25f
23:               jal          gp, 12b
24:               jal          ra, 26f
25:               jal          gp, 27f
26:               jal          s3, 8b
27:               jal          t1, 16b
28:               or           a4, tp, gp
                  bgeu         t5, ra, 19f
                  addi         a6, zero, 1660
                  bltu         t0, s3, 10f
                  bge          s5, a4, 10f
                  slli         a0, zero, 23
                  sll          a7, s10, s10
                  sltu         t5, a4, s11
                  andi         t6, ra, -786
                  sub          a2, sp, s3
                  bne          s2, a6, 24f
10:               slt          s6, a2, s4
                  and          a2, tp, t3
                  blt          t1, s0, 31f
                  bne          s5, s6, 15f
                  nop
15:               beq          s10, t6, 25f
                  sub          a6, s7, t3
                  and          s0, gp, a6
                  xor          s9, t2, a6
19:               srli         s9, s9, 3
                  bgeu         zero, s1, 31f
                  bltu         s5, gp, 29f
                  sltu         a7, s8, a7
                  ori          s6, tp, -631
24:               andi         t5, s2, 1959
25:               sll          a7, a5, s4
                  and          t4, a6, t3
                  sltiu        a5, t4, 144
                  nop
29:               xori         a6, a3, 898
                  srli         a2, s2, 1
31:               xor          t4, t1, a2
                  and          s3, s0, s6
                  sub          zero, s3, t2
                  auipc        t1, 611448
                  andi         t5, s9, -1248
                  slli         t3, s11, 12
                  srli         t2, t4, 5
                  or           a1, t3, s9
                  srl          s0, sp, tp
                  bgeu         sp, t6, 43f
                  sub          t5, t0, a7
                  beq          s9, s5, 54f
                  srl          a0, a1, s10
                  sra          a4, s7, zero
                  auipc        a5, 94250
                  slli         t6, t4, 27
                  la           s10, sub_4
                  addi         s1, tp, 1066
                  nop
                  or           a6, s2, a2
                  addi         s10, s10, -262
                  srai         zero, tp, 6
sub_2_j6:         jalr         ra, s10, 263 #jump sub_2 -> sub_4
43:               srl          t5, s6, gp
                  srl          s5, s9, a0
                  srli         s0, s2, 28
                  or           t6, s6, s5
                  sltiu        t2, s7, 1915
                  srai         t5, t4, 17
                  bgeu         sp, t3, 59f
                  nop
                  auipc        a0, 1036381
                  ori          t3, s6, -1734
                  srli         a2, t2, 23
54:               bgeu         a0, a7, 69f
                  slli         a6, t2, 7
                  add          a5, zero, a5
                  sub          t5, sp, a4
                  bge          s7, a3, 75f
59:               ori          s6, a5, 901
                  xor          t1, tp, s0
                  beq          sp, s11, 75f
                  and          s10, tp, t2
                  srai         s6, zero, 19
                  add          s4, ra, s5
                  slli         s6, t5, 11
                  bge          a2, s3, 85f
                  add          a7, t4, a7
                  srli         s11, t0, 27
69:               auipc        s9, 147548
                  bge          t3, a6, 89f
                  xor          s9, a4, a2
                  beq          a3, zero, 73f
73:               slti         s9, s11, 1042
                  bltu         a7, t6, 94f
75:               bge          zero, sp, 77f
                  sltu         a6, a6, s7
77:               sltiu        a0, t2, -1094
                  slt          t3, a6, s6
                  sll          s8, t0, gp
                  srl          ra, s9, a7
                  andi         t1, t0, 337
                  bgeu         zero, s1, 89f
                  auipc        s5, 307452
                  slli         a3, s3, 0
85:               bne          s0, t0, 89f
                  bne          a3, gp, 90f
                  srl          a1, tp, zero
                  slli         a2, s2, 29
89:               bltu         s1, t4, 100f
90:               slti         s9, a5, -1319
                  beq          gp, t5, 109f
                  srl          s7, s7, s0
                  bne          a0, a1, 110f
94:               beq          t4, gp, 113f
                  auipc        s9, 143224
                  andi         s0, s10, 1691
                  blt          t4, s9, 114f
                  srli         a6, t4, 21
                  and          a4, ra, gp
100:              and          t2, s0, t1
                  or           s7, t3, s11
                  sub          s5, s2, t0
                  bltu         a5, s5, 122f
                  andi         a0, t5, -947
                  srli         a0, a1, 28
                  beq          s0, ra, 111f
                  add          t1, a1, a3
                  bltu         tp, a2, 125f
109:              and          a7, s2, s2
110:              xor          t2, a7, s6
111:              slt          a4, s3, s1
                  slli         zero, s9, 31
113:              sll          t5, a4, a2
114:              addi         t2, s8, 2024
                  slti         t6, t5, -1118
                  sltiu        gp, s10, -1709
                  beq          s5, a3, 129f
                  slti         a0, tp, 216
                  srai         a1, zero, 8
                  slt          a5, a2, s0
                  srai         s1, ra, 29
122:              andi         s4, a2, 751
                  nop
                  slti         t0, s8, 1302
125:              ori          s5, t4, -789
                  bne          s8, sp, 141f
                  addi         s6, t4, -1167
                  ori          s6, a7, -1236
129:              srli         zero, s5, 18
                  beq          s1, s3, 135f
                  beq          t0, t4, 149f
                  sra          s8, t3, s3
                  sltu         t5, t1, s3
                  or           s8, sp, s0
135:              bltu         a6, s7, 138f
                  and          s7, s10, s4
                  ori          a6, sp, -815
138:              slt          a7, ra, t6
                  sll          t6, s8, t6
                  lui          t0, 234264
141:              ori          t2, s11, -428
                  ori          a7, a2, -137
                  beq          t6, a0, 162f
                  sub          t4, s2, a2
                  nop
                  sll          ra, s2, gp
                  sub          s9, a4, s2
                  sra          a5, a1, t1
149:              and          a3, s3, s8
                  bgeu         t5, a5, 161f
                  bge          zero, ra, 159f
                  blt          zero, a1, 169f
                  sub          zero, s7, t0
                  and          a1, t1, s9
                  sll          s4, zero, s8
                  bltu         t2, a6, 170f
                  lui          a0, 734697
                  add          a7, s5, s9
sub_2_1:          jal          ra, 3f
0:                jal          gp, 21f
1:                jal          a5, 8f
2:                jal          ra, 9f
3:                jal          ra, 18f
4:                jal          t1, 16f
5:                jal          t0, 1b
6:                jal          s8, 17f
7:                jal          ra, 12f
8:                jal          t0, 4b
9:                jal          ra, 11f
10:               jal          a3, 0b
11:               jal          ra, 14f
12:               jal          ra, 6b
13:               jal          ra, 15f
14:               jal          ra, 19f
15:               jal          ra, 5b
16:               jal          a0, 22f
17:               jal          t1, 20f
18:               jal          ra, 10b
19:               jal          ra, 13b
20:               jal          ra, 2b
21:               jal          ra, 7b
22:               jal          ra, 23f
23:               auipc        a0, 427951
159:              add          t6, s9, s11
                  or           ra, t1, t2
161:              slli         t1, s8, 28
162:              xor          s4, t3, t1
                  blt          a1, s2, 170f
                  andi         a7, a1, -973
                  add          t4, gp, a2
                  bltu         a4, s7, 185f
                  bgeu         t3, t1, 171f
                  xor          a6, t4, gp
169:              addi         s9, s9, 2021
170:              sra          s3, a1, s2
171:              auipc        a4, 784974
                  srai         s8, s3, 25
                  slli         zero, s0, 12
                  xor          a2, s5, t4
                  slti         s9, s8, 1401
                  srli         s6, a1, 21
                  addi         zero, gp, -1879
                  or           a7, a3, a5
                  srai         t2, gp, 1
                  ori          a7, s5, -2033
                  and          a7, a3, ra
                  sub          s5, gp, a0
                  ori          a3, a3, -1757
                  srli         t5, s11, 29
                  sltu         s4, s6, a2
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  slt          zero, gp, t0
                  or           s9, t5, a7
                  bltu         s0, a3, 183f
                  xor          a5, a7, s9
183:              bltu         tp, zero, 193f
                  or           a7, zero, t6
185:              lui          s1, 66490
                  slt          a1, sp, s10
                  beq          a7, zero, 204f
                  bltu         a0, s11, 207f
                  lui          a2, 977174
                  sltu         a6, t3, t2
                  beq          tp, s2, 206f
                  bltu         s0, a6, 200f
193:              sra          s7, a2, t6
                  sltiu        s3, s1, 268
                  srai         s9, t5, 17
                  srai         t0, t3, 23
                  addi         t4, t1, 719
                  lui          s6, 758482
                  sra          s5, s3, a4
200:              slti         gp, s3, -838
                  sll          a4, s6, ra
                  slti         zero, tp, -600
                  srl          s8, a5, a2
204:              slt          a0, s5, s4
                  sltu         s3, s8, t1
206:              or           a5, s3, a5
207:              slt          s10, zero, s11
                  bne          s5, s7, 215f
                  sltiu        a3, t6, 1545
                  srl          s6, s5, s3
                  xor          a6, gp, t2
                  and          s0, s2, ra
                  slti         gp, t3, -851
                  slli         s0, t5, 27
215:              bgeu         s6, s11, 217f
                  bne          a5, a3, 235f
217:              slli         s8, a0, 4
                  ori          s5, s8, -1965
                  slli         s11, t4, 31
                  andi         s11, a1, -227
                  sltiu        t6, s1, -2025
                  lui          s0, 819002
                  add          s11, tp, a7
                  bgeu         s0, s4, 244f
                  srli         a7, s8, 4
                  bne          t1, t0, 236f
                  addi         a2, tp, 914
                  add          t2, s4, s10
                  beq          s7, t0, 230f
230:              sltu         a4, s2, sp
                  add          s1, s4, s1
                  xor          s8, s9, a6
                  bge          s1, ra, 252f
                  sltiu        t4, s1, 1425
235:              xor          s4, t2, t6
236:              sltiu        t4, s2, -2003
                  xor          t0, a7, sp
                  bltu         s1, t4, 249f
                  sltu         s4, t5, s7
                  xori         s5, s5, 1610
                  sltu         t5, a7, s4
                  addi         s4, a5, 1469
                  xor          a6, s2, s5
244:              sll          s4, s4, t1
                  beq          t0, a3, 264f
                  nop
                  lui          s1, 524274
                  xori         ra, s11, -767
249:              auipc        t5, 76209
                  sltu         s6, a0, s6
                  sra          a7, a6, tp
252:              or           s11, a4, gp
                  bne          zero, t2, 257f
                  sltu         t4, s9, a5
                  bltu         tp, t5, 270f
                  srl          s1, ra, a0
257:              sra          s8, s2, tp
                  or           a1, s8, t2
                  nop
                  bge          t5, t6, 261f
261:              slli         s3, ra, 8
                  slli         a4, a3, 0
                  or           s9, s11, t1
264:              nop
                  xor          a7, a6, s0
                  xori         a2, t0, -1167
                  auipc        s1, 803851
                  sltu         a7, sp, s4
                  sra          a4, tp, zero
270:              lui          gp, 752898
                  sltiu        a3, t4, -2008
                  sltu         s5, t4, t1
                  sll          zero, s2, s3
                  addi         a3, s4, -522
                  or           a1, s0, gp
                  slti         a6, s9, 687
                  nop
                  or           t5, ra, a3
                  sltiu        t2, s11, 742
                  sltu         s10, gp, tp
                  and          a3, a3, s6
                  slti         t5, s0, 1036
                  sll          ra, s9, a3
                  sltu         t1, s4, s2
                  beq          s7, a5, 302f
                  sltu         s7, a3, ra
                  srli         s8, t0, 9
                  slti         zero, s11, -1905
                  sltiu        s9, t2, 848
                  bne          a2, s7, 308f
                  and          a2, a5, t4
                  addi         s3, t4, -1595
                  slti         zero, a2, -997
                  and          ra, s4, a2
                  bgeu         s6, s9, 302f
                  nop
                  add          s9, s9, a6
                  auipc        t3, 438437
                  xor          t5, s0, s1
                  addi         s4, s6, 214
                  lui          a7, 47001
302:              sltu         ra, s6, t0
                  sltiu        a5, t2, -273
                  andi         t1, a6, 1355
                  srl          a4, a4, s6
                  bge          a6, a7, 316f
                  srli         t3, a5, 22
308:              addi         s9, a5, 1954
                  bgeu         a0, a0, 326f
                  bne          a0, s6, 322f
                  lui          s10, 940785
                  add          gp, s5, s1
                  srl          s5, s6, a1
                  beq          gp, t4, 318f
                  sll          ra, tp, ra
316:              xori         ra, t4, 253
                  bgeu         a0, t4, 332f
318:              bne          t6, t4, 337f
                  slti         a6, t4, -923
                  sll          t6, ra, s10
                  sltiu        a2, a4, 97
322:              addi         a4, s3, -408
                  bge          a3, a2, 342f
                  or           a1, t0, s3
                  srai         s5, a2, 17
326:              sltu         t1, s6, s11
                  srl          t2, a4, s5
                  or           s5, a0, t2
                  sltu         t1, s4, t0
                  ori          s6, s6, 953
                  ori          ra, a1, -2041
332:              srai         t2, a5, 13
                  beq          t5, t5, 335f
                  blt          t5, s5, 336f
335:              or           gp, tp, s4
336:              nop
337:              sub          t6, s11, t1
                  ori          gp, a6, 1844
                  sltu         t2, gp, t3
                  sra          s0, t6, s8
                  ori          s1, a1, 288
342:              or           t2, a6, tp
                  srli         t3, a6, 0
                  sra          t4, s10, sp
                  sltiu        s4, s4, -1279
                  lui          a2, 659444
                  xor          a0, s9, s5
                  slti         t6, s0, -1835
                  and          t5, zero, a0
                  bge          a6, ra, 361f
                  srai         a2, s4, 17
                  bgeu         a7, a1, 360f
                  slt          a0, t0, t6
                  srl          s9, s10, gp
                  xor          a5, sp, a5
                  slti         a4, a0, 1684
                  bgeu         t1, a1, 368f
                  sub          t2, s10, t5
                  auipc        a5, 196688
360:              ori          s9, a1, 1952
361:              addi         s11, t0, 918
                  ori          a4, s11, -558
                  and          s8, a5, t5
                  slli         t6, s1, 17
                  srli         t2, s8, 19
                  add          zero, a3, s9
                  xor          s5, s0, a0
368:              or           a2, s2, s1
                  bgeu         a5, tp, 388f
                  add          s6, a4, s8
                  sub          s5, ra, a7
                  or           gp, s9, t2
                  bgeu         a2, zero, 393f
                  srli         t6, s3, 14
                  andi         s1, s7, -1135
                  xori         s5, a6, -763
                  srli         s4, a7, 13
                  blt          a5, a7, 386f
                  srl          a5, a0, t4
                  sll          gp, ra, t4
                  auipc        a0, 273213
                  xor          s0, s10, s11
                  auipc        zero, 1006198
                  blt          s2, s5, 394f
                  auipc        a6, 867516
386:              sltiu        zero, a4, -1153
                  or           s11, a2, a4
388:              nop
                  sub          t3, s9, a0
                  auipc        a3, 404001
                  srli         t5, s11, 12
                  sltu         a0, a3, a5
393:              ori          t4, t0, -1061
394:              xori         s6, s0, 673
                  sub          s11, s11, a1
                  xori         s8, t6, 380
                  sltiu        s9, s7, 1781
                  sub          a1, a2, s0
                  sltu         a5, s4, s3
                  or           a3, a3, s3
                  and          a3, s3, t2
                  blt          a6, a3, 407f
                  sll          a4, tp, a0
                  sltu         s8, t1, sp
                  bne          a7, sp, 424f
                  sll          a7, s10, a6
407:              xor          s8, s7, t6
                  blt          tp, t2, 412f
                  bge          s3, t3, 428f
                  bge          a1, zero, 413f
                  bge          s5, s7, 425f
412:              and          s8, t3, a6
413:              sltu         t3, t6, s3
                  srai         s9, s4, 3
                  auipc        t0, 584361
                  sll          a3, gp, s8
                  srai         s8, t5, 27
                  sltu         s4, t6, tp
                  addi         zero, a5, 418
                  sra          t2, t1, a5
                  nop
                  slt          s0, a6, s10
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  bne          s9, a7, 425f
                  srli         t0, s9, 18
                  srl          s8, t5, t4
                  and          ra, t4, t0
                  xori         s1, gp, -1805
                  beq          s10, s10, 442f
424:              xor          t3, zero, a3
425:              bne          t3, ra, 442f
                  auipc        zero, 604001
                  slli         a4, a6, 19
428:              or           t0, a0, s2
                  nop
                  bgeu         a7, t1, 438f
                  nop
                  and          s5, zero, a4
                  srai         t0, t2, 26
                  slt          t4, a7, s9
                  xori         a7, s6, 938
                  srai         s0, a2, 18
                  slt          t4, t2, tp
438:              srai         s11, a4, 22
                  slti         a2, t6, 277
                  srli         s4, s7, 12
                  or           zero, a4, s11
442:              andi         s5, s10, -1657
                  addi         t5, a0, 1456
                  srli         t5, s8, 17
                  sltiu        t4, t4, 1301
                  and          s10, t3, s3
                  sll          t3, t0, s4
                  nop
                  beq          t1, tp, 464f
                  slti         s8, s0, -1479
                  xori         s9, s4, -1949
                  addi         a7, s2, -1377
                  srli         a6, t3, 13
                  add          a6, s5, zero
                  sra          s8, a6, s0
                  beq          t2, s0, 474f
                  addi         zero, a1, 1231
                  beq          zero, s0, 459f
459:              sra          ra, t5, s0
                  xori         s4, a4, -360
                  slti         a3, t6, -1502
                  slt          a5, gp, s1
                  andi         zero, s5, 1057
464:              srli         a4, a3, 8
                  ori          s4, s8, 670
                  xor          t3, ra, a6
                  addi         t6, t3, -382
                  add          gp, ra, a2
                  srai         a1, a4, 30
                  srl          s5, t3, sp
                  lui          s4, 960044
                  slti         gp, a2, 1627
                  blt          ra, a2, 474f
474:              sltu         zero, a6, t1
                  slt          a5, tp, t4
                  lw           ra, 4(tp)
                  addi         tp, tp, 56
                  lui          s5, 250373
                  slli         s1, a0, 3
745:              addi x20, x1, 0
745:              jalr x20, x20, 0
sub_5:            auipc        a2, 96757
                  sra          a7, tp, s3
                  slti         a1, t6, 195
                  addi         tp, tp, -28
                  or           a7, t6, t6
                  addi         a5, sp, 817
                  srai         s9, t0, 12
                  or           a7, a7, s7
                  sltu         a6, s6, a6
                  sw           ra, 4(tp)
                  addi         gp, tp, -1414
sub_5_0:          jal          ra, 5f
0:                jal          gp, 13f
1:                jal          t6, 6f
2:                jal          ra, 11f
3:                jal          s1, 9f
4:                jal          ra, 7f
5:                jal          t2, 10f
6:                jal          ra, 0b
7:                jal          ra, 1b
8:                jal          ra, 4b
9:                jal          ra, 2b
10:               jal          t1, 12f
11:               jal          t1, 8b
12:               jal          s9, 3b
13:               nop
                  bltu         a4, zero, 11f
                  bltu         s5, gp, 15f
                  slti         zero, t3, 1059
                  xori         s4, sp, -1367
                  and          t2, s5, a7
                  addi         t6, tp, -878
                  sltu         t1, tp, s10
                  sub          t0, s5, zero
                  lui          s3, 511297
                  slti         t4, ra, 670
                  nop
11:               srai         s7, zero, 11
                  sltu         t5, a0, t4
                  blt          gp, t6, 31f
                  sra          a4, a7, a1
15:               addi         t5, s3, -1069
                  or           t0, s7, sp
                  xor          t3, t1, ra
                  bge          s7, t0, 37f
                  addi         s11, ra, 145
                  sltu         s11, a5, a6
                  or           t0, a4, a4
                  or           s1, s9, t3
                  sub          a3, s1, s6
                  add          s9, sp, t5
                  sub          s10, t5, t1
                  srai         s11, s6, 24
                  bge          s5, s7, 40f
                  auipc        a4, 113046
                  slt          zero, zero, tp
                  xori         t4, a2, 405
31:               sll          ra, t3, s11
                  sra          gp, t5, s1
                  and          s5, s7, tp
                  ori          s9, sp, -1902
                  sll          t1, s1, s1
                  slti         gp, a2, -1102
37:               bne          a4, s2, 40f
                  bgeu         s7, s9, 54f
                  slli         s5, a0, 4
40:               bge          t6, zero, 54f
                  bgeu         t5, a1, 44f
                  slti         gp, s8, 646
                  sra          ra, s0, a6
44:               bgeu         s9, s5, 60f
                  beq          s6, sp, 57f
                  bge          t5, t4, 58f
                  sra          s10, s2, a2
                  srli         s8, a6, 29
                  srl          s1, t2, a2
                  addi         s3, s3, 520
                  bltu         a3, ra, 56f
                  lui          t3, 202492
                  sltiu        t6, s10, -401
54:               add          s3, t5, s11
                  nop
56:               bge          tp, a1, 73f
57:               lui          s6, 664810
58:               sub          t5, t2, s5
                  xori         s8, t4, -1167
60:               slti         s7, a4, 97
                  or           a4, s9, a3
                  addi         s8, s7, 174
                  bltu         a5, t3, 75f
                  sll          zero, s3, a2
                  sltu         t4, t1, t4
                  sltu         ra, s3, s7
                  bltu         t4, s10, 72f
                  andi         s0, zero, 1468
                  bgeu         s6, sp, 78f
                  xori         t3, t6, -1275
                  or           a3, s4, tp
72:               xori         t3, s10, 198
73:               slli         a7, tp, 27
                  addi         s7, s4, 1752
75:               sltu         s3, t5, a5
                  nop
                  srli         a4, s7, 5
78:               sra          zero, s11, s6
                  lw           ra, 4(tp)
                  sltu         t5, s7, s2
                  slti         s8, gp, -1062
                  slli         a3, s11, 3
                  addi         tp, tp, 28
                  sll          t4, tp, t1
111:              addi x14, x1, 1
111:              jalr x14, x14, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x2, x4, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x12, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x12, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x12, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x12, x31, ecall_handler
                  li x31, 0x1
                  beq x12, x31, instr_fault_handler
                  li x31, 0x5
                  beq x12, x31, load_fault_handler
                  li x31, 0x7
                  beq x12, x31, store_fault_handler
                  li x31, 0xc
                  beq x12, x31, pt_fault_handler
                  li x31, 0xd
                  beq x12, x31, pt_fault_handler
                  li x31, 0xf
                  beq x12, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

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
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x4, x2, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x2, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x2, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x4, x2, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x4, x2, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x4, x2, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
