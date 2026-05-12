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
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x31, kernel_stack_end

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
                  li x0, 0xfa8c1d83
                  li x1, 0x5f837143
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xc
                  li x5, 0x80000000
                  li x6, 0xd26e6ee
                  li x7, 0xf3b9b7fa
                  li x8, 0x8032ea2d
                  li x9, 0x80000000
                  li x10, 0x6394ac2e
                  li x11, 0x1
                  li x12, 0xe6957396
                  li x13, 0xf0bc0725
                  li x14, 0x2a89e6f8
                  li x15, 0xbcbcd1f0
                  li x16, 0x57c7dfad
                  li x17, 0x80000000
                  li x19, 0x7f9404eb
                  li x20, 0x0
                  li x21, 0xec1c0781
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x2
                  li x25, 0x1
                  li x26, 0xc
                  li x27, 0x3
                  li x28, 0x80000000
                  li x29, 0x1
                  li x30, 0x0
                  la x18, user_stack_end
main:             and          a7, tp, t4
                  xori         s0, t3, -1629
                  srai         a0, a4, 23
                  sltu         a6, a7, sp
                  la           s4, sub_1
                  sltu         tp, s5, s6
                  addi         s4, s4, -860
                  auipc        t0, 347365
                  beq          a6, t5, main_j4 #branch to jump instr
                  and          tp, t0, s4
                  sub          a5, t2, s9
main_j4:          jalr         s3, s4, 860 #jump main -> sub_1
main_5:           jal          s3, 2f
0:                jal          ra, 3f
1:                jal          s7, 6f
2:                jal          s5, 4f
3:                jal          ra, 5f
4:                jal          s5, 11f
5:                jal          gp, 9f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          s7, 1b
9:                jal          t1, 12f
10:               jal          a7, 0b
11:               jal          ra, 7b
12:               jal          ra, 13f
13:               andi         t4, a2, -333
main_1:           jal          s3, 16f
0:                jal          ra, 15f
1:                jal          t1, 14f
2:                jal          ra, 1b
3:                jal          t0, 9f
4:                jal          ra, 11f
5:                jal          ra, 0b
6:                jal          ra, 21f
7:                jal          ra, 19f
8:                jal          ra, 20f
9:                jal          t1, 10f
10:               jal          tp, 17f
11:               jal          t2, 5b
12:               jal          t1, 6b
13:               jal          s10, 3b
14:               jal          ra, 8b
15:               jal          ra, 12b
16:               jal          t4, 2b
17:               jal          ra, 4b
18:               jal          t1, 13b
19:               jal          ra, 18b
20:               jal          ra, 7b
21:               auipc        t4, 602651
main_2:           jal          s3, 6f
0:                jal          ra, 8f
1:                jal          ra, 18f
2:                jal          sp, 19f
3:                jal          ra, 21f
4:                jal          t3, 0b
5:                jal          ra, 14f
6:                jal          ra, 10f
7:                jal          t0, 20f
8:                jal          gp, 1b
9:                jal          s3, 22f
10:               jal          t1, 23f
11:               jal          t0, 5b
12:               jal          ra, 9b
13:               jal          ra, 12b
14:               jal          t5, 4b
15:               jal          t1, 3b
16:               jal          ra, 2b
17:               jal          ra, 7b
18:               jal          ra, 26f
19:               jal          ra, 11b
20:               jal          ra, 28f
21:               jal          a5, 24f
22:               jal          ra, 15b
23:               jal          t1, 25f
24:               jal          t1, 17b
25:               jal          ra, 16b
26:               jal          a7, 27f
27:               jal          ra, 13b
28:               slti         s4, s6, -619
main_3:           jal          s3, 8f
0:                jal          ra, 22f
1:                jal          s5, 9f
2:                jal          ra, 4f
3:                jal          ra, 18f
4:                jal          ra, 6f
5:                jal          ra, 15f
6:                jal          ra, 21f
7:                jal          sp, 14f
8:                jal          a1, 1b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          ra, 13f
12:               jal          ra, 0b
13:               jal          ra, 20f
14:               jal          ra, 2b
15:               jal          t1, 17f
16:               jal          ra, 7b
17:               jal          ra, 19f
18:               jal          ra, 11b
19:               jal          ra, 16b
20:               jal          t1, 12b
21:               jal          s0, 10b
22:               sltu         a4, s1, s5
                  sltiu        t0, ra, 682
                  sltu         tp, ra, t3
                  sll          sp, s0, t0
                  bltu         s11, a6, 10f
                  beq          a5, a0, 23f
                  nop
                  sub          t1, t4, s1
                  sra          tp, gp, s7
                  auipc        s11, 197942
                  and          zero, t1, tp
10:               addi         tp, a4, -931
                  srl          a1, t0, s8
                  nop
                  auipc        zero, 53657
                  la           s3, sub_2
                  addi         s3, s3, -632
                  slti         s11, zero, -376
                  nop
                  and          zero, t4, gp
                  nop
main_j2:          jalr         s3, s3, 632 #jump main -> sub_2
                  slli         a3, s8, 22
                  or           a4, a0, a0
                  beq          s5, t5, 32f
                  and          t4, a1, t1
                  add          s3, ra, a1
                  srli         a6, a2, 20
                  xor          s8, ra, s4
                  ori          a1, t2, -1381
                  beq          gp, t5, 32f
                  sll          t2, t2, a3
                  blt          t0, s1, 35f
                  sra          s7, t5, zero
23:               ori          a0, s1, -1040
                  sub          a6, a2, s2
                  lui          s8, 810276
                  slti         s7, a6, -1263
                  sub          s11, s10, sp
                  slti         t1, t1, 661
                  srli         a3, zero, 31
                  bne          s4, a7, 47f
                  add          a5, s2, sp
32:               slli         s0, sp, 20
                  nop
                  auipc        t1, 454431
35:               xor          s10, s7, s6
                  add          gp, t0, s9
                  srl          s4, s0, a3
                  bne          tp, t5, 39f
39:               ori          s5, a6, -329
                  xor          a7, a1, t3
                  beq          t5, s7, 44f
                  xor          s8, t0, s8
                  srl          t5, a5, tp
44:               sra          t0, a2, sp
                  beq          s9, s7, 62f
                  addi         s7, t1, 770
47:               xor          s3, gp, a2
                  auipc        s5, 1032140
                  bltu         tp, s2, 50f
50:               sltu         s1, t3, t6
                  sll          t0, a5, a2
                  xori         a3, a1, -1829
                  auipc        a4, 171421
                  xori         sp, a3, 400
                  xori         a2, a5, 1413
                  bne          s10, t2, 69f
                  ori          a5, s5, -1226
                  beq          t0, s8, 59f
59:               lui          tp, 974445
                  sltiu        s9, s7, -1358
                  andi         tp, t5, 23
62:               sltiu        t4, s8, -312
                  slt          zero, t4, tp
                  blt          gp, t3, 83f
                  bge          a4, s2, 81f
                  slti         a4, s1, 1789
                  or           s4, sp, s6
                  auipc        s0, 10946
69:               nop
                  beq          t1, t5, 73f
                  srli         gp, a2, 18
                  slli         t2, a1, 16
73:               nop
                  beq          a7, gp, 93f
                  sltu         a6, a6, t1
                  lui          t0, 443647
                  sub          t2, a4, s9
                  sub          s8, a4, a1
                  slti         s0, a0, -1740
                  and          zero, s10, a4
81:               bgeu         a4, tp, 88f
                  and          s0, s7, a2
83:               bge          s10, t0, 97f
                  beq          a6, t3, 103f
                  bgeu         s0, s6, 98f
                  blt          t4, a6, 90f
                  bgeu         s2, ra, 103f
88:               sub          t0, a5, s0
                  bgeu         a6, a0, 97f
90:               slti         ra, s5, -2038
                  sltu         t0, tp, zero
                  bne          s9, sp, 112f
93:               sltu         ra, zero, t0
                  sltiu        s5, t6, -1924
                  add          s5, a6, t5
                  blt          s6, t1, 109f
97:               sltiu        ra, s6, -1846
98:               xor          a3, s6, t1
                  ori          s8, t2, 1365
                  blt          a0, s9, 113f
                  bltu         s6, s2, 103f
                  sra          s4, a5, a7
103:              xor          s10, t3, a1
                  addi         tp, a1, -873
                  sltu         a4, gp, s0
                  bge          s6, s6, 119f
                  bge          s11, sp, 110f
                  srl          a1, ra, a3
109:              and          t1, a3, s4
110:              and          t4, s11, s1
                  bge          t1, s2, 131f
112:              slli         s5, t0, 11
113:              srai         gp, ra, 23
                  srli         s9, s3, 21
                  bgeu         s4, s3, 118f
                  srl          sp, t3, s6
                  sltiu        t4, s11, -32
118:              bgeu         a4, s5, 137f
119:              bltu         s2, a6, 135f
                  auipc        s3, 339379
                  bge          s1, a0, 134f
                  srai         a6, t6, 9
                  nop
                  slti         s10, a6, -766
                  blt          s5, a4, 138f
                  blt          s4, zero, 133f
                  sll          a4, a3, a7
                  srl          s8, s4, sp
                  xori         s9, t5, 317
                  or           a7, a1, t4
131:              sltu         s5, s10, ra
                  bge          zero, t2, 135f
133:              xor          t4, a6, zero
134:              slli         t2, a5, 27
135:              xor          a3, zero, t3
                  sub          s7, s6, zero
137:              srai         ra, a1, 13
138:              sltiu        s11, a5, -1486
                  srli         a3, zero, 11
                  blt          gp, gp, 141f
141:              sll          t2, s3, t6
                  ori          s11, s10, -320
                  srli         tp, s10, 30
                  bge          t1, zero, 163f
                  beq          s3, s6, 158f
                  sub          a5, s4, s0
                  sltiu        s7, a0, 1431
                  add          a3, t4, s7
                  srli         s9, t1, 20
                  or           a5, s9, t3
                  lui          s1, 232040
                  ori          t4, s2, 1701
main_4:           jal          s3, 22f
0:                jal          t1, 21f
1:                jal          sp, 16f
2:                jal          s7, 15f
3:                jal          ra, 13f
4:                jal          t1, 24f
5:                jal          t1, 6f
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          a7, 11f
9:                jal          ra, 5b
10:               jal          sp, 8b
11:               jal          t1, 17f
12:               jal          gp, 0b
13:               jal          ra, 23f
14:               jal          a3, 3b
15:               jal          ra, 19f
16:               jal          gp, 10b
17:               jal          t1, 4b
18:               jal          s7, 25f
19:               jal          s9, 26f
20:               jal          ra, 14b
21:               jal          ra, 9b
22:               jal          ra, 7b
23:               jal          ra, 12b
24:               jal          gp, 18b
25:               jal          ra, 20b
26:               xor          a2, a1, a4
                  srli         s5, t4, 4
                  and          t1, t6, a4
                  bltu         t2, s10, 174f
                  addi         t1, a7, 1066
                  bgeu         s7, t3, 158f
158:              beq          ra, s1, 159f
159:              bge          tp, a0, 176f
                  ori          gp, a4, 1646
                  andi         a5, s11, 1462
                  and          s5, t1, t2
163:              slti         a0, s8, 72
                  sra          a5, a5, a2
                  nop
                  slt          t1, t4, a3
                  beq          s7, s3, 186f
                  sltu         t5, t2, s4
                  la           s5, sub_2
                  sll          t2, a0, a4
                  andi         t3, s3, 1047
                  sltu         s8, t1, s3
                  srai         ra, t3, 24
                  xori         t1, a1, -376
                  addi         s5, s5, -254
                  sltu         s9, t1, ra
                  auipc        zero, 912666
                  auipc        ra, 856125
                  xori         a1, t6, 1649
main_j3:          jalr         s3, s5, 254 #jump main -> sub_2
                  add          t4, s1, a3
                  auipc        a7, 855242
                  bge          s1, s9, 184f
                  beq          a3, t3, 179f
                  xori         t2, s4, 649
                  sra          t1, s3, a1
174:              addi         s3, a2, -1732
                  blt          t6, s5, 182f
176:              sltiu        s10, s0, 237
                  sll          s8, tp, t5
                  slt          t5, s6, ra
179:              bne          a1, s7, 192f
                  slti         s0, sp, 1692
                  sltiu        t1, zero, -896
182:              nop
                  slli         a4, s7, 24
184:              sltiu        a2, zero, -2030
                  beq          a6, a0, 204f
186:              blt          a5, s4, 188f
                  nop
188:              slt          zero, s3, a5
                  srai         s10, s9, 24
                  auipc        s0, 367213
                  nop
192:              auipc        a1, 266637
                  sll          a4, s3, sp
                  srl          s3, s3, s6
                  beq          s5, ra, 208f
                  auipc        s0, 27345
                  bge          a0, gp, 201f
                  bltu         gp, t2, 201f
                  addi         t5, s7, -719
                  bge          ra, t0, 216f
201:              sll          ra, t6, a4
                  bltu         s3, s4, 216f
                  ori          s9, t6, 1983
204:              auipc        gp, 483979
                  or           t0, a6, t2
                  xori         s1, s11, 869
                  slt          t3, s2, tp
208:              bne          s3, s7, 221f
                  nop
                  addi         t4, s5, 1346
                  slt          s11, t6, a6
                  or           a2, s6, t2
                  srai         t2, a7, 9
                  xori         a3, s10, 1874
                  sll          t4, a6, tp
216:              srli         t3, a4, 3
                  srl          s3, s3, s1
                  ori          t0, t6, 1889
                  slt          a0, s11, s3
                  and          ra, s6, t5
221:              sra          gp, s8, a3
                  sltiu        a5, s2, 408
                  slti         s11, s5, 1615
                  srai         gp, a1, 16
                  nop
                  slti         a6, s1, 1078
                  and          sp, s10, sp
                  sll          t0, t6, gp
                  lui          t2, 769061
                  and          a2, s2, s3
                  bne          t6, t2, 251f
                  sub          s0, a5, s1
                  blt          s3, s1, 250f
                  lui          gp, 779517
                  or           t4, s11, a6
                  slti         a4, t4, -873
                  slt          a2, s3, a5
                  xori         a6, s7, -935
                  bgeu         a3, t2, 259f
                  sub          t2, s1, s10
                  ori          a1, t5, 615
                  slli         a5, t6, 28
                  sra          a2, a6, tp
                  bgeu         t2, a1, 257f
                  or           a5, s2, s7
                  or           sp, a1, s2
                  sub          ra, a7, a2
                  slli         t3, a0, 13
                  sltu         t3, s7, s11
250:              andi         a3, tp, 594
251:              bgeu         s1, zero, 270f
                  srl          a7, zero, t0
                  xori         a1, t1, 1451
                  bge          s10, s10, 267f
                  bgeu         a2, gp, 257f
                  slt          s8, t5, a7
257:              srli         a3, s4, 26
                  sltu         s0, tp, tp
259:              and          t5, t2, s9
                  sub          gp, t4, a7
                  sub          t1, s11, a3
                  andi         zero, s7, -204
                  addi         a2, t1, -1199
                  blt          t4, gp, 280f
                  auipc        t0, 699501
                  auipc        a4, 398572
267:              sub          ra, s2, a3
                  bgeu         t3, t0, 284f
                  xor          zero, a1, t2
270:              ori          s0, zero, 615
                  srli         s1, a2, 13
                  and          a2, s1, s11
                  lui          t0, 1045681
                  bgeu         s11, s2, 287f
                  nop
                  beq          s2, t2, 296f
                  add          a4, t5, a6
                  bge          s11, ra, 285f
                  la           a5, sub_3
                  ori          gp, t3, -383
                  addi         a5, a5, 401
                  srli         t2, ra, 26
                  and          s3, a0, s7
                  sll          zero, s10, s7
                  andi         s1, t0, -1212
main_j1:          jalr         s3, a5, -400 #jump main -> sub_3
                  sub          s11, t1, t3
280:              slti         a3, a7, -1623
                  and          s5, s8, s6
                  sll          a2, s8, a7
                  nop
284:              srai         t4, t1, 29
285:              srai         a3, a3, 0
                  addi         ra, t2, -344
287:              blt          s7, s11, 301f
                  srli         t4, t6, 4
                  slli         t5, s1, 27
                  slti         t3, ra, 818
                  ori          t4, s1, -1528
                  sra          gp, a6, a0
                  bne          t5, s8, 313f
                  add          a6, zero, s6
                  sltiu        gp, a0, 1461
296:              slti         gp, a6, -1367
                  and          t5, a7, ra
                  ori          s10, a7, 754
                  srl          t2, t6, s3
                  or           a1, s11, a5
301:              slti         s5, s1, 434
                  bge          ra, a7, 315f
                  and          gp, a7, s9
                  bge          s7, sp, 317f
                  srai         t5, s9, 12
                  bgeu         sp, a7, 325f
                  slti         gp, t0, 1810
                  bne          s10, gp, 327f
                  beq          sp, s8, 312f
                  slt          a0, s0, t3
                  or           s5, s1, a3
312:              bne          tp, zero, 320f
313:              slti         a0, s0, -323
                  bgeu         s2, a2, 333f
315:              slli         s10, s8, 29
                  bge          s2, s8, 319f
317:              sra          s3, t1, t1
                  and          a1, sp, t1
319:              addi         s3, a6, -1562
320:              srli         s8, t2, 26
                  xor          s9, s9, s6
                  andi         gp, s10, 1171
                  addi         a6, zero, -1553
                  srai         a5, a0, 13
325:              sra          s7, a6, tp
                  bltu         t4, a1, 337f
327:              srli         s0, s6, 6
                  bne          s11, a6, 337f
                  xori         a7, s9, -1084
                  sub          s1, tp, s3
                  auipc        s3, 271787
                  lui          zero, 706247
main_0:           jal          s3, 11f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          t1, 9f
4:                jal          ra, 13f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          a2, 4b
8:                jal          s10, 10f
9:                jal          t1, 12f
10:               jal          t1, 7b
11:               jal          s11, 3b
12:               jal          s1, 1b
13:               nop
333:              sltu         s5, t6, s11
                  nop
                  sra          s8, zero, a6
                  andi         a4, s0, 621
337:              sltiu        s7, t3, -336
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            srl          a0, t6, s6
                  sltu         s5, t3, gp
                  beq          t5, s7, sub_4_stack_p
sub_4_stack_p:    addi         s2, s2, -52
                  sltiu        a0, s7, 1033
                  sltiu        s1, zero, 1137
                  srl          s11, s6, s3
                  nop
                  srai         zero, s5, 9
                  sw           s3, 4(s2)
                  xor          s5, s2, ra
                  addi         s0, t1, -1692
                  or           gp, s9, s6
                  auipc        s11, 111888
                  slli         s0, s1, 30
                  slt          a6, s0, gp
                  ori          a7, s5, -1182
                  addi         zero, s7, -1340
                  sra          s8, ra, s3
                  la           s4, sub_5
                  sltiu        s11, s0, -1545
                  addi         s4, s4, -555
                  slli         a1, s7, 29
sub_4_j7:         jalr         s3, s4, 556 #jump sub_4 -> sub_5
sub_4_0:          jal          s3, 8f
0:                jal          ra, 2f
1:                jal          gp, 5f
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          s1, 6f
5:                jal          gp, 4b
6:                jal          ra, 15f
7:                jal          ra, 1b
8:                jal          ra, 7b
9:                jal          s0, 0b
10:               jal          ra, 16f
11:               jal          ra, 13f
12:               jal          ra, 17f
13:               jal          tp, 10b
14:               jal          t1, 3b
15:               jal          ra, 11b
16:               jal          ra, 14b
17:               andi         t4, sp, -453
                  lui          a6, 60934
                  xori         s7, tp, -879
                  srli         ra, t2, 0
                  slt          s9, t4, t2
                  slt          s7, t1, a7
                  blt          s0, tp, 21f
                  srl          ra, s3, t2
                  bgeu         t6, s4, 26f
                  or           a4, s9, t6
                  xori         t5, sp, 729
                  sltu         a5, gp, ra
                  bgeu         sp, t0, 15f
                  srai         t2, t5, 11
                  slli         a2, a4, 11
                  bltu         s10, ra, 16f
15:               xor          s0, a2, a3
16:               xori         t5, t2, 749
                  xori         ra, a6, 782
                  bne          a5, t0, 38f
                  andi         a0, ra, -1657
                  bge          a4, s8, 40f
21:               sub          t1, a5, s0
                  sltiu        a5, t2, -1053
                  nop
                  slt          a3, t0, s10
                  sub          s7, s10, a6
26:               bltu         t5, s3, 43f
                  andi         s3, t6, 2047
                  slt          s1, t5, t3
                  sltiu        tp, a3, -998
                  nop
                  blt          s5, a0, 47f
                  sra          s9, sp, tp
                  ori          t5, t5, -431
                  nop
                  srl          s8, s11, s11
                  or           s9, sp, ra
                  sll          s11, s3, t5
38:               bge          t1, s0, 52f
                  sra          ra, s7, t6
40:               bge          s5, s6, 42f
                  or           a0, a3, a2
42:               slti         s7, t4, 677
43:               slli         a6, s0, 30
                  ori          t1, ra, 1772
                  sltu         a1, s7, a5
                  sltiu        t2, t0, 1085
47:               lui          a6, 923399
                  sltu         a0, a2, s7
                  add          s7, s9, s7
                  ori          sp, s10, -677
                  slt          a0, s3, t2
52:               ori          a4, s3, -1558
                  bne          a3, a0, 60f
                  srl          t0, s6, a4
                  sub          a6, s8, ra
                  sll          a5, s4, s11
                  srli         t1, a3, 17
                  or           zero, s7, s10
                  xori         a3, t5, -472
