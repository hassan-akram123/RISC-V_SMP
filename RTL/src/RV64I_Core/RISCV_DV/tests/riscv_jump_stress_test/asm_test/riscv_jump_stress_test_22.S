.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x30, kernel_stack_end

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
                  li x0, 0x4dc2e0e3
                  li x1, 0x9
                  li x2, 0xfdd7b5eb
                  li x3, 0xf5a58f4b
                  li x5, 0x0
                  li x6, 0x735a3732
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x3
                  li x11, 0x80000000
                  li x12, 0x5
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xa
                  li x16, 0xf3d6c68d
                  li x17, 0xb8fe788b
                  li x18, 0xf8f99e8f
                  li x19, 0x80000000
                  li x20, 0xf2deb88e
                  li x21, 0xffd474da
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0xf3899e75
                  li x25, 0x714b959
                  li x26, 0x0
                  li x27, 0xf4eea49a
                  li x28, 0xf10f8433
                  li x29, 0x2c28263c
                  li x31, 0x9a1d4805
                  la x4, user_stack_end
main:             jal          ra, 18f
0:                jal          gp, 3f
1:                jal          t1, 14f
2:                jal          t1, 5f
3:                jal          ra, 30f
4:                jal          t1, 27f
5:                jal          ra, 13f
6:                jal          sp, 10f
7:                jal          ra, 19f
8:                jal          ra, 24f
9:                jal          ra, 20f
10:               jal          s2, 2b
11:               jal          sp, 22f
12:               jal          t1, 26f
13:               jal          ra, 12b
14:               jal          ra, 15f
15:               jal          ra, 9b
16:               jal          ra, 28f
17:               jal          t6, 21f
18:               jal          t1, 11b
19:               jal          gp, 17b
20:               jal          ra, 0b
21:               jal          t1, 8b
22:               jal          ra, 7b
23:               jal          t1, 6b
24:               jal          ra, 4b
25:               jal          t1, 16b
26:               jal          a1, 25b
27:               jal          t1, 29f
28:               jal          sp, 1b
29:               jal          t1, 23b
30:               srai         gp, zero, 3
main_11:          jal          ra, 15f
0:                jal          t1, 17f
1:                jal          ra, 3f
2:                jal          t3, 11f
3:                jal          ra, 18f
4:                jal          ra, 2b
5:                jal          t1, 13f
6:                jal          s9, 0b
7:                jal          ra, 9f
8:                jal          t3, 10f
9:                jal          ra, 6b
10:               jal          gp, 12f
11:               jal          ra, 8b
12:               jal          t1, 1b
13:               jal          ra, 7b
14:               jal          s7, 16f
15:               jal          t1, 14b
16:               jal          ra, 5b
17:               jal          t1, 4b
18:               srai         sp, a4, 6
main_17:          jal          ra, 6f
0:                jal          s7, 8f
1:                jal          t1, 16f
2:                jal          sp, 11f
3:                jal          ra, 15f
4:                jal          ra, 5f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          ra, 9f
8:                jal          ra, 20f
9:                jal          a7, 14f
10:               jal          ra, 18f
11:               jal          ra, 21f
12:               jal          t1, 10b
13:               jal          s0, 17f
14:               jal          t1, 13b
15:               jal          ra, 19f
16:               jal          ra, 7b
17:               jal          ra, 12b
18:               jal          s2, 3b
19:               jal          t1, 22f
20:               jal          ra, 2b
21:               jal          ra, 1b
22:               sltu         s9, a0, a6
main_0:           jal          ra, 15f
0:                jal          gp, 4f
1:                jal          ra, 2f
2:                jal          sp, 7f
3:                jal          t1, 10f
4:                jal          s3, 9f
5:                jal          t1, 21f
6:                jal          ra, 19f
7:                jal          ra, 6b
8:                jal          ra, 16f
9:                jal          sp, 20f
10:               jal          s1, 5b
11:               jal          ra, 27f
12:               jal          ra, 14f
13:               jal          ra, 22f
14:               jal          t1, 0b
15:               jal          s11, 13b
16:               jal          ra, 3b
17:               jal          t1, 25f
18:               jal          s2, 11b
19:               jal          ra, 8b
20:               jal          ra, 18b
21:               jal          gp, 12b
22:               jal          t3, 23f
23:               jal          ra, 24f
24:               jal          ra, 17b
25:               jal          t1, 26f
26:               jal          ra, 1b
27:               add          s4, t6, t5
main_5:           jal          ra, 3f
0:                jal          s9, 9f
1:                jal          ra, 19f
2:                jal          ra, 7f
3:                jal          a2, 16f
4:                jal          t1, 13f
5:                jal          ra, 0b
6:                jal          ra, 8f
7:                jal          ra, 5b
8:                jal          t6, 11f
9:                jal          t1, 1b
10:               jal          s0, 17f
11:               jal          ra, 10b
12:               jal          t1, 2b
13:               jal          s5, 12b
14:               jal          t1, 18f
15:               jal          s11, 4b
16:               jal          gp, 14b
17:               jal          sp, 15b
18:               jal          ra, 6b
19:               lui          gp, 819343
main_1:           jal          ra, 10f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          ra, 7f
3:                jal          t4, 8f
4:                jal          sp, 3b
5:                jal          sp, 1b
6:                jal          ra, 0b
7:                jal          a1, 5b
8:                jal          sp, 9f
9:                jal          ra, 11f
10:               jal          ra, 6b
11:               jal          s6, 12f
12:               slti         a6, a2, 259
main_6:           jal          ra, 1f
0:                jal          s10, 4f
1:                jal          ra, 6f
2:                jal          sp, 19f
3:                jal          s11, 27f
4:                jal          ra, 20f
5:                jal          ra, 12f
6:                jal          ra, 9f
7:                jal          s8, 14f
8:                jal          ra, 13f
9:                jal          gp, 22f
10:               jal          ra, 24f
11:               jal          t2, 2b
12:               jal          ra, 7b
13:               jal          ra, 10b
14:               jal          sp, 26f
15:               jal          a7, 8b
16:               jal          ra, 23f
17:               jal          t1, 25f
18:               jal          t1, 5b
19:               jal          s0, 16b
20:               jal          ra, 18b
21:               jal          ra, 3b
22:               jal          t1, 17b
23:               jal          t1, 0b
24:               jal          ra, 21b
25:               jal          ra, 11b
26:               jal          ra, 15b
27:               slli         a3, s1, 7
main_14:          jal          ra, 8f
0:                jal          a0, 30f
1:                jal          ra, 21f
2:                jal          ra, 4f
3:                jal          gp, 26f
4:                jal          ra, 19f
5:                jal          ra, 25f
6:                jal          t1, 27f
7:                jal          t1, 17f
8:                jal          a4, 15f
9:                jal          t1, 0b
10:               jal          t1, 22f
11:               jal          ra, 2b
12:               jal          s6, 28f
13:               jal          a5, 14f
14:               jal          ra, 9b
15:               jal          a3, 18f
16:               jal          ra, 6b
17:               jal          ra, 20f
18:               jal          ra, 1b
19:               jal          ra, 29f
20:               jal          ra, 24f
21:               jal          gp, 16b
22:               jal          sp, 7b
23:               jal          ra, 11b
24:               jal          t1, 3b
25:               jal          ra, 23b
26:               jal          ra, 5b
27:               jal          s5, 10b
28:               jal          s9, 13b
29:               jal          t3, 12b
30:               sra          t4, s4, a5
main_7:           jal          ra, 23f
0:                jal          ra, 15f
1:                jal          s8, 11f
2:                jal          a0, 16f
3:                jal          ra, 7f
4:                jal          ra, 13f
5:                jal          a0, 6f
6:                jal          ra, 9f
7:                jal          ra, 24f
8:                jal          ra, 4b
9:                jal          ra, 25f
10:               jal          ra, 18f
11:               jal          ra, 0b
12:               jal          gp, 2b
13:               jal          a7, 5b
14:               jal          ra, 26f
15:               jal          s1, 19f
16:               jal          ra, 14b
17:               jal          t1, 20f
18:               jal          a6, 21f
19:               jal          ra, 17b
20:               jal          a7, 12b
21:               jal          a6, 1b
22:               jal          t1, 8b
23:               jal          ra, 22b
24:               jal          t1, 10b
25:               jal          ra, 3b
26:               nop
main_8:           jal          ra, 16f
0:                jal          t1, 15f
1:                jal          t1, 14f
2:                jal          gp, 3f
3:                jal          ra, 13f
4:                jal          ra, 12f
5:                jal          ra, 0b
6:                jal          ra, 17f
7:                jal          ra, 9f
8:                jal          t1, 7b
9:                jal          s3, 1b
10:               jal          ra, 8b
11:               jal          ra, 6b
12:               jal          t1, 2b
13:               jal          t1, 10b
14:               jal          t1, 11b
15:               jal          t1, 18f
16:               jal          ra, 4b
17:               jal          s4, 5b
18:               srl          t2, t1, s8
main_12:          jal          ra, 2f
0:                jal          ra, 9f
1:                jal          s4, 10f
2:                jal          ra, 8f
3:                jal          sp, 13f
4:                jal          t1, 15f
5:                jal          a4, 1b
6:                jal          ra, 20f
7:                jal          ra, 18f
8:                jal          ra, 4b
9:                jal          t2, 11f
10:               jal          ra, 6b
11:               jal          t1, 17f
12:               jal          ra, 3b
13:               jal          ra, 7b
14:               jal          ra, 19f
15:               jal          ra, 0b
16:               jal          t1, 12b
17:               jal          ra, 16b
18:               jal          ra, 14b
19:               jal          t1, 5b
20:               slli         s7, t6, 15
main_2:           jal          ra, 20f
0:                jal          ra, 13f
1:                jal          ra, 0b
2:                jal          ra, 18f
3:                jal          t1, 11f
4:                jal          ra, 19f
5:                jal          sp, 16f
6:                jal          gp, 10f
7:                jal          ra, 15f
8:                jal          ra, 7b
9:                jal          a3, 2b
10:               jal          ra, 8b
11:               jal          t1, 21f
12:               jal          t1, 4b
13:               jal          ra, 5b
14:               jal          t1, 1b
15:               jal          ra, 12b
16:               jal          ra, 17f
17:               jal          s3, 6b
18:               jal          sp, 14b
19:               jal          gp, 3b
20:               jal          a7, 9b
21:               slti         s1, s7, -1173
main_15:          jal          ra, 4f
0:                jal          t4, 3f
1:                jal          s3, 0b
2:                jal          ra, 9f
3:                jal          t1, 10f
4:                jal          ra, 8f
5:                jal          ra, 1b
6:                jal          ra, 5b
7:                jal          gp, 6b
8:                jal          gp, 2b
9:                jal          ra, 7b
10:               xor          a3, a1, gp
main_3:           jal          ra, 0f
0:                jal          t3, 18f
1:                jal          t1, 6f
2:                jal          ra, 13f
3:                jal          a0, 11f
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          s6, 16f
7:                jal          ra, 17f
8:                jal          ra, 5b
9:                jal          s8, 20f
10:               jal          gp, 15f
11:               jal          ra, 19f
12:               jal          ra, 14f
13:               jal          t1, 21f
14:               jal          ra, 2b
15:               jal          ra, 1b
16:               jal          ra, 7b
17:               jal          t1, 4b
18:               jal          a2, 3b
19:               jal          ra, 8b
20:               jal          ra, 12b
21:               auipc        s2, 891436
main_18:          jal          ra, 11f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          s5, 5f
4:                jal          ra, 8f
5:                jal          a3, 1b
6:                jal          ra, 13f
7:                jal          ra, 12f
8:                jal          ra, 0b
9:                jal          s3, 10f
10:               jal          ra, 2b
11:               jal          ra, 9b
12:               jal          t1, 6b
13:               xori         t4, t2, 1352
main_4:           jal          ra, 11f
0:                jal          ra, 1f
1:                jal          t1, 7f
2:                jal          gp, 8f
3:                jal          s2, 13f
4:                jal          ra, 16f
5:                jal          ra, 15f
6:                jal          ra, 10f
7:                jal          t1, 9f
8:                jal          t1, 0b
9:                jal          ra, 14f
10:               jal          s11, 2b
11:               jal          s0, 5b
12:               jal          ra, 4b
13:               jal          ra, 12b
14:               jal          t1, 3b
15:               jal          ra, 6b
16:               srl          s9, s1, t3
main_13:          jal          ra, 17f
0:                jal          gp, 2f
1:                jal          ra, 13f
2:                jal          ra, 6f
3:                jal          t1, 20f
4:                jal          ra, 8f
5:                jal          s8, 3b
6:                jal          ra, 21f
7:                jal          ra, 5b
8:                jal          sp, 26f
9:                jal          ra, 16f
10:               jal          ra, 23f
11:               jal          ra, 24f
12:               jal          ra, 1b
13:               jal          ra, 9b
14:               jal          ra, 0b
15:               jal          sp, 22f
16:               jal          ra, 25f
17:               jal          ra, 10b
18:               jal          ra, 19f
19:               jal          ra, 4b
20:               jal          sp, 18b
21:               jal          t1, 7b
22:               jal          ra, 14b
23:               jal          ra, 11b
24:               jal          ra, 12b
25:               jal          t1, 15b
26:               xor          zero, gp, a1
                  sra          a6, tp, s3
                  sltiu        t4, t3, 658
                  add          zero, s5, tp
                  bne          gp, tp, 9f
                  add          s0, s2, s10
                  auipc        gp, 170707
                  sra          a3, s10, gp
                  sltu         s7, t3, s1
                  addi         t4, s8, 1826
9:                lui          s7, 820749
                  blt          t2, s11, 26f
                  lui          s2, 4792
                  bne          a7, s5, 17f
                  srl          a0, a0, a6
                  sra          s3, zero, s7
                  srai         s4, a4, 11
                  sll          a0, s4, s4
17:               slli         a5, s3, 21
                  slti         t1, a3, 531
                  bne          a3, t5, 33f
                  lui          sp, 740722
                  slti         s7, gp, 1132
                  slti         s11, t1, 1495
                  sll          s2, s10, t2
                  sub          a5, s7, s2
                  bge          a7, gp, 36f
26:               slli         s6, t2, 18
                  beq          a5, s11, 29f
                  add          a1, s5, t6
29:               or           s7, s11, t3
                  sra          a3, a0, a2
                  nop
                  sll          a2, t0, sp
33:               xor          a5, a6, tp
                  slti         s7, ra, -260
                  sltu         a1, s5, a6
36:               xori         s5, s2, 845
                  bne          a4, s5, 42f
                  bgeu         tp, s9, 39f
39:               sll          zero, a3, a4
                  srl          s5, s3, s10
                  srl          s2, t0, s3
42:               bgeu         s7, s7, 51f
                  slt          s5, t2, a1
                  sll          zero, a3, sp
                  srl          a3, a0, t3
                  slti         a0, t1, 230
                  add          s10, s3, s4
                  sra          t6, t6, zero
                  add          t2, t1, sp
                  lui          s7, 534554
51:               srli         a6, gp, 27
                  addi         a3, a6, -458
                  xor          s3, s2, a1
                  and          a3, s10, s3
                  or           a7, a0, s0
                  or           sp, a2, t4
                  sub          s1, t4, s0
                  srli         s6, ra, 4
                  or           ra, t2, a6
                  bltu         s7, s5, 80f
                  bne          gp, a6, 76f
                  auipc        s10, 965408
                  ori          s10, t0, 536
                  auipc        s4, 598191
                  la           gp, sub_1
                  auipc        s10, 857626
                  lui          a3, 38682
                  srli         t3, s8, 7
                  ori          s5, sp, -555
                  ori          s0, a2, 1805
                  sub          sp, ra, s5
                  xor          s7, t3, t2
                  addi         gp, gp, -795
                  and          ra, t4, a5
                  add          s3, s4, s4
                  add          zero, ra, s5
main_j1:          jalr         ra, gp, 795 #jump main -> sub_1
                  slt          t2, s8, t1
                  and          a6, t5, a0
                  blt          s10, t5, 72f
                  or           a5, t4, s2
                  xori         s6, s10, -940
                  bne          a0, t4, 84f
                  slt          s5, a7, s9
72:               slt          s6, a3, ra
                  beq          sp, s5, 74f
74:               srl          a7, t4, a0
                  sltu         gp, s6, s1
76:               andi         a2, a4, -930
                  srl          t1, s2, a4
                  sub          t3, zero, a4
                  nop
80:               auipc        a3, 627916
                  srli         gp, s5, 11
                  nop
                  sub          t1, s7, gp
84:               addi         ra, s7, -295
                  sra          s9, a0, s8
                  nop
                  sra          t4, s5, zero
                  bgeu         t3, ra, 107f
                  sltiu        a0, t1, 1572
                  sub          t6, s3, a1
                  bltu         t4, gp, 98f
                  xori         t6, t6, 1503
                  sltu         t1, a5, t4
                  bgeu         a7, t1, 95f
95:               add          gp, s10, s11
                  sll          ra, t4, t4
                  sub          s1, tp, t6
98:               auipc        sp, 135849
                  sub          ra, a7, s7
                  sra          s7, sp, s7
                  nop
                  srai         a7, a6, 21
                  bne          tp, t5, 117f
                  slli         s9, zero, 27
                  srai         a5, a1, 31
                  bltu         s6, s0, 123f
107:              sra          a0, s0, a7
                  sub          s3, s0, s1
                  and          zero, s3, t0
                  auipc        s11, 514793
                  xor          t3, a4, t3
                  addi         ra, zero, -972
                  beq          tp, s5, 125f
                  bgeu         s3, gp, 120f
                  sll          t1, s10, t3
                  beq          t3, t4, 119f
117:              slt          s6, sp, s3
                  beq          a4, ra, 119f
119:              slli         t2, t4, 27
120:              andi         a7, t5, -1513
                  add          s9, t2, s4
                  slti         t3, s8, 849
123:              sll          a0, s11, a4
                  xor          t4, gp, a1
125:              slli         s5, s1, 5
                  or           t1, s2, tp
                  bge          s1, gp, 142f
                  bge          s5, s7, 135f
                  and          t1, zero, s7
                  andi         a6, s5, 1381
                  bgeu         t2, t2, 132f
132:              sltu         sp, sp, a1
                  sltiu        a2, s7, -1156
                  auipc        t4, 467216
135:              and          a2, s4, sp
                  srai         zero, a5, 13
                  sub          a0, s11, s0
                  add          t2, s1, s9
                  srai         a3, t1, 23
                  ori          a5, s9, -112
                  bgeu         s3, gp, 161f
142:              ori          s10, t2, -896
                  bne          t3, a1, 160f
                  nop
                  xori         t3, tp, -11
                  sra          s3, s5, a0
                  srl          t6, s4, s7
                  slt          s8, s0, a5
                  srl          gp, s9, sp
                  slti         t2, s2, 93
                  nop
                  srai         a5, a6, 12
                  xor          a6, s4, a3
                  addi         s10, t0, -446
                  nop
                  nop
                  sub          s4, s11, t1
                  bgeu         a1, gp, 175f
                  and          s8, s7, s4
