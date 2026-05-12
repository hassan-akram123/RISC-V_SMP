.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0xf26336df
                  li x1, 0x2
                  li x3, 0xf8e843b4
                  li x4, 0x1ca92f94
                  li x5, 0x80000000
                  li x6, 0x1
                  li x7, 0xf679a9d6
                  li x8, 0xade4bf8d
                  li x9, 0xb259bcc8
                  li x10, 0xf2389c5d
                  li x11, 0x80000000
                  li x12, 0xfdc1cd07
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xb524d31a
                  li x16, 0x80000000
                  li x17, 0x74b079b5
                  li x18, 0xf8fcbac8
                  li x19, 0x0
                  li x20, 0xaebbc0ad
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0xf871ee77
                  li x24, 0x0
                  li x25, 0x5
                  li x26, 0xc
                  li x28, 0x80000000
                  li x29, 0xf4408f96
                  li x30, 0xf5a461fc
                  li x31, 0x7d364258
                  la x2, user_stack_end
main:             jal          t1, 7f
0:                jal          t1, 5f
1:                jal          a3, 4f
2:                jal          t1, 1b
3:                jal          s0, 6f
4:                jal          t1, 9f
5:                jal          t1, 2b
6:                jal          s2, 10f
7:                jal          t1, 0b
8:                jal          s4, 3b
9:                jal          t1, 8b
10:               andi         t6, a7, -1378
main_2:           jal          t1, 9f
0:                jal          gp, 11f
1:                jal          t1, 0b
2:                jal          gp, 8f
3:                jal          t1, 14f
4:                jal          s9, 3b
5:                jal          t1, 16f
6:                jal          t1, 10f
7:                jal          tp, 20f
8:                jal          s7, 6b
9:                jal          s9, 12f
10:               jal          t1, 13f
11:               jal          s3, 4b
12:               jal          a1, 2b
13:               jal          tp, 17f
14:               jal          t1, 18f
15:               jal          t1, 1b
16:               jal          a1, 15b
17:               jal          t1, 19f
18:               jal          a5, 7b
19:               jal          t1, 5b
20:               slti         t4, s5, -147
main_8:           jal          t1, 3f
0:                jal          tp, 23f
1:                jal          s3, 11f
2:                jal          t5, 16f
3:                jal          t0, 4f
4:                jal          tp, 2b
5:                jal          s5, 18f
6:                jal          t1, 9f
7:                jal          t1, 6b
8:                jal          t0, 20f
9:                jal          t1, 22f
10:               jal          t1, 21f
11:               jal          t4, 8b
12:               jal          t2, 19f
13:               jal          t1, 0b
14:               jal          a7, 17f
15:               jal          t1, 10b
16:               jal          t0, 1b
17:               jal          t1, 5b
18:               jal          a2, 13b
19:               jal          a2, 14b
20:               jal          t5, 15b
21:               jal          t4, 7b
22:               jal          s4, 12b
23:               srai         s0, t5, 31
main_19:          jal          t1, 9f
0:                jal          t1, 2f
1:                jal          t1, 3f
2:                jal          a4, 8f
3:                jal          t4, 11f
4:                jal          s0, 13f
5:                jal          gp, 15f
6:                jal          t1, 1b
7:                jal          s9, 10f
8:                jal          gp, 6b
9:                jal          t3, 7b
10:               jal          t1, 0b
11:               jal          t1, 14f
12:               jal          t1, 5b
13:               jal          t3, 12b
14:               jal          s1, 4b
15:               slti         a4, t0, 342
main_14:          jal          t1, 18f
0:                jal          t0, 15f
1:                jal          tp, 20f
2:                jal          t1, 27f
3:                jal          t1, 10f
4:                jal          s9, 5f
5:                jal          t1, 2b
6:                jal          t1, 9f
7:                jal          tp, 0b
8:                jal          t1, 19f
9:                jal          t1, 22f
10:               jal          t0, 4b
11:               jal          t1, 12f
12:               jal          s6, 17f
13:               jal          s2, 6b
14:               jal          t1, 24f
15:               jal          gp, 25f
16:               jal          t1, 8b
17:               jal          t0, 14b
18:               jal          t1, 16b
19:               jal          t1, 26f
20:               jal          tp, 23f
21:               jal          t6, 1b
22:               jal          s5, 3b
23:               jal          t0, 7b
24:               jal          tp, 21b
25:               jal          t5, 13b
26:               jal          s2, 11b
27:               or           s3, s11, s9
main_9:           jal          t1, 12f
0:                jal          t1, 15f
1:                jal          a7, 13f
2:                jal          a2, 16f
3:                jal          t4, 0b
4:                jal          a7, 9f
5:                jal          gp, 11f
6:                jal          a5, 8f
7:                jal          t0, 2b
8:                jal          t1, 3b
9:                jal          a7, 14f
10:               jal          t1, 1b
11:               jal          a5, 10b
12:               jal          t1, 4b
13:               jal          t1, 7b
14:               jal          t2, 6b
15:               jal          t4, 5b
16:               slt          zero, sp, t1
main_13:          jal          t1, 12f
0:                jal          gp, 13f
1:                jal          t1, 11f
2:                jal          s10, 9f
3:                jal          s10, 2b
4:                jal          t1, 15f
5:                jal          t1, 4b
6:                jal          gp, 1b
7:                jal          a4, 14f
8:                jal          t1, 5b
9:                jal          t1, 6b
10:               jal          tp, 0b
11:               jal          a1, 10b
12:               jal          t1, 3b
13:               jal          t0, 7b
14:               jal          gp, 8b
15:               auipc        zero, 250447
main_4:           jal          t1, 18f
0:                jal          s1, 7f
1:                jal          t1, 0b
2:                jal          t1, 20f
3:                jal          s4, 15f
4:                jal          t1, 16f
5:                jal          gp, 2b
6:                jal          a4, 22f
7:                jal          t1, 9f
8:                jal          a2, 4b
9:                jal          a6, 21f
10:               jal          t1, 19f
11:               jal          s1, 3b
12:               jal          t1, 8b
13:               jal          t1, 5b
14:               jal          t1, 6b
15:               jal          t5, 10b
16:               jal          t1, 11b
17:               jal          gp, 12b
18:               jal          t0, 17b
19:               jal          t1, 13b
20:               jal          gp, 1b
21:               jal          s2, 14b
22:               srli         t6, s0, 20
main_5:           jal          t1, 7f
0:                jal          s6, 18f
1:                jal          a7, 10f
2:                jal          a6, 8f
3:                jal          t1, 12f
4:                jal          t1, 16f
5:                jal          t1, 17f
6:                jal          t1, 11f
7:                jal          t1, 14f
8:                jal          a7, 3b
9:                jal          s2, 1b
10:               jal          t1, 6b
11:               jal          gp, 5b
12:               jal          a4, 4b
13:               jal          tp, 9b
14:               jal          t5, 2b
15:               jal          t0, 13b
16:               jal          t0, 15b
17:               jal          t1, 0b
18:               auipc        t1, 641509
main_21:          jal          t1, 3f
0:                jal          t1, 18f
1:                jal          s3, 16f
2:                jal          a5, 13f
3:                jal          tp, 9f
4:                jal          t1, 2b
5:                jal          gp, 6f
6:                jal          t1, 21f
7:                jal          s7, 10f
8:                jal          a4, 15f
9:                jal          t1, 23f
10:               jal          t1, 8b
11:               jal          t0, 4b
12:               jal          t1, 1b
13:               jal          t1, 24f
14:               jal          a3, 11b
15:               jal          t5, 20f
16:               jal          t1, 17f
17:               jal          t1, 19f
18:               jal          a3, 14b
19:               jal          s4, 5b
20:               jal          t1, 12b
21:               jal          t5, 22f
22:               jal          t1, 0b
23:               jal          gp, 7b
24:               auipc        t2, 172680
main_1:           jal          t1, 5f
0:                jal          t1, 2f
1:                jal          gp, 6f
2:                jal          t1, 4f
3:                jal          t1, 9f
4:                jal          t1, 1b
5:                jal          s5, 8f
6:                jal          t6, 10f
7:                jal          t1, 12f
8:                jal          a3, 3b
9:                jal          t1, 11f
10:               jal          t6, 7b
11:               jal          a3, 0b
12:               jal          t1, 13f
13:               auipc        s7, 874164
main_10:          jal          t1, 4f
0:                jal          a2, 2f
1:                jal          t0, 8f
2:                jal          t1, 15f
3:                jal          s4, 20f
4:                jal          t1, 12f
5:                jal          t1, 11f
6:                jal          s1, 3b
7:                jal          tp, 17f
8:                jal          a6, 5b
9:                jal          a7, 0b
10:               jal          t1, 1b
11:               jal          gp, 7b
12:               jal          tp, 6b
13:               jal          t1, 21f
14:               jal          s7, 9b
15:               jal          t1, 16f
16:               jal          t1, 19f
17:               jal          t0, 14b
18:               jal          t1, 13b
19:               jal          gp, 18b
20:               jal          t1, 10b
21:               auipc        s4, 37140
main_18:          jal          t1, 1f
0:                jal          t1, 4f
1:                jal          a1, 12f
2:                jal          t0, 14f
3:                jal          s3, 7f
4:                jal          t1, 5f
5:                jal          t1, 8f
6:                jal          a6, 15f
7:                jal          t0, 0b
8:                jal          t1, 2b
9:                jal          tp, 11f
10:               jal          tp, 3b
11:               jal          a2, 6b
12:               jal          t1, 10b
13:               jal          t3, 9b
14:               jal          s7, 13b
15:               addi         s3, gp, 74
main_15:          jal          t1, 12f
0:                jal          t1, 3f
1:                jal          a1, 21f
2:                jal          t0, 11f
3:                jal          t4, 5f
4:                jal          t0, 14f
5:                jal          t0, 4b
6:                jal          t0, 2b
7:                jal          gp, 0b
8:                jal          t1, 18f
9:                jal          t0, 6b
10:               jal          t1, 8b
11:               jal          a7, 16f
12:               jal          t1, 7b
13:               jal          a0, 1b
14:               jal          t1, 19f
15:               jal          t4, 17f
16:               jal          t1, 10b
17:               jal          s1, 13b
18:               jal          a4, 20f
19:               jal          t1, 9b
20:               jal          t3, 15b
21:               sub          s8, zero, a7
main_22:          jal          t1, 13f
0:                jal          s0, 2f
1:                jal          t0, 8f
2:                jal          tp, 5f
3:                jal          s7, 7f
4:                jal          t1, 18f
5:                jal          s6, 3b
6:                jal          t0, 19f
7:                jal          a3, 6b
8:                jal          t1, 12f
9:                jal          a3, 17f
10:               jal          t1, 0b
11:               jal          t1, 10b
12:               jal          a6, 9b
13:               jal          t1, 1b
14:               jal          gp, 11b
15:               jal          s3, 4b
16:               jal          s0, 15b
17:               jal          s5, 16b
18:               jal          a0, 14b
19:               auipc        a4, 832901
main_11:          jal          t1, 4f
0:                jal          a0, 9f
1:                jal          t1, 11f
2:                jal          t1, 6f
3:                jal          gp, 2b
4:                jal          t1, 10f
5:                jal          s8, 1b
6:                jal          tp, 8f
7:                jal          t1, 12f
8:                jal          t1, 5b
9:                jal          gp, 3b
10:               jal          t1, 0b
11:               jal          t0, 7b
12:               sltu         s6, s4, s0
main_12:          jal          t1, 7f
0:                jal          t1, 10f
1:                jal          t1, 3f
2:                jal          t1, 4f
3:                jal          gp, 9f
4:                jal          a7, 13f
5:                jal          t0, 0b
6:                jal          t1, 5b
7:                jal          s0, 8f
8:                jal          s10, 12f
9:                jal          t1, 6b
10:               jal          t0, 14f
11:               jal          s0, 2b
12:               jal          tp, 11b
13:               jal          t2, 1b
14:               srai         s0, tp, 23
main_6:           jal          t1, 12f
0:                jal          a0, 10f
1:                jal          s9, 17f
2:                jal          t5, 3f
3:                jal          t1, 14f
4:                jal          t3, 18f
5:                jal          a7, 2b
6:                jal          a5, 9f
7:                jal          t1, 4b
8:                jal          t0, 15f
9:                jal          gp, 13f
10:               jal          t1, 8b
11:               jal          t0, 0b
12:               jal          t1, 5b
13:               jal          t1, 7b
14:               jal          t5, 16f
15:               jal          t2, 1b
16:               jal          t6, 11b
17:               jal          a3, 6b
18:               sll          s2, s2, a2
main_3:           jal          t1, 21f
0:                jal          s0, 6f
1:                jal          t1, 8f
2:                jal          a4, 4f
3:                jal          t4, 25f
4:                jal          s7, 0b
5:                jal          a7, 19f
6:                jal          t1, 3b
7:                jal          t3, 13f
8:                jal          t1, 24f
9:                jal          t0, 12f
10:               jal          s8, 9b
11:               jal          t1, 23f
12:               jal          s8, 18f
13:               jal          t1, 17f
14:               jal          a7, 20f
15:               jal          t3, 2b
16:               jal          s8, 26f
17:               jal          gp, 5b
18:               jal          t1, 1b
19:               jal          s8, 14b
20:               jal          t0, 15b
21:               jal          s5, 11b
22:               jal          t1, 10b
23:               jal          gp, 22b
24:               jal          t6, 7b
25:               jal          t1, 16b
26:               sltu         s10, sp, s9
                  srl          gp, a7, a7
                  lui          a4, 60154
                  nop
                  sltu         gp, gp, t2
                  slti         s10, t6, 99
                  bgeu         a1, s7, 17f
                  sra          s10, tp, s7
                  sra          s8, a5, s2
                  blt          tp, t4, 22f
                  lui          a6, 737740
                  xor          s6, a6, s9
                  addi         t6, a2, 1043
                  nop
                  slt          a1, ra, t2
                  slti         s8, zero, 1146
                  sra          a0, a0, s2
                  lui          a2, 657570
17:               andi         a2, tp, -34
                  srai         a3, gp, 12
                  bge          t1, a1, 37f
                  bge          t5, t3, 23f
                  srl          s10, tp, a6
22:               beq          s0, a6, 36f
23:               bgeu         a3, a7, 32f
                  sra          s5, s5, a1
                  srai         s9, tp, 5
                  xori         t4, sp, -973
                  auipc        s8, 76061
                  auipc        t0, 774946
                  or           t2, a2, s5
                  addi         t0, s3, 1805
                  srai         a2, s2, 19
32:               slti         s10, s11, 592
                  sltu         s10, gp, s10
                  xor          t2, sp, a0
                  bltu         a7, s4, 36f
36:               and          s4, s9, a3
37:               bgeu         gp, a1, 39f
                  bne          s7, t6, 41f
39:               bge          s2, s9, 53f
                  beq          s11, t5, 45f
41:               bne          gp, t0, 47f
                  beq          a6, a1, 46f
                  sub          a6, sp, sp
                  and          s1, t0, s9
45:               sltiu        s4, t4, 1153
46:               slti         s2, s0, 1119
47:               beq          t3, ra, 54f
                  srl          s6, a0, s5
                  srai         a6, s6, 11
                  bge          t5, s5, 60f
                  and          t6, s11, s3
                  sltiu        s4, a5, -328
53:               slli         t4, a2, 18
54:               srl          s0, t2, s4
                  lui          s4, 253425
                  andi         s5, a5, 596
                  auipc        gp, 128759
                  sltiu        t0, gp, 1969
                  slli         s5, s6, 2
60:               or           s7, gp, t4
                  bne          a2, s11, 79f
                  bgeu         gp, s2, 65f
                  bgeu         t5, gp, 82f
                  srl          t1, tp, t1
65:               sltu         s5, s4, t2
                  add          a0, sp, t4
                  nop
                  srl          s3, s5, a3
                  bgeu         tp, s0, 77f
                  bgeu         t6, s5, 82f
                  blt          s2, zero, 89f
                  xor          a1, s2, a0
                  sub          t4, sp, tp
                  beq          a4, s2, 90f
                  ori          s8, s5, -1779
                  srli         a2, t3, 19
77:               andi         a0, t6, -339
                  or           s8, gp, t1
79:               srai         t4, s7, 26
                  beq          gp, a1, 97f
                  slti         s8, a3, 1558
82:               and          s2, s9, a5
                  srl          s9, t4, t3
                  sra          a3, s4, t4
                  bltu         a7, t6, 88f
                  sub          a3, sp, t4
                  auipc        s0, 477485
88:               sra          s5, s11, ra
89:               nop
90:               bgeu         a3, a0, 98f
                  xori         a0, zero, -4
                  sltiu        gp, a3, 1849
                  andi         t2, a3, -855
                  bgeu         s11, t6, 110f
                  ori          t0, a2, -1454
                  sltiu        s2, a3, -987
97:               sltu         a3, a5, t6
98:               xor          t6, zero, a4
                  srai         t4, s0, 27
                  and          t5, a3, t6
                  andi         a0, s3, 1518
                  andi         t6, tp, -1642
                  bltu         ra, a4, 113f
                  slt          s6, s1, s2
                  sub          s3, t2, a6
                  sra          t1, gp, s4
                  auipc        s3, 344241
                  andi         zero, a7, -390
                  bge          a7, a4, 129f
110:              and          a5, t1, t1
                  sltu         a2, a7, t6
                  beq          a3, s9, 124f
113:              xor          a5, s3, s5
                  srli         s6, s3, 23
                  ori          a0, s10, 1740
                  add          a1, s4, a1
                  bltu         s6, t3, 132f
                  bltu         t5, s9, 136f
                  xor          s3, t1, t6
                  auipc        t2, 425607
                  bge          a6, t4, 137f
                  or           a3, t2, ra
                  bltu         a1, s2, 137f
124:              sra          s7, a6, s2
                  slt          s5, a3, s3
                  slt          s6, t6, s8
                  add          t5, s6, s5
                  slti         s0, s5, -782
129:              srl          a7, a7, sp
                  slt          a0, zero, s10
                  bgeu         a6, t5, 143f
132:              xori         s9, s2, -125
                  xori         s4, ra, 1099
                  srl          t3, a1, s2
                  slti         s4, s0, 1807
136:              bne          a3, s4, 150f
137:              or           a1, a6, a4
                  nop
                  nop
                  blt          s1, s5, 158f
                  add          t4, s8, a5
                  sltiu        t5, a6, -1487
143:              bge          a4, a2, 146f
                  and          s2, s8, s3
                  sub          s9, s0, zero
146:              auipc        t5, 610510
                  slt          t1, s6, t1
                  sra          s3, s10, t4
                  sra          t4, t0, s3
150:              sltu         a1, zero, t0
                  beq          s9, s4, 154f
                  slt          s6, s9, s8
                  bgeu         s1, a3, 165f
154:              bne          s10, a4, 171f
                  xori         t4, t1, -1269
                  auipc        s8, 852776
                  srl          s2, a0, s2