60:               ori          s11, gp, 326
                  xori         s7, s0, -1096
                  addi         sp, a4, 1610
                  xor          t1, gp, s7
                  sltiu        s7, s10, -634
                  and          a4, s9, a3
                  sub          s5, s1, s4
                  lw           s3, 4(s2)
                  ori          t5, s2, 1278
                  addi         s2, s2, 52
                  sra          a1, a3, s6
                  srai         zero, s8, 18
115:              addi x29, x19, 0
115:              jalr x29, x29, 0
sub_3:            sltiu        tp, s4, -895
                  addi         s2, s2, -12
                  srli         a1, a2, 18
                  ori          tp, s1, 684
                  sw           s3, 4(s2)
                  sra          s0, t5, a0
                  sltiu        s5, sp, -1830
                  sltiu        s7, a5, 54
sub_3_3:          jal          s3, 5f
0:                jal          t0, 2f
1:                jal          ra, 26f
2:                jal          sp, 12f
3:                jal          s9, 20f
4:                jal          t1, 14f
5:                jal          ra, 19f
6:                jal          a7, 15f
7:                jal          ra, 6b
8:                jal          t0, 22f
9:                jal          s10, 25f
10:               jal          a6, 8b
11:               jal          ra, 7b
12:               jal          t1, 24f
13:               jal          ra, 16f
14:               jal          t3, 23f
15:               jal          ra, 3b
16:               jal          t3, 9b
17:               jal          s5, 1b
18:               jal          ra, 4b
19:               jal          ra, 0b
20:               jal          ra, 21f
21:               jal          t1, 13b
22:               jal          a7, 18b
23:               jal          ra, 11b
24:               jal          t1, 10b
25:               jal          ra, 17b
26:               ori          ra, s1, 611
sub_3_11:         jal          s3, 15f
0:                jal          ra, 3f
1:                jal          t1, 26f
2:                jal          t1, 24f
3:                jal          ra, 18f
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          t1, 25f
7:                jal          ra, 14f
8:                jal          ra, 16f
9:                jal          ra, 22f
10:               jal          t1, 12f
11:               jal          ra, 6b
12:               jal          sp, 9b
13:               jal          s10, 0b
14:               jal          t0, 19f
15:               jal          sp, 20f
16:               jal          ra, 5b
17:               jal          s11, 2b
18:               jal          ra, 17b
19:               jal          ra, 4b
20:               jal          t1, 13b
21:               jal          ra, 7b
22:               jal          t4, 1b
23:               jal          ra, 21b
24:               jal          s4, 23b
25:               jal          a7, 10b
26:               xori         a7, zero, -568
sub_3_2:          jal          s3, 9f
0:                jal          a7, 7f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          ra, 8f
4:                jal          ra, 2b
5:                jal          a6, 1b
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          t1, 0b
9:                jal          s10, 6b
10:               jal          t4, 11f
11:               auipc        sp, 347598
sub_3_7:          jal          s3, 5f
0:                jal          t1, 14f
1:                jal          ra, 3f
2:                jal          tp, 8f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          sp, 11f
6:                jal          t1, 1b
7:                jal          ra, 0b
8:                jal          t1, 13f
9:                jal          gp, 10f
10:               jal          t1, 15f
11:               jal          t5, 12f
12:               jal          t5, 7b
13:               jal          t0, 9b
14:               jal          ra, 4b
15:               nop
sub_3_1:          jal          s3, 18f
0:                jal          ra, 9f
1:                jal          s3, 22f
2:                jal          ra, 14f
3:                jal          t1, 0b
4:                jal          t1, 19f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          ra, 15f
8:                jal          t0, 3b
9:                jal          ra, 7b
10:               jal          ra, 16f
11:               jal          ra, 10b
12:               jal          ra, 4b
13:               jal          s3, 2b
14:               jal          ra, 11b
15:               jal          a5, 5b
16:               jal          ra, 17f
17:               jal          ra, 25f
18:               jal          ra, 20f
19:               jal          t0, 8b
20:               jal          a7, 24f
21:               jal          ra, 13b
22:               jal          s0, 21b
23:               jal          gp, 12b
24:               jal          t1, 23b
25:               srai         a3, tp, 9
sub_3_8:          jal          s3, 9f
0:                jal          s9, 4f
1:                jal          ra, 11f
2:                jal          ra, 3f
3:                jal          ra, 1b
4:                jal          s0, 5f
5:                jal          t1, 7f
6:                jal          ra, 8f
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          tp, 10f
10:               jal          ra, 6b
11:               slt          ra, s11, a0
sub_3_15:         jal          s3, 13f
0:                jal          ra, 4f
1:                jal          a7, 15f
2:                jal          t1, 9f
3:                jal          t1, 1b
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          t1, 11f
8:                jal          ra, 10f
9:                jal          ra, 5b
10:               jal          t1, 14f
11:               jal          ra, 12f
12:               jal          a3, 3b
13:               jal          ra, 8b
14:               jal          ra, 6b
15:               and          zero, a4, sp
sub_3_4:          jal          s3, 8f
0:                jal          ra, 2f
1:                jal          s4, 3f
2:                jal          ra, 6f
3:                jal          t1, 10f
4:                jal          ra, 1b
5:                jal          ra, 0b
6:                jal          t1, 9f
7:                jal          t1, 5b
8:                jal          ra, 4b
9:                jal          s10, 11f
10:               jal          s7, 7b
11:               andi         sp, sp, -1097
sub_3_0:          jal          s3, 9f
0:                jal          t1, 5f
1:                jal          ra, 8f
2:                jal          t1, 6f
3:                jal          ra, 4f
4:                jal          ra, 10f
5:                jal          ra, 2b
6:                jal          t3, 7f
7:                jal          ra, 3b
8:                jal          t1, 0b
9:                jal          gp, 1b
10:               add          s11, t4, s4
sub_3_12:         jal          s3, 19f
0:                jal          ra, 27f
1:                jal          ra, 16f
2:                jal          t1, 11f
3:                jal          ra, 28f
4:                jal          s0, 6f
5:                jal          ra, 25f
6:                jal          ra, 2b
7:                jal          t1, 15f
8:                jal          t1, 9f
9:                jal          t1, 17f
10:               jal          ra, 0b
11:               jal          ra, 18f
12:               jal          ra, 26f
13:               jal          ra, 24f
14:               jal          s4, 12b
15:               jal          t1, 20f
16:               jal          a2, 22f
17:               jal          ra, 13b
18:               jal          ra, 21f
19:               jal          t1, 4b
20:               jal          s10, 3b
21:               jal          ra, 10b
22:               jal          s1, 23f
23:               jal          ra, 7b
24:               jal          t5, 5b
25:               jal          tp, 14b
26:               jal          t1, 1b
27:               jal          t1, 8b
28:               nop
sub_3_9:          jal          s3, 21f
0:                jal          t4, 23f
1:                jal          ra, 11f
2:                jal          ra, 17f
3:                jal          gp, 26f
4:                jal          ra, 14f
5:                jal          sp, 24f
6:                jal          ra, 15f
7:                jal          a4, 16f
8:                jal          ra, 4b
9:                jal          ra, 19f
10:               jal          ra, 7b
11:               jal          t1, 25f
12:               jal          t1, 10b
13:               jal          ra, 2b
14:               jal          ra, 5b
15:               jal          t1, 12b
16:               jal          a3, 18f
17:               jal          t1, 6b
18:               jal          t1, 20f
19:               jal          ra, 0b
20:               jal          ra, 8b
21:               jal          t1, 9b
22:               jal          ra, 13b
23:               jal          ra, 22b
24:               jal          s7, 1b
25:               jal          s7, 3b
26:               xor          t3, ra, s6
                  sll          a3, t4, t4
                  and          a0, ra, s0
                  sltiu        t0, t2, 1655
                  blt          s2, gp, 22f
                  or           t0, gp, a1
                  bne          a0, sp, 13f
                  slti         t5, t2, 1103
                  beq          s3, s10, 9f
                  sltu         t5, a1, s0
9:                slt          a2, s4, a4
                  nop
                  srli         sp, s5, 28
                  sub          a0, t3, t5
13:               bge          s0, s6, 22f
                  bltu         t1, s11, 32f
                  sll          s9, a0, t0
                  lui          a0, 1000835
                  sub          a4, zero, a4
                  nop
                  andi         t5, t6, 680
                  bne          s3, t0, 34f
                  ori          s11, t1, -2040
22:               bgeu         a3, a1, 37f
                  andi         t5, t4, -1457
                  bltu         t4, s8, 33f
                  sltiu        t3, s1, 754
                  sltu         s0, s9, a5
                  sub          a1, ra, t5
                  beq          a3, s9, 37f
                  and          a2, a0, a5
                  nop
                  addi         t1, a1, -839
32:               auipc        a3, 191572
33:               addi         t1, a3, -1009
34:               addi         s10, a6, -775
                  sra          ra, s11, zero
                  slti         sp, s3, 1987
37:               bge          s0, a5, 52f
                  bne          s8, a3, 49f
                  and          a1, s6, a6
                  srli         gp, s0, 22
                  addi         ra, gp, -278
                  or           a3, t3, s3
                  or           s9, a5, a7
                  srli         a4, gp, 16
                  srl          s0, t6, s4
                  xori         s11, a7, -1729
                  auipc        s0, 445088
sub_3_13:         jal          s3, 3f
0:                jal          ra, 12f
1:                jal          t1, 11f
2:                jal          t1, 13f
3:                jal          a4, 10f
4:                jal          t1, 17f
5:                jal          s4, 14f
6:                jal          ra, 5b
7:                jal          s11, 6b
8:                jal          t0, 20f
9:                jal          s7, 1b
10:               jal          t1, 9b
11:               jal          ra, 19f
12:               jal          t1, 16f
13:               jal          a0, 18f
14:               jal          ra, 2b
15:               jal          ra, 8b
16:               jal          t4, 7b
17:               jal          ra, 21f
18:               jal          t1, 15b
19:               jal          ra, 0b
20:               jal          tp, 4b
21:               sltu         tp, s0, a3
                  sra          t3, a0, sp
49:               bgeu         s10, s1, 65f
                  beq          s3, a2, 51f
51:               slli         gp, t4, 25
52:               xor          s11, s7, s2
                  srai         tp, a3, 12
                  ori          gp, a7, 1424
                  addi         a0, a6, -132
                  srli         t3, sp, 24
                  bltu         tp, s9, 60f
                  slt          s7, a2, t4
                  sra          zero, t2, gp
60:               sra          t5, a7, zero
                  srl          t1, s10, a6
                  nop
                  srl          s4, a5, t2
                  slti         a5, a6, -753
65:               xori         zero, s2, 943
                  slli         t5, a3, 26
                  srl          a7, a2, s6
                  addi         t0, s9, -1974
                  sltiu        zero, a5, -78
                  blt          tp, sp, 89f
                  slt          s5, sp, a1
                  and          t1, gp, a1
                  slli         a0, gp, 7
                  sll          a3, s7, s8
                  bltu         s10, s4, 85f
                  ori          s3, t6, 1552
                  xori         s11, s5, -1316
                  andi         tp, s4, 697
                  add          s5, s2, a3
                  blt          t1, a1, 87f
                  srai         a2, t1, 17
                  auipc        t3, 493452
                  bne          a1, a2, 97f
                  ori          a1, s4, -2018
85:               ori          s4, a0, 1923
                  ori          s11, gp, -1991
87:               bltu         a3, a1, 105f
                  srli         t0, ra, 2
89:               slti         t1, s1, -552
                  srli         t1, s6, 29
                  or           s10, a0, s5
                  bltu         a2, s10, 104f
                  bne          a2, s0, 100f
                  or           s3, ra, zero
                  sub          a5, tp, t3
                  srl          tp, t3, s6
97:               sra          tp, s5, ra
                  bge          t0, t1, 115f
                  bge          s5, t4, 118f
100:              beq          t4, t3, 111f
                  blt          t3, zero, 109f
                  addi         a5, t0, 1884
                  andi         a3, s11, -1414
104:              srli         ra, s6, 2
105:              sll          t4, ra, gp
                  xori         s8, a4, -494
                  sub          t4, t6, s7
                  and          t5, t0, s8
109:              sltiu        s10, s8, 1083
                  bltu         t6, t2, 121f
111:              xori         a6, sp, -1126
                  sltu         a4, s1, a6
                  bne          t5, s9, 125f
                  bltu         a3, a4, 116f
115:              or           t0, s4, t5
116:              sra          a7, a5, a5
                  lui          a6, 557044
118:              beq          t3, s4, 123f
                  or           s1, t0, a2
                  slt          ra, gp, s1
121:              sub          gp, s5, s9
                  sra          a0, a1, a0
123:              blt          s7, s4, 135f
                  bne          s4, s5, 129f
125:              and          gp, t1, s9
                  srli         tp, sp, 17
                  blt          t2, sp, 138f
                  lui          a0, 787702
129:              addi         t3, s8, -823
                  sra          a3, s9, a5
                  slti         a5, a5, -392
                  sra          s7, s0, s7
                  slli         gp, ra, 2
                  sll          s8, gp, a6
135:              lui          s10, 391993
                  andi         ra, tp, -1628
                  beq          t5, t2, 152f
138:              sub          s3, t0, ra
                  srli         s11, s5, 25
                  bgeu         s2, t6, 152f
                  nop
                  bge          s8, s2, 144f
                  sra          a3, s2, s4
144:              bge          t1, s3, 156f
                  bgeu         t0, s2, 153f
                  blt          t6, sp, 149f
                  beq          t0, t3, 166f
                  bgeu         t3, s11, 162f
149:              bltu         s2, sp, 165f
                  add          s7, s9, gp
                  bge          s11, s10, 160f
152:              bltu         a6, s8, 160f
153:              srli         a3, a4, 22
                  xor          t5, t0, s3
                  or           s5, a0, t5
156:              bge          t6, s1, 158f
                  nop
158:              beq          s4, s4, 175f
                  xor          s7, t4, t5
160:              nop
                  sub          a3, t6, s9
162:              sra          s3, s3, gp
                  and          zero, a3, t6
                  bltu         t0, a4, 182f
165:              bgeu         s9, a3, 166f
166:              blt          a5, s3, 177f
                  addi         s11, t2, 1518
                  sra          a5, a2, s9
                  beq          a1, s1, 180f
                  addi         gp, s11, 1572
                  addi         a4, a0, -1279
                  slt          a2, a1, s6
                  slli         t4, t6, 1
                  nop
175:              slt          t5, t3, t4
                  blt          a7, a2, 195f
177:              xori         a6, a0, 1660
                  and          s7, s3, s6
                  srai         a4, t5, 11
180:              bgeu         t6, gp, 187f
                  slti         gp, a0, -206
182:              srl          t1, a0, ra
                  xor          a0, gp, a0
                  bgeu         t3, s2, 193f
                  bgeu         a0, s6, 194f
                  slli         gp, s10, 18
187:              xor          t2, tp, s0
                  sra          s8, a4, a2
                  slli         zero, s4, 12
                  or           s7, tp, s1
                  auipc        s11, 441904
                  sltu         t2, t3, s2
193:              srl          s10, a4, t4
194:              slt          s5, s7, ra
195:              ori          sp, s2, 895
                  add          s9, t4, a6
                  lui          a0, 36773
                  bltu         ra, a3, 205f
                  beq          a5, a7, 211f
                  srai         s0, t1, 6
                  srli         s5, a2, 28
                  blt          s9, s0, 220f
sub_3_14:         jal          s3, 10f
0:                jal          t4, 8f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          t1, 12f
6:                jal          t1, 9f
7:                jal          ra, 11f
8:                jal          t1, 3b
9:                jal          ra, 5b
10:               jal          gp, 7b
11:               jal          a0, 1b
12:               jal          ra, 4b
13:               addi         a4, a5, 447
                  slli         a3, gp, 23
                  bltu         tp, t0, 219f
205:              bltu         t6, t5, 215f
                  srli         tp, s5, 3
                  xor          s10, s2, a5
                  slt          a5, zero, t1
                  auipc        a1, 131083
                  add          a7, a1, ra
211:              sra          s11, t6, s9
                  sub          a6, s4, s2
                  or           s1, s3, s2
                  addi         s3, tp, -909
215:              slli         s3, t1, 3
                  or           a3, tp, s7
                  slti         s11, s11, -1255
                  beq          s5, s7, 232f
219:              or           t3, s8, a7
220:              srai         t2, t3, 17
                  or           a4, s8, t1
                  sltiu        s11, t0, -670
                  srai         a0, sp, 18
                  or           t4, sp, a1
                  bne          t1, s7, 244f
                  bge          tp, gp, 245f
                  addi         t1, s6, 1435
                  beq          tp, a6, 233f
                  slt          s4, s6, s11
                  slli         s3, s4, 13
                  and          s10, s3, s2
232:              and          a3, s3, s6
233:              sra          a0, sp, a1
                  xor          tp, s2, s5
                  bge          s6, a0, 249f
                  nop
                  bge          s6, t1, 256f
                  xor          t3, s9, sp
                  and          gp, t3, t6
                  sltiu        s8, t0, 1609
                  addi         t3, t0, -671
                  auipc        s1, 272719
                  bgeu         t3, sp, 245f
244:              slli         s11, t1, 10
245:              srai         tp, s8, 22
                  addi         s3, s10, -1567
                  srl          a1, s10, a1
                  sltiu        s8, a7, -1429
249:              slt          a3, s1, a7
                  slli         s9, t6, 30
                  slti         t0, s11, 481
                  beq          a1, s8, 268f
                  auipc        s9, 691459
                  xor          gp, a2, a4
                  and          a3, t2, t6
256:              sra          s0, a7, s11
                  lui          t1, 1037061
                  and          sp, zero, t3
                  bltu         a0, a3, 268f
                  srai         a0, sp, 0
                  bgeu         s9, t5, 270f
                  slti         a5, a2, 359
                  xori         a7, s1, 260
                  add          s8, s8, s3
                  and          a0, gp, s5
                  slti         sp, zero, -444
                  srl          a3, s0, s0
268:              auipc        t2, 583173
                  xor          s8, s7, a0
270:              slt          a0, a1, s4
                  or           t5, t3, s1
                  sltiu        t3, a0, 2004
                  bne          t1, s6, 285f
                  bgeu         s11, a6, 286f
                  sltiu        s5, t2, 141
                  sub          tp, s4, t4
                  xor          a3, t6, a7
                  ori          a1, a5, -1218
                  srl          s10, t4, t4
                  andi         s0, a4, -983
                  and          s3, s0, a0
                  sub          t3, t1, t3
                  xor          a4, s1, a7
                  sll          a7, t6, t4
285:              sra          s3, t5, tp
286:              sltu         ra, gp, tp
                  srl          s1, s5, s11
                  sll          a5, t0, a6
                  slt          a0, a3, s2
                  bne          s4, s6, 305f
                  and          a4, t1, s11
                  ori          tp, s8, 1996
                  sra          a0, t2, a2
                  sltiu        gp, s4, -1565
sub_3_5:          jal          s3, 15f
0:                jal          ra, 13f
1:                jal          ra, 27f
2:                jal          ra, 4f
3:                jal          ra, 11f
4:                jal          t1, 10f
5:                jal          t1, 14f
6:                jal          ra, 21f
7:                jal          ra, 8f
8:                jal          ra, 18f
9:                jal          s4, 24f
10:               jal          ra, 26f
11:               jal          t1, 20f
12:               jal          ra, 19f
13:               jal          gp, 25f
14:               jal          ra, 6b
15:               jal          t1, 22f
16:               jal          t1, 23f
17:               jal          t5, 1b
18:               jal          ra, 5b
19:               jal          ra, 9b
20:               jal          ra, 17b
21:               jal          t0, 2b
22:               jal          ra, 12b
23:               jal          ra, 7b
24:               jal          t1, 0b
25:               jal          s1, 16b
26:               jal          ra, 3b
27:               sub          a1, s11, a6
                  bne          t2, a5, 302f
                  bne          s0, t1, 310f
                  sra          t5, s1, t3
                  sltu         gp, zero, t5
                  srli         t3, s8, 23
                  ori          s1, s10, -1715
                  beq          s6, a7, 312f
302:              slt          s0, t5, t3
                  lui          s11, 93950
                  add          a6, s10, a0
305:              bge          a0, tp, 314f
                  addi         s4, s6, 1418
                  blt          s2, t3, 326f
                  blt          zero, a4, 315f
                  beq          a0, a0, 327f
310:              addi         t3, a5, -965
                  xori         s9, s7, -489
312:              srli         s7, t3, 31
                  lui          a6, 344894
314:              sltu         gp, t4, s5
315:              add          t3, s11, s10
                  lui          t5, 1031154
                  beq          t3, a2, 334f
                  bne          s10, s4, 321f
                  xori         t1, gp, -1968
                  xor          s7, a4, a1
321:              slli         a3, s2, 14
                  sltu         s7, s1, a6
                  sll          a2, t6, s9
                  addi         s9, s8, 1320
                  sll          a3, t1, a0
326:              lui          ra, 284722
327:              srl          s8, a2, s11
                  srli         sp, sp, 12
                  bltu         gp, t6, 344f
                  sra          zero, a4, a5
                  ori          s10, s0, -1270
                  and          sp, a1, a5
                  addi         a4, s6, -1525
334:              ori          s8, s5, -974
                  sub          t4, a6, t5
                  bne          s1, s10, 354f
                  slli         s5, a4, 24
                  slti         a2, t6, -1207
                  nop
                  ori          a0, s11, 1803
                  slli         s10, s11, 18
                  or           s9, s3, ra
                  xor          a0, sp, s2
344:              srli         s5, s6, 12
                  and          s8, t5, s8
                  sltu         ra, s2, t1
                  auipc        s1, 187010
                  srai         s7, s4, 15
                  addi         s4, a5, 541
                  auipc        t4, 372338
                  sub          t2, s3, a7
                  bgeu         s0, t6, 360f
                  addi         s1, ra, 793
