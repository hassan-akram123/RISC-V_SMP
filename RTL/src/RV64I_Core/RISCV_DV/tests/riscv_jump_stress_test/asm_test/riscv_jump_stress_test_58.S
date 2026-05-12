.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x31, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xf143a3df
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xf8166d8f
                  li x9, 0x80000000
                  li x10, 0x2af0edc9
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xfe75a5f9
                  li x15, 0xaa70b4e6
                  li x16, 0xd
                  li x17, 0x80000000
                  li x18, 0x3
                  li x19, 0x80000000
                  li x20, 0x7e27ac78
                  li x22, 0xa3d25afc
                  li x23, 0xc0702928
                  li x24, 0xec779dab
                  li x25, 0x0
                  li x26, 0xe
                  li x27, 0xa
                  li x28, 0x8
                  li x29, 0xfb81bb78
                  li x30, 0x475a3230
                  la x21, user_stack_end
main:             jal          ra, 0f
0:                jal          s11, 2f
1:                jal          ra, 8f
2:                jal          s0, 14f
3:                jal          ra, 15f
4:                jal          t1, 7f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          ra, 1b
8:                jal          t1, 9f
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               jal          s11, 13f
12:               jal          tp, 3b
13:               jal          t1, 12b
14:               jal          t1, 6b
15:               sub          zero, t0, zero
main_4:           jal          ra, 4f
0:                jal          ra, 7f
1:                jal          ra, 10f
2:                jal          a4, 0b
3:                jal          t1, 2b
4:                jal          tp, 3b
5:                jal          ra, 1b
6:                jal          ra, 11f
7:                jal          t1, 8f
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               jal          sp, 9b
11:               jal          t1, 12f
12:               slti         zero, a2, -1031
main_1:           jal          ra, 11f
0:                jal          ra, 6f
1:                jal          ra, 4f
2:                jal          ra, 0b
3:                jal          t1, 7f
4:                jal          t5, 10f
5:                jal          ra, 12f
6:                jal          t1, 1b
7:                jal          ra, 9f
8:                jal          ra, 15f
9:                jal          a7, 5b
10:               jal          ra, 3b
11:               jal          a2, 2b
12:               jal          ra, 13f
13:               jal          ra, 14f
14:               jal          t1, 8b
15:               xori         t3, gp, -1920
main_3:           jal          ra, 1f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          t1, 11f
4:                jal          ra, 5f
5:                jal          sp, 8f
6:                jal          ra, 0b
7:                jal          a1, 4b
8:                jal          ra, 13f
9:                jal          t1, 2b
10:               jal          ra, 3b
11:               jal          ra, 6b
12:               jal          t1, 7b
13:               slt          a5, t4, t2
main_2:           jal          ra, 20f
0:                jal          ra, 28f
1:                jal          s8, 7f
2:                jal          tp, 0b
3:                jal          t1, 27f
4:                jal          ra, 18f
5:                jal          ra, 1b
6:                jal          s0, 16f
7:                jal          a2, 19f
8:                jal          t1, 12f
9:                jal          ra, 3b
10:               jal          a4, 2b
11:               jal          ra, 15f
12:               jal          ra, 25f
13:               jal          ra, 23f
14:               jal          t1, 17f
15:               jal          t1, 5b
16:               jal          tp, 8b
17:               jal          s8, 4b
18:               jal          ra, 6b
19:               jal          ra, 9b
20:               jal          tp, 24f
21:               jal          ra, 11b
22:               jal          t1, 10b
23:               jal          ra, 22b
24:               jal          t1, 14b
25:               jal          t1, 21b
26:               jal          ra, 13b
27:               jal          t1, 26b
28:               slt          t5, s2, t0
                  bgeu         t6, s0, 10f
                  ori          a1, s9, -1115
                  auipc        s6, 131873
                  ori          ra, s4, -614
                  and          s6, t1, t2
                  sltiu        ra, s3, -2005
                  addi         s0, t5, -1871
                  sltiu        t4, t4, 1464
                  sltiu        s0, ra, -317
                  sltiu        s6, tp, -352
10:               sll          t1, s2, s4
                  bne          tp, s6, 25f
                  xori         s7, a7, 1663
                  srai         t4, a3, 8
                  blt          a2, a0, 30f
                  add          a2, t1, a3
                  bgeu         s11, t1, 31f
                  slti         zero, ra, -1878
                  bgeu         s1, t3, 38f
                  srli         gp, s2, 6
                  slti         a2, s1, 92
                  blt          s10, s7, 40f
                  addi         ra, ra, 1061
                  slli         s7, a0, 31
                  slti         sp, t6, -737
25:               ori          s4, a7, 175
                  auipc        zero, 794775
                  xor          a3, t0, sp
                  sub          a6, t6, s7
                  sltu         gp, t2, a2
30:               bgeu         s10, gp, 34f
31:               sub          t1, t2, a2
                  bgeu         s6, t5, 38f
                  slt          s8, t0, s2
34:               sltu         a1, zero, ra
                  addi         t4, a6, 304
                  auipc        zero, 562248
                  and          a3, a7, s1
38:               sll          s8, gp, t4
                  slti         t5, s7, 1014
40:               bgeu         s9, zero, 45f
                  addi         t4, a4, 2001
                  sub          s7, s11, t4
                  blt          s9, s11, 45f
                  sltiu        t0, s11, 36
45:               lui          zero, 1008892
                  bgeu         t4, a3, 47f
47:               add          s0, a1, t6
                  or           gp, a3, a6
                  bge          gp, t5, 58f
                  bgeu         s3, s1, 61f
                  bgeu         s1, s5, 58f
                  blt          s10, a0, 60f
                  bne          s8, s10, 70f
                  sub          tp, s7, t6
                  ori          s1, s11, 618
                  andi         tp, a4, -882
                  slti         s3, t0, 881
58:               bltu         a4, t1, 70f
                  ori          t3, t1, -369
60:               srli         a7, t1, 13
61:               slli         s3, t4, 31
                  bgeu         gp, s6, 81f
                  bge          s0, s10, 79f
                  blt          t4, t5, 67f
                  and          s1, s1, a3
                  addi         t0, sp, -1688
67:               or           t1, s7, s9
                  lui          a7, 90880
                  blt          a3, t0, 77f
70:               beq          a2, a2, 73f
                  blt          a2, tp, 91f
                  sll          a2, s1, s6
73:               srl          tp, s0, t4
                  beq          s8, t2, 83f
                  slli         a3, a0, 27
                  srai         a0, s11, 3
77:               bne          s10, s11, 82f
                  bne          s9, zero, 82f
                  la           a1, sub_1
                  srl          t5, a5, t4
                  addi         a6, gp, -796
                  xori         t5, a2, 1760
                  auipc        a6, 403072
                  ori          s3, a7, 1249
                  srli         t0, a3, 28
                  addi         a1, a1, -107
                  beq          gp, s8, main_j2 #branch to jump instr
                  ori          t1, t6, -1600
                  sltu         s3, ra, a1
                  sub          s10, s7, s2
main_j2:          jalr         ra, a1, 108 #jump main -> sub_1
79:               or           sp, t1, t2
                  slti         a3, s3, -1981
81:               srli         a0, sp, 7
82:               bgeu         s1, s11, 97f
83:               xori         s8, a2, -1434
                  slt          s4, s2, s1
                  xor          t1, s8, gp
                  sll          a0, a6, s5
                  andi         sp, s10, -708
                  srl          s6, s0, t1
                  auipc        zero, 981761
                  addi         a0, t0, 974
91:               srli         ra, s8, 14
                  srai         s6, s9, 10
                  srli         t1, a0, 26
                  xor          s4, a6, s2
                  bne          t1, s3, 111f
                  xori         t3, zero, 1267
97:               andi         a2, t6, 1738
                  slli         t3, s6, 23
                  slti         a4, a2, -186
                  slt          s10, t5, ra
                  lui          s8, 681573
                  sll          s2, t0, s8
                  nop
                  slti         zero, s1, 1286
                  beq          t6, s11, 125f
                  sltu         s8, s5, t4
                  slli         t3, s0, 7
                  beq          s8, s3, 122f
                  srli         s1, a3, 26
                  srl          s1, s5, s3
111:              bgeu         s4, a0, 123f
                  add          a2, s3, a6
                  andi         s8, t6, -1751
                  or           t4, s4, s4
                  slti         t0, a1, 1250
                  srl          tp, zero, s2
                  srai         a0, s4, 26
                  srai         t4, zero, 13
                  bge          t0, t1, 133f
                  srl          s8, t6, s10
                  bltu         sp, t3, 126f
122:              add          t4, a6, s5
123:              nop
                  xor          t3, t4, s11
125:              bltu         s3, s9, 129f
126:              sra          zero, t2, s9
                  srai         s3, s1, 27
                  srl          s10, t1, t4
129:              srai         t4, s0, 17
                  auipc        t5, 866017
                  bne          s11, a4, 147f
                  bge          s10, ra, 142f
133:              sll          t2, s0, s10
                  ori          s1, tp, 213
                  sub          s2, t6, s10
                  add          t2, t0, s2
                  srli         s10, gp, 17
                  bgeu         s7, s2, 157f
                  srai         zero, a7, 31
                  srai         t4, a1, 3
                  sll          t4, s8, t2
142:              xori         t5, s3, 1751
                  andi         t2, s9, 128
                  xor          t2, s0, a5
                  xori         a3, t1, 101
                  xor          s0, s9, a2
147:              or           zero, a1, a1
                  sltiu        t4, t1, -1082
                  add          s7, a5, s3
                  beq          a2, s6, 161f
                  bne          s1, s0, 167f
                  add          s7, s3, a7
                  bltu         s5, a0, 168f
                  beq          s9, sp, 168f
                  lui          ra, 198495
                  beq          a3, a1, 158f
157:              sltu         gp, s2, t0
158:              bge          s2, s5, 178f
                  sltiu        a4, s0, -1256
                  beq          t4, gp, 167f
161:              bne          t0, tp, 176f
                  bltu         t1, ra, 170f
                  bgeu         s3, zero, 171f
                  auipc        t4, 174039
                  la           t4, sub_2
                  xor          a7, ra, s4
                  slli         a6, s10, 8
                  nop
                  nop
                  slt          a1, a7, a0
                  srai         t0, ra, 15
                  addi         t4, t4, 537
                  sub          s3, ra, a6
                  sltu         a4, t1, sp
                  sub          t1, s11, ra
main_j1:          jalr         ra, t4, -536 #jump main -> sub_2
                  srl          t1, a3, t4
                  srl          s1, a1, s7
167:              slli         a5, a2, 24
168:              bge          t3, s3, 185f
                  ori          ra, a6, 1451
170:              bne          a2, t2, 189f
171:              bge          a1, s10, 177f
                  slti         sp, s5, 1031
                  xori         s10, t2, -405
                  sll          s3, s4, a2
                  srli         a1, t5, 10
176:              sltu         sp, s3, a4
177:              andi         ra, tp, 225
178:              bne          s0, t1, 187f
                  xori         s4, s9, 1276
                  bne          ra, t4, 183f
                  slli         s7, t6, 29
                  sltiu        a0, s9, -1836
183:              auipc        gp, 417060
                  srai         a5, t1, 1
185:              lui          t3, 456104
                  bltu         a7, t2, 206f
187:              xori         s3, t2, -204
                  bne          zero, sp, 192f
189:              auipc        a6, 200874
                  slti         ra, t6, -1302
                  or           s2, t1, s6
192:              sll          a0, t4, t4
                  slt          a6, t3, t0
                  nop
                  andi         gp, a0, -346
                  blt          zero, s11, 197f
197:              sltiu        t4, s5, 78
                  addi         tp, s3, 571
                  xor          s1, s9, s11
                  slti         ra, a7, 1572
                  sra          t2, t3, s7
                  auipc        gp, 815728
                  slti         s7, gp, -968
                  srai         s8, s8, 29
                  sltu         s11, t5, t4
206:              slti         t3, a7, -602
                  sub          t2, a3, t4
                  srli         s4, t5, 29
                  auipc        ra, 263388
                  slt          t5, s4, s4
                  xori         a7, t2, 1147
                  ori          sp, t2, -1716
                  slti         a1, ra, 1863
                  and          s3, a2, a4
                  ori          sp, t2, 1792
                  slli         gp, a0, 11
                  bltu         s10, s3, 237f
                  sltiu        ra, t0, -1331
                  slti         s4, gp, -1313
                  srli         s8, s7, 22
                  or           a0, gp, t1
                  auipc        s2, 528871
                  bne          t1, a0, 228f
                  bne          t2, s6, 233f
                  ori          s0, s7, 61
                  xor          s10, s9, a0
                  addi         t5, s5, 19
228:              srli         a1, s10, 18
                  bgeu         t4, t0, 245f
                  slli         a4, s7, 30
                  srai         s8, s10, 6
                  blt          t2, ra, 235f
233:              bne          tp, t0, 253f
                  bgeu         t4, s0, 248f
235:              bltu         t2, s9, 237f
                  srai         s3, a7, 23
237:              slti         s10, a6, 1389
                  sra          t5, s4, gp
                  nop
                  slli         s11, t2, 28
                  srl          s8, a3, s9
                  sra          s11, t3, s3
                  xori         sp, s2, 310
                  xor          t5, t6, s1
245:              sra          s10, zero, s2
                  addi         s3, a4, 1316
                  andi         s2, s5, -1114
248:              addi         a2, t1, -530
                  srli         gp, ra, 21
                  srli         s4, gp, 5
                  and          s0, s4, a5
                  bltu         a3, s1, 272f
253:              srli         a1, a4, 30
                  xor          t0, a3, t5
                  bgeu         a6, s4, 270f
                  blt          t2, t2, 275f
                  srl          sp, a1, s3
                  sra          s1, gp, a2
                  xori         s4, a6, 1757
                  andi         t2, zero, -345
                  sll          s8, ra, tp
                  lui          gp, 996045
                  sll          s11, a2, t5
                  add          sp, s5, t2
                  slt          s4, s7, s10
                  sub          s1, t2, tp
                  or           sp, a7, gp
                  lui          a7, 934341
                  xor          a6, s4, a6
270:              or           s1, s10, a3
                  addi         s0, a7, 1379
272:              srai         sp, s8, 26
                  add          s7, s0, s8
                  lui          a5, 969291
275:              bgeu         s9, s11, 279f
                  blt          t1, zero, 279f
                  srl          t4, s1, t0
                  sltu         t3, a2, t6
279:              addi         s4, t2, -1233
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         s5, s5, -16
                  sub          s2, t2, a3
                  and          s8, s8, s7
                  nop
                  sw           ra, 4(s5)
                  add          a2, t0, s2
                  add          a6, s1, t3
                  sltu         a5, zero, t5
                  andi         s4, s10, 520
sub_3_8:          jal          ra, 13f
0:                jal          ra, 5f
1:                jal          t1, 6f
2:                jal          ra, 14f
3:                jal          ra, 18f
4:                jal          t1, 8f
5:                jal          t1, 3b
6:                jal          t1, 4b
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          ra, 11f
10:               jal          ra, 0b
11:               jal          t1, 7b
12:               jal          t3, 17f
13:               jal          a0, 15f
14:               jal          ra, 10b
15:               jal          a3, 16f
16:               jal          s0, 12b
17:               jal          ra, 9b
18:               sra          s8, s1, t0
sub_3_1:          jal          ra, 7f
0:                jal          tp, 1f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          t3, 5f
4:                jal          s1, 8f
5:                jal          a3, 10f
6:                jal          ra, 4b
7:                jal          ra, 9f
8:                jal          s3, 3b
9:                jal          ra, 0b
10:               sub          a4, s11, a5
sub_3_5:          jal          ra, 7f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 1b
3:                jal          ra, 10f
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          t1, 5b
7:                jal          sp, 9f
8:                jal          t1, 11f
9:                jal          ra, 2b
10:               jal          t1, 0b
11:               srli         a3, s4, 2
sub_3_0:          jal          ra, 12f
0:                jal          a1, 11f
1:                jal          ra, 10f
2:                jal          ra, 16f
3:                jal          t2, 20f
4:                jal          t1, 9f
5:                jal          t1, 15f
6:                jal          t1, 5b
7:                jal          ra, 0b
8:                jal          t3, 17f
9:                jal          ra, 7b
10:               jal          ra, 6b
11:               jal          sp, 8b
12:               jal          ra, 18f
13:               jal          ra, 2b
14:               jal          ra, 4b
15:               jal          ra, 21f
16:               jal          ra, 1b
17:               jal          ra, 3b
18:               jal          ra, 14b
19:               jal          ra, 13b
20:               jal          ra, 19b
21:               andi         sp, t3, 2003
sub_3_7:          jal          ra, 12f
0:                jal          t2, 15f
1:                jal          ra, 0b
2:                jal          sp, 8f
3:                jal          ra, 7f
4:                jal          ra, 5f
5:                jal          a7, 3b
6:                jal          ra, 11f
7:                jal          t1, 9f
8:                jal          ra, 13f
9:                jal          ra, 6b
10:               jal          a3, 14f
11:               jal          t2, 2b
12:               jal          ra, 10b
13:               jal          t3, 1b
14:               jal          ra, 4b
15:               and          gp, a3, ra
sub_3_3:          jal          ra, 15f
0:                jal          gp, 18f
1:                jal          t0, 11f
2:                jal          ra, 20f
3:                jal          t1, 4f
4:                jal          ra, 6f
5:                jal          a6, 3b
6:                jal          t1, 24f
7:                jal          a6, 26f
8:                jal          ra, 10f
9:                jal          t1, 17f
10:               jal          t0, 2b
11:               jal          ra, 21f
12:               jal          ra, 14f
13:               jal          ra, 16f
14:               jal          ra, 9b
15:               jal          a1, 22f
16:               jal          ra, 12b
17:               jal          ra, 7b
18:               jal          t1, 23f
19:               jal          a4, 8b
20:               jal          t1, 13b
21:               jal          t1, 19b
22:               jal          ra, 5b
23:               jal          ra, 1b
24:               jal          ra, 25f
25:               jal          a2, 0b
26:               lui          s6, 730184
sub_3_2:          jal          ra, 11f
0:                jal          t1, 23f
1:                jal          ra, 13f
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          s2, 10f
5:                jal          gp, 8f
6:                jal          a5, 0b
7:                jal          ra, 18f
8:                jal          ra, 24f
9:                jal          ra, 15f
10:               jal          ra, 25f
11:               jal          t0, 21f
12:               jal          ra, 1b
13:               jal          ra, 17f
14:               jal          s10, 19f
15:               jal          ra, 5b
16:               jal          ra, 6b
17:               jal          a3, 14b
18:               jal          ra, 2b
19:               jal          s0, 4b
20:               jal          t0, 3b
21:               jal          ra, 20b
22:               jal          s3, 7b
23:               jal          ra, 22b
24:               jal          ra, 16b
25:               slti         s4, a2, -1370
                  slti         t2, gp, 1287
                  sltiu        a6, a7, 924
                  lui          s8, 337272
                  sltiu        s7, t1, 1378
                  bltu         s6, s0, 20f
                  or           a6, s2, a0
                  srai         s2, a4, 9
                  srli         sp, t4, 3
                  xori         a5, t1, -1791
                  auipc        s3, 67386
                  bne          s4, t4, 19f
                  nop
                  slt          a6, s6, s0
                  srai         a1, t5, 5