158:              addi         a2, t3, 1134
                  sra          t0, s7, s11
                  xor          s7, s0, t2
                  blt          a1, t3, 166f
                  bltu         a1, s0, 172f
                  andi         a2, t6, -38
                  sra          a6, s11, a6
165:              bne          t2, s10, 181f
166:              srl          a2, t6, zero
                  lui          a2, 715673
                  slti         a2, s3, 273
                  slli         a3, a0, 9
                  sub          s6, a6, s2
171:              andi         a6, s0, -933
172:              auipc        s5, 146270
                  sltiu        s5, s3, -962
                  auipc        t3, 264730
                  xor          a7, a0, s1
                  srai         t5, t2, 30
                  slti         a1, s7, -751
                  slt          t0, s1, t5
                  add          a1, s3, a4
                  xor          s5, t1, a6
181:              add          a4, sp, t4
                  lui          gp, 469241
                  xori         t3, s7, -1594
                  sra          t3, t4, s3
                  srai         t4, s9, 28
                  sub          t1, s4, sp
                  sra          a6, s2, s11
                  sub          a6, s10, sp
                  sltu         s1, gp, a4
                  beq          a6, s1, 204f
                  srai         s7, s8, 11
                  bge          s2, s5, 195f
                  bne          t4, s4, 201f
                  auipc        a5, 341577
195:              sll          s1, a7, s10
                  bge          t1, a1, 204f
                  bgeu         t1, tp, 198f
198:              bgeu         s6, t6, 213f
                  bne          t2, tp, 211f
                  sra          a2, zero, s4
201:              slti         a1, tp, 1160
                  srl          t6, a2, s3
                  ori          a1, t0, 1394
204:              srl          s4, t1, s3
                  xor          s6, s8, t6
                  bge          a2, t4, 226f
                  xor          a7, a0, s0
                  slt          a2, t4, s0
                  blt          s0, s6, 213f
                  lui          s3, 70233
211:              sltu         a0, gp, a1
                  nop
213:              slti         tp, t3, -1373
                  sltiu        t3, sp, 1642
                  andi         t0, t0, -1261
                  srl          a6, a3, s10
                  srl          t0, t1, s2
                  srli         a7, tp, 31
                  xor          a0, sp, a0
                  sltiu        a3, s11, 820
                  and          t0, t5, a1
main_24:          jal          t1, 11f
0:                jal          s7, 20f
1:                jal          t1, 15f
2:                jal          t6, 22f
3:                jal          tp, 12f
4:                jal          a4, 3b
5:                jal          s5, 14f
6:                jal          t1, 0b
7:                jal          t6, 23f
8:                jal          s10, 6b
9:                jal          s5, 13f
10:               jal          t1, 21f
11:               jal          t2, 10b
12:               jal          t6, 18f
13:               jal          a2, 8b
14:               jal          s6, 7b
15:               jal          t1, 4b
16:               jal          t1, 17f
17:               jal          t1, 5b
18:               jal          t6, 16b
19:               jal          t0, 1b
20:               jal          s5, 2b
21:               jal          a4, 9b
22:               jal          t4, 19b
23:               srl          s7, a6, s9
                  slli         s8, s10, 2
                  lui          zero, 541204
                  sub          s10, a3, s11
                  addi         s3, a5, 135
226:              xor          t6, s7, t0
                  sll          s7, t5, t0
                  srl          zero, s10, s11
                  sll          t4, zero, s7
                  sub          t1, t1, a3
                  srai         s1, a6, 0
                  addi         t0, s2, -1060
                  srli         zero, s0, 5
                  and          s2, t4, s2
                  lui          a0, 1038569
                  beq          t6, t6, 239f
                  srai         a6, zero, 8
                  lui          s9, 586567
239:              bge          s8, s0, 245f
                  blt          t4, t3, 249f
                  slti         s4, s9, -783
main_20:          jal          t1, 25f
0:                jal          tp, 6f
1:                jal          a0, 10f
2:                jal          s7, 24f
3:                jal          a4, 26f
4:                jal          t1, 15f
5:                jal          gp, 17f
6:                jal          t1, 23f
7:                jal          t1, 8f
8:                jal          gp, 11f
9:                jal          t0, 13f
10:               jal          t1, 14f
11:               jal          t3, 2b
12:               jal          s4, 4b
13:               jal          t3, 18f
14:               jal          t1, 20f
15:               jal          t1, 0b
16:               jal          t1, 22f
17:               jal          t1, 19f
18:               jal          a0, 5b
19:               jal          t5, 12b
20:               jal          s3, 3b
21:               jal          s6, 16b
22:               jal          t1, 27f
23:               jal          a2, 1b
24:               jal          t1, 21b
25:               jal          t1, 9b
26:               jal          t0, 7b
27:               and          t1, s6, t4
                  or           s9, a1, t6
                  bltu         ra, s1, 250f
                  sll          t3, s0, a4
245:              sub          s4, a6, a5
                  srai         a4, s5, 24
                  bne          a2, ra, 257f
                  slti         t3, t0, -214
249:              bltu         a6, t5, 251f
250:              auipc        a7, 60620
251:              slt          a7, a7, t1
                  bge          s10, sp, 270f
                  blt          t6, tp, 272f
                  xori         t6, s1, 883
                  ori          t1, s6, -1295
                  bge          t0, a5, 272f
257:              beq          t3, t4, 269f
                  slli         a0, ra, 20
                  and          s5, s1, s5
                  auipc        s9, 478173
                  ori          s4, a7, -592
                  slt          a7, a2, s1
                  andi         gp, s4, -813
                  xor          a3, a0, tp
                  auipc        a4, 734616
                  or           s3, s3, ra
                  bne          gp, s0, 279f
                  srai         zero, s3, 10
269:              blt          s0, s6, 277f
270:              nop
                  srl          t1, t4, s11
272:              xor          s2, s5, a0
                  srai         s4, s7, 28
                  sub          t3, t6, s7
                  bltu         s5, a6, 289f
                  slt          s10, t3, s7
277:              sra          a4, s2, t1
                  and          s4, a5, a1
279:              lui          a2, 186029
                  xori         s0, gp, 1600
                  slt          t0, tp, t2
                  bne          t6, a5, 297f
                  ori          s10, s1, 570
                  srai         a5, a3, 25
                  addi         a2, s2, 1635
                  xori         t0, s6, 1983
                  beq          a1, gp, 304f
                  auipc        a2, 369121
289:              bgeu         tp, s0, 307f
                  sub          s7, s1, a7
                  bge          a4, t6, 301f
                  nop
                  blt          a4, a5, 301f
                  srl          s10, a2, t4
                  blt          a0, a4, 313f
                  sltiu        t4, s10, -1255
297:              slti         t4, a0, 1196
                  xori         s9, s7, 612
                  xor          s8, s8, s0
                  lui          s7, 569088
301:              sub          a7, s5, s5
                  slli         s5, a2, 1
                  sltu         a3, t3, t5
304:              bne          s3, tp, 316f
                  auipc        t0, 786443
                  slt          s10, s5, a6
307:              nop
                  srli         a4, t6, 27
                  bltu         a6, a6, 328f
                  or           s7, sp, t4
                  or           a6, a0, s10
                  sll          s2, s10, t3
313:              or           t5, a7, gp
                  ori          a1, a5, -1122
                  bgeu         t4, zero, 324f
316:              beq          a5, tp, 330f
                  slt          s4, s3, s8
                  auipc        a3, 880682
                  xori         t5, a0, -1921
                  xori         s9, t6, 1115
                  bne          gp, s1, 331f
                  srli         tp, a7, 0
                  bgeu         t2, s6, 325f
324:              sub          s8, s3, a0
325:              beq          zero, gp, 339f
                  srl          a0, s2, t4
                  addi         s3, s8, -1326
328:              and          t5, a1, s5
                  and          tp, t3, t2
330:              sll          s8, t2, s7
331:              auipc        gp, 980714
                  beq          a1, s8, 333f
333:              srl          t0, tp, t2
                  xor          t6, zero, zero
                  sltu         s10, t5, a4
                  srai         s6, a3, 22
                  sltu         t3, zero, a3
                  bne          tp, t1, 358f
339:              nop
                  and          a5, s11, a5
                  beq          t1, tp, 344f
                  bltu         s9, a5, 346f
                  lui          zero, 678592
344:              xor          zero, s10, t1
                  addi         zero, s5, 1396
346:              auipc        s4, 391827
                  srl          s7, t6, s3
                  add          s10, s5, a7
                  srai         s10, s3, 30
                  sll          s3, s1, sp
                  addi         s4, s7, 989
                  sra          a0, a3, s0
                  slt          t2, s7, t3
                  lui          a1, 574171
                  bge          s10, a6, 360f
                  slli         a4, a4, 30
                  bgeu         t6, ra, 360f
358:              and          t1, s3, a7
                  or           t1, a2, t1
360:              slli         s10, t3, 17
                  and          a7, s8, a3
                  slli         t2, sp, 3
                  xor          a4, a1, t0
                  srl          s9, a1, a2
                  sltu         gp, a2, gp
                  sra          s6, t6, t4
                  blt          a1, s5, 370f
                  sub          a0, t5, s8
                  sub          t0, a2, ra
370:              slli         t2, sp, 6
                  add          s10, s10, s0
                  bltu         s1, a1, 388f
                  sltu         s0, a4, ra
                  slt          tp, s10, t3
                  bgeu         a0, a1, 382f
                  or           s8, s11, s10
                  add          a0, t3, s2
                  slt          gp, a0, a1
                  bne          a7, s5, 385f
                  or           t1, s1, s3
                  nop
382:              slt          s2, t0, a1
                  ori          s1, zero, -753
                  sub          t3, a7, t4
main_7:           jal          t1, 10f
0:                jal          t1, 11f
1:                jal          a6, 9f
2:                jal          a6, 4f
3:                jal          t1, 6f
4:                jal          t1, 5f
5:                jal          a6, 15f
6:                jal          tp, 7f
7:                jal          t1, 22f
8:                jal          s6, 14f
9:                jal          tp, 3b
10:               jal          t1, 18f
11:               jal          tp, 17f
12:               jal          t1, 1b
13:               jal          t1, 12b
14:               jal          s10, 2b
15:               jal          t1, 21f
16:               jal          s0, 19f
17:               jal          t1, 20f
18:               jal          t0, 16b
19:               jal          a7, 0b
20:               jal          t4, 8b
21:               jal          t1, 13b
22:               slt          s3, s8, zero
385:              srai         a6, zero, 25
                  bgeu         a3, s11, 389f
                  sll          zero, s4, s11
388:              srai         s5, t5, 22
389:              nop
                  auipc        t1, 990347
                  lui          a2, 940878
                  slli         a5, t5, 15
                  sltiu        a6, s7, -1289
                  addi         a4, s10, -772
                  or           s2, s5, s2
                  beq          s0, a7, 414f
                  slt          s4, a2, ra
                  ori          tp, sp, -907
                  xori         t1, tp, 593
                  lui          s3, 43543
                  beq          a2, t1, 408f
                  addi         a2, sp, -43
                  or           a1, t5, t2
                  slti         s6, s10, 1217
                  srli         s4, s1, 13
                  xori         s9, a4, 73
                  nop
408:              sltiu        s8, sp, 1567
                  lui          a4, 564603
                  srli         s4, gp, 8
                  sll          s9, t3, s5
                  sltu         s7, t6, a5
                  bltu         a2, a4, 414f
414:              srli         t3, t2, 21
                  srl          t5, sp, s1
                  sra          s5, s1, a3
                  andi         t6, sp, 840
                  bne          t5, s4, 421f
                  bge          t0, s9, 434f
                  srai         a0, s1, 20
421:              slti         s1, a1, 1369
                  sub          t1, zero, tp
                  sra          s3, a0, a2
                  bne          a4, s4, 442f
                  srai         a1, s1, 19
                  sra          s1, a0, s6
                  xori         gp, a3, -58
                  sll          s9, a5, gp
                  bltu         s9, s10, 443f
                  slli         t2, a3, 10
                  bgeu         a4, a6, 443f
                  srl          s7, a7, s0
                  srli         gp, s11, 18
434:              bne          a4, s8, 436f
                  add          t5, s5, a6
436:              add          gp, s3, a2
                  sll          a6, s0, t1
                  or           a4, tp, t6
                  xor          s6, tp, s8
                  lui          a1, 979074
                  blt          t0, a0, 459f
442:              add          s1, s2, s8
443:              addi         s0, a4, 1490
                  bgeu         a0, gp, 456f
                  srl          a5, a0, t4
                  slli         a0, a0, 1
                  blt          s0, s3, 450f
                  andi         a2, t6, 1001
                  sltiu        s8, s0, -1192
450:              add          s7, a7, a7
                  andi         gp, t6, 1509
                  srl          s9, t1, a6
                  srl          a4, s11, sp
                  beq          t2, ra, 464f
                  slt          t6, s11, s2
456:              auipc        t0, 620453
                  add          a1, t0, a2
                  bgeu         a5, s2, 463f
459:              srai         s1, s3, 30
                  beq          s1, sp, 466f
                  sub          a6, s11, s8
                  srli         a3, s2, 2
463:              blt          a6, s9, 477f
464:              xor          t4, tp, t2
                  sub          t4, s8, s10
466:              xor          a4, gp, a0
                  bge          t6, tp, 475f
                  sltu         a2, s8, s10
                  add          s1, a4, t1
                  auipc        s10, 555493
                  srl          s6, t4, sp
                  sltiu        gp, ra, -1302
                  or           tp, gp, s10
                  slti         s5, t6, 1218
475:              or           s9, s11, a2
                  addi         t0, t5, -925
477:              bgeu         a3, t0, 480f
                  srli         s7, t3, 17
                  nop
480:              bge          a5, s6, 490f
                  xori         a0, s8, 224
                  bgeu         sp, a1, 500f
                  xori         s9, tp, -362
                  bgeu         a6, ra, 500f
                  sltu         a5, s10, sp
                  bge          a5, a2, 498f
                  bge          zero, sp, 490f
                  srli         t5, a3, 25
                  lui          a4, 597913
490:              sll          t1, a6, a5
                  beq          t0, s0, 505f
                  bltu         t1, s0, 500f
                  srli         t6, s10, 3
                  sll          s7, t1, a2
                  sltiu        t5, s4, -345
                  sub          s6, s4, s8
                  sub          s9, t2, t6
498:              andi         s10, t2, -1434
                  bge          t2, a7, 516f
500:              slt          a6, a2, s5
                  bgeu         a1, t1, 520f
                  bne          tp, a3, 518f
                  slt          a5, gp, t2
                  add          a0, gp, s6
505:              and          t1, a3, s0
                  sltu         gp, s3, t2
                  sltiu        s10, a4, -1483
                  bne          s3, a4, 517f
                  add          s5, s10, s2
                  slli         tp, a5, 15
                  nop
                  andi         s3, s6, 1476
                  bne          s0, ra, 533f
                  nop
                  slli         a3, s1, 24
516:              andi         a5, zero, 1845
517:              add          a2, a0, t1
518:              blt          tp, t5, 522f
                  bgeu         s3, gp, 527f
520:              bne          s10, a6, 523f
                  xori         gp, s3, -918
522:              srl          t2, a1, a5
523:              bltu         t5, t2, 537f
                  bne          ra, s9, 542f
                  auipc        s10, 368352
                  slti         s10, tp, 250
527:              xor          s4, a3, a3
                  addi         t3, s6, 838
                  srl          a5, s10, s8
                  xor          tp, a3, s1
                  add          t5, t3, t2
                  slti         tp, s3, -2022
533:              or           a6, sp, gp
                  addi         s9, t1, 1592
                  auipc        s8, 733676
                  srl          t5, s2, ra
537:              andi         s9, sp, -951
                  addi         s3, t0, 743
                  sltu         a3, s7, t2
                  srl          zero, t0, a1
                  slt          t0, s6, a7
542:              xori         s1, s2, 1735
                  sra          s10, s7, t5
                  bge          gp, a2, 546f
                  bltu         s8, sp, 546f
546:              sltu         s5, a5, t1
                  sltu         s7, a4, a6
                  beq          s11, s6, 566f
                  bgeu         s10, s9, 569f
                  slli         s5, zero, 5
                  slti         s7, t0, 2006
                  slt          a1, a2, s1
                  srl          s1, s7, gp
                  andi         t2, t3, -1170
                  bgeu         a5, s1, 565f
                  sra          gp, sp, a5
                  slli         a5, ra, 3
                  sra          t4, t0, t2
                  sub          s0, gp, t0
                  bne          gp, t1, 566f
                  xor          zero, t0, a1
                  slli         s10, t5, 29
                  srl          s1, t0, a0
main_16:          jal          t1, 3f
0:                jal          tp, 1f
1:                jal          t1, 6f
2:                jal          a3, 15f
3:                jal          a1, 14f
4:                jal          a1, 10f
5:                jal          s3, 0b
6:                jal          s6, 16f
7:                jal          a7, 8f
8:                jal          a6, 2b
9:                jal          t1, 17f
10:               jal          t1, 11f
11:               jal          gp, 13f
12:               jal          t1, 5b
13:               jal          t1, 12b
14:               jal          s5, 9b
15:               jal          t1, 4b
16:               jal          t1, 18f
17:               jal          t1, 7b
18:               slt          a4, a3, s0
                  sltu         s8, s1, a3
565:              slt          s8, s0, a6
566:              add          s5, a3, s10
                  sltu         gp, t5, t5
                  srli         tp, tp, 27
569:              ori          s4, t6, 1256
                  bge          t3, zero, 579f
                  blt          a0, s4, 576f
                  auipc        t2, 1040413
                  blt          s1, a5, 583f
                  add          t1, s9, t6
                  bne          zero, sp, 587f
576:              ori          a0, a3, -1776
                  bgeu         s7, sp, 592f
                  bne          sp, s7, 582f
579:              lui          s8, 1016395
                  auipc        t4, 910091
                  auipc        t3, 92409
582:              sra          s8, ra, gp
583:              bgeu         s7, s0, 599f
                  or           s7, s5, a2
                  xor          s4, s4, a0
                  xor          t6, a6, s3
587:              srli         zero, sp, 9
                  slli         s1, s10, 4
                  sltiu        zero, t4, -661
                  sltiu        s0, s5, 1582
                  blt          a5, gp, 607f
592:              sltiu        s5, s5, 993
                  bge          a4, t0, 607f
                  or           a5, t2, a6
                  addi         t4, s6, -1941
                  sltiu        tp, ra, -1636
                  add          a3, gp, a2
                  ori          s0, t1, 534
599:              srai         s0, a0, 4
                  slti         a4, s5, 904