354:              srai         a5, tp, 23
                  slti         zero, a4, 160
                  beq          s11, s11, 364f
                  xor          a2, a2, a4
                  or           t1, zero, t6
                  beq          gp, a1, 371f
360:              sra          a1, ra, s0
                  bgeu         t1, sp, 363f
                  xor          t1, s10, t2
363:              sltiu        t5, s2, -570
364:              srli         a0, a7, 24
                  or           s4, s5, ra
                  lui          s3, 367320
                  addi         t0, a6, -526
                  bgeu         t3, t0, 369f
369:              xor          zero, t6, t1
                  srli         t0, t5, 20
371:              sll          t0, gp, a7
                  lui          t5, 242894
                  bge          s4, s11, 383f
                  bgeu         t3, a3, 385f
                  sra          a6, a4, s10
                  slti         a3, a1, 2039
                  and          s10, a4, s1
                  slli         s11, a2, 7
                  sltu         a3, s10, a7
                  slt          t5, s1, a6
                  sub          s5, s9, s8
                  bltu         a6, s11, 393f
383:              ori          s10, s1, 677
                  bltu         a7, s5, 393f
385:              slli         t1, s4, 27
                  addi         zero, t3, -577
                  nop
                  and          a6, ra, zero
                  addi         zero, s3, 379
                  xori         t5, a1, -1642
                  andi         s7, sp, 1979
                  xor          s4, s7, t4
393:              srli         a6, t4, 15
                  srai         gp, s6, 16
                  slt          a2, t1, a5
                  srli         tp, gp, 17
                  slt          a1, a7, s5
                  srl          a1, s1, s8
                  bgeu         a2, a6, 402f
                  slt          gp, t2, s11
                  addi         ra, s5, 1964
402:              or           a1, s2, ra
                  sltu         zero, ra, t2
                  srai         a7, tp, 30
                  slti         s8, a2, 331
                  nop
                  bltu         ra, a5, 409f
                  and          a2, t2, s2
409:              slli         s11, t4, 25
                  slti         s10, a6, 138
                  add          t2, s7, ra
                  lui          ra, 150694
                  sra          s5, zero, a1
                  or           tp, s11, s7
                  slti         t2, t2, -630
                  sra          a5, zero, gp
                  srli         sp, a3, 0
                  lui          ra, 25189
                  add          ra, s11, a2
                  bgeu         a1, tp, 427f
                  sra          a2, t6, s9
                  lui          s11, 756694
                  xori         s3, s3, -274
                  add          gp, t5, s7
                  bltu         t0, s2, 432f
                  bgeu         a0, s1, 442f
427:              or           tp, t4, s7
                  srli         s11, s5, 24
                  bge          s5, s8, 434f
                  bne          tp, s6, 431f
431:              slli         a5, sp, 15
432:              bltu         a6, t1, 440f
sub_3_6:          jal          s3, 0f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          ra, 14f
3:                jal          t1, 4f
4:                jal          ra, 17f
5:                jal          ra, 13f
6:                jal          ra, 1b
7:                jal          ra, 9f
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          t1, 12f
11:               jal          t1, 2b
12:               jal          ra, 11b
13:               jal          ra, 10b
14:               jal          ra, 16f
15:               jal          t1, 8b
16:               jal          ra, 15b
17:               nop
                  ori          t3, s1, -1031
434:              sltu         t3, gp, t5
                  nop
                  sll          gp, gp, s3
                  bltu         t6, s8, 448f
                  slli         s11, a6, 3
                  sra          tp, tp, s4
440:              sltiu        s7, s8, 1013
                  sltu         s0, t5, gp
442:              nop
                  blt          a3, s4, 453f
                  xor          t5, t0, s11
                  andi         a1, sp, -810
                  and          s8, s5, ra
                  andi         s0, zero, 555
448:              xor          gp, s0, s8
                  sll          t1, s8, s4
                  slli         t5, a6, 11
                  sll          a4, t3, tp
                  sltiu        s3, a1, 1904
453:              xor          t4, tp, a7
                  ori          a0, a3, -363
                  and          tp, ra, s1
                  sltiu        s5, t3, 326
                  sll          gp, s0, s3
                  xori         t1, t1, -1616
                  or           t0, a0, s0
                  bgeu         t2, a3, 475f
                  add          a7, s11, s6
                  sltiu        t3, a4, -301
                  xori         s11, s10, 29
                  srli         s4, a7, 13
                  nop
                  bgeu         a0, t5, 474f
                  slti         a5, s6, 1074
                  srli         s0, s4, 9
                  addi         a6, s2, 1821
                  srai         a1, t2, 14
                  bltu         t0, a4, 488f
                  bne          s8, a7, 481f
                  add          s11, a1, a3
474:              sltiu        s8, t4, 988
475:              addi         zero, a3, 603
                  bne          t2, t3, 488f
                  sra          t2, sp, s10
                  sltiu        zero, s7, 121
                  bne          t3, zero, 494f
                  xor          a0, t3, s7
481:              bne          t6, a0, 483f
                  nop
483:              auipc        gp, 655830
                  or           t0, t5, a5
                  xori         s5, t5, 727
                  add          sp, s3, a4
                  beq          s2, a1, 499f
488:              auipc        s9, 895602
                  slli         s1, tp, 4
                  and          a2, t3, ra
                  bltu         a2, gp, 509f
                  bne          s11, s3, 501f
                  srli         t0, s10, 30
494:              sltu         s8, sp, t6
                  slt          ra, s7, s9
                  sll          a4, a6, s7
                  slli         a7, s7, 29
                  sra          t3, a5, zero
499:              bne          a5, ra, 517f
                  bgeu         gp, s9, 514f
501:              lui          s4, 451903
                  addi         s11, s3, 308
                  bgeu         t3, s6, 514f
                  add          sp, a2, a2
                  bge          t5, a1, 517f
                  addi         a0, s8, 1366
                  xor          a1, t6, a6
                  slli         s9, sp, 20
509:              slli         s5, tp, 14
                  ori          s3, s4, -733
                  srai         s7, zero, 28
                  auipc        s7, 992620
                  xori         s4, s2, 1203
514:              slti         gp, s10, 660
                  srli         zero, a3, 31
                  bltu         s5, s11, 527f
517:              xor          zero, s10, s6
                  bne          zero, t1, 537f
                  and          t3, s7, s0
                  xor          s0, s7, t6
                  sub          t0, t0, a6
                  srl          t5, s5, ra
                  srli         t5, s0, 19
                  and          a4, a6, a1
                  addi         a0, s11, 783
                  slt          s8, s9, t4
527:              add          a5, ra, a7
                  srai         s3, t4, 23
                  or           gp, s9, s1
                  lui          a4, 677002
                  xori         a6, t1, -1650
                  srai         s11, s6, 26
                  slti         ra, s2, -292
                  bgeu         t1, s2, 553f
                  bgeu         s9, gp, 549f
                  srl          s0, t2, t2
537:              ori          s5, t1, 1902
                  and          t1, s0, s4
                  sll          s11, s4, t3
                  sltiu        s11, a7, 64
                  bne          a0, t3, 560f
                  srl          a7, sp, a6
                  bltu         a4, s8, 562f
                  add          t2, a7, s5
                  andi         a1, sp, 259
                  sub          a5, t0, s5
                  sltu         t5, s6, a7
                  add          a1, t1, s7
549:              bltu         a0, zero, 561f
                  blt          a7, s4, 568f
                  bge          s7, sp, 563f
                  add          s0, tp, zero
553:              blt          t1, s11, 568f
                  bne          a2, a1, 573f
                  xori         t0, s10, 1296
                  sll          t3, sp, s9
                  and          gp, s4, zero
                  and          s8, t6, t0
                  lui          t5, 549434
560:              addi         t4, a7, -1579
561:              addi         s0, ra, 1329
562:              auipc        ra, 31500
563:              add          s1, s5, s5
                  auipc        t5, 1042672
                  xor          a1, ra, a4
                  sub          zero, s9, s11
                  auipc        t3, 729986
568:              slti         s11, t2, 272
                  beq          a6, sp, 587f
                  sll          a0, gp, t5
                  bgeu         t3, t2, 578f
                  slti         s4, a4, 594
573:              srl          t0, t5, zero
                  sltiu        a0, s0, 1966
                  ori          a4, s4, 823
                  beq          t0, a2, 586f
                  and          zero, a1, tp
578:              ori          sp, s10, -1120
                  addi         s5, a5, 1310
                  addi         a2, s6, 565
                  sub          a6, s0, t1
                  slli         s10, s4, 18
                  slti         s3, t2, -1635
                  sub          s7, s9, s11
                  srl          s7, a2, zero
586:              srli         t2, s11, 27
587:              lui          s8, 215211
                  beq          t5, s5, 603f
                  bne          t0, a1, 598f
                  bltu         a6, s3, 609f
                  srai         t3, a6, 4
                  add          s4, t6, t1
                  sll          s4, t2, a2
                  sltu         ra, s3, s4
                  slli         s8, s9, 10
                  bge          t5, s6, 598f
                  sll          sp, gp, s6
598:              xor          t5, a4, sp
                  xor          sp, t5, s6
                  bltu         s1, sp, 614f
                  sra          s4, t6, tp
                  xor          s3, s6, t1
603:              sltiu        s4, a6, -819
                  addi         a7, s2, -1436
                  and          s0, s11, tp
                  bgeu         s2, s5, 608f
                  sll          t0, zero, t0
608:              nop
609:              bltu         t4, s0, 620f
                  andi         s9, t3, -659
                  bge          s8, a6, 627f
                  slli         tp, t1, 0
                  slli         s10, s7, 30
614:              srli         a0, ra, 29
                  sra          s5, t0, a7
                  sub          s11, s5, s10
                  auipc        a1, 1015539
                  slli         zero, t3, 20
                  slt          gp, a2, a5
620:              sltiu        tp, t0, -1953
                  beq          s0, a0, 624f
                  bgeu         a5, s1, 634f
                  auipc        t0, 581067
624:              xori         s7, s3, 684
                  xori         t1, s5, -127
                  beq          s0, t6, 637f
627:              sra          ra, t5, s1
                  auipc        s8, 251402
                  add          s1, s7, a5
                  sub          t0, s6, s8
                  beq          a4, a6, 636f
                  ori          s5, t2, 723
                  ori          a1, a3, -1378
634:              srli         a5, t3, 11
                  bge          a1, gp, 643f
636:              nop
637:              or           a4, t2, s9
                  addi         gp, t6, -1627
                  sll          t3, sp, s10
                  and          t1, t0, a5
                  srai         s7, a0, 23
                  xor          a3, tp, t3
643:              srai         s1, t3, 25
                  srli         tp, s9, 27
                  and          a0, t1, a3
                  and          s3, t1, ra
                  auipc        a2, 930630
                  slt          a6, a2, ra
                  srli         t4, ra, 17
                  add          s3, s9, s2
                  bne          s8, t0, 662f
                  auipc        t1, 121214
                  or           t3, ra, a2
                  andi         s4, t5, 1910
                  sltu         sp, t0, a2
                  slti         tp, s4, 325
                  lui          a3, 52741
                  beq          s8, s2, 666f
                  srli         a2, s10, 23
                  lui          s3, 1011097
                  slt          gp, s4, s9
662:              nop
                  blt          zero, a2, 672f
                  slti         t3, a7, 1222
                  srai         s11, s3, 25
666:              sltu         s0, s1, s11
                  sub          t3, zero, t5
                  srli         s0, a0, 15
                  beq          t6, t6, 670f
670:              srli         zero, t2, 0
                  addi         t4, t3, 355
672:              xori         a4, t2, -36
                  and          a3, ra, s7
                  slli         tp, s2, 12
                  lui          s9, 426940
                  bgeu         t2, ra, 683f
                  sll          s0, s4, s3
                  xor          s3, tp, ra
                  slli         t3, ra, 0
                  bge          s6, t3, 689f
                  auipc        t4, 84847
                  lui          s0, 644026
683:              sra          a0, t5, s7
                  andi         t3, a6, -148
                  bltu         t3, zero, 699f
                  or           t5, s10, a0
                  slt          t4, zero, a5
                  bltu         s10, t6, 705f
689:              auipc        s7, 248736
                  sub          t4, tp, a3
                  srl          a7, a5, a6
                  sra          a0, a1, s8
                  xori         s4, s6, -373
                  sra          a5, a4, a1
                  bgeu         t5, sp, 712f
                  sll          s10, sp, s4
                  andi         t4, zero, -757
                  bltu         t1, a3, 700f
699:              or           t2, t6, a1
700:              bltu         a7, t1, 705f
                  sltiu        t2, s3, 1116
                  blt          zero, t4, 718f
                  nop
                  xori         sp, s11, 1161
705:              addi         zero, s3, -1724
                  slt          t3, ra, s1
                  xori         s9, a4, -300
                  bge          a1, zero, 716f
                  blt          s1, s11, 720f
                  srl          t1, a5, s9
                  bne          zero, s4, 725f
712:              slti         s10, gp, 541
                  sltu         s3, t2, t2
                  xor          a7, s0, zero
                  srl          t3, sp, a3
716:              auipc        t2, 894278
                  xori         a1, a5, 347
718:              andi         s4, a3, 313
                  slti         a7, t2, 533
720:              srai         s4, s5, 1
                  bne          s4, t0, 732f
                  addi         s3, t2, -2044
                  sll          a6, t6, t1
                  auipc        a0, 406538
725:              sra          s8, a7, gp
                  lui          s5, 379701
                  slt          a7, s3, t0
                  ori          t2, t2, 1909
                  auipc        t0, 371776
                  xor          a5, t6, s4
                  addi         s7, s1, -135
732:              sub          sp, t3, sp
                  auipc        s4, 765110
                  srl          t1, s5, s1
                  blt          t2, a2, 754f
                  slt          tp, a4, a3
                  blt          s7, a3, 748f
                  slti         s10, t0, -1798
                  bge          t2, t5, 754f
                  blt          s2, a0, 759f
                  bltu         t1, a3, 749f
                  xori         t2, t1, -1943
                  srai         a7, s9, 20
                  ori          s10, s8, 921
                  ori          ra, t6, -329
                  add          tp, t0, ra
                  sra          sp, s7, s6
748:              bgeu         sp, s3, 766f
749:              xor          gp, s6, s10
                  or           a4, s1, a6
                  srai         sp, t6, 21
                  sltiu        s8, s6, -1541
                  blt          t3, t1, 760f
754:              and          s5, s3, s11
                  sll          a4, s7, a7
                  nop
                  sra          a1, s9, s3
                  xor          s8, a0, zero
759:              sltiu        t2, s0, -600
760:              blt          zero, a7, 769f
                  xor          a6, t5, t6
                  sltiu        s5, sp, -873
                  addi         s10, s5, 1334
                  xori         a7, t1, 1320
                  sll          s3, zero, s3
766:              sll          a5, s3, s11
                  xori         a3, a2, -2041
                  srl          sp, a7, s10
769:              xor          a4, s1, t0
                  slti         zero, s7, -379
                  and          zero, zero, a0
                  xor          s5, zero, zero
                  xor          t5, a5, s9
                  sltu         t2, s6, s9
                  xori         a4, a0, 1240
                  bne          gp, s2, 791f
                  sub          s8, gp, t2
                  bne          a3, a5, 785f
                  add          s3, t6, a7
                  bne          a1, s1, 782f
                  bltu         a2, a2, 790f
782:              nop
                  beq          s6, a2, 797f
                  and          zero, s6, s10
sub_3_10:         jal          s3, 12f
0:                jal          t2, 7f
1:                jal          s1, 2f
2:                jal          s0, 8f
3:                jal          a7, 11f
4:                jal          s3, 15f
5:                jal          t1, 4b
6:                jal          t1, 5b
7:                jal          ra, 9f
8:                jal          tp, 10f
9:                jal          ra, 13f
10:               jal          ra, 14f
11:               jal          t1, 6b
12:               jal          ra, 1b
13:               jal          a0, 3b
14:               jal          ra, 0b
15:               srl          s8, s3, t3
785:              slt          s1, a1, t1
                  bge          s9, s5, 798f
                  auipc        a5, 825723
                  bne          a2, s6, 806f
                  slt          ra, s6, s0
790:              sll          ra, s7, t3
791:              or           s9, s9, s6
                  slli         s5, s9, 12
                  sll          a2, s2, t4
                  sltiu        a0, t0, 1067
                  bne          t4, t4, 805f
                  slt          s4, s1, a4
797:              sltu         t4, ra, a5
798:              xor          s11, t0, tp
                  auipc        s3, 282405
                  sltu         a5, tp, s2
                  andi         s10, a1, -1467
                  srl          ra, a4, t1
                  slli         t3, t1, 0
                  bltu         a1, s2, 816f
805:              or           t3, t6, zero
806:              bge          t5, s5, 815f
                  bgeu         a5, a5, 819f
                  nop
                  slt          a4, a4, a4
                  srli         s0, s10, 5
                  add          s3, s0, a5
                  auipc        s7, 230321
                  bne          a6, t6, 816f
                  addi         s8, t3, -536
815:              sltiu        t2, zero, 1457
816:              sub          s3, a7, t1
                  slt          t4, s8, s11
                  lui          s9, 681979
819:              or           s11, s2, s3
                  ori          zero, t0, -141
                  xori         s7, s2, -1297
                  sll          a5, s6, t3
                  sltiu        a2, t5, 359
                  xor          s1, s8, s4
                  sll          s9, a3, s4
                  sra          a0, tp, s5
                  lw           s3, 4(s2)
                  xor          s0, t1, ra
                  nop
                  sltiu        a7, s7, -17
                  addi         s2, s2, 12
                  or           t2, t1, s2
                  ori          ra, a3, -1681
                  sltiu        s10, s3, -1582
                  srli         a6, a4, 31
                  sltiu        s4, s11, -1289
                  ori          s10, gp, 1970
1175:             addi x14, x19, 0
1175:             jalr x14, x14, 0
sub_2:            bltu         s7, t2, sub_2_stack_p
                  addi         s4, t2, 1443
sub_2_stack_p:    addi         s2, s2, -24
                  auipc        tp, 213116
                  slt          a3, s3, t0
                  sw           s3, 4(s2)
                  nop
                  slt          s1, gp, a4
                  lui          t0, 843447
                  or           a7, t0, a5
                  nop
sub_2_2:          jal          s3, 21f
0:                jal          ra, 8f
1:                jal          ra, 20f
2:                jal          t0, 12f
3:                jal          ra, 5f
4:                jal          t1, 3b
5:                jal          ra, 15f
6:                jal          t1, 1b
7:                jal          a4, 19f
8:                jal          t1, 2b
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          ra, 23f
12:               jal          t5, 14f
13:               jal          ra, 16f
14:               jal          ra, 4b
15:               jal          ra, 7b
16:               jal          ra, 25f
17:               jal          a6, 9b
18:               jal          s3, 22f
19:               jal          ra, 10b
20:               jal          t1, 11b
21:               jal          ra, 6b
22:               jal          a2, 13b
23:               jal          t2, 24f
24:               jal          ra, 0b
25:               sub          a3, tp, t5
sub_2_0:          jal          s3, 5f
0:                jal          t1, 3f
1:                jal          a2, 4f
2:                jal          s8, 17f
3:                jal          t1, 10f
4:                jal          a3, 15f
5:                jal          ra, 7f
6:                jal          ra, 8f
7:                jal          ra, 14f
8:                jal          ra, 16f
9:                jal          ra, 13f
10:               jal          ra, 19f
11:               jal          ra, 18f
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          t1, 12b
15:               jal          tp, 9b
16:               jal          t1, 1b
17:               jal          ra, 6b
18:               jal          t1, 0b
19:               sra          s3, a4, s6
sub_2_1:          jal          s3, 19f
0:                jal          t1, 5f
1:                jal          s1, 25f
2:                jal          t1, 18f
3:                jal          ra, 4f
4:                jal          t1, 21f
5:                jal          ra, 24f
6:                jal          sp, 15f
7:                jal          t1, 0b
8:                jal          ra, 12f
9:                jal          t1, 16f
10:               jal          ra, 9b
11:               jal          a3, 2b
12:               jal          ra, 26f
13:               jal          a2, 23f
14:               jal          s8, 27f
15:               jal          a4, 1b
16:               jal          ra, 7b
17:               jal          t1, 8b
18:               jal          s7, 28f
19:               jal          sp, 13b
20:               jal          ra, 22f
21:               jal          ra, 30f
22:               jal          tp, 6b
23:               jal          ra, 14b
24:               jal          ra, 20b
25:               jal          t1, 3b
26:               jal          a6, 29f
27:               jal          ra, 11b
28:               jal          ra, 17b
29:               jal          t1, 10b
30:               addi         a6, t6, 914
                  add          ra, s3, t5
                  sub          s9, s3, a6
                  nop
                  bne          gp, t4, 11f
                  slt          t4, t1, s9
                  ori          a7, zero, -691
                  srl          t1, a6, s6
                  slti         a0, ra, -175
                  slli         a5, gp, 2
                  srai         a2, a2, 9
                  srli         a5, a1, 24
11:               lui          s3, 839487
                  bge          t5, a0, 16f
                  srai         ra, s11, 28
                  srl          gp, s2, s11
                  xori         tp, a2, 498
16:               beq          s3, t3, 34f
                  srli         a1, a5, 6
                  andi         s5, a6, -706
                  blt          a4, a1, 31f
                  bgeu         t5, sp, 38f
                  srl          t3, ra, s1
                  slti         s7, s3, -379
                  ori          a3, tp, -2037
                  slli         s4, a0, 10
                  slt          s11, s5, gp
                  slli         t2, a2, 2
                  srli         ra, t2, 9
                  srli         s1, s11, 28
                  nop
                  srai         s3, a3, 26