sub_3_9:          jal          ra, 10f
0:                jal          ra, 1f
1:                jal          a6, 9f
2:                jal          t1, 0b
3:                jal          ra, 8f
4:                jal          sp, 6f
5:                jal          t1, 4b
6:                jal          ra, 7f
7:                jal          tp, 3b
8:                jal          ra, 11f
9:                jal          ra, 5b
10:               jal          t2, 2b
11:               auipc        s2, 654301
                  bne          sp, t3, 18f
                  sltiu        s4, a2, 1253
                  andi         a3, s1, -1127
                  xori         a2, s6, -801
18:               sra          s10, s4, s6
19:               xor          a4, t3, s6
20:               or           a5, t6, tp
                  srl          s6, a0, s0
                  auipc        zero, 825919
                  sra          t5, zero, ra
                  blt          t5, s8, 29f
                  beq          a0, s1, 43f
                  slt          a3, s8, s3
                  and          tp, sp, ra
                  bge          s11, a6, 33f
29:               bltu         tp, t3, 48f
                  bltu         t3, s9, 41f
                  or           t3, s5, a0
                  srai         t4, a5, 7
33:               slli         a4, s9, 30
                  add          zero, a1, a6
                  auipc        t2, 1040835
                  slti         t4, s0, -2002
                  auipc        s10, 78255
                  slt          t4, t1, t6
                  srl          s6, ra, t0
                  blt          t3, s1, 49f
41:               slti         s8, s1, 1311
                  srai         a7, a3, 8
43:               slli         sp, a3, 21
                  slli         t1, t6, 13
                  beq          a5, t3, 52f
                  bgeu         t0, s2, 62f
                  blt          a5, a3, 64f
48:               sltu         ra, s4, s6
49:               slt          a2, a2, a3
                  sub          a7, t1, s4
                  slti         s7, s6, 556
52:               sltu         t2, s3, gp
                  bltu         s0, s4, 58f
                  bge          s7, s10, 57f
                  add          s3, s3, s5
                  ori          s1, s10, 1769
57:               srl          a0, s2, t5
58:               ori          t0, t6, 358
                  slti         a1, s8, -921
                  bgeu         a6, t5, 65f
                  auipc        s7, 734005
62:               bgeu         s8, t4, 81f
                  lui          t5, 844510
64:               sra          s10, sp, s11
65:               srli         a1, a4, 25
                  or           a5, a5, s1
                  slt          a7, s0, t5
                  add          a7, s7, t0
                  sub          s4, s4, a3
                  add          a1, a0, t4
                  slti         s10, s4, 1166
                  add          s11, gp, a6
                  bgeu         gp, a4, 92f
                  srai         t3, a5, 29
                  srl          s0, s2, a7
                  srli         gp, a7, 18
                  beq          s10, t6, 97f
                  blt          s6, a0, 97f
                  addi         a7, ra, -1007
                  slti         s0, a6, -477
81:               and          a7, s5, s11
                  beq          s3, a7, 85f
                  xor          t1, s3, a4
                  srli         a3, t6, 19
85:               sll          a1, zero, s1
                  nop
                  srai         a5, s9, 30
                  and          t4, s2, s3
                  addi         a1, tp, -1866
                  blt          a2, a3, 93f
                  slli         s6, s10, 30
92:               sra          ra, a2, t4
93:               and          tp, t1, sp
                  bge          s3, s7, 110f
                  beq          t2, s5, 102f
                  bltu         a5, s9, 108f
97:               sub          s1, s9, t4
                  bgeu         s7, s11, 100f
                  blt          s10, t3, 104f
100:              and          ra, a6, t3
                  xori         s2, sp, 13
102:              srai         t2, t6, 0
                  bge          s4, t2, 104f
104:              bgeu         zero, s8, 121f
                  addi         s6, s6, -558
                  bne          s9, a5, 115f
                  srl          s0, t1, a7
108:              sltu         s2, s5, s8
                  add          s1, a0, a5
110:              srl          s1, s5, zero
                  slt          s3, tp, s4
                  srai         zero, a5, 13
                  xor          s0, s7, s8
                  addi         a5, a0, -1582
115:              nop
                  ori          a5, a4, -328
                  lui          a0, 146036
                  bge          ra, a7, 129f
                  beq          a6, s10, 128f
                  sra          s11, sp, zero
121:              sub          t0, s4, a7
                  slt          ra, a2, t0
                  slli         s7, t1, 28
                  sll          a5, zero, t2
                  ori          s11, s6, 847
                  ori          ra, s10, -703
                  bne          s3, t3, 143f
128:              slti         s2, s0, 1495
129:              add          a6, s11, a2
                  srl          s1, a0, a5
                  bne          sp, s1, 134f
                  srli         s3, t4, 22
                  srl          a6, a2, s5
134:              blt          s5, zero, 139f
                  bge          a7, gp, 154f
                  sltu         a6, s3, t0
                  xor          t2, gp, s8
                  srl          ra, a2, t6
139:              bgeu         t0, a7, 144f
                  slli         s11, s10, 18
                  and          s4, s11, s6
                  bltu         zero, zero, 161f
143:              slli         t4, s3, 27
144:              slt          t0, t0, a3
                  andi         s6, s5, 1335
                  bge          a2, a4, 163f
                  srai         t2, tp, 16
                  srli         a2, a5, 23
                  auipc        s10, 259925
                  add          s4, ra, t3
                  slli         a4, sp, 27
                  sltu         s6, t3, a4
                  slt          a6, s4, s5
154:              nop
                  addi         t4, a5, 1567
                  bge          a1, s2, 159f
                  lui          gp, 818001
                  add          s4, t1, s4
159:              bltu         t4, t0, 168f
                  srl          zero, a5, a4
161:              srli         s0, a7, 10
                  lui          s2, 1042008
163:              bgeu         s2, s8, 172f
                  slt          s4, a3, gp
                  addi         a0, s3, 750
                  andi         a6, t1, 1867
                  sltiu        s4, t2, -1765
168:              bge          s4, a0, 169f
169:              or           s3, s5, t5
                  andi         t5, t6, 1095
                  bltu         t6, s6, 178f
172:              slli         a7, t4, 29
                  blt          a7, s8, 192f
                  srl          t4, t2, s10
                  bltu         a7, a1, 180f
                  sub          a4, s3, ra
                  srai         t1, a1, 24
178:              srl          gp, t6, a0
                  slli         a1, s9, 5
180:              bge          t6, s11, 196f
                  slli         t0, s11, 6
                  beq          s4, zero, 198f
                  slli         s4, tp, 26
                  or           a6, a0, s1
                  xori         a3, a6, -1388
                  slt          s7, a6, t1
                  or           t0, s9, s5
                  bge          s3, s3, 191f
                  slt          ra, t3, t5
                  sub          tp, s3, a6
191:              addi         s0, a5, 953
192:              lui          t0, 141670
                  and          s4, gp, s11
                  auipc        t5, 754104
                  sltiu        t1, t6, 858
196:              bne          t6, s9, 198f
                  sra          t3, tp, s3
198:              andi         a6, tp, 1824
                  blt          a1, a3, 216f
                  or           sp, t3, s3
                  bltu         s1, t3, 221f
                  xori         a6, a3, -2002
                  ori          tp, tp, 1780
                  ori          s2, s11, -825
                  auipc        s1, 761844
                  srai         ra, sp, 5
                  sra          t3, gp, s5
                  sll          t4, ra, s11
                  ori          ra, a2, -960
                  and          t4, t3, s9
                  xor          a4, s10, s8
                  slti         a6, a4, -11
                  lui          t0, 475921
                  sub          gp, a6, ra
                  bge          a7, t5, 220f
216:              bge          a2, s4, 234f
                  srli         t1, s6, 22
                  slt          s7, t0, a4
                  ori          a4, t4, 1337
220:              bne          t0, t2, 239f
221:              ori          zero, t3, -26
                  xor          s10, s9, a5
                  srl          s4, t5, s6
                  blt          s2, s7, 229f
                  bge          a3, sp, 236f
                  sra          s0, a1, t1
                  slti         s7, t6, -1180
                  bge          s8, a6, 240f
229:              sub          s8, s0, t1
                  beq          a1, t3, 234f
                  lui          t1, 299399
                  bge          s5, zero, 239f
                  auipc        s1, 504292
234:              bgeu         a1, a4, 245f
                  blt          a1, a0, 242f
236:              sub          a2, a1, a6
                  beq          t3, t3, 257f
                  blt          t3, s8, 249f
239:              slti         t5, t3, -1226
240:              or           s7, s10, s7
                  andi         s7, s6, -968
242:              beq          sp, a4, 247f
                  nop
                  and          a0, s5, tp
245:              sltiu        a0, gp, -458
                  auipc        s3, 846598
247:              bne          t6, a6, 264f
                  slti         zero, t4, 1116
249:              add          s11, s0, a0
                  sltiu        s7, t2, -516
                  srl          s1, s7, s9
                  ori          s4, s3, 1176
                  auipc        tp, 349302
                  sltu         s3, s0, s3
                  addi         s0, s4, 971
                  srai         zero, t2, 13
257:              sll          a3, ra, tp
                  bge          gp, s5, 263f
                  lui          t4, 991247
                  xori         a2, s4, 132
                  add          s6, t2, a6
                  srl          t0, t3, a6
263:              or           s11, s6, t3
264:              add          a4, t3, s7
                  beq          t2, a3, 277f
                  slt          gp, a1, a0
                  bgeu         s3, t4, 276f
                  ori          t1, t0, 753
                  sltu         t2, s1, s2
                  srl          a0, a5, s1
                  auipc        s0, 928836
                  bge          a3, s3, 276f
                  bne          t3, a3, 282f
                  beq          a0, s10, 293f
                  sltiu        gp, s8, 1445
276:              srai         t4, t5, 11
277:              sub          t1, a7, s11
                  sub          s11, s8, t0
                  nop
                  srli         tp, ra, 8
                  sll          t3, s4, s8
282:              addi         a6, s3, 1109
                  sra          s0, a3, a4
                  sltiu        tp, t6, 1520
                  srli         s0, t1, 7
                  ori          t2, s8, -110
                  or           a0, a1, s7
                  sra          t3, s9, a6
                  add          s3, tp, s10
                  xori         s4, t4, 1142
                  srai         t4, a1, 31
                  srli         s10, t2, 1
293:              bgeu         gp, ra, 312f
                  sub          s10, a0, a5
                  bltu         t0, zero, 298f
                  xori         zero, sp, -260
                  andi         a5, t2, 1731
298:              xor          t5, s1, t3
                  bgeu         s8, sp, 310f
                  auipc        ra, 540870
                  bgeu         s5, s3, 320f
                  sub          s3, sp, a3
                  sltiu        s1, s1, 993
                  xori         s7, t3, -306
                  blt          a4, s3, 310f
                  lui          t5, 856262
                  beq          a6, a7, 323f
                  ori          t2, a0, 891
                  add          ra, s9, t1
310:              or           s4, s0, s0
                  lui          s2, 497963
312:              bne          s11, sp, 317f
                  addi         s2, s6, -1225
                  blt          a7, t2, 330f
                  addi         tp, tp, -834
                  sll          a0, tp, s2
317:              lui          s7, 691309
                  srl          a5, a6, a1
                  slli         gp, a4, 12
320:              bgeu         a2, s6, 336f
                  bne          s5, a7, 338f
                  bne          a4, a7, 325f
323:              xori         t2, a2, -648
                  auipc        s3, 383766
325:              srl          s7, s8, s5
                  lui          t2, 683158
                  bne          a6, a0, 330f
                  bge          s11, a5, 347f
                  srli         t4, s9, 8
330:              nop
                  sub          a2, gp, a6
                  andi         t2, s2, 576
                  slli         t4, a3, 17
                  slti         a4, tp, 1737
                  bne          s1, t4, 342f
336:              nop
                  slli         s7, s2, 20
338:              xor          a1, a4, a2
                  sll          t1, a5, s10
                  slti         t3, t3, -1215
                  sub          t1, s11, tp
342:              bne          t3, s6, 347f
                  beq          zero, s11, 361f
                  sltiu        t0, a7, -368
                  srl          s1, a7, a0
                  srl          ra, t0, sp
347:              ori          s7, t3, 1900
                  beq          s4, s6, 350f
                  sll          a1, t1, s1
350:              andi         a1, t5, 403
                  slti         tp, a5, 988
                  srai         t3, ra, 21
                  slli         s4, a4, 1
                  slli         t3, s2, 2
                  andi         gp, sp, -1017
                  sra          s8, a0, gp
                  bgeu         s2, s11, 366f
                  bltu         s8, ra, 359f
359:              slli         t2, s9, 0
                  bne          ra, s8, 379f
361:              slti         a6, t2, 377
                  srai         t4, a0, 19
                  srl          a1, sp, a3
                  sll          s10, t1, s9
                  xor          s8, a5, gp
366:              slti         s6, t0, -1202
                  addi         a5, s7, -1482
                  bge          s0, a4, 373f
                  ori          s1, s8, 1177
                  sub          a5, a4, s1
                  nop
                  srl          a4, a0, ra
373:              nop
                  slli         t0, sp, 6
                  bltu         t1, s11, 380f
                  blt          zero, t1, 387f
                  beq          t1, a1, 382f
                  nop
379:              xori         t0, a5, 138
380:              or           s3, s1, gp
                  slti         s11, s11, 919
382:              blt          a2, t4, 400f
                  sra          tp, t2, a0
                  sltu         s6, s4, a3
                  ori          a1, a4, -629
                  add          a4, gp, tp
387:              and          s7, ra, s3
                  slti         zero, a0, -1914
                  slt          s8, s0, s0
                  slti         s3, a5, -403
                  add          t2, t1, s10
                  sra          s3, a7, s2
                  slti         t4, a5, -1406
                  andi         zero, s0, -1768
                  andi         a6, s8, -298
                  xori         t0, s3, 1165
                  slti         sp, s3, 731
                  blt          s0, t4, 402f
                  bge          a2, s7, 406f
400:              sltiu        s4, s5, 150
                  ori          s2, s1, 1974
402:              sll          s10, s9, t4
                  bgeu         s7, sp, 404f
404:              bne          t4, tp, 409f
                  lui          s10, 980841
406:              srai         t2, a0, 13
                  srai         s11, t0, 0
                  bne          a5, a4, 415f
409:              srli         t2, s6, 5
                  xor          s7, s4, t2
                  addi         a5, a1, 1200
                  sltu         a2, s11, gp
                  bne          ra, a0, 422f
                  slli         a1, zero, 0
415:              or           a0, gp, tp
                  beq          a0, tp, 433f
                  xor          sp, s9, a6
                  lui          zero, 383837
                  srli         tp, a1, 0
                  andi         s10, t1, -487
                  slli         sp, s6, 14
422:              addi         s3, tp, -235
                  bne          zero, s10, 440f
                  xori         s8, t5, -1601
                  slti         zero, zero, 947
                  auipc        a3, 685618
                  andi         sp, s10, 649
                  bltu         s3, s10, 440f
                  bgeu         s3, a6, 432f
                  blt          a5, a1, 446f
                  nop
432:              andi         sp, s10, 744
433:              slli         t1, a3, 3
                  bgeu         a3, a2, 436f
                  and          s0, t5, tp
436:              sll          s7, s5, gp
                  sub          t5, s10, a1
                  sltu         a6, a3, s3
                  srai         a1, s0, 24
440:              sll          s4, a1, a6
sub_3_4:          jal          ra, 1f
0:                jal          ra, 21f
1:                jal          ra, 5f
2:                jal          t1, 10f
3:                jal          ra, 16f
4:                jal          t3, 17f
5:                jal          a3, 22f
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          a2, 7b
9:                jal          ra, 19f
10:               jal          ra, 18f
11:               jal          t1, 13f
12:               jal          s8, 2b
13:               jal          ra, 8b
14:               jal          ra, 23f
15:               jal          ra, 4b
16:               jal          t1, 14b
17:               jal          s11, 11b
18:               jal          t1, 6b
19:               jal          s11, 20f
20:               jal          t1, 15b
21:               jal          sp, 3b
22:               jal          sp, 12b
23:               srai         a5, s0, 19
                  andi         s6, s4, 369
                  bge          s0, t5, 462f
                  bgeu         tp, s3, 454f
                  sltu         s6, t0, gp
                  bne          t5, s11, 464f
446:              blt          t1, t4, 455f
                  bgeu         a0, s10, 463f
                  srai         gp, s11, 0
                  auipc        t2, 251904
                  auipc        zero, 136696
                  xor          a0, a7, t5
                  slli         s6, a1, 21
                  xor          gp, s10, s9
454:              sltu         t4, t5, t4
455:              bne          s9, t2, 460f
                  xor          a7, t4, s11
                  andi         t0, t4, 1001
                  srli         t5, s3, 0
                  sll          t1, t6, s4
460:              srl          s0, ra, t3
                  xori         tp, sp, -1697
462:              sub          a2, s11, s4
463:              xori         tp, t2, 356
464:              slt          t0, t0, a4
                  bgeu         ra, s2, 468f
                  sra          a5, s7, s1
                  auipc        t0, 1006614
sub_3_6:          jal          ra, 3f
0:                jal          ra, 9f
1:                jal          ra, 12f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          sp, 2b
5:                jal          ra, 1b
6:                jal          gp, 11f
7:                jal          ra, 10f
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               jal          t1, 4b
11:               jal          sp, 8b
12:               sra          a3, a3, a0
468:              bge          zero, zero, 487f
                  slt          a6, a0, a0
                  sll          a6, s4, t6
                  ori          a7, t6, -1080
                  and          s2, a3, zero
                  lui          a6, 316632
                  srl          a4, s8, t2
                  bgeu         a6, t5, 491f
                  bltu         s7, s2, 495f
                  andi         t2, s8, 1472
                  srl          zero, a2, t6
                  slt          t3, a7, a3
                  srli         s0, t4, 6
                  andi         a0, s7, -884
                  or           t4, s1, s6
                  auipc        s6, 520018
                  blt          t4, a4, 487f
                  or           s10, a6, t3
                  and          a7, s5, t0