main_0:           jal          t1, 1f
0:                jal          s8, 10f
1:                jal          a2, 8f
2:                jal          t1, 5f
3:                jal          a2, 0b
4:                jal          s6, 2b
5:                jal          a3, 9f
6:                jal          t1, 3b
7:                jal          t0, 6b
8:                jal          t1, 4b
9:                jal          gp, 7b
10:               srl          a2, a7, s10
                  bgeu         t6, t4, 615f
                  sra          a6, a4, t1
                  slt          zero, a1, a2
                  sltu         gp, a1, t2
                  sra          zero, a0, t4
                  srai         a6, a0, 23
607:              lui          a6, 237600
                  andi         s3, tp, -1715
                  srli         s6, s11, 0
                  auipc        s10, 1001794
                  bne          s5, t2, 614f
                  sltu         s7, t6, a1
                  bgeu         s9, s7, 632f
614:              slt          t5, s1, s2
615:              bltu         gp, t3, 627f
                  bge          s11, a5, 623f
                  slt          a4, s7, t4
                  slti         s5, gp, -1153
                  sll          a7, s10, s4
                  andi         zero, s5, 1006
                  srl          t2, s0, s1
                  srai         s7, s6, 7
623:              slti         s2, s4, 12
                  beq          tp, s2, 636f
                  or           t6, a2, s2
                  sra          t1, s3, a2
627:              srai         s6, a5, 17
                  slti         t3, t4, -421
                  or           s0, s2, s9
                  blt          a2, a5, 638f
                  addi         a6, a5, -1744
632:              sll          zero, zero, a5
                  bge          s5, a5, 636f
                  xor          a7, zero, a7
                  bge          s6, tp, 653f
636:              nop
                  bltu         s2, ra, 654f
638:              sra          a2, tp, sp
                  andi         s10, s4, 632
                  sra          s6, a2, a1
                  sltiu        t3, s0, -86
                  slt          t4, s11, s3
                  addi         a3, t4, -251
                  bne          ra, zero, 647f
                  or           s8, s1, tp
                  sll          a4, s3, a3
647:              ori          s6, a1, -653
                  add          t6, a6, s1
                  addi         a0, a4, -153
                  blt          s7, s8, 667f
                  ori          zero, s9, -578
                  and          s7, a2, s9
653:              slli         t4, s1, 14
654:              ori          t4, a3, -1575
                  bltu         t0, sp, 667f
                  srl          a2, s11, t3
                  xor          s8, s8, a3
                  auipc        t6, 205513
                  bgeu         a0, t6, 662f
                  bgeu         a7, s1, 664f
                  or           s1, s2, gp
662:              sltu         a4, a0, a0
                  sra          a5, t3, s10
664:              bge          a7, s9, 680f
                  sub          s7, t6, s7
                  auipc        a1, 920797
667:              nop
                  bgeu         a7, s3, 686f
                  bge          s8, t5, 672f
                  and          a5, s7, t1
                  srai         gp, s5, 9
672:              ori          a3, s0, 315
                  auipc        a6, 288739
                  xor          s0, s9, zero
                  add          a5, a1, a7
                  blt          a4, tp, 690f
                  andi         a7, t0, -1369
                  ori          s5, ra, -1337
                  lui          gp, 286603
680:              srl          a2, gp, s9
                  nop
                  sltu         t2, s3, sp
                  ori          zero, s10, 1800
                  bgeu         a7, s1, 692f
                  srli         t6, s9, 4
686:              auipc        t3, 65582
                  srl          a2, a2, s10
                  slt          s9, s0, a1
                  beq          gp, s8, 692f
690:              srli         a5, a4, 9
                  lui          s1, 428275
692:              srl          s6, zero, t5
                  sra          s6, s3, a5
                  auipc        a0, 348782
                  or           a3, s3, t3
                  slti         s5, a2, -904
                  xor          a1, a1, t5
                  and          s4, s1, s4
                  lui          a7, 1014735
                  nop
                  lui          s0, 805606
                  sll          t0, t2, s0
                  slti         t5, s5, 2022
                  or           a1, a7, s1
                  andi         a4, a1, 907
                  add          s8, gp, s5
                  slti         s10, s7, 1329
                  bge          tp, s3, 726f
                  sra          a4, a3, gp
                  slli         a6, a1, 15
                  bge          a5, a3, 721f
                  bgeu         t1, s0, 732f
                  sub          a7, t4, t2
                  srli         a1, t4, 20
                  srl          s6, s3, a5
                  sltiu        s1, a3, 386
                  xori         s5, a7, 938
                  andi         s2, s9, -850
                  srli         gp, s8, 15
                  sra          s10, s3, a1
721:              nop
                  blt          t4, gp, 730f
                  srli         tp, zero, 6
                  sltu         t5, sp, a7
                  lui          s10, 413720
726:              sub          t6, zero, t4
                  srli         tp, s3, 10
                  add          t5, t2, gp
                  bge          a1, gp, 744f
730:              xor          a3, a2, s7
                  sltiu        a6, a6, 373
732:              srai         s0, s4, 17
                  srl          s6, s7, s3
                  andi         t6, tp, -557
                  sub          tp, s6, a2
                  bgeu         tp, a5, 743f
                  srl          s9, a1, s5
                  srl          a4, s0, gp
                  slti         t4, a5, 1606
                  or           a1, a6, s6
                  blt          s4, zero, 755f
                  lui          s4, 38487
743:              add          s9, t0, s5
744:              blt          s5, s1, 747f
                  beq          s11, t6, 763f
                  srai         t2, a5, 9
747:              srli         zero, t6, 14
                  andi         t6, s0, 459
                  ori          s7, s4, 994
                  xor          a7, s6, ra
                  addi         s2, t2, -1592
                  sltiu        s5, s2, -1006
                  slli         t3, s1, 20
                  addi         a0, a5, 852
755:              slt          t0, zero, t2
                  bge          s7, s7, 757f
757:              addi         t3, a1, -970
                  lui          s1, 928820
                  sub          t6, s6, t4
                  bne          s1, ra, 765f
                  sltiu        s1, a2, 1064
                  xor          a5, a5, a3
763:              auipc        s10, 523880
                  srai         tp, tp, 17
765:              beq          ra, t0, 775f
                  blt          s3, s4, 780f
                  beq          t0, t0, 779f
                  auipc        s2, 687607
                  nop
                  blt          a1, s2, 776f
                  bgeu         a7, sp, 783f
                  sll          s8, s11, a3
                  sll          s2, t5, t1
                  slt          a6, a6, sp
775:              sltiu        t2, t2, 403
776:              or           s10, a0, t0
                  or           s7, a2, a7
                  sra          tp, s5, s7
779:              bge          s6, a1, 798f
780:              ori          s3, a7, -1719
                  slt          s8, a0, s11
                  bne          s7, t0, 791f
783:              bltu         s0, s1, 785f
                  slti         t3, t5, -240
785:              xori         t3, s5, 630
                  slt          s4, a2, s10
                  sra          s1, t6, s1
                  blt          gp, a0, 804f
                  sltiu        t0, gp, 26
                  lui          a4, 424954
791:              slti         t1, t3, 1837
                  addi         s2, s4, -214
                  andi         t6, tp, -895
                  slt          t1, t0, t2
                  lui          tp, 915461
main_23:          jal          t1, 7f
0:                jal          s4, 8f
1:                jal          t1, 15f
2:                jal          t1, 16f
3:                jal          t1, 5f
4:                jal          t1, 13f
5:                jal          t1, 14f
6:                jal          t1, 9f
7:                jal          t1, 18f
8:                jal          tp, 1b
9:                jal          t1, 3b
10:               jal          t1, 4b
11:               jal          a6, 6b
12:               jal          t1, 2b
13:               jal          t1, 11b
14:               jal          t4, 17f
15:               jal          t2, 19f
16:               jal          a6, 10b
17:               jal          tp, 0b
18:               jal          s7, 12b
19:               nop
                  bltu         s2, gp, 808f
                  lui          t6, 996758
798:              blt          t4, s9, 816f
                  xori         s8, s10, 779
                  and          s5, a7, gp
                  auipc        t6, 44436
                  blt          a7, s5, 818f
                  auipc        t6, 583434
804:              or           a7, s0, a0
                  ori          a1, t6, 1754
                  ori          s7, t3, -1835
                  ori          a0, a7, -1602
808:              sll          s0, t3, a4
                  addi         zero, s2, -1167
                  and          a1, t1, t6
                  auipc        s6, 225669
                  xor          t2, sp, sp
                  sra          a3, s7, s11
                  xor          tp, a7, a1
                  bne          s1, s4, 818f
816:              sltiu        a6, s3, 1276
                  sltiu        s8, a4, 830
818:              blt          t3, sp, 821f
                  lui          t5, 81561
                  bne          a4, zero, 828f
821:              xor          a5, a5, t5
                  addi         t1, t1, 1228
                  addi         a6, a5, -438
                  srli         gp, t3, 6
                  addi         a7, s0, -1438
                  ori          a0, s11, -116
                  sltu         t1, sp, s1
828:              and          t2, s7, ra
                  ori          t3, s1, 222
                  sltu         a4, tp, t4
                  xori         zero, a7, 88
                  blt          sp, t6, 833f
833:              xori         s0, s3, -113
                  srl          s1, t0, a5
                  sll          s10, a4, a1
                  nop
                  slli         a6, s0, 0
                  sltu         a4, a7, s3
                  nop
                  sltu         t2, a6, a7
                  sltiu        a2, s5, -690
                  srli         a4, ra, 20
                  add          a1, s11, s8
                  sub          s2, t5, s3
                  bgeu         s5, a1, 849f
                  nop
                  nop
                  sra          t3, s0, s3
849:              xori         t6, s4, 1471
                  lui          t6, 227416
                  bltu         tp, a0, 863f
                  xori         gp, s5, 1516
                  xori         s2, sp, -432
                  slli         a4, s2, 22
                  add          a1, s4, s1
                  auipc        zero, 554575
                  srli         s10, s2, 18
                  sltu         s3, t2, t6
                  beq          s0, s7, 869f
                  sltiu        t2, sp, -1275
                  bgeu         s7, t5, 863f
                  nop
863:              slli         t2, s11, 2
                  sub          tp, s5, ra
                  srai         t5, a1, 18
                  sub          a4, s10, ra
                  srai         t1, s0, 7
                  bgeu         a1, t3, 871f
869:              blt          zero, s4, 888f
                  ori          a3, t0, -675
871:              andi         s1, ra, 564
                  xori         a6, gp, -1252
                  nop
                  beq          s4, s0, 888f
                  andi         a5, t3, -2002
                  or           a1, t2, s5
                  beq          t6, tp, 895f
                  lui          s2, 198730
                  srli         t3, s8, 18
                  sltiu        s5, a0, 1314
                  auipc        s6, 417358
                  addi         a1, sp, 778
                  add          gp, s10, a1
                  bgeu         t2, s7, 894f
                  sltu         s7, t0, a2
                  andi         tp, s4, -981
                  slti         a5, s10, -1177
888:              bne          tp, tp, 905f
                  sltu         s6, a7, s1
                  blt          s6, s3, 905f
                  xor          a0, s3, ra
                  auipc        t1, 541508
                  xori         s1, t3, -746
894:              add          s4, s10, a3
895:              blt          t5, s7, 911f
                  andi         t6, a3, 485
                  slli         s8, a5, 22
                  sub          s6, t6, t3
                  slt          s10, t5, s4
                  beq          t0, t4, 909f
                  xor          a2, t6, t2
                  xori         tp, a1, 621
                  sub          zero, t1, ra
                  xor          s7, a7, t6
905:              xori         s0, tp, 408
                  xori         a0, a1, 357
                  bgeu         s0, s11, 925f
                  auipc        a3, 334721
909:              srli         t1, gp, 12
                  beq          a4, t5, 918f
911:              auipc        t4, 355728
                  sltiu        t0, t2, -1854
                  sub          a5, t3, a4
                  slli         t2, t5, 31
                  srli         t3, s11, 0
                  sra          s10, gp, s2
                  bltu         ra, s5, 937f
918:              blt          sp, a4, 921f
                  lui          s1, 5158
                  bne          a4, t2, 934f
921:              beq          a1, t6, 935f
                  sub          s6, s6, t0
                  add          t3, s10, a5
                  slti         a7, a2, -1510
925:              xor          t1, ra, zero
                  lui          s1, 486604
                  auipc        s2, 44036
                  slti         s2, s6, -1047
                  bge          a7, s10, 941f
                  or           t4, zero, a6
                  sra          a4, ra, a2
                  srai         gp, t6, 2
                  bge          t6, s8, 940f
934:              add          s0, s11, a3
935:              nop
                  add          t2, t1, a7
937:              nop
                  nop
                  sltiu        s4, a7, -267
940:              lui          a1, 613081
941:              auipc        t5, 507413
                  addi         t0, tp, 869
                  beq          a4, zero, 949f
                  and          s9, t1, gp
                  bge          gp, s2, 950f
                  srli         s4, s7, 10
                  lui          t2, 832274
                  lui          s8, 773577
949:              xor          s7, s9, t6
950:              addi         t1, t4, -960
                  xori         a1, s0, 664
                  bne          s11, s2, 970f
                  sll          tp, t5, t1
                  andi         a4, tp, -1542
                  sra          s4, t4, t3
                  sll          gp, zero, s4
                  bne          s7, a5, 977f
                  addi         s1, t1, 485
                  add          a3, t5, a7
                  bne          s7, sp, 977f
                  xori         a4, tp, -546
                  srl          a6, s8, zero
                  sra          a5, t6, a5
                  add          a1, a6, s9
                  auipc        t5, 380662
                  sltiu        t6, s8, -1991
                  bltu         a3, s8, 985f
                  beq          a4, s9, 971f
                  xor          t3, s0, s4
970:              slli         s5, tp, 4
971:              andi         a4, s3, 1621
                  bgeu         ra, s4, 988f
                  sll          t3, zero, s7
                  slti         s3, a4, -1731
                  or           t5, s5, zero
                  ori          gp, s11, 1362
977:              bltu         s5, s8, 980f
                  xori         s3, t1, 1428
                  sll          s0, t5, t4
980:              or           a0, t5, s3
                  slti         gp, s5, 1830
                  addi         s10, a4, 219
                  bne          s3, s6, 986f
                  slli         s3, a1, 23
985:              srl          a4, a7, t5
986:              sll          s0, a4, t1
                  bgeu         tp, a1, 997f
988:              auipc        s1, 655467
                  andi         a0, a3, 513
                  ori          s0, a6, 627
                  blt          t1, s4, 998f
                  lui          t3, 834050
                  slli         t0, t5, 26
                  andi         a6, a7, -1699
                  xori         a5, a5, -1446
                  sltiu        a5, s4, -969
997:              nop
998:              srl          s1, s5, zero
                  srl          t4, s8, a4
                  blt          sp, s3, 1003f
                  beq          s8, tp, 1013f
                  beq          a2, a2, 1017f
1003:             lui          a5, 532660
                  xor          s7, s10, s6
                  srli         a5, s7, 26
                  sltu         s4, sp, t2
                  bne          a6, s3, 1015f
                  xor          t3, s2, t5
                  xor          t2, a3, a6
                  sltiu        t1, t1, 714
                  add          s3, ra, s6
                  blt          s5, t0, 1026f
1013:             bltu         gp, s5, 1018f
                  blt          zero, t6, 1032f
1015:             andi         a2, a7, 1549
                  nop
1017:             blt          s0, a0, 1033f
1018:             srli         s6, t3, 10
                  andi         a1, a7, -1651
                  slt          a6, s10, a2
                  andi         t6, s7, 1574
                  la           tp, sub_1
                  auipc        s2, 865076
                  lui          s10, 940572
                  lui          s1, 59393
                  addi         s3, a7, -887
                  and          s0, t1, s0
                  addi         tp, tp, -646
                  addi         s0, t6, 562
main_j2:          jalr         t1, tp, 646 #jump main -> sub_1
                  slli         a4, s11, 26
                  bge          t3, a5, 1032f
                  and          a2, s6, s9
                  bltu         t5, s9, 1039f
1026:             bge          zero, s6, 1034f
                  srli         s6, s0, 2
                  sra          t2, a2, t1
                  or           t2, a7, gp
                  or           s9, tp, s5
                  xori         t1, t6, 1910
1032:             or           s1, s11, a5
1033:             nop
1034:             and          t0, s6, ra
                  bge          t2, zero, 1054f
                  bge          sp, a5, 1046f
                  sll          a5, a6, s5
                  xor          a6, s8, sp
1039:             bge          s5, a1, 1051f
                  beq          ra, t3, 1046f
                  ori          t6, s8, 1788
                  slti         t1, tp, 581
                  srai         zero, s1, 17
                  xori         zero, s9, 2012
                  bge          a0, t5, 1059f
1046:             srai         s10, t6, 28
                  auipc        a4, 571349
                  xori         a1, t3, -1599
                  auipc        s1, 469862
                  and          a0, ra, a1
1051:             ori          t3, s8, 2040
                  andi         s7, s10, -1757
                  srai         s9, a4, 0
1054:             slti         s4, a0, 1484
                  bge          s5, s0, 1059f
                  slli         s10, gp, 4
                  sltu         tp, ra, s7
                  sra          t1, a1, t6
1059:             addi         zero, s4, -1889
                  lui          s2, 839408
                  sra          a3, a7, s1
                  auipc        s5, 541822
                  nop
                  xori         a4, s7, 1931
                  sll          s5, zero, s7
                  slti         a0, t6, 1154
                  lui          a5, 249437
                  beq          s1, s2, 1069f
1069:             sub          a1, a6, a1
                  beq          s4, t2, 1072f
                  bge          s0, zero, 1083f
1072:             srli         s1, a6, 31
                  slt          t0, zero, t0
                  and          a3, a2, ra
                  xor          zero, t1, s6
                  srai         a5, a5, 3
                  sltu         a7, a6, s4
                  ori          t6, zero, -1712
                  sub          a3, t6, t0
                  slt          s7, s0, s2
                  addi         s10, s4, -1309
                  srai         t0, s1, 21
1083:             blt          t6, s6, 1099f
                  andi         a4, t1, -672
                  sra          zero, a5, s11
                  slti         s10, t4, -1818
                  bltu         s7, s1, 1095f
                  sltu         a2, sp, s7
                  xori         a6, t2, 250
                  and          s7, tp, s10
                  la           s4, sub_1
                  auipc        s8, 238807
                  addi         gp, s4, 1525
                  addi         s4, s4, -374
                  lui          tp, 950501
                  srai         zero, sp, 6
main_j1:          jalr         t1, s4, 375 #jump main -> sub_1
                  slti         s9, t4, 1781
                  xori         a7, sp, -317
                  auipc        a5, 325022
                  sub          s7, ra, t1
                  srli         s2, s8, 13
1095:             blt          a4, a5, 1107f
                  slli         t1, s0, 20
                  andi         a7, t1, -698
                  beq          s2, a1, 1112f
1099:             beq          s5, a2, 1101f
                  slli         s2, s2, 16