31:               srl          s0, s4, a0
                  srli         s7, s1, 0
                  addi         a0, s11, -578
34:               beq          gp, sp, 38f
                  slli         a5, a4, 18
                  sll          a2, a2, s0
                  sub          s1, s3, a7
38:               srl          s0, a2, zero
                  slt          a5, a6, a6
                  srai         s10, a6, 31
                  nop
                  xor          a2, s9, zero
                  bge          t5, tp, 48f
                  slt          gp, s6, a4
                  srai         zero, t5, 29
                  sub          t2, t3, s0
                  sltiu        a7, s2, 2019
48:               beq          s8, s6, 63f
                  lui          a0, 883882
                  bne          gp, t2, 68f
                  or           t2, s7, t1
                  ori          s8, a4, 1644
                  ori          s3, s7, 1111
                  sltiu        sp, t2, -741
                  xori         sp, a5, -185
                  srl          s8, s10, s5
                  bge          s5, s5, 66f
                  srai         s4, a1, 30
                  srl          s5, t3, s9
                  bgeu         sp, t2, 65f
                  add          s5, ra, t2
                  add          zero, a0, s7
63:               blt          s9, a3, 64f
64:               blt          s5, t1, 72f
65:               nop
66:               or           a7, t4, gp
                  xori         a5, s3, -825
68:               or           s3, t3, a7
                  sub          a2, a0, a7
                  bne          a1, s8, 82f
                  sll          a7, t6, s2
72:               slti         a5, s5, 621
                  xori         a7, sp, 1833
                  bge          a3, a0, 76f
                  auipc        s0, 739177
76:               bne          a3, s2, 86f
                  auipc        a7, 681028
                  nop
                  addi         s10, s0, 459
                  xori         s10, t5, -1851
                  auipc        a7, 843937
82:               xor          zero, a4, t3
                  sra          t4, sp, t3
                  lui          a1, 988630
                  xor          a5, a4, t0
86:               sltu         s10, s10, s7
                  bgeu         a7, zero, 93f
                  sll          s7, s9, t5
                  nop
                  blt          a4, s0, 96f
                  ori          a5, t4, -1438
                  sra          a4, s3, a7
93:               sltiu        s1, s4, 337
                  nop
                  slli         s7, t2, 10
96:               lui          s10, 340375
                  sub          a7, s6, a7
                  andi         s10, s7, 245
                  slli         s3, tp, 28
                  slt          s5, tp, t0
                  slli         ra, a5, 5
                  sub          t2, t6, zero
                  addi         tp, s2, -1848
                  sltu         s1, a4, t4
                  addi         a6, a7, -1259
                  slt          ra, s2, ra
                  bge          s0, t2, 125f
                  sll          a1, a6, ra
                  sra          a7, sp, s11
                  sltiu        t2, tp, 1500
                  xor          s5, s1, s11
                  auipc        s9, 46194
                  and          a2, t6, s4
                  sra          s7, ra, s6
                  andi         t3, t1, 1824
                  addi         s5, s9, 1726
                  xor          s11, s2, s8
                  beq          sp, a4, 133f
                  lui          s5, 767736
                  srl          s11, s9, a3
                  srli         zero, s7, 28
                  sltu         s1, s8, a3
                  blt          a7, s0, 138f
                  xori         zero, gp, -542
125:              blt          s0, s6, 136f
                  srai         s5, s4, 18
                  xori         t5, a0, -1573
                  nop
                  sltiu        a6, t5, -534
                  bltu         s1, s3, 146f
                  or           t4, a7, s6
                  and          s4, t2, s11
133:              srl          s9, s5, t0
                  nop
                  auipc        a7, 533
136:              srl          a3, t0, s11
                  bne          s11, t1, 152f
138:              sra          ra, s3, t3
                  sltu         s5, gp, s7
                  ori          t0, s8, 179
                  bge          t0, s4, 142f
142:              xor          a1, a4, s7
                  xor          t4, t6, t5
                  beq          t2, sp, 145f
145:              sra          zero, s3, t3
146:              bgeu         s4, a1, 153f
                  auipc        s1, 512394
                  srai         sp, a1, 13
                  sltu         s7, t4, t6
                  andi         s1, s6, -1064
                  sll          s0, zero, t1
152:              lui          t1, 338307
153:              or           t3, a5, ra
                  bne          s10, s2, 155f
155:              or           s4, a5, s4
                  bne          a7, zero, 164f
                  addi         a2, a1, 1142
                  add          a3, s8, s2
                  bge          s3, s2, 162f
                  or           t3, s6, s8
                  ori          s7, sp, 1569
162:              sltiu        tp, a3, -231
                  auipc        gp, 781291
164:              sra          a6, a1, s8
                  bne          t4, a6, 170f
                  sltiu        a5, a1, 1183
                  lui          s8, 493287
                  xori         s3, t5, -1538
                  nop
170:              blt          zero, t5, 176f
                  srl          s10, a2, s2
                  nop
                  srai         s0, s0, 13
                  sub          s11, a2, s2
                  auipc        tp, 644134
176:              bge          sp, a7, 181f
                  bltu         t5, a1, 195f
                  andi         s4, s10, 1564
                  bne          sp, s4, 191f
                  ori          tp, s0, -402
181:              addi         s8, t6, 1081
                  srl          s3, zero, s1
                  xori         a1, s11, 1982
                  and          gp, a2, a3
                  lui          a7, 367815
                  sltu         s5, t0, s6
                  sra          t0, s3, s0
                  slt          t5, s6, t2
                  bge          s6, s7, 195f
                  srl          s1, t1, tp
191:              bltu         s2, s3, 192f
192:              lui          a3, 223363
                  blt          t0, t6, sub_2_j6 #branch to jump instr
                  lui          a2, 52738
                  srl          a7, s7, s1
                  addi         a3, a7, 1361
                  xor          t1, t4, s1
                  lui          t2, 99583
                  sltiu        s10, t3, 517
                  addi         a7, s0, 473
sub_2_j6:         jal          s3, sub_4 #jump sub_2 -> sub_4
                  sub          s5, gp, a3
                  bltu         t0, s1, 195f
195:              sltu         s3, s3, s7
                  slli         s9, tp, 1
                  lui          t5, 526945
                  ori          t1, ra, -544
                  xor          s11, s7, sp
                  sub          a0, ra, a1
                  sltu         tp, a3, ra
                  lw           s3, 4(s2)
                  addi         s2, s2, 24
                  add          zero, a3, t2
                  add          t3, s6, s6
                  slti         s1, s10, -750
                  slti         a5, s5, 1722
308:              addi x15, x19, 0
308:              jalr x15, x15, 0
sub_1:            auipc        s9, 67874
                  addi         s2, s2, -16
                  ori          s10, sp, 768
                  andi         s8, t0, 869
                  addi         s7, s6, 1185
                  xori         s4, ra, -1380
                  sw           s3, 4(s2)
                  add          a2, a3, s11
                  la           a4, sub_4
                  slli         t2, a2, 31
                  sll          gp, t6, s9
                  sub          a3, a1, s4
                  addi         ra, a3, 96
                  addi         a4, a4, 684
                  and          a6, t0, ra
                  and          a6, s9, s9
sub_1_j5:         jalr         s3, a4, -683 #jump sub_1 -> sub_4
sub_1_0:          jal          s3, 4f
0:                jal          ra, 8f
1:                jal          t1, 9f
2:                jal          ra, 11f
3:                jal          a3, 12f
4:                jal          ra, 5f
5:                jal          s1, 6f
6:                jal          ra, 2b
7:                jal          t1, 10f
8:                jal          ra, 3b
9:                jal          ra, 7b
10:               jal          t1, 0b
11:               jal          gp, 1b
12:               srl          t4, a3, s4
                  add          s4, ra, s0
                  sltu         sp, t5, a2
                  blt          s2, s2, 3f
3:                lui          t0, 658921
                  sltiu        s10, t5, 763
                  andi         t3, s7, 569
                  bne          zero, t2, 18f
                  xori         a4, t0, 1489
                  bge          a4, t2, 24f
                  sub          a3, t0, s8
                  ori          s10, s5, -1511
                  ori          t0, s3, -7
                  slti         a4, s7, 1600
                  srli         a5, s6, 28
                  sll          t5, t1, a4
                  lui          a5, 248017
                  lui          s4, 971412
                  sub          s1, t6, t2
18:               srli         a7, ra, 0
                  nop
                  and          s1, a1, s8
                  bltu         s10, s1, 25f
                  slt          s1, s9, s4
                  add          zero, s1, s11
24:               slt          a0, zero, t1
25:               sltiu        a1, a7, -471
                  bne          t5, s4, 36f
                  xor          s8, a3, t3
                  xori         a7, s5, 1645
                  sub          t5, a2, a5
                  sra          a4, s7, s1
                  bgeu         s7, s4, 43f
                  bge          s9, t2, 49f
                  bltu         t0, s6, 39f
                  srli         s8, a6, 22
                  bgeu         t1, a0, 41f
36:               sra          a4, t2, gp
                  ori          s7, s7, -244
                  sltu         t4, s5, s1
39:               srl          t1, s11, a1
                  or           a6, s5, tp
41:               srl          a4, s2, a5
                  sub          a0, sp, ra
43:               lui          t2, 212894
                  or           s10, s3, t6
                  sltiu        s4, s1, 1918
                  srli         gp, s6, 1
                  auipc        a5, 789689
                  bne          a4, a0, 51f
49:               add          s9, a6, s11
                  srl          t0, a7, s10
51:               or           s1, zero, a2
                  sll          zero, s7, s7
                  slt          s4, zero, a6
                  lw           s3, 4(s2)
                  sltu         s7, a1, a1
                  addi         s2, s2, 16
                  sltiu        t0, s0, 1692
                  lui          t2, 72189
                  and          s5, t5, s9
                  slt          ra, sp, a1
                  sub          t0, a7, s2
                  ori          s9, sp, -1874
                  slti         a5, s11, 1838
95:               addi x21, x19, 1
95:               jalr x21, x21, 0
sub_5:            auipc        s7, 185894
                  andi         t1, a5, -1701
                  lui          zero, 87110
                  addi         s2, s2, -24
                  xori         t2, t1, -1780
                  addi         gp, a4, 1567
                  sw           s3, 4(s2)
                  addi         t3, s3, 1084
                  xor          a5, t3, t6
sub_5_0:          jal          s3, 7f
0:                jal          ra, 5f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          ra, 1b
5:                jal          ra, 6f
6:                jal          s0, 10f
7:                jal          gp, 8f
8:                jal          ra, 9f
9:                jal          tp, 0b
10:               jal          ra, 4b
11:               sub          t3, a2, t0
sub_5_28:         jal          s3, 6f
0:                jal          ra, 5f
1:                jal          ra, 0b
2:                jal          t1, 15f
3:                jal          t3, 10f
4:                jal          ra, 11f
5:                jal          ra, 16f
6:                jal          ra, 12f
7:                jal          t4, 8f
8:                jal          t1, 4b
9:                jal          ra, 17f
10:               jal          tp, 7b
11:               jal          t1, 18f
12:               jal          s11, 2b
13:               jal          ra, 9b
14:               jal          ra, 1b
15:               jal          sp, 13b
16:               jal          t1, 19f
17:               jal          ra, 3b
18:               jal          t1, 14b
19:               andi         a5, sp, -333
sub_5_24:         jal          s3, 7f
0:                jal          s3, 14f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          t1, 0b
4:                jal          gp, 11f
5:                jal          tp, 20f
6:                jal          sp, 2b
7:                jal          t2, 18f
8:                jal          s3, 16f
9:                jal          ra, 12f
10:               jal          t1, 15f
11:               jal          ra, 10b
12:               jal          s5, 5b
13:               jal          s8, 1b
14:               jal          ra, 19f
15:               jal          t1, 17f
16:               jal          a7, 3b
17:               jal          ra, 9b
18:               jal          ra, 6b
19:               jal          ra, 13b
20:               sltiu        s11, s11, 1731
sub_5_1:          jal          s3, 5f
0:                jal          ra, 13f
1:                jal          ra, 17f
2:                jal          ra, 9f
3:                jal          ra, 11f
4:                jal          t1, 10f
5:                jal          t1, 23f
6:                jal          sp, 4b
7:                jal          ra, 14f
8:                jal          t1, 24f
9:                jal          t1, 6b
10:               jal          t1, 18f
11:               jal          ra, 0b
12:               jal          t1, 7b
13:               jal          ra, 12b
14:               jal          t1, 20f
15:               jal          ra, 8b
16:               jal          t1, 15b
17:               jal          sp, 19f
18:               jal          ra, 16b
19:               jal          ra, 21f
20:               jal          ra, 22f
21:               jal          ra, 3b
22:               jal          sp, 2b
23:               jal          ra, 1b
24:               xor          t4, a3, t0
sub_5_8:          jal          s3, 4f
0:                jal          ra, 6f
1:                jal          t1, 7f
2:                jal          ra, 18f
3:                jal          s3, 9f
4:                jal          ra, 5f
5:                jal          ra, 1b
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 13f
9:                jal          a7, 17f
10:               jal          tp, 12f
11:               jal          ra, 16f
12:               jal          s4, 14f
13:               jal          ra, 15f
14:               jal          ra, 11b
15:               jal          ra, 2b
16:               jal          ra, 3b
17:               jal          ra, 8b
18:               srl          s8, s2, a7
sub_5_6:          jal          s3, 15f
0:                jal          s5, 11f
1:                jal          sp, 5f
2:                jal          t1, 10f
3:                jal          ra, 0b
4:                jal          ra, 1b
5:                jal          ra, 3b
6:                jal          s5, 13f
7:                jal          ra, 8f
8:                jal          s10, 20f
9:                jal          s0, 17f
10:               jal          a4, 6b
11:               jal          ra, 7b
12:               jal          ra, 4b
13:               jal          a0, 16f
14:               jal          ra, 18f
15:               jal          tp, 19f
16:               jal          ra, 14b
17:               jal          ra, 12b
18:               jal          ra, 9b
19:               jal          ra, 2b
20:               nop
sub_5_9:          jal          s3, 11f
0:                jal          ra, 1f
1:                jal          t4, 12f
2:                jal          ra, 9f
3:                jal          a1, 23f
4:                jal          t2, 15f
5:                jal          ra, 19f
6:                jal          t1, 13f
7:                jal          ra, 14f
8:                jal          t1, 16f
9:                jal          ra, 20f
10:               jal          ra, 8b
11:               jal          s3, 21f
12:               jal          ra, 24f
13:               jal          a3, 10b
14:               jal          ra, 18f
15:               jal          ra, 0b
16:               jal          a4, 5b
17:               jal          s4, 2b
18:               jal          sp, 17b
19:               jal          a6, 22f
20:               jal          ra, 6b
21:               jal          s0, 7b
22:               jal          ra, 3b
23:               jal          ra, 4b
24:               and          s0, t0, t1
sub_5_14:         jal          s3, 20f
0:                jal          t1, 4f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          ra, 8f
4:                jal          ra, 23f
5:                jal          t1, 22f
6:                jal          ra, 9f
7:                jal          t1, 12f
8:                jal          sp, 16f
9:                jal          t1, 1b
10:               jal          a1, 21f
11:               jal          ra, 17f
12:               jal          ra, 11b
13:               jal          ra, 6b
14:               jal          ra, 19f
15:               jal          ra, 3b
16:               jal          ra, 7b
17:               jal          t3, 18f
18:               jal          t4, 13b
19:               jal          ra, 15b
20:               jal          ra, 5b
21:               jal          ra, 14b
22:               jal          ra, 10b
23:               slli         s8, ra, 13
sub_5_18:         jal          s3, 12f
0:                jal          a1, 8f
1:                jal          t1, 4f
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          ra, 13f
5:                jal          ra, 16f
6:                jal          t1, 2b
7:                jal          t3, 11f
8:                jal          t1, 9f
9:                jal          tp, 15f
10:               jal          ra, 6b
11:               jal          sp, 14f
12:               jal          s1, 7b
13:               jal          ra, 10b
14:               jal          t1, 0b
15:               jal          ra, 3b
16:               sltiu        ra, tp, 1134
sub_5_20:         jal          s3, 2f
0:                jal          ra, 22f
1:                jal          ra, 16f
2:                jal          ra, 1b
3:                jal          t1, 21f
4:                jal          gp, 7f
5:                jal          ra, 18f
6:                jal          ra, 23f
7:                jal          s3, 14f
8:                jal          ra, 3b
9:                jal          t1, 17f
10:               jal          s3, 20f
11:               jal          ra, 28f
12:               jal          s3, 19f
13:               jal          ra, 30f
14:               jal          t1, 0b
15:               jal          ra, 26f
16:               jal          t1, 27f
17:               jal          ra, 29f
18:               jal          t1, 11b
19:               jal          ra, 6b
20:               jal          sp, 4b
21:               jal          t1, 25f
22:               jal          t1, 15b
23:               jal          ra, 24f
24:               jal          tp, 9b
25:               jal          ra, 13b
26:               jal          tp, 5b
27:               jal          t1, 10b
28:               jal          ra, 12b
29:               jal          t1, 8b
30:               or           a5, s1, a3
sub_5_15:         jal          s3, 20f
0:                jal          a5, 6f
1:                jal          ra, 10f
2:                jal          ra, 8f
3:                jal          ra, 18f
4:                jal          t1, 21f
5:                jal          ra, 15f
6:                jal          a1, 16f
7:                jal          t1, 13f
8:                jal          t1, 4b
9:                jal          ra, 14f
10:               jal          ra, 7b
11:               jal          ra, 2b
12:               jal          ra, 22f
13:               jal          ra, 12b
14:               jal          ra, 19f
15:               jal          s8, 11b
16:               jal          ra, 3b
17:               jal          s1, 23f
18:               jal          gp, 17b
19:               jal          ra, 0b
20:               jal          ra, 1b
21:               jal          ra, 9b
22:               jal          ra, 5b
23:               sra          gp, zero, ra
sub_5_17:         jal          s3, 0f
0:                jal          s11, 1f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          s8, 13f
4:                jal          ra, 12f
5:                jal          t1, 6f
6:                jal          t1, 10f
7:                jal          t1, 11f
8:                jal          a1, 5b
9:                jal          ra, 3b
10:               jal          s9, 14f
11:               jal          ra, 15f
12:               jal          t1, 9b
13:               jal          tp, 8b
14:               jal          ra, 7b
15:               srl          a3, sp, t5
sub_5_25:         jal          s3, 5f
0:                jal          ra, 10f
1:                jal          t0, 20f
2:                jal          ra, 12f
3:                jal          a0, 6f
4:                jal          ra, 1b
5:                jal          t1, 2b
6:                jal          t1, 0b
7:                jal          t1, 18f
8:                jal          t1, 14f
9:                jal          ra, 17f
10:               jal          ra, 19f
11:               jal          ra, 7b
12:               jal          ra, 13f
13:               jal          ra, 8b
14:               jal          ra, 9b
15:               jal          ra, 3b
16:               jal          ra, 15b
17:               jal          ra, 16b
18:               jal          s11, 4b
19:               jal          s3, 11b
20:               lui          a3, 541732
sub_5_19:         jal          s3, 10f
0:                jal          ra, 11f
1:                jal          a1, 8f
2:                jal          ra, 7f
3:                jal          a7, 5f
4:                jal          t1, 3b
5:                jal          ra, 9f
6:                jal          ra, 0b
7:                jal          tp, 1b
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               jal          t1, 4b
11:               lui          t2, 582759
sub_5_16:         jal          s3, 7f
0:                jal          ra, 16f
1:                jal          ra, 13f
2:                jal          ra, 8f
3:                jal          gp, 22f
4:                jal          s4, 26f
5:                jal          s10, 28f
6:                jal          ra, 15f
7:                jal          a2, 4b
8:                jal          t1, 24f
9:                jal          ra, 6b
10:               jal          t0, 11f
11:               jal          t3, 21f
12:               jal          ra, 5b
13:               jal          ra, 14f
14:               jal          s3, 25f
15:               jal          tp, 2b
16:               jal          ra, 17f
17:               jal          t1, 27f
18:               jal          ra, 10b
19:               jal          ra, 3b
20:               jal          t1, 0b
21:               jal          tp, 9b
22:               jal          s1, 12b
23:               jal          s5, 18b
24:               jal          t1, 1b
25:               jal          ra, 29f
26:               jal          t1, 20b
27:               jal          t1, 19b
28:               jal          ra, 23b
29:               slli         s10, s7, 11
sub_5_10:         jal          s3, 13f
0:                jal          ra, 14f
1:                jal          t0, 12f
2:                jal          t1, 8f
3:                jal          t1, 11f
4:                jal          t1, 9f
5:                jal          ra, 1b
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          t1, 3b
10:               jal          t1, 2b
11:               jal          ra, 7b
12:               jal          a7, 0b
13:               jal          t1, 6b
14:               andi         t2, t4, -1667
sub_5_7:          jal          s3, 20f
0:                jal          ra, 1f
1:                jal          ra, 24f
2:                jal          t1, 10f
3:                jal          ra, 11f
4:                jal          ra, 23f
5:                jal          s3, 14f
6:                jal          t1, 21f
7:                jal          ra, 3b
8:                jal          ra, 7b
9:                jal          s11, 4b
10:               jal          ra, 17f
11:               jal          ra, 6b
12:               jal          t1, 2b
13:               jal          ra, 27f
14:               jal          s0, 0b
15:               jal          t1, 9b
16:               jal          gp, 28f
17:               jal          ra, 5b
18:               jal          t2, 8b
19:               jal          t1, 18b
20:               jal          ra, 25f
21:               jal          t0, 16b
22:               jal          s5, 15b
23:               jal          t1, 19b
24:               jal          t1, 13b
25:               jal          t1, 12b
26:               jal          s11, 22b
27:               jal          ra, 26b
28:               add          t1, s11, a2
sub_5_21:         jal          s3, 13f
0:                jal          t3, 6f
1:                jal          ra, 10f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          ra, 14f
5:                jal          tp, 7f
6:                jal          ra, 9f
7:                jal          t1, 8f
8:                jal          ra, 12f
9:                jal          s9, 11f
10:               jal          ra, 3b
11:               jal          t0, 5b
12:               jal          ra, 1b
13:               jal          ra, 0b
14:               sra          ra, s9, tp
sub_5_22:         jal          s3, 4f
0:                jal          ra, 6f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          a4, 2b
4:                jal          ra, 5f
5:                jal          t1, 7f
6:                jal          sp, 9f
7:                jal          a5, 0b
8:                jal          ra, 10f
9:                jal          s8, 3b
10:               add          s9, s5, a5
sub_5_27:         jal          s3, 1f
0:                jal          tp, 10f
1:                jal          tp, 8f
2:                jal          ra, 4f
3:                jal          t0, 0b
4:                jal          ra, 13f
5:                jal          ra, 6f
6:                jal          t1, 9f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          t1, 3b
10:               jal          t2, 11f
11:               jal          ra, 12f
12:               jal          ra, 7b
13:               jal          s1, 14f
14:               srli         tp, a4, 2
sub_5_23:         jal          s3, 5f
0:                jal          ra, 18f
1:                jal          a3, 6f
2:                jal          ra, 15f
3:                jal          a7, 17f
4:                jal          ra, 1b
5:                jal          ra, 2b
6:                jal          ra, 11f
7:                jal          ra, 0b
8:                jal          a4, 23f
9:                jal          ra, 27f
10:               jal          t1, 8b
11:               jal          s11, 21f
12:               jal          ra, 4b
13:               jal          ra, 20f
14:               jal          ra, 24f
15:               jal          s11, 13b
16:               jal          ra, 9b
17:               jal          s10, 7b
18:               jal          ra, 16b
19:               jal          s0, 25f
20:               jal          ra, 26f
21:               jal          ra, 22f
22:               jal          ra, 14b
23:               jal          ra, 12b
24:               jal          gp, 19b
25:               jal          t1, 3b
26:               jal          a0, 10b
27:               addi         s9, sp, 1691
sub_5_13:         jal          s3, 11f
0:                jal          t5, 12f
1:                jal          ra, 8f
2:                jal          s1, 10f
3:                jal          gp, 5f
4:                jal          ra, 15f
5:                jal          ra, 26f
6:                jal          s8, 14f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          a5, 1b
10:               jal          t1, 9b
11:               jal          ra, 24f
12:               jal          ra, 7b
13:               jal          t1, 2b
14:               jal          t1, 17f
15:               jal          ra, 23f
16:               jal          ra, 3b
17:               jal          a5, 16b
18:               jal          t5, 4b
19:               jal          ra, 21f
20:               jal          t1, 13b
21:               jal          t3, 25f
22:               jal          ra, 20b
23:               jal          t1, 22b
24:               jal          ra, 19b
25:               jal          ra, 18b
26:               slt          sp, s11, s4
sub_5_29:         jal          s3, 13f
0:                jal          t1, 11f
1:                jal          t1, 15f
2:                jal          ra, 9f
3:                jal          t1, 16f
4:                jal          t1, 17f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          ra, 2b
8:                jal          t1, 1b
9:                jal          ra, 18f
10:               jal          gp, 4b
11:               jal          a1, 3b
12:               jal          ra, 8b
13:               jal          t1, 14f
14:               jal          t1, 10b
15:               jal          sp, 7b
16:               jal          gp, 5b
17:               jal          ra, 0b
18:               srli         s4, tp, 10
                  bge          s4, zero, 5f
                  ori          zero, s5, -942
                  slt          s3, s2, s1
                  slli         a6, t3, 9
                  xor          s9, s11, s7