487:              xori         a0, a6, 858
                  sltiu        a1, tp, -743
                  sltiu        t0, s1, -301
                  bge          s0, s4, 499f
491:              xori         a7, a4, 815
                  addi         s1, zero, 626
                  auipc        zero, 88644
                  blt          s7, s5, 497f
495:              xor          s11, s8, s3
                  auipc        s4, 560157
497:              xori         s8, s6, -1781
                  blt          a0, t1, 515f
499:              lui          a4, 663203
                  sltiu        s3, s6, -870
                  or           s0, s9, a5
                  ori          a5, s8, -1526
                  bne          a2, ra, 515f
                  sub          zero, s4, s8
                  blt          t2, t6, 515f
                  bge          a2, a3, 515f
                  sll          s4, t1, t5
                  bge          t1, sp, 509f
509:              bne          a0, t0, 515f
                  lui          t4, 13005
                  slti         s8, s10, -114
                  andi         a0, a7, -1877
                  ori          a2, a4, -645
                  beq          a6, a4, 515f
515:              ori          a5, s8, -889
                  xor          s6, a6, a3
                  lw           ra, 4(s5)
                  slli         s6, ra, 0
                  sll          sp, t5, t6
                  sra          zero, a0, a5
                  addi         s5, s5, 16
                  xori         gp, t4, -874
                  sra          sp, t3, a7
725:              addi x28, x1, 1
725:              jalr x28, x28, 0
sub_1:            srai         tp, s9, 12
                  xori         a0, t0, 648
                  srl          s4, a4, a3
                  addi         s5, s5, -36
                  srl          s7, a2, t6
                  sub          s3, tp, t4
                  slli         s2, t6, 22
                  sub          a6, a2, sp
                  sw           ra, 4(s5)
                  lui          t5, 342124
                  slli         t5, t5, 12
                  xor          a5, a3, sp
                  and          a2, t2, s2
                  la           a0, sub_3
                  slti         t0, a7, 200
                  addi         a0, a0, 540
                  sll          s0, s11, a1
                  sub          s11, tp, t5
                  bge          s3, a4, sub_1_j3 #branch to jump instr
                  ori          t1, t0, 437
sub_1_j3:         jalr         ra, a0, -540 #jump sub_1 -> sub_3
                  addi         s2, t5, -1565
                  sra          a1, s5, a0
                  slti         s7, gp, -410
                  or           t1, tp, t6
                  sub          a4, s9, s5
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
sub_1_0:          jal          ra, 10f
0:                jal          sp, 6f
1:                jal          t1, 2f
2:                jal          a5, 9f
3:                jal          ra, 8f
4:                jal          tp, 0b
5:                jal          ra, 4b
6:                jal          t1, 3b
7:                jal          a0, 11f
8:                jal          ra, 7b
9:                jal          s6, 5b
10:               jal          ra, 1b
11:               sltu         s2, s8, t3
                  sltiu        a2, t3, -488
                  ori          s11, s7, 1624
                  add          tp, gp, t1
                  xori         sp, a7, 72
                  auipc        gp, 55740
                  nop
                  xor          a5, s3, t4
                  srli         gp, zero, 24
                  or           a7, s5, s1
                  slti         t5, sp, -1380
                  ori          s10, t6, 914
                  ori          t2, a1, -539
                  or           s1, s3, t4
                  and          s2, s7, tp
                  and          s2, t3, s7
                  or           a0, a4, gp
                  add          t5, zero, a7
                  sra          s3, s4, gp
                  sub          a4, gp, t0
                  xori         s4, t5, 1621
                  slti         s7, s2, -979
                  srai         zero, t5, 8
                  sltu         a4, s7, s7
                  add          t2, t3, s2
                  or           a0, gp, s10
                  srl          sp, s0, zero
                  and          ra, t6, t5
                  slti         s3, t3, 397
                  xori         s0, t1, 32
                  bge          t0, zero, 33f
                  addi         a3, tp, -1196
                  xori         a3, sp, -608
                  auipc        s6, 207695
33:               and          t3, a0, a7
                  nop
                  srl          s10, s1, tp
                  lui          s6, 300609
                  slti         s0, t0, 1047
                  slli         t1, t2, 3
                  sll          t3, gp, s2
                  sltiu        s6, a2, 1823
                  add          a5, zero, t6
                  slt          s4, a0, sp
                  bne          t0, a2, 57f
                  xori         tp, s3, -762
                  bge          t4, tp, 60f
                  auipc        t4, 691621
                  beq          t2, sp, 48f
48:               slt          t3, a4, t6
                  bltu         zero, zero, 51f
                  add          a1, s3, s10
51:               xor          a6, s10, a0
                  blt          t3, t5, 62f
                  slti         a4, s3, 221
                  lui          s3, 436885
                  slt          tp, t3, gp
                  bgeu         a2, zero, 65f
sub_1_2:          jal          ra, 11f
0:                jal          t0, 2f
1:                jal          t1, 8f
2:                jal          t1, 7f
3:                jal          ra, 12f
4:                jal          t1, 0b
5:                jal          t1, 4b
6:                jal          a3, 13f
7:                jal          t1, 10f
8:                jal          t4, 14f
9:                jal          sp, 1b
10:               jal          ra, 15f
11:               jal          ra, 6b
12:               jal          t1, 5b
13:               jal          s2, 9b
14:               jal          t0, 3b
15:               jal          ra, 16f
16:               slt          s2, sp, a2
57:               or           a1, a0, t3
                  lui          s10, 58518
                  slli         a3, s0, 24
60:               auipc        s3, 990193
                  auipc        t4, 695011
62:               andi         s6, gp, -110
                  blt          tp, s1, 71f
                  auipc        t5, 845321
65:               xori         a2, s3, -810
                  srl          s7, sp, s5
                  sub          s1, s11, zero
                  addi         a0, a1, 1153
                  srai         s10, s3, 19
                  ori          gp, s4, 1479
71:               slt          t5, a2, a6
                  auipc        zero, 105307
                  nop
                  sll          s1, s4, a1
                  add          s10, s8, s7
                  sltu         a6, s10, s0
                  xor          s0, sp, s0
                  or           s0, s8, s11
                  auipc        tp, 394792
                  add          a4, gp, s8
                  sltiu        s0, t5, 1865
                  blt          a0, s6, sub_1_j5 #branch to jump instr
                  slt          s10, s10, s8
                  and          a0, s6, s9
                  xori         a1, s3, 1652
                  addi         t2, a6, -509
                  sub          s4, s4, a2
sub_1_j5:         jal          ra, sub_5 #jump sub_1 -> sub_5
                  slt          s7, gp, s2
                  xori         s6, t3, 1993
                  auipc        s7, 673078
                  bge          a5, a6, 91f
                  bne          s4, t6, 103f
                  xor          s3, t0, s3
                  srai         s4, s4, 6
                  srai         s2, t5, 2
                  sra          s11, a5, s2
                  or           t1, s10, t3
                  bgeu         s3, t4, 91f
91:               srai         t1, s3, 20
                  slt          s11, s10, a2
                  nop
                  srl          tp, s1, tp
                  or           a4, a3, t3
                  slti         t5, t3, 445
                  addi         a3, t3, -1594
                  beq          s8, s8, 118f
                  beq          s9, s6, 103f
                  sub          tp, t2, a6
sub_1_1:          jal          ra, 29f
0:                jal          ra, 15f
1:                jal          ra, 16f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          t1, 22f
5:                jal          ra, 9f
6:                jal          s3, 4b
7:                jal          ra, 2b
8:                jal          ra, 27f
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          t1, 20f
12:               jal          a0, 7b
13:               jal          ra, 18f
14:               jal          t1, 13b
15:               jal          ra, 8b
16:               jal          t1, 17f
17:               jal          t1, 12b
18:               jal          s1, 23f
19:               jal          t1, 28f
20:               jal          t0, 19b
21:               jal          ra, 25f
22:               jal          t1, 1b
23:               jal          ra, 26f
24:               jal          ra, 10b
25:               jal          ra, 5b
26:               jal          ra, 24b
27:               jal          ra, 21b
28:               jal          s11, 30f
29:               jal          t1, 6b
30:               srli         t3, sp, 3
                  sltiu        a2, a6, 1983
                  sltiu        s8, s2, -611
103:              lui          tp, 797215
                  slti         a4, s0, 1099
                  slli         s4, s8, 8
                  xori         t3, a3, 1674
                  auipc        sp, 922953
                  xori         s7, t3, 31
                  or           t3, t5, t0
                  xor          t1, sp, a4
                  nop
                  bltu         a2, s2, 122f
                  lui          t3, 415149
                  blt          s7, t5, 121f
                  andi         ra, zero, 798
                  bltu         t3, t1, 136f
                  ori          a3, a5, 676
118:              bge          a0, t5, 130f
                  sltu         tp, s3, t0
                  ori          a5, s1, 1403
121:              bne          zero, t1, 127f
122:              addi         s4, t1, -1241
                  bne          s9, t4, 143f
                  lui          a5, 330083
                  blt          s3, t3, 142f
                  sltiu        a1, t1, -1640
127:              xor          a4, t3, s3
                  beq          s3, t0, 135f
                  lui          s10, 612765
130:              bltu         a5, s1, 133f
                  lui          s8, 481863
                  sll          t4, t6, t2
133:              blt          s11, s5, 136f
                  slti         t4, t3, -1319
135:              srl          s4, a4, s3
136:              and          t3, t0, t2
                  andi         s6, a0, -1167
                  sll          ra, s3, a5
                  slt          a5, t2, s11
                  bge          t1, s7, 152f
                  xori         a2, s8, -140
142:              slti         tp, zero, 1708
143:              lui          s8, 853005
                  auipc        t2, 50450
                  andi         a3, a4, -1772
                  or           t5, a0, s7
                  slt          s0, sp, zero
                  sub          a3, a7, s4
                  xor          s3, tp, sp
                  nop
                  addi         s11, t4, -1683
152:              blt          s0, a4, 169f
                  srai         s8, s1, 7
                  bne          s0, s2, 172f
                  srl          sp, s6, a1
                  srli         s3, ra, 25
                  and          t1, s6, s3
                  bgeu         s4, a4, 177f
                  beq          t6, s4, 175f
                  slti         gp, s9, -926
                  xori         s8, a0, -848
                  or           s11, s7, tp
                  addi         a3, s0, -1396
                  sltu         a2, s10, a0
                  sra          s2, a6, gp
                  sub          t1, a0, s6
                  srl          s8, a0, tp
                  srl          t1, a3, t0
169:              srl          s1, a5, s2
                  bltu         s7, t2, 186f
                  blt          t2, s5, 186f
172:              lui          a1, 454253
                  sub          t3, t1, s8
                  xor          s2, a7, s4
175:              addi         tp, ra, -1189
                  xori         s3, s7, -1474
177:              srl          t5, tp, a3
                  sll          t1, tp, zero
                  sltu         s7, t1, s3
                  sra          sp, a6, gp
                  slti         t2, t0, 1125
                  xori         s2, t0, -325
                  xor          a2, a6, t5
                  srli         t1, s4, 10
                  slli         s3, s7, 31
186:              lui          s8, 632642
                  srai         s2, ra, 12
                  sub          s6, a2, a5
                  lw           ra, 4(s5)
                  sra          sp, s2, a4
                  andi         s0, s9, 293
                  sll          s8, a0, gp
                  addi         s5, s5, 36
                  addi         gp, s7, -1262
                  auipc        s10, 127196
                  slti         s7, s10, -925
296:              addi x15, x1, 1
296:              jalr x15, x15, 0
sub_2:            beq          s0, s11, sub_2_stack_p
sub_2_stack_p:    addi         s5, s5, -48
                  slti         t2, a6, -1975
                  sw           ra, 4(s5)
                  add          a6, s0, a0
                  slli         gp, a0, 17
                  srli         a7, s7, 19
sub_2_0:          jal          ra, 8f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          tp, 3f
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          ra, 2b
6:                jal          t2, 4b
7:                jal          ra, 6b
8:                jal          t1, 1b
9:                jal          ra, 0b
10:               ori          s7, t5, 978
                  sra          a0, t5, s9
sub_2_1:          jal          ra, 1f
0:                jal          t1, 11f
1:                jal          ra, 20f
2:                jal          sp, 17f
3:                jal          ra, 10f
4:                jal          ra, 8f
5:                jal          t0, 19f
6:                jal          gp, 15f
7:                jal          ra, 24f
8:                jal          ra, 12f
9:                jal          t5, 18f
10:               jal          a5, 0b
11:               jal          t1, 7b
12:               jal          ra, 23f
13:               jal          ra, 6b
14:               jal          s2, 4b
15:               jal          t1, 9b
16:               jal          ra, 21f
17:               jal          ra, 13b
18:               jal          tp, 3b
19:               jal          t1, 14b
20:               jal          a5, 16b
21:               jal          ra, 5b
22:               jal          ra, 2b
23:               jal          ra, 22b
24:               addi         a7, a4, -565
                  sltiu        a1, a2, 1742
                  xor          s2, t6, zero
                  nop
                  srl          s1, t3, ra
                  addi         s10, s11, 601
                  nop
                  sltu         a5, ra, t2
                  andi         ra, s8, 1664
                  lui          gp, 65397
                  nop
                  or           t1, a4, a5
                  slt          zero, a0, s3
                  sub          s4, s1, a1
                  srai         t5, t4, 22
                  bne          s3, gp, 28f
                  xori         t1, s5, 375
                  blt          a7, t1, 34f
                  xor          a2, a5, a0
                  slt          s0, a6, t4
                  srai         a5, gp, 3
                  bge          s5, ra, 41f
                  nop
                  andi         sp, a1, -371
                  andi         gp, s8, -1665
                  bge          s8, s10, 35f
                  bge          a6, t0, 32f
                  sltiu        t3, s3, 758
                  srl          s1, a3, zero
                  xor          t3, t1, s11
                  lui          s0, 285841
                  sltiu        s11, a1, 161
                  and          s1, s8, s10
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  sub          s1, ra, gp
28:               xori         sp, t3, 1385
                  sub          s11, a4, s7
                  slt          t1, zero, s1
                  xor          sp, t1, ra
32:               bgeu         s4, s5, 47f
                  sltu         t3, a5, a6
34:               sra          t4, s3, t4
35:               sltiu        a6, a6, -179
                  blt          s10, s10, 49f
                  slti         s2, s6, -1103
                  addi         s4, sp, 1638
                  addi         s8, s11, -1073
                  srl          a6, s11, s4
41:               bgeu         s11, s6, 47f
                  beq          tp, a5, 50f
                  srli         a3, s10, 27
                  addi         sp, s8, 1690
                  srai         a7, s3, 14
                  bge          sp, a3, 53f
47:               blt          t4, s11, 53f
                  blt          zero, s5, 63f
49:               sltu         zero, a1, s10
50:               sltu         s8, s8, ra
                  auipc        a0, 810279
                  sub          s3, s10, a5
53:               nop
                  xor          sp, a1, a1
                  bge          t0, t4, 62f
                  andi         t1, s2, 1474
                  srli         tp, a1, 27
                  xori         a3, s11, -1675
                  lui          t3, 580761
                  blt          sp, t2, 72f
                  blt          s6, s2, 76f
62:               add          gp, a5, tp
63:               srai         s11, t4, 20
                  addi         a4, a5, 1937
                  xori         s10, a3, -1165
                  sub          a5, zero, t3
                  slt          t3, s2, tp
                  srai         s3, tp, 4
                  bgeu         a4, a5, 75f
                  bne          t3, tp, 86f
                  sub          t5, s1, a6
72:               sub          s6, s6, s0
                  bltu         a4, t6, 85f
                  bne          a3, a3, 80f
75:               and          s4, s2, t5
76:               and          t5, a6, a0
                  srli         a1, t5, 19
                  blt          tp, tp, 92f
                  srli         t2, t3, 20
80:               slt          t3, t2, s10
                  andi         s6, a5, -658
                  addi         t1, s8, -54
                  or           a0, s10, a1
                  addi         s0, a5, 749
85:               slli         a7, t4, 14
86:               and          ra, a5, s8
                  xor          a4, tp, a0
                  ori          t1, sp, 1262
                  slti         a3, a7, -686
                  or           s3, a1, tp
                  andi         t3, s4, 33
92:               and          zero, a5, s11
                  lui          a1, 630084
                  sltiu        a0, s6, 1084
                  ori          a1, t6, 972
                  slt          t0, a3, t5
                  bltu         s4, a1, 109f
                  nop
                  bne          s9, a0, 110f
                  sra          zero, s3, ra
                  xori         s2, sp, 62
                  beq          a1, s3, 111f
                  lui          s4, 489811
                  sll          zero, s5, s0
                  auipc        s4, 295291
                  slti         a7, t2, 53
                  sll          s0, s4, t2
                  xor          a3, s5, t5
109:              add          a7, t0, a4
110:              srli         s8, s0, 31
111:              or           a0, t6, t3
                  sltiu        a6, s10, -569
                  blt          ra, a5, 121f
                  nop
                  add          t0, t6, t2
                  bge          s10, s6, 120f
                  srli         tp, t5, 5
                  srai         t4, t0, 3
                  srai         s0, a7, 14
120:              bne          t1, t5, 121f
121:              and          zero, t1, s9
                  sub          t3, t2, t0
                  lw           ra, 4(s5)
                  lui          s7, 209615
                  addi         s5, s5, 48
                  srl          a2, s1, s11
179:              addi x15, x1, 0
179:              jalr x15, x15, 0
sub_4:            bltu         s8, s3, sub_4_stack_p
                  add          gp, a0, s4
                  xor          gp, a0, zero
sub_4_stack_p:    addi         s5, s5, -60
                  sw           ra, 4(s5)
                  srl          t0, s4, tp
                  sltu         t2, s11, s9
                  xori         t0, t0, 70
                  lui          t3, 463881