1101:             or           a5, t3, tp
                  bne          t3, t4, 1121f
                  auipc        gp, 328442
                  or           s1, a3, a3
                  xor          zero, s0, t3
                  add          t2, s2, gp
1107:             andi         s9, s2, -319
                  bge          a5, s4, 1115f
                  ori          a1, s9, -1715
                  sll          s9, s8, ra
                  beq          s11, a6, 1114f
1112:             add          a5, s3, s2
                  sltu         s10, s6, a3
1114:             addi         t1, zero, 1441
1115:             sra          t2, a0, t4
                  slt          a4, s0, t4
                  bgeu         gp, a4, 1131f
                  xor          tp, a3, s0
                  bge          a3, t5, 1131f
                  andi         a1, gp, 1518
1121:             bgeu         s0, ra, 1139f
                  blt          t2, a7, 1131f
                  andi         t6, s11, 1136
                  sltu         s7, a2, a4
                  addi         t2, s1, -1380
                  addi         s10, t6, -1282
                  addi         s9, s4, -1229
                  sltiu        t3, s7, 176
                  auipc        gp, 50095
                  bgeu         a1, gp, 1142f
1131:             and          t0, s3, zero
                  slti         a5, a2, -1565
                  andi         s2, t5, -1399
                  bltu         a6, s1, 1140f
                  bne          sp, a0, 1149f
                  srai         t3, t2, 9
                  bge          t6, s6, 1140f
                  auipc        a5, 618338
1139:             srl          t2, s2, a3
1140:             srli         a1, s1, 28
                  auipc        s3, 748201
1142:             slt          a0, s8, t2
                  xor          tp, t0, tp
                  bgeu         s2, a5, 1162f
                  bgeu         a6, s3, 1146f
1146:             ori          t1, a7, 199
                  auipc        a7, 98434
                  slti         a4, s0, 1639
1149:             slti         s8, s7, 495
                  sltu         a7, s11, t0
                  bltu         gp, s5, 1167f
                  xor          t2, a7, t6
                  bne          s5, s10, 1163f
                  sltu         s10, t2, s7
                  and          a7, a4, s11
                  auipc        s3, 9249
                  slti         a1, a0, 593
                  beq          t5, t6, 1168f
                  lui          a4, 765126
                  sra          s8, t2, t4
                  bgeu         s2, t3, 1164f
1162:             addi         a2, zero, 1459
1163:             sltiu        s8, a3, -267
1164:             bltu         s9, s0, 1181f
                  sub          a0, zero, s7
                  slti         t2, t0, -12
1167:             bgeu         a7, s6, 1182f
1168:             addi         s4, s6, -256
                  and          a5, zero, s2
                  addi         s2, t5, 633
                  blt          a1, s5, 1175f
                  bge          a3, t4, 1180f
                  sll          a0, a2, s8
                  sra          s4, s6, ra
1175:             srli         s6, s7, 12
                  ori          tp, s1, -1861
                  lui          gp, 881105
                  nop
                  srli         s3, t3, 6
1180:             bltu         t1, s9, 1200f
1181:             lui          s8, 634659
1182:             bge          s9, zero, 1187f
                  srai         s6, s8, 4
                  andi         t3, a6, -1106
                  srai         a5, gp, 1
                  or           a3, s7, s4
1187:             ori          a7, t4, -1558
                  bne          a1, a6, 1191f
                  xor          s5, s3, s8
                  ori          s10, a4, 846
1191:             sltu         a5, t2, s7
                  nop
                  or           a1, s10, s3
                  srl          a1, s8, a4
                  or           s7, s4, a1
                  srai         a3, s1, 19
                  blt          s7, a0, 1215f
                  ori          t0, a5, -1381
                  bge          s9, t2, 1200f
1200:             slli         s2, t1, 8
                  beq          s9, s10, 1210f
                  nop
                  xor          s7, a3, s5
                  or           t5, t3, ra
                  slti         tp, s6, -1663
                  beq          tp, s0, 1209f
                  auipc        t0, 231372
                  sll          s0, s9, s4
1209:             nop
1210:             andi         gp, zero, 1864
                  addi         t2, a6, -182
                  bne          t0, a2, 1229f
                  srai         a2, ra, 12
                  ori          s7, a1, -1071
1215:             blt          s3, tp, 1222f
                  beq          gp, a1, 1224f
                  sub          a0, s9, a0
                  slti         a7, s0, -2030
                  or           a7, s0, tp
                  xori         s3, t0, 1092
                  bltu         a1, t6, 1236f
1222:             nop
                  addi         s7, tp, 669
1224:             ori          a7, t1, 1700
                  or           a6, s11, sp
                  and          zero, t6, ra
                  blt          s7, sp, 1243f
                  srli         t3, s4, 2
1229:             bltu         a4, s10, 1243f
                  bgeu         sp, zero, 1235f
                  ori          t0, gp, -1654
                  sub          a2, a2, t5
                  sltu         s8, t4, s11
                  addi         a5, a7, -289
1235:             and          gp, a5, zero
1236:             slti         s3, t6, -1372
                  andi         a5, t0, -59
                  sra          s1, s5, s11
                  slti         gp, s10, -1989
                  add          zero, t6, s1
                  slti         gp, a1, -1492
                  add          a0, a2, tp
1243:             andi         a5, s1, -1942
                  sltiu        s2, s0, -12
                  bgeu         t3, a2, 1261f
                  and          a2, t3, zero
                  slt          s9, s3, s2
                  bne          a2, a0, 1251f
                  srli         s2, t1, 8
                  bgeu         t1, tp, 1256f
1251:             and          t2, a2, gp
                  lui          a2, 657071
                  or           a5, a1, a3
                  sra          t6, t3, a4
                  slli         t2, a0, 27
1256:             bge          s2, a3, 1266f
                  sltiu        s2, a5, 1350
                  sll          gp, t6, sp
                  bgeu         a6, t2, 1279f
                  bgeu         s0, zero, 1278f
1261:             auipc        t3, 1031092
                  xor          t5, a0, sp
                  sltu         s1, s1, zero
                  sll          s8, a2, s8
                  bltu         a6, s7, 1279f
1266:             slli         s7, a2, 4
                  bgeu         t2, s7, 1279f
                  bge          s2, t0, 1271f
                  slt          a4, sp, ra
                  andi         t1, s1, -780
1271:             addi         a5, s9, 1843
                  lui          t4, 489964
                  add          s6, tp, a5
                  sub          a4, zero, s9
                  slti         a4, a1, 1145
                  slli         t2, a0, 29
                  xori         s5, sp, -1877
1278:             sltiu        s1, s9, 1810
1279:             sltiu        t4, a4, 1936
                  add          s7, gp, s4
                  srli         a3, s2, 12
                  xori         s2, s5, -1693
                  sub          zero, t4, s7
                  andi         t5, s0, 491
                  or           s10, s6, a1
                  lui          t4, 486410
                  sll          t6, t1, s8
                  slt          s7, t2, s2
                  auipc        a4, 584052
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            andi         s4, s8, -1666
                  ori          a5, s1, -111
                  and          s4, a6, a7
                  xor          s10, s3, a2
                  addi         sp, sp, -20
                  add          s3, t4, a7
                  nop
                  ori          t0, a3, 77
                  sw           t1, 4(sp)
                  xor          a5, s9, a6
                  la           gp, sub_2
                  sltiu        t1, s10, -1741
                  nop
                  sra          s2, gp, t6
                  slti         a0, s6, 1882
                  slti         zero, a5, 774
                  srl          t6, s3, a1
                  addi         gp, gp, 328
                  ori          t4, s1, 1768
                  srli         s1, s7, 4
                  srai         s0, s1, 31
                  sra          a3, gp, s4
sub_1_j3:         jalr         t1, gp, -327 #jump sub_1 -> sub_2
sub_1_23:         jal          t1, 18f
0:                jal          t0, 15f
1:                jal          t1, 11f
2:                jal          tp, 3f
3:                jal          a5, 22f
4:                jal          t1, 14f
5:                jal          a0, 21f
6:                jal          t1, 4b
7:                jal          t1, 5b
8:                jal          t1, 19f
9:                jal          a5, 6b
10:               jal          s4, 0b
11:               jal          t1, 12f
12:               jal          t1, 20f
13:               jal          t1, 8b
14:               jal          t0, 13b
15:               jal          t1, 9b
16:               jal          t0, 17f
17:               jal          tp, 2b
18:               jal          t1, 7b
19:               jal          t0, 23f
20:               jal          t1, 16b
21:               jal          t1, 1b
22:               jal          t1, 10b
23:               and          s2, t2, a6
sub_1_17:         jal          t1, 10f
0:                jal          a4, 6f
1:                jal          a0, 4f
2:                jal          t1, 14f
3:                jal          s10, 1b
4:                jal          a1, 11f
5:                jal          a5, 7f
6:                jal          t1, 9f
7:                jal          t4, 13f
8:                jal          t1, 12f
9:                jal          t1, 5b
10:               jal          t1, 8b
11:               jal          t1, 2b
12:               jal          s9, 0b
13:               jal          gp, 3b
14:               and          a5, ra, t1
sub_1_7:          jal          t1, 14f
0:                jal          t1, 21f
1:                jal          a6, 7f
2:                jal          t1, 17f
3:                jal          s2, 19f
4:                jal          gp, 22f
5:                jal          t0, 23f
6:                jal          a5, 1b
7:                jal          t1, 5b
8:                jal          t1, 11f
9:                jal          t1, 15f
10:               jal          gp, 18f
11:               jal          t1, 13f
12:               jal          a6, 16f
13:               jal          gp, 4b
14:               jal          tp, 12b
15:               jal          s5, 3b
16:               jal          a2, 8b
17:               jal          t1, 0b
18:               jal          t1, 6b
19:               jal          t1, 2b
20:               jal          t1, 10b
21:               jal          gp, 20b
22:               jal          a5, 9b
23:               slti         s0, a3, -673
sub_1_15:         jal          t1, 4f
0:                jal          tp, 7f
1:                jal          t1, 2f
2:                jal          t6, 15f
3:                jal          t1, 14f
4:                jal          t0, 11f
5:                jal          t1, 8f
6:                jal          a4, 1b
7:                jal          t1, 5b
8:                jal          t1, 12f
9:                jal          t1, 0b
10:               jal          t0, 13f
11:               jal          t1, 9b
12:               jal          gp, 3b
13:               jal          t1, 6b
14:               jal          t1, 10b
15:               xor          t1, s5, gp
sub_1_12:         jal          t1, 20f
0:                jal          s0, 25f
1:                jal          t1, 22f
2:                jal          s10, 0b
3:                jal          t2, 24f
4:                jal          t1, 19f
5:                jal          t1, 2b
6:                jal          a1, 27f
7:                jal          t4, 3b
8:                jal          s8, 12f
9:                jal          gp, 7b
10:               jal          t1, 13f
11:               jal          s7, 23f
12:               jal          a4, 26f
13:               jal          a5, 17f
14:               jal          gp, 21f
15:               jal          t1, 28f
16:               jal          t1, 1b
17:               jal          t1, 14b
18:               jal          t1, 15b
19:               jal          gp, 8b
20:               jal          t1, 6b
21:               jal          s9, 4b
22:               jal          s3, 10b
23:               jal          t1, 16b
24:               jal          s0, 18b
25:               jal          gp, 9b
26:               jal          t0, 5b
27:               jal          s8, 11b
28:               addi         t6, t1, 1325
sub_1_6:          jal          t1, 1f
0:                jal          a4, 5f
1:                jal          t1, 16f
2:                jal          t1, 3f
3:                jal          s5, 4f
4:                jal          t1, 9f
5:                jal          t1, 15f
6:                jal          t1, 8f
7:                jal          t1, 18f
8:                jal          a6, 13f
9:                jal          t1, 0b
10:               jal          t1, 11f
11:               jal          t1, 7b
12:               jal          a7, 6b
13:               jal          t1, 10b
14:               jal          tp, 2b
15:               jal          t1, 17f
16:               jal          t1, 14b
17:               jal          gp, 12b
18:               sltu         t5, s1, t6
sub_1_0:          jal          t1, 10f
0:                jal          s1, 12f
1:                jal          a6, 4f
2:                jal          a4, 13f
3:                jal          s1, 0b
4:                jal          s9, 11f
5:                jal          t1, 20f
6:                jal          s8, 2b
7:                jal          t1, 9f
8:                jal          t0, 14f
9:                jal          a5, 15f
10:               jal          t1, 8b
11:               jal          t1, 22f
12:               jal          t0, 24f
13:               jal          t1, 1b
14:               jal          t5, 6b
15:               jal          t1, 21f
16:               jal          t1, 3b
17:               jal          s5, 18f
18:               jal          t1, 7b
19:               jal          t1, 25f
20:               jal          t1, 17b
21:               jal          s8, 23f
22:               jal          t1, 5b
23:               jal          t1, 16b
24:               jal          t1, 19b
25:               slti         s0, s6, 261
sub_1_4:          jal          t1, 3f
0:                jal          t1, 4f
1:                jal          s1, 5f
2:                jal          a3, 7f
3:                jal          t1, 9f
4:                jal          t1, 11f
5:                jal          s1, 10f
6:                jal          a7, 0b
7:                jal          s0, 1b
8:                jal          t4, 2b
9:                jal          gp, 8b
10:               jal          s7, 6b
11:               slt          tp, s7, t6
sub_1_2:          jal          t1, 7f
0:                jal          tp, 5f
1:                jal          t1, 8f
2:                jal          t1, 6f
3:                jal          t1, 1b
4:                jal          t1, 2b
5:                jal          a0, 9f
6:                jal          t4, 3b
7:                jal          t4, 4b
8:                jal          t0, 0b
9:                jal          s5, 10f
10:               xor          a7, t1, s1
sub_1_3:          jal          t1, 9f
0:                jal          t1, 16f
1:                jal          t4, 13f
2:                jal          s5, 20f
3:                jal          t1, 15f
4:                jal          tp, 18f
5:                jal          s7, 19f
6:                jal          t1, 2b
7:                jal          s10, 8f
8:                jal          t1, 3b
9:                jal          t1, 7b
10:               jal          a4, 1b
11:               jal          gp, 4b
12:               jal          t1, 5b
13:               jal          t1, 0b
14:               jal          t1, 10b
15:               jal          t1, 17f
16:               jal          t0, 6b
17:               jal          t0, 11b
18:               jal          a2, 12b
19:               jal          t0, 14b
20:               ori          s6, t2, 104
sub_1_18:         jal          t1, 4f
0:                jal          t6, 3f
1:                jal          gp, 2f
2:                jal          t1, 10f
3:                jal          a7, 6f
4:                jal          t1, 7f
5:                jal          a2, 1b
6:                jal          t1, 9f
7:                jal          t1, 0b
8:                jal          t1, 5b
9:                jal          a7, 8b
10:               add          s1, a5, s1
sub_1_19:         jal          t1, 10f
0:                jal          t1, 11f
1:                jal          t1, 0b
2:                jal          s1, 3f
3:                jal          a7, 9f
4:                jal          t1, 2b
5:                jal          t1, 12f
6:                jal          tp, 7f
7:                jal          t0, 8f
8:                jal          t6, 4b
9:                jal          t1, 1b
10:               jal          t1, 6b
11:               jal          tp, 5b
12:               or           t3, zero, s1
sub_1_10:         jal          t1, 1f
0:                jal          gp, 3f
1:                jal          t1, 23f
2:                jal          t1, 19f
3:                jal          t1, 5f
4:                jal          t1, 9f
5:                jal          a7, 14f
6:                jal          t0, 11f
7:                jal          t1, 17f
8:                jal          s2, 2b
9:                jal          s5, 7b
10:               jal          s1, 16f
11:               jal          t0, 4b
12:               jal          tp, 21f
13:               jal          t1, 20f
14:               jal          t1, 10b
15:               jal          tp, 12b
16:               jal          t2, 18f
17:               jal          a4, 15b
18:               jal          s1, 22f
19:               jal          t1, 24f
20:               jal          t1, 8b
21:               jal          t1, 13b
22:               jal          t1, 6b
23:               jal          t1, 0b
24:               andi         t4, s3, -1697
sub_1_5:          jal          t1, 22f
0:                jal          gp, 18f
1:                jal          t1, 19f
2:                jal          t0, 6f
3:                jal          t1, 11f
4:                jal          t1, 8f
5:                jal          tp, 10f
6:                jal          s5, 9f
7:                jal          t1, 1b
8:                jal          t0, 3b
9:                jal          s8, 13f
10:               jal          t1, 21f
11:               jal          t1, 5b
12:               jal          gp, 2b
13:               jal          t6, 20f
14:               jal          a4, 4b
15:               jal          t1, 12b
16:               jal          s7, 17f
17:               jal          t1, 7b
18:               jal          t1, 16b
19:               jal          t6, 15b
20:               jal          a1, 23f
21:               jal          t3, 0b
22:               jal          t3, 14b
23:               sll          s0, t6, a5
sub_1_8:          jal          t1, 17f
0:                jal          t1, 6f
1:                jal          s9, 14f
2:                jal          s4, 15f
3:                jal          a4, 2b
4:                jal          tp, 5f
5:                jal          t1, 11f
6:                jal          gp, 3b
7:                jal          s7, 22f
8:                jal          t3, 19f
9:                jal          t0, 18f
10:               jal          t1, 21f
11:               jal          s5, 13f
12:               jal          a4, 20f
13:               jal          t6, 23f
14:               jal          s1, 9b
15:               jal          gp, 12b
16:               jal          s3, 0b
17:               jal          s2, 16b
18:               jal          t1, 8b
19:               jal          t0, 4b
20:               jal          t1, 10b
21:               jal          t2, 7b
22:               jal          s1, 1b
23:               slli         t4, s11, 6
sub_1_20:         jal          t1, 7f
0:                jal          t1, 12f
1:                jal          t1, 3f
2:                jal          s2, 10f
3:                jal          t1, 9f
4:                jal          a4, 13f
5:                jal          t0, 8f
6:                jal          t1, 1b
7:                jal          t1, 0b
8:                jal          t0, 6b
9:                jal          t0, 2b
10:               jal          t1, 4b
11:               jal          gp, 5b
12:               jal          s7, 11b
13:               addi         a0, t0, 1824
sub_1_1:          jal          t1, 19f
0:                jal          s9, 14f
1:                jal          s6, 20f
2:                jal          gp, 5f
3:                jal          gp, 13f
4:                jal          t1, 16f
5:                jal          a2, 11f
6:                jal          a7, 18f
7:                jal          t1, 3b
8:                jal          a5, 15f
9:                jal          s6, 8b
10:               jal          t0, 1b
11:               jal          gp, 7b
12:               jal          s0, 9b
13:               jal          t1, 10b
14:               jal          t1, 4b
15:               jal          tp, 17f
16:               jal          s0, 12b
17:               jal          t1, 6b
18:               jal          t0, 2b
19:               jal          a4, 0b
20:               srli         s9, a5, 23
sub_1_24:         jal          t1, 0f
0:                jal          s0, 4f
1:                jal          gp, 5f
2:                jal          t1, 10f
3:                jal          a3, 8f
4:                jal          t1, 9f
5:                jal          t1, 3b
6:                jal          t1, 2b
7:                jal          t1, 6b
8:                jal          tp, 7b
9:                jal          t1, 1b
10:               sltiu        s6, s2, 1473
sub_1_22:         jal          t1, 5f
0:                jal          t0, 4f
1:                jal          gp, 15f
2:                jal          t1, 3f
3:                jal          s4, 19f
4:                jal          a6, 8f
5:                jal          t1, 18f
6:                jal          tp, 17f
7:                jal          t1, 1b
8:                jal          t0, 7b
9:                jal          s5, 21f
10:               jal          t1, 11f
11:               jal          a1, 6b
12:               jal          gp, 20f
13:               jal          t1, 14f
14:               jal          t0, 10b
15:               jal          t1, 2b
16:               jal          t1, 12b
17:               jal          a0, 9b
18:               jal          a0, 16b
19:               jal          s2, 13b
20:               jal          t1, 0b
21:               sltiu        s0, s2, 1978
sub_1_21:         jal          t1, 22f
0:                jal          t1, 1f
1:                jal          t1, 8f
2:                jal          t0, 14f
3:                jal          s8, 20f
4:                jal          a5, 7f
5:                jal          gp, 4b
6:                jal          a4, 23f
7:                jal          s8, 2b
8:                jal          s1, 17f
9:                jal          t1, 15f
10:               jal          t1, 11f
11:               jal          t1, 9b
12:               jal          s6, 13f
13:               jal          t1, 3b
14:               jal          t1, 21f
15:               jal          t1, 18f
16:               jal          s7, 12b
17:               jal          t1, 19f
18:               jal          a6, 5b
19:               jal          t1, 6b
20:               jal          t1, 0b
21:               jal          t5, 25f
22:               jal          t1, 16b
23:               jal          t3, 26f
24:               jal          s2, 10b
25:               jal          tp, 27f
26:               jal          t6, 24b
27:               or           a1, t0, sp
sub_1_16:         jal          t1, 9f
0:                jal          t1, 2f
1:                jal          t0, 4f
2:                jal          t1, 14f
3:                jal          t1, 13f
4:                jal          t3, 16f
5:                jal          s3, 11f
6:                jal          t2, 17f
7:                jal          s5, 19f
8:                jal          t1, 6b
9:                jal          tp, 8b
10:               jal          t1, 0b
11:               jal          t1, 18f
12:               jal          t1, 5b
13:               jal          s10, 10b
14:               jal          a7, 15f
15:               jal          t1, 1b
16:               jal          tp, 12b
17:               jal          t1, 3b
18:               jal          t0, 7b
19:               or           t2, t4, s7
sub_1_9:          jal          t1, 2f
0:                jal          tp, 13f
1:                jal          t1, 17f
2:                jal          t1, 4f
3:                jal          t1, 11f
4:                jal          s0, 5f
5:                jal          s6, 14f
6:                jal          s4, 10f
7:                jal          gp, 16f
8:                jal          a0, 7b
9:                jal          s7, 0b
10:               jal          s1, 8b
11:               jal          t1, 15f
12:               jal          t3, 1b
13:               jal          tp, 6b
14:               jal          s1, 9b
15:               jal          t1, 12b
16:               jal          tp, 3b
17:               xor          a3, t6, sp
sub_1_25:         jal          t1, 6f
0:                jal          t0, 1f
1:                jal          t1, 11f
2:                jal          t1, 7f
3:                jal          gp, 9f
4:                jal          t1, 8f
5:                jal          s2, 2b
6:                jal          gp, 5b
7:                jal          tp, 4b
8:                jal          t3, 10f
9:                jal          t1, 15f
10:               jal          t0, 14f
11:               jal          s2, 12f
12:               jal          a0, 13f
13:               jal          t1, 3b
14:               jal          tp, 0b
15:               sub          a3, a6, zero
                  slti         s6, a6, 1417
                  srli         t4, a4, 8
                  sra          s5, a0, s4
                  lui          s7, 393482
                  beq          s4, sp, 5f