5:                sltu         s11, t0, a6
                  bge          s1, s8, 7f
7:                bge          ra, t3, 22f
                  lui          t5, 1036758
                  bltu         a7, a6, 16f
                  beq          gp, s9, 17f
                  bltu         a6, s9, 24f
                  xori         a7, sp, 1375
                  xori         ra, a0, -1150
                  slti         a3, s1, 1456
                  addi         a7, a0, 394
16:               bltu         t0, a5, 24f
17:               or           t0, s1, t2
                  auipc        a7, 65863
                  bgeu         s4, s3, 37f
                  sub          t2, t3, s3
                  add          t3, a0, s0
22:               srl          a2, t0, s1
                  and          ra, s10, t0
24:               lui          s1, 653479
                  bltu         t0, s0, 31f
                  andi         ra, s11, 1584
                  xori         t4, s9, 91
                  xori         s7, t4, 476
                  xori         a4, s6, 882
                  srai         sp, s2, 20
31:               blt          s5, a7, 35f
                  sub          s11, ra, t4
                  slt          s10, s6, gp
                  auipc        s9, 311043
35:               bne          s8, a6, 55f
                  sltu         gp, gp, s2
37:               sub          t0, gp, s0
                  sub          a6, s5, t3
                  sll          t3, gp, zero
                  xori         t4, a6, -402
                  auipc        ra, 886872
                  ori          s11, tp, 822
                  srli         s7, a3, 12
                  srai         a7, t2, 25
                  slli         s11, s6, 11
                  slti         a7, s10, -801
                  andi         s10, t2, -1795
                  sltu         t1, t5, s3
                  lui          s8, 314982
                  blt          a2, t4, 67f
                  xor          t2, s8, s8
                  sltu         a7, a2, a3
                  sltiu        t3, t6, -1082
                  slli         a7, a3, 17
55:               sra          a4, s6, ra
                  slti         s10, s5, 1901
                  slt          s4, t4, s5
                  beq          s11, s9, 76f
                  slli         zero, tp, 18
                  sub          a4, tp, a1
                  xor          t0, s10, ra
                  nop
                  and          a3, a0, t0
                  ori          t5, s3, 796
                  slt          s9, s5, t5
                  or           a0, gp, a6
67:               srai         zero, sp, 27
                  lui          a4, 547487
                  auipc        s10, 841431
                  slt          a6, s0, t2
                  bne          t0, s9, 90f
                  bltu         a0, t6, 83f
                  xori         a3, s3, 389
                  addi         t4, a6, 329
                  bltu         t2, gp, 90f
76:               srai         t0, t4, 21
                  bgeu         s9, a0, 79f
                  xor          s5, t4, s11
79:               ori          a5, s6, -750
                  andi         s11, a7, 1107
                  slli         t3, s10, 0
                  sll          t0, s8, s7
83:               sll          t0, a4, t1
                  beq          tp, t5, 93f
                  ori          sp, t1, 740
                  sltiu        s3, ra, 1579
                  sra          t0, t1, t6
                  srai         s10, t1, 27
                  sltiu        a0, s4, 184
90:               ori          sp, t2, -1448
                  andi         s9, a1, -3
                  srl          t2, s3, s1
93:               sra          t0, s4, a2
                  nop
                  ori          a3, s9, -1767
                  bge          s4, s1, 113f
                  beq          a0, s6, 107f
                  or           gp, sp, s8
                  and          a1, s4, s0
                  addi         s4, s2, 597
                  nop
                  ori          t1, a6, 287
                  lui          s9, 940074
                  lui          a1, 975361
                  blt          a4, t2, 114f
                  bgeu         tp, a5, 107f
107:              bltu         s0, a2, 108f
108:              bgeu         s3, s1, 114f
                  nop
                  andi         a5, a5, 1558
                  sll          s4, s9, zero
                  lui          a2, 909767
113:              slti         t1, s5, -1550
114:              bltu         s5, a0, 128f
                  bgeu         s9, gp, 125f
                  nop
                  bge          a7, a0, 133f
                  xor          a7, ra, a7
                  or           a2, s7, tp
                  xori         a6, tp, -1710
                  xori         sp, a1, 137
                  srai         a6, a4, 5
                  srli         s4, a1, 13
                  andi         t2, ra, -1432
125:              sra          s7, zero, s7
                  xori         t1, s0, -753
                  andi         s3, s2, 958
128:              beq          a4, a0, 148f
                  addi         s9, t0, -1091
                  blt          s9, s7, 138f
                  sltiu        a3, t2, -1410
                  and          t1, a4, s0
133:              sra          t3, zero, a3
sub_5_3:          jal          s3, 3f
0:                jal          ra, 5f
1:                jal          ra, 7f
2:                jal          t1, 0b
3:                jal          t1, 14f
4:                jal          t1, 12f
5:                jal          t1, 9f
6:                jal          t1, 18f
7:                jal          ra, 16f
8:                jal          tp, 10f
9:                jal          ra, 17f
10:               jal          ra, 4b
11:               jal          s8, 1b
12:               jal          s8, 13f
13:               jal          ra, 11b
14:               jal          sp, 8b
15:               jal          ra, 2b
16:               jal          ra, 15b
17:               jal          ra, 6b
18:               jal          ra, 19f
19:               srli         a1, s5, 13
                  ori          s5, a5, -50
                  xor          s1, a4, s9
                  lui          t1, 612598
sub_5_5:          jal          s3, 1f
0:                jal          ra, 4f
1:                jal          t1, 8f
2:                jal          ra, 7f
3:                jal          t1, 17f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          ra, 16f
7:                jal          ra, 13f
8:                jal          tp, 2b
9:                jal          ra, 0b
10:               jal          tp, 14f
11:               jal          ra, 10b
12:               jal          t1, 6b
13:               jal          ra, 15f
14:               jal          t1, 12b
15:               jal          ra, 9b
16:               jal          s9, 3b
17:               xor          ra, t0, s6
                  or           t5, a7, s7
138:              ori          a4, sp, 26
                  ori          a6, s7, 661
                  sltiu        a0, s4, 1329
                  nop
                  beq          s5, t5, 153f
                  lui          a2, 533080
                  sltu         t2, t4, zero
                  and          sp, s4, s4
                  slli         a6, t0, 30
                  blt          t2, t5, 152f
148:              andi         s10, a4, 1122
sub_5_4:          jal          s3, 10f
0:                jal          ra, 6f
1:                jal          t1, 18f
2:                jal          ra, 17f
3:                jal          sp, 19f
4:                jal          sp, 2b
5:                jal          ra, 12f
6:                jal          ra, 7f
7:                jal          a6, 5b
8:                jal          ra, 1b
9:                jal          ra, 13f
10:               jal          ra, 16f
11:               jal          ra, 14f
12:               jal          ra, 9b
13:               jal          ra, 15f
14:               jal          t1, 8b
15:               jal          ra, 3b
16:               jal          ra, 4b
17:               jal          t1, 11b
18:               jal          a1, 0b
19:               jal          ra, 20f
20:               lui          gp, 998210
                  sll          a5, t5, s5
                  srl          a6, a1, sp
                  bgeu         s8, s7, 159f
152:              bge          s5, gp, 153f
153:              nop
                  addi         a2, s5, 1032
                  andi         t4, s10, -187
                  sltiu        a4, a7, 1103
                  and          s1, s9, a6
                  add          a3, t2, tp
159:              ori          a5, a4, 1973
                  slli         a3, sp, 19
                  and          t1, s2, s8
                  and          a4, s9, s1
                  auipc        t3, 181029
                  slt          a3, a2, a4
                  bne          a5, s4, 167f
                  xor          ra, s2, t6
167:              srli         t4, a7, 7
                  srai         gp, t3, 17
                  sub          t2, a2, s9
                  addi         a0, a4, -763
                  lui          t4, 32066
                  sltu         zero, t6, zero
                  slt          s10, s5, s5
                  nop
                  sub          zero, s1, s2
                  ori          a4, s4, 155
                  sll          t3, s11, s1
                  sub          a4, a7, s10
                  sll          a5, a0, s2
                  srl          a2, s5, s9
                  slli         a3, s8, 6
                  ori          t4, a0, -105
                  bgeu         a2, t4, 196f
                  srai         t5, t0, 2
                  slti         s10, t3, 1114
                  srai         s4, tp, 6
                  bge          s4, a5, 194f
                  srl          a1, t5, t4
                  slt          s5, a1, a4
                  beq          t2, t5, 201f
                  bne          a3, tp, 195f
                  xori         a5, s4, 1464
                  sub          t2, t2, t3
194:              andi         s4, s5, 2046
195:              or           t3, zero, t5
196:              bge          s11, s5, 211f
                  addi         a3, t2, 1529
                  bne          a1, s10, 213f
                  auipc        a6, 706420
                  srl          sp, zero, s3
201:              add          s9, s4, t4
                  addi         a7, a6, -1029
                  sltiu        tp, a0, -982
                  bne          a4, sp, 213f
                  addi         s3, t3, -221
                  add          a5, sp, t6
                  and          t1, a6, gp
                  srli         a3, gp, 20
                  xori         t5, gp, -1975
                  bgeu         s10, t5, 217f
211:              bltu         a1, s10, 228f
                  lui          a2, 920986
213:              sltiu        sp, t6, -173
                  sltu         t4, t5, a0
                  sub          s5, a7, t2
                  ori          s1, s3, -921
217:              nop
                  bltu         a1, a3, 228f
                  srai         a6, s7, 21
                  blt          t0, a7, 226f
                  sub          ra, s1, s1
                  bne          a3, t0, 242f
                  lui          a6, 760521
                  xori         a0, a6, -600
                  srl          s9, a6, s10
226:              sltu         t2, s9, a0
                  srl          a4, gp, a2
228:              srl          t1, s10, s0
                  or           ra, s4, s9
                  slli         t5, s0, 23
                  xori         a4, s7, -347
                  xori         s10, a7, 510
                  auipc        s11, 1035804
                  and          a7, a3, s9
                  sltu         a5, sp, t3
                  add          a7, a4, a5
                  sra          a3, s7, t1
                  beq          a4, s0, 239f
239:              blt          a1, tp, 249f
                  bne          s4, a3, 249f
                  addi         t1, gp, -1922
242:              bltu         sp, t4, 262f
                  bgeu         t4, s11, 257f
                  slli         s9, a3, 7
                  bge          gp, a1, 262f
                  bge          s7, s5, 265f
                  sll          t4, s8, gp
                  xori         a6, a6, -1007
249:              lui          a4, 549837
                  andi         s3, gp, -713
                  bgeu         s6, s9, 252f
252:              slli         a5, t4, 19
                  slli         s3, s11, 8
                  xori         s0, sp, -1725
                  srl          t5, a0, s7
                  and          t5, s2, sp
257:              sltiu        s8, a6, 439
                  sltiu        tp, s9, 1278
                  xor          s9, zero, s3
                  or           s7, s3, a3
                  srl          ra, t4, s3
262:              beq          s10, a2, 273f
                  sltiu        a7, s2, -1011
                  slti         a7, s6, -396
265:              bge          t5, s5, 273f
                  srli         a0, t4, 23
                  srl          sp, a3, s7
                  lui          s0, 818842
                  nop
                  srli         zero, s3, 7
                  or           s8, a1, a5
                  sltiu        s4, t2, 2046
273:              bgeu         t1, t5, 291f
                  add          t1, tp, s5
sub_5_12:         jal          s3, 7f
0:                jal          s4, 10f
1:                jal          t1, 3f
2:                jal          ra, 12f
3:                jal          tp, 16f
4:                jal          tp, 14f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          ra, 5b
8:                jal          s5, 6b
9:                jal          tp, 27f
10:               jal          ra, 13f
11:               jal          t1, 18f
12:               jal          ra, 4b
13:               jal          ra, 22f
14:               jal          ra, 1b
15:               jal          s4, 8b
16:               jal          s7, 24f
17:               jal          s9, 9b
18:               jal          ra, 15b
19:               jal          ra, 23f
20:               jal          s10, 25f
21:               jal          a4, 26f
22:               jal          t0, 20b
23:               jal          tp, 11b
24:               jal          ra, 19b
25:               jal          t1, 21b
26:               jal          t3, 17b
27:               sub          sp, t1, s0
                  lui          a0, 210840
                  bge          s5, s0, 292f
                  and          a2, t1, s0
                  bltu         s10, s6, 296f
                  addi         gp, t4, 1448
                  slti         a4, s10, -793
                  auipc        t3, 598765
                  or           tp, sp, s3
                  add          s5, s4, a7
                  sltu         t2, s1, a0
                  srli         a7, s0, 17
                  sltu         s7, a2, t1
                  lui          s1, 278149
                  slli         t1, a4, 10
                  nop
                  andi         tp, s0, 139
291:              srli         s7, t4, 27
292:              ori          ra, ra, 310
                  add          t4, t1, s0
                  sltiu        s4, s1, 1239
                  slli         t0, a3, 3
296:              sltu         sp, a2, a5
                  sltiu        tp, ra, 1908
                  bgeu         s5, a7, 304f
                  addi         a2, a2, -386
                  sub          tp, s5, t4
                  auipc        a7, 579405
                  and          s8, sp, a7
                  nop
304:              sltiu        s3, tp, -1095
                  srl          s10, s0, s7
                  bgeu         t0, s8, 311f
                  srli         s5, s2, 12
                  beq          s8, s4, 326f
                  nop
                  sub          gp, sp, s1
311:              bgeu         a0, t4, 325f
                  slli         s11, s9, 4
                  andi         a7, zero, 1245
                  blt          t0, a2, 315f
315:              sll          s9, s3, s9
                  addi         a1, t4, 125
                  slt          a1, a6, s11
                  sltu         ra, t3, zero
                  bltu         s6, a4, 338f
                  slt          s11, t3, s1
                  srli         tp, s6, 30
                  blt          s8, s10, 329f
                  slli         gp, zero, 21
                  bgeu         s1, t0, 337f
325:              lui          a7, 385107
326:              sltu         a2, t4, s7
                  sltiu        a2, s9, 1311
                  xori         a6, t3, -607
329:              srai         a7, t1, 9
                  lui          a3, 77612
                  beq          s3, a4, 340f
                  and          s8, t5, s10
                  bltu         s11, a4, 353f
                  sltu         a2, s4, a6
                  sll          t4, s4, t5
                  xor          s7, a1, t1
337:              slt          ra, s10, a2
338:              bge          s9, s0, 349f
                  xori         s1, t3, -410
340:              sltiu        s11, t4, 298
                  xori         a6, s0, -674
                  andi         s7, a0, 900
                  slli         s4, s3, 28
                  srli         s4, t5, 3
                  or           zero, tp, t0
                  xori         s3, s1, -1047
                  addi         s10, s11, 1001
                  add          t4, s8, s7
349:              slli         t2, s2, 23
                  slt          a7, t0, a0
                  srai         t3, a1, 21
                  xor          t1, s9, t1
353:              blt          sp, a1, 371f
                  addi         s4, gp, 670
                  sltu         s10, s11, a1
                  slti         s11, tp, -522
                  slti         s10, s4, -1859
                  and          s1, s6, s8
                  andi         s7, a1, 918
                  beq          t0, t6, 367f
                  srl          zero, s8, t0
                  sub          a3, a0, t2
                  sltu         s8, gp, s9
                  bne          t3, a5, 366f
                  srli         s4, s8, 2
366:              srai         a4, a6, 11
367:              nop
                  sltiu        t2, a7, 1275
                  bge          ra, a0, 385f
                  srl          s3, zero, t0
371:              add          gp, t1, t5
                  lui          t5, 882347
                  xori         s10, s1, -1626
                  or           s10, t5, s3
                  auipc        a4, 243093
                  xori         sp, t5, -44
                  slli         a7, s2, 30
                  andi         a5, a7, -956
                  sltu         a1, s3, t5
                  srli         t4, a7, 14
                  sltu         t3, t0, s1
                  ori          t5, t6, -206
                  slli         s0, a0, 25
                  add          a5, t4, a0
385:              bne          t5, s4, 402f
                  andi         s3, t6, -1886
                  lui          t3, 274096
                  srl          t3, t1, s0
                  sltiu        gp, a7, -1043
                  andi         t1, t0, -1625
                  slli         s9, a1, 17
                  slt          a1, t4, a6
                  sltu         s10, a5, s5
                  beq          s1, a0, 395f
395:              bgeu         zero, zero, 396f
396:              lui          sp, 856895
                  srli         t2, t3, 0
                  sll          s8, s11, zero
                  sltu         sp, a4, t0
                  nop
                  sltiu        s4, a4, 1533
402:              sub          a2, s2, t4
                  bge          s1, s6, 409f
                  xor          t5, a6, s4
                  xor          t1, a1, tp
                  blt          a3, s8, 417f
                  srl          zero, s11, a7
                  srl          a4, tp, s3
409:              slli         a1, s9, 4
                  nop
                  sltiu        zero, a7, -1846
                  addi         s10, t6, -1199
                  xori         s4, s0, 126
                  auipc        s11, 276436
                  addi         t2, s9, 1732
                  sub          s7, t2, a4
417:              lui          s10, 490541
                  nop
                  addi         s1, tp, -1678
                  ori          a6, t5, 184
                  sra          tp, s8, t5
                  add          s9, a1, s5
                  bge          a3, tp, 438f
                  and          s5, s3, zero
                  and          zero, a5, t4
                  add          sp, s10, a4
                  sltu         ra, t2, s9
                  ori          sp, zero, -1999
                  blt          s9, t1, 433f
                  slt          t1, s11, s3
                  bge          a4, gp, 440f
                  xor          sp, s3, s4
433:              andi         s4, s0, 1045
                  srli         t4, a6, 12
                  sltu         s10, tp, t2
                  sltiu        s9, s2, -67
                  sll          s0, gp, s11