sub_4_7:          jal          ra, 5f
0:                jal          ra, 21f
1:                jal          sp, 18f
2:                jal          ra, 14f
3:                jal          tp, 0b
4:                jal          ra, 9f
5:                jal          a7, 1b
6:                jal          t4, 19f
7:                jal          sp, 13f
8:                jal          t1, 17f
9:                jal          ra, 22f
10:               jal          t1, 11f
11:               jal          tp, 12f
12:               jal          ra, 4b
13:               jal          t1, 3b
14:               jal          t1, 15f
15:               jal          ra, 20f
16:               jal          t1, 2b
17:               jal          ra, 7b
18:               jal          s7, 16b
19:               jal          a2, 8b
20:               jal          a0, 6b
21:               jal          ra, 10b
22:               xor          a2, s10, zero
sub_4_2:          jal          ra, 1f
0:                jal          ra, 4f
1:                jal          t1, 13f
2:                jal          ra, 14f
3:                jal          ra, 0b
4:                jal          t5, 5f
5:                jal          ra, 8f
6:                jal          t1, 7f
7:                jal          s1, 2b
8:                jal          t1, 15f
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          s4, 3b
12:               jal          s8, 10b
13:               jal          a1, 9b
14:               jal          t1, 12b
15:               or           a0, t1, t1
sub_4_31:         jal          ra, 1f
0:                jal          ra, 21f
1:                jal          s10, 13f
2:                jal          ra, 24f
3:                jal          ra, 2b
4:                jal          t1, 5f
5:                jal          t0, 18f
6:                jal          ra, 19f
7:                jal          t1, 9f
8:                jal          ra, 23f
9:                jal          t0, 14f
10:               jal          t4, 3b
11:               jal          ra, 16f
12:               jal          ra, 17f
13:               jal          t1, 15f
14:               jal          t5, 22f
15:               jal          ra, 6b
16:               jal          ra, 4b
17:               jal          ra, 7b
18:               jal          ra, 26f
19:               jal          t5, 0b
20:               jal          t1, 11b
21:               jal          a2, 25f
22:               jal          ra, 10b
23:               jal          t1, 12b
24:               jal          ra, 20b
25:               jal          gp, 8b
26:               nop
sub_4_11:         jal          ra, 5f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 8f
3:                jal          ra, 18f
4:                jal          tp, 25f
5:                jal          t1, 7f
6:                jal          t1, 13f
7:                jal          ra, 11f
8:                jal          ra, 22f
9:                jal          t1, 4b
10:               jal          sp, 14f
11:               jal          t5, 2b
12:               jal          ra, 20f
13:               jal          tp, 12b
14:               jal          ra, 17f
15:               jal          ra, 23f
16:               jal          s0, 24f
17:               jal          a7, 1b
18:               jal          ra, 16b
19:               jal          ra, 10b
20:               jal          ra, 19b
21:               jal          a6, 0b
22:               jal          ra, 15b
23:               jal          ra, 21b
24:               jal          t1, 9b
25:               jal          ra, 26f
26:               sub          t1, s4, zero
sub_4_23:         jal          ra, 16f
0:                jal          ra, 19f
1:                jal          ra, 17f
2:                jal          ra, 18f
3:                jal          ra, 1b
4:                jal          t1, 12f
5:                jal          ra, 3b
6:                jal          a2, 2b
7:                jal          ra, 14f
8:                jal          ra, 15f
9:                jal          t4, 8b
10:               jal          ra, 7b
11:               jal          ra, 13f
12:               jal          t3, 6b
13:               jal          a3, 4b
14:               jal          t1, 11b
15:               jal          ra, 0b
16:               jal          ra, 5b
17:               jal          ra, 10b
18:               jal          ra, 9b
19:               sltu         s11, s6, ra
sub_4_26:         jal          ra, 4f
0:                jal          ra, 17f
1:                jal          ra, 5f
2:                jal          t1, 8f
3:                jal          t1, 25f
4:                jal          t1, 18f
5:                jal          ra, 27f
6:                jal          s11, 3b
7:                jal          t1, 9f
8:                jal          s7, 19f
9:                jal          t1, 20f
10:               jal          ra, 0b
11:               jal          s3, 23f
12:               jal          s2, 7b
13:               jal          t1, 12b
14:               jal          t1, 1b
15:               jal          s1, 16f
16:               jal          t1, 26f
17:               jal          t1, 24f
18:               jal          ra, 10b
19:               jal          ra, 6b
20:               jal          ra, 22f
21:               jal          a3, 13b
22:               jal          ra, 11b
23:               jal          gp, 15b
24:               jal          gp, 2b
25:               jal          ra, 21b
26:               jal          ra, 14b
27:               srli         zero, t2, 16
sub_4_21:         jal          ra, 0f
0:                jal          s6, 5f
1:                jal          t1, 8f
2:                jal          t1, 1b
3:                jal          s4, 12f
4:                jal          s10, 10f
5:                jal          t1, 13f
6:                jal          ra, 3b
7:                jal          t1, 14f
8:                jal          t1, 15f
9:                jal          ra, 7b
10:               jal          ra, 9b
11:               jal          ra, 6b
12:               jal          s4, 2b
13:               jal          t1, 4b
14:               jal          ra, 11b
15:               auipc        s3, 511537
sub_4_33:         jal          ra, 5f
0:                jal          t2, 8f
1:                jal          a4, 19f
2:                jal          ra, 18f
3:                jal          ra, 17f
4:                jal          gp, 12f
5:                jal          sp, 2b
6:                jal          ra, 11f
7:                jal          t1, 20f
8:                jal          sp, 4b
9:                jal          ra, 1b
10:               jal          ra, 14f
11:               jal          t1, 16f
12:               jal          a2, 9b
13:               jal          ra, 6b
14:               jal          ra, 7b
15:               jal          ra, 0b
16:               jal          s3, 3b
17:               jal          ra, 15b
18:               jal          ra, 13b
19:               jal          t1, 10b
20:               sltiu        t4, t6, 848
sub_4_0:          jal          ra, 10f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          t1, 13f
4:                jal          t5, 12f
5:                jal          a4, 1b
6:                jal          s7, 8f
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          t3, 11f
10:               jal          s8, 4b
11:               jal          ra, 0b
12:               jal          gp, 9b
13:               auipc        s1, 980531
sub_4_9:          jal          ra, 14f
0:                jal          t1, 3f
1:                jal          a5, 4f
2:                jal          a6, 12f
3:                jal          tp, 8f
4:                jal          t1, 13f
5:                jal          t3, 16f
6:                jal          a3, 10f
7:                jal          sp, 0b
8:                jal          ra, 9f
9:                jal          sp, 5b
10:               jal          ra, 15f
11:               jal          a3, 6b
12:               jal          ra, 1b
13:               jal          s0, 11b
14:               jal          ra, 2b
15:               jal          ra, 7b
16:               srl          zero, a3, t3
sub_4_24:         jal          ra, 5f
0:                jal          ra, 1f
1:                jal          a1, 3f
2:                jal          a1, 9f
3:                jal          sp, 7f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          a4, 2b
7:                jal          ra, 8f
8:                jal          a2, 10f
9:                jal          ra, 4b
10:               auipc        s10, 653462
sub_4_27:         jal          ra, 6f
0:                jal          ra, 26f
1:                jal          t1, 12f
2:                jal          ra, 10f
3:                jal          sp, 16f
4:                jal          t1, 23f
5:                jal          s7, 24f
6:                jal          ra, 19f
7:                jal          t2, 21f
8:                jal          t1, 11f
9:                jal          ra, 14f
10:               jal          tp, 22f
11:               jal          ra, 2b
12:               jal          ra, 25f
13:               jal          ra, 1b
14:               jal          ra, 13b
15:               jal          t1, 17f
16:               jal          s8, 20f
17:               jal          ra, 8b
18:               jal          a3, 27f
19:               jal          s6, 5b
20:               jal          t1, 15b
21:               jal          t2, 0b
22:               jal          ra, 9b
23:               jal          ra, 28f
24:               jal          ra, 7b
25:               jal          ra, 4b
26:               jal          ra, 18b
27:               jal          t1, 3b
28:               slt          a0, t3, a7
sub_4_14:         jal          ra, 15f
0:                jal          t1, 28f
1:                jal          ra, 3f
2:                jal          s11, 14f
3:                jal          ra, 19f
4:                jal          ra, 7f
5:                jal          ra, 20f
6:                jal          s3, 12f
7:                jal          t1, 8f
8:                jal          ra, 22f
9:                jal          t4, 6b
10:               jal          ra, 16f
11:               jal          ra, 13f
12:               jal          ra, 21f
13:               jal          ra, 26f
14:               jal          ra, 9b
15:               jal          t5, 18f
16:               jal          ra, 27f
17:               jal          ra, 1b
18:               jal          ra, 23f
19:               jal          ra, 25f
20:               jal          t1, 10b
21:               jal          ra, 17b
22:               jal          t1, 2b
23:               jal          t1, 24f
24:               jal          t1, 5b
25:               jal          ra, 11b
26:               jal          ra, 0b
27:               jal          ra, 4b
28:               sra          ra, s9, s5
sub_4_16:         jal          ra, 5f
0:                jal          gp, 9f
1:                jal          ra, 10f
2:                jal          a1, 13f
3:                jal          ra, 11f
4:                jal          ra, 7f
5:                jal          s11, 12f
6:                jal          ra, 8f
7:                jal          ra, 2b
8:                jal          a7, 1b
9:                jal          t1, 6b
10:               jal          ra, 3b
11:               jal          ra, 4b
12:               jal          a0, 0b
13:               add          a7, a0, tp
sub_4_3:          jal          ra, 13f
0:                jal          t5, 5f
1:                jal          tp, 3f
2:                jal          t1, 22f
3:                jal          ra, 18f
4:                jal          t1, 17f
5:                jal          ra, 6f
6:                jal          ra, 15f
7:                jal          t1, 19f
8:                jal          t1, 4b
9:                jal          t1, 7b
10:               jal          t0, 21f
11:               jal          t1, 20f
12:               jal          ra, 10b
13:               jal          t1, 14f
14:               jal          t1, 23f
15:               jal          ra, 12b
16:               jal          t1, 9b
17:               jal          s10, 25f
18:               jal          t3, 11b
19:               jal          t5, 2b
20:               jal          t1, 16b
21:               jal          ra, 24f
22:               jal          ra, 8b
23:               jal          ra, 0b
24:               jal          tp, 1b
25:               slli         gp, s11, 11
sub_4_34:         jal          ra, 7f
0:                jal          sp, 1f
1:                jal          ra, 11f
2:                jal          a2, 14f
3:                jal          ra, 0b
4:                jal          ra, 16f
5:                jal          ra, 10f
6:                jal          t1, 2b
7:                jal          ra, 5b
8:                jal          sp, 15f
9:                jal          ra, 13f
10:               jal          t1, 6b
11:               jal          ra, 9b
12:               jal          t1, 4b
13:               jal          t1, 8b
14:               jal          ra, 3b
15:               jal          ra, 12b
16:               sltiu        a2, t6, 1145
sub_4_25:         jal          ra, 5f
0:                jal          ra, 2f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          t1, 14f
4:                jal          t1, 3b
5:                jal          ra, 9f
6:                jal          t1, 13f
7:                jal          sp, 12f
8:                jal          ra, 6b
9:                jal          ra, 11f
10:               jal          ra, 15f
11:               jal          t1, 0b
12:               jal          ra, 16f
13:               jal          ra, 10b
14:               jal          ra, 7b
15:               jal          ra, 4b
16:               and          a4, s9, a1
sub_4_10:         jal          ra, 2f
0:                jal          s0, 9f
1:                jal          ra, 0b
2:                jal          a0, 13f
3:                jal          s1, 4f
4:                jal          ra, 19f
5:                jal          ra, 6f
6:                jal          s6, 17f
7:                jal          ra, 8f
8:                jal          t1, 5b
9:                jal          ra, 12f
10:               jal          ra, 20f
11:               jal          t1, 10b
12:               jal          ra, 3b
13:               jal          sp, 7b
14:               jal          ra, 16f
15:               jal          s0, 14b
16:               jal          s10, 18f
17:               jal          ra, 15b
18:               jal          s0, 1b
19:               jal          ra, 11b
20:               srl          t2, ra, t3
sub_4_12:         jal          ra, 2f
0:                jal          t0, 8f
1:                jal          ra, 3f
2:                jal          t0, 20f
3:                jal          t1, 26f
4:                jal          t1, 11f
5:                jal          t1, 15f
6:                jal          a0, 16f
7:                jal          ra, 18f
8:                jal          s1, 10f
9:                jal          t1, 7b
10:               jal          a0, 12f
11:               jal          ra, 13f
12:               jal          a1, 25f
13:               jal          t5, 9b
14:               jal          ra, 17f
15:               jal          a7, 24f
16:               jal          ra, 1b
17:               jal          sp, 0b
18:               jal          t1, 28f
19:               jal          ra, 22f
20:               jal          ra, 6b
21:               jal          t4, 27f
22:               jal          ra, 4b
23:               jal          a0, 21b
24:               jal          s11, 19b
25:               jal          ra, 23b
26:               jal          ra, 14b
27:               jal          t1, 5b
28:               slli         t3, zero, 7
sub_4_29:         jal          ra, 17f
0:                jal          tp, 13f
1:                jal          gp, 0b
2:                jal          t1, 12f
3:                jal          s8, 2b
4:                jal          t1, 15f
5:                jal          a6, 10f
6:                jal          gp, 18f
7:                jal          s3, 9f
8:                jal          t3, 3b
9:                jal          ra, 6b
10:               jal          gp, 1b
11:               jal          s8, 7b
12:               jal          a0, 5b
13:               jal          ra, 14f
14:               jal          ra, 16f
15:               jal          t2, 8b
16:               jal          a4, 11b
17:               jal          ra, 4b
18:               nop
sub_4_8:          jal          ra, 23f
0:                jal          t2, 13f
1:                jal          a6, 9f
2:                jal          tp, 19f
3:                jal          ra, 4f
4:                jal          a4, 15f
5:                jal          t1, 22f
6:                jal          sp, 8f
7:                jal          ra, 3b
8:                jal          a1, 14f
9:                jal          ra, 6b
10:               jal          t1, 5b
11:               jal          t1, 26f
12:               jal          ra, 25f
13:               jal          ra, 17f
14:               jal          t5, 16f
15:               jal          a4, 18f
16:               jal          gp, 11b
17:               jal          ra, 2b
18:               jal          ra, 12b
19:               jal          ra, 21f
20:               jal          t1, 10b
21:               jal          ra, 20b
22:               jal          s2, 24f
23:               jal          ra, 7b
24:               jal          t1, 1b
25:               jal          ra, 0b
26:               xori         zero, tp, -1190
sub_4_19:         jal          ra, 4f
0:                jal          ra, 2f
1:                jal          s3, 8f
2:                jal          ra, 5f
3:                jal          t3, 16f
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          ra, 3b
7:                jal          ra, 23f
8:                jal          ra, 7b
9:                jal          ra, 11f
10:               jal          ra, 15f
11:               jal          s4, 14f
12:               jal          ra, 17f
13:               jal          ra, 18f
14:               jal          ra, 10b
15:               jal          ra, 13b
16:               jal          ra, 9b
17:               jal          a7, 22f
18:               jal          ra, 20f
19:               jal          ra, 21f
20:               jal          ra, 19b
21:               jal          tp, 1b
22:               jal          ra, 0b
23:               slt          a7, t6, a7
sub_4_17:         jal          ra, 4f
0:                jal          tp, 8f
1:                jal          t1, 5f
2:                jal          t1, 9f
3:                jal          ra, 2b
4:                jal          s2, 0b
5:                jal          t0, 6f
6:                jal          ra, 3b
7:                jal          ra, 11f
8:                jal          ra, 1b
9:                jal          t1, 10f
10:               jal          ra, 7b
11:               srl          gp, a5, s0
sub_4_5:          jal          ra, 21f
0:                jal          ra, 2f
1:                jal          ra, 14f
2:                jal          s10, 8f
3:                jal          s10, 15f
4:                jal          ra, 16f
5:                jal          t5, 23f
6:                jal          ra, 4b
7:                jal          t2, 22f
8:                jal          t1, 3b
9:                jal          t1, 10f
10:               jal          t3, 20f
11:               jal          ra, 6b
12:               jal          gp, 9b
13:               jal          ra, 1b
14:               jal          s11, 18f
15:               jal          ra, 19f
16:               jal          t1, 17f
17:               jal          ra, 7b
18:               jal          ra, 0b
19:               jal          ra, 12b
20:               jal          t1, 11b
21:               jal          ra, 13b
22:               jal          ra, 5b
23:               sltiu        t4, t5, 1625
sub_4_22:         jal          ra, 7f
0:                jal          a2, 15f
1:                jal          s10, 10f
2:                jal          ra, 11f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          t1, 2b
7:                jal          ra, 9f
8:                jal          sp, 5b
9:                jal          t3, 13f
10:               jal          t1, 14f
11:               jal          ra, 1b
12:               jal          a6, 8b
13:               jal          ra, 4b
14:               jal          ra, 3b
15:               jal          tp, 16f
16:               sub          s4, t5, s7
sub_4_30:         jal          ra, 20f
0:                jal          t1, 7f
1:                jal          ra, 24f
2:                jal          t2, 22f
3:                jal          a3, 14f
4:                jal          ra, 9f
5:                jal          t1, 3b
6:                jal          ra, 15f
7:                jal          ra, 25f
8:                jal          s6, 11f
9:                jal          t1, 18f
10:               jal          s7, 17f
11:               jal          ra, 13f
12:               jal          sp, 4b
13:               jal          tp, 5b
14:               jal          ra, 12b
15:               jal          ra, 8b
16:               jal          ra, 21f
17:               jal          sp, 0b
18:               jal          t4, 2b
19:               jal          sp, 23f
20:               jal          ra, 6b
21:               jal          ra, 1b
22:               jal          a3, 19b
23:               jal          ra, 16b
24:               jal          ra, 10b
25:               sub          s2, sp, s1
sub_4_28:         jal          ra, 9f
0:                jal          a5, 5f
1:                jal          t1, 4f
2:                jal          t1, 13f
3:                jal          t1, 1b
4:                jal          t1, 0b
5:                jal          gp, 10f
6:                jal          a4, 12f
7:                jal          ra, 11f
8:                jal          t1, 6b
9:                jal          ra, 7b
10:               jal          t1, 8b
11:               jal          ra, 2b
12:               jal          t4, 14f
13:               jal          a1, 3b
14:               slli         s2, s11, 8
sub_4_15:         jal          ra, 5f
0:                jal          a3, 2f
1:                jal          ra, 7f
2:                jal          ra, 16f
3:                jal          ra, 11f
4:                jal          ra, 20f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          s8, 3b
9:                jal          ra, 19f
10:               jal          a2, 0b
11:               jal          ra, 15f
12:               jal          s7, 4b
13:               jal          ra, 17f
14:               jal          tp, 6b
15:               jal          ra, 1b
16:               jal          s7, 14b
17:               jal          ra, 18f
18:               jal          t1, 12b
19:               jal          s0, 13b
20:               jal          ra, 21f
21:               lui          a7, 1045760
sub_4_32:         jal          ra, 16f
0:                jal          t0, 6f
1:                jal          ra, 9f
2:                jal          ra, 21f
3:                jal          ra, 19f
4:                jal          ra, 2b
5:                jal          ra, 18f
6:                jal          ra, 7f
7:                jal          ra, 3b
8:                jal          t1, 14f
9:                jal          ra, 0b
10:               jal          t1, 23f
11:               jal          ra, 4b
12:               jal          t0, 5b
13:               jal          ra, 20f
14:               jal          a0, 13b
15:               jal          ra, 17f
16:               jal          ra, 11b
17:               jal          ra, 8b
18:               jal          t2, 22f
19:               jal          t1, 15b
20:               jal          ra, 12b
21:               jal          ra, 10b
22:               jal          t1, 24f
23:               jal          ra, 1b
24:               add          t0, sp, s3
                  slli         a4, a4, 2
                  bgeu         t0, a3, 5f
                  xori         t4, s1, -1107
                  srl          s2, s11, t4
                  bge          a1, s8, 9f