160:              ori          ra, a5, 95
161:              srai         gp, zero, 4
                  and          s7, t6, t2
                  nop
                  addi         a4, a7, -1858
                  sra          a0, s2, s2
                  add          s6, a2, a1
                  sltu         sp, a6, s11
                  srai         t4, tp, 28
                  lui          t4, 713494
                  xori         s3, s2, -1586
                  bgeu         a3, s4, 187f
                  or           ra, s4, a3
                  bgeu         a3, s10, 187f
                  sltu         s3, a7, t6
175:              sll          s8, a3, a4
                  sltiu        ra, a7, 1327
                  xor          s5, a5, s10
                  slti         zero, a0, 36
                  bne          s10, a5, 194f
                  beq          a3, t1, 196f
                  sll          a3, a1, tp
                  srai         s1, s3, 5
                  ori          a3, a2, 209
                  slti         s11, s0, 1444
                  beq          s3, t5, 190f
                  add          zero, s3, a7
187:              bltu         a6, t0, 194f
                  bne          s0, a4, 200f
                  auipc        gp, 647052
190:              lui          s10, 223270
                  sll          s4, s5, gp
                  lui          s0, 209856
                  sltu         a2, s7, s1
194:              auipc        zero, 912270
                  slli         s9, t2, 30
196:              bltu         a1, tp, 210f
                  srai         a6, s10, 28
                  sub          a4, a0, a4
                  xor          ra, t6, s11
200:              bge          gp, t0, 205f
                  sra          t3, ra, t2
                  blt          a3, a2, 219f
                  bgeu         s11, a2, 204f
204:              slti         s1, a4, -441
205:              auipc        a2, 731393
                  srl          a1, a5, s7
                  slti         a1, s3, 586
                  sub          s2, s5, ra
                  sltiu        sp, tp, -211
210:              addi         s9, t0, 130
                  slti         t6, t4, -977
                  xor          t2, ra, t3
                  bge          a2, s10, 214f
214:              sub          a1, t6, tp
                  ori          s5, s8, 315
                  auipc        sp, 581470
                  la           s10, sub_2
                  addi         s10, s10, -30
                  slti         s9, a0, -1388
                  xor          a2, s11, a0
                  auipc        a6, 697167
                  or           a5, s6, s10
                  srai         s0, a0, 28
                  sltiu        t4, a2, 762
                  or           a2, t0, a1
main_j2:          jalr         ra, s10, 30 #jump main -> sub_2
                  beq          t6, s7, 225f
                  addi         t2, sp, -821
                  slt          ra, a3, s8
219:              slti         s4, t4, -266
                  nop
                  xori         s8, s6, -836
                  sltu         a1, s3, t6
                  slti         a5, a3, 1981
                  and          a4, t1, t3
225:              add          s3, a4, s5
                  sra          t4, s2, t6
                  add          s7, s10, a6
                  auipc        t6, 83621
                  and          sp, a6, t4
                  bne          s2, ra, 247f
                  srai         ra, a0, 31
                  or           s2, sp, a1
                  add          a0, s1, s1
                  beq          s6, t4, 250f
                  sll          ra, ra, s9
                  bne          s2, a2, 255f
                  bgeu         s8, gp, 238f
238:              and          s6, s7, a2
main_9:           jal          ra, 4f
0:                jal          t1, 17f
1:                jal          ra, 14f
2:                jal          ra, 15f
3:                jal          ra, 18f
4:                jal          t1, 7f
5:                jal          s7, 2b
6:                jal          s3, 11f
7:                jal          t1, 5b
8:                jal          ra, 6b
9:                jal          a5, 1b
10:               jal          t1, 0b
11:               jal          t1, 9b
12:               jal          ra, 13f
13:               jal          s10, 10b
14:               jal          t4, 12b
15:               jal          s1, 3b
16:               jal          ra, 8b
17:               jal          a0, 19f
18:               jal          t1, 16b
19:               xori         t4, t3, -951
                  beq          a4, t1, 254f
                  ori          ra, t5, 1992
                  srai         s7, a0, 12
                  lui          a3, 381928
                  bltu         a3, tp, 260f
                  sltiu        a3, t1, 609
                  and          s11, zero, t3
                  beq          t6, t5, 260f
247:              slt          sp, a1, s3
                  xori         s5, s5, -1368
                  xor          t2, s4, gp
250:              ori          s7, a3, 2000
                  or           s3, s9, gp
                  bgeu         a0, s4, 255f
                  ori          s1, s4, -777
254:              add          a1, t2, zero
255:              and          t6, s9, sp
                  nop
                  and          s8, s3, s3
                  sub          a5, s1, t4
                  sltiu        s10, zero, -1153
260:              bne          s4, tp, 266f
                  sltiu        s3, t5, 1906
                  srli         s0, t1, 3
                  andi         t3, s11, -626
                  ori          s0, s10, 1867
                  beq          s4, s0, 276f
266:              bne          s9, s8, 267f
267:              slt          s7, s4, sp
                  bltu         t4, s1, 275f
                  sra          sp, t1, a5
                  bge          a0, a7, 271f
271:              sltu         a4, s7, t1
                  addi         s6, s5, 1198
                  srli         a4, s9, 20
                  ori          a4, a0, 1087
275:              andi         s7, a3, -1804
276:              blt          t5, s2, 281f
                  beq          zero, s1, 283f
                  slli         s5, s1, 27
                  lui          a0, 717984
                  add          a6, t4, a1
281:              bne          t5, a6, 283f
                  sub          t6, zero, t5
283:              bgeu         t3, a0, 303f
                  sltu         ra, s0, a0
                  slt          s10, tp, s7
                  srli         s11, s3, 7
                  srli         a5, s2, 26
                  andi         s10, s2, -607
                  ori          t1, t5, -1524
                  xor          a6, a2, zero
                  add          a5, s1, tp
                  srai         t2, t0, 9
                  andi         s0, a1, 603
                  bge          s2, s11, 314f
                  slti         t6, s3, 1466
                  and          a6, a0, a3
                  nop
                  bne          s4, tp, 318f
                  sll          s5, gp, s9
                  slt          s7, t2, a1
                  xor          t1, s2, s6
                  bltu         zero, s6, 303f
303:              and          a7, ra, s3
                  sltiu        s0, t5, -1255
                  sltiu        a7, ra, -718
                  bge          a0, s4, 307f
307:              slli         s11, s4, 22
                  bne          s4, s6, 325f
                  add          s6, ra, s11
                  sll          t1, s2, t0
                  srli         s1, t2, 8
                  slli         a6, s8, 6
                  addi         a5, a0, 1298
314:              slti         s9, s6, 835
                  slt          s1, s6, a3
                  bge          s0, a6, 317f
317:              or           s3, gp, gp
318:              bne          a6, zero, 324f
                  slti         s10, s8, -565
                  bgeu         t0, a5, 332f
                  or           s4, s2, s6
                  blt          s4, s2, 323f
323:              slti         s8, a3, 266
324:              slt          s7, s0, a5
325:              slli         gp, s7, 11
                  sll          s7, s6, t3
                  srai         zero, s2, 25
                  slt          s9, a1, t4
                  sub          s3, s7, s5
                  srai         s3, a4, 19
                  bltu         tp, s4, 334f
332:              bne          s3, t2, 337f
                  bge          a0, a3, 334f
334:              or           s8, tp, a0
                  sra          s5, a3, t6
                  srl          s3, gp, s6
337:              srli         t4, t6, 6
                  bltu         a7, tp, 354f
                  ori          a5, s2, 1246
                  bne          a3, a4, 355f
                  ori          s2, t5, -1396
                  sra          a6, s8, s3
                  ori          t3, s2, 33
                  sltiu        s3, s8, -475
                  auipc        s6, 796078
                  sub          a4, t3, tp
                  ori          s3, s6, 2019
                  slti         t3, s8, -1498
                  nop
                  add          ra, s9, a1
                  slti         gp, t5, -773
                  lui          t1, 985999
                  lui          t2, 283475
354:              srl          a7, t5, s8
355:              or           s11, s7, tp
                  xor          t1, a3, zero
                  srli         s0, a4, 11
                  andi         s9, tp, 613
                  ori          t6, tp, -1800
                  add          s11, s10, s11
                  sltu         s8, s11, a3
                  sra          a2, t4, s0
                  slt          s9, t5, s7
                  sll          a6, gp, gp
                  srli         s11, a6, 26
                  andi         s8, a0, 447
                  bge          a4, t5, 381f
                  slli         s1, t0, 5
                  xor          s9, s8, s4
                  sltiu        s7, s11, 1459
                  ori          s7, sp, 1743
                  sll          ra, t1, t4
                  nop
                  srli         s9, t0, 5
                  and          t4, s8, s6
                  slti         s3, s4, 1883
                  sra          zero, zero, a0
                  nop
                  sub          t1, ra, a5
                  slli         s11, a3, 10
381:              ori          s1, sp, -31
                  sub          s7, s5, s3
                  slli         s5, s2, 16
                  ori          s11, s6, 666
                  andi         s10, s6, -426
                  bge          t3, a3, 395f
                  srai         ra, t5, 30
                  sltiu        a1, s10, -39
                  xori         gp, zero, 688
                  andi         a2, s6, 1880
                  sub          s5, s0, s3
                  srli         t4, a5, 28
                  slt          a0, a6, gp
                  slli         ra, s11, 10
395:              sltu         a3, t6, s3
                  xori         s6, s1, 1282
                  and          t2, a3, a0
                  xor          a5, s4, sp
                  and          a6, zero, zero
                  srl          t4, s0, a0
                  sltiu        t2, s8, 306
                  sra          t6, s6, s5
                  sub          gp, s7, s11
                  add          a7, s11, ra
                  add          a4, s3, t0
                  or           a7, s1, a4
                  xor          a2, s5, gp
                  andi         a2, a5, 795
                  and          s10, a5, t6
                  and          t4, s7, s10
                  bne          s0, a0, 430f
                  bltu         s2, tp, 426f
                  xor          t1, t0, ra
                  xori         t2, t1, -1811
                  auipc        a1, 609630
                  andi         s11, sp, 1922
                  sltu         s10, s10, t6
                  bne          s2, s8, 435f
                  nop
                  xor          t3, a1, a2
                  bltu         t0, s4, 428f
                  add          s10, a0, ra
                  bgeu         s9, s1, 434f
                  sltiu        a1, s7, 1270
                  sltu         t6, t0, a7
426:              bne          gp, a7, 431f
                  blt          t1, s10, 434f
                  sra          a0, gp, s7
                  la           s9, sub_2
                  slt          a5, s10, s5
                  slli         s10, s8, 7
                  srl          s1, s5, s3
                  lui          s5, 595582
                  lui          s1, 957636
                  addi         s9, s9, 341
                  sll          a7, t1, s8
                  slti         zero, s10, 1968
                  blt          a6, t6, main_j4 #branch to jump instr
                  slti         a3, s3, -702
                  xor          a4, a0, s2
main_j4:          jalr         ra, s9, -341 #jump main -> sub_2
428:              sub          t3, a3, t3
                  srl          t4, a7, a5
430:              nop
431:              sll          s7, t2, a5
                  and          a5, a2, s2
                  ori          zero, a6, -1137
434:              nop
435:              slli         t4, s3, 14
                  slti         s9, sp, -1396
                  xor          a2, a1, s0
                  sub          s9, tp, s0
                  blt          t4, t1, 445f
                  bge          t5, s8, 457f
                  ori          s5, ra, 1852
                  bne          s2, s7, 447f
                  sltu         s4, a4, a3
                  bge          s1, t2, 464f
445:              ori          a5, s0, -2029
                  srli         s5, s9, 5
447:              ori          sp, s9, -1296
                  add          s4, a4, gp
                  or           s2, s8, a2
                  xori         s2, t2, -110
                  sub          s9, s5, s9
                  or           s11, s7, t4
                  slti         t2, a5, 1168
                  xori         s3, t6, 1571
                  addi         t6, s5, -1422
                  slli         a0, s2, 4
457:              srai         s8, a1, 23
                  sll          a5, a7, t0
                  andi         gp, s0, 388
                  sll          s7, t4, a6
                  slt          a5, s6, t1
                  sltiu        a3, t5, 5
                  auipc        a6, 180320
464:              nop
                  srli         s9, tp, 18
                  bgeu         s4, t6, 482f
                  slt          s11, a0, s5
                  auipc        a5, 947699
                  add          t2, s9, s3
                  beq          a1, s0, 484f
                  xor          s6, t5, t2
                  xor          s11, s6, s10
                  bltu         s9, s10, 488f
                  add          sp, s5, s10
                  andi         a4, a5, 329
                  blt          s2, t5, 478f
                  xori         s0, a0, 572
478:              slt          s4, s7, s10
                  and          s9, t0, s10
                  slli         s11, s2, 2
                  srai         a4, s7, 14
482:              slli         a2, a5, 18
                  beq          a5, s5, 497f
484:              andi         t3, a6, 216
                  xor          s3, t1, a1
                  xor          s9, ra, s7
                  sltu         ra, tp, s7
488:              slli         s0, a6, 11
                  xori         a5, sp, -1612
                  slti         t4, t1, 644
                  slli         s11, s0, 19
                  sra          s11, s8, t5
                  slti         t1, a0, 1441
                  slli         a5, a2, 13
                  srl          s11, s3, s1
                  auipc        s0, 1032202
497:              beq          s0, t4, 503f
                  beq          s3, t2, 499f
499:              add          a4, a6, t4
                  xori         s8, s4, 1984
                  auipc        zero, 905754
                  addi         s8, a6, -1900
503:              bge          s0, t4, 522f
                  slt          s1, a1, t3
                  auipc        t4, 75409
                  addi         s0, s0, 45
                  bge          a5, a2, 508f
508:              bge          s11, s4, 511f
                  sltiu        a0, t2, 1050
                  or           t3, a4, a4
511:              nop
                  beq          sp, gp, 517f
                  or           a3, t6, t6
                  slt          s8, gp, s5
                  bne          t1, s1, 535f
                  srl          t6, s10, t0
517:              and          zero, ra, s9
                  bge          tp, s7, 525f
                  sll          s6, t5, a0
                  beq          t3, t3, 540f
                  andi         sp, s4, -506
522:              bne          s7, ra, 537f
                  xor          s4, s1, t6
                  bne          a5, s10, 533f
525:              or           a7, zero, a1
                  nop
                  sll          a6, s2, zero
                  slt          a6, s10, a6
                  beq          a4, a5, 543f
                  bltu         s6, s3, 537f
                  and          s9, zero, a3
                  and          a0, s10, s6
533:              addi         t4, a5, 944
                  bgeu         gp, t4, 551f
535:              andi         t6, s2, 1385
                  sltiu        a5, a7, 826
537:              or           s4, gp, ra
                  sltu         gp, s7, tp
                  slt          s8, s11, s9
540:              or           s7, sp, s8
                  xori         a7, t3, -1979
                  and          s4, a7, t1
543:              slti         a5, s4, 1031
                  lui          s1, 170954
                  bge          s6, s0, 559f
                  bgeu         s0, s4, 557f
                  nop
                  xori         t1, t1, 2015
                  and          ra, s7, a0
                  srli         a2, sp, 2
551:              srl          a4, t2, a2
                  sltu         ra, a3, ra
                  slt          a1, t6, s7
                  slli         t3, s8, 21
                  beq          s1, s0, 556f
556:              or           s1, s2, s1
557:              sra          s2, s1, s4
                  sltiu        a3, a5, 1543
559:              bgeu         ra, a6, 576f
                  nop
                  slti         s8, a7, -941
                  xor          s7, a5, a5
                  srl          ra, t3, t1
                  and          zero, t2, s1
                  sll          t4, s10, s1
                  ori          a4, a7, -553
                  slli         s3, t1, 8
                  bge          a5, a1, 569f
569:              auipc        s6, 697313
                  srli         t6, s9, 21
                  sub          s3, a7, s3
                  sra          s6, s4, s11
                  ori          a0, a6, -1815
                  srai         t2, a7, 15
                  bne          a7, a4, 591f
576:              srai         a0, t2, 12
                  slti         a3, a2, 1109
                  slt          s3, a4, t0
                  sll          t2, a4, a7
                  bltu         s9, t2, 586f
                  sra          a7, s11, gp
                  beq          s3, a5, 598f
                  bltu         s4, a1, 584f
584:              sub          s1, s8, a6
                  sra          t6, t2, t3
586:              bgeu         zero, a7, 591f
                  slti         t2, a0, -2012
                  slti         s5, a2, -1894
                  auipc        t1, 208263
                  beq          t1, t1, 592f
591:              sltiu        a6, s0, 561
592:              beq          t2, t4, 604f
main_10:          jal          ra, 16f
0:                jal          ra, 22f
1:                jal          a0, 10f
2:                jal          ra, 21f
3:                jal          a5, 2b
4:                jal          t1, 3b
5:                jal          s11, 15f
6:                jal          ra, 19f
7:                jal          sp, 0b
8:                jal          a6, 4b
9:                jal          t1, 14f
10:               jal          gp, 18f
11:               jal          s6, 17f
12:               jal          a1, 6b
13:               jal          ra, 1b
14:               jal          t1, 7b
15:               jal          a0, 13b
16:               jal          ra, 20f
17:               jal          ra, 5b
18:               jal          t1, 12b
19:               jal          t1, 8b
20:               jal          ra, 11b
21:               jal          ra, 9b
22:               nop
                  and          s0, ra, t1
                  xori         a5, a3, 205
                  blt          a3, t5, 610f
                  xor          gp, s3, t0
                  nop
598:              sll          t3, s1, s7
                  bltu         t0, s2, 616f
                  auipc        zero, 93748
                  bge          a5, s2, 606f
                  add          a0, a6, t4
                  srl          s8, a6, ra
604:              sub          s4, s0, s3
                  sra          a7, a2, a5
606:              srl          s11, s9, a7
                  srai         s3, t6, 2
                  and          a2, s1, tp
                  slt          s6, a1, t2
610:              sltiu        t2, t3, 655
                  slli         s9, a6, 26
                  addi         ra, t0, -1919
                  ori          t6, zero, -879
                  sltu         a6, s9, s11
                  slt          t6, s1, a3
616:              bge          a3, ra, 617f
617:              add          s9, a0, a0
                  and          s10, gp, s2
                  lui          s2, 1025579
                  beq          ra, t2, 637f
                  sub          s8, s1, a3
                  xori         s3, s7, -547
                  sub          a0, a3, gp
                  or           t6, t2, t2
                  addi         s1, s3, 314
                  and          a3, a4, s10
                  srli         a5, s10, 12
                  bge          sp, s10, 631f
                  auipc        a3, 422347
                  nop
631:              beq          a5, a2, 637f
                  sll          t6, s5, a5
                  nop
                  ori          sp, t1, -1900
                  slti         t4, s8, -1443
                  sra          t4, zero, s6
637:              blt          zero, s5, 654f
                  lui          s4, 217355
                  srl          t1, s7, s6
                  slt          s1, a1, sp
                  srai         a4, sp, 1
                  nop
                  sra          s3, s11, a5
                  srai         s7, a2, 21
                  nop
                  addi         t2, tp, -579
                  slt          t6, t4, s6
                  nop
                  blt          s8, t6, 654f
                  addi         t4, a2, 1915
                  lui          s0, 725761
                  auipc        t1, 374353
                  nop