5:                bltu         a0, a6, 6f
6:                andi         s4, s4, 326
                  bgeu         a6, t2, 16f
                  and          a1, a7, s5
                  ori          t5, t4, 209
                  lui          t6, 699885
                  andi         t2, s2, -1793
                  srli         s9, a6, 30
                  bgeu         s4, a2, 26f
                  sltiu        a4, s9, -328
                  srli         s2, t0, 28
16:               nop
                  sltu         s5, a7, sp
                  srai         tp, a4, 6
                  nop
                  slli         gp, t5, 10
                  andi         s4, s11, -726
                  add          t3, s1, a4
                  bne          s10, s7, 26f
                  xor          t2, s11, s9
                  sra          s9, a2, s11
26:               sra          t6, s5, t2
                  sll          t2, s8, tp
                  auipc        t0, 577211
                  xori         a2, t3, -484
                  andi         s4, sp, 292
                  sub          a5, tp, t5
                  slli         a5, s10, 1
                  slti         t2, s9, 1029
                  bne          s10, s9, 46f
                  sltiu        t0, t0, -1480
                  or           t3, s2, s4
                  auipc        s7, 994825
                  srl          a2, a4, t2
                  sltiu        s2, a6, -1211
                  add          zero, tp, a5
                  xori         s3, s5, -532
                  xor          a1, a5, s4
                  sltu         s9, t3, s10
                  slli         s6, t2, 27
                  srl          t3, s3, gp
46:               sltiu        a3, s3, 829
                  bge          s5, a2, 57f
                  blt          a7, s3, 53f
                  bne          s2, s6, 50f
50:               slti         t1, s5, 332
                  slt          t2, s5, s5
                  nop
53:               ori          t0, a5, -1334
                  srl          s5, a6, a3
                  addi         t5, gp, -323
                  andi         t4, s3, -1682
57:               slt          zero, s2, s11
                  or           s2, t5, t0
                  srai         t3, a3, 27
                  sltiu        t5, a6, -429
                  bltu         s3, a6, 77f
                  andi         t2, s7, -456
sub_1_13:         jal          t1, 8f
0:                jal          t0, 19f
1:                jal          t5, 13f
2:                jal          a7, 15f
3:                jal          s1, 20f
4:                jal          t1, 10f
5:                jal          t4, 0b
6:                jal          gp, 16f
7:                jal          t1, 11f
8:                jal          t1, 7b
9:                jal          t1, 14f
10:               jal          t0, 5b
11:               jal          tp, 17f
12:               jal          t1, 9b
13:               jal          a7, 12b
14:               jal          t1, 3b
15:               jal          tp, 21f
16:               jal          t6, 2b
17:               jal          t1, 4b
18:               jal          t1, 1b
19:               jal          a3, 18b
20:               jal          t4, 6b
21:               sltiu        a6, ra, -1991
                  or           s5, a1, t3
                  addi         a7, s7, 10
                  sra          t4, s6, t6
                  srl          s8, a7, s3
                  bgeu         zero, s7, 79f
                  add          a7, gp, tp
                  slti         s7, a5, -1425
                  or           tp, s6, s4
                  bltu         a4, tp, 73f
                  srli         zero, s9, 28
73:               sltiu        a1, t5, 494
                  slli         a1, s3, 1
                  bge          a0, s7, 80f
                  blt          t5, s11, 89f
77:               bltu         s2, a6, 88f
                  xor          t4, s2, t3
79:               slt          s1, s10, a0
80:               or           a7, s8, s4
                  or           t5, s11, ra
                  lui          s6, 1035165
                  srai         s7, gp, 7
                  srl          t2, gp, t3
                  nop
                  andi         s5, t3, 2011
                  sll          t1, s9, tp
88:               or           a4, t5, s0
89:               add          t2, t6, t4
                  slti         t2, zero, 654
                  add          tp, s7, s6
                  slt          s9, zero, s5
                  add          s1, ra, s3
                  sll          s9, a1, zero
                  srl          a0, sp, a1
                  andi         a3, s10, -1811
                  bne          t1, t3, 110f
                  sra          a3, s3, t4
                  add          s9, s5, a7
                  and          s3, gp, t6
                  sub          tp, zero, a1
                  add          t3, a3, a0
                  add          s9, a0, t3
                  sltu         s8, s2, s5
                  beq          s8, s5, 112f
                  addi         t4, a5, -310
                  bgeu         s3, a0, 126f
                  add          t6, t1, t5
                  xori         t2, s11, 1483
110:              sub          s10, gp, ra
                  nop
112:              andi         a4, t1, -715
                  sra          gp, s6, s8
                  add          a2, s8, t1
                  auipc        s8, 309314
                  or           gp, s5, a6
                  srl          a0, sp, t2
                  sra          s6, t1, t4
                  and          s5, t3, a3
                  slli         a7, sp, 17
                  srl          s8, s6, a5
                  bge          t0, a6, 138f
                  blt          s1, a3, 141f
                  bne          s8, s2, 128f
                  sltiu        a2, t1, 1768
126:              bltu         s2, s3, 140f
                  andi         t4, ra, 1607
128:              xor          a4, s1, tp
                  sltu         t1, s3, s8
                  bne          t4, s2, 136f
                  srai         tp, s10, 2
                  bge          a4, a0, 133f
133:              sltiu        s5, a6, 108
                  addi         a4, zero, -1294
                  ori          s2, t0, 1489
136:              auipc        tp, 999110
                  sltu         s10, s11, s3
138:              bge          s9, gp, 140f
                  beq          s11, s11, 154f
140:              ori          s2, s1, 400
141:              and          a1, s5, t6
                  sub          s2, s11, s8
                  sltu         a0, gp, s4
                  blt          t0, t2, 151f
                  ori          s4, s0, -441
                  addi         s5, a0, 1068
                  srai         a4, gp, 24
                  nop
                  bgeu         s3, t4, 154f
                  or           gp, t2, s1
151:              sltu         a7, a2, a7
                  sra          s6, s1, a1
                  xor          s4, s2, s8
154:              nop
                  sra          tp, a1, ra
                  or           a6, a7, s5
                  sltu         s1, zero, a3
                  slli         s1, s9, 15
                  and          a6, t0, t3
                  slli         a1, s4, 14
                  xori         s8, t0, 1091
                  bge          s10, s11, 180f
                  lui          a6, 913551
                  blt          s5, s2, 169f
                  lui          s4, 57249
                  ori          t0, t4, -254
                  srl          t3, s3, a4
                  bge          a2, zero, 174f
169:              and          s5, t3, a0
                  slti         t3, a0, 1574
                  lui          a7, 396899
                  srai         a6, a5, 10
                  sll          a4, a1, tp
174:              sll          zero, s1, s10
                  xori         t4, t1, -190
                  sltiu        s2, gp, -885
                  ori          s3, t4, 1756
                  srl          a6, a4, s8
                  beq          s9, s11, 189f
180:              sra          t4, s5, zero
                  blt          s7, a7, 194f
                  sll          tp, s6, a2
                  srli         a5, s4, 9
                  beq          s10, s11, 187f
                  and          a2, a7, s6
                  beq          t6, t5, 204f
187:              and          a7, a6, t5
                  xori         a3, t2, -1754
189:              bltu         s5, a4, 196f
                  slli         s1, a5, 20
                  nop
                  or           a5, t1, a1
                  srai         s9, s1, 21
194:              blt          t1, a4, 199f
                  slt          s1, a5, t1
196:              xori         t6, s6, -183
                  and          s10, s6, a1
                  srai         s1, t4, 30
199:              ori          s7, tp, -493
                  srai         zero, tp, 31
                  blt          t5, t3, 215f
                  sub          s2, tp, s3
                  bgeu         a0, s0, 216f
204:              addi         s0, sp, 1563
                  xori         s1, tp, -1555
                  srl          t0, t1, s2
                  sltu         t2, s6, gp
                  xor          t0, a7, s2
                  auipc        a7, 130637
                  srl          a7, t2, s0
                  beq          s6, zero, 223f
                  bne          s2, a4, 217f
                  srl          t0, sp, a6
                  sub          a1, s4, ra
215:              sll          s1, sp, t0
216:              bne          t1, s3, 221f
217:              nop
                  srai         s1, s4, 10
                  auipc        a5, 210774
                  srai         s0, ra, 18
221:              or           t6, a5, a3
                  bge          s2, s4, 235f
223:              sra          s1, s5, gp
                  sub          s0, t1, s7
                  srli         s6, s1, 2
                  srli         s9, s4, 7
                  auipc        s0, 435988
                  sltu         zero, a6, s2
                  andi         s7, t5, 1636
                  sll          a5, s8, s1
                  xori         t4, a7, -61
                  bne          t0, s6, 248f
                  ori          a6, gp, -1295
                  sll          t6, t4, a6
235:              nop
                  sub          t2, s11, s8
                  srai         s6, s9, 19
                  addi         s1, tp, 1345
                  xori         s7, t3, 1676
                  auipc        a7, 326909
                  ori          s0, s0, 804
                  sltiu        a0, a1, -449
                  bne          ra, t3, 255f
                  addi         s9, t6, -693
                  nop
                  sub          s5, s10, a4
                  xor          a1, s2, s9
248:              srli         a3, t0, 14
                  srai         t6, s5, 13
                  bge          s4, a6, 265f
                  add          t4, a5, zero
                  auipc        s2, 785317
                  addi         s9, a1, -773
                  slti         a4, sp, -399
255:              bltu         s4, a1, 264f
                  bne          s2, s7, 263f
                  sltiu        a3, gp, 1064
                  srl          a5, t2, t1
                  xori         a3, t3, -298
                  srli         a0, zero, 26
                  slt          s8, s7, a2
                  bltu         t4, s7, 264f
263:              or           s7, t0, a6
264:              lui          t2, 108454
265:              lui          s5, 981569
                  blt          a5, s9, 282f
                  addi         a0, t5, 733
                  bgeu         t6, s1, 269f
269:              sltiu        t4, a5, -326
                  srli         t3, a2, 9
                  or           s3, s11, t5
                  lui          a2, 868252
                  beq          s9, a7, 284f
                  sll          s4, t1, s2
                  blt          a5, a7, 280f
                  andi         s8, s6, -1640
                  sub          a0, s10, t2
                  xori         a7, a3, -1495
                  srli         s3, s4, 18
280:              slti         s9, sp, -825
                  nop
282:              lui          s2, 305969
                  xor          s1, t0, a0
284:              nop
                  slt          s1, a5, a5
                  and          s2, a4, gp
                  addi         s2, a1, 883
                  lui          a6, 1037336
                  addi         s4, t3, -1726
                  srl          a5, a7, a0
                  bgeu         ra, s5, 292f
292:              srai         tp, zero, 25
                  andi         a2, a4, -700
                  add          t1, a3, ra
                  ori          t0, tp, 1758
                  sltiu        t5, t4, 1997
                  sll          t3, s9, t6
                  bltu         t3, a3, 302f
                  beq          s1, tp, 318f
                  bgeu         s8, t0, 302f
                  bltu         s11, s11, 319f
302:              sll          t0, t0, zero
                  blt          a1, a6, 304f
304:              sra          zero, t5, s1
                  xori         t1, a6, 529
                  bge          t2, a2, 307f
307:              slti         tp, t3, -201
                  and          s7, s8, a2
                  auipc        zero, 689757
                  srai         a2, s5, 12
                  sub          s9, t0, a5
                  bgeu         s1, s5, 325f
                  slti         s0, s0, 1826
                  xori         a0, t6, 1622
                  bge          a4, ra, 330f
                  add          tp, t5, t2
                  sub          t4, zero, a3
318:              ori          s0, s2, 1110
319:              and          s3, a1, a0
                  bge          a7, s9, 332f
                  blt          a3, t0, 322f
322:              addi         s2, s5, -1705
                  bgeu         a4, a7, 324f
324:              ori          t5, zero, 1325
325:              srl          a1, a0, t2
                  slli         s8, a1, 25
                  or           s0, s8, t4
                  nop
                  xori         a4, t0, 1632
330:              sll          a3, s10, t2
                  xori         s10, s5, 1896
332:              slti         s3, t0, 269
                  blt          a6, s10, 338f
                  slti         a2, s0, -1106
                  bne          t6, t6, 342f
                  bge          s1, s8, 349f
                  andi         a1, s0, -799
338:              and          a0, a3, s6
                  nop
                  sra          s4, s9, s3
                  sub          t3, s3, a4
342:              sra          s8, sp, a6
                  slti         t4, a7, -1598
                  andi         a4, a2, -1401
                  and          a7, a2, t1
                  xori         zero, a0, -1230
                  ori          a2, tp, -1717
                  sll          a3, a7, s5
349:              ori          t2, s5, -78
                  slli         s8, gp, 26
                  srai         t2, a5, 8
                  srl          t1, a1, s10
                  blt          t1, t4, 371f
                  sub          a4, t2, s9
                  beq          t1, s5, 362f
                  slt          a4, zero, a3
                  sll          t0, s7, a1
                  blt          a2, ra, 362f
                  ori          s5, ra, -2020
                  xor          a0, sp, s6
                  sltiu        t5, zero, -524
362:              sub          s7, a2, ra
                  blt          a3, a7, 368f
                  srli         s2, t2, 7
                  or           a2, s4, s2
                  slt          s7, s8, s3
                  srai         s9, a2, 17
368:              bne          a1, s6, 382f
                  lui          a3, 281895
                  slt          a7, t0, a1
371:              and          zero, a4, t6
                  or           s0, t1, s7
                  and          s8, s11, a0
                  addi         t0, gp, 14
                  beq          s11, a0, 388f
                  sltu         s10, s1, a7
                  srl          t0, t5, gp
                  add          t0, t0, t4
                  xor          t6, s2, a0
                  ori          t1, sp, -1008
                  bltu         a4, s6, 387f
382:              bne          a7, t6, 384f
                  sltiu        s10, a0, -1669
384:              or           s2, t3, a6
                  sltu         t3, s6, s10
                  auipc        a4, 897905
387:              bgeu         a3, a0, 392f
388:              sra          t4, t1, ra
                  bne          t4, s7, 401f
                  nop
                  sub          zero, a0, t0
392:              lui          s4, 260862
                  add          s7, t5, s7
                  srli         s9, a5, 25
                  sltu         s10, t1, s7
                  srai         a5, a1, 19
                  srli         s1, t4, 22
                  beq          sp, t5, 414f
                  blt          s1, s6, 400f
400:              srai         t4, s8, 24
401:              bge          s0, gp, 411f
                  sltiu        t3, s11, 1010
                  bne          a4, t6, 406f
                  addi         t6, tp, -1152
                  add          s6, t3, t0
406:              srl          gp, s5, a1
                  addi         t6, s3, 1922
                  or           s8, a5, s10
                  ori          s9, s1, 604
                  bne          a6, s2, 415f