5:                sltiu        a0, s7, -472
                  bge          sp, t3, 17f
                  beq          t6, tp, 22f
                  addi         a6, s0, 1795
9:                srli         gp, s4, 24
                  slti         tp, s10, 895
                  addi         s7, s0, 2028
                  sltiu        sp, s0, 2024
                  auipc        a7, 449650
                  andi         t4, s9, -172
                  beq          ra, zero, 22f
                  bge          t2, s11, 36f
17:               bge          t0, a7, 29f
                  addi         a4, s2, 1911
                  blt          ra, t2, 24f
                  auipc        sp, 465305
                  nop
22:               andi         sp, s11, -1066
                  nop
24:               srl          t0, zero, a7
                  bne          s11, t5, 37f
                  bgeu         a4, s0, 43f
                  bltu         t4, t6, 40f
                  slli         ra, s6, 1
29:               bltu         a0, t2, 37f
                  and          s4, s11, s0
                  srli         s7, a5, 19
                  sub          a0, sp, s4
                  bge          s4, s7, 51f
                  or           a1, s11, t3
                  beq          t0, s11, 52f
36:               sra          gp, s5, s6
37:               bgeu         a7, s1, 53f
                  xor          s6, s3, t2
                  slli         sp, t5, 15
40:               sub          a6, a1, s3
                  or           t5, s10, a3
                  srl          a4, a7, s8
43:               sra          s10, s4, t3
                  addi         s1, a7, -1764
                  nop
                  ori          t2, s6, 804
                  beq          a6, sp, 66f
                  andi         s8, zero, -645
                  and          s10, s3, t0
                  or           zero, s3, t2
51:               sltiu        ra, a0, 506
52:               bge          gp, t1, 59f
53:               sll          a0, s0, s5
                  sra          s10, a4, t1
                  xori         s10, a1, -641
                  xor          a2, s11, a5
                  bne          s2, s10, 68f
                  srli         a6, s9, 22
59:               srli         s4, t5, 25
                  srai         a5, s8, 29
                  slti         s3, t0, 323
                  beq          s10, gp, 73f
                  srli         sp, gp, 30
                  sltu         t2, ra, s4
                  srli         s11, t6, 26
66:               sltu         s8, s1, t3
                  add          gp, s11, sp
68:               sltu         s2, t5, s3
                  srai         s0, zero, 2
                  bltu         gp, s7, 80f
                  andi         s8, t4, -1773
                  sra          t0, t6, t1
73:               lui          t1, 925889
                  sll          a6, t4, a5
                  addi         s7, t1, -1716
                  sltiu        a2, a0, 1000
                  nop
                  and          t0, t5, t5
                  slli         a5, a4, 13
80:               sltu         a4, s8, t6
                  or           gp, t3, s1
                  xori         t4, s5, -277
                  lui          ra, 60411
                  slli         a3, s9, 16
                  srli         t4, s2, 28
                  auipc        s3, 921952
                  bge          s9, s6, 88f
88:               slt          s11, gp, tp
                  slti         a2, t1, 318
                  sub          a6, a3, s4
                  addi         s6, t5, -1644
                  addi         t5, gp, -925
                  ori          t5, tp, 1975
                  xor          s2, a3, s3
                  bge          t3, s2, 113f
                  slt          s6, tp, a1
                  or           s7, a4, a3
                  bltu         tp, a0, 101f
                  ori          s2, zero, -1099
                  sltu         s7, t0, s11
101:              sltiu        t5, a4, -344
                  xor          s0, sp, s10
                  andi         a2, t3, 1324
                  srl          a1, tp, s2
                  addi         t3, s3, 1996
                  bne          a2, a3, 125f
                  srli         t3, a6, 5
                  xor          a1, s3, t6
                  slli         a4, s6, 11
                  sra          a5, s5, a7
                  slt          tp, zero, t4
                  lui          s2, 59841
113:              andi         a4, a2, -22
                  srai         s1, t0, 12
                  xor          sp, a7, tp
                  slti         s11, s8, -1537
                  blt          a7, s4, 119f
                  slti         s8, a4, 1872
119:              nop
                  bgeu         tp, a5, 133f
                  or           ra, s8, s7
                  srai         a4, sp, 1
                  slt          a1, t5, a0
                  beq          s7, t3, 143f
125:              bne          a5, s4, 140f
                  bgeu         s0, a6, 136f
                  srli         s3, s4, 8
                  sltu         tp, a4, s8
                  slt          a1, tp, s4
                  andi         s4, a2, -881
                  sltiu        a3, s2, -851
                  bltu         s8, a7, 134f
133:              xori         s10, s6, -1195
134:              beq          s6, a3, 144f
                  bne          s10, a6, 143f
136:              auipc        t0, 356247
                  lui          a0, 61390
                  sltiu        zero, s9, 1454
                  sll          t5, a2, ra
140:              slti         zero, t2, 92
                  ori          s3, s4, -664
                  srai         t4, ra, 23
143:              srli         t4, gp, 4
144:              bltu         s9, a3, 162f
                  srli         t2, s11, 8
                  auipc        zero, 948052
                  bne          t4, sp, 163f
                  ori          s6, s2, 411
                  nop
                  and          a1, s5, s6
                  lui          t2, 349546
                  add          s8, a2, a3
                  bne          t5, a0, 157f
                  nop
                  srl          sp, t0, a7
                  nop
157:              sltu         a0, s11, zero
                  ori          s8, tp, 1280
                  slli         t3, s10, 8
                  bge          t1, a1, 167f
                  blt          t5, zero, 176f
162:              auipc        s3, 949537
163:              slti         a1, a3, -1577
                  slt          s10, s5, t0
                  xori         a0, a3, 1956
                  srl          s11, gp, gp
167:              srli         t2, a2, 27
                  xor          s3, s6, s9
                  sll          t1, a7, a5
                  srl          t2, s11, a3
                  slti         s10, s4, 80
                  or           s10, s7, tp
                  sltiu        s7, t6, 1651
                  addi         a7, t2, 1221
                  bgeu         t6, s7, 186f
176:              xori         zero, t2, -1214
                  sub          s0, a0, t1
                  andi         s6, sp, -1272
                  sub          a5, gp, a7
                  slli         a5, s2, 24
                  addi         a7, s7, -1467
                  xori         gp, a4, -92
                  slti         s2, t6, 728
                  ori          s1, a5, -1115
                  bne          a1, t2, 202f
186:              or           t0, s11, sp
                  or           sp, s11, s7
                  auipc        a1, 234125
                  srai         s1, s11, 25
                  bgeu         zero, a6, 210f
                  xori         s10, s4, -351
                  bltu         s2, a3, 203f
                  sub          s4, t4, t4
                  sll          a1, t5, ra
                  or           gp, tp, s6
                  sltiu        t2, a3, -1316
                  bge          a7, s5, 199f
                  xori         s0, ra, -132
199:              ori          ra, t3, 1864
                  sra          t5, t0, t4
                  beq          a3, a2, 206f
202:              ori          s4, s10, -1979
203:              auipc        tp, 74280
                  sll          s1, t4, tp
                  xor          a3, sp, a4
206:              beq          s5, s8, 217f
                  addi         t5, s5, -1612
                  sll          a6, t5, s8
                  bltu         s4, s7, 222f
210:              auipc        s10, 510322
                  sltu         a6, s6, s2
                  bgeu         s11, tp, 225f
                  and          s4, a0, a3
                  srai         t4, s0, 12
                  bgeu         s10, a3, 222f
                  and          s8, s8, s3
217:              ori          t4, s0, 134
                  bge          s0, a5, 237f
                  bltu         s8, zero, 238f
                  sll          a1, s3, s1
                  blt          ra, a1, 233f
222:              and          a1, s2, a6
                  srli         a2, tp, 23
                  auipc        a4, 166223
225:              or           zero, t6, t4
                  xori         s0, a5, -1429
                  sltu         s10, t4, ra
                  srl          t5, s2, a7
                  sub          t1, t1, t4
                  auipc        gp, 853555
                  sltiu        t0, t1, 35
                  srli         a5, s8, 6
233:              bne          t4, t4, 252f
                  addi         s4, s11, -1271
                  slli         s6, a5, 10
                  sltiu        a4, a4, 758
237:              ori          a7, ra, -1233
238:              addi         t1, a3, 58
                  addi         a7, a3, -165
                  sltiu        a5, s4, 1698
                  sltiu        a6, t3, -287
                  slti         gp, s4, 2018
                  bgeu         s8, a2, 245f
                  nop
245:              auipc        t4, 590827
                  addi         t0, zero, -1502
                  auipc        s11, 236241
                  slti         a2, t1, 818
                  and          s6, s6, t5
                  or           t0, s8, a4
                  slti         a5, s2, -1545
252:              sltu         s2, a0, sp
                  srl          gp, s0, a3
                  or           t1, tp, t2
                  bne          s10, t2, 273f
                  lui          t0, 117656
                  bgeu         a6, s9, 272f
                  slti         gp, s11, -1601
                  sltu         s2, zero, gp
                  ori          a3, s1, 1904
                  sra          s1, s9, a3
                  srai         a2, a2, 17
                  slt          t3, s8, zero
                  bgeu         s7, a1, 274f
                  auipc        t5, 895300
                  bge          a0, s9, 283f
                  bgeu         s2, t3, 272f
                  slt          a3, a1, a2
                  ori          a6, ra, 2036
                  srai         s4, s1, 12
                  add          zero, a1, t3
272:              sra          a1, s9, zero
273:              ori          t4, sp, 1042
274:              xor          a4, a5, a4
                  bne          s6, t0, 278f
                  sra          a4, a6, s8
                  srli         s10, t0, 26
278:              nop
                  addi         a4, t4, -281
                  slli         t4, s2, 2
                  addi         t4, t5, -247
                  bgeu         t1, a7, 283f
283:              sub          a6, a1, s5
                  bge          a5, s8, 296f
                  xor          t5, a0, s0
                  sub          a3, t2, s1
                  bge          s3, a3, 303f
                  lui          t0, 202197
                  xori         s8, tp, 1722
                  sltiu        zero, sp, -142
                  srli         a1, t5, 27
                  sltiu        a7, a7, -1240
                  ori          a4, t0, -842
                  slli         s8, a5, 20
                  slti         s10, s11, 1772
296:              sub          t5, s0, s2
                  ori          s2, a5, -1219
                  and          sp, gp, t2
                  xori         ra, s5, -22
                  srli         a4, a0, 6
                  lui          s2, 322151
                  slt          a2, sp, sp
303:              sltiu        s10, s3, -187
                  slti         s7, s9, -109
                  sll          tp, s11, s9
                  blt          s0, a5, 316f
                  srai         s0, a2, 2
                  sll          s8, s10, t0
                  lui          s3, 229348
                  bltu         zero, ra, 314f
                  slli         s1, a6, 5
                  or           t0, s8, a0
                  add          s7, t1, t5
314:              beq          a6, a3, 325f
                  bgeu         a7, s4, 320f
316:              nop
                  bne          a7, a2, 319f
                  xor          s6, a5, t6
319:              sub          t2, t1, s6
320:              slti         a1, t0, 1771
                  blt          a3, s0, 336f
                  nop
                  auipc        t4, 650975
                  or           sp, s4, s4
325:              auipc        s4, 701658
                  sltu         sp, s3, t4
                  add          tp, t4, a5
                  lui          zero, 521656
                  slti         a2, a6, 1850
                  auipc        s11, 39174
                  addi         a0, a1, 885
                  xori         a5, a2, 157
                  sll          s2, t2, s0
                  sra          s2, a1, s8
                  bltu         a4, s3, 348f
336:              andi         s0, t0, 1610
                  sltu         s7, a5, tp
                  sll          a5, s7, s1
                  blt          a7, a7, 359f
                  auipc        s11, 693157
                  ori          s10, s11, -385
                  or           a7, a3, t5
                  nop
                  sltu         a6, s2, s3
                  lui          a2, 86438
                  sub          s4, a4, tp
                  lui          a3, 466707
348:              and          a2, s2, a0
                  add          a7, zero, s0
                  slt          s4, s4, s10
                  xori         s11, t1, -1945
                  bne          s2, s4, 367f
                  xori         s2, t2, -270
                  sltiu        s6, a3, 305
                  srl          a4, a6, t3
                  xor          a7, t4, a7
                  xori         zero, s4, 1665
                  bge          sp, t2, 376f
359:              sra          s11, a1, s9
                  bne          t1, s9, 365f
                  and          s7, sp, a7
                  slt          a1, s1, a5
                  srai         a4, gp, 2
                  bltu         a2, t5, 382f
365:              add          a0, a4, s7
                  srai         zero, s8, 24
367:              srai         t5, a3, 2
                  bltu         s2, t4, 369f
369:              beq          t3, s3, 388f
                  slli         t4, a2, 27
                  sll          t3, t1, s10
                  bne          t5, gp, 375f
                  addi         t2, gp, 1290
                  nop
375:              blt          s11, a1, 387f
376:              sub          s10, a1, s3
                  andi         a4, a6, -444
                  sltiu        s7, s1, 896
                  bgeu         t3, s9, 389f
                  bne          s3, a5, 387f
                  xori         s2, t4, -1186
382:              auipc        gp, 825825
                  slli         s11, a7, 30
                  bne          s7, a3, 401f
                  ori          s4, t0, -1971
                  or           t2, s11, zero
387:              beq          a7, s7, 399f
388:              lui          t2, 674652
389:              and          s6, t3, t4
                  slt          s10, a1, s10
                  srl          a0, a0, s1
                  or           s1, t5, s6
                  ori          a6, s10, 986
                  add          a1, t6, tp
                  auipc        zero, 278175
                  and          t5, t6, s7
                  ori          a2, ra, -1719
                  or           s4, a7, a2
399:              srli         t0, t5, 24
                  or           t1, a5, ra
401:              slli         s1, a0, 29
                  and          t2, s8, a4
                  bltu         a7, a4, 420f
                  sub          t0, t2, a0
                  bgeu         s1, s6, 416f
                  slli         sp, tp, 10
                  add          s8, s6, t3
                  slli         tp, s3, 17
                  bgeu         a1, a5, 417f
                  add          a5, s3, t6
                  slt          gp, t5, a5
                  beq          a4, t1, 423f
                  beq          s6, tp, 426f
                  add          s10, s11, s6
                  bne          sp, t3, 417f
416:              bltu         s3, s1, 423f
417:              srai         t2, s4, 19
                  bge          ra, a4, 437f
                  xor          s7, a4, a3
420:              add          a6, a3, gp
                  addi         s6, sp, 836
                  add          t4, s0, ra
423:              sra          t2, a1, t2
                  xori         zero, gp, -1800
                  lui          sp, 137084
426:              ori          t5, t5, -728
                  blt          a4, t1, 446f
                  srai         a2, s10, 20
                  sll          a7, t6, s3
                  lui          a2, 479951
                  slli         a5, a6, 7
                  lui          t5, 280520
                  andi         ra, t3, -764
                  sltu         zero, a7, a2
                  xori         t3, s3, -1569
                  xori         a2, s3, 18
437:              slt          a0, a4, ra
                  sub          s10, s0, t5
                  bne          a5, a3, 455f
                  srl          s4, s6, t0
                  bne          t2, s7, 444f
                  andi         gp, s11, -1310
                  nop
444:              slt          s11, a2, t4
                  lui          a7, 968607
446:              ori          a5, s7, -1671
                  srli         a7, t6, 22
                  sll          s1, t0, s6
                  sra          s3, a6, a1
                  auipc        s10, 69796
                  bge          s9, t5, 468f
                  nop
                  addi         s2, t2, 285
                  sra          s7, s10, s0
455:              auipc        a2, 675997
                  bgeu         s4, t4, 461f
                  bne          a5, a4, 467f
                  sra          a0, t0, t1
                  sltiu        a5, a7, -1654
                  bne          s2, a6, 472f
461:              add          s2, s1, sp
                  sub          zero, a7, s9
                  andi         sp, s9, 1244
                  slt          t4, zero, a1
                  sltiu        t5, zero, 653
                  bne          s2, zero, 479f
467:              lui          a0, 97640
468:              srl          t4, tp, s11
                  ori          zero, s8, -1018
                  srl          s6, zero, t5
sub_4_6:          jal          ra, 15f
0:                jal          t1, 8f
1:                jal          t1, 11f
2:                jal          ra, 13f
3:                jal          ra, 7f
4:                jal          a3, 14f
5:                jal          ra, 3b
6:                jal          t5, 12f
7:                jal          ra, 9f
8:                jal          t1, 10f
9:                jal          s3, 0b
10:               jal          ra, 2b
11:               jal          tp, 16f
12:               jal          gp, 4b
13:               jal          ra, 6b
14:               jal          ra, 1b
15:               jal          ra, 5b
16:               add          t4, t4, s0
                  beq          s6, s10, 490f
472:              sltu         zero, a0, s6
                  bltu         tp, sp, 475f
                  auipc        t3, 584800
475:              nop
                  addi         zero, s7, -629
                  srli         s11, s0, 28
                  sltu         s3, sp, s5
479:              sll          sp, a0, ra
                  sll          a6, a2, a7
                  xori         tp, s6, -1958
                  andi         t4, t1, -452
                  ori          s2, s1, -420
                  auipc        a2, 81766
                  nop
                  sltu         a0, a2, a6
                  xori         a3, s1, 1794
                  sll          a6, s2, tp
                  nop
490:              slli         s6, a0, 28
                  slli         a1, s10, 10
                  bne          t2, s2, 511f
                  beq          s2, s8, 498f
                  or           gp, a3, s7
                  srai         t1, s3, 9
                  ori          sp, zero, 1673
                  bgeu         gp, s1, 507f