438:              lui          s5, 156904
                  xor          s10, t5, s5
440:              srl          gp, s9, s6
                  add          a3, zero, t6
                  sll          a0, t0, s7
                  srl          t2, s0, ra
                  beq          s2, a1, 450f
                  sub          s7, a1, t3
                  slli         a5, sp, 4
                  sltu         s10, t1, a4
                  lui          a3, 534008
                  nop
450:              sltiu        t2, s0, -253
                  sltiu        a6, tp, 1114
                  sltu         a2, t6, s5
                  and          a1, s11, a4
                  srai         s5, t6, 27
                  bge          s9, a6, 472f
                  bge          t4, s10, 466f
                  sltiu        s3, s2, 1057
                  ori          s0, s11, 650
                  bgeu         s2, a7, 474f
                  bgeu         a3, s5, 468f
                  and          t4, s9, tp
                  slti         s4, a5, 1333
                  sltu         s10, s9, sp
                  srli         s11, a6, 17
                  nop
466:              slt          gp, t6, s1
                  slt          a0, a1, s1
468:              andi         s7, s5, -650
                  slti         a2, t4, -1570
                  blt          sp, s3, 490f
                  srl          t5, t3, t3
472:              blt          t3, s0, 482f
                  slti         ra, tp, -837
474:              srli         t4, a7, 14
                  sra          tp, s3, t6
                  add          s0, a7, t5
                  andi         s1, t0, 616
                  lui          t1, 172312
                  bne          s0, tp, 487f
                  nop
                  ori          ra, s11, -1358
482:              sltu         a1, s4, a3
                  sll          s10, a3, a7
                  blt          s6, s7, 500f
                  slli         a2, a5, 17
                  bne          t4, s6, 495f
487:              bltu         gp, s3, 504f
                  bgeu         s3, s11, 499f
                  bge          a5, s9, 495f
490:              slti         s0, t5, 1593
                  addi         s7, tp, -934
                  bne          a3, a1, 502f
                  bltu         t2, t6, 494f
494:              auipc        s9, 869201
495:              sltiu        a6, a1, -121
                  xor          a2, a1, tp
                  bne          s7, t6, 514f
                  ori          a2, t2, 1545
499:              srai         a4, a1, 16
500:              slt          zero, t5, a7
                  xor          s7, a0, tp
502:              slli         a2, t0, 6
                  sra          a5, a4, gp
504:              srai         a1, a6, 23
                  slti         sp, t0, -2048
                  srli         a0, s1, 4
                  sra          a1, s10, s4
                  srai         s1, s5, 22
                  sltiu        a3, s9, 1202
                  add          s9, a6, a3
                  beq          s7, s0, 525f
                  sra          a4, a7, t3
                  sll          s0, t5, sp
514:              and          a7, a5, s0
                  sub          a7, t5, a2
                  sltu         s7, gp, s4
                  srli         s5, a4, 9
                  srl          gp, a0, s9
                  or           a5, ra, s0
                  slti         s4, s10, -1720
                  srli         s3, s0, 3
                  sltiu        t4, ra, 1712
                  sra          a2, a4, a7
                  andi         t5, t0, 93
525:              sra          t3, a0, a2
                  bgeu         s0, a1, 532f
                  add          gp, a6, t5
                  sltiu        t0, s9, -781
                  srai         a0, s2, 4
                  bge          a6, s2, 535f
                  nop
532:              ori          s11, s10, -277
                  srai         a7, s5, 19
                  auipc        a0, 23479
535:              sub          s9, tp, t4
                  or           s3, s6, s6
                  sra          t0, a0, s10
                  and          s3, t3, s9
                  bgeu         s5, s3, 557f
                  sltiu        tp, sp, -758
                  srl          a4, gp, t0
                  ori          gp, zero, -1979
                  blt          a7, tp, 563f
                  ori          a3, s4, 147
                  and          a0, t4, t1
                  andi         s9, zero, -1043
                  addi         a0, a5, 1365
                  andi         sp, s6, -712
                  addi         zero, t0, -1160
                  andi         a5, a4, -1303
                  andi         a0, a6, 711
                  bltu         t4, a6, 561f
                  sub          a6, a7, a0
                  bgeu         gp, a0, 564f
                  andi         a5, sp, -901
                  bltu         s6, s1, 563f
557:              andi         s0, t5, -1556
                  sltiu        a1, a6, -1283
                  blt          t3, t0, 572f
                  auipc        t2, 830682
561:              and          s5, s11, a4
                  blt          a2, gp, 563f
563:              srai         gp, t1, 2
564:              or           t4, a1, t3
                  bne          s5, tp, 580f
                  slt          s3, s6, s11
                  xori         a6, tp, -551
                  xor          s3, s5, t0
                  srl          a1, a2, gp
                  bge          ra, t3, 577f
                  sltu         ra, tp, t2
572:              andi         t5, gp, 1664
                  auipc        a0, 996232
                  slli         a1, s7, 2
                  beq          s9, tp, 595f
                  bge          t1, ra, 595f
577:              add          a2, s6, a3
                  bge          s9, s5, 586f
                  andi         s8, a6, 1783
580:              ori          zero, s8, -603
                  lui          s5, 275476
                  bgeu         s8, t2, 590f
                  srl          s3, s2, s10
                  sub          t2, s3, s11
                  srai         s9, s11, 20
586:              bgeu         s5, ra, 588f
                  sub          a6, s0, s6
588:              slli         s5, ra, 2
sub_5_26:         jal          s3, 0f
0:                jal          ra, 3f
1:                jal          s0, 6f
2:                jal          s11, 5f
3:                jal          tp, 15f
4:                jal          t1, 1b
5:                jal          ra, 13f
6:                jal          ra, 16f
7:                jal          t3, 10f
8:                jal          t1, 4b
9:                jal          ra, 17f
10:               jal          t1, 2b
11:               jal          ra, 14f
12:               jal          ra, 11b
13:               jal          ra, 9b
14:               jal          ra, 8b
15:               jal          a2, 18f
16:               jal          a5, 19f
17:               jal          ra, 12b
18:               jal          ra, 7b
19:               srli         s1, zero, 27
                  andi         s5, a0, -1964
590:              bgeu         s2, s2, 605f
                  andi         a5, s3, -50
                  auipc        s9, 294829
                  add          a1, s4, a3
                  sra          a2, t4, s1
595:              sra          t0, s6, a7
                  andi         t3, s4, -1707
                  srl          ra, s0, t0
                  ori          t0, s4, -1428
                  addi         t1, s10, -612
                  and          a1, a7, a4
                  ori          s0, a1, 578
                  auipc        zero, 909331
                  bgeu         sp, a6, 604f
604:              or           s3, t0, t0
605:              ori          t2, s10, -170
                  slti         a7, gp, 1095
                  add          s8, a4, s8
                  nop
                  slli         t1, s10, 31
                  auipc        s8, 286266
                  sll          t0, a7, a1
                  srai         a4, s5, 21
                  bne          a2, a7, 631f
                  andi         gp, s0, 1370
                  beq          s8, a2, 619f
                  srai         t1, t1, 21
                  nop
                  bgeu         a7, a5, 629f
619:              sub          t4, s9, t6
                  sra          a6, a6, s11
                  srai         t1, s10, 9
                  bne          ra, t5, 624f
                  slt          t3, s1, s10
624:              addi         s1, t2, -1817
                  xor          s11, a0, s9
                  sll          tp, s8, a3
                  sub          s8, t0, t3
                  sra          a2, s7, zero
629:              add          s7, a0, t4
                  lui          s1, 43366
631:              bge          a4, t4, 650f
                  bgeu         s9, t4, 638f
                  sll          s8, a0, a3
                  srli         s5, s9, 30
                  lui          a3, 617287
                  nop
                  ori          ra, tp, 593
638:              xor          a1, ra, s0
                  sra          t5, a2, s9
                  slt          s5, s10, a1
                  lui          tp, 404626
                  bne          t0, t5, 652f
                  xori         s3, t4, -609
                  srl          a6, s0, t5
                  and          tp, t2, t6
                  sltiu        t1, t5, -1467
                  bltu         s0, zero, 664f
                  slli         s9, t1, 22
                  and          t5, s11, ra
650:              nop
                  sll          t5, t1, a3
652:              auipc        a6, 419874
                  blt          t6, s10, 664f
                  lui          a1, 18868
                  bge          s0, a2, 670f
                  addi         s10, s7, -1618
                  sra          a4, a4, s6
                  bne          a2, s2, 673f
                  andi         a1, t3, -721
                  bge          gp, a2, 673f
                  blt          a1, s6, 671f
                  sll          gp, a1, a3
                  and          s10, t1, t6
664:              srl          tp, s7, s6
                  beq          a2, s8, 683f
                  sltiu        s1, a2, 932
                  slti         gp, s9, 292
                  blt          t6, a2, 686f
                  sub          s11, s8, tp
670:              sll          a3, a5, t0
671:              beq          gp, s7, 677f
                  or           s0, s8, s9
673:              andi         a7, t4, -827
                  srli         t4, tp, 11
                  sub          ra, s5, a2
                  bgeu         t3, t2, 681f
677:              bge          a1, t3, 693f
                  bltu         a4, t2, 686f
                  slli         s0, a0, 18
                  lui          s11, 94334
681:              srl          a4, s10, s1
                  bgeu         t5, tp, 689f
683:              sltu         ra, a4, zero
                  blt          s1, t6, 704f
                  sub          a1, ra, a1
686:              srai         ra, a0, 19
                  or           a0, a2, a3
                  lui          zero, 850265
689:              sltiu        t0, a6, -1992
                  bgeu         s8, s2, 697f
                  or           a1, t4, a1
                  nop
693:              slt          tp, s0, t4
                  sltu         t1, s8, gp
                  addi         t2, a3, -2016
                  srli         s11, t1, 7
697:              add          s4, zero, s5
                  sll          tp, s7, t5
                  slli         a0, a6, 18
                  ori          t1, t3, 1650
                  slti         s7, t3, -615
                  beq          s7, t5, 703f
703:              sltiu        t4, sp, 247
704:              sll          t2, a7, t6
                  sra          a0, a1, tp
                  bgeu         s0, ra, 726f
                  auipc        t4, 48184
                  add          s5, t3, s1
                  bge          a4, gp, 718f
                  addi         zero, sp, -1164
                  slt          s5, a0, a0
                  slli         s5, t2, 21
                  srl          a5, zero, a7
                  slt          a1, gp, a4
                  add          tp, s3, tp
                  bge          a1, a3, 717f
717:              slli         sp, s4, 12
718:              andi         t0, s6, -1100
                  beq          tp, s4, 736f
                  srai         s7, t5, 4
                  bltu         s5, s11, 725f
                  bne          t4, a3, 730f
                  add          s10, s8, sp
                  add          t5, t6, t4
725:              slt          s9, s7, gp
726:              srli         s7, t0, 1
                  slt          s9, s9, gp
                  xori         t3, sp, -378
                  nop
730:              auipc        tp, 844661
                  xori         sp, t3, -1684
                  xor          a1, sp, s8
                  nop
                  srli         ra, gp, 12
                  bne          s10, t1, 736f
736:              bltu         t0, s6, 745f
                  bgeu         t4, t3, 751f
                  and          s7, tp, s11
                  and          t5, sp, s8
                  bne          a4, a6, 751f
                  bne          tp, s9, 742f
742:              auipc        s0, 501073
                  xori         s8, s2, 823
                  or           a7, t1, a4
745:              slti         a1, s1, -2047
                  xor          a2, zero, t3
                  sll          s0, a3, t3
                  bne          s7, s10, 756f
                  beq          t1, t6, 762f
                  and          s0, s6, ra
751:              slti         a1, s1, -305
                  sra          s7, s0, tp
                  xor          s5, a3, a4
                  ori          t5, a2, -12
                  xori         s11, sp, -378
756:              srli         a4, s2, 5
                  add          s8, s3, s10
                  bltu         s6, a2, 766f
                  sll          s3, tp, s5
                  addi         a1, tp, -1635
                  beq          s4, a3, 777f
762:              srl          gp, s2, t0
                  srl          t3, t3, tp
                  ori          s10, zero, -234
                  sltu         tp, a1, t2
766:              xor          t1, a3, s5
                  slli         s3, a1, 2
                  srai         s9, sp, 19
                  srli         s8, gp, 3
                  beq          ra, a1, 771f
771:              nop
                  slti         t4, a2, 1157
                  sltu         t4, s0, tp
                  bltu         s9, a5, 783f
                  andi         t5, s4, -1996
                  bge          s9, a5, 787f
777:              slli         a1, a2, 8
                  nop
                  andi         s10, a7, 1440
                  addi         s7, s0, 248
                  blt          s10, s2, 786f
                  slt          t3, a2, a3
783:              add          zero, zero, tp
                  xori         a2, s6, -2023
                  sub          s10, s6, zero
786:              slt          s3, sp, t4
787:              xori         a7, a4, 73
                  lui          s4, 646248
                  srai         tp, t0, 21
                  xori         a0, s9, -1900
                  sub          t2, s3, a5
                  or           s1, t0, gp
                  slti         zero, s0, -1656
                  srl          s4, a2, s5
                  bltu         s3, ra, 815f
                  srai         s10, a1, 4
                  srl          t1, t6, t3
                  bge          a5, t5, 799f
799:              bge          s8, s2, 814f
                  srai         a4, ra, 23
                  srl          a2, s8, zero
                  sltu         t5, ra, a4
                  slti         a1, tp, 960
                  sll          a6, t2, s5
                  or           s10, s11, s1
                  srai         a2, tp, 25
                  or           t4, s4, s11
                  bgeu         s10, s3, 818f
                  beq          a5, s7, 815f
                  addi         t3, zero, 1235
                  bge          ra, s10, 813f
                  slt          s11, t6, s11
813:              lui          s0, 875440
814:              srli         s10, t1, 17
815:              srl          ra, tp, a0
                  bgeu         t1, gp, 831f
                  bge          t1, a5, 835f
818:              srli         a2, a5, 1
                  bge          s5, a0, 826f
                  sra          s3, s9, a3
                  bne          zero, a5, 831f
                  lui          a5, 119692
                  and          s7, a6, s6
                  and          t0, t1, a6
                  lui          t2, 768965
826:              lui          s4, 424534
                  bgeu         s9, t6, 836f
                  bltu         s4, s1, 846f
                  add          s5, a7, t0
                  auipc        a2, 770624
831:              or           s0, zero, t6
                  sltu         t4, ra, a0
                  bgeu         zero, s7, 840f
                  add          a6, tp, sp
835:              bgeu         s5, a7, 846f
836:              addi         s7, sp, -41
                  xor          a3, t5, s5
                  bltu         t6, s8, 842f
                  addi         a6, sp, -749
840:              sra          t3, a7, s8
                  beq          s4, ra, 858f
842:              beq          t6, t4, 862f
                  beq          s9, s11, 862f
                  bge          t6, s10, 861f
                  auipc        ra, 680700
846:              bgeu         t0, a1, 860f
                  add          a7, t5, t2
                  lui          s0, 961083
                  bne          sp, a7, 855f
                  addi         ra, s4, -1695
                  sll          a1, a0, a7
                  srai         zero, a3, 14
                  sll          s0, s3, s4
                  srai         s1, a4, 7
855:              andi         s9, a0, 1652
                  srl          t3, tp, s11
                  beq          sp, s6, 863f
858:              xori         s5, gp, 253
                  and          a6, a1, t5
860:              sltu         t4, a1, s1
861:              auipc        s0, 231704
862:              bne          t3, s6, 881f
863:              xori         a4, s1, -4
                  blt          ra, a4, 872f
                  blt          t1, a3, 874f
                  bgeu         s1, a3, 883f
                  srl          a3, a5, t3
sub_5_2:          jal          s3, 23f
0:                jal          ra, 14f
1:                jal          a0, 11f
2:                jal          t1, 3f
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          ra, 27f
6:                jal          sp, 24f
7:                jal          t1, 21f
8:                jal          ra, 22f
9:                jal          gp, 19f
10:               jal          ra, 12f
11:               jal          a3, 20f
12:               jal          t1, 9b
13:               jal          ra, 18f
14:               jal          ra, 10b
15:               jal          ra, 0b
16:               jal          ra, 1b
17:               jal          t1, 26f
18:               jal          t3, 8b
19:               jal          t1, 17b
20:               jal          sp, 25f
21:               jal          ra, 16b
22:               jal          ra, 4b
23:               jal          ra, 13b
24:               jal          t1, 15b
25:               jal          gp, 6b
26:               jal          t1, 5b
27:               srli         s0, t3, 10
                  bltu         s10, s7, 888f
                  sltu         s0, t2, a6
                  xor          s11, t5, a6
                  sltiu        s7, a1, -958
872:              xor          s7, s0, t4
                  sll          a5, t4, a0
874:              sub          t2, t1, t0
                  slt          s8, s7, a6
                  blt          s0, t0, 890f
                  bge          s6, a4, 884f
                  auipc        s10, 428547
                  sll          a1, gp, t4
                  or           s7, s2, s8
881:              sra          tp, s1, s7
                  blt          sp, s1, 893f
883:              blt          s6, s6, 885f
884:              srli         t5, s9, 18
885:              or           s7, a1, a6
                  bltu         gp, s5, 902f
                  addi         s5, a6, 1537
888:              sltiu        s7, a6, 1717
                  slt          s3, s11, t4
890:              slti         a2, ra, -312
                  blt          a6, a7, 895f
                  sltu         a0, a2, a3
893:              srai         s5, t1, 28
                  slli         t4, a3, 26
895:              ori          t4, a7, -1223
                  bgeu         ra, gp, 909f
                  and          t0, t4, s0
                  xori         s3, s8, 998
                  bgeu         ra, s7, 914f
                  slti         a7, a5, -927
                  or           s3, s11, a7
902:              auipc        a7, 605924
                  beq          a6, s0, 904f
904:              nop
                  slti         gp, t1, -313
                  blt          s3, a5, 914f
                  slli         a1, a3, 5
                  add          a2, t4, s11
909:              and          t3, s11, zero
                  lui          t3, 551708
                  and          s0, s8, t4
                  sltiu        t5, a0, -963
                  bltu         a5, t5, 920f
914:              srli         s5, s10, 30
                  srai         zero, gp, 17
                  bge          s7, t5, 922f
                  add          gp, sp, gp
                  srai         tp, a4, 26
                  xori         s1, t0, 1683
920:              beq          t3, t0, 937f
                  slt          s5, tp, s10
922:              sll          a6, s7, tp
                  srl          t0, a3, s0
                  andi         s4, a3, 1226
                  sltiu        sp, s4, 102
                  auipc        s5, 345042
                  andi         zero, s9, -389
                  or           a1, a7, s2
                  bge          s11, s11, 940f
                  sub          s0, t3, s10
                  xor          s5, t5, s11
                  xor          s4, t1, s0
                  sltu         a4, s8, s0
                  andi         gp, s6, 2031
                  bge          t6, t1, 940f
                  andi         sp, s8, 1682
937:              and          zero, a4, t4
                  sltu         gp, ra, sp
                  add          s1, s4, a5
940:              slti         s11, s3, 772
                  or           s5, t5, s3
                  or           s11, sp, a7
                  sra          a2, a2, s10
                  slli         t5, sp, 0
                  bltu         t1, ra, 946f
946:              beq          s3, s10, 966f
                  xor          t5, t5, tp
                  sra          a7, a6, s9
                  and          a4, s10, s3
                  add          s11, a4, s11
                  slt          s0, a7, s0
                  and          tp, a1, t6
                  blt          sp, s1, 971f
                  xori         a7, t3, 1155
                  addi         a2, s7, -1746
                  and          s10, s4, a3
                  sll          a1, a7, s3
                  ori          a0, a3, 1759
                  srai         s9, t1, 31
                  beq          a3, a4, 970f
                  bne          s8, s2, 970f
                  add          s11, s8, s0
                  sltu         a3, s2, t6
                  sra          a7, a0, s6
                  sub          tp, t1, gp
966:              blt          t3, ra, 967f
967:              xori         tp, s11, -11
                  bgeu         gp, t4, 986f
                  lui          a2, 935682
970:              blt          s3, tp, 985f
971:              beq          a4, s9, 981f
                  sll          s10, tp, a0
                  auipc        s7, 360029
                  slt          s9, zero, s0
                  srai         zero, s6, 17
                  lui          sp, 836728
                  bne          s0, a1, 994f
                  addi         s4, sp, 1583
                  slli         s4, s11, 2
sub_5_11:         jal          s3, 8f
0:                jal          t1, 7f
1:                jal          t2, 13f
2:                jal          t1, 9f
3:                jal          ra, 2b
4:                jal          s0, 19f
5:                jal          t1, 17f
6:                jal          ra, 12f
7:                jal          s0, 22f
8:                jal          ra, 1b
9:                jal          t0, 5b
10:               jal          t1, 25f
11:               jal          t1, 16f
12:               jal          tp, 4b
13:               jal          s5, 6b
14:               jal          ra, 11b
15:               jal          gp, 0b
16:               jal          ra, 24f
17:               jal          s1, 15b
18:               jal          t1, 23f
19:               jal          sp, 21f
20:               jal          a7, 14b
21:               jal          ra, 20b
22:               jal          ra, 10b
23:               jal          t1, 3b
24:               jal          s11, 18b
25:               or           s11, sp, sp
                  and          s10, t2, a5
981:              slt          sp, t6, s7
                  lui          sp, 260131
                  and          s9, t2, s7
                  andi         t0, t5, 439
985:              add          a3, a1, t4
986:              add          s7, s7, t0
                  slti         s8, s9, -1285
                  xori         a7, s3, 221
                  ori          ra, t6, -1350
                  bltu         s3, s6, 1008f
                  lui          s10, 348314
                  sub          tp, a4, s9
                  sra          a1, s0, a2