411:              bltu         t5, s3, 420f
                  bge          a7, a3, 431f
                  andi         t4, zero, -590
414:              blt          s6, s1, 415f
415:              beq          zero, s4, 431f
                  bge          s5, a3, 427f
                  srai         a4, t4, 27
                  srai         a3, a4, 22
                  sra          s8, s4, t6
420:              sll          a2, s11, a4
                  bne          s4, a4, 439f
                  and          a7, a0, t0
                  add          s10, a1, s1
                  add          a4, a2, ra
                  lui          s6, 19789
                  bge          tp, s10, 428f
427:              sll          a4, a7, s11
428:              xor          t5, s4, a2
                  bge          s6, t1, 443f
                  sub          tp, t4, s0
431:              beq          s1, a7, 443f
                  and          s5, s2, s2
                  srli         s7, ra, 11
                  add          tp, s0, s7
                  sltu         a4, a4, a3
                  and          s8, s9, s2
                  bltu         a7, t3, 452f
                  sltu         a2, s8, sp
439:              beq          t2, gp, 450f
                  srli         a3, t5, 9
                  srli         s8, s9, 4
                  slt          t2, t4, t3
443:              slt          t1, s7, t3
                  beq          s3, s7, 462f
                  bne          s9, a5, 446f
446:              andi         a3, a0, -703
                  sll          t3, s0, tp
                  xori         s8, t0, 165
                  slli         gp, a3, 20
450:              slt          s8, s11, s10
                  bgeu         a2, t0, 461f
452:              sub          s4, a5, a5
                  blt          s2, s5, 457f
                  xor          a0, s4, s5
                  and          a6, s4, t3
                  slli         a2, t0, 30
457:              sra          gp, t1, t4
                  slt          t2, a2, t3
                  sub          a3, s1, a5
                  ori          a1, s8, 1453
461:              add          gp, s7, a1
462:              sub          t4, s7, t6
                  or           s4, t2, s6
                  sltu         a4, a3, s7
                  sll          s8, s6, sp
                  and          s7, t4, a3
                  ori          a7, t0, -1559
                  add          a0, ra, t2
                  bgeu         s4, t2, 482f
                  xor          t0, s2, t3
                  sll          t4, t6, sp
                  xori         a1, t3, 1223
                  slti         a3, t4, -1224
                  beq          t5, a5, 493f
                  srai         a7, sp, 6
                  sra          a0, s0, s10
                  sll          t3, s0, s5
                  auipc        a7, 74378
                  blt          t3, s1, 480f
480:              bge          t1, a1, 485f
                  blt          a0, tp, 499f
482:              sltu         s8, s9, s3
                  ori          a5, t5, -767
                  and          a4, a6, s4
485:              auipc        s0, 514832
                  srli         t1, s6, 6
                  xor          s10, t4, s10
                  blt          s9, s6, 489f
489:              andi         s4, s0, -527
                  or           s4, s9, t1
                  bltu         a4, t0, 503f
                  slli         gp, a3, 26
493:              slli         zero, tp, 18
                  sra          zero, t1, s3
                  xor          a2, s5, zero
                  sll          t6, s5, a1
                  auipc        gp, 55937
                  andi         a3, s2, 1364
499:              and          s6, s4, a3
                  sub          a1, s1, t2
                  andi         tp, t5, -597
                  lui          s7, 980939
503:              sltiu        a0, s0, 610
                  srl          zero, s10, t6
                  beq          t6, sp, 512f
                  srai         tp, t5, 4
                  blt          s2, s5, 523f
                  bge          s8, tp, 510f
                  ori          s8, t1, -897
510:              sra          zero, zero, s6
                  andi         t1, a5, -1644
512:              sra          tp, s11, s1
                  addi         gp, s1, 1701
                  slt          gp, s9, t3
                  auipc        a6, 78121
                  slt          a0, s9, s7
                  beq          s1, a6, 524f
                  add          t0, ra, tp
                  add          t2, t1, ra
                  slli         s8, t0, 0
                  ori          t2, sp, -1381
                  add          t2, s5, t3
523:              slt          s9, a7, a7
524:              blt          ra, a4, 540f
                  slli         s5, ra, 11
                  addi         a0, s4, 1329
                  bltu         s8, gp, 536f
                  srl          s10, s9, t6
                  add          s5, t1, s2
                  srai         a2, t5, 0
                  addi         s8, s7, 1119
                  sra          t0, sp, s4
                  sltu         zero, t4, a7
                  slli         t5, s10, 12
                  sltiu        s7, s7, -1800
536:              bgeu         t2, s2, 541f
                  blt          t0, a0, 550f
                  xori         a0, gp, 482
                  sltu         s2, s4, t5
540:              add          s1, s6, a5
541:              sltu         s7, s10, sp
                  slli         t2, s8, 28
                  beq          t2, s10, 548f
                  or           a3, s8, a1
                  sltiu        s2, a5, -314
                  sltu         s0, s11, gp
                  ori          a0, s6, -357
548:              srl          t5, t5, a7
                  andi         a7, s7, 1178
550:              addi         tp, a6, -1211
                  slti         t1, t4, 988
                  and          tp, tp, t4
                  blt          t2, sp, 559f
                  addi         a4, t4, -1535
                  slti         s2, a7, 1660
                  add          a2, t1, a3
                  srai         s3, a2, 17
                  add          s3, s0, a5
559:              blt          t5, s5, 572f
                  xor          tp, s8, sp
                  beq          s7, s4, 566f
                  sltu         s5, s2, t2
                  sll          zero, gp, t1
                  bltu         gp, s1, 565f
565:              lui          s10, 65796
566:              addi         a4, s0, -1333
                  auipc        s1, 805666
                  srl          t3, a2, t3
                  sra          a3, a3, t5
                  bgeu         a7, sp, 573f
                  addi         t1, s4, 162
572:              andi         s5, s0, 1213
573:              slt          t2, s4, s1
                  sltu         a6, a5, a4
                  srai         s9, gp, 26
                  xor          s2, a3, zero
                  add          s4, s2, gp
                  and          s5, s2, t5
                  sltiu        s4, zero, -1
                  sltu         s9, s6, ra
                  sub          t2, a0, t6
                  srli         a4, t6, 6
                  bltu         t3, a0, 585f
                  slti         a5, s1, -646
585:              and          s6, a6, s1
                  bgeu         t5, s9, 593f
                  sltiu        t2, ra, -618
                  nop
                  addi         tp, s2, 1995
                  lui          s2, 223017
                  addi         tp, s11, 1268
                  lui          s4, 188338
593:              ori          s1, t3, 1637
                  bgeu         t4, a0, 595f
595:              bge          t3, s11, 608f
                  sub          gp, a5, s4
                  auipc        s9, 960608
                  sll          a6, a7, t6
                  andi         a5, sp, -1590
                  nop
                  slti         s4, tp, 661
                  bltu         a0, t1, 618f
                  bltu         t5, zero, 604f
604:              lui          tp, 327685
                  sltiu        tp, s10, -1747
                  addi         a7, a4, -1523
                  sll          s7, a0, t3
608:              slli         t6, t5, 7
                  slt          s6, s4, zero
                  srl          a6, t3, a2
                  nop
                  blt          t0, s10, 631f
                  srli         s10, s8, 16
                  sltiu        t5, s4, -1
                  xori         a5, s4, 1836
                  xor          a7, s8, t3
                  bltu         t3, t6, 630f
618:              sltu         t0, t0, s3
                  bne          a5, a2, 621f
                  blt          s11, a3, 630f
621:              srai         t4, s7, 15
                  slli         t5, s5, 18
                  auipc        tp, 976923
                  sra          s9, a5, gp
                  sll          s9, s2, s8
                  bltu         a4, zero, 631f
                  bne          a2, t1, 628f
628:              and          t0, s7, a2
                  sll          gp, s7, t0
630:              xori         t5, s10, 397
631:              beq          s0, a0, 642f
                  and          t3, a1, a4
                  slt          a3, a5, t5
                  bge          s9, a7, 646f
                  slli         t4, s1, 12
                  bltu         s2, s6, 643f
                  srai         t4, t5, 23
                  beq          s6, zero, 639f
639:              bgeu         ra, s9, 645f
                  blt          s3, s8, 656f
                  slli         t3, s2, 15
642:              srai         tp, t5, 21
643:              sub          s10, t4, t5
                  slli         a3, t3, 9
645:              or           s1, s11, a5
646:              xor          t2, a7, s10
                  srai         t5, sp, 17
                  sltiu        s3, t6, -328
                  bge          t3, t2, 654f
                  sra          s6, s7, s10
                  andi         a5, gp, -65
                  or           s4, s5, t0
                  xor          t5, a7, s1
654:              bne          t5, t6, 666f
                  sra          t5, gp, a7
656:              srai         a6, s3, 21
                  beq          s8, s8, 672f
                  srli         tp, t1, 14
                  xor          s10, a4, a5
                  bltu         s11, s11, 665f
                  ori          a4, t2, 286
                  add          s5, t1, a1
                  bne          s11, a5, 681f
                  and          t2, t2, t5
665:              bge          t3, s4, 683f
666:              ori          t1, a4, 469
                  ori          s8, s11, -1283
                  beq          zero, s10, 670f
                  blt          a5, a6, 674f
670:              slli         t5, a3, 29
                  add          s2, a6, a1
672:              bltu         s2, a1, 681f
                  bne          t5, s10, 687f
674:              xor          s0, a3, t6
                  sltu         s5, t3, s6
                  srl          a0, s6, t6
                  bge          s1, s5, 690f
                  add          t5, t6, t2
                  bltu         t3, s4, 683f
                  add          s8, t1, s8
681:              srli         a2, s10, 8
                  beq          s5, a3, 685f
683:              andi         a1, t4, -286
                  blt          s11, zero, 698f
685:              bgeu         s11, s4, 695f
                  bgeu         gp, a3, 687f
687:              bgeu         a1, s10, 703f
                  auipc        s10, 876910
                  auipc        a7, 334590
690:              srl          t5, zero, t0
                  bltu         s9, sp, 695f
                  bgeu         t5, s1, 693f
                  la           s6, sub_2
                  xor          s7, s6, s5
                  addi         s6, s6, 855
                  slt          t1, s0, s7
                  addi         a6, s4, 12
                  blt          s1, s6, sub_1_j4 #branch to jump instr
                  auipc        s4, 188293
                  or           a2, s9, s7
                  srl          tp, a4, gp
sub_1_j4:         jalr         t1, s6, -855 #jump sub_1 -> sub_2
693:              xori         s7, s4, -1091
                  nop
695:              sll          a0, t5, s10
                  bgeu         s3, s6, 709f
                  bne          t4, s4, 712f
698:              bltu         s0, s1, 699f
699:              xori         a5, ra, -1982
                  sll          a6, a2, t1
                  srai         tp, t5, 1
                  addi         tp, tp, -780
703:              and          gp, a2, s2
                  or           s6, s10, s10
                  xor          a5, a3, s11
                  auipc        s1, 585175
                  auipc        t1, 471827
sub_1_11:         jal          t1, 25f
0:                jal          t0, 12f
1:                jal          a3, 2f
2:                jal          t1, 20f
3:                jal          t0, 1b
4:                jal          t6, 10f
5:                jal          gp, 8f
6:                jal          gp, 3b
7:                jal          t4, 26f
8:                jal          t1, 15f
9:                jal          t1, 6b
10:               jal          t1, 0b
11:               jal          gp, 13f
12:               jal          t1, 9b
13:               jal          t1, 4b
14:               jal          t1, 19f
15:               jal          t4, 24f
16:               jal          t1, 14b
17:               jal          s8, 18f
18:               jal          t1, 16b
19:               jal          t1, 7b
20:               jal          s4, 22f
21:               jal          t5, 17b
22:               jal          s7, 5b
23:               jal          t1, 21b
24:               jal          s6, 23b
25:               jal          tp, 11b
26:               slli         a4, t6, 9
                  auipc        tp, 520352
709:              sub          s6, zero, a6
                  srli         a3, s9, 30
                  blt          s8, s8, 727f
712:              xor          s5, t2, a2
                  nop
                  srai         a5, s11, 24
                  sltu         s5, s0, s3
                  srli         s10, s9, 4
                  or           a6, s3, gp
                  bltu         s5, a4, 737f
                  xori         a5, s8, -495
                  bgeu         sp, gp, 732f
                  xori         s6, s11, 1502
                  slt          a2, tp, t6
                  or           s3, s9, t6
                  sra          a5, s5, a1
                  bltu         zero, a7, 738f
                  srl          s3, a2, t1
727:              srai         gp, t1, 19
                  slti         s3, gp, -1369
                  bgeu         a7, s2, 736f
                  and          s10, a2, a2
                  ori          t5, s11, -2039
732:              bgeu         a3, t3, 737f
                  bne          s8, ra, 751f
                  sll          s2, sp, t4
                  sltu         a4, t2, t6
736:              blt          t6, s2, 737f
737:              slt          t0, tp, a6
738:              and          a4, s3, a0
                  sll          s9, a3, tp
                  xori         gp, s8, -728
                  xor          t6, zero, sp
                  lui          s8, 790908
                  xori         s1, a5, 1380
                  bne          a5, a6, 751f
                  sub          t4, t3, s5
                  slli         s9, t3, 13
                  bge          t4, s1, 759f
                  nop
                  sltu         gp, a6, a2
                  slt          a4, zero, t4
751:              auipc        tp, 630663
                  slli         s9, s10, 9
                  slti         a7, s0, 761
                  add          a2, tp, zero
                  auipc        s9, 247220
                  slti         a2, a3, 1482
                  ori          zero, t6, 1579
                  ori          t4, s10, 1563
759:              bgeu         tp, s8, 761f
                  sll          t2, s7, s5
761:              xori         s1, sp, -1976
                  bne          s1, a4, 780f
                  add          s6, s11, a1
                  auipc        t0, 278864
                  and          gp, t1, t6
                  or           s6, s8, zero
                  slli         s6, t2, 14
                  slli         a2, zero, 15
                  sltu         s2, a5, ra
                  nop
                  sltu         t3, t5, t6
                  slt          t0, a7, t4
                  slt          s6, sp, s8
                  srl          a6, s11, s11
sub_1_14:         jal          t1, 12f
0:                jal          gp, 14f
1:                jal          s3, 17f
2:                jal          t0, 8f
3:                jal          s2, 7f
4:                jal          a2, 18f
5:                jal          t1, 1b
6:                jal          s6, 5b
7:                jal          s5, 0b
8:                jal          a6, 6b
9:                jal          t1, 13f
10:               jal          s9, 2b
11:               jal          t6, 21f
12:               jal          a1, 4b
13:               jal          s1, 23f
14:               jal          t1, 16f
15:               jal          t1, 10b
16:               jal          t1, 15b
17:               jal          t1, 20f
18:               jal          t6, 19f
19:               jal          t1, 22f
20:               jal          t0, 11b
21:               jal          s1, 9b
22:               jal          s5, 3b
23:               ori          s8, t6, -1604
                  srai         s6, t3, 16
                  xori         t6, s9, -1265
                  xor          zero, a2, s11
                  auipc        t5, 976107
                  or           a6, t1, s7
780:              sub          a1, a7, s4
                  sltiu        s0, t2, 1032
                  lui          s8, 1006785
                  blt          t6, t5, 789f
                  xor          s10, s0, s0
                  lui          t3, 305125
                  bltu         s7, t5, 791f
                  bgeu         s8, ra, 796f
                  and          a0, tp, t4
789:              blt          a6, s3, 791f
                  bne          t4, t4, 803f
791:              sll          s7, s8, s10
                  andi         t4, ra, -671
                  xor          tp, t3, s10
                  sra          a1, s3, t4
                  add          a6, t3, s7
796:              bgeu         s6, gp, 801f
                  xor          t0, s9, t3
                  lui          t6, 64606
                  bne          a0, ra, 802f
                  sltiu        t2, t2, -1840
801:              sub          a2, s10, s3
802:              bltu         s10, s2, 813f
803:              bltu         a0, a2, 808f
                  add          a3, s1, tp
                  slli         t1, a4, 1
                  blt          t4, t5, 822f
                  xori         s4, s4, 1104
808:              beq          t6, s6, 826f
                  and          t3, s0, t0
                  blt          a1, s1, 820f
                  ori          s0, ra, -1442
                  srai         s9, s0, 12
813:              blt          gp, sp, 814f
814:              srl          t0, a4, s9
                  addi         a2, s0, -114
                  sra          gp, zero, a5
                  sltu         s6, a0, s1
                  sll          s7, s4, s7
                  bge          s11, s6, 837f
820:              nop
                  and          a7, t5, gp
822:              bgeu         s10, a3, 834f
                  or           s0, s2, s8
                  auipc        t6, 1016475
                  auipc        a1, 260393
826:              nop
                  beq          s0, tp, 843f
                  srli         s10, s9, 12
                  nop
                  bge          s2, s5, 843f
                  srli         s5, t2, 25
                  beq          t0, tp, 833f
833:              bge          t2, a6, 839f
834:              bge          s11, a0, 843f
                  lui          s4, 589206
                  blt          tp, s2, 855f
837:              slt          a5, t1, t4
                  and          a4, zero, t0
839:              bne          a4, s8, 844f
                  srl          s5, a4, tp
                  srl          s0, a1, s0
                  nop
843:              srai         a3, a7, 24
844:              lui          t2, 928819
                  bge          t2, t0, 857f
                  srai         s4, zero, 20
                  bge          s7, s10, 848f
848:              xor          a2, ra, s9
                  srl          s8, t2, s1
                  lui          t1, 973742
                  sll          s1, s3, s3
                  bne          gp, zero, 865f
                  sll          s2, a1, a7
                  sub          a6, s2, t4
855:              addi         a1, t1, -904
                  sltu         s7, s6, a7
857:              beq          t0, s10, 862f
                  or           a3, t5, s0
                  srl          s8, s11, t4
                  and          t3, s1, a1
                  sltiu        t2, s2, 1722
862:              slt          s1, a1, s4
                  or           t0, s0, t5
                  or           a3, gp, s11
865:              blt          sp, a1, 866f
866:              xori         a3, a7, 1220
                  bge          s8, ra, 869f
                  lui          a0, 510908
869:              srai         zero, sp, 10
                  addi         s9, a3, 563
                  or           a2, s5, a5
                  bge          t1, s7, 883f
                  bge          a0, s1, 878f
                  sra          zero, tp, gp
                  add          a2, t1, s10
                  slti         t3, a7, -2015
                  andi         a7, s3, 632
878:              beq          a5, s11, 882f
                  slt          s10, zero, sp
                  auipc        a5, 611545
                  blt          t1, tp, 888f
882:              bltu         t0, a3, 895f
883:              sltu         t4, s6, a6
                  bgeu         gp, a2, 889f
                  xori         t3, t4, 1759
                  bltu         a7, a4, 901f
                  srl          a1, a2, a3