654:              sra          a5, gp, t2
                  andi         s4, s8, -1410
                  sra          gp, s11, s8
                  andi         s3, tp, -322
                  sltiu        t2, zero, -1770
                  bne          s0, a0, 660f
660:              bne          s2, s7, 665f
                  srai         s4, s4, 26
                  srl          s7, s8, s11
                  nop
                  nop
665:              addi         s7, sp, -1017
                  beq          s4, a2, 681f
                  sltiu        a2, s2, 167
                  slli         t3, t0, 0
                  bne          s2, a7, 670f
670:              ori          t2, s1, 356
                  and          a7, t1, s8
                  srli         s9, s3, 22
                  bgeu         s10, t6, 684f
                  lui          t4, 525097
                  sll          s10, gp, t0
                  xor          s10, s11, t6
                  bltu         t3, a3, 682f
                  slli         s9, s1, 19
                  blt          a7, a2, 694f
                  sltu         t2, s3, t3
681:              bge          a4, s10, 688f
682:              sub          s4, a1, a6
                  lui          t6, 853773
684:              sltiu        t4, s11, 1181
                  sltu         s4, a5, gp
                  and          a6, s4, s6
                  la           a0, sub_3
                  sltiu        s0, zero, 400
                  lui          s8, 284264
                  sll          t1, t5, zero
                  addi         a0, a0, -855
                  nop
                  sll          t4, s2, s5
                  bltu         tp, s10, main_j3 #branch to jump instr
                  ori          a1, s10, 1578
                  auipc        a5, 750407
                  slli         a3, tp, 28
                  lui          t3, 614877
main_j3:          jalr         ra, a0, 856 #jump main -> sub_3
                  sltiu        s9, t1, -1663
688:              or           sp, t1, s8
                  auipc        t4, 904135
                  sltiu        sp, a3, -816
                  xor          t4, zero, s1
                  beq          a3, s10, 712f
                  bgeu         s5, gp, 709f
694:              slt          s0, sp, s11
                  sub          s9, s3, s4
                  lui          a4, 543312
                  bne          a3, s4, 698f
698:              slti         t4, zero, 413
                  or           t3, s7, s0
                  sra          t1, tp, a7
                  auipc        gp, 798145
                  bgeu         gp, s5, 709f
                  bge          a4, a1, 717f
                  xori         s9, t3, -399
                  srl          gp, s1, a5
                  sltu         t3, s3, t4
                  bge          t4, t5, 726f
                  sll          zero, t4, s0
709:              addi         sp, s6, 689
                  slli         gp, sp, 13
                  addi         a4, sp, -308
712:              sll          s4, sp, a1
                  bne          sp, t1, 727f
                  sll          t2, t1, s0
                  sub          s5, a1, ra
                  and          t4, sp, s5
717:              sub          s7, a2, tp
                  slt          s9, t1, a6
                  andi         s3, t0, -1990
                  bgeu         a3, gp, 721f
721:              sltu         s4, s0, s11
                  auipc        a0, 284065
                  sltu         sp, sp, a7
                  bgeu         ra, s6, 744f
                  slti         a5, s5, -530
726:              blt          sp, a3, 743f
727:              add          sp, s7, t0
                  slti         s3, t4, 1865
                  and          t6, zero, ra
                  auipc        ra, 594964
                  sltiu        t6, t3, -1384
                  sll          s5, t2, a6
                  addi         t2, sp, -1911
                  sltu         s9, gp, s3
                  sub          zero, s4, t2
                  bne          s11, s8, 748f
                  sltiu        s5, a5, -1576
                  bgeu         t4, a0, 740f
                  beq          s1, a1, 755f
740:              slli         a6, s6, 12
                  add          a0, sp, s7
                  and          s3, s4, t5
743:              sra          s0, t2, t1
744:              srai         t2, zero, 15
                  xori         s6, a4, 1013
                  sub          t6, s0, a2
                  add          s9, t3, t0
748:              bgeu         s10, s8, 757f
                  slt          s2, t4, gp
                  bltu         t0, a4, 764f
                  srli         ra, tp, 9
                  bgeu         gp, s0, 758f
                  or           sp, s0, s8
                  slti         a1, t1, 1140
755:              xor          s8, a6, s10
                  xor          ra, t4, t2
757:              xori         s7, s4, 141
758:              slt          a0, s10, zero
                  bgeu         a2, tp, 760f
760:              srl          t1, a5, s3
                  bgeu         t0, a3, 762f
762:              nop
                  bltu         s4, t2, 775f
764:              andi         s9, s3, 432
                  srl          sp, t6, a6
                  bge          ra, t0, 773f
                  sub          sp, t5, a1
                  sra          s6, a4, s3
                  blt          a2, s11, 785f
                  blt          s2, s11, 784f
                  sltiu        a4, a5, 918
                  slt          a7, ra, zero
773:              sub          a2, ra, t4
                  bgeu         s8, s8, 788f
775:              slt          t4, a1, s11
                  sra          a1, t0, s5
                  lui          a1, 539369
                  sll          t2, s7, s9
                  bgeu         s0, s10, 798f
                  nop
                  bltu         s5, a4, 783f
                  sra          s11, ra, s6
783:              xor          gp, sp, s7
784:              bge          s5, s6, 785f
785:              srl          ra, ra, t2
                  srl          ra, a5, t6
                  sra          sp, a2, s6
788:              blt          s5, a3, 791f
                  bltu         a0, t3, 798f
                  sub          ra, sp, s1
791:              andi         ra, t5, 67
                  slti         t3, a6, -1713
                  sll          s1, a4, t5
                  sll          s0, s7, tp
                  bge          zero, s0, 800f
                  slli         t6, s10, 28
                  lui          gp, 701195
798:              add          sp, s10, tp
                  srl          a5, s2, s1
800:              ori          t3, a7, 156
                  addi         s9, zero, 1026
                  slli         s5, s0, 25
                  srli         s11, ra, 7
                  blt          a7, ra, 819f
                  blt          a5, gp, 825f
                  sra          a1, s4, gp
                  bgeu         a2, t3, 827f
                  srli         s5, s0, 31
                  beq          s4, ra, 826f
                  sll          s0, a2, t0
                  sll          s11, t3, s3
                  addi         a1, a0, 229
                  or           t6, s11, a3
                  or           s5, t2, zero
                  xor          gp, s10, s10
                  slti         s7, s11, -1809
                  slt          zero, t1, a3
                  slt          a2, s7, s5
819:              sltiu        s8, t0, 1115
                  sltu         s10, s8, zero
                  xor          t2, a6, a2
                  xori         a5, s6, -1810
                  sltiu        s3, ra, 2028
                  sub          t2, a4, s7
825:              srli         a1, t4, 5
826:              bge          s3, s9, 837f
827:              bltu         a6, s2, 832f
                  auipc        s4, 237586
                  slt          s11, s5, t2
                  blt          t6, s10, 836f
                  sltu         sp, s10, tp
832:              lui          s1, 706702
                  bgeu         s10, t5, 850f
                  andi         zero, sp, 1296
                  bgeu         gp, s9, 841f
836:              bne          a6, t6, 850f
837:              blt          a2, gp, 838f
838:              addi         a6, a4, 1960
                  bgeu         tp, zero, 840f
840:              lui          s0, 719923
841:              beq          s9, s8, 848f
                  bne          s2, a1, 858f
                  xor          a4, a6, a0
                  sub          s7, s5, s0
                  ori          s1, t5, -1962
                  addi         zero, t1, 213
                  ori          s11, s0, 1208
848:              srl          a0, t4, t5
                  slti         zero, s6, -121
850:              srli         gp, a6, 7
                  blt          t0, t1, 868f
                  auipc        a0, 196014
                  xori         s2, a6, 708
                  sub          ra, s0, a3
                  bne          t3, a5, 870f
                  srl          s10, s6, a4
                  sra          s0, a2, tp
858:              and          s4, s3, s8
                  nop
                  srl          t4, a4, ra
                  xori         a7, a5, 550
                  bne          ra, s10, 867f
                  bne          s6, s8, 882f
                  bltu         a4, t2, 869f
                  auipc        a3, 707163
                  beq          a2, s0, 871f
867:              srli         a7, t5, 30
868:              sll          s3, a2, t1
869:              slti         t3, t6, -1547
870:              auipc        s10, 941897
871:              or           t1, a4, s1
                  slt          t4, t0, s1
                  srai         a6, s5, 22
                  add          a4, s8, zero
                  bne          s1, s4, 876f
876:              xori         s2, t4, 1251
                  sll          s10, s0, a1
                  auipc        s1, 599333
                  xori         a2, s3, 784
                  or           s5, s5, t1
                  slt          t4, tp, s8
882:              slti         a3, t0, 645
                  bgeu         a4, gp, 900f
                  bltu         s3, t0, 889f
                  sltiu        s11, a3, -1323
                  bltu         t2, a2, 906f
                  xori         a5, ra, -1460
                  sll          s5, a1, gp
889:              sra          s1, a4, t3
                  xor          s11, s7, a4
                  sltu         zero, t1, s10
                  xor          t4, s2, t4
                  sub          a7, s0, s2
                  add          s1, a5, a0
                  sltiu        s9, a0, -1587
                  beq          a5, s7, 911f
                  srl          t2, s9, t2
                  srl          a2, s11, s7
                  sra          a0, tp, s10
900:              or           ra, zero, t3
                  andi         s1, s0, -621
                  sub          s1, s4, ra
                  sub          a6, s9, t6
                  xori         s6, a0, -270
                  srl          t2, t3, s1
906:              beq          s11, s8, 917f
                  or           s2, t0, s8
                  lui          s10, 592867
                  add          s10, s8, a2
                  auipc        s5, 68281
911:              slt          sp, s5, s11
                  xori         s11, a5, -538
                  xori         t4, s0, -30
                  xori         sp, s4, 1552
                  sll          a4, gp, a0
                  sltu         gp, a1, ra
917:              bge          gp, s0, 931f
                  sub          a4, a0, a0
                  or           t2, a3, a1
                  slt          s7, zero, t5
                  add          zero, tp, a6
                  or           a7, t6, s4
                  slt          s8, a2, a0
                  srl          t1, t1, a7
                  sra          s9, a4, s0
                  andi         s5, zero, 916
                  sub          a4, s10, gp
                  auipc        a1, 834357
                  bgeu         t5, gp, 943f
                  srl          zero, a7, s5
931:              srl          a5, t5, t1
                  and          zero, t3, a0
                  bge          sp, a1, 947f
                  auipc        s2, 399831
                  and          t3, s2, a5
                  sll          sp, s9, s10
                  srl          s0, a1, s3
                  slt          sp, a5, gp
                  add          t2, s7, t0
                  srai         t6, a5, 12
                  ori          a2, a4, 160
                  slli         s8, t3, 16
943:              slt          s1, tp, s7
                  sll          a7, t2, s1
                  ori          s10, a1, 696
                  sll          ra, s2, s1
947:              ori          s10, t2, 1047
                  xori         t3, t4, -830
                  add          t3, a3, t3
                  ori          s7, s0, -2002
                  or           s8, t5, s8
                  beq          s3, s1, 967f
                  sll          gp, s5, s7
                  and          a7, t0, s3
                  add          t4, s5, a0
                  slti         t6, a4, -1929
                  sltu         t3, a7, s4
                  bgeu         s5, t0, 974f
                  sll          a3, s3, t6
                  srl          a1, gp, ra
                  srli         s8, s9, 1
                  sltu         t4, tp, t2
                  slt          s0, a1, s4
                  sub          s2, s6, t6
                  and          gp, t0, t2
                  nop
967:              sll          t1, s8, t3
                  sltiu        a5, t3, -1370
                  and          s8, t1, a2
                  lui          t4, 767625
                  slli         s1, t2, 23
                  ori          a1, t5, 1539
                  andi         a3, s1, -656
974:              auipc        a5, 37655
                  srl          a6, zero, zero
                  xor          sp, tp, a1
                  sra          s1, a2, s2
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            bge          a3, t5, sub_5_stack_p
                  and          a3, t4, t6
sub_5_stack_p:    addi         tp, tp, -36
                  srli         s3, t6, 25
                  sw           ra, 4(tp)
                  sub          t4, zero, gp
                  lui          s7, 788407
sub_5_6:          jal          ra, 4f
0:                jal          ra, 3f
1:                jal          t1, 2f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          t1, 5b
7:                jal          ra, 12f
8:                jal          ra, 0b
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               jal          ra, 6b
12:               srl          a5, sp, s1
sub_5_7:          jal          ra, 5f
0:                jal          ra, 23f
1:                jal          ra, 21f
2:                jal          ra, 26f
3:                jal          ra, 7f
4:                jal          s2, 11f
5:                jal          ra, 2b
6:                jal          ra, 20f
7:                jal          ra, 19f
8:                jal          ra, 22f
9:                jal          ra, 14f
10:               jal          ra, 13f
11:               jal          ra, 17f
12:               jal          t1, 0b
13:               jal          t1, 25f
14:               jal          ra, 8b
15:               jal          ra, 1b
16:               jal          t2, 24f
17:               jal          s5, 18f
18:               jal          ra, 10b
19:               jal          ra, 27f
20:               jal          t1, 9b
21:               jal          t1, 4b
22:               jal          s2, 15b
23:               jal          t1, 3b
24:               jal          ra, 28f
25:               jal          ra, 16b
26:               jal          ra, 12b
27:               jal          ra, 6b
28:               addi         t3, s3, 123
sub_5_2:          jal          ra, 19f
0:                jal          t1, 14f
1:                jal          ra, 12f
2:                jal          t1, 10f
3:                jal          a6, 24f
4:                jal          s1, 21f
5:                jal          ra, 20f
6:                jal          s1, 3b
7:                jal          s5, 13f
8:                jal          sp, 16f
9:                jal          t1, 18f
10:               jal          t2, 7b
11:               jal          t1, 15f
12:               jal          s9, 2b
13:               jal          s4, 25f
14:               jal          t1, 22f
15:               jal          ra, 26f
16:               jal          t1, 1b
17:               jal          ra, 0b
18:               jal          gp, 6b
19:               jal          ra, 5b
20:               jal          ra, 9b
21:               jal          t1, 17b
22:               jal          t1, 23f
23:               jal          t1, 8b
24:               jal          a2, 4b
25:               jal          ra, 11b
26:               auipc        zero, 600507
sub_5_0:          jal          ra, 21f
0:                jal          gp, 6f
1:                jal          t1, 22f
2:                jal          a3, 13f
3:                jal          ra, 0b
4:                jal          t6, 17f
5:                jal          sp, 18f
6:                jal          ra, 1b
7:                jal          ra, 10f
8:                jal          t1, 19f
9:                jal          t1, 15f
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          ra, 16f
13:               jal          ra, 11b
14:               jal          t4, 3b
15:               jal          ra, 4b
16:               jal          t1, 5b
17:               jal          t1, 8b
18:               jal          a1, 2b
19:               jal          t1, 20f
20:               jal          t1, 14b
21:               jal          t1, 7b
22:               slt          s10, s9, t6
sub_5_3:          jal          ra, 4f
0:                jal          sp, 3f
1:                jal          ra, 10f
2:                jal          ra, 15f
3:                jal          ra, 21f
4:                jal          t1, 1b
5:                jal          ra, 17f
6:                jal          ra, 7f
7:                jal          t1, 14f
8:                jal          s1, 5b
9:                jal          ra, 22f
10:               jal          ra, 13f
11:               jal          ra, 19f
12:               jal          ra, 18f
13:               jal          ra, 11b
14:               jal          ra, 8b
15:               jal          s1, 6b
16:               jal          t1, 12b
17:               jal          gp, 0b
18:               jal          ra, 23f
19:               jal          t4, 16b
20:               jal          t1, 24f
21:               jal          ra, 9b
22:               jal          t1, 20b
23:               jal          gp, 2b
24:               slt          s9, s10, s9
sub_5_1:          jal          ra, 5f
0:                jal          ra, 25f
1:                jal          t1, 19f
2:                jal          ra, 11f
3:                jal          t3, 24f
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          t1, 4b
7:                jal          ra, 16f
8:                jal          t1, 6b
9:                jal          t1, 15f
10:               jal          t1, 28f
11:               jal          ra, 10b
12:               jal          t1, 0b
13:               jal          gp, 26f
14:               jal          ra, 2b
15:               jal          ra, 7b
16:               jal          ra, 27f
17:               jal          s0, 8b
18:               jal          ra, 23f
19:               jal          sp, 14b
20:               jal          ra, 13b
21:               jal          sp, 29f
22:               jal          ra, 18b
23:               jal          s6, 1b
24:               jal          t1, 20b
25:               jal          t1, 17b
26:               jal          ra, 22b
27:               jal          a4, 21b
28:               jal          gp, 9b
29:               sltiu        s6, t0, 1854
sub_5_4:          jal          ra, 17f
0:                jal          t1, 12f
1:                jal          gp, 19f
2:                jal          ra, 16f
3:                jal          ra, 10f
4:                jal          t1, 9f
5:                jal          ra, 4b
6:                jal          a0, 22f
7:                jal          s1, 13f
8:                jal          s3, 2b
9:                jal          ra, 18f
10:               jal          a3, 8b
11:               jal          ra, 26f
12:               jal          sp, 14f
13:               jal          ra, 23f
14:               jal          ra, 5b
15:               jal          t1, 0b
16:               jal          t1, 15b
17:               jal          t2, 1b
18:               jal          ra, 21f
19:               jal          t1, 24f
20:               jal          ra, 25f
21:               jal          ra, 7b
22:               jal          ra, 20b
23:               jal          ra, 6b
24:               jal          ra, 3b
25:               jal          ra, 11b
26:               jal          ra, 27f
27:               xori         s9, s7, 1470
sub_5_5:          jal          ra, 5f
0:                jal          t1, 6f
1:                jal          ra, 12f
2:                jal          t1, 9f
3:                jal          a2, 1b
4:                jal          ra, 2b
5:                jal          a1, 8f
6:                jal          ra, 3b
7:                jal          t1, 10f
8:                jal          ra, 11f
9:                jal          sp, 14f
10:               jal          t1, 0b
11:               jal          sp, 13f
12:               jal          ra, 4b
13:               jal          ra, 7b
14:               srli         t1, s4, 24
                  slt          sp, a4, a3
                  xor          a1, s5, s0
                  slti         gp, a6, -957
                  slt          a6, t2, t0
                  srai         a3, sp, 24
                  xori         s10, s9, 701
                  xori         s8, a1, 507
                  or           a1, t6, t0
                  bge          s1, s1, 21f
                  beq          t0, a6, 12f
                  slt          a4, t4, s1
                  ori          t4, s4, 171
12:               ori          s8, tp, -564
                  srli         s2, a6, 29
                  sltiu        s9, s5, -1675
                  beq          t5, t0, 22f
                  slt          s5, s8, s0
                  sub          s6, a6, s2
                  addi         s10, t1, -328
                  sltu         t2, s2, t1
                  auipc        s5, 518363
21:               srli         t4, a5, 11
22:               sltiu        t2, s6, 851
                  bltu         s8, s3, 43f
                  andi         zero, s0, 1664
                  sra          ra, s0, s1
                  srl          s0, s9, ra
                  bne          s7, a0, 41f
                  xori         s5, zero, 490
                  bne          t1, a7, 31f
                  lui          t1, 381914