994:              sltiu        ra, a3, 203
                  xor          zero, s8, a6
                  slli         a4, a7, 15
                  auipc        a4, 176275
                  bltu         t1, t4, 1009f
                  srai         t2, s7, 2
                  bgeu         a0, s5, 1008f
                  bne          a4, a7, 1011f
                  sltiu        t1, t0, 1434
                  or           t0, s11, t4
                  beq          s8, s4, 1021f
                  bgeu         a4, s0, 1013f
                  slli         s10, a2, 22
                  lui          a5, 898158
1008:             bgeu         a6, a0, 1014f
1009:             lui          a6, 236197
                  beq          s6, zero, 1030f
1011:             lui          s7, 802330
                  auipc        s11, 378716
1013:             xori         t3, s11, 23
1014:             srl          a5, a6, zero
                  lui          s0, 587257
                  addi         zero, a3, -1789
                  xor          s3, s8, ra
                  beq          s3, s2, 1027f
                  sltiu        s1, gp, 1572
                  bgeu         s3, s7, 1039f
1021:             add          s9, a0, t4
                  xori         ra, t2, 1633
                  slli         s5, s9, 26
                  nop
                  beq          s6, zero, 1035f
                  slti         s11, a6, -70
1027:             srl          a3, tp, t6
                  lui          t1, 14954
                  and          t2, s5, s2
1030:             srai         a7, gp, 19
                  and          a3, a4, t3
                  sub          s11, tp, a0
                  addi         a0, s6, 1128
                  srli         s4, t2, 7
1035:             andi         s8, t3, -1939
                  bne          s3, t1, 1041f
                  xor          s1, s2, t0
                  andi         a0, s11, 182
1039:             slt          s5, s4, ra
                  or           ra, zero, t2
1041:             sltiu        a4, a5, -1206
                  auipc        s4, 300827
                  nop
                  nop
                  nop
                  andi         s1, s10, -609
                  addi         t3, s2, -479
                  auipc        ra, 374510
                  slti         a1, a3, 112
                  sll          a2, s6, ra
                  andi         sp, s10, -1329
                  slli         tp, a4, 24
                  bne          sp, s11, 1067f
                  add          a3, t2, s11
                  auipc        t3, 874838
                  srai         s11, s6, 6
                  slt          a4, a7, t6
                  ori          t5, a7, 398
                  ori          t2, s9, 1779
                  bltu         t1, s1, 1071f
                  nop
                  nop
                  srai         t5, t6, 8
                  xori         a3, a4, -1088
                  lui          s1, 434051
                  bltu         s8, s1, 1067f
1067:             sra          gp, t6, sp
                  blt          s5, s9, 1083f
                  srl          t4, s1, s5
                  slti         a7, s11, 690
1071:             or           t4, s4, a1
                  add          sp, zero, a7
                  sll          s1, sp, a5
                  srl          s5, s7, a6
                  slli         a7, t1, 10
                  sub          a5, t1, t5
                  sltiu        s3, s8, 1598
                  sltiu        a5, t2, 272
                  slt          a4, t6, t0
                  addi         a3, t6, 326
                  addi         t4, s4, -1604
                  slt          s8, a6, t0
1083:             addi         a3, a4, -1335
                  slti         t4, sp, -558
                  srli         a0, a2, 25
                  sll          t1, a6, a6
                  slti         a4, t1, 196
                  sub          s4, t0, a7
                  addi         s7, s11, 96
                  srai         t5, a2, 27
                  xor          a1, t1, s3
                  lui          a3, 175056
                  srli         t3, a1, 18
                  nop
                  sll          t4, s2, s8
                  slti         t3, a4, 358
                  sra          tp, a3, t1
                  blt          t1, s9, 1116f
                  bltu         zero, a7, 1114f
                  nop
                  auipc        a0, 22534
                  sltu         s7, a5, a6
                  and          s11, t4, a2
                  addi         a3, t4, -178
                  bne          s10, s4, 1106f
1106:             or           s11, t0, a1
                  bge          t5, a2, 1109f
                  sra          s9, t5, sp
1109:             lui          s8, 650163
                  srai         t1, s2, 7
                  blt          a3, zero, 1120f
                  srai         a0, s7, 8
                  slt          a1, a1, t0
1114:             sll          zero, t6, ra
                  beq          zero, a2, 1135f
1116:             sltu         s5, t3, zero
                  bltu         s7, zero, 1133f
                  bgeu         zero, s2, 1131f
                  xori         s4, s11, -1222
1120:             blt          a3, gp, 1127f
                  or           t2, s9, t6
                  srai         s3, a0, 6
                  sub          t4, s1, t1
                  srli         a6, t3, 31
                  ori          t2, s6, -1240
                  nop
1127:             slli         s4, a1, 22
                  lui          s8, 946359
                  lui          gp, 1048155
                  andi         a3, a7, 2005
1131:             srai         s0, t2, 9
                  xori         t5, tp, 864
1133:             addi         s0, t1, 1518
                  slli         s10, a5, 29
1135:             sll          s11, s10, gp
                  slt          t2, t0, a3
                  and          zero, a5, s10
                  srai         t1, t0, 3
                  srl          s0, s6, a4
                  blt          a2, s10, 1147f
                  beq          t4, gp, 1142f
1142:             auipc        t5, 876203
                  bge          s5, a2, 1149f
                  sltu         a6, s6, gp
                  sll          a7, a6, s11
                  beq          t6, t4, 1150f
1147:             blt          s7, s6, 1156f
                  xori         s8, zero, 580
1149:             and          t2, s4, tp
1150:             sub          t5, s9, s10
                  sltiu        a7, s7, -1612
                  xor          s5, sp, a2
                  andi         s7, a1, 1392
                  srl          s3, s6, a3
                  xor          a5, a5, a1
1156:             sll          a3, a2, s4
                  bltu         s1, gp, 1158f
1158:             blt          a5, a2, 1166f
                  srai         s10, s5, 27
                  nop
                  beq          t6, s7, 1169f
                  nop
                  blt          t5, s6, 1169f
                  slti         a0, t5, -694
                  bge          sp, s1, 1185f
1166:             bltu         t3, a2, 1184f
                  ori          a1, a7, 1505
                  bge          s0, tp, 1175f
1169:             bltu         ra, a3, 1174f
                  bne          sp, a0, 1189f
                  bge          ra, s2, 1175f
                  bltu         tp, s5, 1183f
                  xori         t1, t1, 2014
1174:             bltu         s2, t5, 1175f
1175:             slt          s0, s9, zero
                  sll          s0, s1, s7
                  andi         s3, a6, -401
                  bge          s4, t6, 1198f
                  xori         a6, s9, 208
                  or           t3, s11, a2
                  addi         s11, s4, 2039
                  xori         a4, s8, 1873
1183:             andi         ra, a7, 1187
1184:             and          s4, t0, a4
1185:             sltiu        ra, a6, -267
                  lui          a7, 822923
                  slti         s9, t3, -24
                  addi         s10, t6, 168
1189:             and          s3, s7, t3
                  auipc        s5, 971374
                  bne          zero, t1, 1206f
                  sra          s0, a5, t1
                  beq          zero, s9, 1199f
                  bgeu         ra, t0, 1205f
                  lui          s3, 169363
                  srli         t3, a2, 21
                  srl          s11, s1, t6
1198:             lui          s10, 125961
1199:             bgeu         s3, a1, 1214f
                  ori          a5, s1, 185
                  beq          t3, ra, 1203f
                  nop
1203:             bge          s8, s6, 1220f
                  sub          s7, a2, ra
1205:             sll          s0, a6, gp
1206:             sra          a7, a7, t0
                  or           a4, t4, t1
                  sltu         a4, a7, s5
                  sub          a5, s10, t6
                  or           zero, t1, s11
                  sll          s10, t4, s3
                  sra          a6, a5, a4
                  sltu         sp, s6, a1
1214:             xori         s8, s2, 395
                  sub          t3, s3, s8
                  auipc        a6, 425557
                  sra          sp, t1, a3
                  ori          s0, s11, -1978
                  slli         a0, sp, 13
1220:             slti         sp, sp, 1568
                  blt          gp, t1, 1234f
                  addi         tp, a4, 1702
                  slti         sp, s5, -46
                  add          t3, s3, s0
                  or           a2, t0, a0
                  add          s3, a6, t1
                  beq          ra, t4, 1237f
                  nop
                  or           a5, s3, t4
                  lui          s8, 595830
                  and          a1, s2, tp
                  srai         s5, a0, 30
                  or           a4, t4, zero
1234:             sub          a2, ra, a6
                  sll          s7, a5, s4
                  add          gp, s7, s8
1237:             nop
                  lui          t0, 32864
                  sub          s11, s8, a6
                  andi         t4, s7, -1478
                  bge          t5, s4, 1255f
                  srli         a2, a5, 19
                  blt          s4, s8, 1250f
                  bltu         t4, t3, 1245f
1245:             ori          t2, s10, 1052
                  or           ra, ra, a4
                  add          t5, a2, t1
                  slli         s0, a0, 26
                  slli         s5, t1, 27
1250:             nop
                  slti         s9, s6, -211
                  bge          s7, s0, 1262f
                  sll          a1, a0, s4
                  srli         t5, sp, 23
1255:             sltiu        a3, a7, 673
                  sub          a0, ra, ra
                  ori          ra, t2, 276
                  andi         t0, s10, 1660
                  bltu         a0, t5, 1277f
                  slti         s9, a2, -1912
                  slli         tp, t5, 14
1262:             sra          s5, s6, t4
                  ori          t5, s9, -896
                  bgeu         ra, t2, 1273f
                  slt          a5, t4, a5
                  sra          s8, s7, t6
                  ori          a6, t4, 331
                  lui          s1, 299174
                  bltu         zero, a0, 1285f
                  nop
                  beq          s11, t0, 1288f
                  sltiu        tp, t2, -1913
1273:             sll          s10, zero, a6
                  auipc        s11, 487318
                  nop
                  addi         s0, gp, -149
1277:             andi         s9, sp, 1504
                  srl          gp, a0, s8
                  srl          s7, t0, t6
                  andi         a7, s6, 1853
                  add          t3, s1, tp
                  lui          t0, 970090
                  addi         t3, a1, -1055
                  blt          t4, a3, 1293f
1285:             sll          ra, t6, s8
                  sra          t3, t0, ra
                  bge          a7, t6, 1292f
1288:             bge          s7, s8, 1304f
                  bne          t5, a2, 1299f
                  bgeu         a0, t6, 1307f
                  srl          tp, t1, zero
1292:             slli         a3, t6, 15
1293:             slt          a5, sp, a7
                  xori         a1, t6, -1953
                  sll          s8, s2, t6
                  lui          s5, 887783
                  lui          a4, 873804
                  nop
1299:             sub          a5, s4, s9
                  bgeu         t4, a1, 1306f
                  and          s8, t4, t2
                  sra          t0, s2, s6
                  bne          a5, a1, 1309f
1304:             xor          a5, ra, tp
                  blt          t3, sp, 1312f
1306:             blt          s1, a2, 1314f
1307:             bltu         s2, tp, 1321f
                  add          a0, s3, zero
1309:             sll          a5, t3, a2
                  sltu         a3, s4, s8
                  add          a6, a1, a4
1312:             beq          zero, s11, 1329f
                  srli         gp, sp, 31
1314:             addi         s3, a7, -374
                  sub          t3, t2, ra
                  andi         t1, s10, -716
                  bltu         s6, t6, 1326f
                  slli         t3, a7, 3
                  or           a5, gp, s4
                  and          t3, s5, gp
1321:             addi         s11, s0, 387
                  sll          a5, t5, zero
                  nop
                  sll          tp, gp, s3
                  sltiu        sp, t6, -503
1326:             slti         t3, s8, -1831
                  beq          t0, s3, 1335f
                  bgeu         t2, a3, 1330f
1329:             sltiu        s7, a4, 208
1330:             auipc        s9, 715327
                  slli         a2, s11, 23
                  bgeu         t2, a2, 1333f
1333:             sltu         t0, t2, a2
                  bgeu         t2, s1, 1354f
1335:             or           gp, s4, ra
                  sltiu        ra, ra, 1754
                  auipc        s4, 765111
                  sll          s11, a3, a0
                  slli         s9, s5, 1
                  srai         gp, tp, 25
                  slt          s8, s0, t2
                  add          s4, s8, a6
                  and          t4, a7, s6
                  nop
                  ori          s3, s7, 248
                  addi         t2, ra, -1253
                  xori         a2, a6, 250
                  xori         a1, s2, 1572
                  addi         s4, a2, -1359
                  bgeu         s9, a2, 1368f
                  slli         a4, t6, 4
                  sra          s0, t1, tp
                  blt          tp, s3, 1357f
1354:             or           a5, s8, zero
                  sub          t5, t6, a1
                  bne          s0, s2, 1376f
1357:             sltu         a0, zero, s11
                  addi         ra, s7, 1767
                  sll          s9, s10, t1
                  srl          ra, t4, a0
                  auipc        tp, 677654
                  blt          sp, s0, 1373f
                  add          ra, s6, sp
                  lui          s5, 115923
                  sll          a6, zero, t4
                  ori          a6, a3, -883
                  andi         a7, a4, -879
1368:             bltu         gp, a5, 1386f
                  sra          a0, t0, a7
                  srl          a7, t1, a7
                  blt          a6, a5, 1378f
                  bne          t2, s7, 1383f
1373:             or           ra, a4, t2
                  beq          t0, s3, 1393f
                  andi         zero, s10, 1566
1376:             sub          s11, t3, a4
                  bne          t1, a3, 1387f
1378:             xor          ra, t6, a2
                  beq          a2, t1, 1394f
                  srai         s0, zero, 7
                  slt          s9, a5, a2
                  bge          t5, a5, 1383f
1383:             sra          a3, a4, t1
                  slti         a6, t6, -1191
                  xor          s4, t4, t3
1386:             sra          s7, a7, sp
1387:             nop
                  srli         a7, s2, 24
                  bge          s3, a2, 1404f
                  sub          ra, a0, a2
                  bgeu         a3, ra, 1404f
                  sltu         s5, t0, s8
1393:             bgeu         s3, s2, 1394f
1394:             srl          s3, s9, s1
                  bltu         tp, s8, 1412f
                  addi         s9, s2, -776
                  ori          sp, gp, -302
                  ori          t0, zero, -848
                  xori         a4, ra, 1624
                  sub          s0, s4, t0
                  or           s11, s5, zero
                  sltiu        a0, ra, -1726
                  and          t2, t2, a4
1404:             bltu         s6, tp, 1424f
                  auipc        a7, 605121
                  xor          t0, s4, gp
                  or           a6, a4, a0
                  lui          t5, 481799
                  slli         s7, s10, 5
                  srl          s8, t2, a4
                  or           t4, gp, ra
1412:             or           zero, t0, tp
                  bltu         s8, t4, 1428f
                  slti         a3, s0, -552
                  bltu         t0, ra, 1425f
                  auipc        t2, 471714
                  bge          gp, gp, 1423f
                  sll          s1, a7, s9
                  andi         t2, t1, -1221
                  beq          tp, t2, 1427f
                  nop
                  bltu         t3, t1, 1440f
1423:             xori         t2, a2, -473
1424:             or           a2, a0, s2
1425:             blt          a2, s3, 1426f
1426:             or           s10, zero, s5
1427:             slt          s8, ra, a2
1428:             add          s4, t1, sp
                  nop
                  sub          s5, t0, a3
                  slt          tp, s8, ra
                  bltu         gp, s1, 1446f
                  nop
                  addi         a6, t4, -1861
                  srli         a4, s11, 9
                  slt          a2, s1, s9
                  srl          a5, t5, t4
                  slt          s11, s0, s7
                  beq          ra, t4, 1450f
1440:             add          s3, tp, a2
                  sltiu        a3, a7, -704
                  lui          s8, 738234
                  bltu         t0, s9, 1448f
                  ori          s4, s11, 1918
                  srai         a0, gp, 3
1446:             bgeu         s8, s10, 1455f
                  bgeu         ra, a5, 1457f
1448:             srl          t4, t2, s5
                  xori         a2, a2, -1831
1450:             sltu         a1, s10, a5
                  bltu         s2, t2, 1469f
                  bltu         t1, t4, 1472f
                  addi         s5, t4, -1130
                  blt          a3, a1, 1455f
1455:             lui          s4, 108287
                  srai         s10, a4, 22
1457:             lui          tp, 322592
                  bge          t1, ra, 1466f
                  srai         t3, sp, 15
                  bltu         ra, s0, 1468f
                  blt          t3, s1, 1467f
                  xor          s9, s0, a7
                  addi         s11, zero, 996
                  slli         a0, s4, 15
                  lui          s10, 903107
1466:             srai         a2, a5, 29
1467:             sll          a1, t0, a2
1468:             srli         t1, a7, 16
1469:             sra          a6, s10, s7
                  add          s9, t5, s4
                  xor          s9, s0, s3
1472:             srli         s9, t1, 20
                  sltu         s8, t4, t2
                  bge          a0, tp, 1476f
                  blt          tp, s5, 1491f
1476:             xor          s3, t5, gp
                  beq          s11, t1, 1486f
                  srl          a5, t1, s9
                  addi         s10, a1, -2048
                  bgeu         t3, t4, 1484f
                  add          gp, gp, s7
                  add          a4, t0, a0
                  bge          s9, s0, 1494f
1484:             ori          gp, a0, 383
                  srai         s1, t4, 22
1486:             bne          tp, s2, 1499f
                  or           t0, s1, s5
                  and          t3, t2, ra
                  xor          sp, t1, a2
                  blt          a2, s8, 1491f
1491:             bltu         t0, a4, 1508f
                  sltiu        a7, s9, -1652
                  sll          a2, a4, s8
1494:             sra          sp, t1, s6
                  bgeu         sp, s5, 1502f
                  bne          s3, ra, 1515f
                  bne          s10, t6, 1512f
                  sltu         ra, t3, ra
1499:             addi         s1, tp, -773
                  bne          s10, s3, 1509f
                  srli         s8, s4, 20
1502:             srl          s8, ra, s11
                  sll          zero, t3, a7
                  srai         a2, s0, 8
                  sub          sp, s1, t3
                  slt          s3, s8, tp
                  sub          a3, t6, s9
1508:             auipc        a5, 449896
1509:             sra          s8, a7, ra
                  sll          zero, zero, s6
                  slt          t1, tp, s11
1512:             andi         t0, sp, -181
                  and          ra, sp, zero
                  slti         s9, ra, -757
1515:             sltu         t5, t5, ra
                  lui          s3, 195570
                  srli         s8, s3, 5
                  bltu         a0, sp, 1524f
                  bge          sp, a5, 1524f
                  or           s8, t1, s3
                  bne          s8, s1, 1524f
                  add          a5, t4, t1
                  slti         s0, t6, -1142
1524:             slti         s5, s3, 1842
                  slt          s1, s5, s7
                  lw           s3, 4(s2)
                  and          a0, t1, t0
                  sltu         a1, s3, s2
                  addi         s2, s2, 24
                  auipc        s7, 637551
                  add          s9, t6, s5
                  srli         t5, t1, 24