498:              slti         sp, a1, 1625
                  bgeu         s4, s1, 510f
                  sltu         sp, t6, a1
                  auipc        s0, 107778
                  sll          t0, tp, a7
                  beq          tp, t5, 504f
504:              beq          sp, s5, 517f
                  or           ra, t1, a1
                  bgeu         s3, t4, 525f
507:              lui          a7, 503939
                  or           s11, s1, s3
                  slli         a4, a2, 4
510:              blt          t3, t1, 517f
511:              bltu         a1, s3, 515f
                  srl          s7, a3, sp
                  ori          s6, a2, 1330
                  addi         s8, s3, 1108
515:              nop
                  slt          s0, t4, s5
517:              sub          a5, a3, t3
                  and          s6, s9, s1
                  sltiu        a2, s4, -1921
                  sll          gp, gp, s8
                  srli         s7, s9, 8
                  addi         t1, sp, -668
                  xori         s4, t5, 77
                  sltu         a2, s9, s9
525:              add          s6, a7, t0
                  srli         ra, zero, 14
                  srai         tp, t1, 7
                  ori          zero, s9, 1266
                  sltu         t3, sp, a6
                  bge          t0, ra, 541f
                  addi         s6, tp, -1446
                  bgeu         t2, sp, 552f
                  ori          s6, s1, 1752
                  beq          s8, t3, 542f
                  addi         a6, s11, 1867
                  srai         tp, s6, 22
                  xor          sp, a1, s11
                  sub          s3, s3, t0
                  srli         s4, s10, 12
                  bne          ra, s2, 547f
541:              sll          s7, sp, s2
542:              ori          s7, a2, 1732
                  bne          s7, s1, 558f
                  sltu         s1, s2, a4
                  andi         t2, s4, -1836
                  bne          a5, tp, 564f
547:              add          s2, s0, t1
                  beq          a5, s9, 566f
                  lui          t0, 127932
                  or           t4, s9, a7
                  sltiu        s1, a4, -18
552:              nop
                  xori         t4, s6, -896
                  xor          s0, a6, sp
                  sll          t4, a2, t5
                  nop
                  or           s11, t1, a0
558:              xor          a2, a2, s5
                  xor          s4, s5, a4
                  slt          t4, s9, t6
                  nop
                  sltiu        s2, zero, -1535
                  sltiu        a1, a2, -648
564:              slli         s11, s8, 0
                  xor          zero, t6, a5
566:              bne          s2, s9, 568f
                  xor          ra, a5, s7
568:              sub          s2, a4, a4
                  and          t5, s2, s11
                  xor          t4, t0, s6
                  slli         a2, s6, 9
                  beq          s7, t5, 584f
                  slti         a4, a2, 1169
                  slt          tp, t0, a1
                  slti         t4, ra, 1105
                  xori         tp, ra, 962
                  sll          tp, a0, a2
                  sltiu        s3, s8, 1322
                  sll          a3, s3, ra
                  srai         t1, a1, 14
                  slti         ra, s10, -1155
                  lui          s2, 3074
                  srli         a2, ra, 24
584:              bne          t2, a3, 599f
                  sltiu        s11, s2, 1930
                  blt          a4, zero, 597f
                  ori          zero, t4, 1609
                  srli         a2, a3, 9
                  sltu         s0, t0, zero
                  auipc        a0, 161676
                  srli         t1, s4, 2
                  srli         s7, s4, 24
                  sra          a4, a0, s7
                  sltiu        s8, t3, 415
                  lui          a0, 142554
                  sltiu        a5, gp, -136
597:              xori         s2, s8, -1296
                  auipc        t2, 219793
599:              bgeu         t6, s5, 616f
                  ori          t1, s6, 1061
                  addi         ra, t4, -1408
                  sra          s8, tp, s4
                  slt          s10, a6, s6
                  srai         s10, s7, 0
                  srli         a2, a6, 15
                  sltu         ra, t2, t4
                  sll          s6, zero, a6
                  sra          t0, s1, a2
                  sltiu        a7, a6, 67
                  or           s10, t1, a5
                  xori         a1, sp, 1708
                  and          zero, s1, t3
                  add          ra, t2, sp
                  and          tp, a3, a6
                  bge          s7, s0, 626f
616:              slli         ra, a0, 28
                  slti         a3, s8, -694
                  sub          a4, s11, t6
                  nop
                  and          s4, sp, s11
                  sub          s1, a7, s10
                  blt          t5, s1, 637f
                  add          a5, ra, zero
                  slt          s10, s2, t2
                  andi         s0, a1, -2031
626:              bltu         s2, t5, 628f
                  ori          a0, a2, -445
628:              bgeu         t3, t1, 647f
                  beq          gp, t4, 641f
                  srl          t4, s4, s3
                  srli         t1, s6, 5
                  srai         gp, gp, 11
                  bltu         s0, ra, 651f
                  srl          s7, t1, s11
                  or           a6, a0, t0
                  srl          a4, zero, t3
637:              xori         a4, s0, -1234
                  srl          a6, a7, t1
                  add          t5, s6, zero
                  beq          t1, s2, 641f
641:              slli         s1, s3, 24
                  srl          s6, s9, s2
                  addi         s2, a0, 972
                  slli         s2, s9, 13
                  add          a1, t5, t4
                  bgeu         a7, s5, 658f
647:              bne          s10, a0, 649f
                  blt          zero, t2, 653f
649:              srai         sp, s6, 23
                  addi         gp, s9, -1190
651:              auipc        ra, 783986
                  srl          tp, s7, gp
653:              xor          a1, a6, a4
                  nop
                  sub          ra, s2, s1
                  slti         t3, s9, -1481
                  slli         s2, a2, 2
658:              bltu         a3, s5, 668f
                  bgeu         s1, s3, 669f
                  sltiu        s11, s5, 182
                  bgeu         s3, a5, 674f
                  sltiu        s6, gp, -735
                  srl          s1, a1, s0
                  sll          t2, s11, s7
                  and          s7, t2, a7
                  srl          a6, a0, sp
                  sll          s0, a5, a7
668:              slt          ra, a0, a3
669:              bne          s6, a5, 688f
                  sll          a7, s10, a1
                  or           s0, a6, s0
                  slli         s1, a4, 23
                  or           s8, t4, zero
674:              srl          t0, ra, s11
                  lui          s3, 13425
                  addi         t3, s10, 1747
                  srai         t0, zero, 2
                  or           t0, s0, a2
                  sltiu        s1, s3, -1322
                  sra          s10, t1, ra
                  srli         t2, s1, 16
                  addi         a0, t2, 743
                  andi         a3, t1, -1133
                  andi         sp, gp, -1573
                  sra          a2, a7, s9
                  slli         a2, ra, 31
                  add          a5, s7, s11
688:              sub          s3, t0, s1
                  slti         a1, s3, -582
                  bltu         t4, s10, 698f
                  slti         s6, s8, -1013
                  sra          a3, zero, s7
                  addi         t5, a1, -617
                  slt          a0, sp, t1
                  bge          s2, ra, 712f
                  srli         gp, zero, 24
                  nop
698:              xori         t5, s7, -1769
                  beq          s3, s10, 710f
                  sub          t3, s11, s10
                  ori          a2, a6, -1390
                  xor          a4, s11, a2
                  sltiu        t5, t2, -605
                  lui          gp, 254850
                  xori         gp, s1, -1867
                  srli         tp, t1, 1
                  sltiu        a5, t6, 622
                  slti         a2, t0, 1590
                  add          a5, a7, a3
710:              xor          ra, t6, s9
                  addi         a1, t3, 265
712:              srai         s3, s4, 20
                  blt          s3, s0, 730f
                  sltiu        t1, s6, -973
                  bgeu         a4, gp, 734f
                  srai         s6, a7, 21
                  ori          sp, s6, -87
                  xori         a0, a0, 181
                  sll          s4, s1, t2
                  nop
                  addi         gp, s10, -802
                  sub          a3, t1, t2
                  sra          t4, t0, tp
                  bge          sp, a0, 729f
                  auipc        gp, 489412
                  lui          t2, 571305
                  xor          t0, sp, t1
                  beq          t0, zero, 746f
729:              or           t5, zero, s3
730:              srli         a3, a1, 29
                  or           s0, a0, a6
                  xori         zero, a0, -1357
                  xori         s2, s11, 437
734:              blt          tp, s4, 747f
                  srli         a5, s10, 21
                  beq          s5, s3, 756f
                  nop
                  sll          s2, s0, t0
                  bltu         s4, s0, 750f
                  bne          s3, s1, 755f
                  srl          s3, s7, sp
                  srl          t2, tp, t2
                  bgeu         s4, t4, 746f
                  sltu         zero, a1, ra
                  blt          a4, s9, 761f
746:              lui          a1, 443165
747:              blt          zero, t6, 754f
                  auipc        s10, 783084
                  blt          s5, tp, 756f
750:              sll          s1, t3, a5
                  bgeu         s1, t6, 755f
                  srli         a2, s7, 16
                  slli         ra, t1, 27
754:              beq          s10, s1, 766f
755:              xor          s1, a7, zero
756:              andi         s8, t2, 97
                  bltu         t3, a0, 773f
                  bne          a6, t0, 760f
                  addi         gp, t3, -177
760:              nop
761:              ori          tp, s4, -222
                  slt          a6, a6, a3
                  auipc        s1, 534577
                  auipc        s3, 641973
                  sltu         a7, t2, sp
766:              auipc        s10, 10052
                  sll          t1, a6, a1
                  srl          sp, s10, s2
                  srl          s1, s2, s5
                  or           a1, s2, t1
                  auipc        s4, 715789
                  sltu         t1, t6, s5
773:              xor          s10, s4, a1
                  srai         s10, s0, 22
                  srli         t1, a1, 4
                  and          s0, a2, s2
                  bne          t1, t6, 794f
                  sltu         t2, s0, s0
                  and          a3, s4, t6
                  and          a7, t4, t1
                  sltu         tp, a4, a3
                  sll          a7, t0, tp
                  and          s1, s10, t1
                  auipc        s8, 434135
                  auipc        t5, 871296
                  andi         s7, gp, 955
                  slti         t0, zero, 1391
                  srli         s10, t6, 30
                  srl          t5, a1, a2
                  or           s3, a6, t4
                  auipc        sp, 983994
                  auipc        t4, 7280
                  blt          s9, a2, 803f
794:              xor          t1, tp, a7
                  addi         a7, s5, -1277
                  addi         a7, t3, 1633
                  srli         a3, zero, 8
                  bltu         t0, s3, 816f
                  ori          s0, s1, -1364
                  add          s6, a5, zero
                  sltu         s11, s4, s9
                  add          t3, a7, t0
803:              sub          s1, t3, t1
                  add          s4, s1, s10
                  andi         s6, tp, 1899
                  slli         t4, t3, 7
                  beq          a0, s10, 814f
                  or           t1, t5, zero
                  and          gp, s3, s6
                  nop
                  auipc        s11, 229993
                  slt          a7, s9, a0
                  addi         tp, a2, -2002
814:              sra          a4, a2, s2
                  ori          tp, t6, -1386
816:              bltu         a7, t1, 826f
                  nop
                  xori         s4, gp, 2015
                  beq          sp, sp, 838f
                  sra          t4, s9, tp
                  nop
                  bltu         ra, s9, 837f
                  bne          s4, a4, 841f
                  beq          t4, a4, 829f
                  auipc        s3, 151443
826:              bne          s0, s4, 834f
                  bgeu         a4, t5, 831f
sub_4_4:          jal          ra, 19f
0:                jal          t1, 14f
1:                jal          ra, 2f
2:                jal          ra, 21f
3:                jal          ra, 11f
4:                jal          ra, 10f
5:                jal          ra, 4b
6:                jal          t1, 15f
7:                jal          ra, 9f
8:                jal          ra, 23f
9:                jal          ra, 13f
10:               jal          t1, 1b
11:               jal          t0, 17f
12:               jal          a3, 5b
13:               jal          t1, 22f
14:               jal          t1, 12b
15:               jal          ra, 3b
16:               jal          t1, 6b
17:               jal          ra, 20f
18:               jal          ra, 7b
19:               jal          ra, 18b
20:               jal          t1, 0b
21:               jal          t3, 8b
22:               jal          t1, 16b
23:               auipc        t5, 621661
                  addi         t3, a4, 29
829:              xori         t3, a4, 1760
                  bne          t1, a1, 841f
831:              nop
                  slti         t5, a3, 1379
                  bge          a0, t2, 835f
834:              ori          s2, s2, 418
835:              bgeu         tp, a3, 854f
                  slli         s6, s5, 7
837:              sltiu        t2, ra, 1941
838:              andi         t4, t1, 1254
                  slti         t4, t0, -260
                  xor          gp, s3, s5
841:              bltu         a2, a5, 854f
                  xori         s1, s7, -1592
                  sra          gp, t0, s1
                  slti         s7, a1, 513
                  auipc        a6, 224996
                  slli         s0, a4, 27
                  bltu         a2, a3, 860f
                  bltu         a3, a3, 855f
                  addi         t1, t6, -1388
                  beq          tp, t2, 851f
851:              and          a4, t0, a5
                  bne          t2, t3, 855f
                  addi         a0, ra, -1941
854:              andi         a1, a1, 1888
855:              sltu         s10, t4, ra
                  bgeu         s1, a0, 871f
                  lui          s2, 443975
                  nop
                  srli         t5, a5, 19
860:              sra          a5, a5, t1
                  bgeu         a2, s0, 872f
                  sltiu        s2, a2, 800
                  and          zero, ra, a7
                  auipc        a5, 238163
                  bgeu         s3, s3, 882f
                  srai         a6, t5, 3
                  nop
                  lui          sp, 764504
                  srl          s6, a5, gp
                  bltu         a2, t0, 890f
871:              bltu         t2, a3, 882f
872:              and          t5, a6, s8
                  slti         t5, t0, -1861
                  and          s7, t6, t4
                  sll          s11, s7, t0
                  or           a5, a3, gp
                  sra          s1, s0, s1
                  ori          t5, tp, 650
                  nop
                  sltiu        s7, s1, 797
                  bne          t2, t4, 886f
882:              nop
                  add          tp, a0, zero
                  lui          t4, 778759
                  lui          sp, 502034
886:              addi         a4, s5, -738
                  add          a6, zero, sp
                  sra          tp, s9, s11
                  ori          t3, t0, 1663
890:              slli         a2, a4, 23
                  sll          t0, ra, s6
                  auipc        s6, 995301
                  sra          gp, s8, s6
                  bge          a5, t1, 913f
                  addi         gp, t3, 886
                  sra          t4, a2, gp
                  sll          zero, t2, s7
                  ori          a4, t1, -1780
                  srli         t0, t5, 22
                  sra          t1, s11, t3
                  beq          a2, sp, 913f
                  srl          gp, t3, t5
                  beq          s6, tp, 913f
                  bne          t3, s6, 923f
                  slti         s6, s1, 1180
                  or           s7, s6, s6
                  beq          zero, t6, 908f
908:              srl          s8, a2, s6
                  lui          t5, 225533
                  sltu         t0, s1, a2
                  addi         s8, zero, -1142
                  xori         a1, a2, 1377
913:              ori          t3, s0, 1960
                  slli         a0, s3, 10
                  add          sp, zero, ra
                  blt          s4, a3, 918f
                  srl          tp, gp, t4
918:              lui          s8, 251090
                  auipc        ra, 55571
                  ori          s6, tp, 552
                  nop
                  bne          tp, s9, 942f
923:              sub          a0, gp, gp
                  slt          s11, s3, t5
                  bne          t5, a0, 940f
                  nop
                  auipc        t0, 91747
                  addi         a2, a1, -1389
                  sltu         a0, a7, a1
                  sltu         t3, t6, t0
                  bltu         t5, s3, 938f
                  slti         s1, s2, -1055
                  bgeu         t5, s6, 945f
                  addi         a5, sp, 83
                  sltiu        t0, a2, 1978
                  bge          a0, t1, 952f
                  srai         a5, t0, 2
938:              auipc        a6, 900314
                  sltu         a7, s3, s10
940:              and          a4, s4, s6
                  slli         s2, a3, 9
942:              sltu         tp, a1, t1
                  sll          a0, t4, t3
                  andi         tp, a2, 1289
945:              sra          a7, t3, t5
                  sra          a4, a6, ra
                  srl          a1, s3, zero
                  bgeu         s8, zero, 966f
                  bne          a3, s7, 960f
                  lui          t4, 9796
                  blt          t4, t1, 964f
952:              xor          s1, t1, a3
                  srl          a7, s5, a1
                  sra          a3, s4, s3
                  bge          a6, tp, 965f
                  bgeu         a4, s2, 963f
                  sltiu        a6, t5, 965
                  and          a4, s4, a6
                  srli         sp, s10, 6
960:              sra          t0, t4, t4
                  xor          s8, sp, a5
                  sub          ra, a5, a6
963:              srli         a3, s5, 21
964:              addi         ra, a3, 1293
965:              srli         a0, t2, 28
966:              sra          t1, ra, t0
                  sll          zero, ra, gp
                  auipc        ra, 580357
                  xor          t3, s3, zero
                  blt          t6, s10, 975f
                  bne          t2, s3, 974f
                  slli         s7, t5, 23
                  sra          s0, s10, a5
974:              beq          a1, s8, 987f
975:              xor          t0, t4, t3
                  and          gp, t1, t2
                  addi         s2, t5, -774
                  sltiu        s10, a7, -155
                  add          s2, t2, s4
                  sltiu        zero, s9, -963
                  sub          sp, a6, s4
                  andi         s10, a0, -830
                  sll          sp, t6, s1
                  bgeu         s6, t0, 999f
                  slti         t0, s6, 1758
                  bltu         tp, s8, 998f
987:              srli         a0, t3, 19
                  sub          s6, t2, s10
                  sra          a5, s1, t3
                  ori          s10, t5, 888
                  bltu         s0, s8, 1009f
                  add          a2, s10, s8
                  nop
                  xori         t4, s7, 711
                  nop
                  xor          a2, s7, s11
                  sltu         a6, s4, a3
998:              sltu         ra, s4, a1
999:              slti         s2, t6, -395
                  blt          a0, gp, 1017f
                  beq          tp, s11, 1009f
                  addi         a0, t4, -207
                  sltiu        t3, sp, -164
                  slti         s7, s4, 1530
                  blt          tp, a2, 1007f
                  sltiu        tp, sp, 165
1007:             or           ra, s7, s1
                  bne          s2, a1, 1019f