31:               xori         s1, sp, -1679
                  and          s0, s2, gp
                  nop
                  sltu         s0, s5, s9
                  beq          s2, a4, 53f
                  beq          tp, s9, 41f
                  nop
                  bne          t2, t4, 52f
                  nop
                  bge          s2, t0, 43f
41:               auipc        t4, 689743
                  sra          a7, t2, s4
43:               and          t4, t2, t1
                  nop
                  slti         t6, a3, -218
                  bge          a0, s9, 48f
                  xor          t4, s8, ra
48:               slti         s10, t6, -1419
                  andi         s8, t6, 1755
                  lui          s3, 860813
                  and          a5, s4, s1
52:               srli         s10, s3, 4
53:               auipc        s8, 219065
                  lui          s7, 660998
                  sltu         s0, t1, a2
                  slli         a0, s4, 21
                  sltiu        s2, t2, 111
                  sra          t3, t4, a1
                  slt          s8, s3, t4
                  slli         t4, ra, 13
                  srl          t2, s1, s2
                  bgeu         t2, s6, 80f
                  slt          a3, sp, a5
                  bge          a0, t3, 72f
                  bge          s4, t6, 71f
                  ori          a5, a0, 2018
                  addi         s0, s10, -635
                  bge          t6, t0, 81f
                  sra          s1, ra, a3
                  bne          s10, a6, 75f
71:               lui          s3, 814861
72:               blt          s2, a6, 73f
73:               sub          s7, t3, tp
                  auipc        s5, 508398
75:               sub          s8, s4, a2
                  addi         t1, s8, -423
                  srli         a1, s11, 26
                  srli         s1, s11, 24
                  blt          t2, a5, 93f
80:               sra          s3, a6, a6
81:               srai         gp, s1, 15
                  xor          t1, a0, a6
                  sra          s7, a3, a5
                  xori         s4, s2, 1804
                  nop
                  auipc        a4, 369385
                  auipc        sp, 872394
                  and          a2, a1, s0
                  blt          a4, t4, 106f
                  or           s4, s10, t2
                  sra          s1, t2, a1
                  sltu         a7, s2, a4
93:               lui          t2, 489610
                  bne          a7, a1, 108f
                  slti         s11, s2, 123
                  bge          t3, a3, 116f
                  slli         zero, t4, 22
                  sltiu        s11, a3, 1943
                  bge          a5, s4, 104f
                  bltu         s8, s0, 117f
                  bne          a7, s5, 104f
                  lui          a6, 1037453
                  or           t2, tp, a7
104:              bne          s5, t6, 110f
                  or           s7, a4, t2
106:              xor          a7, t6, s10
                  addi         gp, t0, -1447
108:              sltu         a6, s9, a2
                  addi         a3, a3, 141
110:              sra          s4, ra, a6
                  slti         a4, tp, -702
                  beq          sp, a3, 125f
                  beq          t3, s7, 133f
                  and          gp, s10, s1
                  lui          s11, 776034
116:              slli         a3, t2, 25
117:              bne          s3, t0, 121f
                  andi         ra, gp, 847
                  bgeu         s1, tp, 139f
                  lui          a6, 353087
121:              srli         s10, gp, 6
                  and          s6, t2, a5
                  or           a6, a3, t1
                  slli         s10, s7, 17
125:              sltu         t6, a4, sp
                  addi         zero, a3, 1369
                  bgeu         s2, a2, 143f
                  bltu         sp, s0, 144f
                  slti         a6, s0, 175
                  srai         ra, s2, 9
                  sll          a3, s0, a2
                  sltu         s8, a7, s8
133:              xori         a7, gp, -791
                  srli         s9, s4, 25
                  bne          s1, t0, 140f
                  or           s11, t2, s5
                  sll          s10, s9, t4
                  blt          s6, a3, 142f
139:              srli         t4, a4, 17
140:              and          gp, a3, s1
                  bltu         s0, s5, 143f
142:              bge          a4, gp, 160f
143:              sltu         gp, t0, s2
144:              ori          s8, s10, 1407
                  ori          s11, s6, 1544
                  xori         s4, s9, 694
                  srli         s7, s10, 12
                  andi         t2, t5, -1376
                  addi         s2, t4, 338
                  beq          t6, t5, 153f
                  addi         t2, t4, -1306
                  slti         s11, s1, 1916
153:              xor          s2, a0, s10
                  bgeu         s4, s7, 168f
                  bne          t3, t2, 168f
                  srl          t3, t2, zero
                  srl          sp, t5, s5
                  and          t1, a6, s10
                  bgeu         s3, gp, 161f
160:              sub          s8, s10, s11
161:              or           s4, a0, s3
                  sll          s2, t0, s8
                  slt          s1, s10, a6
                  bne          t6, a5, 170f
                  and          a0, s2, a3
                  sra          s9, t2, tp
                  srl          s8, s4, s3
168:              nop
                  or           s2, s9, s8
170:              blt          t3, s2, 187f
                  andi         s6, t4, -1069
                  auipc        a7, 675420
                  and          s9, a4, a2
                  lui          zero, 349671
                  blt          tp, a6, 178f
                  beq          t0, tp, 190f
                  xori         s3, s1, 1558
178:              andi         s4, t2, -1006
                  srli         a1, a3, 3
                  auipc        a1, 514912
                  beq          t4, s6, 194f
                  nop
                  sltiu        s7, s10, -1334
                  xor          t2, a2, s5
                  srai         a0, a6, 3
                  or           a5, s7, t5
187:              beq          tp, s4, 207f
                  lui          t2, 480856
                  auipc        t1, 745279
190:              auipc        a4, 702631
                  or           s11, tp, t2
                  xori         t4, a5, 579
                  srli         gp, a4, 0
194:              addi         s10, s11, -1248
                  and          a1, t6, s9
                  bgeu         a7, s6, 216f
                  or           t3, tp, t0
                  bltu         t3, a1, 218f
                  bge          s1, s9, 213f
                  slt          a1, s5, s8
                  sra          t4, s1, a6
                  bne          t2, s9, 205f
                  sll          t1, t6, a2
                  bgeu         a5, a6, 222f
205:              sltiu        a1, t0, 638
                  slli         s10, t2, 4
207:              lui          t3, 814130
                  or           s4, sp, s9
                  srai         s0, t4, 2
                  ori          a3, t1, -1649
                  slt          t4, sp, zero
                  nop
213:              and          t6, a3, s11
                  blt          s11, a5, 234f
                  bne          s1, zero, 232f
216:              slli         a5, ra, 8
                  and          s7, t4, a1
218:              srl          s0, t1, t0
                  xori         s8, a6, -1961
                  sra          t1, gp, a0
                  lui          a4, 1020927
222:              blt          t1, gp, 228f
                  andi         a7, s4, 12
                  bge          s2, t6, 229f
                  sltiu        s7, t1, -437
                  or           s8, a3, t6
                  sltu         t4, t0, a6
228:              auipc        t2, 947093
229:              beq          s4, sp, 243f
                  srai         a7, s0, 27
                  bne          t3, t6, 238f
232:              srli         s8, a3, 25
                  sltiu        s2, a3, 864
234:              srli         s4, a1, 20
                  beq          t2, t4, 248f
                  sll          t4, s2, a7
                  add          t2, a0, s5
238:              nop
                  ori          s4, t4, 1222
                  sltu         a1, s0, sp
                  blt          t5, a3, 246f
                  sra          a2, a0, a6
243:              srai         a6, t5, 19
                  sub          s3, a3, t6
                  bltu         s11, a1, 253f
246:              bge          s6, s0, 247f
247:              sra          t2, s10, s0
248:              sra          s2, s1, a3
                  slt          t3, s0, s1
                  and          s11, s6, tp
                  andi         s10, s5, 564
                  bgeu         t1, t3, 254f
253:              ori          s5, t0, 432
254:              sltu         t1, s11, s8
                  andi         s5, s0, 1283
                  bge          s4, s3, 259f
                  xor          a2, t3, s10
                  sll          a7, a5, tp
259:              lui          a3, 3913
                  srl          a3, ra, a0
                  xor          a6, a5, zero
                  lui          a0, 530653
                  addi         zero, s6, 1045
                  addi         s2, s0, -788
                  sll          s6, s8, s10
                  bltu         s0, gp, 279f
                  sltu         zero, tp, s6
                  sltiu        gp, sp, -1716
                  bne          t3, s11, 275f
                  srli         a3, a6, 8
                  or           s6, s9, a7
                  add          s4, t5, s2
                  sltiu        a0, s6, -893
                  auipc        s10, 255051
275:              auipc        ra, 897214
                  ori          ra, s10, 820
                  bltu         a6, t0, 295f
                  srl          sp, s7, s8
279:              beq          a6, a6, 285f
                  sltiu        s0, t2, -1434
                  sra          s7, a7, a4
                  nop
                  bltu         s5, s10, 288f
                  beq          a7, a6, 298f
285:              add          sp, sp, t3
                  lui          s2, 35195
                  andi         t4, a6, 2015
288:              slti         a0, ra, -1177
                  andi         t2, s7, 1045
                  sra          s1, s2, s2
                  andi         a5, s7, 1791
                  or           ra, ra, t6
                  sltiu        s4, a3, -384
                  lui          a3, 983181
295:              sltiu        t1, s0, 584
                  sll          s9, s10, t3
                  sll          gp, a0, s9
298:              addi         s1, s5, -1466
                  and          sp, a5, t3
                  add          gp, sp, t4
                  addi         s11, sp, -1285
                  bltu         s10, t4, 322f
                  srli         a7, s5, 10
                  sub          s9, sp, zero
                  bge          s7, s4, 318f
                  sltu         s0, a1, t4
                  bge          tp, gp, 327f
                  sll          a7, gp, gp
                  slli         s3, s10, 12
                  slti         a1, a1, -1440
                  and          sp, ra, s8
                  slti         s1, t1, 427
                  beq          sp, s5, 326f
                  bgeu         s10, a1, 334f
                  srai         s10, zero, 1
                  srai         s5, s2, 13
                  bge          s3, a6, 322f
318:              blt          a6, s1, 334f
                  srai         a7, t6, 27
                  auipc        s1, 585774
                  sub          s3, s5, a6
322:              bltu         a1, a6, 323f
323:              sll          a2, zero, t6
                  srli         s5, s5, 25
                  srl          s11, t5, s8
326:              add          t4, gp, s4
327:              sra          s4, a0, t6
                  beq          t4, a3, 342f
                  addi         s5, t4, -1860
                  bne          a2, tp, 333f
                  sltiu        t2, s10, 1059
                  sll          s7, s2, t1
333:              sub          sp, a3, zero
334:              sra          gp, t0, s6
                  bne          gp, t4, 340f
                  bge          s4, s6, 353f
                  xor          s3, s11, t2
                  ori          ra, a2, 1984
                  srl          a7, zero, t5
340:              ori          s10, tp, -379
                  srai         sp, s7, 24
342:              blt          s7, s3, 350f
                  bgeu         a0, zero, 357f
                  srai         s8, t0, 24
                  bgeu         a6, s4, 365f
                  slti         t4, t6, 1904
                  and          t1, a6, s7
                  add          s9, t4, s7
                  auipc        t1, 533295
350:              bltu         t1, a5, 353f
                  bge          t2, s9, 355f
                  add          s10, t5, t6
353:              sub          a7, t4, s6
                  slti         s11, s0, 1350
355:              srai         gp, s2, 28
                  sub          t1, a2, s4
357:              bgeu         a2, t5, 364f
                  sltu         s9, a7, t4
                  and          a4, t0, s5
                  xor          a7, s7, a1
                  srli         s8, s5, 22
                  add          a1, a1, a3
                  auipc        sp, 36430
364:              xori         s0, s4, -1810
365:              srli         t2, s0, 22
                  slli         t6, t5, 0
                  slli         a5, t6, 0
                  or           a3, a6, gp
                  sltu         s4, t1, s2
                  xor          gp, t2, s3
                  auipc        t2, 807366
                  sub          sp, a6, a3
                  sra          s9, t6, a3
                  or           s9, t2, s9
                  xor          a5, t4, s9
                  bgeu         t1, a3, 394f
                  sll          a6, t5, s3
                  bltu         s1, s3, 380f
                  lui          s5, 920387
380:              addi         s1, a6, 1989
                  beq          t2, a7, 398f
                  bne          t3, s1, 396f
                  or           s4, s11, ra
                  xori         s8, a2, 1654
                  nop
                  xor          s1, s8, s6
                  sltu         s8, a7, s1
                  blt          sp, t6, 406f
                  sltu         s0, a2, a1
                  xor          s0, s9, t3
                  bne          s9, a1, 397f
                  sltu         s8, s5, tp
                  nop
394:              beq          tp, a4, 414f
                  slti         s2, t3, -1030
396:              sll          s8, t1, a3
397:              bne          s2, t3, 415f
398:              lui          s5, 788734
                  beq          s3, s6, 419f
                  sub          s11, t5, tp
                  bgeu         gp, s8, 404f
                  slti         s5, s6, -1896
                  bge          t5, t3, 416f
404:              sra          s1, tp, a7
                  bge          s3, t4, 413f
406:              nop
                  sra          s1, s2, t1
                  bne          sp, sp, 413f
                  ori          s7, s5, -1116
                  slti         s7, t1, -116
                  and          a1, s2, tp
                  lui          ra, 471253
413:              xori         s6, a0, 553
414:              xori         s5, s1, 1109
415:              bge          a1, a2, 419f
416:              beq          t0, a4, 421f
                  ori          s5, s2, -1089
                  srai         s8, sp, 17
419:              addi         s6, ra, 1314
                  beq          a2, t4, 421f
421:              auipc        s7, 1002595
                  nop
                  addi         t3, s8, 1516
                  addi         a5, t0, -1619
                  xori         a5, a1, 767
                  slt          t1, a6, s3
                  lw           ra, 4(tp)
                  addi         tp, tp, 36
                  slli         a0, tp, 30
635:              addi x27, x1, 1
635:              jalr x27, x27, 0
sub_2:            sll          gp, t2, a0
                  or           s1, s4, t0
                  sltiu        t4, t2, 1912
                  srai         t4, a3, 1
                  addi         tp, tp, -12
                  and          a5, s6, s0
                  slli         gp, a4, 22
                  sw           ra, 4(tp)
                  srli         t6, a1, 10
                  sra          s6, zero, t6
                  auipc        t6, 455607
                  srli         zero, a6, 15
                  bge          s1, a0, 8f
                  srai         s1, s7, 7
                  xori         t3, s1, -1259
                  slti         t3, ra, 1022
                  sltiu        gp, s11, -967
8:                slli         a1, tp, 26
                  sub          t4, t2, zero
                  xori         a1, gp, 1886
                  andi         gp, s0, -1611
                  and          s10, s0, t6
                  bgeu         s8, zero, 28f
                  blt          a2, s8, 22f
                  nop
                  xori         a7, s9, 1521
                  sltu         a5, ra, s3
                  and          s11, t0, t0
                  srl          sp, t2, a5
                  bgeu         t1, t5, 22f
                  srl          t6, a7, s2
22:               bgeu         s8, s9, 24f
                  sra          t4, gp, tp
24:               xor          a6, zero, t5
                  xori         a4, zero, 977
                  sll          s5, a2, zero
                  andi         a4, s9, -941
28:               sll          zero, tp, s1
                  lui          s1, 782906
                  sltiu        s6, s3, 1506
                  lw           ra, 4(tp)
                  xori         s4, s10, -674
                  srai         s10, s6, 2
                  addi         tp, tp, 12
                  nop
                  and          t1, a7, a1
                  slli         t3, a3, 21
47:               addi x1, x1, 0
47:               jalr x1, x1, 0
sub_1:            bgeu         a7, a5, sub_1_stack_p
                  sra          t4, sp, a6
                  or           t4, s0, s8
sub_1_stack_p:    addi         tp, tp, -64
                  sltu         s1, t2, tp
                  sltu         a1, t1, s11
                  sw           ra, 4(tp)
                  xori         s9, a3, -476
                  lui          t2, 378130
                  sltiu        t2, sp, 1708