2210:             addi x25, x19, 0
2210:             jalr x25, x25, 0
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
.word 0x9b5d50e2, 0xfe8d9d66, 0xd77538d1, 0x47f1ab3a, 0x41842a27, 0xa68ceefd, 0x96b51ce2, 0x7afc31ff
.word 0x99ea0e4f, 0xe35985db, 0x26348b6b, 0x9810c109, 0x95131c20, 0x606c5c52, 0x6578dfdf, 0x7fe3f63c
.word 0x07d8abe8, 0x423bc10a, 0x863e2845, 0xbd638188, 0xc569113b, 0x5e224e4b, 0x41a9bf34, 0x80d229c1
.word 0x3b518bd1, 0xd9c3099d, 0xe4769af1, 0xa64c7e64, 0xb85481f0, 0xb8963844, 0xfb0cd8f6, 0xe53fa264
.word 0xa88c14de, 0xbebcbdc8, 0x6a141faa, 0x6d510c98, 0x5b394247, 0x653992e5, 0x716c40d2, 0x66cafa01
.word 0x0e85a3b5, 0x45a770c7, 0x498217b0, 0x12e539a4, 0x8215ca87, 0x14f462c7, 0x3041d1f2, 0x0dfaea71
.word 0xcb2bdf3d, 0xa071c59d, 0xdfb05b09, 0x08bdff65, 0x97e2441b, 0xb46a4a2f, 0x1a972371, 0xe65f46b9
.word 0xe5d63b6c, 0x18671ff2, 0x9e01761d, 0xa51571fb, 0x8611cb59, 0x87e256ed, 0x339658d6, 0xe1b8c959
.word 0xacea4706, 0x2a544899, 0xd3910e8f, 0x1001892e, 0xfe89a991, 0xfadd9589, 0x9a2eb07f, 0x6b184ef6
.word 0x2eefb1b2, 0x6ff24d58, 0xa8f28701, 0x90a226bf, 0x53d74ac8, 0xe9bfb17e, 0x73467ded, 0xbd1c36d0
.word 0x5c4692be, 0x0028166f, 0x276a11d3, 0xddd3d3da, 0x574543f1, 0x8448ff0a, 0xd15d4378, 0x195d674a
.word 0xc6a5bc02, 0x4e1ceb77, 0x5cc8ecb9, 0xdb6ffe6d, 0xa53dcce2, 0x4ae8001a, 0x7041267b, 0xe38471a8
.word 0x7fe04df7, 0x64e29141, 0x27d70293, 0xc89e66b9, 0x43ee71ad, 0x4c072b5a, 0xc195a489, 0x0b275c56
.word 0xd3428396, 0x9fd09e5f, 0x89a2a7a2, 0xe220f8ca, 0xa08a17b0, 0xca5a96ce, 0x63af22f1, 0x59086561
.word 0x9d10edac, 0x192729f7, 0x606a6b20, 0xd44a697e, 0x0db4a2f5, 0x96637467, 0x70d7c2b7, 0xe6ba0d0e
.word 0xb55353e1, 0x424539e0, 0xa5e5416e, 0xa7337034, 0x1efca824, 0x7f370223, 0x3ec52fbe, 0x1f0ab764
.word 0x4ebc0df6, 0x5770c533, 0x57aead85, 0xd87a810c, 0x621c9ae2, 0xd344594d, 0xa1077259, 0xcceb98e9
.word 0x855c11a5, 0x12b27cd2, 0x342ddac8, 0x75e8ad87, 0x5227419b, 0x57d51c4f, 0x53a749f0, 0x0de5acc5
.word 0x14deb1a8, 0xaf082cea, 0x02c101c4, 0xc26edfe3, 0x9a1831e5, 0x49572bf5, 0x57450172, 0xca2b3806
.word 0x5ecfd81a, 0x59dbfbe1, 0xbfe6874e, 0x45800d20, 0xe4181d4b, 0x1a3b3454, 0xea6ae7ff, 0x8a2e430a
.word 0x1a4b2a4e, 0xf58325e6, 0x0f71bea0, 0x6f71f286, 0xbac634ba, 0xca5ed3eb, 0xd7ae6c62, 0x56306171
.word 0xf6988e3b, 0x88b27cac, 0xb5e000b4, 0xe1a53479, 0xcfd8375a, 0x40398426, 0xb9c4c702, 0xa4fabfe8
.word 0x6c0f907f, 0xd113193d, 0xb64811f0, 0x4fe8e54c, 0xea37e547, 0x808b3108, 0x427ebfac, 0xbc9ac821
.word 0x9b59997b, 0xc5c893c2, 0xa7d22a16, 0x07e050fd, 0xf1a48672, 0xa813c2d2, 0xf7122950, 0x9a08d9cd
.word 0x1276d647, 0x51651d1a, 0x458da46b, 0x74e56068, 0x5f5c8c05, 0xc1e7d00b, 0xb78d642d, 0x8aea4444
.word 0xcd3266b1, 0x8e1946ad, 0x4920637f, 0x9c93156d, 0x7fdbd2ce, 0xbc9d7496, 0x112a229f, 0xc50bb47d
.word 0x64971f9a, 0x00b20078, 0x11b37dc6, 0xf5776067, 0xa71fa8ad, 0x07777dd8, 0xc70f51df, 0x2f54830f
.word 0xb1ccde55, 0xdfd1952a, 0x4a9490c4, 0x913a8441, 0x91e6b580, 0x6159e65e, 0x97910a82, 0xf494224c
.word 0x7527bae1, 0x2a3706b2, 0x7493189a, 0x3a818815, 0x88f845d8, 0x1769f7f4, 0x8f9a26e4, 0x0de55f74
.word 0x4a1b39c6, 0x2219547b, 0x51c6a42d, 0x685eba5e, 0xb174b78c, 0x39e8097e, 0xd035fc80, 0xfbca08f4
.word 0x6a40f170, 0xcbedd020, 0x488685c6, 0x05537b2a, 0xdc3502b4, 0x6ef7e84e, 0xf66649ae, 0xe41cee6d
.word 0xcf969902, 0x396bd8ef, 0x6bcf4e61, 0x2ed5ab8e, 0x142d19a4, 0xbcac05c8, 0x6046e211, 0x0bd6239f
.word 0xab361322, 0x9e83c222, 0x5c4ced0a, 0xad47acf3, 0x1942d5c4, 0x2c42d77a, 0x65e0cc0e, 0x3f4fa921
.word 0x599c8863, 0xdfbdf741, 0x96b41d3b, 0x70946250, 0x823ff903, 0xa0c1ddb0, 0x0a4a5700, 0x0393f231
.word 0x17e8f147, 0x7f2a51b2, 0x8d528742, 0x6c9d0431, 0x58b12298, 0x653597e6, 0xbe81e635, 0xdcec53f2
.word 0x455357d9, 0x5793259f, 0x98264821, 0x328e5b92, 0x7e422198, 0x1e83b887, 0x102e6faf, 0x464b1797
.word 0x8dd174dd, 0xd62775f0, 0x0cc2a872, 0x517bea82, 0x9c34b9ec, 0x0a790101, 0xaeee396b, 0x44df37ce
.word 0xc0458d1b, 0xce8a3198, 0x67de9b3c, 0x9c0c63e4, 0xeaceb44d, 0x6868d037, 0x7921a4d6, 0x9d57c6ad
.word 0xb52b4dbd, 0x27f32a86, 0xc304d849, 0x5b5d90ec, 0x165badb8, 0xe2a5064c, 0x96f42903, 0x6b2d1a68
.word 0xc87978a7, 0x46373982, 0xdfd773f2, 0xcef469b9, 0x0b3b8deb, 0x35153afa, 0x3a797899, 0xca5fc48b
.word 0x70a64b46, 0x4bb0a4f8, 0x01994fb2, 0xe566ed86, 0xff68547e, 0x970c8f43, 0x3c19f3a0, 0x3c85829d
.word 0x331282fb, 0x6a7717c0, 0xd2d91421, 0xd52e9c37, 0xaacb7024, 0x4b19c047, 0xc136f261, 0x004908a1
.word 0x896839bd, 0xd8fcddf9, 0xe7167516, 0xbc857300, 0xb3a0879f, 0x4c75ad69, 0xaa1e7162, 0x87ee6421
.word 0xe5a71bea, 0x0d7b03db, 0x2458a41a, 0x4b5e22b1, 0x8df8fe05, 0x8d8a672f, 0xd1bee460, 0x069accc7
.word 0xd4742215, 0x29088fbe, 0x75e59806, 0x7af239e1, 0xa83d479a, 0xf8709c56, 0x1662277c, 0x2eda6d4a
.word 0x2de89d9f, 0x7ecad6ba, 0xe9712941, 0x678b5dbd, 0x8e93a677, 0x11b82956, 0x4ad272cb, 0x7d93cd5f
.word 0xbe1c2987, 0xa14167d2, 0xf26a2a56, 0x3bf0dbeb, 0xb343cb3f, 0x09e6ae1f, 0x30b4da66, 0x4f02e660
.word 0xfe5199a5, 0x05b8fd5b, 0x148e8a08, 0x9d508f57, 0x717d999b, 0x675b5d02, 0x54e39cb4, 0x3d91153f
.word 0x2bfa1fc3, 0x208bb6d7, 0x5d647753, 0xaa1062c7, 0xe7552238, 0x0a9d3fc8, 0xf0743d0d, 0x8ec29ebc
.word 0x0a5279b3, 0xdf6b6bfe, 0x339348f8, 0x76b2e0ae, 0x4c52cc24, 0x41899a96, 0x828f77e3, 0x2bd9b38f
.word 0x591fad34, 0xe80c1ff4, 0x24324568, 0x8b9c87b7, 0xd83e5a3e, 0x593ba657, 0x8afb31cb, 0xeb445eeb
.word 0x54cc2387, 0x9feefa8e, 0x676e25fa, 0xe188f834, 0x4302c2ac, 0xd63637f7, 0xb785e80f, 0x2102419c
.word 0x5dda16dc, 0xed812dc4, 0x2408efee, 0x81b9a2a7, 0x09857783, 0x69beaae1, 0xc5bbb2d0, 0x33741778
.word 0x3ed55748, 0x12127d72, 0x1b523f67, 0xdf168fcf, 0xbe3b95c6, 0x15aab7f7, 0xd0dcb0a8, 0xd82582a6
.word 0xf8626562, 0xacbc59b9, 0x037fa85a, 0x2e003058, 0x1a307a66, 0x6d314ab4, 0xc89099f7, 0x3b7c5ed7
.word 0x4dfe3977, 0x3a37869b, 0x86100358, 0x812c31f1, 0x02da4529, 0xa46c41b4, 0x4e1a3118, 0xbddf4643
.word 0x47b992ce, 0x88db6615, 0xf10b5206, 0x7aa92c77, 0x83fb1ec8, 0x1ac442c0, 0x18b0870a, 0xda7b5a25
.word 0x635c1b22, 0x7de25111, 0x122d0178, 0x9e32a66e, 0x8a90d276, 0x514ea6b9, 0x7dbee36e, 0x5bfd0595
.word 0xd4ac881d, 0x3efe4585, 0x09bf3d62, 0x2ea730f5, 0x6ada7eed, 0x5663b3ab, 0x8c8c2c99, 0xdb5e0a83
.word 0x3c29c7de, 0x721709c8, 0x550a5100, 0xc3213776, 0xf5db2448, 0x653d52ce, 0x5f8a2424, 0x054921d7
.word 0x125c2d2f, 0xbc745837, 0xba792a73, 0x45a89888, 0x5f13b8f0, 0x2472d885, 0x5f900d0a, 0x5430a15a
.word 0x1ed6dd95, 0xc51c482d, 0xae5bfebe, 0x2b228d15, 0xc6b7c1fc, 0xca638431, 0x6ce352eb, 0x2831ad92
.word 0xe08d0306, 0x42123fe2, 0x2cc5724f, 0x4729002f
.section .region_1,"aw",@progbits;
region_1:
.word 0x8ad0d7ec, 0x72e3e79e, 0x71b9b706, 0x676b9900, 0x72ce8674, 0x42a1f481, 0xe1fe1d33, 0x9e883c09
.word 0x3b26de0d, 0x75834c5a, 0xed0c753f, 0xde5a58e6, 0x7a81ad79, 0xa38fb9df, 0x91fd22d1, 0xf8b12ec8
.word 0x1451a267, 0xbd286846, 0xc11030d3, 0x26cc140d, 0x96d2decf, 0xc0c65460, 0x9f2bc8d2, 0x0211ce03
.word 0x9118f41f, 0xbdddce3d, 0xc2f333f7, 0x1e6f38c8, 0xb66b35f6, 0x1385eb16, 0x1a7a8eeb, 0xb1018d0c
.word 0x6b5638d3, 0x10ace4f4, 0x5696bca9, 0x0d961b05, 0x51ffbedd, 0x5b57258f, 0x5853ff3a, 0x1baecc8f
.word 0xb05ad899, 0xa9dc9eb2, 0x0d559c15, 0x1014ab1f, 0x6457a5b6, 0x4134b222, 0xf55ebf1a, 0x908c4fa1
.word 0xdafd465d, 0x53eccd89, 0x4be8fb7f, 0x11072f56, 0x55adcd0d, 0xd6fbf04d, 0xa2ad5103, 0x4bd58db4
.word 0x251feffa, 0xf11bde52, 0x9031a7f5, 0x16621eb0, 0x6cf07fce, 0xdcb1069c, 0xe59e73f9, 0x4fa6e169
.word 0xc869553f, 0x73e616d1, 0x519eed96, 0x4b8de5e5, 0x233886f1, 0x5443a0f6, 0x7ccfec87, 0xc0f9f881
.word 0x3f8f6d0c, 0xefc20f81, 0x6101a233, 0x9893a14c, 0x5e68ccf0, 0xeca779f1, 0xe1d539e6, 0x3620b4ef
.word 0xc3b56bad, 0x4a74d881, 0xc7b53b4b, 0x90a13455, 0xbff9121a, 0x6679dbac, 0x2f6b42bc, 0x8d8bed80
.word 0xb097a48f, 0x54828ae9, 0xa70fcc52, 0x9a616a44, 0x252e61b7, 0xa4650d82, 0xaad6431a, 0xf90d582e
.word 0x47f55b30, 0xd2a5aad6, 0x75b1ba53, 0x49a8bfbb, 0x545feff0, 0x0900ba01, 0xf13df591, 0x9fa116c7
.word 0xd668f05c, 0xdcf2aa18, 0x3ebc791e, 0x6b7069c6, 0x1f13de49, 0x0b2f2983, 0x7a22d00c, 0x20bcfe97
.word 0x9bd18cf4, 0xedd5d37d, 0x8bb2b3b6, 0x27686a7f, 0x31f02901, 0xf187fe67, 0x2d4adfa8, 0x8c8d745c
.word 0x7b2caf43, 0x94a56d87, 0x6ab1d545, 0xb087bb63, 0x6c9a6373, 0x92430bc1, 0x11bf4aa9, 0x9cd76bf0
.word 0x7ee2d123, 0xb5f6a065, 0x08bbc13b, 0x19b89579, 0xad5c93e1, 0x5bb251c1, 0xe563ead0, 0x419c9fad
.word 0xf8822681, 0xdd9a30fd, 0xdb55d5a5, 0x047de696, 0x99edc42d, 0xea6c71ad, 0x68bed513, 0xd580cfe9
.word 0xe84cbe9a, 0xce4ab9e0, 0x01c4ab5c, 0xdc4ac154, 0xe7502450, 0x8672e656, 0x89f0af98, 0x7b5011bb
.word 0xd4448df0, 0xe9bed299, 0x7d2f617d, 0x2caf5f7f, 0x651c4e5f, 0xa943e697, 0x28ae3418, 0xaf2ea7e5
.word 0x19df571c, 0xc90f668c, 0x3a53f636, 0x75fce90c, 0xba02b4c0, 0xda83d36e, 0x845af2a7, 0xb547fa61
.word 0x8293a3c3, 0xef07b349, 0xd17671a1, 0x089ab15e, 0x89089703, 0x7c4a4f17, 0xbd991fcc, 0x8ad87e4b
.word 0xb5cc1d3d, 0x3ca3de4e, 0x2711a3e4, 0xd64e00bf, 0xb6096e56, 0xd5f1c09d, 0x89367642, 0x4b6c88cf
.word 0xe2aff265, 0x97421ea3, 0x27f938c3, 0x8264578b, 0xb4ccecf8, 0xa4531d61, 0x771b17bf, 0x26246cd2
.word 0x5c44a019, 0xe970439c, 0x454428a9, 0x5daa69c2, 0xe8098da8, 0x3a3945c1, 0x93b3a205, 0x300b0c3a
.word 0xf22a3fb6, 0x0d488df2, 0x6c9ea89f, 0xe727d411, 0xf83496c3, 0x166d37ba, 0xda8b0b27, 0xb6b93b48
.word 0xde4d018f, 0x45267b93, 0x8fea2306, 0x444561b5, 0x7b1e11a7, 0x81008902, 0x0ea45839, 0x8c240cf2
.word 0x414fd53f, 0x798124d1, 0x97704925, 0x2d8718cf, 0xdbf44d20, 0xa65db27b, 0x9b0564e0, 0x34ed535d
.word 0x5e10c59d, 0xbd28aaa1, 0xf84bc090, 0x8a199279, 0xfa29fc22, 0xeea219a6, 0x26c9fbee, 0xb46f46e0
.word 0x7c086b2b, 0xf1d5d843, 0xfb090b37, 0xfe0e5ea7, 0xf2f17b46, 0x39f334a4, 0x988ee4c7, 0xd627a393
.word 0x4ddb50ac, 0x9da97e9d, 0xbf8824e1, 0x7e862b7a, 0x4a8b137e, 0x89082449, 0xd8660d15, 0x1bb4b49f
.word 0x75b1494f, 0x31ec4669, 0xd19517d0, 0xbfd56493, 0xdb332c8c, 0x6c14b57e, 0x2e19c05e, 0x52c01ac0
.word 0x9abe6799, 0xbb953a05, 0x8e6e08f7, 0x971363ed, 0xc6d6d4a4, 0xface8bc0, 0x7075f4ea, 0xf0da026c
.word 0x05234eb3, 0x24c64b14, 0x29d7493a, 0x611733ee, 0xb2b0828d, 0xdca8fed7, 0x91ef2024, 0x207979eb
.word 0xd06857cd, 0x7d1a2ed0, 0xc7da55f7, 0xa7364c97, 0x4df4b7d1, 0xcdacb468, 0xe5eee5f7, 0x2300660f
.word 0xe61e7665, 0x980067ab, 0x3ccf64f0, 0x8eb33ef3, 0xe35eb76e, 0xd08a4f51, 0x4dbf93f1, 0x9fadc358
.word 0x77229a5e, 0x42d02ec3, 0xf4036d86, 0xb054498a, 0xeab366a0, 0xec9a5338, 0x9c59d08e, 0xed718e9c
.word 0xc6b01a29, 0x7b3b6e8f, 0xcaa31c0b, 0x6797aa66, 0x0ff64aed, 0x26d12ff4, 0x4b9163c0, 0x5389f14e
.word 0x50b63b1e, 0xa6f56c75, 0xe26f5331, 0x37710c29, 0x384aaabc, 0x18210237, 0x2f856cdd, 0x8dfaeeb4
.word 0xecca7565, 0xb4fef851, 0x4b431bab, 0xf5f0a926, 0x828b37e2, 0xc164508d, 0x39d8c4fd, 0xaba6b74a
.word 0x318f8d41, 0xd08f32df, 0x289b7713, 0x79ec7df5, 0xf03b0578, 0xf33f6639, 0xfcc327b4, 0x5ebfd2b7
.word 0xbd05d044, 0x90e4fb85, 0x6c673f6b, 0x07d698a6, 0xc7ea1bd9, 0x13f6c67d, 0x1301a9b2, 0xc82cb63d
.word 0x78167362, 0x23a8ad13, 0x2e3a2ab6, 0xbd69ed2a, 0x4a1feca7, 0x1cb6533e, 0x11e79ba4, 0x181fab02
.word 0x0ba8b178, 0xd13fe372, 0x04aca9cd, 0x3bb33e0f, 0x61cad53a, 0xde47b9d9, 0x3359c9c9, 0xc5c913d4
.word 0xe640a263, 0x8f4f2403, 0x9fcb8171, 0x4ab02472, 0x1b22eaad, 0x5c305276, 0xb11a788f, 0x27cd3cd8
.word 0xc752f389, 0xed405efd, 0x6a6282a4, 0xc5f92c47, 0x2111fd8d, 0xa21d685e, 0x711b9763, 0xf98b9c8c
.word 0xbe5ccb24, 0x2012c5a3, 0x459a6a55, 0xcbc59cc0, 0x76a4870a, 0xddaa3c70, 0x1346e9f5, 0x83440bf5
.word 0xdaa258b3, 0x640a64d1, 0x0ac0dbb5, 0xb604cfb7, 0x23c3cc19, 0xfd92f4a2, 0x1106b387, 0x27c32cb4
.word 0xd2c3d66d, 0x5fe989ea, 0x6b45d9a9, 0x305b7ecb, 0x9699e5ad, 0x744bc5b6, 0xe674a641, 0x610f166b
.word 0xa0013029, 0x90358b7a, 0xae746bae, 0x9961ea7f, 0x48776204, 0x6e1a73e4, 0xad90d27b, 0x4b66a570
.word 0xf6073195, 0x389861f6, 0x6ff8d548, 0x29888d09, 0x1e5bf139, 0x8a2d2bf3, 0xe87760ea, 0x663585e0
.word 0x0a5f33d5, 0xb86bf463, 0xe6089655, 0xe2715804, 0xf44ce1b2, 0x949634ea, 0x5e0526eb, 0x8ae1547c
.word 0x4b8c522a, 0xeb1b523f, 0x2f3be2df, 0x385dadd0, 0x9206c093, 0xc08b0a56, 0x2b834dea, 0x5acd7927
.word 0x9e759d1d, 0x97c5e9a1, 0x30efeec6, 0xa38d9aaa, 0x51602b15, 0xa2a1fd52, 0xbe07f259, 0x666734a0
.word 0xad7e5676, 0x36948ca7, 0xbb42b5cf, 0x361bc105, 0x77d684d3, 0xadbe6896, 0x3cdc38ab, 0x287f946e
.word 0x27dc98b0, 0x15f33250, 0xf10e41c5, 0xbfc2d60f, 0x68212ab8, 0x6cac4b21, 0x315ba04a, 0x20b52da2
.word 0xf173fd52, 0xd8b2315a, 0xb9d9cd6a, 0x99c2b7ea, 0x86377717, 0xc7625f09, 0x19e90f19, 0xe3f542fe
.word 0xdd190866, 0xc3ceb863, 0xa47fe0a0, 0xa10a8fd5, 0x5accd7dd, 0x06910d00, 0x0bf53c69, 0xb0a5fd7b
.word 0xc7e4746b, 0x756d2874, 0x7c61e22f, 0x218a875c, 0x20af331d, 0xbde69f52, 0x9b04a85a, 0x20c07a6d
.word 0xbada9712, 0x6f739bef, 0x78058682, 0x64dfeb5b, 0xb54019ff, 0xf67cb738, 0xd8abdc13, 0xad909305
.word 0x13a3f289, 0xb5ca8408, 0x91c744ff, 0x15e9524a, 0xafc5d16b, 0xcde1a9c6, 0xb18c115c, 0x96b8e6c7
.word 0x076986a3, 0x7edd815b, 0x272ae1ad, 0xbdb69aa1, 0x50826d4b, 0xad2ea934, 0x3010e72d, 0xfc4128ef
.word 0xad06b1d8, 0x29225daf, 0xfdf69771, 0x6e75cb9b
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x15, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x15, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x15, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x15, x4, ecall_handler
                  li x4, 0x1
                  beq x15, x4, instr_fault_handler
                  li x4, 0x5
                  beq x15, x4, load_fault_handler
                  li x4, 0x7
                  beq x15, x4, store_fault_handler
                  li x4, 0xc
                  beq x15, x4, pt_fault_handler
                  li x4, 0xd
                  beq x15, x4, pt_fault_handler
                  li x4, 0xf
                  beq x15, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

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
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