1009:             sltu         a3, s8, s10
                  lui          s3, 348988
                  srai         zero, t1, 30
                  or           a7, a4, gp
                  sltiu        s1, t0, -73
                  or           t5, t3, s11
                  blt          s2, a6, 1020f
                  auipc        s2, 216252
1017:             slli         s10, a3, 7
                  xori         t0, zero, -859
1019:             srl          zero, t1, t1
1020:             sltiu        t3, s6, 609
                  auipc        t4, 318582
                  xor          s7, s4, a4
                  bgeu         t2, s11, 1042f
                  bltu         a3, a5, 1043f
                  slt          s2, ra, a2
                  bne          s7, gp, 1030f
                  xor          t2, t3, a2
                  srai         t5, tp, 11
                  bltu         a6, t1, 1046f
1030:             slti         a4, a5, -690
                  sltu         s1, sp, zero
                  andi         s0, a4, 918
                  add          t2, t3, a7
                  auipc        t1, 663761
                  srli         t2, a0, 22
                  sub          s10, s8, s7
                  and          t2, s8, t3
                  lui          t0, 164437
                  lui          t1, 424692
                  srl          ra, s11, a7
                  srai         a6, s11, 19
1042:             slli         gp, s9, 3
1043:             beq          a1, t0, 1054f
                  bne          a7, s8, 1055f
                  bge          t2, s7, 1052f
1046:             slti         t2, s0, -1220
                  sll          s3, s1, s1
                  andi         t5, t4, 1233
                  bne          s4, tp, 1066f
                  auipc        s0, 137268
                  addi         s11, tp, 1671
1052:             sra          s3, sp, a1
                  srli         a3, t5, 29
1054:             auipc        a3, 688116
1055:             slti         s7, a3, -1449
                  or           gp, sp, s11
                  lui          s8, 23283
                  srl          s0, s7, s4
                  or           a1, zero, t2
                  sll          s1, s5, t1
                  ori          s4, t0, -1863
                  srl          s0, s5, a3
                  ori          gp, ra, -180
                  sub          a3, a1, tp
                  nop
1066:             bne          t2, t1, 1078f
                  bge          sp, t0, 1079f
                  srai         zero, ra, 1
                  andi         a3, a0, 1962
                  bne          a7, t5, 1089f
                  slti         s10, t6, -908
                  slt          sp, a2, a6
                  slti         s4, s5, -572
                  srli         s4, a5, 6
                  andi         t5, s2, 27
                  sltu         t0, t0, s10
                  ori          t4, s2, 202
1078:             sub          zero, tp, a5
1079:             bgeu         s1, ra, 1094f
                  slti         s6, s5, -1215
                  slt          a4, t5, tp
                  sra          ra, s4, s4
                  beq          s9, s8, 1088f
                  bgeu         s7, t4, 1094f
                  sra          t3, s0, s5
                  bltu         t6, s7, 1101f
                  srli         a7, t6, 22
1088:             slli         sp, t5, 26
1089:             add          s4, s4, s11
                  sra          ra, a2, s6
                  lui          t1, 558951
                  sltu         t2, t3, s8
                  beq          a3, t0, 1095f
1094:             xori         a2, gp, 1063
1095:             sltiu        tp, s1, -380
                  blt          tp, s8, 1104f
                  bltu         s10, t3, 1113f
                  sra          s11, tp, a2
                  nop
                  sll          t0, s4, sp
1101:             bltu         a6, t6, 1104f
                  blt          a1, s7, 1115f
                  auipc        a2, 782665
1104:             beq          a1, tp, 1121f
                  slt          t5, a7, t0
                  srai         t1, s2, 5
                  xori         zero, a1, -704
                  srai         a4, tp, 11
                  bgeu         sp, s10, 1120f
                  sra          zero, sp, zero
                  bgeu         t2, t5, 1118f
                  xor          t0, s4, s10
1113:             bne          s2, a3, 1126f
                  slti         s7, sp, 605
1115:             srli         a1, t3, 19
                  lui          s8, 129178
                  beq          s6, s11, 1121f
1118:             and          zero, t6, t3
                  sll          s2, s4, a5
1120:             lui          tp, 517037
1121:             bne          gp, s11, 1140f
                  xor          tp, a4, tp
                  bgeu         s10, a0, 1128f
                  sltu         t0, s2, ra
                  beq          a7, s10, 1143f
1126:             beq          s11, a3, 1144f
                  lui          s7, 865352
1128:             srai         a3, s9, 26
                  xori         tp, t5, 160
                  sltiu        a7, s9, -1320
                  slt          s7, a3, t2
                  andi         s0, tp, 96
                  bgeu         s10, s7, 1135f
                  bge          a4, s5, 1145f
1135:             bne          a0, s8, 1154f
                  ori          t4, t3, 2017
                  xori         gp, tp, 1338
                  add          a3, s3, s7
                  add          s11, a3, t3
1140:             bge          a4, s0, 1150f
                  addi         s11, s3, 1205
                  bne          a3, t6, 1143f
1143:             sll          a2, s1, zero
1144:             srl          s8, t1, s2
1145:             slti         s4, a7, 773
                  beq          a1, a4, 1166f
                  slli         t5, s6, 4
                  and          s2, tp, t2
                  slti         t2, a7, 1986
1150:             lui          s0, 722407
                  ori          a7, t5, -1122
                  sra          gp, s4, s0
                  addi         s6, tp, -476
1154:             srai         t0, a4, 19
                  addi         a1, s2, -1131
                  xor          s4, s6, s8
                  bltu         tp, t2, 1168f
                  bge          gp, s4, 1177f
                  ori          s7, zero, 480
                  sra          a4, a3, a5
                  add          t1, zero, a1
                  sll          s11, s6, gp
                  bne          s2, s9, 1178f
                  sra          zero, t4, t5
                  sll          s0, a0, s0
sub_4_18:         jal          ra, 3f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          ra, 1b
3:                jal          t0, 10f
4:                jal          a4, 8f
5:                jal          ra, 18f
6:                jal          a3, 7f
7:                jal          ra, 2b
8:                jal          ra, 16f
9:                jal          t1, 0b
10:               jal          t1, 6b
11:               jal          a7, 19f
12:               jal          s1, 14f
13:               jal          t1, 11b
14:               jal          t1, 13b
15:               jal          s0, 20f
16:               jal          t1, 15b
17:               jal          t2, 4b
18:               jal          s8, 17b
19:               jal          ra, 9b
20:               srli         s1, t6, 20
1166:             srli         tp, t5, 26
                  nop
1168:             nop
                  or           a7, a0, s9
                  auipc        a4, 663350
                  srli         s1, a4, 27
                  and          tp, a4, s8
                  addi         s11, a3, 184
                  addi         sp, t5, 1861
                  andi         s2, t2, 1219
                  srl          s0, s9, a1
1177:             slti         t1, t5, -16
1178:             srai         tp, a5, 18
                  addi         s8, t4, 1685
                  and          a4, zero, a0
                  srli         s2, t5, 27
                  bltu         s2, a5, 1192f
                  slti         s4, s4, -1124
                  sra          ra, s0, t2
                  and          s1, s2, a0
                  blt          tp, s0, 1188f
                  addi         t4, sp, 1180
1188:             lui          a7, 964933
                  xori         s11, t6, 262
                  slti         a0, t5, 1332
                  andi         a5, s10, -1638
1192:             srli         sp, s5, 13
                  srl          a2, s11, t0
                  bgeu         s10, t1, 1209f
                  beq          a4, a1, 1207f
                  srli         s3, tp, 8
                  slli         a7, s4, 11
                  sltiu        a0, s5, 371
                  ori          tp, s8, 1260
                  lui          t1, 178508
                  sra          sp, a5, a1
                  and          s3, s11, s4
                  and          ra, a6, sp
                  bne          s3, s5, 1223f
                  and          t2, s3, a2
                  auipc        a1, 282337
1207:             and          a0, s9, s9
                  nop
1209:             bne          s0, s2, 1220f
                  beq          t6, a1, 1215f
                  slti         s11, a0, -1226
                  sub          gp, a7, s2
                  slti         a6, t3, -1679
                  addi         s1, s2, -881
1215:             bltu         s0, sp, 1232f
                  nop
                  xor          s2, gp, t0
                  slli         s4, zero, 3
                  add          s7, s8, s5
1220:             srai         gp, a3, 1
                  bge          s10, s6, 1226f
                  xor          s0, s9, a3
1223:             srli         s2, s2, 12
                  srli         gp, t3, 21
                  blt          s4, s6, 1236f
1226:             ori          a1, s4, -419
                  slli         ra, t0, 12
                  add          t1, a0, a3
                  sub          a0, sp, sp
                  andi         t5, zero, -857
                  slli         gp, zero, 31
1232:             bgeu         a0, t0, 1250f
                  auipc        zero, 791441
                  bne          t3, s4, 1244f
                  srai         sp, s10, 12
1236:             srai         s0, gp, 26
                  srai         t1, a1, 12
                  sra          a2, s11, s2
                  auipc        zero, 262468
                  nop
                  bge          a4, t5, 1245f
                  ori          s6, a0, -1462
                  ori          a3, zero, 1308
1244:             slti         sp, t1, -1902
1245:             srli         a5, a6, 29
                  auipc        a7, 142842
                  slti         a4, gp, -818
                  xor          tp, a4, a3
                  bgeu         s9, t6, 1256f
1250:             bne          t3, ra, 1262f
                  bltu         s7, s8, 1267f
sub_4_13:         jal          ra, 0f
0:                jal          ra, 13f
1:                jal          sp, 2f
2:                jal          ra, 12f
3:                jal          ra, 18f
4:                jal          a0, 3b
5:                jal          ra, 15f
6:                jal          t1, 9f
7:                jal          t1, 4b
8:                jal          s6, 14f
9:                jal          t1, 5b
10:               jal          ra, 17f
11:               jal          t1, 16f
12:               jal          t0, 6b
13:               jal          ra, 8b
14:               jal          ra, 10b
15:               jal          ra, 7b
16:               jal          s11, 1b
17:               jal          s10, 11b
18:               sll          s7, gp, s3
                  bne          s7, zero, 1269f
                  or           s2, t4, s1
                  slli         t3, s7, 26
                  sll          s7, a1, s4
1256:             slt          a4, t2, t4
                  slt          s10, t1, s3
                  or           ra, tp, a6
                  andi         a2, s0, -510
                  and          t0, t4, s11
                  bge          s1, a4, 1280f
1262:             andi         tp, t6, -1130
                  beq          a2, s2, 1271f
                  sltiu        s0, a5, 704
                  add          s7, s7, zero
                  slt          a4, a0, sp
1267:             sub          a2, t3, a1
                  xor          a3, s6, t5
1269:             slt          ra, a1, s8
                  slt          a2, tp, s1
1271:             and          a1, s7, t1
                  slli         a1, a5, 0
                  sub          a0, a7, t3
                  slti         ra, a7, -1924
                  lui          a0, 837857
                  sll          s10, a5, s2
                  andi         s7, s9, -1003
                  lui          a6, 553041
                  srai         a0, ra, 21
1280:             bne          s5, sp, 1282f
                  addi         gp, gp, 1888
1282:             sltiu        sp, a0, -1320
                  xor          s4, gp, a2
                  srli         a2, s3, 13
                  addi         t1, gp, 1365
                  slli         a3, t5, 1
                  srl          s0, s2, t1
                  sltiu        a3, s8, 1957
                  nop
                  add          t0, s7, t3
                  slli         zero, s2, 18
                  xor          a1, t6, s9
                  srl          s11, s1, a2
                  andi         t1, s7, -929
                  lui          a2, 262776
                  lui          s0, 880935
                  bltu         s6, a0, 1317f
                  sll          s3, tp, a0
                  srli         a6, t3, 21
sub_4_20:         jal          ra, 1f
0:                jal          t1, 11f
1:                jal          t1, 9f
2:                jal          a2, 7f
3:                jal          ra, 0b
4:                jal          t1, 6f
5:                jal          ra, 3b
6:                jal          ra, 8f
7:                jal          ra, 5b
8:                jal          t1, 10f
9:                jal          ra, 4b
10:               jal          ra, 2b
11:               slli         t3, s11, 5
                  andi         t5, zero, -256
                  slt          s8, s5, ra
                  bgeu         a6, s1, 1320f
                  sltiu        s2, s5, -1275
                  bge          s4, s5, 1305f
1305:             and          gp, s1, a0
                  srl          s7, s10, s4
                  and          zero, t3, a6
                  andi         a7, t3, 1614
                  add          tp, t6, s7
                  lui          s1, 20022
                  slli         t5, a7, 2
                  nop
                  bltu         a7, a3, 1320f
                  lui          gp, 46367
                  xori         s6, s9, -98
                  sub          s10, s5, s9
1317:             slti         s7, ra, -1952
                  or           s1, t5, t6
                  nop
1320:             and          a2, a2, s7
                  beq          s8, a2, 1334f
                  and          a2, t4, t0
                  or           a5, t0, a1
                  addi         a3, t0, -742
                  auipc        s8, 376150
                  bge          a6, a2, 1339f
                  xori         s11, t2, -792
                  srai         s6, zero, 24
                  ori          t0, s6, 1692
                  blt          a5, s3, 1333f
                  ori          t4, t6, -1679
                  ori          a2, s10, 360
1333:             srai         s8, s6, 16
1334:             blt          a5, tp, 1338f
                  slt          t4, a0, s7
                  srl          a5, t5, a0
                  slt          a5, s6, t3
1338:             xori         s11, zero, -514
1339:             sll          s2, a4, a1
                  bne          zero, s10, 1343f
                  blt          a6, s11, 1346f
                  srl          a7, a2, t5
1343:             sub          s7, t5, s10
                  lui          t0, 949851
                  or           s11, a0, t3
1346:             bge          tp, gp, 1363f
                  srai         a7, s3, 11
                  slt          s10, sp, a6
                  sub          s1, s4, sp
                  nop
                  sll          a5, t5, zero
                  sra          s7, s11, s7
                  bgeu         t1, s0, 1366f
                  slli         a4, s1, 6
                  andi         s11, s2, -1351
                  sra          a0, s8, sp
                  bltu         tp, ra, 1372f
                  bne          s5, t5, 1360f
                  sltiu        tp, t3, -955
1360:             or           zero, a7, sp
                  bne          s2, s2, 1372f
                  sra          s8, s10, t3
1363:             ori          a6, s4, -1793
                  slti         t4, t2, 47
                  addi         t3, a2, -1739
1366:             xori         s4, a1, 1169
                  bgeu         a2, tp, 1380f
                  srai         s11, s6, 19
                  bltu         t2, s1, 1387f
                  slti         t1, a1, -297
                  bgeu         t4, a0, 1383f
1372:             slti         a5, s2, 1944
                  xori         s3, a0, 1177
                  xori         tp, t5, 901
                  slti         s1, s1, -404
                  or           s7, a3, gp
                  sltiu        s1, s4, -640
                  bge          a4, t2, 1385f
                  srli         t2, a3, 8
1380:             ori          t0, t4, 1243
                  lui          gp, 629513
                  sra          s8, a1, a6
1383:             blt          a2, a5, 1394f
                  bgeu         sp, t6, 1403f
1385:             auipc        t1, 1014473
                  ori          s4, s6, 1832
1387:             blt          a2, ra, 1398f
                  slti         ra, sp, -1146
                  andi         t5, a7, 795
                  and          s3, s8, a3
                  sra          zero, t4, s0
                  srai         a2, a1, 0
                  sltu         s3, t1, s6
1394:             slt          a4, t3, gp
                  srli         zero, t2, 14
                  srl          s3, a5, t6
                  and          a0, a6, s5
1398:             bltu         t4, a1, 1418f
                  bgeu         tp, a5, 1409f
                  add          s8, t4, a3
                  andi         s0, t6, -184
                  beq          s9, s7, 1420f
1403:             lui          a7, 542495
                  srai         s2, s10, 2
                  xori         a7, a5, 1647
                  sltu         gp, a2, t4
                  xori         s1, s5, -772
                  ori          s8, a0, 1889
1409:             slli         s10, ra, 31
                  blt          s5, ra, 1425f
                  and          s6, t3, a5
                  bgeu         s6, gp, 1428f
                  beq          s0, s3, 1432f
                  slti         tp, s4, -1745
                  bge          a3, a2, 1420f
                  srl          s11, s7, t1
                  add          t3, a7, sp
1418:             blt          a1, t0, 1420f
                  xori         s10, s10, 1220
1420:             srai         s2, a3, 2
                  lui          a7, 604291
                  add          tp, a0, a6
                  sub          s7, a6, s7
                  sll          s2, a3, a5
1425:             xori         a7, s9, -1318
                  or           gp, s1, s5
                  srai         a4, t1, 16
1428:             sub          s10, t1, s3
                  nop
                  nop
                  add          s10, s1, t3
1432:             beq          s4, t3, 1451f
                  sll          s4, t4, a0
                  blt          s6, a5, 1435f
1435:             or           t2, a3, t3
                  slt          a0, a1, s6
                  sltu         t0, t6, sp
                  sub          t5, s8, t2
                  xori         a7, s9, -1154
                  blt          t6, a5, 1452f
                  bne          t1, tp, 1449f
                  slti         a0, s2, 1611
                  xor          a7, sp, s0
                  lui          a7, 777756
                  and          t0, a3, s7
                  bne          a3, t1, 1456f
                  and          ra, t5, t3
                  bge          gp, s0, 1455f
1449:             slti         s1, a6, 2025
                  sll          tp, t1, a5
1451:             bltu         s2, s8, 1468f
1452:             bne          s3, s9, 1469f
                  add          tp, zero, sp
                  srl          a6, s8, t3
1455:             beq          s0, s0, 1465f
1456:             bltu         a1, s2, 1472f
                  srli         s10, t5, 14
                  bge          a3, a1, 1460f
                  sltu         a5, a3, a4
1460:             andi         t4, ra, 1978
                  nop
                  bge          s10, a7, 1477f
                  and          a0, t2, s8
                  nop
1465:             sltu         tp, a5, ra
                  srli         zero, ra, 24
                  ori          ra, t4, -86
1468:             slti         s7, a1, 1591
1469:             sra          s3, t5, s11
                  and          a0, a1, s9
                  bge          t3, a5, 1473f
1472:             bne          s1, a2, 1483f
1473:             xori         s11, s7, 1545
                  xor          sp, a6, a2
                  lui          s11, 56565
                  bge          a5, a6, 1483f
1477:             bgeu         t1, t1, 1478f
1478:             beq          s2, a7, 1497f
                  andi         sp, a7, 1419
                  ori          a0, a5, 1774
                  addi         s4, a4, 437
                  sltu         zero, zero, t2