sub_1_7:          jal          ra, 9f
0:                jal          sp, 12f
1:                jal          sp, 8f
2:                jal          t1, 7f
3:                jal          ra, 11f
4:                jal          ra, 2b
5:                jal          ra, 14f
6:                jal          s0, 13f
7:                jal          ra, 1b
8:                jal          t1, 6b
9:                jal          t1, 3b
10:               jal          t1, 5b
11:               jal          ra, 0b
12:               jal          t1, 4b
13:               jal          t1, 10b
14:               srli         s10, s9, 21
sub_1_13:         jal          ra, 16f
0:                jal          s4, 14f
1:                jal          ra, 9f
2:                jal          ra, 21f
3:                jal          t1, 13f
4:                jal          s2, 25f
5:                jal          t1, 22f
6:                jal          t1, 10f
7:                jal          ra, 2b
8:                jal          t6, 5b
9:                jal          s8, 23f
10:               jal          gp, 4b
11:               jal          s11, 18f
12:               jal          ra, 11b
13:               jal          t1, 1b
14:               jal          ra, 7b
15:               jal          t1, 27f
16:               jal          ra, 20f
17:               jal          ra, 3b
18:               jal          ra, 6b
19:               jal          s1, 12b
20:               jal          t1, 0b
21:               jal          ra, 19b
22:               jal          ra, 15b
23:               jal          ra, 26f
24:               jal          s4, 17b
25:               jal          t1, 24b
26:               jal          ra, 8b
27:               sltiu        ra, s0, 975
sub_1_19:         jal          ra, 24f
0:                jal          ra, 3f
1:                jal          ra, 8f
2:                jal          t1, 1b
3:                jal          ra, 4f
4:                jal          gp, 5f
5:                jal          t1, 20f
6:                jal          a6, 7f
7:                jal          ra, 9f
8:                jal          t4, 18f
9:                jal          ra, 0b
10:               jal          t1, 2b
11:               jal          ra, 13f
12:               jal          t6, 10b
13:               jal          ra, 28f
14:               jal          a1, 11b
15:               jal          ra, 16f
16:               jal          t1, 26f
17:               jal          t2, 27f
18:               jal          t1, 21f
19:               jal          ra, 14b
20:               jal          gp, 19b
21:               jal          ra, 25f
22:               jal          t1, 17b
23:               jal          ra, 29f
24:               jal          ra, 22b
25:               jal          s10, 6b
26:               jal          t1, 23b
27:               jal          ra, 12b
28:               jal          ra, 15b
29:               sltiu        gp, s7, 1212
sub_1_0:          jal          ra, 7f
0:                jal          gp, 11f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          t1, 3b
5:                jal          t1, 9f
6:                jal          gp, 2b
7:                jal          a6, 10f
8:                jal          ra, 5b
9:                jal          sp, 1b
10:               jal          ra, 6b
11:               slt          s3, s0, s2
sub_1_4:          jal          ra, 5f
0:                jal          t1, 10f
1:                jal          t1, 7f
2:                jal          t1, 0b
3:                jal          sp, 20f
4:                jal          s1, 1b
5:                jal          ra, 11f
6:                jal          sp, 2b
7:                jal          s10, 8f
8:                jal          s11, 9f
9:                jal          ra, 28f
10:               jal          ra, 24f
11:               jal          s1, 18f
12:               jal          s2, 26f
13:               jal          t1, 12b
14:               jal          a0, 4b
15:               jal          ra, 13b
16:               jal          ra, 25f
17:               jal          s8, 23f
18:               jal          ra, 21f
19:               jal          ra, 14b
20:               jal          ra, 6b
21:               jal          sp, 15b
22:               jal          sp, 17b
23:               jal          ra, 3b
24:               jal          t1, 27f
25:               jal          ra, 22b
26:               jal          ra, 16b
27:               jal          ra, 19b
28:               sra          s10, s1, a4
sub_1_3:          jal          ra, 4f
0:                jal          t1, 6f
1:                jal          ra, 2f
2:                jal          ra, 9f
3:                jal          ra, 5f
4:                jal          ra, 7f
5:                jal          t1, 8f
6:                jal          ra, 10f
7:                jal          t1, 1b
8:                jal          ra, 0b
9:                jal          s2, 3b
10:               jal          ra, 11f
11:               sltiu        t1, s4, 6
sub_1_14:         jal          ra, 8f
0:                jal          gp, 5f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          s7, 17f
4:                jal          t1, 9f
5:                jal          ra, 1b
6:                jal          sp, 12f
7:                jal          s0, 18f
8:                jal          ra, 2b
9:                jal          t1, 6b
10:               jal          sp, 16f
11:               jal          ra, 13f
12:               jal          t1, 14f
13:               jal          ra, 20f
14:               jal          s0, 15f
15:               jal          t1, 19f
16:               jal          sp, 0b
17:               jal          ra, 4b
18:               jal          ra, 10b
19:               jal          ra, 11b
20:               auipc        t2, 86443
sub_1_8:          jal          ra, 14f
0:                jal          a2, 7f
1:                jal          ra, 19f
2:                jal          gp, 4f
3:                jal          ra, 21f
4:                jal          s10, 24f
5:                jal          gp, 22f
6:                jal          ra, 1b
7:                jal          gp, 9f
8:                jal          t1, 18f
9:                jal          ra, 3b
10:               jal          ra, 20f
11:               jal          ra, 15f
12:               jal          ra, 11b
13:               jal          a1, 6b
14:               jal          t1, 13b
15:               jal          ra, 16f
16:               jal          ra, 23f
17:               jal          ra, 8b
18:               jal          a5, 2b
19:               jal          ra, 12b
20:               jal          ra, 5b
21:               jal          t1, 17b
22:               jal          gp, 0b
23:               jal          ra, 10b
24:               addi         a3, sp, -1066
sub_1_18:         jal          ra, 9f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          s0, 11f
3:                jal          ra, 16f
4:                jal          ra, 15f
5:                jal          ra, 1b
6:                jal          t1, 13f
7:                jal          t1, 10f
8:                jal          s6, 21f
9:                jal          t1, 14f
10:               jal          t2, 6b
11:               jal          t1, 0b
12:               jal          ra, 20f
13:               jal          ra, 4b
14:               jal          ra, 3b
15:               jal          ra, 2b
16:               jal          ra, 7b
17:               jal          ra, 18f
18:               jal          ra, 19f
19:               jal          ra, 22f
20:               jal          ra, 17b
21:               jal          t1, 12b
22:               xor          s3, sp, s10
sub_1_5:          jal          ra, 7f
0:                jal          ra, 3f
1:                jal          ra, 0b
2:                jal          a4, 9f
3:                jal          ra, 18f
4:                jal          ra, 19f
5:                jal          t2, 15f
6:                jal          ra, 2b
7:                jal          t1, 11f
8:                jal          ra, 6b
9:                jal          t1, 10f
10:               jal          ra, 1b
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          ra, 17f
14:               jal          ra, 12b
15:               jal          sp, 14b
16:               jal          t1, 5b
17:               jal          gp, 16b
18:               jal          t1, 13b
19:               srl          a4, a7, a2
sub_1_2:          jal          ra, 1f
0:                jal          a2, 9f
1:                jal          t4, 5f
2:                jal          t1, 0b
3:                jal          ra, 13f
4:                jal          s4, 6f
5:                jal          ra, 11f
6:                jal          ra, 15f
7:                jal          ra, 4b
8:                jal          ra, 16f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 7b
12:               jal          ra, 2b
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          ra, 3b
16:               addi         a6, s3, 1838
sub_1_22:         jal          ra, 7f
0:                jal          ra, 14f
1:                jal          ra, 6f
2:                jal          ra, 4f
3:                jal          ra, 26f
4:                jal          ra, 21f
5:                jal          ra, 2b
6:                jal          ra, 30f
7:                jal          a6, 25f
8:                jal          t1, 27f
9:                jal          ra, 5b
10:               jal          ra, 9b
11:               jal          ra, 10b
12:               jal          ra, 16f
13:               jal          ra, 29f
14:               jal          s8, 24f
15:               jal          ra, 13b
16:               jal          t1, 11b
17:               jal          ra, 18f
18:               jal          t1, 28f
19:               jal          ra, 20f
20:               jal          a0, 1b
21:               jal          ra, 19b
22:               jal          t2, 17b
23:               jal          t1, 8b
24:               jal          ra, 15b
25:               jal          ra, 3b
26:               jal          ra, 0b
27:               jal          ra, 22b
28:               jal          a2, 12b
29:               jal          sp, 23b
30:               or           zero, s8, s11
sub_1_23:         jal          ra, 2f
0:                jal          ra, 8f
1:                jal          t1, 0b
2:                jal          s10, 4f
3:                jal          gp, 11f
4:                jal          ra, 13f
5:                jal          sp, 7f
6:                jal          t1, 12f
7:                jal          t1, 1b
8:                jal          ra, 9f
9:                jal          gp, 3b
10:               jal          s9, 6b
11:               jal          ra, 10b
12:               jal          ra, 14f
13:               jal          a6, 5b
14:               or           a4, zero, a7
sub_1_6:          jal          ra, 21f
0:                jal          ra, 1f
1:                jal          t1, 14f
2:                jal          ra, 25f
3:                jal          a3, 9f
4:                jal          t1, 16f
5:                jal          ra, 3b
6:                jal          t1, 17f
7:                jal          t1, 0b
8:                jal          ra, 19f
9:                jal          sp, 7b
10:               jal          ra, 23f
11:               jal          t1, 10b
12:               jal          ra, 13f
13:               jal          ra, 18f
14:               jal          ra, 6b
15:               jal          ra, 20f
16:               jal          ra, 11b
17:               jal          t1, 4b
18:               jal          ra, 5b
19:               jal          ra, 12b
20:               jal          t1, 24f
21:               jal          ra, 8b
22:               jal          sp, 15b
23:               jal          ra, 22b
24:               jal          t1, 2b
25:               sub          s7, a4, s8
sub_1_20:         jal          ra, 0f
0:                jal          t1, 14f
1:                jal          sp, 2f
2:                jal          ra, 21f
3:                jal          s9, 22f
4:                jal          t1, 10f
5:                jal          ra, 4b
6:                jal          s1, 15f
7:                jal          t1, 16f
8:                jal          t1, 6b
9:                jal          ra, 7b
10:               jal          ra, 1b
11:               jal          t1, 13f
12:               jal          t1, 11b
13:               jal          s4, 18f
14:               jal          ra, 8b
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               jal          s3, 5b
18:               jal          ra, 17b
19:               jal          s0, 9b
20:               jal          t1, 19b
21:               jal          a7, 20b
22:               srai         s11, a4, 0
sub_1_16:         jal          ra, 18f
0:                jal          ra, 23f
1:                jal          t1, 5f
2:                jal          s0, 3f
3:                jal          a1, 1b
4:                jal          s9, 19f
5:                jal          ra, 25f
6:                jal          ra, 7f
7:                jal          sp, 21f
8:                jal          ra, 16f
9:                jal          t1, 20f
10:               jal          ra, 17f
11:               jal          ra, 15f
12:               jal          ra, 4b
13:               jal          t1, 6b
14:               jal          t4, 11b
15:               jal          ra, 10b
16:               jal          t1, 9b
17:               jal          gp, 8b
18:               jal          ra, 0b
19:               jal          ra, 22f
20:               jal          t1, 2b
21:               jal          gp, 12b
22:               jal          t1, 14b
23:               jal          ra, 24f
24:               jal          sp, 13b
25:               addi         ra, zero, 1962
sub_1_24:         jal          ra, 24f
0:                jal          s10, 19f
1:                jal          a6, 8f
2:                jal          ra, 16f
3:                jal          t1, 5f
4:                jal          ra, 18f
5:                jal          ra, 22f
6:                jal          ra, 27f
7:                jal          ra, 14f
8:                jal          ra, 28f
9:                jal          ra, 2b
10:               jal          ra, 1b
11:               jal          t1, 23f
12:               jal          ra, 11b
13:               jal          ra, 9b
14:               jal          t1, 10b
15:               jal          t1, 21f
16:               jal          ra, 6b
17:               jal          ra, 20f
18:               jal          gp, 15b
19:               jal          ra, 17b
20:               jal          s2, 13b
21:               jal          sp, 26f
22:               jal          s10, 25f
23:               jal          ra, 3b
24:               jal          s3, 0b
25:               jal          sp, 4b
26:               jal          ra, 7b
27:               jal          ra, 12b
28:               and          t6, a6, s4
sub_1_26:         jal          ra, 11f
0:                jal          a7, 3f
1:                jal          ra, 2f
2:                jal          ra, 10f
3:                jal          t4, 19f
4:                jal          ra, 8f
5:                jal          t2, 1b
6:                jal          ra, 20f
7:                jal          ra, 14f
8:                jal          ra, 6b
9:                jal          t1, 24f
10:               jal          ra, 4b
11:               jal          s8, 17f
12:               jal          ra, 23f
13:               jal          ra, 16f
14:               jal          ra, 21f
15:               jal          ra, 9b
16:               jal          gp, 0b
17:               jal          ra, 15b
18:               jal          ra, 25f
19:               jal          ra, 5b
20:               jal          s6, 22f
21:               jal          ra, 13b
22:               jal          ra, 18b
23:               jal          ra, 7b
24:               jal          ra, 12b
25:               srl          s9, a2, ra
sub_1_10:         jal          ra, 7f
0:                jal          gp, 2f
1:                jal          ra, 9f
2:                jal          t1, 4f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          ra, 12f
6:                jal          ra, 11f
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          ra, 0b
10:               jal          sp, 1b
11:               jal          ra, 3b
12:               srai         ra, a5, 19
sub_1_21:         jal          ra, 3f
0:                jal          t1, 10f
1:                jal          t1, 11f
2:                jal          ra, 0b
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          t1, 2b
7:                jal          t2, 1b
8:                jal          s11, 9f
9:                jal          ra, 7b
10:               jal          ra, 8b
11:               slti         t3, s7, -1872
sub_1_17:         jal          ra, 2f
0:                jal          t1, 12f
1:                jal          t1, 4f
2:                jal          ra, 5f
3:                jal          sp, 20f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          sp, 17f
7:                jal          a0, 16f
8:                jal          ra, 11f
9:                jal          ra, 6b
10:               jal          t1, 1b
11:               jal          t6, 7b
12:               jal          t1, 15f
13:               jal          t1, 14f
14:               jal          ra, 8b
15:               jal          t4, 19f
16:               jal          t1, 3b
17:               jal          s11, 18f
18:               jal          t1, 13b
19:               jal          ra, 10b
20:               sub          a7, s2, s7
                  slti         s1, s6, -847
                  srli         a3, s9, 6
                  lui          t4, 633991
                  lui          s8, 269914
                  add          s3, sp, a5
                  sltu         t3, s9, t0
                  slti         s6, s10, -1818
                  or           gp, a4, t1
                  nop
                  slti         s5, t0, 1022
                  bgeu         t2, t2, 30f
                  or           a1, t5, s6
                  bne          ra, gp, 26f
                  slt          s1, t5, t6
                  nop
                  srai         t1, a5, 4
                  srli         s8, a4, 22
                  bge          ra, a3, 29f
                  add          a3, s0, a0
                  bltu         a5, s10, 29f
                  srai         a2, t6, 7
                  slli         s2, t1, 9
                  andi         s9, t4, 993
                  bge          s11, a2, 36f
                  or           s5, a1, t5
                  sll          a4, t0, t0
sub_1_25:         jal          ra, 0f
0:                jal          gp, 9f
1:                jal          a6, 5f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          s9, 17f
5:                jal          ra, 15f
6:                jal          ra, 19f
7:                jal          ra, 13f
8:                jal          ra, 6b
9:                jal          a5, 16f
10:               jal          ra, 18f
11:               jal          ra, 1b
12:               jal          ra, 8b
13:               jal          ra, 4b
14:               jal          a2, 12b
15:               jal          ra, 14b
16:               jal          ra, 3b
17:               jal          t1, 10b
18:               jal          t1, 11b
19:               slt          s8, s0, ra
26:               srli         a3, a7, 12
                  sltiu        a0, zero, 1790
                  add          s11, t4, ra
29:               bgeu         t3, a5, 38f
30:               srli         t1, s8, 2
                  bne          a5, t4, 42f
                  sra          t1, a4, s9
                  xori         sp, s6, -1157
                  sub          a2, t0, t0
                  bne          t1, t0, 49f
36:               xor          a6, zero, t2
                  sub          a7, t4, s8
38:               sltiu        s0, a2, -1074
                  srli         s0, s1, 14
                  sra          ra, a0, t4
                  addi         a6, zero, -2037
42:               srai         t6, s1, 30
                  nop
                  blt          s2, t6, 49f
                  srl          s9, a7, tp
                  slti         s5, s7, -45
                  slt          t2, t2, ra
                  srai         t6, s5, 30
49:               srl          t1, s1, t0
                  add          a3, s5, s3
                  bne          s7, gp, 61f
                  xor          t3, s8, t5
                  andi         t1, zero, 583
                  nop
                  srai         s9, t2, 27
                  auipc        a3, 552831
                  lui          zero, 342692
                  slti         s4, zero, -1934
                  srl          a2, s11, t0
                  sra          zero, a2, s2
61:               bne          zero, t1, 80f
                  slli         t3, a7, 8
                  nop
                  slt          a0, a6, s2
                  beq          s2, sp, 66f
66:               bltu         tp, s10, 86f
                  slti         s11, a4, 440
                  sltu         a4, a5, t5
                  lui          s0, 412836
                  sub          gp, a5, s11
                  bne          sp, a7, 90f
                  lui          a1, 635317
                  bltu         tp, t2, 84f
                  sub          s5, t6, t1
                  srli         t4, s2, 29
                  xori         a7, s0, -173
                  sll          s0, a2, zero
                  sll          s3, ra, gp
                  slt          t3, a0, tp
80:               sltiu        t1, t0, -1689
                  sra          a7, s2, s7
                  nop
                  nop
84:               and          zero, t1, s7
                  slti         sp, tp, 1965
86:               srai         s4, s6, 24
                  bge          t3, a7, 105f
                  sub          s5, s11, s9
                  ori          a7, s1, 387
90:               lui          a6, 79090
                  xori         a7, s7, 880
                  ori          s0, t0, 438
                  lui          sp, 31272
                  bltu         s9, a6, 99f
                  sll          s8, s7, s10
                  ori          zero, t1, -697
                  sub          s6, s5, a0
                  sra          t3, t4, s3
99:               auipc        a7, 496737
                  srli         ra, s8, 16
                  ori          t2, s7, 1979
                  or           a0, a2, t3
                  or           s7, ra, a0
                  bne          s2, s4, 119f
105:              slli         a6, a6, 6
                  add          t3, a6, s4
                  blt          t1, s8, 113f
                  sub          t3, s5, s11
                  xor          t2, t0, zero
                  or           s5, a0, t6
                  sll          a2, t0, s5
                  andi         s6, s3, 197
113:              auipc        s11, 978577
                  addi         s8, s3, -2047
                  srai         a1, s1, 3
                  addi         a1, t3, 605
                  bltu         a0, s9, 128f
                  srli         s11, zero, 29
119:              nop
                  add          a3, t6, s7
                  addi         s3, s5, 1352
                  or           a6, a1, s2
                  bgeu         s11, a2, 129f
                  or           t2, zero, s1
                  sltu         a6, tp, s7
                  bltu         a7, a2, 145f
                  slti         s2, s11, 1061
128:              bge          s1, t2, 129f
129:              addi         a4, a4, 1659
                  sltu         sp, a2, a3
                  slt          a7, s11, s9
                  addi         t1, s2, 333
                  beq          zero, t6, 151f
                  slli         t4, ra, 4
                  andi         s11, a2, -427
                  addi         s2, a1, -1700
                  add          gp, s9, a3
                  sra          a4, s1, s4
                  srli         t3, s1, 25
                  sltu         sp, t6, s4
                  xor          zero, t3, s5
                  srl          t6, gp, s4
                  bgeu         a1, s8, 160f
                  andi         t3, a4, -1667
145:              bltu         s9, a5, 155f
                  add          t3, s0, sp
                  addi         a1, s11, -397
                  sra          s3, a0, a1
                  bgeu         t4, s0, 163f
                  bne          s8, s8, 155f
151:              sra          a7, s9, s1
                  sltiu        a6, t5, 1077
                  bgeu         a4, a2, 163f
                  blt          a2, a6, 159f
155:              sll          a3, gp, s4
                  lui          s1, 209747
                  xori         s5, a4, -240
                  sltu         a6, s11, zero
159:              and          t4, a1, s6
160:              bne          s8, s3, 170f
                  add          t2, s9, s11
                  xori         s6, s5, -1093
163:              sub          zero, s5, s9
                  bge          a7, s9, 176f
                  slli         ra, t3, 9
                  blt          s5, s7, 177f
                  sub          a1, a4, a7
                  auipc        a2, 102609
                  bgeu         a4, s7, 178f
170:              bltu         s0, a4, 171f
171:              or           gp, tp, s6
                  srl          s7, ra, t4
                  sltu         sp, s5, a2
                  beq          ra, t2, 193f
                  and          s10, a7, t5
176:              addi         a4, a4, -836
177:              xori         a5, s0, -1742
178:              lui          a4, 67171
                  blt          sp, t4, 197f
                  sltu         a5, t1, s10
                  sltiu        s1, t6, 263
                  slt          t1, s11, tp
                  sll          s0, a5, t2
                  add          t4, zero, a7
                  sub          s7, a4, t0
                  lui          t3, 198281
                  slli         a1, zero, 19
                  xor          a6, gp, t2
                  bge          zero, t3, 194f
                  blt          s6, a6, 196f
                  xori         sp, s0, -897
                  blt          s0, s3, 207f
193:              sub          t6, t0, s8
194:              bltu         s11, zero, 204f
                  add          a7, t6, t1
196:              sll          a3, s9, s11
197:              and          s8, a4, t1
                  beq          a4, s3, 218f
                  blt          t0, gp, 219f
                  sra          s9, s8, s0
                  slt          a3, a7, s2
                  blt          a2, ra, 208f
                  xor          s1, s6, s8