888:              auipc        a5, 443961
889:              slli         s9, a1, 8
                  xori         t3, t4, -714
                  sltu         t6, s1, t5
                  slt          t0, s9, s11
                  and          t0, a5, s5
                  bge          zero, s7, 897f
895:              srl          zero, t1, s0
                  sub          a2, s9, a2
897:              addi         s0, s7, 530
                  sll          a6, s1, t4
                  lui          t6, 588096
                  sra          t6, s9, a0
901:              slti         t0, tp, -587
                  srli         s5, a5, 30
                  sub          a3, s11, s7
                  srai         t4, t4, 14
                  srli         t6, t6, 9
                  nop
                  or           s2, a6, gp
                  slli         t2, ra, 14
                  or           s3, s3, s8
                  sll          t3, a7, a0
                  blt          t0, s2, 913f
                  add          tp, gp, s6
913:              bge          t4, a0, 920f
                  sll          a0, tp, s1
                  slli         a5, t1, 26
                  xor          s3, s4, a4
                  slti         a0, s6, 932
                  sltiu        t5, sp, -671
                  or           a1, s8, a0
920:              sltu         s1, t2, t1
                  srl          a0, t1, t5
                  srl          s10, ra, s3
                  nop
                  lui          s9, 753441
                  nop
                  sltiu        a7, s10, 1595
                  lui          a0, 737019
                  slli         a6, ra, 9
                  beq          s9, a3, 943f
                  add          s3, s1, a2
                  addi         t3, t5, -2023
                  andi         t1, s2, 984
                  slt          t3, s8, t2
                  lui          s8, 8505
                  bge          a1, a1, 948f
                  bne          t5, ra, 943f
                  slli         a4, s9, 13
                  sll          zero, s9, s7
                  sll          a5, t5, s7
                  bge          t4, ra, 942f
                  bne          a0, t6, 946f
942:              sltu         gp, t0, s7
943:              srl          s8, t1, zero
                  bge          s11, a5, 945f
945:              ori          t2, t4, -1483
946:              sra          s8, a6, t1
                  srl          t1, s1, s4
948:              sltiu        a2, tp, 1966
                  or           a1, s5, s3
                  or           s2, s6, t3
                  lui          s0, 865549
                  blt          t4, s9, 970f
                  sub          s4, s0, a6
                  bge          ra, gp, 957f
                  xor          s7, zero, a2
                  bge          t0, sp, 957f
957:              lui          t1, 90717
                  andi         t0, gp, -663
                  sra          t5, a6, tp
                  nop
                  srli         t0, t2, 24
                  sltiu        s1, sp, -100
                  slli         s5, s2, 24
                  xor          s2, sp, t3
                  ori          s9, t0, 1609
                  andi         t6, t2, 1870
                  sll          s7, a1, a4
                  or           a3, s7, a4
                  xori         t1, a6, 993
970:              addi         a0, s0, -325
                  sltiu        s2, s3, 1679
                  bne          zero, gp, 976f
                  slt          a1, s5, s10
                  srl          s4, t1, a0
                  bltu         zero, a4, 982f
976:              add          s7, s2, s3
                  sltu         a5, t4, gp
                  addi         gp, t0, 1410
                  or           t1, s11, sp
                  auipc        s7, 1027321
                  slli         s4, s1, 8
982:              and          t4, t5, t2
                  srai         s3, s0, 18
                  bgeu         ra, a7, 997f
                  bge          s7, s11, 990f
                  srl          s7, s3, s2
                  sub          gp, s0, s9
                  slti         s2, a0, -261
                  slt          t2, s1, a3
990:              or           t5, s3, t2
                  bne          s9, s11, 1001f
                  srai         t5, a2, 24
                  blt          s10, s11, 994f
994:              bgeu         s6, s7, 1003f
                  bge          s1, t5, 1000f
                  add          a2, t0, s2
997:              xori         a3, a3, -91
                  xori         s4, t3, -600
                  slt          t3, s3, ra
1000:             blt          a1, s1, 1001f
1001:             addi         t4, s7, 1000
                  bgeu         s6, gp, 1020f
1003:             bge          a0, a6, 1017f
                  sub          s9, sp, s3
                  slli         a2, zero, 5
                  andi         s9, s3, -1671
                  srl          t4, s2, ra
                  add          t5, s3, t6
                  ori          a2, s8, 1337
                  bgeu         s7, a5, 1029f
                  add          s2, a4, s6
                  ori          a4, s10, 1014
                  slti         s0, s3, -1100
                  and          a0, t1, a2
                  bltu         s7, sp, 1030f
                  bltu         s7, a4, 1029f
1017:             bltu         s2, zero, 1023f
                  bne          zero, t4, 1030f
                  xor          a3, a6, ra
1020:             srai         s1, s8, 22
                  lui          s9, 562676
                  nop
1023:             slli         zero, gp, 6
                  addi         a7, s9, -1699
                  auipc        s9, 908509
                  slt          tp, t1, s0
                  sltu         s5, tp, a1
                  slt          s10, a0, a4
1029:             auipc        a6, 736277
1030:             sub          t2, t3, zero
                  bltu         tp, s10, 1043f
                  and          a1, a2, t0
                  ori          s0, a7, 347
                  lui          s8, 436714
                  addi         s5, a0, 1603
                  auipc        s7, 289082
                  bge          t1, t0, 1042f
                  srai         t6, a3, 31
                  sltu         t5, s3, s7
                  or           s0, ra, s11
                  bne          t1, s7, 1043f
1042:             srai         gp, s9, 8
1043:             sub          gp, ra, a1
                  blt          a7, tp, 1060f
                  bge          a4, s3, 1056f
                  slt          t2, sp, t0
                  bltu         a6, a3, 1063f
                  slli         t5, t5, 8
                  slti         a5, a3, 1243
                  slli         t4, s4, 28
                  srl          s10, s5, s2
                  lui          s10, 801521
                  slti         a5, a5, 1202
                  and          t0, s1, a5
                  andi         s1, s6, 508
1056:             sltiu        a7, a0, -1428
                  nop
                  srli         a7, a5, 1
                  xori         gp, s0, 330
1060:             slt          t4, s0, a5
                  bgeu         a0, a4, 1075f
                  xor          s8, s8, a2
1063:             lui          t2, 1043749
                  bltu         t1, s11, 1077f
                  srai         a0, sp, 23
                  srli         t6, t0, 9
                  bltu         sp, t5, 1069f
                  sltu         t5, a4, s8
1069:             sll          a6, t4, sp
                  srai         tp, s10, 24
                  bge          t1, t2, 1082f
                  sll          t6, tp, s1
                  or           s6, a4, s0
                  lui          s9, 838112
1075:             bltu         ra, a1, 1093f
                  xor          t0, s3, a7
1077:             slli         s5, t4, 28
                  or           t0, s1, s4
                  add          t2, a1, s8
                  srli         s9, s1, 28
                  sll          a5, t1, ra
1082:             or           a2, s8, tp
                  sub          a1, t1, a4
                  or           s8, s8, sp
                  blt          a7, s9, 1086f
1086:             xori         s8, s5, 1899
                  xor          a7, a1, t3
                  srli         a7, a0, 15
                  auipc        t2, 153539
                  beq          a3, a7, 1100f
                  sll          a3, ra, s10
                  add          s9, a5, s0
1093:             sltiu        s2, sp, -1871
                  ori          s8, a4, 1867
                  xori         t0, t4, -1932
                  slt          s4, a6, t1
                  beq          s11, tp, 1102f
                  add          a2, a4, t3
                  or           t1, a5, ra
1100:             blt          a2, a3, 1104f
                  sltiu        t2, s5, 564
1102:             beq          s0, a6, 1103f
1103:             nop
1104:             auipc        t5, 373354
                  srl          s7, s6, t5
                  or           s6, t2, sp
                  andi         s7, s2, -1126
                  lui          t6, 787427
                  add          s5, s0, a0
                  slli         a5, zero, 1
                  addi         t6, s5, -1734
                  slli         s8, s7, 22
                  lui          a6, 48088
                  slli         t1, t2, 16
                  add          t2, a6, t4
                  add          a3, t5, s0
                  add          s0, s11, a4
                  slti         t0, sp, 476
                  beq          a3, a1, 1131f
                  auipc        t5, 206399
                  beq          s11, t0, 1139f
                  sltu         a7, t1, s0
                  srl          a2, a4, a2
                  nop
                  slt          a0, tp, zero
                  xori         a3, tp, 1468
                  andi         s2, t1, 1765
                  bge          s5, a5, 1133f
                  bge          a6, a5, 1138f
                  srl          s3, s11, t5
1131:             sltiu        t5, zero, -333
                  lui          s10, 246217
1133:             auipc        a3, 183335
                  or           gp, s6, s5
                  srl          t5, s8, s2
                  auipc        a2, 69598
                  bgeu         s4, t6, 1152f
1138:             ori          a5, t6, 1945
1139:             srai         tp, s10, 23
                  sltu         t1, s11, s10
                  srai         s0, s2, 12
                  sll          s1, s11, t4
                  bne          t1, s3, 1146f
                  ori          a7, t4, -513
                  lui          s8, 994323
1146:             bgeu         a2, a7, 1165f
                  nop
                  and          tp, t3, a4
                  sub          s1, a3, t3
                  add          tp, gp, sp
                  and          t2, a7, sp
1152:             xor          s1, a7, t6
                  sltiu        s3, a3, 20
                  blt          gp, s4, 1155f
1155:             slti         s7, s8, 1992
                  add          t1, a0, a2
                  sltiu        s8, gp, 607
                  slti         t5, s0, 1000
                  srli         s9, s11, 23
                  srl          a7, zero, a5
                  bgeu         a5, t4, 1166f
                  bne          s11, a5, 1167f
                  addi         t5, t6, -995
                  slt          s0, s4, t0
1165:             or           t5, a2, s1
1166:             add          a5, t3, zero
1167:             bltu         s5, t5, 1174f
                  auipc        s6, 303715
                  xor          gp, tp, s1
                  beq          s9, s0, 1183f
                  lui          a3, 511043
                  bltu         a5, a6, 1178f
                  auipc        s2, 937115
1174:             bge          s6, t4, 1187f
                  slli         a7, s5, 17
                  sub          t5, a4, t5
                  bge          t3, s1, 1179f
1178:             srl          t6, a6, t4
1179:             nop
                  bne          s8, s4, 1196f
                  add          a1, a2, t0
                  bne          a1, s8, 1183f
1183:             andi         a0, s8, 986
                  add          t3, s7, t4
                  xori         a1, a2, -972
                  lui          a2, 844777
1187:             sltu         s1, s3, a4
                  srl          t2, a4, s0
                  addi         s7, s5, -1365
                  add          a5, sp, t6
                  andi         t2, t6, -186
                  sltiu        s6, t5, 676
                  bltu         s4, s6, 1205f
                  ori          t1, s4, -2007
                  slli         tp, a3, 27
1196:             sltiu        s4, ra, 1815
                  slli         s7, a2, 25
                  bge          ra, t6, 1205f
                  srai         t1, t4, 0
                  slt          s5, t2, s4
                  xor          s8, t5, a7
                  sub          t0, a2, s3
                  and          s7, s0, tp
                  bge          t5, a6, 1220f
1205:             auipc        a0, 316293
                  srli         s4, t2, 7
                  xor          s8, ra, a7
                  beq          s1, a0, 1210f
                  bgeu         s0, t0, 1222f
1210:             add          a6, t2, a7
                  sltiu        t2, s6, 1300
                  andi         t3, a4, -1828
                  slli         s6, s9, 14
                  nop
                  sub          gp, a3, gp
                  nop
                  or           a7, s1, t1
                  slt          s2, s3, a4
                  sub          tp, a2, s1
1220:             ori          t0, t4, -1784
                  xori         s10, s2, -768
1222:             beq          a6, s3, 1225f
                  sltu         a0, t1, s6
                  sra          s10, t6, t5
1225:             blt          s0, s5, 1231f
                  slli         t1, t1, 2
                  bltu         s10, s6, 1234f
                  sll          t6, a1, s6
                  bltu         a5, s4, 1241f
                  or           t1, zero, zero
1231:             and          t1, t1, a0
                  sltiu        zero, a7, 981
                  auipc        a6, 302278
1234:             auipc        a3, 505435
                  slt          t1, a6, s9
                  sll          t0, s6, a0
                  srl          t6, s11, s11
                  add          t6, s4, s0
                  bne          t1, a1, 1249f
                  lui          s6, 248900
1241:             slt          a6, a1, s6
                  or           s10, a0, tp
                  sub          a3, s0, s10
                  lui          a4, 610666
                  bltu         t6, t4, 1247f
                  blt          s5, a2, 1257f
1247:             srai         s3, ra, 25
                  nop
1249:             beq          zero, s1, 1254f
                  slti         a4, t0, -248
                  sll          tp, s11, sp
                  sub          s2, s11, sp
                  bltu         s3, a4, 1258f
1254:             sltiu        t0, gp, 939
                  blt          zero, a4, 1274f
                  srai         a7, t1, 21
1257:             sltiu        t1, s0, 1746
1258:             sra          zero, a5, s1
                  addi         s7, t2, 788
                  sra          a2, a3, t4
                  ori          t6, tp, 1037
                  or           t4, t2, s6
                  bgeu         s6, a5, 1275f
                  beq          zero, s9, 1265f
1265:             sltu         t0, s6, s11
                  ori          a5, tp, -607
                  sltiu        s0, s7, -1641
                  or           s3, s3, s4
                  nop
                  srl          s8, t3, zero
                  blt          a1, t3, 1272f
1272:             sltu         a0, t0, zero
                  sub          a5, t5, a1
1274:             sra          tp, s2, a3
1275:             bgeu         a5, s1, 1282f
                  auipc        t1, 103817
                  bge          s10, s8, 1293f
                  bltu         sp, s4, 1279f
1279:             slti         s2, t3, 383
                  sub          s10, s9, t6
                  sub          a7, s10, s1
1282:             andi         zero, tp, -1472
                  beq          s10, s2, 1298f
                  andi         s2, a4, 41
                  bge          s5, t0, 1299f
                  slt          a6, t3, t2
                  sltiu        t3, s1, 1572
                  bge          a3, s9, 1301f
                  srl          gp, ra, s0
                  bge          a7, s4, 1295f
                  sll          t2, t3, s11
                  slti         t4, zero, 356
1293:             srai         s5, sp, 30
                  andi         t1, a2, -1555
1295:             add          a7, a6, t6
                  bgeu         a5, a4, 1314f
                  blt          a2, a7, 1301f
1298:             srl          a4, s7, s6
1299:             blt          a3, sp, 1304f
                  auipc        s5, 337653
1301:             srli         a1, t2, 19
                  sltu         a7, t0, s4
                  and          tp, s7, a6
1304:             or           t4, a6, a5
                  andi         s1, s3, -1517
                  and          a7, s8, t2
                  xor          a2, a1, a2
                  sll          zero, s9, tp
                  or           a1, s7, a3
                  sll          a0, ra, t0
                  add          a1, s7, gp
                  or           t4, a2, t5
                  or           s5, s4, t6
1314:             sltu         a0, a7, a3
                  sra          t3, zero, s1
                  bne          gp, t3, 1333f
                  blt          gp, a5, 1333f
                  sra          s1, s3, t6
                  sll          t2, s11, t6
                  srl          s5, a3, t3
                  srai         s4, a7, 6
                  lui          s5, 958352
                  slt          a3, s5, t1
                  ori          s9, sp, -712
                  sra          a2, a7, a7
                  blt          t6, s8, 1327f
1327:             ori          t1, t4, 556
                  beq          s4, s3, 1333f
                  sll          tp, s7, s8
                  nop
                  or           a6, s10, a4
                  slli         t3, a1, 10
1333:             xor          s4, s5, a6
                  nop
                  lw           t1, 4(sp)
                  slti         a1, a7, 1661
                  or           s2, a5, t5
                  addi         sp, sp, 20
                  sltu         a0, s8, s5
1916:             addi x18, x6, 1
1916:             jalr x18, x18, 0
sub_5:            andi         s4, t1, -529
                  add          a1, gp, a1
                  addi         sp, sp, -24
                  sll          s3, s6, s9
                  slt          t6, t1, zero
                  addi         s10, sp, -409
                  slti         s5, t4, 1935
                  sltu         a3, s10, zero
                  sw           t1, 4(sp)
                  slt          a3, a4, s9
sub_5_0:          jal          t1, 23f
0:                jal          t1, 14f
1:                jal          a5, 15f
2:                jal          t1, 25f
3:                jal          s9, 10f
4:                jal          s5, 18f
5:                jal          s3, 13f
6:                jal          t1, 5b
7:                jal          t1, 22f
8:                jal          a3, 16f
9:                jal          t1, 21f
10:               jal          a2, 1b
11:               jal          tp, 3b
12:               jal          tp, 19f
13:               jal          a5, 11b
14:               jal          t1, 17f
15:               jal          s0, 0b
16:               jal          gp, 6b
17:               jal          s5, 12b
18:               jal          t1, 7b
19:               jal          a5, 2b
20:               jal          t1, 24f
21:               jal          gp, 4b
22:               jal          tp, 26f
23:               jal          t0, 8b
24:               jal          t1, 9b
25:               jal          s9, 20b
26:               srl          s0, s0, t2
                  ori          s2, s9, 178
                  sltiu        tp, s2, 952
                  blt          s7, gp, 3f
3:                srli         zero, t1, 29
                  xori         a3, t2, 1089
                  andi         a7, t3, -261
                  xor          s0, a2, a2
                  nop
                  sra          s7, s2, s7
                  srl          t4, t0, ra
                  srl          s2, t0, s3
                  sltu         s0, s8, s5
                  sll          a4, s10, t3
                  bltu         s0, ra, 14f
14:               blt          s5, s10, 25f
                  bne          s3, a5, 28f
                  xori         s9, s9, 1256
                  beq          s10, a3, 28f
                  sub          tp, s1, s8
                  sll          a5, a4, s4
                  sra          a2, s3, s9
                  srli         s0, t1, 7
                  andi         t1, gp, 1921
                  sltiu        s9, a4, 1590
                  ori          s3, tp, 29
25:               sra          s9, s2, ra
                  bge          s2, t1, 40f
                  xori         s3, t3, -642
28:               blt          t6, s6, 40f
                  bge          a7, t3, 35f
                  srai         s0, a1, 4
                  bgeu         a7, a3, 34f
                  srli         a5, s3, 21
                  srai         a5, s2, 8
34:               lui          s8, 853108
35:               sltiu        t4, s2, -1465
                  xori         s3, a1, 414
                  bgeu         t3, tp, 53f
                  srl          a0, s5, zero
                  srl          a0, sp, t1