1483:             slt          s1, s9, s1
                  bltu         a6, a2, 1497f
                  lui          s7, 784853
                  slti         a0, zero, -1269
                  sltu         t5, s7, t3
                  andi         s10, s6, 275
                  andi         t3, gp, -548
                  slti         a0, s5, 757
                  xori         s2, a2, -798
                  sub          ra, a0, t1
                  xori         a4, a2, 36
                  and          s4, s9, s8
                  bge          t6, a2, 1499f
                  beq          s7, s1, 1515f
1497:             or           s1, ra, s7
                  andi         a2, s6, -1487
1499:             srli         t2, t0, 27
                  addi         a6, s10, 1152
                  addi         gp, s1, 1186
                  lui          s4, 234008
                  ori          a1, a3, -1481
                  ori          s8, t3, -746
                  slt          a5, sp, t3
                  srl          s6, a2, s10
                  sltiu        s7, t1, -269
                  xori         a5, s6, 1784
                  nop
                  srl          t2, t3, t1
                  sll          tp, zero, s10
                  srai         a4, s1, 0
                  add          a0, a0, a0
                  sltu         t3, t4, s8
1515:             beq          t3, a0, 1518f
                  xori         a6, s8, 1561
                  andi         a4, t3, -60
1518:             ori          t3, ra, 948
                  slt          zero, a5, a3
                  blt          t0, s11, 1532f
                  srai         a3, a1, 5
                  srl          s2, a3, ra
                  srl          zero, tp, a6
                  nop
                  bgeu         tp, a1, 1542f
                  bltu         a1, a7, 1534f
                  slti         a2, t3, -833
                  sll          zero, t4, t4
                  sra          a0, zero, s3
                  srl          ra, s11, s2
                  slti         s11, t2, -61
1532:             auipc        t3, 316900
                  andi         t4, s2, -1039
1534:             add          t0, s5, t6
                  xori         t5, a7, 1196
                  srl          s10, s11, s11
                  sltiu        t3, a0, -633
                  slt          a5, gp, a7
                  ori          t5, s8, -1236
                  bne          a4, t5, 1550f
                  srl          a3, s11, t5
1542:             sra          a6, a2, a6
                  slt          s4, s4, a6
                  add          s8, s7, t2
                  srl          s2, t2, t4
                  ori          ra, t6, -804
                  or           s6, s11, s11
                  sra          a1, s8, s5
                  blt          t3, zero, 1554f
1550:             addi         s6, s6, 495
                  bne          ra, s10, 1570f
                  sltu         a5, gp, s11
                  nop
1554:             bge          t4, t3, 1574f
                  or           s4, s8, s10
                  slt          a0, sp, a1
                  ori          t1, a2, -2021
                  andi         t4, t1, 97
                  slti         s8, s10, 1660
                  and          s0, s7, s6
                  bge          s8, s4, 1576f
                  sll          s3, s3, t5
                  bgeu         t3, s1, 1575f
                  sra          a5, t1, t1
                  blt          s7, ra, 1576f
                  bge          s11, s7, 1584f
                  sll          s10, s1, t3
                  slt          s10, a6, zero
                  andi         t1, a0, -617
1570:             sub          s8, s8, a4
                  andi         ra, s4, 1241
                  bne          s8, a6, 1585f
                  bge          s11, s2, 1578f
1574:             add          s7, t3, s9
1575:             addi         a7, s1, -879
1576:             or           a1, s5, tp
                  nop
1578:             srai         t3, s5, 15
                  addi         gp, t6, -1718
                  beq          s11, s0, 1587f
                  bgeu         gp, s2, 1592f
                  beq          s8, a3, 1600f
                  xor          t1, a5, s6
1584:             srai         t1, s4, 20
1585:             add          t0, t1, a2
                  ori          zero, s0, -741
1587:             addi         s0, a4, -1478
                  xori         t3, s7, -1584
                  sra          a1, t2, a4
                  slti         a1, t6, 632
                  addi         ra, tp, 1467
1592:             bne          t5, a2, 1595f
                  bltu         sp, a6, 1600f
                  bltu         ra, t5, 1606f
1595:             srli         s3, s2, 5
                  auipc        t2, 160750
                  sltu         s8, s6, a4
                  or           s2, t6, t6
                  sub          a2, a7, a6
1600:             bne          a3, s11, 1604f
                  add          t3, a0, t4
                  bgeu         a6, s5, 1615f
                  and          s0, a2, sp
1604:             auipc        a5, 209872
                  slt          a1, a0, s2
1606:             srl          t0, s11, t1
                  slli         s10, t2, 2
                  sltiu        s8, s8, 1982
                  auipc        s0, 280701
                  auipc        s2, 699540
                  slti         s7, zero, 183
sub_4_1:          jal          ra, 20f
0:                jal          ra, 3f
1:                jal          s7, 17f
2:                jal          t1, 7f
3:                jal          ra, 18f
4:                jal          t1, 22f
5:                jal          ra, 12f
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          ra, 24f
9:                jal          ra, 4b
10:               jal          t5, 1b
11:               jal          a0, 25f
12:               jal          sp, 14f
13:               jal          ra, 9b
14:               jal          ra, 19f
15:               jal          ra, 5b
16:               jal          s4, 23f
17:               jal          ra, 6b
18:               jal          ra, 8b
19:               jal          ra, 2b
20:               jal          ra, 16b
21:               jal          s6, 13b
22:               jal          ra, 10b
23:               jal          t1, 21b
24:               jal          ra, 15b
25:               slli         t3, a5, 19
                  bge          t2, t5, 1623f
                  auipc        s11, 869926
                  beq          s5, s2, 1630f
1615:             sra          sp, s5, s8
                  sub          tp, s5, a5
                  addi         ra, ra, 1213
                  sub          t1, sp, tp
                  sub          t4, zero, s9
                  auipc        a2, 22378
                  xor          s7, t5, s7
                  andi         t2, tp, 1529
1623:             bltu         s10, a5, 1640f
                  bgeu         sp, gp, 1641f
                  auipc        s4, 390281
                  and          s2, zero, ra
                  srli         s0, s1, 25
                  slti         ra, s7, -1527
                  beq          s7, a2, 1642f
1630:             andi         a4, t0, 1321
                  auipc        ra, 61169
                  slli         s0, s1, 10
                  srl          t1, t1, a1
                  or           tp, s2, t0
                  srli         s2, s0, 10
                  xor          a4, a4, s11
                  addi         a4, tp, -1847
                  bgeu         t5, s5, 1646f
                  bltu         s2, zero, 1646f
1640:             sltu         a1, s4, s7
1641:             slt          a5, zero, t5
1642:             bge          ra, zero, 1661f
                  slli         s7, t4, 18
                  bne          ra, s3, 1655f
                  addi         sp, s9, 1478
1646:             sltiu        a4, t0, 1678
                  slli         a6, a5, 3
                  addi         t4, t1, -1543
                  and          ra, t0, s7
                  bltu         t6, t2, 1661f
                  bne          sp, s3, 1661f
                  xori         t5, t2, -100
                  srai         t1, s11, 29
                  andi         t5, tp, 130
1655:             xor          a0, s8, s10
                  sra          t1, t4, t0
                  slli         a0, s9, 28
                  lui          a0, 527064
                  srl          s3, t1, t4
                  slti         a7, a2, -1161
1661:             or           a0, gp, s5
                  srl          s2, a1, a7
                  and          gp, s2, t5
                  xori         a7, ra, -1356
                  xor          s8, s4, s7
                  sll          s4, a7, a0
                  sltu         s4, s1, tp
                  srai         s7, s9, 3
                  beq          s10, s2, 1674f
                  srli         s3, sp, 13
                  bge          a0, s9, 1686f
                  sll          s10, t3, s7
                  sll          s6, t6, s3
1674:             ori          s0, s10, -412
                  sltiu        a2, a1, -1626
                  sll          t2, s0, t6
                  auipc        a6, 422992
                  sltu         s11, tp, s4
                  srl          s0, gp, t4
                  slt          gp, s1, t0
                  slt          t3, s8, s9
                  blt          a2, t2, 1687f
                  bne          gp, t0, 1702f
                  andi         s2, zero, 931
                  srl          a3, s4, t4
1686:             or           a2, zero, t3
1687:             srai         t2, a2, 1
                  ori          t4, t3, -1140
                  add          t1, a7, s10
                  bltu         t3, sp, 1708f
                  sltiu        a7, t3, 1858
                  sltu         t3, a5, t3
                  ori          a0, a5, -799
                  blt          s7, t0, 1709f
                  bgeu         s6, s1, 1714f
                  xor          gp, a0, a7
                  xori         ra, t0, -1541
                  blt          a3, tp, 1699f
1699:             sltiu        a5, a4, -650
                  slt          a2, t1, t3
                  sra          s3, zero, a6
1702:             blt          s6, t4, 1720f
                  slti         a4, s9, 180
                  xor          a3, a0, t0
                  ori          tp, gp, -1218
                  andi         t3, ra, -1172
                  sll          s0, s7, a0
1708:             slt          zero, t4, a1
1709:             slli         t3, s10, 18
                  lui          s4, 557175
                  beq          t5, t2, 1723f
                  beq          s1, a7, 1714f
                  addi         tp, t1, -1453
1714:             beq          s11, s5, 1734f
                  sll          t4, s7, t0
                  nop
                  or           s2, a0, s1
                  slli         s6, a3, 19
                  add          a7, a7, s4
1720:             bltu         s7, t2, 1722f
                  sltiu        t4, t3, -638
1722:             nop
1723:             ori          a0, s1, -94
                  xori         a5, a1, -2045
                  xori         s8, a1, 1050
                  add          t0, s11, s5
                  ori          s1, s3, 238
                  nop
                  srli         t1, a7, 15
                  lui          s11, 390145
                  auipc        a7, 795894
                  beq          t4, a7, 1742f
                  andi         a4, s6, 792
1734:             srai         a4, s8, 13
                  srai         a2, t2, 26
                  sub          a2, a0, s6
                  sll          s2, ra, s5
                  bge          a1, t2, 1750f
                  sltu         gp, a7, a4
                  add          t4, s4, s0
                  auipc        tp, 764856
1742:             auipc        s0, 314646
                  add          a6, zero, s3
                  ori          a4, s9, -113
                  xori         ra, s8, -1149
                  slti         a4, ra, 1180
                  auipc        s4, 602265
                  addi         t0, s11, 1229
                  blt          t0, s3, 1762f
1750:             sll          a7, s11, t1
                  xor          s10, t1, sp
                  slti         t3, t0, -1381
                  xori         s11, t5, -69
                  sltu         a7, t4, t4
                  srl          a1, t1, s9
                  slti         t3, s10, -136
                  sltiu        s6, s7, 1932
                  slti         t2, s4, -1029
                  slt          a7, t0, s3
                  srl          a1, s7, sp
                  or           a2, a7, zero
1762:             blt          a7, s2, 1774f
                  andi         gp, s5, -987
                  sltu         a5, s3, t1
                  and          a4, a3, a2
                  sltu         s0, a7, s8
                  sltu         a2, t0, a6
                  andi         t3, s9, -1573
                  slli         s4, a5, 10
                  ori          sp, a3, 379
                  auipc        zero, 590866
                  slt          zero, t1, a5
                  srai         s4, s4, 3
1774:             auipc        s1, 948371
                  bltu         a0, t4, 1780f
                  blt          s0, s7, 1780f
                  sll          s1, s5, s0
                  slti         a2, t4, -229
                  andi         a7, s6, 1670
1780:             sll          a6, s8, t6
                  xori         zero, s10, 954
                  slt          s0, a1, t2
                  lw           ra, 4(s5)
                  sltu         s6, t2, t2
                  addi         s5, s5, 60
                  auipc        s2, 51420
2563:             addi x26, x1, 1
2563:             jalr x26, x26, 0
sub_5:            sltu         t1, a6, t1
                  blt          s2, s2, sub_5_stack_p
                  add          a5, a5, s7
sub_5_stack_p:    addi         s5, s5, -20
                  sw           ra, 4(s5)
                  and          s3, a6, a2
                  slli         gp, s4, 9
                  or           zero, a0, s9
                  slt          s2, s0, s0
                  srl          a2, s6, zero
                  slti         s2, t2, 1549
                  sra          sp, a0, a6
                  slt          tp, s11, s8
sub_5_1:          jal          ra, 21f
0:                jal          ra, 4f
1:                jal          t1, 22f
2:                jal          t1, 1b
3:                jal          ra, 16f
4:                jal          ra, 17f
5:                jal          t1, 18f
6:                jal          tp, 7f
7:                jal          ra, 13f
8:                jal          t1, 14f
9:                jal          ra, 10f
10:               jal          t4, 3b
11:               jal          s10, 9b
12:               jal          t1, 15f
13:               jal          ra, 19f
14:               jal          t1, 0b
15:               jal          ra, 5b
16:               jal          ra, 2b
17:               jal          s2, 20f
18:               jal          ra, 11b
19:               jal          s0, 8b
20:               jal          s3, 12b
21:               jal          sp, 6b
22:               srl          s6, s3, a7
sub_5_0:          jal          ra, 11f
0:                jal          t1, 28f
1:                jal          a6, 7f
2:                jal          sp, 25f
3:                jal          a5, 10f
4:                jal          sp, 2b
5:                jal          tp, 22f
6:                jal          a7, 26f
7:                jal          t1, 18f
8:                jal          t1, 9f
9:                jal          sp, 4b
10:               jal          t1, 24f
11:               jal          ra, 3b
12:               jal          ra, 23f
13:               jal          ra, 6b
14:               jal          a3, 17f
15:               jal          sp, 1b
16:               jal          t1, 14b
17:               jal          t0, 5b
18:               jal          tp, 0b
19:               jal          t0, 15b
20:               jal          ra, 27f
21:               jal          ra, 16b
22:               jal          ra, 19b
23:               jal          ra, 13b
24:               jal          t1, 12b
25:               jal          ra, 21b
26:               jal          ra, 20b
27:               jal          ra, 8b
28:               add          s11, s9, gp
                  add          a1, s10, ra
                  andi         s10, s4, 1192
                  xori         t0, t5, -1811
                  and          t3, a7, s2
                  xor          s10, a5, s6
                  sltiu        t4, s9, 692
                  and          a5, s5, tp
                  auipc        s2, 389624
                  andi         t0, gp, 796
                  nop
                  srli         s3, t0, 14
                  blt          a7, t5, 15f
                  blt          t1, a1, 30f
                  sltiu        s4, t3, -265
                  nop
15:               nop
                  addi         s11, s8, 1322
                  beq          s5, a7, 37f
                  slt          sp, t2, t2
                  srl          a2, t0, t4
                  xor          tp, a6, gp
                  slli         t5, t2, 4
                  addi         s8, a7, -605
                  srai         t0, s11, 2
                  blt          s6, t2, 25f
25:               srl          s0, s6, a6
                  xor          a1, a0, tp
                  srl          s4, ra, t4
                  nop
                  nop
30:               bne          a7, t1, 48f
                  bgeu         s4, t6, 38f
                  bltu         s5, a3, 38f
                  nop
                  and          s7, sp, a2
                  nop
                  and          s6, sp, a3
37:               nop
38:               slti         t0, tp, 1222
                  slti         a7, a7, -373
                  andi         a6, s2, -718
                  ori          a4, tp, 1454
                  add          zero, ra, a1
                  slt          tp, t5, a7
                  slti         sp, a6, -411
                  lui          t3, 243845
                  sll          a6, zero, t4
                  blt          a0, t4, 62f
48:               nop
                  xori         a2, s7, 1446
                  blt          t2, t1, 57f
                  add          s1, t2, a6
                  ori          t5, sp, -682
                  sub          s0, a5, a3
                  lui          t1, 569594
                  auipc        t0, 866656
                  lui          t2, 452486
57:               or           s10, s4, a2
                  lui          s11, 946348
                  bge          tp, a3, 72f
                  srl          s2, zero, s1
                  sra          s3, a6, a7
62:               srl          zero, t5, s5
                  addi         t5, s11, 845
                  bge          s4, gp, 70f
                  beq          a1, t0, 72f
                  nop
                  sltiu        sp, a4, 1085
                  andi         t1, s4, 279
                  sll          s4, a5, s0
70:               nop
                  beq          t0, t0, 89f
72:               ori          s11, zero, 1157
                  sub          tp, a1, t1
                  xori         a1, a3, -1380
                  andi         s11, s9, 1262
                  srli         zero, ra, 22
                  lui          gp, 1043158
                  slt          s0, t1, a1
                  auipc        a4, 112709
                  bgeu         s8, s7, 83f
                  bne          s2, t1, 83f
                  bltu         s2, s7, 100f
83:               sra          s3, s2, zero
                  sll          t2, s9, t3
                  bge          t0, s5, 89f
                  sltiu        ra, a0, 1516
                  sll          t0, a7, tp
                  ori          a4, sp, 820
89:               addi         t5, s2, -794
                  add          t4, a3, t2
                  slli         sp, a0, 24
                  bne          t5, s10, 107f
                  srli         t1, t3, 12
                  sub          t4, t6, a0
                  srai         t1, t3, 28
                  add          a0, a5, s11
                  or           s6, s1, s2
                  bgeu         t0, s10, 109f
                  ori          a1, t1, 157
100:              xor          s6, s11, a7
                  srai         t3, a5, 7
                  xori         t0, s11, -1406
                  sltu         t5, s8, s10
                  srli         a0, gp, 0
                  andi         s8, t6, 223
                  beq          s1, s1, 112f
107:              slli         s7, s9, 18
                  xori         gp, gp, -183
109:              xori         t3, a5, 754
                  srai         s8, t4, 0
                  add          a0, t1, a5
112:              sltu         t5, s7, s11
                  auipc        t4, 696236
                  xori         s10, s9, 40
                  lw           ra, 4(s5)
                  slli         zero, s6, 12
                  addi         s5, s5, 20
                  andi         sp, sp, -1711
                  sll          s10, a5, s6
187:              addi x1, x1, 0
187:              jalr x1, x1, 0
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
                  add x31, x21, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x28, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x28, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x28, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x28, x5, ecall_handler
                  li x5, 0x1
                  beq x28, x5, instr_fault_handler
                  li x5, 0x5
                  beq x28, x5, load_fault_handler
                  li x5, 0x7
                  beq x28, x5, store_fault_handler
                  li x5, 0xc
                  beq x28, x5, pt_fault_handler
                  li x5, 0xd
                  beq x28, x5, pt_fault_handler
                  li x5, 0xf
                  beq x28, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x21, x31, zero
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
                  add x21, x31, zero
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
                  add x21, x31, zero
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
                  add x21, x31, zero
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
                  add x21, x31, zero
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
                  add x21, x31, zero
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