204:              blt          s10, a5, 215f
                  blt          t2, s2, 224f
                  slti         s10, t4, -1232
207:              sll          sp, t2, t5
208:              srli         s0, zero, 7
                  xor          s9, a7, s10
                  andi         s11, a0, 4
                  slt          t3, a5, tp
                  addi         t6, a2, 1900
                  nop
                  sll          gp, a4, s7
215:              sra          s0, s9, a2
                  addi         a6, t0, 1025
                  sub          t4, s7, t0
218:              andi         s10, t2, -777
219:              xori         s9, s9, -1017
                  ori          s5, t6, -1169
                  sltu         t4, a0, a4
                  bge          tp, s3, 239f
                  sub          s5, gp, s6
224:              bgeu         s2, sp, 229f
                  beq          gp, a1, 239f
                  andi         s3, a5, 1951
                  bge          t1, a6, 241f
                  lui          a5, 547778
229:              sll          t3, s8, a3
sub_1_12:         jal          ra, 8f
0:                jal          ra, 4f
1:                jal          s5, 16f
2:                jal          ra, 17f
3:                jal          ra, 2b
4:                jal          t1, 18f
5:                jal          a2, 3b
6:                jal          t1, 0b
7:                jal          t1, 1b
8:                jal          ra, 6b
9:                jal          a1, 15f
10:               jal          t6, 12f
11:               jal          s7, 14f
12:               jal          ra, 13f
13:               jal          a2, 19f
14:               jal          sp, 10b
15:               jal          ra, 7b
16:               jal          s6, 5b
17:               jal          ra, 11b
18:               jal          ra, 9b
19:               nop
                  srl          sp, a5, s10
                  sltu         a1, a3, s6
                  xor          s8, s11, a4
                  bge          s6, t5, 251f
                  bltu         s1, a4, 239f
                  andi         zero, a4, -1708
                  slti         t4, a5, 1574
                  sra          a6, t0, a1
                  beq          t4, tp, 239f
239:              bge          s9, t0, 249f
                  lui          s5, 158528
241:              slli         a7, a1, 2
                  srai         a3, t5, 4
                  or           s8, s2, t0
                  srl          a7, s2, s6
                  lui          t2, 714964
                  blt          s4, zero, 257f
                  sra          a5, t2, t3
                  and          a0, s11, t4
249:              xori         t3, s4, 1434
                  bne          a1, a3, 264f
251:              beq          ra, a7, 264f
                  slli         s5, s2, 12
                  slli         s5, t6, 12
                  slt          t6, a1, a5
                  add          s3, t2, s0
                  blt          s4, s4, 275f
257:              add          t1, t3, s3
                  blt          t1, s7, 263f
                  srli         s8, a1, 18
                  andi         s8, a3, 122
                  auipc        s2, 600162
                  sll          s3, a6, a6
263:              sltiu        a4, a5, 2031
264:              add          s7, tp, s1
                  sub          t2, s7, gp
                  blt          t4, t4, 276f
                  lui          s9, 376703
                  or           a3, s6, s0
                  blt          a5, s8, 289f
                  auipc        a3, 451837
                  sll          a3, a1, s5
                  sltu         s2, t4, s11
                  auipc        s2, 119484
                  xor          zero, t4, zero
275:              srli         a5, s7, 5
276:              bgeu         s4, a6, 290f
                  bgeu         s6, a2, 295f
                  add          s5, s6, s3
                  bgeu         ra, s6, 280f
280:              auipc        s5, 269528
                  srl          s0, sp, t5
                  or           s3, a3, gp
                  srli         s3, s3, 0
                  and          s5, t5, s8
                  bge          t2, s1, 303f
                  bge          a3, t3, 300f
                  sra          ra, s11, t0
                  slt          s2, t2, a1
289:              auipc        a5, 269565
290:              srai         s8, a7, 10
                  bge          t6, s5, 301f
                  srai         t1, s1, 2
                  beq          zero, s6, 303f
                  ori          a5, zero, -2014
295:              blt          sp, s3, 300f
                  sra          s8, a3, a2
                  sltu         s11, s11, a2
                  auipc        s10, 1023975
                  sltu         sp, s0, s1
300:              ori          s5, a1, 989
301:              bgeu         a1, a2, 318f
                  lui          s3, 755120
303:              ori          s1, a0, -919
                  slli         t3, a4, 0
                  sra          zero, s2, ra
                  xori         t3, s1, 159
                  slt          gp, a6, s7
                  sltu         a2, s11, t3
                  bge          s10, t4, 328f
                  srai         s5, s11, 1
                  sltu         s10, s8, s3
                  andi         s4, s1, 244
                  sll          s4, a3, zero
                  sll          s7, s2, t0
                  blt          gp, a1, 328f
                  srai         t4, a1, 23
                  sra          s5, s1, s6
318:              bltu         s4, t3, 319f
319:              sra          s9, a6, t2
                  lui          s10, 1006343
                  xori         a7, s6, -2012
                  srl          a7, s5, a0
                  blt          tp, a1, 328f
                  bgeu         a7, s0, 344f
                  bltu         a6, s10, 335f
                  slli         gp, s1, 19
                  sltu         t1, s2, s10
328:              bge          a6, s1, 347f
                  xor          t4, ra, a2
                  and          a7, t1, s4
                  bgeu         t0, s7, 342f
                  bne          s1, t5, 338f
                  srai         t4, a5, 5
                  sltiu        a6, s1, 260
335:              xori         a3, a2, 266
                  addi         s4, a3, -800
                  nop
338:              ori          ra, a4, -739
                  srli         s2, a2, 2
                  srai         s11, s6, 6
                  bgeu         s1, s8, 351f
342:              srli         s2, t5, 19
                  sra          s6, t5, s1
344:              lui          s0, 383624
                  srai         a1, s2, 12
                  srli         a6, s6, 11
347:              sltu         s5, s7, t0
                  sub          s6, s2, ra
                  sltu         t6, t3, t3
                  nop
351:              xor          a7, a1, gp
                  sltu         s11, s0, a2
                  sltu         s7, t1, a3
                  sltu         s11, a1, s8
                  srli         a6, t0, 31
                  srai         a5, s0, 18
                  slli         a3, gp, 29
                  bge          s8, s10, 373f
                  sltu         s1, t0, t0
                  sltiu        s4, a2, -1626
                  beq          t6, tp, 375f
                  sltu         s8, s11, s9
                  addi         s0, a0, -936
                  and          gp, s11, s3
                  lui          a6, 61531
                  sub          a1, s0, zero
                  slli         t4, t2, 17
                  xor          t6, t3, gp
                  sub          s7, s11, s3
                  ori          a0, s0, -237
                  and          s9, a1, s10
                  addi         a4, s0, 92
373:              beq          t6, t2, 392f
                  sra          a4, a4, ra
375:              auipc        t3, 574185
                  auipc        s10, 704573
                  bgeu         t4, a1, 388f
                  add          s10, a3, a2
                  srli         t2, a2, 20
                  bgeu         tp, t5, 385f
                  andi         a3, s1, 1619
                  ori          a4, t3, 784
                  sltu         a5, a3, t4
                  slli         gp, a4, 0
385:              slti         a5, a2, -58
                  blt          s5, t6, 397f
                  or           s4, a5, a6
388:              bgeu         a3, s10, 400f
                  and          a3, a1, zero
                  slti         a6, gp, 1011
                  sll          t3, t1, t6
392:              auipc        s4, 378709
                  xori         sp, a1, 484
                  addi         a7, t5, -116
                  beq          s2, ra, 404f
                  srai         a3, s0, 8
397:              add          s3, zero, s11
                  slli         s0, a6, 11
                  bgeu         s8, a6, 404f
400:              beq          s0, a0, 406f
                  bltu         s4, t2, 420f
                  ori          t3, s2, 580
                  beq          s4, a0, 423f
404:              addi         s8, s6, -1328
                  or           a7, t4, s6
406:              srli         s1, a0, 25
                  bgeu         s0, s5, 424f
                  xor          a7, a1, a7
                  bne          zero, ra, 422f
                  xori         zero, sp, -1732
                  sltu         t2, s9, a0
                  ori          zero, s5, -1824
                  xori         s9, gp, -596
                  sra          s6, s2, t2
                  slt          zero, t1, sp
                  nop
                  srli         s3, a3, 16
                  srli         s1, a0, 6
                  slti         s10, s10, 1707
420:              slt          s10, a2, t4
                  xori         s7, t5, 1846
422:              and          s11, sp, t6
423:              andi         s4, tp, 1560
424:              bgeu         s8, a0, 430f
                  bltu         a4, s6, 436f
                  slli         s9, s6, 4
                  blt          a5, s1, 442f
                  srl          ra, s0, t5
                  slli         ra, t6, 21
430:              srai         s9, a2, 23
                  nop
                  xori         a2, s8, -359
                  sub          a7, a1, s2
                  sub          a4, ra, a6
                  xori         s4, t2, 323
436:              bge          t4, t3, 450f
                  or           gp, a1, a1
                  ori          a0, t6, -1482
                  blt          a5, t3, 448f
                  and          zero, a5, t5
                  add          s11, t3, a2
442:              bgeu         s1, t6, 447f
                  sll          s10, t2, s1
                  add          zero, s4, a0
                  andi         s0, s4, 1856
                  sll          a1, s8, a5
447:              or           gp, s1, s11
448:              slt          a6, gp, a5
                  auipc        zero, 4382
450:              sub          s9, s4, ra
                  sll          a2, t1, a4
                  bgeu         s4, a5, 463f
                  ori          s10, s7, -1617
                  slli         s2, a1, 4
                  lui          s7, 536245
                  srl          gp, a5, s5
                  bgeu         tp, t5, 468f
                  or           s7, t6, t5
                  or           s3, tp, a5
                  sra          s3, s0, sp
                  bgeu         a1, s0, 473f
                  add          ra, a3, a1
463:              and          s2, a1, s5
                  bge          s7, s1, 469f
                  and          s10, ra, t2
                  srli         s0, gp, 18
                  sltu         s8, s5, ra
468:              srl          a7, t5, t4
469:              sll          a5, s10, ra
                  bge          s10, tp, 475f
                  srl          sp, s10, t1
                  xor          zero, t0, a3
473:              blt          s7, s7, 483f
                  blt          a2, a1, 493f
475:              srli         s7, s0, 4
                  beq          s5, s7, 494f
                  slli         t1, s0, 21
                  add          a7, t4, a3
                  addi         s8, sp, 1204
                  slli         a4, t4, 4
                  bgeu         t2, tp, 486f
                  sltu         a6, s1, s3
483:              slt          t1, zero, s7
                  xor          t4, ra, s2
                  srai         a5, t5, 18
486:              sltiu        a2, t6, 1225
                  sll          t2, a6, a2
                  ori          s11, a1, 1525
                  beq          a3, tp, 490f
490:              bge          t0, ra, 496f
                  auipc        s3, 877669
                  ori          s3, tp, -1696
493:              sll          s3, s10, a2
494:              or           a7, t2, a0
                  auipc        s2, 116770
496:              srli         a1, ra, 24
                  slli         a2, s10, 5
                  bgeu         ra, a4, 516f
                  ori          t3, ra, -99
                  sltu         s2, t2, t2
                  auipc        ra, 123640
                  slti         s9, sp, 1787
                  or           sp, s9, s8
                  beq          a5, s2, 523f
                  sll          zero, s4, ra
                  add          t2, tp, s4
                  slt          t1, s1, s9
                  bne          t6, t3, 518f
                  sub          a0, a4, a2
                  sltiu        a1, t6, -603
                  bgeu         s5, t6, 512f
512:              and          s11, s6, t2
                  sll          s4, t2, tp
                  sra          t3, t4, t6
                  bne          a3, t1, 529f
516:              blt          a5, a5, 536f
                  slt          a7, s1, a2
518:              srl          a3, a5, a3
                  xori         a2, t4, 768
                  srli         ra, s10, 8
                  sra          s1, ra, s1
                  bne          zero, s1, 532f
523:              bne          s6, t3, 533f
                  srli         t3, a2, 23
                  addi         t1, s7, -1709
                  sra          sp, t2, s3
                  lui          s7, 48160
                  slt          a2, a1, t1
529:              xori         a1, t1, -1915
                  addi         a6, a2, 480
                  andi         s7, s1, -1691
532:              srl          s9, gp, a3
533:              xori         sp, s11, -46
                  blt          zero, s2, 548f
                  sub          s4, s5, tp
536:              xori         s2, s9, -1520
                  slt          a1, s3, gp
                  sra          t2, a4, t2
                  xor          a6, t4, s7
                  blt          t3, t6, 550f
                  and          a1, a1, a7
                  srli         t6, s0, 26
                  xor          t1, s2, s11
                  sll          t2, a7, t0
                  andi         gp, ra, -400
                  srai         s1, a6, 17
                  auipc        s1, 1042400
548:              auipc        s1, 675008
                  sll          t6, ra, s2
550:              sltu         t3, a3, t0
                  andi         t3, s0, -763
                  addi         s8, a5, 1592
                  srai         s3, s10, 5
                  sub          s7, a3, t0
                  addi         zero, s1, -1259
                  bltu         s10, s1, 567f
                  auipc        s9, 395233
                  slti         s5, s4, -319
                  xori         s5, s9, 1179
                  auipc        a7, 773045
                  nop
                  sltiu        t1, s6, 438
                  auipc        s1, 530302
                  sltu         a0, s1, t4
                  xori         sp, a0, 787
                  beq          s10, a2, 583f
567:              beq          a4, t5, 578f
                  srai         ra, a4, 14
                  add          s2, s1, s7
                  and          s6, t6, s9
                  slt          s11, s11, s7
                  slt          s10, s4, a5
                  sll          a5, t1, s1
                  slt          zero, s2, a2
                  bge          a0, s3, 586f
                  lui          a6, 173728
                  beq          gp, s3, 591f
578:              srai         s0, a2, 3
                  and          s7, s8, s8
                  srai         s7, s7, 8
                  sltiu        t3, s10, -1779
                  add          s5, a7, s3
583:              ori          s7, zero, -294
                  or           a4, a6, s9
                  srai         s9, s6, 11
586:              sll          s0, s10, t4
                  add          s3, s5, s0
                  nop
                  add          a0, a6, t6
                  or           s10, s6, a3
591:              bltu         s1, a5, 606f
                  slti         s11, s11, 393
                  slli         s1, ra, 21
                  auipc        s6, 52755
                  sra          s7, a4, t2
                  sub          a7, s7, s0
                  slt          s5, zero, a7
                  sub          t4, t0, a3
                  slt          gp, s6, a1
                  slt          s11, tp, t1
                  blt          a0, tp, 606f
                  blt          zero, ra, 608f
                  sub          s3, t2, a2
                  slt          sp, t3, s7
                  auipc        ra, 1020048
606:              bge          a7, a1, 616f
                  sll          t1, s11, t2
608:              srl          a1, tp, t6
                  xor          a2, s2, a5
                  lui          t3, 565863
                  bne          a1, t4, 616f
                  srl          s0, s10, a3
                  lui          gp, 217509
                  and          s0, t0, a0
                  slli         s3, zero, 19
616:              bltu         gp, a0, 635f
                  bltu         s5, s2, 622f
                  beq          t1, a1, 624f
                  sll          t1, a3, gp
                  or           s7, t6, a3
                  sra          a6, s0, tp
622:              xori         s1, t2, -1285
                  beq          a4, t6, 642f
624:              add          t2, a5, tp
                  add          s5, a2, s8
                  xori         sp, t4, 75
                  ori          a7, a2, 587
                  xori         s2, t0, -760
                  addi         s4, s8, -1720
                  ori          s2, s4, 1709
                  slt          zero, a4, s0
                  bge          t4, s7, 641f
                  sltiu        s10, t4, 1894
                  and          a7, s4, gp
635:              sltu         t3, s4, s8
                  sub          s8, a1, s10
                  slli         zero, s0, 7
                  ori          s5, a2, -789
                  or           t4, a6, a7
                  ori          a4, s4, -2037
641:              bgeu         a1, t1, 642f
642:              sub          s7, a0, s6
                  addi         sp, t1, 1441
                  bge          a7, tp, 663f
                  auipc        a1, 96997
                  sll          a3, tp, t3
                  addi         s5, a3, 602
                  srai         a0, s8, 20
                  andi         t3, s6, 1637
                  or           s10, t6, gp
                  srli         ra, gp, 26
                  bne          s7, s11, 672f
                  lui          s3, 595258
                  lui          s3, 880376
                  slti         s11, s0, 403
                  bltu         zero, a3, 676f
                  srli         a1, s2, 23
                  auipc        s3, 246409
                  lui          ra, 756080
                  xori         t2, s3, 198
                  blt          a3, a3, 675f
                  lui          s6, 426325
663:              andi         gp, t1, 1974
                  beq          t3, s7, 677f
                  bltu         t3, t2, 666f
666:              ori          t6, a3, -915
                  bne          a1, s8, 672f
                  sltiu        s10, t6, 1117
                  ori          s0, s10, -125
                  slt          s3, a7, s10
                  bge          a5, t2, 681f
672:              sltiu        s2, sp, 1834
                  sltu         a2, s7, s2
                  bgeu         s8, t0, 686f
675:              bge          s10, a6, 689f
676:              bltu         a1, s1, 694f
677:              bne          tp, ra, 695f
                  slli         zero, a1, 9
                  sltu         a6, a5, t2
                  slt          s8, a5, t5
681:              sll          s8, gp, s2
                  beq          s11, s8, 692f
                  addi         s0, a7, 1989
                  add          s9, t4, t2
                  sltu         t4, s4, s0
686:              nop
                  slt          sp, s9, s4
                  slti         zero, a4, 1684
689:              add          s5, zero, s3
                  nop
                  nop
692:              and          s9, t0, s7
                  blt          s0, gp, 703f
694:              blt          s3, a1, 704f
695:              and          t6, s0, t1
                  auipc        s3, 28824
                  or           gp, s1, t5
                  andi         s10, s9, 552
                  xor          a0, s0, t6
                  addi         s1, zero, -1652
                  slli         a7, s5, 1
                  or           s5, a0, a6
703:              slt          s4, a5, a4
704:              sra          s2, a2, t0
                  srli         s8, t4, 15
                  bltu         s2, a5, 726f
                  slt          a2, s9, s2
                  slti         a7, t5, -538
                  blt          t0, s8, 714f
                  and          a3, s4, t5
                  addi         a4, gp, 858
                  slt          s7, s6, tp
                  xor          a3, a7, sp
714:              slt          s2, a5, s0
                  sltu         a3, a3, t5
                  sltiu        s11, a6, 1481
                  bltu         t1, t1, 732f
                  srl          gp, gp, zero
                  bltu         a3, s8, 732f
                  addi         s10, a1, -1097
                  sll          s2, t0, s7
                  bltu         a5, s10, 733f
                  add          t4, s3, a6
                  sll          a0, s3, a2
                  sltiu        t3, s2, 234
726:              addi         a7, s8, 0
                  or           a2, a3, ra
                  slti         ra, s11, -663
                  sra          s10, s2, s7
                  slli         a1, a0, 23
                  sltiu        s10, s2, -1782