40:               bne          s5, a3, 52f
                  or           s4, a3, a6
                  blt          s4, t0, 58f
                  xor          a6, gp, s1
                  sltu         a1, s0, t0
                  and          a0, a6, t6
                  beq          a7, zero, 64f
                  bltu         a6, a0, 50f
                  srli         t5, a2, 8
                  lui          t3, 86123
50:               blt          t2, t4, 57f
                  sll          s1, s10, s7
52:               sll          zero, a6, s8
53:               ori          s1, sp, -460
                  sltiu        a3, s5, -748
                  srli         t0, t2, 27
                  slli         s4, t1, 20
57:               sll          s3, t4, a0
58:               srl          s8, s7, s0
                  add          s5, s5, t5
                  blt          sp, t3, 66f
                  auipc        s1, 816249
                  bne          t5, a2, 65f
                  ori          a1, s0, -589
64:               bne          gp, a5, 71f
65:               bne          zero, t2, 70f
66:               sltu         tp, s1, sp
                  add          a0, sp, ra
                  bltu         t5, t5, 71f
                  slli         s9, a4, 17
70:               addi         zero, s2, 670
71:               xori         a0, t6, 723
                  srl          zero, t6, a2
                  ori          s9, a1, -1273
                  srai         s8, a3, 23
                  andi         s4, t6, 487
                  lw           t1, 4(sp)
                  srl          a6, a6, s1
                  addi         sp, sp, 24
                  or           s1, t3, t1
                  addi         t3, t2, -1011
                  nop
                  add          a3, s0, sp
121:              addi x17, x6, 1
121:              jalr x17, x17, 0
sub_2:            sll          s1, s5, sp
                  srl          a4, s11, t4
                  lui          s9, 577145
                  xor          gp, s3, tp
                  addi         sp, sp, -32
                  ori          s9, s0, 1057
                  sw           t1, 4(sp)
                  srli         s10, a0, 28
                  sltiu        t6, a2, 229
                  slt          a6, a6, s11
                  slt          s8, a0, ra
                  xor          gp, a1, s1
                  blt          t6, zero, sub_2_j6 #branch to jump instr
                  add          zero, s1, a6
                  sltu         t5, t0, a5
                  sltu         s3, s9, s1
                  slt          zero, sp, t4
                  sll          t4, zero, s1
                  srai         a2, s3, 6
sub_2_j6:         jal          t1, sub_3 #jump sub_2 -> sub_3
sub_2_0:          jal          t1, 2f
0:                jal          t1, 6f
1:                jal          t6, 28f
2:                jal          a2, 25f
3:                jal          t1, 7f
4:                jal          a5, 0b
5:                jal          t6, 26f
6:                jal          a6, 3b
7:                jal          t1, 27f
8:                jal          tp, 20f
9:                jal          t1, 22f
10:               jal          a3, 5b
11:               jal          s7, 16f
12:               jal          s10, 4b
13:               jal          a5, 14f
14:               jal          t1, 29f
15:               jal          a5, 13b
16:               jal          t1, 18f
17:               jal          t1, 1b
18:               jal          s5, 17b
19:               jal          tp, 24f
20:               jal          gp, 11b
21:               jal          a3, 8b
22:               jal          t6, 15b
23:               jal          t1, 21b
24:               jal          s9, 9b
25:               jal          t4, 23b
26:               jal          t1, 30f
27:               jal          t1, 19b
28:               jal          t1, 12b
29:               jal          t1, 10b
30:               slt          a4, s7, a0
                  slti         s10, a5, -1593
                  sll          t0, s6, t2
                  slti         a0, t3, 663
                  sub          a6, tp, a0
                  slt          s7, s4, s4
                  bltu         s11, s7, 6f
6:                and          a6, s5, t6
                  bge          s0, a0, 12f
                  and          s0, s10, zero
                  addi         t0, a4, -1567
                  slli         t3, a5, 10
                  srai         tp, gp, 29
12:               slt          a4, s2, s0
                  slti         gp, a3, -521
                  srai         s0, sp, 14
                  and          zero, s11, s2
                  xori         s4, t4, 1757
                  sub          zero, a0, sp
                  bne          s1, tp, 20f
                  add          tp, ra, a3
20:               sra          t3, a5, s11
                  xor          t5, t1, sp
                  addi         s2, s4, -1589
                  auipc        a4, 732057
                  xori         t5, a7, 1660
                  addi         s4, s2, 1899
                  andi         a7, t3, -1872
                  srl          s3, ra, t5
                  bgeu         s1, a7, 44f
                  add          t0, t5, s0
                  slti         s10, a5, -374
                  sub          a4, t0, a6
                  auipc        s7, 737038
                  andi         t5, s10, 238
                  lui          tp, 472166
                  sltu         t2, gp, s3
                  sll          tp, ra, a5
                  slli         a7, a0, 8
                  lui          t2, 731846
                  bne          s2, s2, 55f
                  andi         t1, a7, 1292
                  bgeu         a3, a7, 47f
                  nop
                  ori          gp, s3, 600
44:               or           a2, t4, gp
                  lui          s6, 160715
                  bne          a5, s2, 50f
47:               beq          s7, s3, 49f
                  addi         t6, t4, -1122
49:               sub          s0, s11, s3
50:               slti         s10, a5, -748
                  add          zero, s3, tp
                  add          s10, tp, zero
                  beq          s3, a7, 73f
                  sra          s7, s8, a0
55:               srai         t2, s8, 26
                  xori         a2, s7, 1578
                  xor          t3, a2, a5
                  slli         t3, s7, 5
                  sltu         gp, s9, s5
                  xor          s3, s9, s0
                  sub          a3, t6, t6
                  addi         s5, s8, -904
                  or           t5, s2, s5
                  nop
                  sltiu        a7, s6, 56
                  nop
                  sltiu        s8, t1, 909
                  slt          s5, t5, a3
                  la           a2, sub_4
                  xor          a5, gp, t6
                  srai         t5, s6, 12
                  addi         a2, a2, 662
                  auipc        s0, 545478
                  slti         t2, sp, 279
                  addi         s1, t6, -792
                  sub          s5, a4, s0
                  xori         t4, sp, -1883
                  srli         s3, t4, 30
                  blt          t4, a0, sub_2_j5 #branch to jump instr
                  slt          s3, a0, t4
                  sra          t6, tp, t0
sub_2_j5:         jalr         t1, a2, -662 #jump sub_2 -> sub_4
                  xor          s1, t5, a0
                  nop
                  or           s0, t3, a0
                  sll          tp, a2, a5
73:               andi         s1, s4, -1345
                  srli         s7, a4, 24
                  add          s4, s5, s10
                  beq          a3, t5, 80f
                  srai         t1, s6, 9
                  beq          t2, s8, 83f
                  xor          t1, a2, t5
80:               addi         s8, s1, -962
                  ori          a4, s8, 1286
                  bne          a3, a7, 85f
83:               srl          s9, ra, s1
                  sll          t6, a5, t0
85:               sll          a7, s9, s8
                  addi         t4, t3, -1960
                  lw           t1, 4(sp)
                  addi         sp, sp, 32
                  nop
                  xor          a4, t4, t4
157:              addi x18, x6, 0
157:              jalr x18, x18, 0
sub_3:            nop
                  addi         a1, s3, 429
                  slti         s2, s2, 965
                  auipc        a6, 655765
                  addi         sp, sp, -52
                  sltiu        tp, a3, -1710
                  slt          a6, s9, t1
                  andi         a3, tp, 770
                  sw           t1, 4(sp)
                  slt          s5, t2, ra
                  and          s10, a7, a7
                  sra          s7, tp, s10
sub_3_1:          jal          t1, 7f
0:                jal          s10, 8f
1:                jal          gp, 2f
2:                jal          s5, 9f
3:                jal          gp, 5f
4:                jal          a6, 6f
5:                jal          a6, 12f
6:                jal          t1, 10f
7:                jal          t1, 0b
8:                jal          t1, 4b
9:                jal          t1, 3b
10:               jal          t0, 11f
11:               jal          t1, 1b
12:               lui          s2, 141529
sub_3_3:          jal          t1, 2f
0:                jal          t1, 7f
1:                jal          t2, 5f
2:                jal          t1, 8f
3:                jal          t0, 13f
4:                jal          t1, 10f
5:                jal          s6, 9f
6:                jal          t1, 14f
7:                jal          s1, 15f
8:                jal          t1, 12f
9:                jal          t1, 4b
10:               jal          gp, 6b
11:               jal          s4, 1b
12:               jal          t1, 11b
13:               jal          t1, 0b
14:               jal          t1, 3b
15:               andi         s3, zero, -641
                  srl          a3, t0, gp
                  or           t6, s8, a3
                  srai         s8, t6, 25
                  bge          t6, a2, 23f
                  blt          a3, a5, 10f
                  auipc        a0, 898405
                  slti         s0, sp, 1648
                  bltu         t1, t1, 24f
                  srli         gp, s8, 29
                  sra          zero, zero, t2
10:               nop
                  ori          s5, s6, 653
                  blt          a7, a7, 27f
                  sub          a2, t4, s8
                  sltu         s5, a6, s7
                  xor          t6, sp, s8
                  andi         a5, t0, -1000
                  xori         a5, t1, 178
                  bne          s10, s11, 26f
                  andi         s10, t3, 1158
                  slt          zero, a6, s9
                  add          s4, t2, t4
                  addi         s6, s4, -1591
23:               sll          zero, t4, a7
24:               add          a7, tp, s10
                  bge          t6, s1, 37f
26:               addi         t3, t2, 399
27:               bge          t4, t6, 34f
                  bgeu         a1, t4, 31f
                  and          zero, a0, s2
                  sll          gp, t4, s6
31:               slli         s1, a2, 2
                  sltu         t2, sp, s11
                  nop
34:               sltiu        a2, a2, -1753
                  slt          s10, a2, ra
                  slli         a4, t4, 27
37:               auipc        a3, 744360
                  sra          s6, t5, s8
                  beq          s8, tp, 56f
                  sra          s6, s10, s2
                  bge          a7, t3, 42f
42:               lui          a4, 18184
                  bne          t1, t1, 49f
                  xor          s0, s10, t2
                  auipc        t1, 444780
                  sll          a7, t3, a6
                  sra          gp, s8, zero
                  bge          s4, t3, 61f
49:               ori          t4, tp, 109
                  add          t3, t2, s1
                  and          a6, s6, t0
                  blt          s0, s0, 72f
                  sll          a2, s0, s1
                  srli         t2, t4, 29
                  addi         t1, t2, 1539
56:               lui          t5, 879111
                  bgeu         gp, s4, 74f
                  lui          s2, 966708
                  bne          a5, a6, 70f
                  lui          s6, 1020237
61:               bgeu         s0, t4, 80f
                  or           s3, t1, a2
                  sltiu        s2, s11, -441
                  lui          t0, 963107
                  srai         s2, s10, 10
                  or           t6, s11, s8
                  bne          s3, s3, 81f
                  slti         zero, gp, -1969
                  bge          s1, s8, 88f
70:               bne          t6, s1, 81f
                  andi         s8, a1, -1396
72:               add          a7, zero, a2
                  nop
74:               sub          s5, a0, a3
                  bltu         a5, a6, 85f
                  slti         a6, s4, -521
                  xori         s2, s7, -1392
                  sra          gp, t2, s7
                  sltu         s3, ra, a4
80:               blt          a5, t1, 97f
81:               xor          s0, s10, a5
                  srl          zero, t4, s7
                  blt          s9, zero, 100f
                  add          a5, sp, s9
85:               sltiu        s9, t6, 225
                  xor          s10, s8, s8
                  andi         s6, s11, -928
88:               sltiu        s8, zero, 937
                  ori          a1, t4, 119
                  add          a2, t5, s7
                  sll          gp, a2, s9
                  bgeu         a4, t4, 102f
                  sltiu        zero, t3, 237
                  bgeu         t3, t6, 114f
                  srai         t3, zero, 2
                  bge          a2, s1, 98f
97:               slt          s4, s7, sp
98:               xori         a3, s6, 333
                  slt          t4, a2, a4
100:              sll          a5, a2, t1
                  bge          ra, a1, 119f
102:              bge          t1, s6, 114f
                  sra          a3, s5, a3
                  slli         t4, t5, 0
                  sltiu        a2, t4, -1135
                  sltiu        s5, s10, 2010
                  xori         a5, s4, 1159
                  and          a0, s9, t2
                  beq          s7, zero, 128f
                  bge          t4, s3, 123f
                  sra          a4, tp, ra
                  and          t5, sp, a6
                  auipc        t1, 235579
114:              bltu         a7, ra, 133f
                  blt          s7, s6, 128f
                  andi         s1, gp, 1030
                  slli         s8, s0, 14
sub_3_2:          jal          t1, 8f
0:                jal          t3, 3f
1:                jal          t1, 9f
2:                jal          t1, 12f
3:                jal          s9, 13f
4:                jal          s3, 5f
5:                jal          t1, 7f
6:                jal          s7, 17f
7:                jal          gp, 11f
8:                jal          tp, 2b
9:                jal          s7, 14f
10:               jal          t1, 18f
11:               jal          s3, 15f
12:               jal          gp, 6b
13:               jal          t0, 10b
14:               jal          t1, 4b
15:               jal          gp, 0b
16:               jal          t1, 1b
17:               jal          a4, 16b
18:               jal          t1, 19f
19:               andi         a0, s9, 1402
                  auipc        t3, 27784
119:              sltu         s0, a4, zero
                  sltu         s6, a6, a6
                  sll          a2, ra, tp
                  slli         t4, t2, 14
sub_3_0:          jal          t1, 0f
0:                jal          t0, 6f
1:                jal          s7, 9f
2:                jal          t1, 10f
3:                jal          t1, 1b
4:                jal          t1, 7f
5:                jal          gp, 4b
6:                jal          t1, 8f
7:                jal          t2, 2b
8:                jal          t6, 3b
9:                jal          t1, 5b
10:               auipc        s9, 37927
123:              sub          a0, s2, s5
                  addi         s3, ra, 1702
                  slti         s4, s4, 724
                  lui          a6, 1010562
                  bltu         sp, t6, 144f
128:              sll          s7, t1, gp
                  addi         s6, zero, 427
                  bne          s4, a0, 136f
                  xori         s0, s3, 1030
                  bltu         gp, s10, 142f
133:              nop
                  slti         a4, gp, 537
                  add          s10, tp, s5
136:              blt          t0, t6, 153f
                  bge          t2, s5, 143f
                  slt          s8, t2, s0
                  srl          a1, s6, s3
                  srai         s4, a7, 23
                  bltu         a0, a3, 160f
142:              blt          s11, s6, 159f
143:              ori          s1, a7, -1014
144:              slti         s2, a0, -1096
                  beq          s11, s2, 163f
                  ori          t1, t2, 1473
                  srl          t2, s2, s7
                  sra          a2, gp, a2
                  beq          a3, sp, 164f
                  xori         s0, s3, -67
                  bge          s5, a6, 170f
                  srli         t5, sp, 16
153:              slti         t0, s2, -807
                  xori         s4, s0, 885
                  slti         s0, t4, -1669
                  lui          a6, 288206
                  and          t0, s5, a5
                  or           t2, gp, t4
159:              sll          t6, a1, t5
160:              bge          s9, t3, 177f
                  slti         s9, s9, -1990
                  ori          t0, s6, -24
163:              ori          t1, t3, -576
164:              bltu         s0, s1, 172f
                  bne          s2, tp, 185f
                  bgeu         a4, a5, 183f
                  slt          s4, s1, t2
                  srli         s8, t6, 5
                  bne          s7, a7, 189f
170:              or           s1, t1, s5
                  auipc        a5, 497417
172:              srl          s4, s11, s6
                  bgeu         s2, s7, 174f
174:              nop
                  sltiu        s9, t3, -701
                  slli         a3, a6, 27
177:              and          a1, a0, s9
                  xor          s2, s7, s1
                  srl          s2, ra, a5
                  srai         s8, s9, 1
                  or           s10, a2, t3
                  bgeu         s9, s0, 193f
183:              xori         s6, t1, 893
                  add          t5, s0, t0
185:              xor          zero, s10, t2
                  srl          s9, zero, t5
                  xori         s2, t1, -611
                  andi         t6, gp, -392
189:              blt          s8, s10, 201f
                  add          a4, a3, t0
                  sra          zero, t4, s7
                  blt          t2, a7, 201f
193:              blt          s11, sp, 201f
                  slli         t3, s6, 3
                  slti         a5, a7, -329
                  blt          a1, t1, 201f
                  sra          a7, t6, t2
                  bgeu         s1, t0, 201f
                  srl          s2, s8, tp
                  slti         a2, s2, -4
201:              or           s9, zero, s1
                  lw           t1, 4(sp)
                  addi         sp, sp, 52
                  sub          tp, zero, a4
                  slt          s6, s6, ra
                  slti         s9, t3, -2013
283:              addi x28, x6, 1
283:              jalr x28, x28, 0
sub_4:            addi         sp, sp, -52
                  and          a1, s4, a0
                  sw           t1, 4(sp)
                  and          t2, gp, a3
                  sltu         s3, a0, a6
                  slti         a4, t2, -275
                  sll          a2, a2, s8
                  sltiu        t5, t5, -1355
                  la           a0, sub_5
                  addi         a0, a0, 1021
                  slti         a5, s4, 1648
                  lui          t4, 356953
                  and          t4, a3, t5
                  beq          sp, s7, sub_4_j7 #branch to jump instr
                  slt          s1, a1, s1
                  sltiu        a4, gp, -867
sub_4_j7:         jalr         t1, a0, -1020 #jump sub_4 -> sub_5
                  and          a6, s5, a1
                  bgeu         s1, a2, 14f
                  bltu         s3, a4, 14f
                  lui          s0, 111485
                  srai         s5, s9, 29
                  bgeu         s4, a5, 14f
                  xori         gp, zero, -1361
                  lui          a0, 369187
                  andi         t1, s0, 711
                  blt          a2, s8, 12f
                  bge          t1, a5, 12f
                  auipc        s0, 958050
12:               bge          t2, s8, 14f
                  xor          zero, t3, ra
14:               add          t1, a2, a4
                  lw           t1, 4(sp)
                  xor          s2, a4, s6
                  addi         sp, sp, 52
                  addi         t0, a7, -647
                  nop
                  add          a2, t4, s0
38:               addi x14, x6, 1
38:               jalr x14, x14, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x27, x2, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x31, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x31, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x31, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x31, x28, ecall_handler
                  li x28, 0x1
                  beq x31, x28, instr_fault_handler
                  li x28, 0x5
                  beq x31, x28, load_fault_handler
                  li x28, 0x7
                  beq x31, x28, store_fault_handler
                  li x28, 0xc
                  beq x31, x28, pt_fault_handler
                  li x28, 0xd
                  beq x31, x28, pt_fault_handler
                  li x28, 0xf
                  beq x31, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x2, x27, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x27, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x27, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x2, x27, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x2, x27, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x2, x27, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