732:              nop
733:              nop
                  srli         t1, s7, 1
                  sltiu        sp, t5, 948
                  nop
                  sll          s4, a0, s9
                  or           sp, s3, a4
                  xori         gp, a2, -798
                  bne          s2, s11, 741f
741:              sll          t3, a1, a0
                  ori          s4, a1, -13
                  slti         a7, a6, 559
                  auipc        s6, 337088
                  bgeu         sp, t4, 759f
                  auipc        s2, 67646
                  ori          ra, t6, 1959
                  beq          s8, s9, 762f
                  ori          s3, t3, -1801
                  bge          s1, zero, 751f
751:              sltu         zero, s8, t4
                  or           t4, a0, a1
                  bge          s6, s7, 758f
                  slt          a0, t6, s7
                  sub          s2, t4, s7
                  andi         a5, t3, 346
                  blt          s1, s5, 777f
758:              add          t1, s0, s11
759:              slt          sp, s9, s5
                  bge          t4, s5, 766f
                  bne          a1, t6, 779f
762:              xor          t3, ra, s8
                  bne          s3, t2, 775f
                  slli         a5, t6, 5
                  auipc        a1, 193883
766:              sub          t2, a2, t2
                  sll          t4, t3, t1
                  slt          sp, ra, t6
                  add          a2, s0, s1
                  addi         s11, a6, -267
                  nop
                  lui          a0, 893239
                  slt          s11, s0, sp
                  bgeu         a4, s3, 780f
775:              xori         a4, s1, 587
                  sll          a1, a6, s11
777:              slti         a0, s3, 2020
                  srl          zero, t4, t2
779:              bltu         a7, tp, 784f
780:              nop
                  sll          a3, a1, a0
                  beq          s0, t4, 792f
                  slti         s3, s5, -1957
784:              bgeu         t6, t0, 803f
                  nop
                  addi         t6, t6, 942
                  beq          a3, s7, 796f
                  bgeu         a7, s9, 807f
                  slti         a4, a3, 707
                  bgeu         t1, t3, 801f
                  sra          s2, t0, a0
792:              ori          ra, s8, -1561
                  beq          ra, gp, 798f
                  sltiu        s0, a2, 123
                  sub          t4, t0, a5
796:              sub          a6, a3, s0
                  lui          s7, 908206
798:              sltiu        s8, a3, 1611
                  addi         a7, t6, 1211
                  srli         t6, t6, 23
801:              slt          s4, s6, a1
                  bge          s10, s4, 820f
803:              sll          s11, a2, a0
                  slt          a2, ra, sp
                  slt          s3, ra, s4
                  xori         sp, t6, 1498
807:              beq          s11, a0, 818f
                  slti         s7, a4, 1450
                  xori         s6, t3, 876
                  nop
                  sub          s0, t0, a6
                  srli         a5, t3, 21
                  and          a0, s6, s5
                  sub          gp, a1, s0
                  andi         s3, s7, 1161
                  or           t4, t3, t2
                  blt          sp, a6, 836f
818:              bltu         s10, a1, 828f
                  sub          sp, a1, s9
820:              slli         a3, s6, 13
                  sltiu        t3, zero, 1424
                  xor          t2, t1, a5
                  beq          s4, a2, 837f
                  xori         s7, t6, 1489
                  add          s2, ra, s2
                  lui          s10, 587621
                  blt          a2, tp, 844f
828:              bge          a0, a1, 839f
                  sll          s8, t2, t4
sub_1_11:         jal          ra, 5f
0:                jal          ra, 16f
1:                jal          ra, 4f
2:                jal          ra, 18f
3:                jal          t6, 12f
4:                jal          ra, 23f
5:                jal          ra, 10f
6:                jal          a1, 28f
7:                jal          ra, 11f
8:                jal          ra, 9f
9:                jal          ra, 27f
10:               jal          t1, 21f
11:               jal          t1, 15f
12:               jal          t1, 24f
13:               jal          ra, 6b
14:               jal          ra, 1b
15:               jal          ra, 26f
16:               jal          t1, 2b
17:               jal          ra, 0b
18:               jal          a7, 7b
19:               jal          ra, 25f
20:               jal          a2, 3b
21:               jal          ra, 22f
22:               jal          gp, 14b
23:               jal          ra, 19b
24:               jal          s0, 13b
25:               jal          t6, 8b
26:               jal          s11, 20b
27:               jal          gp, 17b
28:               or           sp, a2, zero
                  sra          a2, ra, a0
                  srl          s9, t3, s4
                  srl          s1, sp, s6
                  sltu         s6, s10, t0
                  sra          s6, tp, t4
                  srl          t4, t1, a4
836:              bge          gp, sp, 854f
837:              bgeu         s1, a6, 838f
838:              sll          s8, s11, s9
839:              bne          a2, s10, 852f
                  slli         sp, s1, 22
                  blt          t0, zero, 851f
                  and          zero, s3, s10
                  bltu         s6, zero, 862f
844:              bge          a3, gp, 858f
                  auipc        s6, 237681
                  bltu         t5, a6, 856f
                  sra          a7, a5, s8
                  beq          s0, a5, 857f
                  sra          a3, t3, sp
                  or           s8, s8, a2
851:              auipc        s7, 103544
852:              addi         a3, ra, 1551
                  nop
854:              srai         t6, a7, 20
                  add          s0, t5, a6
856:              lui          s9, 1022575
857:              andi         t4, t5, 526
858:              ori          s11, a6, 277
                  slt          t4, s7, t1
                  sltiu        a5, s5, 982
                  sll          a7, s4, s11
862:              bne          a0, t4, 877f
                  or           s8, tp, s6
                  xori         s7, zero, 793
                  andi         s5, t6, -262
                  xor          s8, a7, a2
                  add          t3, t4, s2
                  andi         a3, tp, -782
                  bne          a2, s0, 875f
                  sltiu        t3, s4, 325
                  xor          a6, t6, s1
                  ori          t4, t0, 897
                  lui          sp, 736684
                  or           s8, a6, t3
875:              or           s7, s2, t0
                  andi         t3, a0, -1463
877:              lui          s4, 946089
                  ori          s8, s10, -1417
                  blt          s8, tp, 889f
                  bgeu         a0, a6, 900f
                  beq          s1, sp, 901f
                  slli         s3, a3, 29
                  bne          a3, tp, 902f
                  srl          a1, s0, a0
                  beq          s11, a4, 890f
                  sltu         ra, t5, t6
                  bgeu         s9, t4, 898f
                  sra          s1, zero, a7
889:              slli         sp, a3, 19
890:              lui          s5, 652276
                  bge          s0, t1, 897f
                  ori          a1, t0, 1175
                  add          t4, a3, a4
                  add          t1, a7, t3
                  auipc        t1, 742647
                  bge          zero, s8, 901f
897:              bltu         s8, s8, 911f
898:              and          a3, s3, s3
                  srl          s11, t4, s9
900:              slt          s4, a1, sp
901:              nop
902:              srl          sp, gp, a4
                  bne          a1, a1, 914f
                  bltu         a4, s5, 905f
905:              srl          a7, a1, sp
                  andi         t4, gp, -569
                  sub          s8, s9, t6
                  bgeu         s5, t6, 926f
                  sltiu        s4, a0, 1247
                  and          t3, t2, s9
911:              and          s4, t4, s8
                  or           ra, a0, t3
                  slti         t1, a3, 28
914:              sub          s2, s4, s0
                  beq          s1, s6, 920f
                  sltu         a2, s1, t2
                  auipc        s4, 834892
                  xori         s6, s10, 1258
                  sub          s6, s6, s2
920:              bge          t2, a4, 930f
                  auipc        a0, 916379
                  add          s1, t6, ra
                  andi         a4, s9, 185
                  nop
                  and          s7, s1, s6
926:              addi         s7, s8, -580
                  srl          gp, a2, s4
                  blt          a1, t2, 947f
                  srli         a3, a5, 16
930:              sltiu        s11, s1, 1828
                  xori         a0, zero, -855
                  xori         a5, s5, -128
                  and          gp, t0, s9
                  add          s6, s8, gp
                  bne          s4, gp, 947f
                  bge          t1, zero, 950f
                  nop
                  srli         s4, t0, 11
                  slt          sp, a4, s6
                  srai         s7, s5, 5
                  add          a6, s0, s6
                  or           s9, s1, a0
                  andi         a7, gp, 1775
                  bltu         s7, s7, 961f
                  srli         s6, a0, 3
                  sub          a3, t3, t0
947:              ori          s11, s4, -438
                  andi         a2, a5, -1060
                  slli         a0, ra, 20
950:              bne          s7, s4, 955f
                  bne          t1, s9, 969f
                  sltu         t1, a0, s9
                  xor          t1, s2, s3
                  sltu         t3, s11, s9
955:              nop
                  sltu         s11, t2, a3
                  bne          sp, tp, 976f
                  bne          a1, s0, 972f
                  bge          t3, s11, 973f
                  srli         zero, s4, 26
961:              xori         a0, a2, 1730
                  addi         a4, s3, 208
                  bltu         t6, s2, 969f
                  slti         s9, s8, 330
                  srli         s1, gp, 30
                  lui          a4, 755253
                  slt          a7, ra, s9
                  add          s6, t4, s10
969:              addi         a2, a5, -109
                  slt          a6, a1, s0
sub_1_15:         jal          ra, 3f
0:                jal          sp, 11f
1:                jal          t1, 2f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          a3, 5f
5:                jal          t1, 8f
6:                jal          ra, 1b
7:                jal          a4, 9f
8:                jal          t1, 6b
9:                jal          ra, 4b
10:               jal          ra, 7b
11:               sltiu        t6, s7, -745
                  ori          s9, t2, -163
972:              bltu         ra, s3, 977f
973:              sltiu        s7, sp, -829
                  auipc        t6, 423523
                  sll          t1, a0, a4
976:              sltu         a4, a0, s11
977:              sltiu        s5, t0, 1338
                  nop
                  blt          a7, s8, 984f
                  sltu         gp, tp, s3
                  sra          s1, s7, t1
                  sll          sp, t0, tp
                  and          gp, s4, zero
984:              slt          t6, a6, t3
                  sltiu        ra, a4, 600
                  xori         a5, t5, -915
                  blt          s9, s11, 1005f
                  sll          s8, s10, sp
                  slt          s5, s11, sp
                  bne          t2, zero, 996f
                  add          a6, a2, t4
                  slli         a0, t5, 11
                  xori         s3, a3, -357
                  srli         a4, a7, 11
                  bne          zero, a7, 1006f
996:              srai         gp, t3, 15
                  and          s0, t1, a2
                  beq          a5, s1, 1009f
                  srl          s10, t6, s8
                  xor          s9, s9, s0
                  slti         t3, a5, -34
                  slli         a7, s8, 18
                  xori         a2, s5, -1755
                  nop
1005:             sub          s6, t4, s6
1006:             andi         a6, t6, -1974
                  lui          gp, 117922
                  and          t6, a4, a1
1009:             and          s11, a3, zero
                  sltu         s11, t5, a6
                  xori         a5, t5, 767
                  xor          s11, gp, s3
                  or           s9, s10, t4
                  addi         a2, a6, 395
                  srli         s11, a1, 25
                  or           t3, s11, a1
                  sub          t6, s11, s4
                  sltiu        t6, a0, 13
                  sra          t6, s10, t1
                  slti         zero, a1, 698
                  srai         s10, t6, 29
                  slt          s4, t1, tp
                  bne          t6, tp, 1034f
                  sltu         s11, gp, tp
                  auipc        t1, 355613
                  lui          a7, 18334
                  blt          t0, a3, 1039f
                  bgeu         s7, a0, 1047f
                  slt          sp, s9, s8
                  bgeu         t5, a7, 1040f
                  blt          a6, s6, 1044f
                  bgeu         s1, s1, 1051f
                  addi         a5, a3, -1141
1034:             or           a3, a0, a7
                  blt          s3, s8, 1050f
                  srli         zero, t5, 25
                  slli         s7, s3, 19
                  or           s8, tp, s11
1039:             andi         a6, t5, -407
1040:             andi         sp, a6, 1692
                  srli         s11, ra, 31
                  srl          s6, s10, s7
                  addi         a2, t2, 1754
1044:             addi         t6, a4, -1596
                  sltiu        s4, s4, 379
                  slti         s1, gp, 1676
1047:             bge          a2, sp, 1056f
                  bgeu         a6, s7, 1068f
                  andi         t3, s8, -1980
1050:             xor          s1, s11, a6
1051:             andi         t1, s11, 1561
                  sltu         t6, a1, s0
                  bge          a7, a2, 1054f
1054:             sltiu        s2, a5, -235
                  srli         zero, s1, 15
1056:             srl          t6, a4, a1
                  sltu         s11, ra, s2
                  sra          t2, a0, tp
                  or           s0, s3, sp
                  srai         a2, s2, 31
                  slt          gp, a6, a4
                  addi         s5, ra, 1789
                  add          gp, s6, t3
                  sra          gp, s1, s3
                  srai         s3, t5, 10
                  bge          t6, t0, 1076f
                  sltu         t6, s5, a7
1068:             ori          a3, s3, -710
                  and          s11, t5, sp
                  andi         gp, s11, 854
                  slt          sp, s6, s2
                  slti         t3, s11, -16
                  auipc        ra, 320987
                  bne          a6, a7, 1094f
                  blt          t6, tp, 1080f
1076:             sll          sp, a7, a5
                  sub          t3, t2, t6
                  slti         s1, a1, -1896
                  slti         sp, a4, -1334
1080:             xori         s1, t5, 437
                  xori         t4, s0, -1078
                  lui          gp, 372236
                  sltiu        a1, s4, 150
                  srli         s2, a4, 16
                  slli         s0, a4, 23
                  srl          s0, s3, s2
                  add          a7, t6, a7
                  xori         s4, t5, 1965
                  and          t4, s11, s2
                  srl          t6, t1, tp
                  bltu         a3, zero, 1101f
                  srl          sp, a4, s8
                  srli         s5, t5, 22
1094:             sll          a0, s7, a3
                  add          a3, t6, t4
                  blt          t1, a6, 1106f
                  slli         s0, a5, 27
                  ori          t2, s3, -1703
                  nop
                  srli         s7, s3, 20
1101:             beq          ra, s11, 1115f
                  add          t1, t3, t2
                  and          sp, t4, s5
                  sll          t2, a1, t3
                  sll          ra, s3, sp
1106:             bne          t5, tp, 1107f
1107:             bge          t3, a0, 1124f
                  add          zero, s6, a5
                  auipc        a5, 368453
                  and          s2, s3, ra
                  ori          a2, s1, 1709
                  beq          s7, s9, 1117f
                  xori         t2, a0, -1886
                  auipc        s5, 430179
1115:             sra          ra, t1, a6
                  slt          t4, s8, a0
1117:             sltu         s10, s3, s8
                  or           t1, a7, gp
                  xori         a6, s1, -346
                  lui          t2, 943301
                  andi         a2, zero, 19
                  sltu         zero, s4, t5
                  slli         a3, a2, 13
1124:             or           s4, t1, a6
                  srai         a5, a3, 26
                  auipc        a2, 958985
                  slli         a4, s8, 6
                  slt          s6, a5, zero
                  addi         s6, t3, 1408
                  bgeu         s4, t5, 1141f
                  add          s10, t5, a7
                  or           s5, a2, tp
                  lui          a0, 454349
                  srai         a5, a5, 10
                  sltu         a5, a0, s9
                  slti         t1, a7, 556
                  sltu         t4, zero, gp
                  bge          s2, a1, 1158f
                  srli         t3, s10, 14
                  slli         a5, s7, 20
1141:             sll          s8, s11, s0
                  bgeu         t5, s6, 1156f
                  and          t3, s10, a5
                  add          zero, zero, tp
                  srai         t4, t5, 16
                  sltiu        s1, s5, 60
                  srli         s2, t5, 0
sub_1_9:          jal          ra, 0f
0:                jal          ra, 11f
1:                jal          ra, 14f
2:                jal          ra, 12f
3:                jal          ra, 13f
4:                jal          t1, 15f
5:                jal          sp, 17f
6:                jal          s4, 16f
7:                jal          ra, 8f
8:                jal          sp, 26f
9:                jal          ra, 18f
10:               jal          t1, 22f
11:               jal          ra, 2b
12:               jal          sp, 4b
13:               jal          t2, 9b
14:               jal          ra, 10b
15:               jal          ra, 1b
16:               jal          t4, 24f
17:               jal          ra, 7b
18:               jal          a2, 25f
19:               jal          ra, 3b
20:               jal          t1, 5b
21:               jal          t1, 19b
22:               jal          a0, 21b
23:               jal          t1, 6b
24:               jal          gp, 20b
25:               jal          ra, 23b
26:               nop
                  sltu         s2, ra, t5
                  slli         s5, s1, 13
                  xori         s1, s7, 1391
                  ori          a3, gp, -667
                  or           s2, ra, s11
                  sub          t2, t3, t6
                  slli         t2, ra, 5
                  lui          gp, 190662
1156:             sll          a1, gp, ra
                  bltu         a7, a6, 1167f
1158:             blt          a1, s4, 1163f
                  xor          a1, zero, t5
                  srl          s11, gp, s2
                  addi         a7, t4, -52
                  nop
sub_1_1:          jal          ra, 4f
0:                jal          t1, 12f
1:                jal          t1, 13f
2:                jal          ra, 14f
3:                jal          s0, 5f
4:                jal          ra, 0b
5:                jal          ra, 15f
6:                jal          s3, 11f
7:                jal          gp, 9f
8:                jal          gp, 6b
9:                jal          t1, 8b
10:               jal          t1, 16f
11:               jal          ra, 2b
12:               jal          ra, 3b
13:               jal          ra, 10b
14:               jal          a7, 1b
15:               jal          gp, 7b
16:               sltu         a6, t3, t3
1163:             bltu         a5, t5, 1177f
                  and          s0, t2, ra
                  bge          tp, s0, 1170f
                  addi         s4, t4, -205
1167:             srai         gp, s2, 27
                  srl          s0, tp, a0
                  add          t2, a3, s1
1170:             or           s10, a6, s6
                  blt          tp, t6, 1189f
                  andi         gp, t2, 284
                  xori         s1, ra, -835
                  lui          a5, 342699
                  sltu         s2, t3, s10
                  xori         t3, t6, 1420
1177:             blt          t6, ra, 1194f
                  add          t4, s6, a0
                  bgeu         s11, s0, 1199f
                  sra          sp, s0, s4
                  sll          s6, a4, t1
                  bgeu         t6, a7, 1195f
                  add          s4, a4, s8
                  or           s4, s3, a1
                  srai         a5, zero, 22
                  sltiu        t6, t5, -1049
                  srli         sp, t1, 0
                  andi         a4, a4, -838
1189:             ori          t4, s3, -1609
                  slt          s2, s8, t5
                  bgeu         a5, tp, 1192f
1192:             addi         a7, s6, -441
                  srli         a2, s1, 6
1194:             bltu         s4, t6, 1205f
1195:             bne          s3, a3, 1196f
1196:             xori         s6, s8, -1961
                  add          s5, s1, s6
                  srli         s0, ra, 28
1199:             addi         s4, s3, -733
                  beq          s3, gp, 1209f
                  andi         s6, zero, 1388
                  and          s7, a4, s0
                  bne          s4, gp, 1215f
                  srai         s6, a0, 2
1205:             xor          a1, a7, t1
                  bgeu         tp, a2, 1212f
                  lui          s1, 243020
                  slli         t4, a1, 11
1209:             lui          s6, 26617
                  lui          s6, 668883
                  srl          a3, t0, t0
1212:             bltu         s7, a4, 1222f
                  nop
                  nop
1215:             and          a5, s6, s6
                  bltu         gp, a3, 1235f
                  sltiu        a3, a7, -1053
                  auipc        s5, 807650
                  add          s10, s8, s8
                  addi         a0, a7, 1781
                  bge          s5, s9, 1239f
1222:             srl          t6, t2, t1
                  or           a1, t5, zero
                  addi         s6, s4, -1905
                  ori          a3, s5, -407
                  or           a7, t0, t3
                  bltu         t2, ra, 1232f
                  xori         sp, a6, 657
                  sltiu        a0, t5, 1522
                  auipc        a4, 1048095
                  xori         a3, a1, -628
1232:             sll          t2, t2, t0
                  bltu         a1, a1, 1252f
                  slli         t1, s4, 27
1235:             bge          ra, s9, 1245f
                  and          a5, s3, a1
                  srl          a6, a3, s4
                  ori          a4, t0, -1023
1239:             blt          zero, t2, 1250f
                  andi         a1, a7, 1411
                  sltiu        a4, a5, -869
                  andi         zero, t3, -1643
                  lui          s0, 207113
                  srli         s11, t0, 3
1245:             bge          a6, a1, 1259f
                  and          a7, s8, t2
                  slli         s10, zero, 5
                  slt          gp, a2, a3
                  slti         s2, s3, -1441
1250:             sltiu        s11, a2, 1856
                  slt          a0, t6, t5
1252:             beq          s11, a3, 1258f
                  sll          gp, a7, a2
                  slt          s11, a6, s3
                  bltu         ra, gp, 1270f
                  bge          t4, a6, 1266f
                  lui          a1, 199740
1258:             srai         s6, a6, 12
1259:             lui          gp, 93530
                  add          a1, s10, s0
                  addi         gp, s1, -1888
                  ori          s3, t4, 610
                  bgeu         s7, a5, 1282f
                  sub          s6, s5, zero
                  sltu         s5, s8, t2
1266:             slt          t2, t5, t2
                  addi         a3, s2, -1117
                  addi         t3, s5, -1607
                  addi         a2, a2, -941
1270:             xor          a0, s4, s4
                  xori         sp, ra, 285
                  sltiu        t6, a4, -604
                  blt          t0, t4, 1278f
                  slt          a3, t4, s2
                  blt          a6, s5, 1286f
                  bgeu         a6, a1, 1285f
                  slli         t2, s11, 4
1278:             andi         gp, ra, 1506
                  blt          sp, s6, 1297f
                  bne          a5, t3, 1285f
                  lui          sp, 725885
1282:             srai         s7, s3, 16
                  sll          s3, a5, a1
                  srli         s5, sp, 16
1285:             and          a4, a7, s5
1286:             slt          a7, s5, zero
                  sub          s6, t0, s5
                  andi         s8, a6, 1403
                  slli         gp, s9, 3
                  or           t4, t4, sp
                  blt          a2, s4, 1297f
                  bltu         s9, s2, 1311f
                  andi         s1, s6, -1197
                  auipc        zero, 688860
                  bne          s0, s10, 1296f
1296:             sltiu        a7, s2, -1463
1297:             slt          t1, s0, s1
                  auipc        a0, 196180
                  ori          a7, a4, 732
                  srai         t4, s11, 6
                  addi         a3, s1, -1068
                  slti         s11, a0, 1779
                  bltu         s4, s9, 1313f
                  addi         a4, a3, -1077
                  bne          a4, t5, 1320f
                  add          s4, t6, t5
                  add          s8, tp, s3
                  sll          s10, t5, a7
                  sll          s8, a1, s6
                  lui          a6, 694932
1311:             sra          t4, t2, s6
                  bgeu         a5, a0, 1326f
1313:             andi         s0, s4, -631
                  sra          sp, s3, s10
                  bltu         s8, s9, 1335f
                  add          a6, s11, t6
                  blt          sp, a5, 1322f
                  sra          t2, a7, t4
                  sltiu        s8, t6, -218
1320:             sltu         sp, s5, s1
                  nop
1322:             and          s1, s9, s11
                  srai         s6, s2, 28
                  sltu         s11, a5, s11
                  blt          t1, t1, 1331f
1326:             slt          s5, s2, s0
                  lui          sp, 475237
                  slt          t3, t1, s7
                  slli         s5, a7, 4
                  add          s9, t5, sp
1331:             slti         s7, a4, 748
                  beq          s3, a1, 1350f
                  srai         a5, t3, 21
                  and          t4, s10, t4
1335:             xori         t6, t1, -52
                  sub          s1, t2, s7
                  slli         a6, t3, 18
                  slli         t6, s4, 23
                  sub          s9, s6, t6
                  andi         t1, s9, 878
                  srai         t6, s1, 4
                  srli         s7, s2, 8
                  slti         ra, a1, -32
                  blt          t5, a7, 1361f
                  xor          t6, s0, s6
                  xori         t6, s2, -686
                  add          a3, s3, a6
                  slt          a1, tp, s5
                  bgeu         t5, t4, 1361f
1350:             bne          a5, t3, 1355f
                  auipc        s8, 462077
                  sra          t1, s5, a3
                  addi         s4, sp, -760
                  sra          s7, a4, s10
1355:             and          t4, t5, a6
                  bge          s4, s8, 1361f
                  add          s8, t4, s11
                  slli         a2, s2, 14
                  slt          s6, s3, t6
                  sltiu        sp, s1, 760
1361:             sub          s9, a4, a5
                  srai         t6, a2, 12
                  lw           ra, 4(tp)
                  addi         tp, tp, 64
                  auipc        t1, 1022410
                  sll          a3, s1, s6
                  sltiu        t4, t1, -1998
1984:             addi x23, x1, 1
1984:             jalr x23, x23, 0
sub_4:            andi         s3, s3, 754
                  bne          s8, s7, sub_4_stack_p
                  sltu         s5, s3, zero
                  add          s1, a1, s0
sub_4_stack_p:    addi         tp, tp, -56
                  auipc        t6, 288603
                  or           s0, s3, ra
                  sw           ra, 4(tp)
                  slt          t3, s9, s7
                  addi         s8, s10, -423
                  sra          t3, t4, s7
                  srl          sp, t1, s5
                  ori          t3, s4, -1214
                  la           s11, sub_5
                  addi         t4, s5, 690
                  andi         a3, s10, -33
                  addi         s11, s11, 346
                  ori          t2, a0, 158
                  bltu         gp, zero, sub_4_j8 #branch to jump instr
                  sltiu        s8, s2, -2000
                  xori         t4, a0, -1358
                  srai         t3, a0, 8
                  andi         s7, t6, 1942
sub_4_j8:         jalr         ra, s11, -346 #jump sub_4 -> sub_5
sub_4_2:          jal          ra, 8f
0:                jal          ra, 4f
1:                jal          ra, 14f
2:                jal          ra, 12f
3:                jal          ra, 0b
4:                jal          ra, 7f
5:                jal          t1, 1b
6:                jal          t1, 5b
7:                jal          ra, 2b
8:                jal          t3, 11f
9:                jal          ra, 15f
10:               jal          a7, 13f
11:               jal          s6, 3b
12:               jal          s3, 10b
13:               jal          ra, 6b
14:               jal          gp, 9b
15:               add          sp, t2, gp
sub_4_0:          jal          ra, 10f
0:                jal          ra, 4f
1:                jal          t1, 16f
2:                jal          a4, 14f
3:                jal          ra, 15f
4:                jal          ra, 1b
5:                jal          ra, 0b
6:                jal          ra, 13f
7:                jal          t1, 2b
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          s0, 8b
12:               jal          ra, 20f
13:               jal          ra, 17f
14:               jal          s9, 12b
15:               jal          t1, 9b
16:               jal          s6, 6b
17:               jal          ra, 19f
18:               jal          t1, 11b
19:               jal          a2, 18b
20:               xori         a4, a0, 903
sub_4_1:          jal          ra, 24f
0:                jal          ra, 16f
1:                jal          gp, 7f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          t1, 22f
5:                jal          ra, 26f
6:                jal          gp, 19f
7:                jal          sp, 13f
8:                jal          gp, 21f
9:                jal          ra, 0b
10:               jal          ra, 8b
11:               jal          sp, 23f
12:               jal          ra, 4b
13:               jal          t1, 14f
14:               jal          t3, 9b
15:               jal          t1, 6b
16:               jal          s7, 10b
17:               jal          ra, 27f
18:               jal          ra, 2b
19:               jal          ra, 17b
20:               jal          s4, 25f
21:               jal          ra, 15b
22:               jal          ra, 5b
23:               jal          sp, 1b
24:               jal          ra, 18b
25:               jal          ra, 11b
26:               jal          t1, 20b
27:               srai         a0, a5, 12
                  xor          a5, s11, a4
                  sll          s0, a1, a0
                  sltu         s8, a5, ra
                  nop
                  slti         t1, s9, -13
                  bne          t1, s10, 7f
                  srai         sp, a4, 25
7:                sra          t6, s9, t2
                  sll          s11, t4, a0
                  blt          a0, t5, 10f
10:               and          sp, zero, s5
                  andi         a1, s0, 1466
                  or           s8, t0, t5
                  andi         s7, a7, -275
                  srli         zero, s6, 26
                  nop
                  nop
                  srai         s11, a1, 6
                  beq          t4, s4, 32f
                  sub          a7, a6, a6
                  sub          s3, tp, a0
                  bltu         a7, s4, 35f
                  slti         a4, tp, 1926
                  sll          t1, a4, a1
                  blt          s3, ra, 27f
                  blt          a4, t1, 41f
                  beq          zero, a6, 32f
27:               and          zero, a1, t3
                  nop
                  bltu         a3, a3, 39f
                  bgeu         t6, a1, 34f
                  add          gp, a3, t0
32:               bltu         s9, a3, 45f
                  sltiu        s2, s3, -349
34:               srli         s7, s7, 19
35:               sll          s3, s7, zero
                  bne          s9, s8, 38f
                  beq          a4, s2, 39f
38:               sll          a1, s6, s2
39:               slli         a5, s8, 11
                  srli         s0, s4, 21
41:               bne          t6, t0, 51f
                  add          a2, a7, s6
                  add          s4, ra, s3
                  bge          tp, a4, 59f
45:               slti         s9, s3, -1543
                  auipc        a5, 730008
                  bgeu         s5, gp, 48f
48:               sll          a5, a4, a2
                  and          a4, s11, s7
                  srli         s4, s7, 3
51:               nop
                  bge          t1, s3, 59f
                  beq          a7, t0, 66f
                  xori         s1, a7, -1290
                  sltiu        t4, a0, -833
                  xor          ra, s8, tp
                  addi         a1, t1, -1
                  beq          ra, s9, 69f
59:               blt          ra, t6, 61f
                  nop
61:               xori         zero, s0, -232
                  bne          a5, a7, 64f
                  nop
64:               and          gp, s2, zero
                  auipc        s5, 192619
66:               auipc        t4, 248206
                  slti         s10, a7, 858
                  slt          a7, s2, a0
69:               andi         t1, a2, 1577
                  bgeu         t2, a5, 89f
                  sltiu        gp, s7, 1202
                  beq          s8, a2, 89f
                  or           t2, t4, s9
                  bgeu         s11, t3, 76f
                  slli         a4, a5, 21
76:               nop
                  andi         a6, tp, -1029
                  blt          a1, t1, 94f
                  andi         a2, s11, -510
                  srli         s1, s8, 11
                  bge          s8, t2, 89f
                  beq          t0, a1, 90f
                  blt          t6, a2, 89f
                  blt          tp, t0, 101f
                  slt          s5, a7, ra
                  sub          a0, zero, t5
                  add          s11, s0, s2
                  bltu         s6, a0, 93f
89:               slli         s3, t6, 2
90:               add          s2, s5, gp
                  slli         s10, s6, 20
                  lui          t3, 955418
93:               lui          s3, 1016156
94:               sltu         s11, t5, s1
                  add          gp, s0, tp
                  bge          s2, ra, 107f
                  or           t1, a7, a3
                  bge          a1, s1, 100f
                  slti         a0, zero, -1264
100:              bne          gp, gp, 107f
101:              and          s7, t4, a4
                  or           s3, s2, a1
                  addi         a0, s11, -972
                  srli         gp, s10, 16
                  and          sp, t6, a6
                  xor          t3, s3, s6
107:              andi         zero, tp, 165
                  or           a2, s3, tp
                  bge          gp, s10, 119f
                  srai         sp, s10, 29
                  srli         s3, sp, 19
                  bltu         t1, s8, 122f
                  sltu         ra, a0, s4
                  nop
                  and          a2, t0, t0
                  bgeu         a3, a0, 133f
                  xori         gp, s2, 1026
                  srl          ra, s6, s2
119:              bne          zero, s8, 121f
                  sub          s9, s6, sp
121:              sltu         s7, a5, ra
122:              addi         s11, t2, 509
                  bne          tp, a4, 139f
                  bgeu         zero, s3, 130f
                  slli         a5, s4, 7
                  andi         t1, a2, -307
                  bltu         t4, s8, 138f
                  srl          s2, s0, t4
                  bge          t4, t5, 137f
130:              xori         a0, s7, -507
                  beq          s1, gp, 147f
                  beq          s3, ra, 135f
133:              beq          sp, s3, 134f
134:              auipc        t2, 712956
135:              andi         s0, s5, 1762
                  and          s1, zero, s5
137:              bne          a3, s0, 143f
138:              xor          a3, s9, t4
139:              srai         a1, s6, 3
                  addi         zero, sp, -1726
                  bgeu         a6, s6, 155f
                  and          a1, s9, t3
                  or           a3, s3, s7
                  or           s10, s9, s7
                  lui          t6, 9068
                  bgeu         t2, s6, sub_4_j7 #branch to jump instr
                  andi         t2, sp, 1333
                  slli         gp, t4, 17
                  sltu         s5, ra, s1
                  srai         s7, t0, 2
                  addi         zero, ra, 1425
                  sra          s9, a1, s8
sub_4_j7:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  sra          s11, s0, ra
143:              sll          s4, s4, s9
                  ori          a7, a4, -1271
                  slli         a4, s2, 21
                  sra          s7, s3, a1
147:              srl          s5, t5, t4
                  ori          s8, a7, 882
                  beq          a4, s10, 151f
                  lui          s4, 1046074
151:              lui          zero, 564478
                  slti         s10, s1, -673
                  xor          s3, a0, a7
                  bltu         a5, s1, 159f
155:              auipc        a3, 694057
                  slt          s10, a4, a0
                  srai         a6, a6, 14
                  beq          s9, s9, 165f
159:              addi         t3, t2, 1795
                  bgeu         s2, sp, 165f
                  bge          t3, t1, 165f
                  or           a6, t4, s10
                  bgeu         s8, s1, 165f
                  slti         zero, s8, 1229
165:              srl          a3, a0, s7
                  sra          a7, sp, a4
                  lw           ra, 4(tp)
                  sltiu        a6, a6, -617
                  addi         tp, tp, 56
                  auipc        s7, 433231
                  slt          a2, a4, a7
                  slti         t4, s2, -1381
                  srl          a0, s11, gp
                  slli         a7, a0, 17
279:              addi x29, x1, 0
279:              jalr x29, x29, 0
sub_3:            srl          s1, s3, s9
                  blt          s2, t3, sub_3_stack_p
                  xori         s7, a2, -55
                  ori          t2, zero, -1672
sub_3_stack_p:    addi         tp, tp, -52
                  sub          s6, s7, s0
                  xor          s4, a1, ra
                  sw           ra, 4(tp)
                  addi         s2, t6, -2008
                  sltu         zero, s0, s11
                  xor          a2, zero, s5
                  sra          t3, a1, a6
                  xor          s3, s10, s8
                  la           s8, sub_4
                  addi         s8, s8, 254
                  slli         s3, s11, 16
                  srl          s3, s0, t6
                  sub          t2, a4, s10
                  sltu         a4, t5, a2
sub_3_j5:         jalr         ra, s8, -254 #jump sub_3 -> sub_4
                  ori          t4, sp, 1355
                  sll          s5, a3, t4
                  ori          s8, t2, -188
                  la           s2, sub_4
                  sltu         ra, zero, t0
                  slli         sp, s3, 14
                  addi         t3, a2, -152
                  andi         t4, s3, 702
                  addi         s2, s2, 373
                  nop
                  srli         s5, t1, 20
sub_3_j6:         jalr         ra, s2, -372 #jump sub_3 -> sub_4
                  sltiu        ra, s4, 995
                  bgeu         a4, s3, 10f
                  addi         t4, a7, -1402
                  addi         s2, t1, 1995
                  and          s2, s10, gp
                  beq          gp, s3, 24f
                  xori         s9, a7, -1106
                  bge          s4, t5, 8f
8:                and          t1, a0, ra
                  sub          t1, t5, ra
10:               lui          zero, 139751
                  bgeu         s11, a4, 27f
                  nop
                  sub          a7, a4, a5
                  slli         s4, t5, 16
                  xor          a0, s9, zero
                  bgeu         a1, t0, 25f
                  add          s9, s2, s6
                  sra          t1, s11, a5
                  lui          zero, 372463
                  sub          t3, a6, s5
                  slti         s4, s0, -813
                  slt          s9, ra, t4
                  slli         a2, s10, 6
24:               andi         s6, a5, 422
25:               srli         gp, s9, 27
                  sra          t3, a1, a6
27:               sub          t4, s4, a7
                  sub          a6, a6, a6
                  ori          s11, s2, 766
                  auipc        ra, 417466
                  bgeu         s9, s3, 37f
                  bge          t6, s5, 37f
                  srai         s3, ra, 26
                  bltu         ra, s0, 37f
                  or           s10, s8, a4
                  auipc        a4, 799514
37:               xori         t1, a2, -1742
                  lw           ra, 4(tp)
                  or           zero, a5, a4
                  addi         tp, tp, 52
                  add          a3, s4, a0
                  lui          a2, 116757
                  slt          s9, t4, a2
                  lui          t1, 722083
77:               addi x29, x1, 1
77:               jalr x29, x29, 0
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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x30, x4, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x21, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x21, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x21, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x21, x17, ecall_handler
                  li x17, 0x1
                  beq x21, x17, instr_fault_handler
                  li x17, 0x5
                  beq x21, x17, load_fault_handler
                  li x17, 0x7
                  beq x21, x17, store_fault_handler
                  li x17, 0xc
                  beq x21, x17, pt_fault_handler
                  li x17, 0xd
                  beq x21, x17, pt_fault_handler
                  li x17, 0xf
                  beq x21, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x4, x30, zero
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
                  add x4, x30, zero
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
                  add x4, x30, zero
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
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x4, x30, zero
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
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x4, x30, zero
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
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x4, x30, zero
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
