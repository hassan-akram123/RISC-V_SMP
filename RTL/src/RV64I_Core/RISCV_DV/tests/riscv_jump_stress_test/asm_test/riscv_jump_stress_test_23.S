.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x70ce9ffb
                  li x2, 0xf32006a6
                  li x3, 0x2
                  li x4, 0x0
                  li x5, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0xb
                  li x10, 0x80000000
                  li x11, 0xf
                  li x12, 0x9a6ca1ca
                  li x13, 0x4
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xfac45813
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xa
                  li x21, 0xe37f2988
                  li x22, 0xd
                  li x23, 0x0
                  li x24, 0xb
                  li x25, 0xfd1110fd
                  li x26, 0xf4383fef
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xf27d10f8
                  li x30, 0x0
                  li x31, 0x8e182071
                  la x6, user_stack_end
main:             jal          a7, 2f
0:                jal          ra, 1f
1:                jal          ra, 10f
2:                jal          ra, 7f
3:                jal          t0, 12f
4:                jal          ra, 11f
5:                jal          ra, 3b
6:                jal          ra, 8f
7:                jal          ra, 9f
8:                jal          t4, 0b
9:                jal          ra, 4b
10:               jal          t0, 5b
11:               jal          ra, 6b
12:               sll          s10, zero, a1
main_24:          jal          a7, 4f
0:                jal          ra, 13f
1:                jal          s3, 12f
2:                jal          s3, 8f
3:                jal          ra, 0b
4:                jal          ra, 6f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          t5, 14f
8:                jal          gp, 15f
9:                jal          t3, 2b
10:               jal          gp, 11f
11:               jal          a2, 9b
12:               jal          ra, 16f
13:               jal          ra, 7b
14:               jal          t5, 1b
15:               jal          a7, 17f
16:               jal          ra, 10b
17:               lui          t3, 552049
main_21:          jal          a7, 15f
0:                jal          ra, 13f
1:                jal          gp, 6f
2:                jal          ra, 0b
3:                jal          ra, 5f
4:                jal          a1, 12f
5:                jal          t6, 8f
6:                jal          a7, 3b
7:                jal          ra, 14f
8:                jal          ra, 2b
9:                jal          s11, 4b
10:               jal          t0, 9b
11:               jal          t5, 7b
12:               jal          ra, 17f
13:               jal          ra, 10b
14:               jal          ra, 16f
15:               jal          t2, 11b
16:               jal          ra, 1b
17:               xor          s2, s9, a1
main_7:           jal          a7, 14f
0:                jal          ra, 6f
1:                jal          t0, 9f
2:                jal          ra, 10f
3:                jal          ra, 2b
4:                jal          ra, 13f
5:                jal          t0, 15f
6:                jal          s3, 11f
7:                jal          ra, 3b
8:                jal          a6, 0b
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          ra, 7b
12:               jal          s11, 8b
13:               jal          ra, 1b
14:               jal          ra, 4b
15:               ori          gp, s6, 261
main_20:          jal          a7, 4f
0:                jal          ra, 5f
1:                jal          s0, 0b
2:                jal          ra, 1b
3:                jal          s9, 13f
4:                jal          ra, 11f
5:                jal          ra, 6f
6:                jal          ra, 17f
7:                jal          ra, 16f
8:                jal          ra, 9f
9:                jal          t5, 15f
10:               jal          s6, 2b
11:               jal          ra, 3b
12:               jal          ra, 10b
13:               jal          t5, 7b
14:               jal          ra, 12b
15:               jal          ra, 14b
16:               jal          ra, 8b
17:               xori         s8, a1, 771
main_18:          jal          a7, 17f
0:                jal          ra, 3f
1:                jal          ra, 19f
2:                jal          s5, 9f
3:                jal          s4, 16f
4:                jal          s3, 1b
5:                jal          ra, 4b
6:                jal          t0, 12f
7:                jal          ra, 24f
8:                jal          s1, 21f
9:                jal          s11, 23f
10:               jal          s8, 0b
11:               jal          ra, 25f
12:               jal          t6, 22f
13:               jal          gp, 2b
14:               jal          ra, 13b
15:               jal          ra, 5b
16:               jal          s4, 7b
17:               jal          ra, 20f
18:               jal          ra, 6b
19:               jal          a1, 8b
20:               jal          ra, 18b
21:               jal          s11, 14b
22:               jal          ra, 15b
23:               jal          s4, 10b
24:               jal          a3, 11b
25:               nop
main_1:           jal          a7, 0f
0:                jal          ra, 11f
1:                jal          s10, 8f
2:                jal          ra, 4f
3:                jal          t0, 1b
4:                jal          ra, 7f
5:                jal          ra, 17f
6:                jal          t0, 12f
7:                jal          t5, 5b
8:                jal          sp, 13f
9:                jal          ra, 14f
10:               jal          a1, 2b
11:               jal          ra, 6b
12:               jal          ra, 16f
13:               jal          ra, 9b
14:               jal          gp, 15f
15:               jal          s7, 10b
16:               jal          t0, 3b
17:               slt          s8, zero, t5
main_0:           jal          a7, 6f
0:                jal          ra, 16f
1:                jal          t5, 13f
2:                jal          ra, 7f
3:                jal          ra, 24f
4:                jal          ra, 19f
5:                jal          ra, 23f
6:                jal          ra, 15f
7:                jal          ra, 26f
8:                jal          s6, 27f
9:                jal          s1, 0b
10:               jal          a7, 18f
11:               jal          ra, 14f
12:               jal          a5, 20f
13:               jal          ra, 22f
14:               jal          ra, 2b
15:               jal          ra, 1b
16:               jal          t0, 17f
17:               jal          ra, 8b
18:               jal          ra, 3b
19:               jal          ra, 10b
20:               jal          ra, 25f
21:               jal          tp, 11b
22:               jal          ra, 5b
23:               jal          ra, 21b
24:               jal          a5, 12b
25:               jal          ra, 9b
26:               jal          s11, 4b
27:               andi         s8, a5, 871
main_11:          jal          a7, 1f
0:                jal          ra, 15f
1:                jal          ra, 12f
2:                jal          ra, 14f
3:                jal          ra, 19f
4:                jal          t5, 7f
5:                jal          a1, 9f
6:                jal          ra, 3b
7:                jal          ra, 28f
8:                jal          ra, 20f
9:                jal          ra, 6b
10:               jal          ra, 5b
11:               jal          t3, 21f
12:               jal          sp, 23f
13:               jal          ra, 22f
14:               jal          ra, 25f
15:               jal          s9, 26f
16:               jal          ra, 24f
17:               jal          t0, 2b
18:               jal          ra, 16b
19:               jal          ra, 18b
20:               jal          sp, 4b
21:               jal          ra, 8b
22:               jal          s6, 17b
23:               jal          ra, 27f
24:               jal          t0, 13b
25:               jal          ra, 0b
26:               jal          gp, 11b
27:               jal          t4, 10b
28:               xori         s1, s7, 1120
main_8:           jal          a7, 7f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          ra, 19f
3:                jal          sp, 5f
4:                jal          t5, 22f
5:                jal          s4, 23f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          ra, 20f
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          ra, 15f
12:               jal          s3, 26f
13:               jal          ra, 18f
14:               jal          ra, 17f
15:               jal          s0, 21f
16:               jal          t0, 0b
17:               jal          ra, 2b
18:               jal          tp, 24f
19:               jal          ra, 1b
20:               jal          ra, 25f
21:               jal          ra, 16b
22:               jal          ra, 9b
23:               jal          ra, 13b
24:               jal          ra, 12b
25:               jal          ra, 14b
26:               andi         t3, ra, -1170
main_15:          jal          a7, 13f
0:                jal          t0, 4f
1:                jal          ra, 10f
2:                jal          ra, 11f
3:                jal          ra, 7f
4:                jal          sp, 2b
5:                jal          t0, 12f
6:                jal          ra, 15f
7:                jal          ra, 14f
8:                jal          tp, 16f
9:                jal          ra, 3b
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          ra, 17f
13:               jal          a2, 0b
14:               jal          ra, 8b
15:               jal          ra, 1b
16:               jal          ra, 6b
17:               or           s10, s7, s11
main_9:           jal          a7, 7f
0:                jal          ra, 18f
1:                jal          ra, 0b
2:                jal          ra, 8f
3:                jal          ra, 11f
4:                jal          ra, 2b
5:                jal          ra, 15f
6:                jal          gp, 24f
7:                jal          ra, 17f
8:                jal          ra, 6b
9:                jal          s1, 4b
10:               jal          ra, 13f
11:               jal          ra, 20f
12:               jal          ra, 1b
13:               jal          a1, 12b
14:               jal          t6, 23f
15:               jal          t0, 14b
16:               jal          ra, 10b
17:               jal          ra, 5b
18:               jal          ra, 22f
19:               jal          ra, 3b
20:               jal          t0, 21f
21:               jal          ra, 9b
22:               jal          ra, 19b
23:               jal          ra, 16b
24:               sll          a2, t4, gp
main_23:          jal          a7, 17f
0:                jal          ra, 5f
1:                jal          ra, 22f
2:                jal          s5, 15f
3:                jal          ra, 8f
4:                jal          ra, 23f
5:                jal          ra, 16f
6:                jal          gp, 12f
7:                jal          ra, 10f
8:                jal          ra, 4b
9:                jal          t2, 13f
10:               jal          ra, 0b
11:               jal          ra, 9b
12:               jal          a2, 2b
13:               jal          s10, 14f
14:               jal          a3, 18f
15:               jal          t0, 1b
16:               jal          ra, 6b
17:               jal          ra, 11b
18:               jal          ra, 20f
19:               jal          ra, 3b
20:               jal          a5, 7b
21:               jal          ra, 19b
22:               jal          ra, 21b
23:               sub          s5, zero, s0
main_27:          jal          a7, 4f
0:                jal          ra, 12f
1:                jal          ra, 10f
2:                jal          ra, 27f
3:                jal          a6, 23f
4:                jal          t6, 21f
5:                jal          ra, 13f
6:                jal          ra, 20f
7:                jal          a2, 17f
8:                jal          ra, 7b
9:                jal          ra, 26f
10:               jal          s2, 16f
11:               jal          ra, 5b
12:               jal          ra, 1b
13:               jal          t6, 3b
14:               jal          ra, 2b
15:               jal          sp, 24f
16:               jal          ra, 9b
17:               jal          ra, 6b
18:               jal          ra, 19f
19:               jal          ra, 8b
20:               jal          ra, 22f
21:               jal          t0, 11b
22:               jal          ra, 15b
23:               jal          s3, 25f
24:               jal          a3, 0b
25:               jal          ra, 18b
26:               jal          ra, 14b
27:               slli         gp, gp, 9
main_6:           jal          a7, 12f
0:                jal          ra, 13f
1:                jal          gp, 7f
2:                jal          a2, 9f
3:                jal          ra, 6f
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          s11, 2b
7:                jal          ra, 5b
8:                jal          ra, 10f
9:                jal          ra, 0b
10:               jal          ra, 4b
11:               jal          a7, 8b
12:               jal          ra, 1b
13:               addi         a7, s7, -320
main_26:          jal          a7, 7f
0:                jal          t0, 23f
1:                jal          ra, 6f
2:                jal          ra, 21f
3:                jal          ra, 4f
4:                jal          a5, 9f
5:                jal          s8, 20f
6:                jal          ra, 12f
7:                jal          tp, 3b
8:                jal          ra, 5b
9:                jal          s10, 15f
10:               jal          s5, 16f
11:               jal          ra, 13f
12:               jal          a2, 2b
13:               jal          ra, 18f
14:               jal          ra, 11b
15:               jal          ra, 8b
16:               jal          ra, 0b
17:               jal          ra, 22f
18:               jal          ra, 1b
19:               jal          a1, 10b
20:               jal          sp, 17b
21:               jal          t0, 19b
22:               jal          ra, 14b
23:               auipc        s3, 66044
main_16:          jal          a7, 20f
0:                jal          ra, 18f
1:                jal          ra, 7f
2:                jal          tp, 25f
3:                jal          tp, 15f
4:                jal          ra, 10f
5:                jal          s8, 12f
6:                jal          a5, 21f
7:                jal          ra, 26f
8:                jal          ra, 28f
9:                jal          ra, 8b
10:               jal          s4, 0b
11:               jal          sp, 3b
12:               jal          ra, 22f
13:               jal          ra, 9b
14:               jal          a1, 29f
15:               jal          ra, 23f
16:               jal          ra, 1b
17:               jal          ra, 6b
18:               jal          ra, 2b
19:               jal          a1, 17b
20:               jal          ra, 16b
21:               jal          ra, 11b
22:               jal          ra, 30f
23:               jal          ra, 13b
24:               jal          a6, 14b
25:               jal          ra, 19b
26:               jal          gp, 27f
27:               jal          sp, 4b
28:               jal          ra, 24b
29:               jal          t6, 5b
30:               xor          a2, s6, t5
main_4:           jal          a7, 6f
0:                jal          ra, 19f
1:                jal          ra, 2f
2:                jal          ra, 17f
3:                jal          ra, 13f
4:                jal          ra, 11f
5:                jal          sp, 20f
6:                jal          ra, 1b
7:                jal          ra, 14f
8:                jal          ra, 22f
9:                jal          ra, 16f
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          gp, 18f
13:               jal          ra, 9b
14:               jal          ra, 0b
15:               jal          t0, 4b
16:               jal          ra, 15b
17:               jal          ra, 21f
18:               jal          ra, 10b
19:               jal          a3, 24f
20:               jal          ra, 12b
21:               jal          ra, 23f
22:               jal          s4, 7b
23:               jal          s2, 5b
24:               slli         t6, ra, 5
                  srli         t4, s7, 30
                  sub          a1, s2, s3
                  sltu         s0, t0, s10
                  sub          s4, a7, s8
                  addi         t4, s5, 50
                  sltu         sp, a1, t1
                  slti         s0, a1, 31
                  bne          t4, a5, 22f
                  or           s11, a4, s7
                  sltiu        a2, s8, -1493
                  bltu         s3, s11, 24f
                  beq          ra, t0, 21f
                  add          s9, s10, t0
                  slti         a1, a2, -1240
                  bltu         s0, s3, 24f
                  sll          s0, s9, s7
                  nop
                  srli         s9, s8, 0
                  bgeu         t6, s10, 33f
                  beq          t0, t5, 32f
                  sub          s0, a2, a0
21:               beq          a5, t2, 34f
22:               andi         s3, s2, -921
                  slli         ra, s1, 28
24:               slt          s1, s2, a3
                  add          t2, a2, s3
                  slti         s11, tp, 448
                  slti         s10, a4, 1386
                  bge          s8, a3, 32f
                  srai         s5, a6, 20
                  srli         tp, a2, 11
                  srli         a6, gp, 14
32:               xor          zero, t0, s6
33:               addi         s4, s8, -735
34:               srai         t0, a5, 12
                  nop
                  lui          s1, 973758
                  slli         s2, s4, 28
                  nop
                  sra          a5, a7, tp
                  and          s6, s9, s3
                  bltu         a0, a7, 44f
                  addi         s9, a6, -124
                  lui          sp, 899381
44:               blt          s8, a6, 47f
                  srai         a2, s1, 12
                  xor          t3, t2, tp
47:               add          s2, s2, t4
                  bne          s10, a3, 51f
                  add          s2, a5, s3
                  srli         s5, s7, 22
51:               lui          a1, 842087
                  blt          a5, t0, 63f
                  srai         sp, s8, 4
                  xori         s10, s7, 1860
                  auipc        t5, 495781
                  sra          sp, s9, t2
                  bltu         t6, a4, 76f
                  bgeu         s3, sp, 59f
59:               bgeu         t3, s6, 73f
                  sra          a1, t0, ra
                  bne          t2, t5, 63f
                  andi         a2, t5, 43
63:               beq          t4, s2, 77f
                  srli         t2, s2, 20
                  sub          zero, t2, s3
                  addi         s10, s2, 100
                  beq          s4, a3, 84f
                  sltiu        t3, s4, 577
                  slt          s11, s6, ra
                  bltu         a5, s11, 74f
                  sll          s7, a0, s9
                  blt          s8, zero, 92f
73:               xori         s1, ra, 1933
74:               bgeu         s3, zero, 77f
                  bgeu         s4, s3, 94f
76:               bge          a4, t3, 84f
77:               or           t4, s1, ra
                  addi         t0, s0, 647
                  and          t4, tp, zero
                  sltiu        t4, s5, -1174
                  sltiu        t5, a7, -1745
                  auipc        a5, 1042741
                  or           s1, s2, t5
84:               srli         s2, t5, 31
                  auipc        a1, 1007609
                  nop
                  sltiu        tp, a1, 487
                  add          ra, a5, s4
                  slti         s7, s0, 1740
                  beq          s8, tp, 91f
91:               slli         s0, t3, 26
92:               sll          t3, s0, s3
                  and          t2, tp, t4
94:               sra          s10, t5, a5
                  add          t2, t0, a5
                  slt          s10, a0, s2
                  srli         s4, zero, 30
                  or           t0, s8, sp
                  lui          t0, 782724
                  slt          s11, sp, t5
                  auipc        t4, 920880
                  bgeu         s6, a0, 121f
                  blt          s2, a5, 109f
                  xori         s9, t3, 1901
                  and          a5, t3, tp
                  srli         zero, a1, 17
                  and          t0, a3, s0
                  addi         t2, t2, 1330
109:              bltu         zero, s0, 127f
                  bne          s4, t1, 114f
                  sltu         tp, a7, s0
                  lui          s10, 803418
                  sltu         a7, ra, a0
114:              sll          s7, s0, s4
                  slt          s7, a3, a5
                  sll          s10, a7, zero
                  srli         a1, sp, 2
                  blt          s8, s9, 134f
                  slt          a7, a5, t4
                  ori          tp, s4, -879
121:              slli         t3, t5, 1
                  lui          tp, 825357
                  nop
                  slli         sp, t2, 7
                  and          s5, gp, a3
                  sub          a1, gp, a5
127:              sra          s11, t1, s10
                  srl          s8, t1, s0
                  bgeu         s1, s5, 147f
                  add          s11, s8, t3
                  srai         s1, s5, 25
                  beq          ra, a7, 145f
                  and          s6, a2, s11
134:              bltu         s3, t6, 135f
135:              bltu         s5, tp, 138f
                  nop
                  ori          zero, t0, 386
138:              auipc        s5, 517330
                  sltu         gp, s6, a1
                  sub          s11, t0, ra
                  slli         s3, zero, 2
                  sra          t5, ra, s6
                  sra          s0, s11, t1
                  bge          t0, s11, 159f
145:              bltu         t5, a0, 146f
146:              slli         s4, s1, 8
147:              sub          zero, s7, s0
                  and          t2, s7, ra
                  slti         a2, a7, -1810
                  slt          t6, t1, s2
                  blt          s2, s2, 170f
                  bltu         tp, ra, 156f
                  srli         s8, a6, 21
                  slt          gp, s8, a4
                  slt          t6, t5, gp
156:              andi         tp, s7, -1669
                  addi         s4, t4, 281
                  beq          a7, gp, 164f
159:              xor          t0, t2, t1
                  lui          a7, 96814
                  add          a5, s7, sp
                  add          a7, a6, ra
                  bge          t1, s9, 181f
164:              srl          t6, s9, a6
                  srai         a3, s8, 22
                  add          a3, zero, zero
                  add          a1, t5, s11
                  blt          s2, t4, 181f
                  xori         a3, t2, -939
170:              srai         a3, t4, 22
                  addi         s1, a7, -1383
                  or           tp, s2, a1
                  sltu         t4, a4, s10
                  sra          s4, s4, t6
                  srl          s3, t5, zero
                  or           tp, t2, t4
                  bltu         sp, tp, 181f
                  slt          s0, t1, t0
                  nop
                  slti         s0, s5, -250
181:              sll          a1, a2, a3
                  or           s3, s7, zero
                  sub          s1, sp, gp
                  add          t4, a3, s5
                  srai         tp, a2, 9
                  srli         s6, sp, 4
                  srli         s10, s2, 27
                  sltiu        t3, sp, 974
                  nop
                  xori         a5, s10, 838
                  beq          t5, s2, 210f
                  sltiu        s11, sp, 384
                  sltiu        s1, s8, 12
                  add          a6, t4, t2
                  add          a5, s4, s4
                  sltiu        tp, a2, -559
                  auipc        t2, 790134
                  slli         t5, s5, 26
                  sltiu        t3, s5, -427
                  xori         gp, t4, -833
                  xor          s2, s4, s5
                  and          a5, a6, t2
                  bne          a1, t4, 213f
                  sra          s4, s8, a2
                  bge          tp, t1, 208f
                  srli         s11, a5, 26
                  ori          t3, a5, -1026
208:              lui          a2, 948988
                  slti         s8, t4, 1936
210:              add          t6, s4, s0
                  sub          s0, s11, s5
                  bge          t3, a0, 232f
213:              addi         t3, s4, 95
                  lui          s0, 743878
                  srai         t4, t5, 14
                  srli         t2, s8, 11
                  srli         s2, t5, 16
                  bltu         a6, t2, 232f
                  andi         s10, gp, -1142
                  slti         tp, t2, -1997
                  sltiu        s0, zero, -834
                  ori          s2, zero, 1526
                  slt          s4, t1, t1
                  sub          a3, s1, a1
                  srli         s1, t0, 20
                  nop
                  srai         t0, sp, 23
                  slti         a7, t0, 1746
                  addi         s3, t6, -1055
                  bltu         s7, t0, 248f
                  bltu         s0, s2, 239f
232:              and          s9, t3, a5
                  xor          s6, s4, a3
                  srl          zero, s3, a7
                  addi         s5, a3, -1097
                  srai         s8, s9, 31
                  bltu         s6, s1, 239f
                  slti         s11, s10, -1456
239:              xori         gp, s3, 1678
                  slti         t2, s7, 1992
                  srai         zero, t4, 13
                  slli         s3, t3, 22
                  slli         a7, tp, 27
                  bltu         t5, s3, 248f
                  sll          s2, s11, s6
                  andi         t5, t1, -986
                  sltu         s10, a4, a0
248:              srli         t5, t2, 11
                  bltu         s11, a0, 263f
                  srl          t2, s6, ra
                  bne          t2, s7, 267f
                  bltu         t4, zero, 263f
                  addi         s0, s5, 756
                  bne          a6, a3, 257f
                  slti         tp, a2, -139
                  lui          s2, 159184
257:              add          s11, a0, s1
                  slli         tp, a0, 8
                  xor          ra, s4, a3
                  slli         ra, tp, 19
                  add          t5, s7, t3
                  nop
263:              lui          t6, 225996
                  srl          t6, t6, s7
                  and          s1, t2, t2
                  bge          a3, a5, 280f
267:              and          gp, t0, s8
                  slli         s7, a1, 19
                  xor          t0, ra, s0
                  beq          a3, a2, 285f
                  sltu         s5, s4, s10
                  srl          s0, a3, a7
                  and          gp, s1, a0
                  blt          zero, s6, 291f
                  srl          t2, t0, sp
                  addi         s4, a7, -1690
                  addi         s4, t0, -1711
                  slli         s4, a0, 28
                  and          t6, s2, a1
280:              and          s4, s0, gp
                  and          a5, a0, tp
                  srli         s6, s10, 16
                  nop
                  and          s1, t5, t0
285:              slti         t6, t4, -703
                  addi         t4, t3, -1362
                  srl          s8, a7, a0
                  sub          a6, zero, s4
                  sra          sp, t2, s5
                  xor          t6, s1, t2
291:              sra          t0, t6, a5
                  auipc        t2, 665187
                  bgeu         ra, s10, 312f
                  or           tp, s8, t6
                  and          s2, a0, a3
                  ori          s4, s6, 497
                  xori         s5, t6, -542
                  srl          s7, s11, s7
                  sub          gp, t2, s5
                  bne          a3, a7, 303f
                  srai         ra, s8, 18
                  slli         sp, a4, 14
303:              andi         s0, a5, 1582
                  slti         s1, gp, -974
                  sltu         s0, zero, a3
                  sll          s2, s5, t0
                  nop
                  slt          s3, t2, ra
                  srai         s3, ra, 19
                  bgeu         s7, a6, 320f
                  nop
312:              blt          a6, a6, 320f
                  srli         ra, a1, 1
                  and          s9, s7, s10
                  nop
                  srai         t6, s9, 21
                  sltiu        s2, a0, -938
                  srai         t0, t5, 17
                  bge          s4, s9, 333f
320:              sra          s10, t0, s11
                  and          a2, s3, t1
                  sltiu        a5, s11, 1212
                  nop
                  sltu         a1, sp, tp
                  srai         gp, sp, 20
                  srai         sp, s10, 10
                  nop
                  srl          s11, gp, s5
                  lui          t4, 862457
                  ori          s1, t3, 76
                  bge          a3, a4, 342f
                  blt          a0, s4, 352f
333:              xori         ra, t1, -1780
                  sra          s4, t3, a2
                  sll          s0, s6, t0
                  add          s10, s0, t6
                  ori          s3, tp, 1069
                  sltu         s7, s10, a4
                  slli         t4, t6, 28
                  sltu         a7, s6, a5
                  lui          s7, 132778
342:              sub          a1, tp, a1
                  andi         a2, s8, 453
                  sltiu        tp, a6, 154
                  add          t2, s2, a3
                  srai         s9, a2, 8
                  addi         gp, t5, 570
                  add          a2, t1, t3
                  sltu         a6, gp, t3
                  bgeu         s11, t1, 354f
                  blt          a6, sp, 364f
352:              srl          s3, sp, a7
                  ori          a3, s5, -237
354:              auipc        t2, 537786
                  sll          t4, a7, a5
                  srl          a7, s5, gp
                  sub          s0, s4, t1
                  nop
                  beq          s1, s3, 361f
                  auipc        s6, 816845
361:              sub          s6, s3, s5
                  srl          a5, s3, s1
                  srl          a5, t3, a5
364:              bge          sp, gp, 381f
main_5:           jal          a7, 1f
0:                jal          ra, 23f
1:                jal          ra, 24f
2:                jal          ra, 21f
3:                jal          ra, 11f
4:                jal          a3, 30f
5:                jal          ra, 17f
6:                jal          ra, 26f
7:                jal          ra, 28f
8:                jal          s10, 25f
9:                jal          ra, 8b
10:               jal          a1, 3b
11:               jal          gp, 15f
12:               jal          sp, 29f
13:               jal          sp, 4b
14:               jal          s3, 7b
15:               jal          ra, 16f
16:               jal          s6, 6b
17:               jal          s5, 18f
18:               jal          s10, 10b
19:               jal          ra, 2b
20:               jal          t6, 27f
21:               jal          t3, 13b
22:               jal          ra, 0b
23:               jal          ra, 19b
24:               jal          sp, 9b
25:               jal          ra, 20b
26:               jal          ra, 22b
27:               jal          a6, 14b
28:               jal          t0, 12b
29:               jal          ra, 5b
30:               sltu         s0, a6, s11
                  sra          s11, a0, gp
                  sltiu        t4, a2, 587
                  or           s6, t2, a5
                  srai         gp, s1, 9
                  xor          t6, t3, a2
                  and          s7, a2, s7
                  beq          s10, t0, 374f
                  sll          s5, zero, a6
                  slt          t5, a1, tp
374:              bge          a7, a2, 393f
                  bgeu         s11, a3, 388f
                  sll          a7, a5, a2
                  slti         t5, a0, -94
                  srai         s2, a4, 31
                  blt          a2, t6, 382f
                  sll          zero, s0, s10
381:              bltu         t6, s4, 387f
382:              auipc        gp, 626897
                  sltiu        s1, s0, -1930
                  andi         ra, t0, 1931
                  slt          a1, a4, a0
                  blt          s1, s9, 396f
387:              slli         t2, s7, 14
388:              xor          a3, gp, sp
                  xor          s4, s4, t5
                  blt          zero, a6, 394f
                  add          t6, s2, a7
                  and          t3, a5, sp
393:              and          s10, t4, s7
394:              beq          sp, a7, 409f
                  srl          s1, t2, tp
396:              beq          a7, s10, 415f
                  slt          sp, s8, a1
                  bltu         s11, a4, 408f
                  add          s3, a4, s5
                  beq          t0, a1, 415f
                  bge          s1, s0, 419f
                  srl          t2, a6, t4
                  auipc        s8, 305626
                  sub          a3, tp, gp
                  srli         sp, a0, 13
                  or           a3, a1, sp
                  srai         s5, ra, 19
408:              xori         s6, a6, -1942
409:              bne          a6, t5, 425f
                  lui          a3, 382157
                  slti         sp, s5, -1699
                  ori          t0, a2, -244
                  beq          s10, gp, 416f
                  bgeu         t6, t6, 417f
415:              or           t3, tp, a7
416:              sll          s0, s4, a5
417:              slli         t5, a2, 12
                  and          t2, a5, s7
419:              sltu         t0, ra, s10
                  bne          t1, t4, 421f
main_17:          jal          a7, 12f
0:                jal          ra, 11f
1:                jal          tp, 4f
2:                jal          ra, 3f
3:                jal          ra, 16f
4:                jal          ra, 7f
5:                jal          gp, 15f
6:                jal          ra, 2b
7:                jal          ra, 13f
8:                jal          a5, 5b
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               jal          ra, 6b
12:               jal          ra, 14f
13:               jal          t0, 8b
14:               jal          a6, 9b
15:               jal          t0, 10b
16:               ori          a5, ra, 1403
421:              and          s1, t2, t1
                  bltu         s8, gp, 440f
                  or           s4, s9, a5
                  xori         sp, s3, -803
425:              bltu         s6, s2, 426f
426:              addi         zero, s11, 1486
                  nop
                  xori         a3, s0, 798
                  sub          s5, tp, s2
                  or           t2, s2, a2
                  blt          ra, t4, 450f
                  add          s3, s4, t2
                  or           t0, s1, a2
                  beq          s8, a4, 448f
                  xor          s1, s3, a0
                  add          s9, s0, s5
                  slti         s4, s11, -1459
                  sra          t4, s5, sp
                  sltiu        a5, t4, 1052
440:              sub          a6, t3, s2
                  slti         tp, ra, -30
                  slti         zero, s10, -1720
                  slti         t2, t4, 1789
                  xor          a3, a2, a5
                  slti         zero, ra, -347
                  auipc        a6, 996590
                  bge          a3, a7, 451f
448:              and          t6, s7, s4
                  sll          t3, s5, t2
450:              sltu         s9, s1, a3
451:              xor          tp, t3, a3
                  sltu         t5, s8, s1
                  bltu         t5, tp, 467f
                  slt          zero, s7, s1
                  slli         t3, s9, 1
                  xori         s0, a2, -769
                  sll          s0, s5, s10
                  sra          a6, s11, zero
                  xori         t4, a6, -1504
                  bne          a4, s8, 471f
                  srli         s1, s5, 20
                  bge          ra, gp, 478f
                  nop
                  bge          gp, a6, 479f
                  srli         ra, s11, 26
                  sltiu        t2, a5, 384
467:              nop
                  srli         t5, a7, 6
                  bgeu         ra, t5, 477f
                  ori          s8, s7, 776
471:              xor          s1, ra, a4
                  srai         t6, s4, 10
                  bge          a0, ra, 474f
474:              blt          s9, t3, 475f
475:              srai         s11, t1, 25
                  slti         sp, s0, -1406
477:              or           t0, t0, s8
478:              xor          s2, s2, t6
479:              slli         t4, s10, 15
                  slli         s11, a0, 23
                  beq          t6, t6, 499f
                  lui          ra, 69091
                  bge          s6, s9, 487f
                  nop
                  beq          s4, s5, 500f
                  sub          s4, ra, s10
487:              bne          s2, s1, 497f
                  srli         s7, ra, 8
                  srai         sp, t5, 19
                  bne          a3, t1, 509f
                  ori          t4, t1, -1756
                  sltu         a2, s7, s8
                  auipc        s2, 1018981
                  slt          tp, t2, ra
                  beq          zero, s3, 508f
                  or           s3, a3, a5
497:              slli         ra, s5, 22
                  xori         a1, t0, -560
499:              sll          s4, s7, s7
500:              nop
                  lui          s4, 679609
main_14:          jal          a7, 13f
0:                jal          ra, 10f
1:                jal          a1, 5f
2:                jal          ra, 4f
3:                jal          ra, 11f
4:                jal          a6, 1b
5:                jal          s11, 12f
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          ra, 3b
9:                jal          ra, 16f
10:               jal          t6, 8b
11:               jal          s2, 15f
12:               jal          ra, 0b
13:               jal          ra, 6b
14:               jal          ra, 2b
15:               jal          ra, 17f
16:               jal          a3, 14b
17:               add          t2, s5, s7
                  beq          s2, s10, 519f
main_19:          jal          a7, 15f
0:                jal          s7, 7f
1:                jal          a5, 6f
2:                jal          ra, 14f
3:                jal          ra, 21f
4:                jal          ra, 16f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          s6, 13f
8:                jal          ra, 2b
9:                jal          ra, 17f
10:               jal          ra, 3b
11:               jal          tp, 19f
12:               jal          s10, 1b
13:               jal          ra, 4b
14:               jal          ra, 20f
15:               jal          ra, 18f
16:               jal          ra, 11b
17:               jal          ra, 5b
18:               jal          t2, 12b
19:               jal          t5, 9b
20:               jal          ra, 0b
21:               jal          ra, 22f
22:               srli         s5, t6, 6
                  addi         s4, s3, -1806
                  sltu         t3, s6, s3
                  xori         s5, t1, 462
                  ori          s0, s1, 1735
                  slli         s0, t4, 30
508:              ori          s2, s4, 156
509:              andi         a7, s9, 947
                  andi         t2, sp, 578
                  add          a3, a7, gp
                  beq          s0, s6, 514f
                  srl          t0, t5, s1
514:              beq          t4, s9, 517f
                  sltu         s8, a1, sp
                  and          s7, s2, a2
517:              xor          s11, a2, s7
                  xor          zero, s3, s1
519:              auipc        s2, 764735
                  sltu         s10, a3, t2
                  slli         t4, s9, 7
                  or           s5, a4, s1
                  slti         s11, a1, 1936
                  bgeu         a2, s9, 542f
                  bltu         a0, t3, 544f
                  bgeu         s0, s0, 529f
                  beq          t1, a3, 541f
                  or           t4, tp, s9
529:              and          gp, a6, a2
                  bne          t2, a0, 533f
                  blt          s3, s1, 535f
                  beq          a1, t6, 552f
533:              slli         a1, s11, 18
                  xori         t2, zero, 2007
535:              or           s6, t6, s9
                  slt          s8, s4, ra
                  sub          s11, s2, s6
                  xor          s10, s9, a1
                  srai         t0, a1, 17
                  bltu         t5, gp, 553f
541:              blt          s6, t6, 544f
542:              and          t2, s7, a5
                  and          s7, t3, zero
544:              add          a1, t2, t4
                  slti         s8, s0, -1669
                  xori         zero, sp, -1107
                  slli         zero, s8, 25
                  bgeu         a6, a7, 567f
                  or           s7, t0, s11
                  beq          t1, t1, 554f
                  slli         a3, s1, 25
552:              add          s5, s3, s3
553:              bltu         a2, s5, 567f
554:              slt          a1, tp, a4
                  and          a5, s5, a7
                  bgeu         a4, t1, 570f
                  srl          t4, s7, s9
                  ori          s0, t5, -1865
                  addi         ra, a6, -1940
                  add          s4, sp, a3
                  add          a6, s1, t3
                  blt          t5, s0, 572f
                  srl          s8, s2, a5
                  bgeu         s2, s6, 570f
                  auipc        a5, 389762
                  sll          s11, t0, s3
567:              slt          s11, s0, t0
                  lui          s1, 825172
                  slt          a7, s8, a2
570:              ori          ra, a5, -237
                  sltu         a2, a1, t5
572:              sub          s10, t3, a6
                  sltiu        t6, s1, 526
                  and          a1, t3, s4
                  sub          t5, t3, t6
                  slti         t4, gp, -293
                  xor          s9, t3, a5
                  beq          s8, t1, 584f
                  srl          s2, a2, t0
                  addi         s2, t1, 1598
                  blt          t3, s10, 597f
                  sltu         t6, t4, t0
                  sltiu        s11, s6, 1870
584:              bltu         t5, a2, 588f
                  and          zero, s7, sp
                  sra          s6, s1, a6
                  sll          sp, a4, t0
588:              beq          a2, a1, 599f
                  sra          s1, t4, t1
                  sltu         s8, tp, t4
                  sltu         t4, t1, s1
                  slli         a1, s9, 24
                  slli         s8, s10, 0
                  srai         tp, a3, 16
                  bge          t2, s8, 596f
596:              or           s2, a6, s1
597:              ori          a2, t6, -1764
                  addi         ra, s3, -2018
599:              bge          a4, s7, 614f
                  lui          a1, 987328
                  or           a3, s1, zero
                  xor          sp, a7, gp
                  sra          s10, s3, t5
                  beq          a6, gp, 614f
                  srai         s8, tp, 29
                  lui          t6, 375720
                  sub          s5, a3, s1
                  nop
                  sub          zero, t4, a4
                  sltu         s8, a5, t0
                  sltu         a1, t4, sp
                  or           s11, tp, s9
                  beq          t2, a2, 614f
614:              slt          tp, s11, a5
                  and          a1, s6, ra
                  bltu         s7, a1, 619f
                  srai         s11, a0, 24
                  sub          gp, s2, a1
619:              bge          zero, a2, 639f
                  sltu         s5, s6, s6
                  srl          t5, t0, s0
                  or           a5, t5, t2
                  bgeu         s4, s10, 637f
                  srl          s1, tp, ra
                  slti         s5, a3, -352
                  blt          t2, s2, 629f
                  sll          a6, s1, s4
                  slli         s11, sp, 15
629:              blt          s5, t6, 646f
                  auipc        t6, 146001
                  slt          ra, s0, s8
                  auipc        s9, 384686
                  nop
                  srl          tp, a6, s2
                  add          s8, t4, a0
                  sll          s3, a2, a0
637:              sltiu        t3, s4, 326
                  srai         s6, s0, 12
639:              nop
                  xori         s8, sp, -1488
                  xori         s9, tp, 229
                  blt          a7, s0, 661f
                  slt          a7, t3, s7
                  slli         s2, t4, 10
                  and          s10, a2, s0
646:              bgeu         t2, a6, 648f
                  beq          zero, t1, 650f
648:              bge          t2, s2, 662f
                  sub          a2, s7, s5
650:              srli         a3, s0, 0
                  bne          s10, zero, 659f
                  and          s9, a7, zero
                  xor          a7, t3, t1
                  srl          a3, s9, s4
                  srl          t4, t6, t5
                  add          t4, s8, s0
                  add          s11, s0, t5
                  lui          zero, 65922
659:              bge          s10, s8, 678f
                  srl          s7, s4, t6
661:              lui          a5, 534616
662:              slli         a6, t3, 17
                  nop
                  andi         zero, a1, -761
                  auipc        a6, 516812
                  xori         zero, t0, 996
                  addi         t3, s2, 681
                  andi         s4, t4, 1433
                  slli         t2, t4, 27
                  slt          a7, s6, s8
                  andi         s3, s0, 1459
                  slli         a3, t3, 19
main_10:          jal          a7, 0f
0:                jal          ra, 3f
1:                jal          ra, 12f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          a1, 7f
5:                jal          ra, 4b
6:                jal          sp, 9f
7:                jal          s1, 1b
8:                jal          ra, 11f
9:                jal          ra, 5b
10:               jal          a7, 6b
11:               jal          s10, 10b
12:               add          s10, a7, a5
                  add          t0, s4, zero
                  lui          a7, 418167
                  lui          s7, 285397
                  srli         a5, tp, 12
                  auipc        s10, 879107
678:              beq          s2, a1, 682f
                  add          s9, t6, t2
                  andi         s8, t2, 537
                  bne          s3, sp, 699f
682:              sra          t6, a6, s1
                  lui          a2, 989719
                  andi         ra, a5, 911
                  nop
                  slti         ra, s9, -762
                  sltiu        t4, s10, -693
                  sltiu        s2, ra, 624
                  addi         a2, s11, -1755
                  slti         t6, t0, -1918
                  xori         s3, s7, -379
                  beq          a3, a6, 695f
                  srai         ra, a7, 30
                  ori          zero, a2, -1086
695:              sll          t5, a1, a5
                  ori          s9, gp, -660
                  add          s0, t6, a4
                  auipc        a6, 32272
699:              xor          s3, a0, t2
                  xori         t3, t3, -1612
                  srli         a1, s11, 10
                  or           a7, a0, t5
                  addi         s4, t0, 1038
                  sub          s0, sp, s7
                  sll          s9, sp, s2
                  bgeu         a7, t6, 719f
                  nop
                  or           s9, s4, a0
                  ori          t3, t5, 584
                  sltu         t0, s9, a7
                  add          s6, t0, s1
                  bge          s7, s3, 725f
                  auipc        s4, 80627
                  bge          s9, s1, 733f
                  nop
                  sra          zero, s10, t6
                  sub          zero, s2, s3
                  or           a5, a0, a4
719:              bge          tp, t1, 723f
                  ori          s7, s1, -1481
                  bltu         a2, t5, 731f
                  srl          s7, a7, s2
723:              slt          t3, t6, t1
                  auipc        s7, 277365
725:              xori         a1, s11, 1763
                  xor          a7, tp, s6
                  sub          s9, a5, t4
                  bltu         a1, t0, 743f
                  sltu         s2, s10, gp
                  sltu         sp, t1, sp
731:              or           ra, t5, t2
                  addi         a5, a7, 1656
733:              lui          a6, 328687
                  srai         t5, zero, 29
                  sub          s8, t5, s6
                  nop
                  bltu         s10, s4, 751f
                  nop
                  xor          s7, t5, a0
                  or           s5, t4, gp
                  sll          s6, tp, s0
                  add          a3, a2, s4
743:              slli         sp, s7, 9
                  sll          a1, a5, s5
                  bne          s2, t0, 763f
                  ori          s8, a0, -273
                  srai         t4, sp, 10
                  and          a6, tp, ra
                  addi         tp, t0, 1080
                  xor          s3, s4, s6
751:              beq          s2, t3, 769f
                  slt          s11, a6, t3
                  ori          a7, zero, 425
                  srl          s7, a3, t1
                  lui          a2, 699200
                  slti         t5, tp, -863
                  sub          a5, s9, s3
                  slli         s3, s1, 7
                  andi         s7, s5, 1767
                  sll          s0, sp, s8
                  sll          s10, s10, a7
                  nop
763:              sub          s7, t3, s4
                  sltu         t2, s4, s8
                  addi         s2, a2, 2002
                  blt          s5, a0, 786f
                  andi         s11, s8, 275
                  bgeu         tp, ra, 769f
769:              srli         s4, a5, 20
                  slti         sp, gp, -612
                  addi         s8, ra, -1303
                  sltu         a2, t4, sp
                  slti         a3, zero, 1248
                  sltiu        a1, a2, -151
                  srai         s7, s1, 19
                  slli         a7, a0, 16
                  sll          s11, t5, s1
                  ori          a6, t3, -1461
                  sll          t5, a5, t1
                  add          tp, s9, t2
                  or           s7, t5, t4
                  auipc        s6, 75962
                  auipc        s3, 130959
                  or           zero, a2, a2
                  sub          t0, s0, t4
786:              beq          t5, s8, 800f
                  sra          s9, a5, gp
                  andi         s8, s2, -724
                  slt          t4, s5, s6
                  sub          s11, a3, a4
                  and          t2, s0, s5
                  nop
                  sub          gp, t5, t3
                  ori          a2, a6, -1859
                  xor          s11, sp, a2
                  bge          a6, a5, 809f
                  srl          a5, t2, s4
                  bgeu         a6, t0, 812f
                  lui          t5, 59773
800:              srli         gp, a1, 7
                  add          a6, a7, t1
                  srai         a2, t4, 26
                  blt          a0, s4, 820f
                  sltiu        a6, s7, -2043
                  slt          t0, a4, s6
                  blt          s5, s8, 819f
                  ori          t0, s9, -653
                  sll          s3, t0, gp
809:              sll          s3, s6, tp
                  xor          t4, a7, a0
                  lui          s7, 21651
812:              xori         sp, s3, 920
                  and          tp, a1, a4
                  and          s11, a5, s11
                  slt          sp, t5, a2
                  blt          t0, a6, 832f
                  lui          a2, 140923
                  nop
819:              slti         a3, s1, 813
820:              srli         s10, t3, 17
                  srai         s10, t4, 0
                  nop
                  slt          s4, s0, a2
                  beq          gp, s0, 839f
                  bgeu         s10, a4, 829f
                  andi         s10, t6, -325
                  xori         t6, t4, -436
                  nop
829:              blt          s8, gp, 830f
830:              add          gp, t0, a6
                  bltu         a0, s7, 841f
832:              slt          t2, tp, s2
                  slli         a1, s6, 3
                  xori         s0, a0, 816
                  srli         tp, s2, 0
                  sll          a6, s1, gp
                  lui          s1, 208337
                  xori         s2, t3, -358
839:              srli         a3, t2, 19
                  srai         s0, s6, 10
841:              sll          s7, t2, a3
                  or           tp, s8, a1
                  auipc        a2, 46628
                  sll          s8, zero, s10
                  auipc        a6, 270427
                  bne          a6, sp, 849f
                  bgeu         tp, tp, 857f
                  nop
849:              sub          gp, t5, t5
                  nop
                  sub          a3, a4, t1
main_13:          jal          a7, 9f
0:                jal          ra, 22f
1:                jal          a3, 15f
2:                jal          ra, 19f
3:                jal          t0, 4f
4:                jal          tp, 14f
5:                jal          t0, 2b
6:                jal          ra, 11f
7:                jal          ra, 20f
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          t4, 21f
11:               jal          ra, 17f
12:               jal          a3, 0b
13:               jal          a7, 6b
14:               jal          s1, 10b
15:               jal          ra, 16f
16:               jal          sp, 18f
17:               jal          ra, 3b
18:               jal          gp, 8b
19:               jal          ra, 13b
20:               jal          ra, 5b
21:               jal          ra, 12b
22:               srli         t2, t3, 20
                  srli         a2, a7, 0
                  sltiu        zero, a6, 1554
                  sra          s8, s11, t3
                  xori         tp, s0, -1400
                  bltu         a3, a0, 859f
857:              srl          s2, ra, s6
                  xori         a6, a4, 975
859:              andi         s5, s0, 2018
                  srai         a6, s1, 28
                  or           s10, t3, t6
                  xori         a7, s4, -1109
                  sub          s4, s2, s4
                  srai         s4, a4, 4
                  beq          s8, s1, 867f
                  bgeu         ra, t3, 877f
867:              bge          s6, s11, 871f
                  nop
                  bltu         s11, a5, 888f
                  sub          s1, s4, t3
871:              blt          s2, tp, 889f
                  slt          s3, s9, t3
                  sub          s4, tp, t6
                  beq          s4, a0, 888f
                  sltiu        a1, zero, -408
                  or           s10, gp, s11
877:              lui          s5, 22247
                  slli         t5, sp, 0
                  lui          s6, 171321
                  slti         s8, s2, -447
                  bltu         s1, t2, 900f
                  bgeu         t3, s1, 885f
                  bgeu         s0, a1, 887f
                  andi         s5, s7, -1965
885:              nop
                  nop
887:              sub          t2, zero, s7
888:              srli         gp, t5, 10
889:              xor          t3, t5, a0
                  bge          tp, a0, 896f
                  srai         s5, ra, 2
                  auipc        a7, 1010001
                  and          s11, s3, s10
                  bltu         a5, s8, 897f
                  or           s2, s5, a3
896:              slt          a6, s0, a6
897:              beq          t4, t2, 916f
                  beq          a7, a7, 913f
                  blt          s5, t5, 907f
900:              sltu         t0, t3, t4
                  andi         a2, s5, -1781
                  nop
                  or           t0, s9, t0
                  andi         ra, s2, -1080
                  addi         a1, tp, -335
                  blt          s9, s6, 909f
907:              sll          t2, t6, s9
                  and          s9, t5, t4
909:              beq          gp, s10, 913f
                  sub          zero, s11, s11
                  andi         s9, s6, -2019
                  xori         s10, s6, -1889
913:              sll          t6, s1, s9
                  srai         s9, zero, 8
                  and          a1, a6, t6
916:              sub          a2, ra, t2
                  srli         t3, s9, 6
                  slti         a6, a7, -1508
                  beq          s11, s0, 937f
                  add          zero, sp, s2
                  lui          a5, 94411
                  addi         s9, a1, -941
                  sub          t0, a4, zero
                  lui          t4, 615354
                  bltu         s0, s3, 926f
926:              and          s1, s8, sp
                  add          t2, t3, s10
                  add          t3, sp, a3
                  andi         s11, s10, -351
                  srli         a6, s2, 4
                  srai         s4, s0, 3
                  bge          t6, s0, 950f
                  bge          t6, a2, 947f
                  srai         a1, sp, 31
                  auipc        a6, 773312
                  sll          a5, t4, s1
937:              sub          s11, s10, s0
                  andi         s9, s0, -523
                  xori         a5, a1, -252
                  sltu         sp, t2, s6
                  or           t2, s9, s0
                  bgeu         s1, a5, 943f
943:              auipc        a6, 249417
                  xori         s6, t3, -1392
                  srai         a3, gp, 16
                  srl          s8, t0, t1
947:              bne          t0, s4, 957f
                  auipc        t0, 666519
                  srai         a1, a6, 13
950:              sub          s7, t6, zero
                  sub          sp, s11, s8
                  slli         a7, a0, 17
                  blt          a7, t5, 970f
main_12:          jal          a7, 14f
0:                jal          ra, 16f
1:                jal          ra, 7f
2:                jal          s4, 23f
3:                jal          t6, 13f
4:                jal          t4, 1b
5:                jal          a5, 9f
6:                jal          gp, 20f
7:                jal          ra, 22f
8:                jal          ra, 21f
9:                jal          ra, 4b
10:               jal          s1, 17f
11:               jal          sp, 19f
12:               jal          t0, 5b
13:               jal          s11, 2b
14:               jal          a5, 18f
15:               jal          ra, 10b
16:               jal          ra, 6b
17:               jal          t0, 3b
18:               jal          gp, 11b
19:               jal          ra, 0b
20:               jal          a5, 12b
21:               jal          ra, 15b
22:               jal          ra, 8b
23:               andi         a1, gp, -1977
                  beq          a2, s7, 960f
                  and          s5, s3, s3
                  nop
957:              nop
                  srli         s8, s5, 13
                  sra          a2, tp, t3
960:              bltu         ra, a0, 964f
                  bltu         a3, t4, 975f
                  bge          s6, a2, 965f
                  slt          gp, s11, a1
964:              srai         a5, sp, 30
965:              bgeu         s11, s5, 984f
                  add          s9, tp, s8
                  bge          t6, t1, 982f
                  srai         a2, s3, 24
                  lui          s2, 918420
970:              sll          a6, s1, s4
                  sltu         a1, s9, s3
                  andi         a3, t4, 1485
                  sll          s11, s6, a2
                  blt          a5, a6, 976f
975:              andi         s6, s3, 1547
976:              add          a5, a1, a7
                  bgeu         s8, s3, 988f
                  nop
                  addi         s1, s4, 1558
                  srai         s11, a5, 15
                  or           t6, sp, a2
982:              sra          s6, ra, s6
                  xori         s10, s1, 825
984:              addi         a2, a3, 1737
                  beq          s1, sp, 1004f
                  lui          a3, 538314
                  sub          s3, a3, zero
988:              add          t5, s10, s7
                  sll          s2, s8, t0
                  add          t5, a6, a7
                  nop
                  srli         a1, t4, 25
                  and          t0, a0, t0
                  lui          s6, 1020019
                  sltiu        tp, s9, -355
                  bge          s4, t4, 1012f
                  sll          t3, t6, gp
                  sub          s8, t1, s4
                  slt          s7, a1, gp
                  sra          a6, s6, a7
                  add          a6, s9, s1
                  and          s2, zero, gp
                  beq          s3, s5, 1022f
1004:             addi         s3, s9, -1600
                  add          t4, s5, s5
                  srli         s7, t5, 12
                  lui          sp, 422100
                  nop
                  addi         t5, t6, 119
                  auipc        s0, 850325
                  or           sp, t1, a7
1012:             srai         a7, t2, 0
                  srai         a7, tp, 15
                  xor          gp, a3, zero
                  xor          t5, s2, s4
                  bne          tp, a0, 1020f
                  blt          s11, a4, 1030f
                  bne          a5, a7, 1033f
                  srai         ra, a3, 10
1020:             xor          a6, s11, a5
                  srli         t0, s10, 8
1022:             or           a7, s11, a6
                  srl          a6, s0, ra
                  slli         gp, t2, 14
                  sra          s4, zero, s11
                  beq          t5, s6, 1036f
                  ori          t6, s2, -1772
                  srl          t3, t5, sp
                  or           tp, a6, t5
1030:             xori         gp, a1, -1972
                  sltiu        a5, s10, 615
                  lui          t0, 345949
1033:             blt          a5, s6, 1041f
                  and          s1, s7, tp
                  addi         a3, s9, -1427
1036:             andi         s2, zero, 431
                  slt          a7, s2, ra
                  auipc        t5, 6107
                  srai         zero, s0, 12
                  bltu         s8, t6, 1054f
1041:             sra          t0, s9, a4
                  bgeu         sp, t1, 1045f
                  lui          s3, 758985
                  addi         gp, s3, -1555
1045:             sltu         a1, t3, s11
                  srl          s3, t3, s0
                  add          t6, a6, a6
                  lui          a3, 59078
                  srli         a5, a6, 15
                  slti         a7, t2, 384
                  auipc        s4, 262468
                  sltu         s8, ra, tp
                  lui          tp, 189898
1054:             nop
                  srli         a5, t5, 14
                  srl          s7, zero, tp
                  nop
                  srli         ra, gp, 24
                  bge          s3, s5, 1079f
                  srai         s5, sp, 27
                  blt          sp, t5, 1064f
                  sll          s7, a3, s8
                  sltiu        s8, a7, 923
1064:             xori         s10, a2, 1767
                  xori         s3, s4, 481
                  xor          s5, a7, a6
                  bltu         a0, t4, 1080f
                  slt          s6, s4, t5
                  ori          t3, a1, -912
                  and          t6, s1, a3
                  bne          s8, t6, 1075f
                  bgeu         s1, gp, 1092f
                  xori         a1, s4, 1464
                  sll          s9, t1, s6
1075:             sra          s9, s6, gp
                  srli         t2, a2, 3
                  and          tp, s3, t6
                  andi         t6, zero, -494
1079:             blt          a0, a7, 1082f
1080:             xori         sp, a5, 1617
                  ori          s2, s1, -1396
1082:             bgeu         t1, s8, 1096f
                  sll          sp, s6, t6
                  sub          t2, gp, s5
                  bge          t2, a3, 1091f
                  slt          s4, s7, t6
                  and          a2, a5, t6
                  sltiu        s8, a7, 1965
                  beq          a5, sp, 1090f
1090:             and          s0, s2, s3
1091:             bgeu         s4, s1, 1094f
1092:             lui          s11, 894164
                  blt          s0, t1, 1110f
1094:             auipc        t2, 971330
                  and          s6, s5, a7
1096:             slti         a3, s4, -700
                  sll          a3, a0, zero
                  beq          s8, t4, 1114f
                  and          t5, a1, a4
                  or           zero, a3, a0
                  beq          s5, s10, 1120f
                  lui          a2, 806115
                  lui          zero, 697661
                  addi         s9, a4, -1620
                  addi         a7, t1, -1628
                  and          s8, s7, ra
main_2:           jal          a7, 0f
0:                jal          ra, 6f
1:                jal          t5, 9f
2:                jal          ra, 10f
3:                jal          t0, 2b
4:                jal          ra, 3b
5:                jal          t2, 4b
6:                jal          a7, 5b
7:                jal          sp, 11f
8:                jal          ra, 7b
9:                jal          tp, 8b
10:               jal          s2, 1b
11:               jal          ra, 12f
12:               sub          sp, s1, a3
                  nop
                  xor          a5, s7, a4
                  add          s9, s7, t5
1110:             and          t2, sp, s1
                  sll          s3, a5, s0
                  sltiu        a7, a7, -1801
                  or           s6, s9, t2
1114:             bgeu         a4, s7, 1127f
                  sltiu        s9, s1, -1207
                  sra          a7, a4, sp
                  bne          s3, gp, 1136f
                  auipc        s3, 778877
                  lui          t6, 200363
1120:             or           tp, tp, s10
                  bne          t3, t3, 1123f
                  slli         t2, s7, 0
1123:             addi         a6, t4, -1027
                  sltiu        s1, s0, 1079
                  lui          gp, 171717
                  blt          sp, s8, 1129f
1127:             beq          a4, s0, 1137f
                  bltu         s4, ra, 1131f
1129:             sub          s10, a1, s3
                  lui          a5, 820285
1131:             blt          s1, gp, 1146f
                  nop
                  bge          a4, s10, 1148f
                  xor          a2, s7, a7
                  add          t3, s0, s2
1136:             nop
1137:             ori          t2, a6, -76
                  blt          s9, a5, 1152f
                  auipc        t5, 987636
                  bgeu         gp, t0, 1154f
                  slt          s4, t6, t3
                  slli         a2, s2, 28
                  addi         t6, s3, 1795
                  sub          s5, s3, t0
                  slt          tp, a7, a4
1146:             slli         s5, a5, 1
                  auipc        t0, 159980
1148:             bgeu         s1, t0, 1159f
                  and          t2, t1, s0
                  nop
                  ori          a1, a7, -866
1152:             bltu         a3, zero, 1165f
                  ori          a2, a1, 2044
1154:             and          s4, s1, a3
                  sub          zero, s10, t2
                  andi         a6, s2, 1896
                  xori         t5, s0, 1892
                  blt          s10, a3, 1176f
1159:             bge          t1, t3, 1163f
                  bltu         a3, s11, 1178f
                  bge          sp, s9, 1169f
                  addi         t0, a7, 1399
1163:             sltu         a3, s9, s11
                  andi         a7, t4, -778
1165:             srai         a1, zero, 23
                  bge          s5, t3, 1185f
                  andi         t4, a1, -8
                  beq          s4, a4, 1172f
1169:             srli         s1, s0, 30
                  xor          t4, t1, zero
                  bgeu         s1, s8, 1172f
1172:             andi         s2, a6, 1293
                  slli         s11, gp, 31
                  srli         t0, a7, 2
                  sll          a1, t0, ra
1176:             srai         t3, s11, 12
                  sltiu        a6, s9, -1325
1178:             beq          t4, s0, 1188f
                  beq          s6, t1, 1195f
                  blt          t0, s1, 1199f
                  auipc        ra, 469763
                  srli         t6, a4, 8
                  xori         s9, tp, -669
                  sltiu        s2, a0, 536
1185:             sra          t6, ra, t1
                  sltu         s4, s8, a1
                  bge          t3, tp, 1190f
1188:             slti         a3, t1, -48
                  sltu         ra, ra, gp
1190:             slt          s6, s6, s2
                  srli         t5, a7, 26
                  xori         t4, a6, 60
                  xor          t2, zero, t6
                  bge          t2, a5, 1195f
1195:             slti         ra, a6, 238
                  sll          ra, a1, a6
                  and          a2, s9, s5
                  bltu         t6, s5, 1202f
1199:             bgeu         t1, s1, 1200f
1200:             bge          t5, zero, 1219f
                  bge          s10, zero, 1216f
1202:             addi         t4, a6, -1266
                  andi         s4, s9, 160
                  addi         a2, s3, 713
                  bge          t0, s1, 1220f
                  srli         s11, a0, 26
                  sltu         t6, t2, s3
                  slli         s2, s6, 0
                  bltu         s10, s7, 1211f
                  nop
1211:             auipc        s0, 483931
                  addi         s7, a5, -1631
                  sltiu        a1, s6, 1179
                  sub          s1, s10, a6
                  srai         ra, a4, 15
1216:             sltiu        a7, t3, 559
                  xor          ra, t6, s2
                  bne          a0, s0, 1221f
1219:             auipc        t0, 657317
1220:             lui          s6, 232493
1221:             xor          tp, a5, t6
                  add          s7, s3, s5
                  add          zero, a3, a3
                  slt          a3, t2, t2
                  srli         s2, s8, 2
                  add          gp, s2, s4
                  sra          t4, s8, tp
                  srli         t3, a3, 8
                  ori          s7, t0, 1728
                  xori         tp, s1, 607
                  or           t6, s3, s10
                  srli         a7, sp, 4
                  and          s10, s10, ra
                  or           s8, zero, a3
                  sltiu        t2, zero, -437
                  add          a7, a5, s2
                  slt          s4, a6, a2
                  srl          t5, s10, t2
                  sltiu        t2, a1, 1269
                  and          ra, gp, a1
                  sltiu        s6, a5, -1649
                  bge          tp, s2, 1252f
                  slli         s6, a6, 17
                  ori          s3, a5, 1840
main_25:          jal          a7, 14f
0:                jal          ra, 9f
1:                jal          ra, 2f
2:                jal          sp, 4f
3:                jal          ra, 15f
4:                jal          ra, 10f
5:                jal          ra, 8f
6:                jal          tp, 13f
7:                jal          ra, 5b
8:                jal          s4, 1b
9:                jal          ra, 11f
10:               jal          ra, 0b
11:               jal          ra, 12f
12:               jal          tp, 6b
13:               jal          s0, 3b
14:               jal          s2, 7b
15:               or           zero, ra, ra
                  bltu         s9, a2, 1259f
                  bge          zero, t2, 1252f
                  blt          tp, s7, 1260f
                  lui          gp, 160190
                  xor          t0, s6, t5
                  bne          a4, t0, 1269f
                  bne          s9, s7, 1265f
1252:             sll          ra, t1, s7
                  beq          a7, s1, 1267f
                  srli         sp, t2, 27
                  slti         s4, a1, 1148
                  slti         a2, t2, -1473
                  blt          a3, t1, 1261f
                  addi         s2, ra, 1272
1259:             sll          t4, t2, s9
1260:             lui          gp, 1028180
1261:             bne          s5, zero, 1269f
                  xori         sp, s3, -644
                  srli         t0, s2, 3
                  and          a5, a3, a4
1265:             bltu         t4, sp, 1283f
                  srl          s2, gp, t6
1267:             lui          s11, 647475
                  bgeu         a6, t5, 1281f
1269:             auipc        s5, 446291
                  beq          gp, zero, 1290f
                  sra          a3, t3, s7
                  srl          zero, s4, t1
                  sltu         t0, t6, t4
                  blt          gp, s0, 1285f
                  srai         s3, a5, 2
                  sltiu        s4, t0, -1968
                  addi         a3, a0, -1258
                  bgeu         s1, t1, 1295f
                  xori         gp, s5, 1074
                  add          t3, s3, t4
1281:             srai         a7, s11, 11
                  sltiu        s11, tp, -1013
1283:             blt          s5, s9, 1301f
                  addi         s11, s10, 869
1285:             srli         s8, a0, 21
                  auipc        s5, 336453
                  sltu         s3, a3, a5
                  slli         a7, a0, 29
                  xori         tp, a6, -343
1290:             bltu         s1, t1, 1294f
                  bgeu         a2, s0, 1294f
                  ori          s10, ra, -272
                  ori          s9, s4, -1409
1294:             blt          s1, s2, 1297f
1295:             xori         a5, t3, -1345
                  add          s11, s1, s9
1297:             slli         tp, t3, 13
                  beq          gp, s0, 1308f
                  addi         gp, s9, 1708
                  xor          a2, t0, gp
1301:             sll          a1, s5, a4
                  xor          s0, a3, gp
                  ori          s2, s5, 1102
                  or           s10, s2, s6
                  srli         s8, s8, 14
                  xori         s4, s9, 446
                  sll          tp, s6, zero
1308:             xor          a3, s0, t1
                  bne          zero, t4, 1323f
                  auipc        s0, 629713
                  add          s8, a2, s6
                  bge          t3, s9, 1313f
1313:             srai         s7, s8, 31
                  slli         t6, gp, 26
                  srai         s4, a3, 19
                  nop
                  beq          s4, s8, 1321f
                  bne          a7, a7, 1328f
                  xori         s5, a0, -38
                  auipc        s4, 117065
                  addi         t6, s5, -603
                  sltiu        t4, a7, -1313
                  sltu         tp, sp, gp
                  andi         a7, s9, 1843
                  auipc        t5, 73851
                  srl          zero, zero, s5
                  la           t2, sub_1
                  slt          s3, s4, a4
                  addi         t2, t2, 885
                  addi         s9, t5, -1500
main_j1:          jalr         a7, t2, -885 #jump main -> sub_1
                  sub          t6, zero, tp
1321:             blt          t4, s1, 1337f
                  xor          a7, s4, s7
1323:             ori          t6, s3, -552
                  nop
                  lui          a5, 830579
                  beq          t6, a4, 1341f
                  addi         ra, t2, -31
1328:             blt          s7, a3, 1339f
                  blt          t0, s9, 1332f
                  sub          t4, a4, s7
                  add          t2, t5, s2
1332:             slt          a5, sp, s7
                  bge          s7, a5, 1348f
                  sll          a2, s11, s5
                  xori         s4, a1, -1467
                  nop
1337:             slt          s4, s4, a6
                  ori          a5, s2, 933
1339:             andi         ra, s10, -872
                  sltiu        zero, s0, 1834
1341:             sltu         s9, a3, t6
                  bgeu         t0, tp, 1348f
                  srli         sp, a3, 17
                  or           s6, s3, s6
                  nop
                  or           tp, t1, s11
                  xor          zero, t5, s3
1348:             bne          ra, t4, 1361f
                  slti         ra, a6, 1168
                  add          s3, s5, zero
                  auipc        a2, 23514
                  xori         s10, s7, -602
                  addi         s0, s5, -1042
                  or           gp, t5, s0
                  sltiu        a3, s10, 764
                  auipc        s6, 494076
                  beq          s5, s9, 1359f
                  srai         s2, gp, 30
1359:             slli         a1, a3, 23
                  slti         s5, a6, -186
1361:             slt          a3, t2, zero
                  srl          s0, s8, t2
                  srl          s5, s0, s9
                  srai         s0, t6, 22
                  addi         s3, a6, -981
                  and          t0, a6, s6
                  addi         tp, s0, -772
                  sub          s8, sp, s3
                  nop
                  ori          zero, t6, 496
                  bgeu         t2, s10, 1390f
                  auipc        tp, 600689
                  xor          t2, a6, t5
                  sltu         s0, t1, sp
                  lui          a6, 237663
                  srl          s0, a1, s9
                  bne          s8, s6, 1396f
                  xori         s7, t2, 1652
                  or           s3, s10, a5
                  xor          zero, s3, tp
                  beq          a5, a7, 1384f
                  bne          s11, t1, 1396f
                  add          a5, s2, s0
1384:             bne          s8, tp, 1401f
                  bne          t4, tp, 1403f
                  srl          s5, a5, ra
                  sub          a7, t1, s4
                  add          s9, a6, s10
                  andi         s1, a1, -429
1390:             add          s3, s7, s1
                  lui          s10, 123688
                  bgeu         t0, gp, 1396f
                  andi         s5, t5, 276
                  bge          t6, s0, 1407f
                  xor          t4, gp, ra
1396:             lui          t0, 558822
                  nop
                  bne          s3, s7, 1401f
                  nop
                  lui          s10, 602376
1401:             addi         t3, a0, -723
                  bgeu         a3, gp, 1410f
1403:             sltiu        s8, t5, -824
                  sra          t6, s11, s11
                  srai         s5, s5, 15
                  srl          s1, a7, s1
1407:             sra          t5, zero, s10
                  sub          s1, s5, s4
                  bltu         a6, s2, 1410f
1410:             and          s1, s2, t2
                  sll          t4, s1, t0
                  bgeu         s0, a7, 1422f
                  xori         s5, gp, 1232
                  add          s0, t4, t5
                  xor          t4, t3, t5
                  srli         s0, s9, 18
                  add          t3, s3, t4
                  slli         s6, s6, 27
                  sll          a3, a4, t5
                  or           s8, s1, t3
                  auipc        s8, 100537
1422:             sltu         t0, a0, zero
main_3:           jal          a7, 9f
0:                jal          ra, 2f
1:                jal          ra, 5f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          ra, 1b
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          ra, 8f
8:                jal          ra, 10f
9:                jal          ra, 3b
10:               xori         s2, s9, -1782
                  addi         a5, s9, -699
                  add          s11, tp, t4
                  slli         s0, t0, 16
                  lui          s11, 683884
                  addi         a2, gp, -1536
                  nop
                  addi         sp, t4, 1229
                  addi         s2, s10, -575
                  bltu         s11, s6, 1440f
                  srai         s2, t6, 15
                  slt          t3, a6, a7
                  bge          a5, a2, 1440f
                  and          tp, gp, a3
                  addi         s0, t3, 1088
                  nop
                  sll          s11, t3, s4
                  srai         t4, tp, 9
1440:             xor          t6, a5, s7
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         t1, t1, -12
                  sll          t4, tp, a5
                  sll          s0, s10, t6
                  sw           a7, 4(t1)
                  xor          a3, s11, a5
                  srai         sp, sp, 3
sub_5_7:          jal          a7, 1f
0:                jal          ra, 9f
1:                jal          ra, 25f
2:                jal          ra, 13f
3:                jal          ra, 14f
4:                jal          ra, 17f
5:                jal          ra, 20f
6:                jal          ra, 21f
7:                jal          ra, 2b
8:                jal          ra, 24f
9:                jal          a7, 6b
10:               jal          ra, 4b
11:               jal          ra, 27f
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          sp, 19f
15:               jal          ra, 8b
16:               jal          ra, 11b
17:               jal          a1, 23f
18:               jal          ra, 26f
19:               jal          a5, 18b
20:               jal          ra, 15b
21:               jal          ra, 5b
22:               jal          tp, 12b
23:               jal          t3, 22b
24:               jal          tp, 16b
25:               jal          ra, 3b
26:               jal          ra, 10b
27:               xor          s4, t0, s5
sub_5_6:          jal          a7, 1f
0:                jal          ra, 10f
1:                jal          ra, 18f
2:                jal          ra, 19f
3:                jal          s1, 8f
4:                jal          s6, 14f
5:                jal          ra, 15f
6:                jal          s5, 16f
7:                jal          s4, 20f
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          ra, 17f
12:               jal          ra, 3b
13:               jal          ra, 0b
14:               jal          ra, 9b
15:               jal          s10, 2b
16:               jal          ra, 13b
17:               jal          ra, 6b
18:               jal          ra, 12b
19:               jal          ra, 11b
20:               auipc        gp, 1046118
sub_5_1:          jal          a7, 22f
0:                jal          s2, 25f
1:                jal          ra, 24f
2:                jal          ra, 17f
3:                jal          ra, 12f
4:                jal          ra, 18f
5:                jal          ra, 19f
6:                jal          s7, 26f
7:                jal          ra, 23f
8:                jal          ra, 2b
9:                jal          t0, 0b
10:               jal          t3, 6b
11:               jal          tp, 27f
12:               jal          ra, 7b
13:               jal          ra, 11b
14:               jal          t3, 21f
15:               jal          ra, 9b
16:               jal          ra, 8b
17:               jal          a3, 10b
18:               jal          ra, 28f
19:               jal          ra, 20f
20:               jal          t3, 3b
21:               jal          ra, 15b
22:               jal          a2, 14b
23:               jal          t6, 4b
24:               jal          ra, 16b
25:               jal          ra, 1b
26:               jal          ra, 5b
27:               jal          ra, 29f
28:               jal          ra, 13b
29:               sltiu        a1, t3, 1644
sub_5_3:          jal          a7, 7f
0:                jal          ra, 6f
1:                jal          t3, 5f
2:                jal          t5, 8f
3:                jal          t4, 1b
4:                jal          ra, 20f
5:                jal          ra, 4b
6:                jal          s9, 9f
7:                jal          gp, 0b
8:                jal          gp, 11f
9:                jal          t0, 12f
10:               jal          ra, 18f
11:               jal          s8, 13f
12:               jal          ra, 3b
13:               jal          ra, 17f
14:               jal          ra, 2b
15:               jal          ra, 19f
16:               jal          ra, 21f
17:               jal          t6, 15b
18:               jal          ra, 14b
19:               jal          ra, 16b
20:               jal          s4, 10b
21:               sub          t4, s10, gp
sub_5_5:          jal          a7, 15f
0:                jal          ra, 18f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          ra, 4f
4:                jal          s3, 9f
5:                jal          s10, 21f
6:                jal          t2, 3b
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          gp, 14f
10:               jal          s2, 13f
11:               jal          t2, 20f
12:               jal          t4, 8b
13:               jal          tp, 17f
14:               jal          ra, 16f
15:               jal          a7, 10b
16:               jal          ra, 1b
17:               jal          t6, 2b
18:               jal          ra, 11b
19:               jal          ra, 5b
20:               jal          ra, 19b
21:               srai         s10, s0, 19
sub_5_9:          jal          a7, 3f
0:                jal          ra, 12f
1:                jal          ra, 22f
2:                jal          ra, 7f
3:                jal          ra, 16f
4:                jal          ra, 15f
5:                jal          ra, 8f
6:                jal          gp, 26f
7:                jal          ra, 0b
8:                jal          t0, 13f
9:                jal          tp, 27f
10:               jal          ra, 14f
11:               jal          ra, 5b
12:               jal          ra, 18f
13:               jal          ra, 21f
14:               jal          ra, 6b
15:               jal          ra, 17f
16:               jal          s10, 19f
17:               jal          ra, 1b
18:               jal          ra, 9b
19:               jal          ra, 11b
20:               jal          ra, 24f
21:               jal          ra, 20b
22:               jal          t6, 2b
23:               jal          ra, 28f
24:               jal          ra, 10b
25:               jal          ra, 4b
26:               jal          ra, 25b
27:               jal          ra, 23b
28:               sub          t6, ra, a3
sub_5_2:          jal          a7, 6f
0:                jal          t5, 3f
1:                jal          ra, 14f
2:                jal          a2, 9f
3:                jal          ra, 5f
4:                jal          s1, 0b
5:                jal          ra, 12f
6:                jal          gp, 1b
7:                jal          s11, 4b
8:                jal          ra, 13f
9:                jal          ra, 15f
10:               jal          ra, 8b
11:               jal          gp, 7b
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          ra, 10b
15:               jal          ra, 16f
16:               xor          a3, t6, s0
sub_5_8:          jal          a7, 7f
0:                jal          ra, 2f
1:                jal          ra, 8f
2:                jal          ra, 4f
3:                jal          ra, 9f
4:                jal          a2, 1b
5:                jal          ra, 14f
6:                jal          tp, 13f
7:                jal          s5, 15f
8:                jal          ra, 18f
9:                jal          s7, 5b
10:               jal          ra, 19f
11:               jal          s1, 3b
12:               jal          sp, 10b
13:               jal          ra, 16f
14:               jal          t0, 12b
15:               jal          ra, 0b
16:               jal          ra, 17f
17:               jal          ra, 11b
18:               jal          t0, 6b
19:               srli         ra, a5, 21
sub_5_4:          jal          a7, 8f
0:                jal          ra, 16f
1:                jal          a6, 0b
2:                jal          s11, 7f
3:                jal          ra, 5f
4:                jal          ra, 15f
5:                jal          ra, 9f
6:                jal          t0, 11f
7:                jal          sp, 13f
8:                jal          tp, 6b
9:                jal          tp, 2b
10:               jal          s7, 12f
11:               jal          s2, 3b
12:               jal          ra, 4b
13:               jal          tp, 10b
14:               jal          t3, 1b
15:               jal          ra, 14b
16:               jal          ra, 17f
17:               addi         s5, s10, 1842
sub_5_11:         jal          a7, 5f
0:                jal          a6, 3f
1:                jal          ra, 7f
2:                jal          ra, 4f
3:                jal          ra, 10f
4:                jal          ra, 6f
5:                jal          ra, 2b
6:                jal          ra, 9f
7:                jal          a2, 8f
8:                jal          ra, 0b
9:                jal          s9, 1b
10:               sra          a5, sp, a6
sub_5_12:         jal          a7, 2f
0:                jal          ra, 11f
1:                jal          s9, 7f
2:                jal          ra, 6f
3:                jal          ra, 13f
4:                jal          a1, 14f
5:                jal          ra, 10f
6:                jal          a3, 0b
7:                jal          ra, 4b
8:                jal          s1, 12f
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               jal          ra, 8b
12:               jal          tp, 9b
13:               jal          ra, 5b
14:               slt          a6, t6, a6
sub_5_0:          jal          a7, 11f
0:                jal          s7, 16f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          ra, 13f
4:                jal          a6, 1b
5:                jal          ra, 10f
6:                jal          ra, 14f
7:                jal          ra, 5b
8:                jal          ra, 15f
9:                jal          ra, 4b
10:               jal          ra, 3b
11:               jal          ra, 12f
12:               jal          ra, 8b
13:               jal          s1, 6b
14:               jal          ra, 9b
15:               jal          ra, 7b
16:               and          t5, s7, a3
                  sltiu        t2, s1, -155
                  xori         t6, t0, 276
                  sub          s10, a6, s3
                  blt          s9, a7, 21f
                  or           t4, s9, s2
                  or           s0, t5, ra
                  sub          sp, s11, sp
                  lui          s5, 418633
                  bltu         t6, gp, 18f
                  lui          a7, 312279
                  blt          s3, t2, 17f
                  or           ra, t1, gp
                  srl          t2, t4, t6
                  xori         s2, t6, 1973
                  srli         s2, t3, 31
                  beq          a1, gp, 34f
                  xori         ra, gp, -288
17:               lui          gp, 92813
18:               bne          s0, sp, 34f
                  xor          ra, t2, s0
                  sltu         t3, s10, t2
21:               ori          t5, a5, -871
                  bge          s10, t1, 23f
23:               bgeu         s9, s5, 31f
                  bgeu         tp, s1, 37f
                  blt          t3, t4, 30f
                  slti         s0, a5, 1618
                  bge          s9, a1, 31f
                  beq          sp, s3, 31f
                  and          t2, zero, t0
30:               srl          a7, zero, s8
31:               srli         a7, t2, 24
                  sra          s7, ra, gp
                  sltiu        a2, s11, 1602
34:               beq          s11, s2, 50f
                  sltiu        a5, s9, -58
                  slt          s9, a0, a2
37:               sll          t0, a0, ra
                  andi         ra, s11, -1872
                  sra          s7, s7, a7
                  and          s0, t1, zero
                  sll          tp, t5, t6
                  sub          sp, ra, s3
                  srl          s4, s6, a4
                  addi         s10, tp, -10
                  sll          t2, s11, t5
                  andi         s7, t3, -317
                  and          gp, sp, a0
                  and          t3, s3, s5
                  xori         gp, ra, 311
50:               xori         a1, a6, 856
                  ori          s7, ra, 1982
                  blt          a3, s0, 54f
                  sltu         a2, s4, a6
54:               xor          t2, a6, s11
                  sra          ra, a5, t1
                  and          a7, a3, a5
                  bge          t4, s10, 67f
                  xor          t4, s7, t5
                  srl          s5, s6, s10
                  srl          t0, a2, a2
                  bgeu         s7, s9, 74f
                  slli         s9, t2, 19
                  nop
                  add          a2, s7, s5
                  sub          s6, t2, tp
                  slti         s5, sp, -41
67:               ori          t6, s11, 1508
                  xor          s7, a1, a5
                  sltu         a2, t0, sp
                  slt          s6, s5, s10
                  blt          a5, s7, 79f
                  bltu         s7, s5, 74f
                  or           sp, t6, gp
74:               slli         a1, gp, 24
                  and          s5, s11, t5
                  sra          s7, t5, ra
                  add          a7, a7, a4
                  sub          a5, a5, s5
79:               bltu         t0, a2, 96f
                  ori          s8, s8, 1368
                  auipc        s4, 440324
                  addi         s4, s3, -776
                  bltu         s3, t3, 95f
                  and          s3, t0, s2
                  andi         a3, sp, -833
                  bltu         s9, a1, 91f
                  srl          ra, zero, s9
                  slli         t3, t4, 1
                  xor          tp, zero, ra
                  add          s8, s9, gp
91:               sltiu        t2, a0, 701
                  beq          t6, s10, 94f
                  xori         t4, s9, -1055
94:               add          tp, a2, s9
95:               bne          a4, tp, 96f
96:               beq          a1, t4, 101f
                  beq          t4, s9, 116f
                  blt          t4, zero, 112f
                  addi         a3, s3, 659
                  nop
101:              srli         s6, s11, 28
                  lui          a2, 284189
                  bge          s7, s3, 104f
104:              bne          s5, t1, 107f
                  srli         s0, a0, 29
                  sub          s5, s3, s3
107:              auipc        t2, 557215
                  lui          s4, 668802
                  sltu         gp, a1, gp
                  auipc        s4, 562982
                  auipc        s0, 690798
112:              srai         a2, a2, 11
                  or           a3, s6, t4
                  slti         s1, s11, -1093
                  slt          zero, a0, t1
116:              nop
                  slt          sp, s2, t2
                  srl          t5, a7, t3
                  and          s8, a2, t2
                  or           s4, ra, a3
                  lui          s11, 752822
                  srai         s8, ra, 3
                  slt          t5, a2, t3
                  bne          a4, s2, 133f
                  nop
                  srl          t4, s1, s9
                  slt          s0, s7, a6
                  srli         s1, s4, 11
                  andi         zero, a1, -792
                  and          s10, ra, s5
                  or           a5, t2, s4
                  slli         t4, s1, 4
133:              sll          t5, s4, s3
                  slti         a2, s11, -2020
                  nop
                  sltu         zero, s2, t5
                  bgeu         t0, t3, 150f
                  slli         tp, t1, 27
                  add          a3, zero, sp
                  sltiu        s5, t1, 819
                  srai         s0, s8, 29
                  sltiu        s2, tp, -239
                  slt          a2, s8, a3
                  srli         gp, a3, 22
                  add          a1, s9, a0
                  nop
                  bne          sp, a6, 162f
                  srl          s6, t2, a2
                  srli         s4, s3, 14
150:              xori         ra, s0, -1919
                  srli         s1, t1, 7
                  nop
                  bne          a7, a1, 168f
                  andi         a3, gp, -1063
                  xor          s3, s5, t4
                  slt          s8, s11, s0
                  srli         s4, a5, 13
                  bne          sp, t5, 171f
                  addi         s4, tp, -1448
                  srai         s2, a7, 29
                  xori         s4, t6, 129
162:              slli         zero, t6, 3
                  andi         t4, a4, -268
                  beq          s0, s10, 165f
165:              addi         s5, t5, 1693
                  blt          t0, a0, 179f
                  auipc        s10, 698917
168:              bltu         t5, tp, 177f
                  add          t5, a0, tp
                  xor          s3, t0, a3
171:              sltu         sp, t5, a2
                  srli         s6, t2, 18
                  bne          ra, s1, 185f
                  sra          a2, s6, a5
                  xor          s5, s3, s9
                  add          s3, a3, zero
177:              bltu         t0, t0, 179f
                  bltu         a7, a1, 197f
179:              auipc        t3, 44067
sub_5_10:         jal          a7, 10f
0:                jal          ra, 16f
1:                jal          ra, 3f
2:                jal          s8, 0b
3:                jal          ra, 22f
4:                jal          ra, 13f
5:                jal          ra, 24f
6:                jal          ra, 25f
7:                jal          ra, 4b
8:                jal          ra, 29f
9:                jal          t0, 12f
10:               jal          ra, 26f
11:               jal          ra, 15f
12:               jal          sp, 19f
13:               jal          sp, 21f
14:               jal          s3, 23f
15:               jal          ra, 8b
16:               jal          s7, 20f
17:               jal          ra, 1b
18:               jal          a6, 27f
19:               jal          t2, 11b
20:               jal          ra, 30f
21:               jal          s2, 14b
22:               jal          ra, 5b
23:               jal          ra, 9b
24:               jal          ra, 18b
25:               jal          t3, 28f
26:               jal          ra, 7b
27:               jal          ra, 2b
28:               jal          ra, 17b
29:               jal          ra, 6b
30:               sltiu        sp, a1, 787
                  and          t3, s1, s9
                  bge          s5, a7, 183f
                  blt          t0, a7, 196f
183:              or           a1, a2, s0
                  bgeu         s3, a4, 188f
185:              add          a6, a4, t6
                  bgeu         s11, a2, 191f
                  bge          s10, t2, 204f
188:              add          ra, s0, s5
                  lui          t3, 631809
                  srai         s6, a2, 27
191:              bltu         a2, s1, 193f
                  blt          gp, a2, 199f
193:              beq          t3, sp, 194f
194:              bne          s0, a3, 207f
                  slt          t3, t1, s1
196:              bltu         s3, a1, 204f
197:              xor          ra, s0, a2
                  sra          tp, tp, a0
199:              bgeu         t0, t4, 209f
                  sub          sp, s7, tp
                  slli         s0, s3, 3
                  slli         a2, s0, 17
                  beq          s5, a7, 204f
204:              xor          zero, gp, s5
                  sub          ra, t2, a1
                  sll          tp, tp, s4
207:              sltiu        s4, s4, -999
                  add          a5, s6, t1
209:              sll          s4, a3, a2
                  slli         t2, s2, 4
                  bgeu         a6, a3, 219f
                  andi         ra, s10, 1332
                  sll          a6, tp, t1
                  blt          s9, t6, 233f
                  bgeu         t5, s2, 218f
                  blt          s3, s5, 226f
                  bne          t3, t2, 220f
218:              ori          s6, s3, -1768
219:              or           tp, t3, s5
220:              srl          a5, s0, t2
                  andi         t2, s11, -921
                  sltu         t5, s2, zero
                  blt          s6, s8, 228f
                  sub          sp, s1, a4
                  addi         a6, t1, -1556
226:              xori         t6, s4, -588
                  auipc        t0, 630347
228:              sltiu        t4, a4, -48
                  sltu         a7, s1, a4
                  sltu         a3, ra, s9
                  bltu         tp, a4, 247f
                  auipc        sp, 575053
233:              bgeu         s4, s1, 251f
                  nop
                  sll          t6, s0, s4
                  bgeu         zero, s4, 241f
                  slli         t3, s6, 12
                  addi         s7, a4, -87
                  bge          s11, t4, 255f
                  or           s11, s0, s4
241:              nop
                  srl          s0, s8, gp
                  addi         t2, s11, -800
                  blt          t2, t3, 252f
                  lui          s0, 114060
                  slt          a1, zero, sp
247:              srli         s10, s1, 8
                  addi         a5, s1, -1666
                  sltiu        s0, s10, 366
                  srli         t5, a7, 19
251:              blt          t0, s7, 270f
252:              slti         s4, a4, 945
                  slti         s5, zero, 1704
                  slt          a2, s4, s10
255:              slli         s7, sp, 17
                  sll          s3, zero, s5
                  auipc        a7, 757600
                  ori          a5, sp, -1235
                  auipc        s8, 113461
                  blt          sp, s0, 268f
                  add          t5, zero, a5
                  slti         gp, a5, 373
                  or           t6, a5, a7
                  slt          a6, t3, s3
                  sub          s9, s8, s2
                  add          s9, s1, zero
                  bltu         s2, s3, 269f
268:              or           s1, tp, t5
269:              slli         tp, t5, 22
270:              addi         gp, a3, -81
                  slti         tp, t6, -1787
                  srli         s8, s10, 25
                  sltu         t3, s11, s6
                  sltiu        s2, s10, -1110
                  bltu         s8, t3, 284f
                  sub          t6, s1, a3
                  ori          t3, s3, 350
                  and          a6, s4, sp
                  bgeu         a4, s4, 280f
280:              bne          a2, zero, 298f
                  beq          tp, t1, 282f
282:              addi         s10, s8, -848
                  add          s6, t1, s1
284:              srl          a5, s7, s1
                  or           a6, a7, tp
                  xori         ra, s1, 908
                  blt          a3, a0, 299f
                  lui          ra, 278297
                  sltiu        s5, t3, 1100
                  sra          a2, a4, zero
                  slli         s6, t5, 6
                  ori          a3, s6, -490
                  ori          t6, s9, -593
                  bne          t6, ra, 297f
                  srai         s4, a5, 26
                  andi         t6, a2, 1072
297:              add          ra, s11, sp
298:              and          a3, s7, t3
299:              bne          a1, a6, 304f
                  or           t2, s6, t3
                  sltu         sp, gp, sp
                  slli         t3, s8, 20
                  sltiu        s8, s1, 1596
304:              blt          a1, s1, 320f
                  bge          a1, s0, 307f
                  xor          gp, a4, s9
307:              or           gp, s2, t2
                  xor          sp, s9, tp
                  xor          a6, gp, a7
                  andi         a2, s4, -1303
                  sra          ra, gp, a3
                  sltiu        a1, s0, 276
                  ori          s8, ra, 219
                  sub          s5, s1, a7
                  auipc        sp, 857022
                  bgeu         a3, s8, 320f
                  or           s4, s1, s5
                  xori         s11, t6, -341
                  sra          s4, s10, s7
320:              bne          a0, zero, 323f
                  beq          t2, a3, 338f
                  add          t5, zero, t5
323:              bltu         gp, t2, 339f
                  srl          a2, s6, sp
                  andi         s7, t6, -971
                  bgeu         s8, a3, 331f
                  add          t2, s6, a0
                  sll          ra, t0, gp
                  sub          a6, s8, a1
                  and          t6, tp, ra
331:              beq          s3, s7, 345f
                  auipc        zero, 196068
                  lui          s2, 311270
                  srai         s5, ra, 18
                  sltu         a3, ra, a3
                  xor          s9, s8, a3
                  sub          s5, a7, s1
338:              or           s6, s8, sp
339:              bgeu         gp, gp, 349f
                  srai         a1, s10, 12
                  sra          a1, s4, t3
                  sll          gp, s7, t0
                  sll          t4, s3, s8
                  ori          a2, s10, -1850
345:              blt          s11, a1, 355f
                  bltu         a0, t5, 359f
                  bge          s6, s10, 352f
                  srai         a7, s4, 1
349:              beq          a6, s1, 351f
                  srli         s10, s9, 1
351:              xori         s1, a7, -919
352:              srli         tp, t3, 17
                  bne          a3, s10, 372f
                  srai         a5, a4, 4
355:              srl          s5, gp, a2
                  srl          s0, s2, s3
                  bltu         t0, t6, 370f
                  sltiu        a6, a0, 1793
359:              lui          t3, 396320
                  bltu         ra, t4, 373f
                  sltu         a3, s11, s1
                  auipc        a3, 383427
                  auipc        a6, 329015
                  bne          tp, s4, 379f
                  andi         a7, a7, -1124
                  slt          a6, t3, s4
                  slti         s4, s7, 605
                  srai         s0, a1, 15
                  auipc        gp, 438245
370:              bge          a5, s0, 371f
371:              slt          t6, t0, t6
372:              sltiu        s0, a7, -811
373:              bne          t2, tp, 380f
                  beq          t5, s9, 387f
                  srai         t3, s3, 0
                  srai         t6, s11, 19
                  add          a6, s1, a7
                  srli         s1, t1, 3
379:              and          t2, t6, s7
380:              or           t6, a3, s4
                  srai         t4, a6, 28
                  beq          t6, s3, 399f
                  or           a6, s6, t5
                  auipc        s11, 306770
                  bne          t2, s2, 387f
                  add          t0, a5, sp
387:              srai         s6, s4, 7
                  sltu         s3, a5, s3
                  ori          t5, tp, -870
                  add          t2, a1, s11
                  srai         t2, t0, 7
                  xor          zero, a1, a0
                  lui          sp, 851626
                  blt          a1, sp, 398f
                  ori          gp, a7, 349
                  add          t0, a5, t5
                  srai         s4, a2, 14
398:              and          zero, tp, s10
399:              andi         a6, t2, 1687
                  bne          t0, s11, 403f
                  sltu         s2, s6, a5
                  bge          s11, sp, 421f
403:              sltiu        t0, t6, 2038
                  bltu         gp, a7, 413f
                  addi         t3, a2, 655
                  xor          t2, s11, t3
                  or           s0, s1, s7
                  ori          sp, a4, -1333
                  add          t6, a5, zero
                  auipc        gp, 46680
                  xori         t2, s0, -393
                  beq          s2, a7, 431f
413:              lui          t6, 717905
                  sltiu        a1, a1, 216
                  slli         t2, s5, 24
                  bne          s10, s9, 423f
                  srl          a2, s0, sp
                  sra          t4, s10, t0
                  sltu         sp, a5, t3
                  srli         t6, t2, 28
421:              srl          zero, t5, t0
                  addi         s2, s11, 1757
423:              bne          t2, t0, 441f
                  bne          t4, s10, 425f
425:              nop
                  srl          s7, a7, s6
                  sub          t2, a7, s4
                  srl          s1, s7, s7
                  bltu         a7, a4, 441f
                  srl          ra, a0, t0
431:              sub          t5, s7, a1
                  ori          a1, sp, -1391
                  sltu         t4, a3, tp
                  sra          gp, a7, s11
                  sra          s4, s9, s10
                  beq          t5, ra, 446f
                  srl          t0, s1, sp
                  add          t2, t3, s4
                  srli         s8, a6, 9
                  nop
441:              lui          t4, 220518
                  bltu         sp, a1, 458f
                  slti         a7, a5, 1190
                  sub          s8, s10, s7
                  sltiu        s3, a6, -43
446:              bltu         s1, tp, 460f
                  sltu         s9, t2, a7
                  srl          sp, a6, t5
                  sltu         a7, s0, s2
                  bltu         a6, s5, 466f
                  and          s7, s8, s11
                  srli         t4, t0, 25
                  sub          s5, a2, gp
                  addi         s4, ra, 255
                  auipc        a6, 236709
                  bge          s0, t3, 458f
                  sltiu        s7, zero, -1014
458:              beq          t0, t0, 461f
                  slt          t0, s3, t1
460:              sub          a5, a3, t1
461:              add          t6, s4, s10
                  or           t5, s0, t6
                  sltu         s0, t5, t1
                  blt          tp, s10, 479f
                  andi         s3, s10, 1076
466:              bge          a5, gp, 476f
                  or           s7, t4, t6
                  add          ra, t2, s3
                  addi         t5, s10, -1900
                  sltiu        ra, s6, -1459
                  auipc        t0, 290041
                  bne          tp, s5, 474f
                  slt          a2, s2, a4
474:              sll          t0, t2, s0
                  sltiu        gp, t2, 1793
476:              sltiu        zero, a2, -822
                  bne          s1, s6, 478f
478:              sub          a7, zero, t5
479:              or           tp, t5, s5
                  bgeu         s5, a3, 481f
481:              andi         ra, t2, -1449
                  auipc        t5, 76545
                  srai         a7, s5, 31
                  ori          t3, a2, 1129
                  sll          a1, t1, t3
                  sub          a2, s9, a0
                  nop
                  srai         zero, a0, 10
                  sltiu        a1, gp, -1188
                  slti         s3, s8, -98
                  srli         gp, sp, 19
                  sltiu        t2, s10, 1614
                  addi         s1, t6, 1818
                  xori         a3, s10, -765
                  bne          a5, a1, 500f
                  sub          gp, sp, t3
                  and          a5, gp, s11
                  bltu         sp, t3, 506f
                  xori         s1, t0, 430
500:              sub          s10, s8, s0
                  andi         s2, a3, 1296
                  addi         s10, s7, -128
                  auipc        t6, 78191
                  sra          a7, t5, a5
                  slli         t3, s7, 5
506:              bne          a3, s2, 519f
                  srai         a6, s1, 23
                  xor          s3, s6, a2
                  nop
                  bgeu         s7, a0, 515f
                  slt          a6, a2, t0
                  bge          a0, t5, 517f
                  sltu         zero, a5, a5
                  xori         t6, t5, 623
515:              nop
                  srli         s3, a5, 22
517:              sll          s10, zero, s0
                  xori         s6, zero, 1697
519:              auipc        sp, 935378
                  ori          s3, a5, -782
                  lui          a5, 50116
                  srai         s4, t2, 23
                  srli         s6, s1, 11
                  bne          s4, a1, 537f
                  lui          sp, 503635
                  slti         s0, s10, 1493
                  bltu         a2, s7, 535f
                  blt          s11, s10, 531f
                  srl          t4, s2, a1
                  addi         a3, s9, 2000
531:              xori         t2, a0, -1695
                  or           sp, a0, a3
                  bge          gp, s4, 538f
                  xor          s4, tp, sp
535:              slli         gp, t5, 31
                  srli         s0, a1, 29
537:              ori          a3, zero, -1948
538:              slli         t3, s2, 28
                  slli         tp, t1, 0
                  sll          s0, a5, ra
                  sltu         a6, s4, s1
                  bltu         s3, t3, 543f
543:              xori         t4, s7, 1512
                  slti         t3, s3, -314
                  bge          s1, a5, 555f
                  bltu         s5, a1, 563f
                  andi         s11, a2, 1447
                  sltiu        s6, a4, -1184
                  lui          zero, 983911
                  addi         s0, s2, -566
                  sltu         s2, a7, t3
                  ori          t4, s1, 1989
                  srl          a3, s8, t4
                  addi         a7, t4, 937
555:              and          zero, s9, s5
                  slli         s2, t0, 19
                  bne          t6, a1, 571f
                  bge          s8, a7, 577f
                  xor          tp, ra, t1
                  sltu         t3, ra, s5
                  xori         s0, s7, -1849
                  blt          a5, gp, 569f
563:              blt          s9, s2, 571f
                  addi         s0, ra, -956
                  sltiu        s7, a2, 668
                  nop
                  bltu         t2, tp, 580f
                  sll          a2, s10, s6
569:              bgeu         s10, gp, 571f
                  and          t2, gp, a6
571:              and          tp, s11, t0
                  lui          s3, 996614
                  addi         s11, t3, 1505
                  blt          a5, s3, 583f
                  srl          a5, s10, a1
                  andi         a1, t0, 1102
577:              slli         a7, a3, 3
                  xor          sp, t3, s5
                  bltu         ra, t6, 581f
580:              bge          a0, a4, 582f
581:              andi         gp, tp, -779
582:              sub          s11, tp, a3
583:              sltiu        s10, s6, 1581
                  sll          s11, t2, s4
                  slli         s6, t5, 16
                  lui          s10, 517597
                  andi         a7, a4, 921
                  slti         a5, t0, -528
                  auipc        a1, 315876
                  andi         a3, a3, -322
                  xori         a5, t2, -1697
                  andi         s3, s6, -352
                  addi         t5, a1, -1381
                  slt          s5, a4, t4
                  srai         s11, a3, 24
                  sll          s10, s4, tp
                  add          s2, t3, a4
                  slti         s5, a0, -527
                  srai         s11, zero, 3
                  slt          s0, s5, t5
                  sltiu        s4, s2, -353
                  slti         s4, s11, -1664
                  sltu         t6, s3, a1
                  and          s7, s8, s0
                  sll          s8, s10, s8
                  srai         t6, t6, 27
                  srl          t4, t3, a5
                  srli         zero, t1, 16
                  bge          s10, s7, 610f
610:              slt          tp, t2, s8
                  xor          zero, s3, t2
                  slli         s7, s5, 24
                  or           a1, a5, s5
                  xori         s0, a6, 2011
                  auipc        a6, 1024909
                  ori          s3, s1, -556
                  beq          tp, s1, 621f
                  slli         a7, s5, 11
                  auipc        zero, 54587
                  sll          a1, t3, s10
621:              sltiu        gp, s6, -1645
                  slt          t3, s6, s10
                  add          s5, a1, a2
                  sll          s7, s1, t5
                  xori         a2, a3, -2035
                  ori          sp, a3, -244
                  addi         s7, a6, -204
                  beq          zero, t3, 644f
                  sltiu        t0, t2, -1729
                  srai         a7, a1, 20
                  sub          s4, s10, t2
                  sltu         zero, s9, t5
                  lui          s2, 493825
                  lui          s0, 113187
                  srli         s10, s4, 10
                  bltu         t4, a1, 641f
                  slti         t0, s10, 758
                  ori          a3, gp, -1792
                  xori         s1, s8, -207
                  srl          t4, a4, a2
641:              slt          a3, s9, s0
                  sub          a1, s8, s3
                  sra          t4, a0, a1
644:              xori         a3, s9, 1175
                  blt          s10, s4, 654f
                  addi         a3, a2, 775
                  sub          a7, s0, t2
                  sltiu        tp, t4, -102
                  bltu         a7, s7, 654f
                  slt          s10, t5, t3
                  bgeu         s3, s6, 654f
                  and          a6, gp, s2
                  beq          a2, tp, 654f
654:              or           tp, s11, gp
                  sll          s8, ra, s0
                  add          a6, a1, a1
                  sll          s3, s5, s7
                  lw           a7, 4(t1)
                  addi         t1, t1, 12
                  sltu         t3, s2, s4
                  nop
                  ori          s4, t4, -1912
                  lui          zero, 88633
                  sub          s10, t6, tp
                  sltiu        ra, t6, 1012
                  xori         t3, s10, 1058
967:              addi x23, x17, 1
967:              jalr x23, x23, 0
sub_4:            or           sp, a6, t0
                  bge          a4, tp, sub_4_stack_p
sub_4_stack_p:    addi         t1, t1, -24
                  sra          s1, a5, t4
                  sw           a7, 4(t1)
                  lui          a3, 282916
sub_4_5:          jal          a7, 13f
0:                jal          s3, 10f
1:                jal          ra, 25f
2:                jal          ra, 21f
3:                jal          ra, 9f
4:                jal          a1, 3b
5:                jal          sp, 1b
6:                jal          ra, 7f
7:                jal          s1, 14f
8:                jal          ra, 12f
9:                jal          ra, 24f
10:               jal          ra, 20f
11:               jal          ra, 17f
12:               jal          ra, 16f
13:               jal          s7, 19f
14:               jal          ra, 0b
15:               jal          ra, 27f
16:               jal          s1, 18f
17:               jal          t2, 4b
18:               jal          ra, 11b
19:               jal          s8, 26f
20:               jal          t0, 22f
21:               jal          ra, 23f
22:               jal          s8, 15b
23:               jal          ra, 6b
24:               jal          ra, 2b
25:               jal          ra, 8b
26:               jal          t6, 5b
27:               sll          t3, a3, a1
sub_4_8:          jal          a7, 25f
0:                jal          t5, 11f
1:                jal          t3, 3f
2:                jal          t4, 7f
3:                jal          a5, 17f
4:                jal          gp, 29f
5:                jal          ra, 15f
6:                jal          ra, 0b
7:                jal          ra, 12f
8:                jal          gp, 5b
9:                jal          ra, 6b
10:               jal          ra, 24f
11:               jal          ra, 2b
12:               jal          s4, 23f
13:               jal          ra, 22f
14:               jal          gp, 27f
15:               jal          ra, 4b
16:               jal          ra, 10b
17:               jal          ra, 8b
18:               jal          ra, 19f
19:               jal          ra, 28f
20:               jal          ra, 16b
21:               jal          s1, 9b
22:               jal          t6, 21b
23:               jal          s2, 26f
24:               jal          tp, 1b
25:               jal          s8, 14b
26:               jal          ra, 20b
27:               jal          ra, 18b
28:               jal          tp, 13b
29:               srli         a5, t0, 18
sub_4_4:          jal          a7, 7f
0:                jal          ra, 3f
1:                jal          ra, 11f
2:                jal          s2, 13f
3:                jal          a6, 10f
4:                jal          t3, 8f
5:                jal          s6, 2b
6:                jal          a7, 5b
7:                jal          ra, 18f
8:                jal          ra, 12f
9:                jal          ra, 14f
10:               jal          a5, 15f
11:               jal          sp, 19f
12:               jal          ra, 16f
13:               jal          t4, 9b
14:               jal          ra, 20f
15:               jal          ra, 21f
16:               jal          ra, 1b
17:               jal          ra, 0b
18:               jal          s7, 4b
19:               jal          ra, 6b
20:               jal          s9, 17b
21:               nop
sub_4_2:          jal          a7, 3f
0:                jal          ra, 12f
1:                jal          s10, 2f
2:                jal          t4, 6f
3:                jal          ra, 1b
4:                jal          ra, 11f
5:                jal          ra, 17f
6:                jal          ra, 8f
7:                jal          t2, 5b
8:                jal          gp, 9f
9:                jal          t6, 16f
10:               jal          ra, 4b
11:               jal          ra, 7b
12:               jal          ra, 14f
13:               jal          ra, 15f
14:               jal          t3, 13b
15:               jal          ra, 10b
16:               jal          ra, 0b
17:               slti         s11, s5, -914
sub_4_6:          jal          a7, 17f
0:                jal          ra, 25f
1:                jal          ra, 6f
2:                jal          t6, 20f
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          ra, 2b
6:                jal          ra, 13f
7:                jal          t5, 22f
8:                jal          a5, 14f
9:                jal          s6, 3b
10:               jal          ra, 4b
11:               jal          a5, 12f
12:               jal          ra, 5b
13:               jal          sp, 18f
14:               jal          ra, 1b
15:               jal          s9, 16f
16:               jal          ra, 9b
17:               jal          tp, 23f
18:               jal          ra, 19f
19:               jal          ra, 21f
20:               jal          ra, 0b
21:               jal          ra, 24f
22:               jal          t0, 11b
23:               jal          ra, 15b
24:               jal          ra, 10b
25:               or           s8, s0, gp
sub_4_7:          jal          a7, 1f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          ra, 0b
4:                jal          ra, 11f
5:                jal          a6, 7f
6:                jal          t0, 4b
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          gp, 9b
11:               jal          sp, 5b
12:               slti         s1, gp, 949
sub_4_9:          jal          a7, 11f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          t2, 16f
3:                jal          t0, 2b
4:                jal          ra, 13f
5:                jal          ra, 1b
6:                jal          s4, 15f
7:                jal          s0, 0b
8:                jal          ra, 14f
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          ra, 6b
12:               jal          ra, 3b
13:               jal          ra, 10b
14:               jal          ra, 4b
15:               jal          s6, 7b
16:               lui          t6, 332048
sub_4_10:         jal          a7, 20f
0:                jal          s0, 24f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          s10, 26f
4:                jal          gp, 11f
5:                jal          ra, 14f
6:                jal          ra, 16f
7:                jal          ra, 13f
8:                jal          ra, 7b
9:                jal          ra, 23f
10:               jal          gp, 22f
11:               jal          ra, 5b
12:               jal          s10, 21f
13:               jal          ra, 0b
14:               jal          ra, 25f
15:               jal          ra, 1b
16:               jal          ra, 12b
17:               jal          ra, 3b
18:               jal          ra, 17b
19:               jal          ra, 9b
20:               jal          t2, 8b
21:               jal          t5, 19b
22:               jal          gp, 15b
23:               jal          ra, 10b
24:               jal          ra, 6b
25:               jal          ra, 18b
26:               sra          sp, tp, s1
sub_4_0:          jal          a7, 20f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          t3, 3f
3:                jal          ra, 12f
4:                jal          ra, 22f
5:                jal          ra, 10f
6:                jal          ra, 9f
7:                jal          s7, 5b
8:                jal          ra, 17f
9:                jal          s3, 2b
10:               jal          ra, 23f
11:               jal          ra, 0b
12:               jal          t0, 13f
13:               jal          ra, 18f
14:               jal          ra, 11b
15:               jal          sp, 21f
16:               jal          a6, 14b
17:               jal          ra, 19f
18:               jal          s0, 15b
19:               jal          s6, 1b
20:               jal          ra, 16b
21:               jal          ra, 7b
22:               jal          tp, 8b
23:               sltu         a3, sp, s7
sub_4_1:          jal          a7, 1f
0:                jal          s11, 3f
1:                jal          ra, 15f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          ra, 14f
5:                jal          s7, 13f
6:                jal          ra, 4b
7:                jal          ra, 0b
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               jal          ra, 11f
11:               jal          ra, 8b
12:               jal          ra, 10b
13:               jal          ra, 9b
14:               jal          tp, 16f
15:               jal          ra, 7b
16:               and          a7, ra, t3
                  sltu         gp, zero, a4
                  sltu         s3, s4, tp
                  sra          ra, a3, s4
                  xor          a3, s3, a7
                  nop
                  blt          s4, s0, 22f
                  auipc        s0, 350929
                  bne          t1, ra, 22f
                  add          s10, t0, t1
                  sll          a1, s8, s4
                  add          s10, tp, a0
                  sra          zero, s9, s3
                  and          s4, a6, a0
                  andi         s0, a6, 1769
                  and          s7, t3, s8
                  xor          s6, s9, a3
                  beq          t0, a1, 28f
                  sltu         t6, s10, a7
                  beq          a0, s6, 30f
                  slti         s5, gp, -555
                  addi         a5, zero, 584
                  ori          s1, t0, 1797
22:               and          s3, a4, s2
                  bge          t1, ra, 42f
                  slti         a6, sp, 1432
                  add          s11, s5, a6
                  srli         a3, s0, 27
                  andi         s0, t0, -2043
28:               srli         s0, zero, 24
                  sltu         s9, t6, t5
30:               or           s9, a7, a1
                  srai         s9, a4, 2
                  blt          s9, s0, 38f
                  sltiu        s5, s8, -890
                  blt          gp, t5, 38f
sub_4_11:         jal          a7, 6f
0:                jal          ra, 5f
1:                jal          gp, 24f
2:                jal          ra, 18f
3:                jal          ra, 11f
4:                jal          s6, 0b
5:                jal          s1, 22f
6:                jal          tp, 4b
7:                jal          ra, 27f
8:                jal          t5, 3b
9:                jal          ra, 23f
10:               jal          tp, 19f
11:               jal          ra, 14f
12:               jal          ra, 2b
13:               jal          ra, 16f
14:               jal          s3, 10b
15:               jal          ra, 7b
16:               jal          ra, 28f
17:               jal          gp, 9b
18:               jal          a2, 26f
19:               jal          ra, 13b
20:               jal          ra, 25f
21:               jal          ra, 20b
22:               jal          ra, 21b
23:               jal          s8, 1b
24:               jal          ra, 12b
25:               jal          t2, 15b
26:               jal          ra, 8b
27:               jal          ra, 17b
28:               srl          s4, s7, a5
                  slti         gp, s3, 374
                  add          s10, s6, s5
                  sub          zero, t0, a6
38:               sltiu        gp, ra, -1380
                  sra          sp, s6, a3
                  srl          sp, a1, s6
                  bltu         zero, a2, 47f
42:               and          s2, s0, ra
                  sra          a7, s3, sp
                  sll          s2, t5, sp
                  sll          t5, sp, a3
                  bgeu         s3, a1, 60f
47:               sltu         a3, a4, gp
                  nop
                  xor          s3, s5, a5
                  andi         s9, a3, 1734
                  auipc        s4, 974577
                  beq          a5, s7, 58f
                  srai         t5, tp, 2
                  bltu         s2, s3, 67f
                  add          s7, s11, t4
                  bltu         s3, s5, 60f
                  andi         t3, t0, -504
58:               slli         a6, a5, 19
                  sll          a5, a6, t5
60:               bltu         s5, a7, 72f
                  auipc        a7, 895683
                  srai         s3, t3, 23
                  bne          s2, t4, 65f
                  sltu         a6, a6, s11
65:               srl          t6, ra, a1
                  slli         a7, s11, 14
67:               bge          a1, a1, 73f
                  srai         s0, tp, 18
                  blt          s3, a1, 77f
                  beq          tp, s9, 83f
                  slti         ra, a5, -551
72:               beq          t2, a2, 90f
73:               addi         s10, s5, 1296
                  ori          s11, t0, 1153
                  lui          tp, 404275
                  nop
77:               beq          t5, s8, 84f
                  bge          a7, a3, 98f
                  slt          s8, a4, a5
                  addi         a6, a5, 1434
                  sra          a3, t5, t1
                  sltu         a2, s2, s2
83:               bgeu         s4, s3, 99f
84:               sub          s0, a5, s6
                  lui          t0, 183202
                  xor          s4, a0, t0
                  ori          s6, s9, 590
                  sltiu        t4, t6, -556
                  or           s11, s5, s2
90:               srl          a5, a1, s7
                  bltu         a3, t1, 101f
                  or           tp, s8, a3
                  sltu         s8, a6, s1
                  sll          s8, s11, t1
                  beq          s1, t2, 112f
                  blt          a1, s7, 100f
                  add          sp, t0, a2
98:               addi         s10, tp, -1790
99:               sltiu        s8, t0, 1638
100:              beq          ra, a3, 108f
101:              xor          s7, sp, s1
                  add          s3, a3, a6
                  bne          t0, a3, 118f
                  sub          t0, a1, a7
                  bne          ra, s3, 114f
                  andi         s3, a3, 1596
                  auipc        s7, 137413
108:              or           s11, t5, a7
                  andi         a2, s3, 1240
                  blt          s3, s1, 128f
                  sub          s1, s9, a4
112:              or           t2, a5, t4
sub_4_3:          jal          a7, 3f
0:                jal          ra, 11f
1:                jal          ra, 4f
2:                jal          sp, 5f
3:                jal          t4, 13f
4:                jal          s9, 16f
5:                jal          tp, 6f
6:                jal          sp, 10f
7:                jal          s8, 8f
8:                jal          ra, 9f
9:                jal          tp, 2b
10:               jal          ra, 15f
11:               jal          ra, 7b
12:               jal          sp, 17f
13:               jal          a1, 14f
14:               jal          tp, 12b
15:               jal          gp, 18f
16:               jal          ra, 0b
17:               jal          a7, 1b
18:               sub          t2, s5, tp
                  nop
114:              or           a7, tp, s4
                  xor          s4, s0, t2
                  blt          s2, ra, 132f
                  slli         s6, a5, 4
118:              nop
                  ori          t2, a1, 1714
                  andi         s10, gp, -1042
                  srli         a7, s7, 16
                  sltiu        a3, s3, -1903
                  sltu         s9, ra, a4
                  sltu         t2, s11, s11
                  lui          s5, 452559
                  srli         t6, a5, 0
                  lui          s6, 191918
128:              sltu         zero, a2, s11
                  bltu         t3, a1, 149f
                  xori         a7, t4, -1484
                  srl          s4, s10, a3
132:              and          t2, t1, t4
                  beq          t1, t4, 139f
                  addi         a1, t6, -807
                  bgeu         s8, sp, 141f
                  slt          s2, a2, t6
                  sltu         t0, a3, t4
                  andi         ra, a4, 1788
139:              ori          s10, zero, 1004
                  beq          s11, sp, 158f
141:              slti         t6, t3, -1235
                  auipc        s11, 46191
                  auipc        t2, 468653
                  lui          gp, 142587
                  srl          a1, ra, sp
                  sltiu        s7, t4, 1326
                  slt          t6, t0, ra
                  or           t3, s5, a4
149:              sub          s4, t1, t3
                  slt          s6, t6, t2
                  blt          zero, s8, 160f
                  ori          t2, zero, -1566
                  sltu         t2, t4, a2
                  slt          zero, a7, s0
                  bltu         t6, a2, 172f
                  srl          s1, s5, s2
                  sltu         sp, s9, s4
158:              xori         s3, ra, -601
                  xor          s2, s9, sp
160:              bltu         t2, s0, 173f
                  beq          t3, t4, 180f
                  srli         s1, t4, 1
                  slti         t2, s3, 612
                  srli         sp, s6, 15
                  xori         s3, s4, 1689
                  srai         s2, a3, 25
                  srl          a1, a5, a0
                  nop
                  sll          t2, a1, s11
                  add          t6, a4, s5
                  or           s3, s1, a5
172:              slli         a7, s6, 24
173:              lui          s10, 45337
                  sltu         s6, s6, zero
                  bltu         zero, a5, 185f
                  bge          gp, a2, 184f
                  sltiu        gp, s9, 29
                  xor          s1, t3, ra
                  sll          t2, a4, a6
180:              or           s11, a2, t2
                  or           a5, t5, t2
                  slli         s9, t6, 17
                  sltiu        s6, s11, -1195
184:              slli         s5, s11, 30
185:              or           t4, a2, a5
                  and          t3, s5, a3
                  or           s5, s9, s3
                  slli         gp, t4, 13
                  auipc        s2, 323600
                  andi         s8, s11, 1435
                  srai         s1, s4, 31
                  bltu         s5, s1, 207f
                  slt          s0, t6, a7
                  bgeu         t1, a4, 198f
                  blt          a0, s8, 207f
                  lui          s8, 935385
                  xori         zero, t2, 484
198:              sra          gp, s11, s5
                  blt          a1, a2, 211f
                  addi         s3, t6, -834
                  addi         tp, a4, -77
                  srai         a7, a5, 14
                  sub          s10, s10, s11
                  sltu         s7, tp, tp
                  or           gp, t3, s7
                  nop
207:              andi         a2, ra, -345
                  bge          a2, s3, 214f
                  and          s1, tp, a6
                  lui          s9, 1034001
211:              addi         zero, s0, 591
                  sra          t0, t5, a2
                  andi         a2, s11, 63
214:              sll          s5, s1, t6
                  bgeu         a2, t1, 227f
                  sll          t2, t4, t2
                  sltu         s4, zero, t6
                  sra          a5, s5, s10
                  slli         a3, s1, 6
                  sltu         t2, gp, a6
                  sub          ra, s7, a7
                  and          a2, t3, t5
                  nop
                  bge          a4, t0, 228f
                  sub          s7, sp, s11
                  sra          s2, s10, s7
227:              sltiu        s5, a1, -1042
228:              auipc        t2, 736648
                  or           s10, gp, sp
                  andi         s6, s4, -1281
                  sltiu        s8, zero, 1645
                  and          t0, t6, a3
                  beq          t4, s8, 246f
                  sll          a6, a1, s5
                  ori          gp, s11, 1978
                  slli         ra, a7, 1
                  and          t6, s7, s8
                  sltu         a3, tp, a7
                  bne          s9, a6, 255f
                  sltu         t4, s6, t1
                  xor          t6, sp, t2
                  and          s1, s1, tp
                  sll          tp, sp, ra
                  srai         t4, a5, 29
                  addi         t4, s2, 1069
246:              or           s1, s3, s2
                  slli         gp, zero, 8
                  or           s6, t6, a5
                  nop
                  sltu         sp, gp, s11
                  xor          s3, a0, s3
                  bltu         s2, a3, 254f
                  bgeu         t6, s11, 273f
254:              sltu         s6, a6, s9
255:              srli         a6, s5, 9
                  bge          t4, a1, 262f
                  ori          s10, t6, 293
                  slt          s7, a3, s4
                  lui          s1, 381584
                  bge          a4, t1, 267f
                  sltiu        s11, s7, -1315
262:              srl          zero, t1, s2
                  andi         t3, s2, 1210
                  addi         a5, s7, 599
                  ori          a5, s2, -1296
                  slti         t4, s5, 120
267:              sltu         t4, t1, s3
                  sltiu        a7, s0, -1914
                  sll          t6, t0, t1
                  auipc        s8, 274924
                  beq          tp, a1, 286f
                  srl          a1, s10, s7
273:              srai         s10, a6, 28
                  sra          a1, a0, s1
                  lui          t0, 917210
                  srai         a7, s0, 4
                  sltiu        s4, s4, -370
                  srli         s5, ra, 17
                  addi         s11, t0, 1074
                  sltu         s7, t2, gp
                  sub          a5, s1, a6
                  or           a1, a4, sp
                  slli         s0, a1, 24
                  sltu         s2, a7, t6
                  lui          a1, 733787
286:              xori         a3, s6, -1178
                  sltiu        a3, t5, -101
                  nop
                  slli         t0, a2, 1
                  srli         s1, t1, 5
                  sra          t6, tp, tp
                  srli         t0, s1, 13
                  addi         s1, t4, -900
                  add          a1, t2, t2
                  sltiu        sp, gp, 163
                  sub          s3, s6, sp
                  lui          zero, 124095
                  beq          s3, t6, 302f
                  sltiu        t3, s6, 1951
                  bge          a0, a7, 316f
                  or           s0, a5, a7
302:              sll          ra, t2, t6
                  bltu         gp, s1, 323f
                  nop
                  sub          t0, s10, tp
                  auipc        a6, 913019
                  bne          s10, a0, 324f
                  sub          s11, t1, t4
                  sltiu        s11, s1, 1574
                  sub          ra, s10, sp
                  lui          s6, 46780
                  andi         s4, a0, 716
                  srl          s7, s1, a3
                  ori          t3, a7, -1307
                  xori         t6, t2, 1018
316:              srli         s4, s7, 21
                  sltu         t4, s10, t4
                  srai         s9, a1, 22
                  bltu         a2, s2, 337f
                  srai         s3, s6, 1
                  bge          s6, t4, 335f
                  addi         a6, s5, -1605
323:              sll          ra, s6, s7
324:              srai         s6, s11, 1
                  sltiu        t0, s3, -1047
                  bgeu         a4, a7, 334f
                  sltu         s10, s9, a7
                  addi         s4, s2, 663
                  andi         s2, a6, -61
                  add          sp, s3, ra
                  slti         a5, s1, -462
                  bltu         s2, a2, 338f
                  and          t3, a3, a5
334:              nop
335:              auipc        s7, 935398
                  slti         s6, s3, -1001
337:              bne          zero, tp, 345f
338:              bge          s3, s5, 346f
                  or           s0, t4, s10
                  auipc        t4, 720541
                  slt          s9, a2, a4
                  sra          t2, t0, zero
                  blt          a6, s2, 361f
                  blt          s6, s10, 357f
345:              slti         a5, t1, -1883
346:              nop
                  nop
                  add          s4, s6, s6
                  slt          t6, t0, zero
                  srl          s10, a7, s7
                  xor          s7, s9, a6
                  slti         a7, a0, 80
                  add          s3, a0, s2
                  or           a5, a1, a1
                  bltu         a5, s0, 357f
                  beq          sp, ra, 374f
357:              bltu         t4, s10, 361f
                  and          s2, s9, a4
                  slt          s5, a2, s4
                  srl          s2, s0, t2
361:              beq          a1, s0, 377f
                  sra          gp, t3, a0
                  or           s6, s3, t5
                  xor          s4, t5, tp
                  slti         s3, s5, 1779
                  or           s6, s1, t4
                  bgeu         a4, s1, 371f
                  srai         t0, t1, 10
                  sll          a2, s2, tp
                  add          s5, s7, s10
371:              add          s9, s11, t0
                  sll          sp, s0, s6
                  sltiu        zero, a4, 14
374:              andi         s10, t2, -429
                  nop
                  beq          s5, t3, 382f
377:              slli         t6, a4, 2
                  sub          t2, tp, a3
                  andi         s1, s11, -1762
                  bne          s7, t4, 396f
                  sub          s4, t4, gp
382:              srai         a6, s11, 10
                  slt          s11, a0, s9
                  srli         t6, sp, 12
                  blt          a5, tp, 397f
                  or           t3, s2, gp
                  beq          a7, t3, 406f
                  sub          a3, a1, t4
                  xori         t0, tp, -1470
                  slt          a1, t4, a4
                  bltu         tp, s4, 405f
                  addi         a1, a6, 1497
                  auipc        t5, 710357
                  sltu         s7, a1, s2
                  addi         s8, a2, -1804
396:              bltu         a0, ra, 413f
397:              bltu         ra, s9, 407f
                  srai         a5, t6, 22
                  addi         s5, a6, -1580
                  nop
                  srl          s11, t0, t0
                  xor          s9, a4, s8
                  nop
                  sra          t2, zero, s7
405:              bne          a3, t5, 418f
406:              addi         a5, a6, -420
407:              bge          s11, a0, 416f
                  slti         a1, s3, 604
                  ori          s3, t3, 1654
                  sll          a2, s1, a6
                  sltu         a2, a0, a7
                  xor          s9, a2, gp
413:              ori          t2, s10, 928
                  ori          t3, a7, 714
                  beq          ra, a1, 419f
416:              auipc        a7, 667465
                  sra          t4, s3, a5
418:              slli         sp, a0, 20
419:              sub          t3, s2, s9
                  srli         sp, sp, 14
                  sra          s7, t1, a5
                  srl          s11, sp, s5
                  beq          tp, gp, 435f
                  srl          s8, s4, a4
                  and          s2, s0, s4
                  blt          s6, t0, 443f
                  nop
                  addi         s9, t4, -942
                  srli         s2, t3, 17
                  bgeu         a4, t0, 436f
                  ori          s4, t5, -698
                  xor          s7, s2, a3
                  or           tp, s6, s11
                  slt          s11, t5, t1
435:              nop
436:              srli         t0, a0, 16
                  addi         a2, s10, 929
                  lui          s7, 487012
                  srai         a3, s5, 11
                  xori         s4, a6, -1993
                  xori         s3, a0, -850
                  add          t3, s1, s5
443:              sra          t5, zero, t5
                  lui          ra, 213377
                  xori         s5, a4, 1496
                  srai         tp, s8, 11
                  bge          a4, a6, 453f
                  srl          s5, t2, zero
                  beq          t3, a4, 461f
                  bge          s3, s6, 465f
                  xor          sp, a4, a7
                  slt          gp, a1, a1
453:              srl          ra, gp, s5
                  slli         s8, s0, 25
                  bltu         s7, gp, 475f
                  sra          zero, a4, gp
                  bge          s4, a1, 472f
                  sltiu        t4, sp, -132
                  and          a6, s7, a1
                  xor          s6, gp, a3
461:              or           s9, t0, s8
                  sub          gp, zero, a6
                  slli         s3, ra, 6
                  auipc        a2, 506314
465:              sltu         s5, s11, a2
                  andi         s8, a1, 301
                  and          s5, sp, s2
                  bge          t1, t5, 475f
                  slli         s2, t4, 29
                  blt          t2, a7, 490f
                  blt          s9, a5, 473f
472:              xori         t2, s7, 1647
473:              sra          ra, t0, s9
                  xori         s4, a5, 1321
475:              slli         s2, s8, 19
                  xor          s4, tp, a2
                  srli         sp, s4, 20
                  bgeu         t4, a6, 494f
                  sll          s3, t2, t0
                  sltiu        a7, a1, -959
                  nop
                  blt          t6, sp, 497f
                  xori         zero, s10, 1942
                  auipc        a5, 1000043
                  slli         s6, t3, 2
                  add          t0, tp, t5
                  lui          t4, 586841
                  sll          s0, s11, s3
                  sltu         s7, t2, s3
490:              srai         a7, s2, 5
                  srai         s6, s3, 20
                  blt          s2, t3, 512f
                  bltu         tp, s6, 499f
494:              srl          a6, t4, s1
                  slli         sp, a2, 25
                  srai         s8, s2, 9
497:              lui          t6, 333669
                  sltiu        tp, gp, -1628
499:              nop
                  slt          t2, gp, s9
                  blt          a3, tp, 514f
                  bgeu         s7, zero, 521f
                  add          a1, s10, a6
                  ori          s1, a4, -1031
                  andi         a1, tp, -1903
                  srai         t4, sp, 14
                  and          a3, a5, t0
                  sra          gp, zero, tp
                  slli         gp, s2, 18
                  blt          s10, s7, 514f
                  bgeu         s11, t3, 524f
512:              blt          t0, t3, 518f
                  slli         t2, t6, 29
514:              srl          sp, s8, sp
                  andi         s9, zero, -352
                  add          s5, t1, t2
                  sll          a7, a5, zero
518:              beq          tp, s2, 522f
                  or           a5, s9, s6
                  bgeu         gp, t4, 538f
521:              srli         t5, s2, 18
522:              bge          t0, a0, 537f
                  srli         a5, s0, 19
524:              slli         t2, a2, 19
                  blt          sp, s3, 532f
                  sltiu        s2, s7, -1470
                  slt          sp, tp, t3
                  sub          s0, s9, s10
                  and          tp, a7, s6
                  sra          gp, t6, s8
                  sll          s1, s6, s9
532:              lui          a6, 504815
                  and          s8, gp, s0
                  xor          s0, t0, t1
                  bltu         s8, s1, 543f
                  slti         gp, s4, 1888
537:              addi         s10, s5, -307
538:              sltu         t5, s10, a3
                  auipc        s0, 554163
                  sra          t3, s2, a5
                  blt          t2, s11, 549f
                  auipc        zero, 867873
543:              slt          a1, t6, gp
                  beq          t6, s2, 550f
                  andi         ra, a0, 1421
                  sra          t2, gp, t1
                  bne          t6, s4, 557f
                  lui          a6, 416945
549:              nop
550:              bne          a7, s5, 567f
                  bne          s10, s7, 568f
                  xori         zero, a4, 991
                  sltu         s10, s11, ra
                  srli         s3, s9, 8
                  or           a1, t5, a4
                  slli         a2, s2, 21
557:              slt          s1, tp, t5
                  beq          s11, s3, 570f
                  slli         s1, t5, 30
                  sra          s4, s0, s10
                  beq          s7, s2, 573f
                  sra          s10, s1, gp
                  sub          s4, s2, t2
                  slt          t2, s9, s1
                  or           s7, s6, s7
                  sub          s1, ra, sp
567:              andi         sp, t1, -1021
568:              srl          sp, t3, ra
                  and          s4, a3, s8
570:              bne          t3, s0, 579f
                  or           a1, s2, s11
                  bne          sp, t1, 576f
573:              auipc        s0, 312717
                  and          s3, s6, s7
                  sll          s6, s6, a5
576:              bltu         t5, s4, 588f
                  srai         gp, s8, 24
                  sltiu        s3, ra, -83
579:              lui          a1, 789971
                  xor          a1, t3, a5
                  sll          gp, a4, s2
                  andi         t6, a7, 221
                  andi         a2, a5, 1117
                  slt          a6, s0, ra
                  srl          tp, a2, s6
                  srli         s7, a1, 17
                  sltiu        a7, t2, -1135
588:              slli         s0, sp, 14
                  addi         a6, a4, 244
                  slti         s7, a6, -194
                  add          t0, sp, t5
                  slti         tp, t0, -494
                  add          a2, s10, t5
                  or           gp, t2, t3
                  andi         t6, t3, -250
                  and          tp, tp, a0
                  beq          a3, s4, 617f
                  sltu         t4, s11, s5
                  slt          s3, t0, t1
                  sltu         s2, s3, s11
                  lui          t4, 4785
                  blt          s7, t3, 620f
                  or           zero, a2, a6
                  sub          gp, s0, t2
                  beq          s8, a4, 611f
                  slli         t2, a3, 30
                  bne          a0, sp, 621f
                  or           s7, t3, ra
                  sll          s6, zero, s0
                  add          s8, tp, s3
611:              ori          s5, s2, 471
                  sra          s2, a3, a0
                  ori          s6, s11, -564
                  bge          t5, t4, 630f
                  andi         s2, s6, 1474
                  andi         s2, t1, -810
617:              bne          t0, s1, 626f
                  auipc        t2, 283161
                  and          tp, tp, s10
620:              bne          a1, t4, 633f
621:              bge          a2, tp, 633f
                  srli         a6, t5, 18
                  srai         t0, t4, 10
                  slt          t5, zero, s3
                  srl          s3, t3, t3
626:              srli         s4, t4, 5
                  sltu         a7, s6, s6
                  sltu         s5, a0, s0
                  sltiu        t0, a3, -1154
630:              addi         sp, s3, -1130
                  slti         s2, s8, 359
                  slli         a1, s11, 26
633:              bne          s7, a4, 637f
                  srli         s5, s6, 15
                  beq          t2, s3, 637f
                  bgeu         a6, s1, 637f
637:              sltiu        s7, s2, -266
                  lw           a7, 4(t1)
                  srli         a6, s5, 20
                  addi         a2, a2, 894
                  lui          sp, 9441
                  addi         s4, s9, 237
                  addi         t1, t1, 24
                  addi         s10, t3, -718
933:              addi x5, x17, 0
933:              jalr x5, x5, 0
sub_1:            srl          tp, s7, a7
                  or           s7, a4, ra
                  and          s1, a2, t2
                  add          sp, a3, s1
                  auipc        s7, 362472
                  nop
                  addi         t1, t1, -36
                  lui          sp, 1016426
                  sw           a7, 4(t1)
                  sll          s1, s1, sp
                  srai         t2, s5, 4
                  add          t2, s11, a7
                  srai         a3, s1, 26
                  sll          s0, s2, t4
                  srli         t6, s10, 1
                  bne          a7, s5, sub_1_j3 #branch to jump instr
                  xor          ra, s9, a1
sub_1_j3:         jal          a7, sub_2 #jump sub_1 -> sub_2
sub_1_1:          jal          a7, 17f
0:                jal          s0, 19f
1:                jal          ra, 16f
2:                jal          s1, 8f
3:                jal          a1, 10f
4:                jal          s9, 7f
5:                jal          ra, 15f
6:                jal          ra, 22f
7:                jal          s0, 1b
8:                jal          s11, 14f
9:                jal          ra, 18f
10:               jal          ra, 25f
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               jal          ra, 24f
14:               jal          ra, 9b
15:               jal          ra, 12b
16:               jal          sp, 11b
17:               jal          ra, 0b
18:               jal          s10, 26f
19:               jal          ra, 13b
20:               jal          sp, 6b
21:               jal          ra, 3b
22:               jal          ra, 21b
23:               jal          s6, 20b
24:               jal          a5, 23b
25:               jal          s11, 5b
26:               nop
sub_1_3:          jal          a7, 15f
0:                jal          s8, 21f
1:                jal          t5, 11f
2:                jal          ra, 0b
3:                jal          ra, 17f
4:                jal          ra, 6f
5:                jal          t5, 7f
6:                jal          s0, 14f
7:                jal          ra, 16f
8:                jal          gp, 2b
9:                jal          gp, 8b
10:               jal          ra, 5b
11:               jal          tp, 20f
12:               jal          ra, 4b
13:               jal          ra, 1b
14:               jal          ra, 18f
15:               jal          ra, 9b
16:               jal          ra, 19f
17:               jal          ra, 13b
18:               jal          ra, 22f
19:               jal          s3, 12b
20:               jal          ra, 10b
21:               jal          ra, 3b
22:               or           t3, t0, s4
sub_1_2:          jal          a7, 9f
0:                jal          s3, 19f
1:                jal          ra, 8f
2:                jal          ra, 4f
3:                jal          ra, 21f
4:                jal          ra, 11f
5:                jal          ra, 7f
6:                jal          s1, 0b
7:                jal          ra, 1b
8:                jal          ra, 20f
9:                jal          gp, 14f
10:               jal          ra, 12f
11:               jal          ra, 18f
12:               jal          a5, 15f
13:               jal          ra, 6b
14:               jal          ra, 10b
15:               jal          ra, 5b
16:               jal          a1, 17f
17:               jal          ra, 13b
18:               jal          t5, 16b
19:               jal          s3, 3b
20:               jal          s10, 2b
21:               ori          t3, s1, 512
sub_1_0:          jal          a7, 17f
0:                jal          t2, 10f
1:                jal          ra, 9f
2:                jal          ra, 14f
3:                jal          s6, 15f
4:                jal          ra, 8f
5:                jal          ra, 16f
6:                jal          t0, 11f
7:                jal          s4, 20f
8:                jal          ra, 18f
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          gp, 13f
12:               jal          ra, 3b
13:               jal          sp, 0b
14:               jal          ra, 12b
15:               jal          ra, 4b
16:               jal          ra, 19f
17:               jal          sp, 6b
18:               jal          ra, 1b
19:               jal          ra, 7b
20:               srai         a7, s5, 14
                  lui          t3, 949783
                  beq          s10, a4, 15f
                  and          a5, s6, s1
                  srai         s2, a6, 15
                  bltu         s7, tp, 15f
                  and          s4, s10, t3
                  beq          a6, t3, 7f
7:                slt          ra, t6, s8
                  nop
                  sub          s9, a1, s3
                  lui          gp, 195534
                  xor          a7, t4, s6
                  slli         s5, s5, 28
                  xori         t3, a7, -993
                  auipc        s7, 470296
15:               sltiu        s3, a3, 1239
                  beq          tp, ra, 36f
                  slt          s10, tp, s10
                  andi         s4, gp, 1541
                  addi         s4, a2, -432
                  srai         s6, tp, 6
                  add          s6, s2, a1
                  beq          s11, a5, 25f
                  sll          t0, s0, s3
                  slli         t5, t0, 12
25:               blt          sp, t6, 38f
                  andi         s5, ra, -629
                  add          t0, s2, s8
                  sltiu        s2, s9, 1984
                  addi         t0, a5, -1146
                  srai         sp, s11, 24
                  xor          s11, s6, t2
                  and          s10, s2, a6
                  bge          sp, gp, 45f
                  sub          s9, a2, sp
                  sll          t5, s1, t1
36:               bgeu         s8, t4, 41f
                  lui          s1, 636694
38:               slli         a3, t0, 9
                  andi         t4, zero, -2042
                  or           zero, a2, s4
41:               bge          s9, s7, 60f
                  slt          s1, s3, tp
                  or           s0, t1, ra
                  bltu         t2, s7, 55f
45:               slt          s7, s8, s4
                  addi         t6, a4, -1953
                  slli         s2, a4, 16
                  slt          t2, ra, s0
                  or           s2, a4, s10
                  bge          t1, s6, 66f
                  blt          a5, t0, 68f
                  blt          a6, s10, 57f
                  slt          t2, s1, s0
                  bne          a7, a7, 57f
55:               sub          s0, s6, s1
                  add          sp, a4, s9
57:               srli         s5, a5, 1
                  andi         t3, s0, -663
                  srli         s11, a5, 5
60:               nop
                  nop
                  bltu         t1, s3, 69f
                  andi         s7, ra, 684
                  sub          t2, a3, a7
                  slli         t2, s10, 7
66:               bge          t2, ra, 83f
                  lui          zero, 62373
68:               slti         s10, s4, -1808
69:               sltu         s9, s7, gp
                  slt          s9, sp, s7
                  or           s10, zero, s1
                  sltiu        t6, s3, -1641
                  sub          s5, a3, s6
                  or           zero, a7, s9
                  bgeu         t1, s8, 86f
                  bgeu         zero, s3, 85f
                  bgeu         tp, tp, 96f
                  slt          tp, s2, s11
                  srli         a5, sp, 2
                  srai         s11, s8, 13
                  add          t3, s11, s6
                  sra          s0, a5, tp
83:               xor          s6, t0, a3
                  lui          s8, 454485
85:               bne          gp, a3, 103f
86:               bge          t5, a0, 95f
                  slt          s3, t6, s4
                  sltiu        gp, t3, 443
                  or           s11, t2, s8
                  xor          s6, t2, s8
                  slli         t4, gp, 4
                  andi         s3, t4, 571
                  andi         a5, s11, -1852
                  auipc        s4, 217912
95:               slt          tp, s3, s0
96:               nop
                  la           s7, sub_2
                  slti         a1, s1, -1474
                  srli         t0, a6, 16
                  slt          a7, t5, s7
                  srl          sp, s7, t4
                  addi         s7, s7, 538
                  xor          s2, zero, s1
                  sra          t5, gp, sp
                  and          s3, s7, t3
                  blt          s11, t6, sub_1_j2 #branch to jump instr
                  and          s10, a4, a6
sub_1_j2:         jalr         a7, s7, -538 #jump sub_1 -> sub_2
                  xori         s9, t1, -1013
                  bltu         gp, t0, 100f
                  andi         a3, s9, -1688
100:              sltu         a5, a2, t0
                  xori         t6, a7, -645
                  beq          s2, s8, 119f
103:              lui          t2, 467361
                  and          a2, a1, s0
                  xor          t6, s0, a4
                  bne          a5, s5, 116f
                  auipc        zero, 95913
                  bge          s1, s3, 119f
                  nop
                  lui          s10, 407434
                  slt          sp, gp, a3
                  bltu         zero, t5, 125f
                  bne          a2, s1, 130f
                  bne          s11, t3, 130f
                  addi         a3, s2, 2022
116:              srai         gp, s5, 8
                  slli         t5, a0, 8
                  sltu         s4, t2, gp
119:              lui          s6, 349561
                  andi         t2, tp, 677
                  beq          t5, t6, 134f
                  nop
                  lui          t5, 346242
                  auipc        t6, 639313
125:              sra          t5, s5, a3
                  bltu         a7, t4, 139f
                  bltu         gp, s6, 129f
                  blt          a6, sp, 139f
129:              lui          s11, 264418
130:              sltiu        t4, a7, -1526
                  bne          s3, s6, 132f
132:              sltu         t2, s4, s5
                  sltu         s4, s5, s7
134:              nop
                  xor          sp, s4, t0
                  auipc        s8, 760763
                  and          s8, t4, t3
                  srai         a5, a6, 15
139:              or           a1, s1, a1
                  slti         a6, t5, -218
                  addi         zero, s4, 1610
                  sra          t0, s2, t0
                  auipc        t0, 49845
                  lui          s1, 448058
                  addi         a3, s5, -194
                  add          t2, ra, a0
                  xor          gp, gp, a1
                  sra          s7, ra, s4
                  beq          s3, a0, 160f
                  andi         s11, s6, 980
                  sub          t3, ra, gp
                  and          a2, s0, t6
                  ori          a7, s4, 636
                  or           a7, s4, s7
                  sll          a6, a4, s1
                  sra          a6, s10, a7
                  andi         t3, sp, -1687
                  sub          s3, a1, s10
                  nop
160:              bgeu         s3, a6, 178f
                  sltu         s1, t4, t1
                  bne          a7, s5, 175f
                  lui          a2, 351525
                  or           a7, s3, s9
                  sub          a3, ra, a3
                  sll          a1, a1, a7
                  add          s2, a6, s6
                  bgeu         a7, s7, 179f
                  lui          s3, 1034432
                  bgeu         s10, t2, 190f
                  nop
                  srai         sp, s11, 0
                  srli         s9, s9, 17
                  and          a7, t6, s8
175:              and          ra, t5, t1
                  bge          zero, s9, 183f
                  add          t6, s2, t6
178:              slti         sp, tp, -1832
179:              slti         a7, t5, 435
                  bgeu         s10, a6, 183f
                  sltu         a5, a3, s1
                  srli         sp, s8, 18
183:              sub          a7, t5, a2
                  bge          sp, t1, 193f
                  blt          s0, tp, 194f
                  slt          s11, sp, s4
                  sltu         s0, s6, t3
                  bne          t6, s7, 201f
                  srl          s4, gp, a0
190:              sltiu        s3, s4, 448
                  sll          t0, s8, s6
                  addi         sp, s1, 147
193:              ori          s5, a1, 188
194:              ori          gp, a5, -327
                  and          s3, s11, a5
                  add          s9, gp, s5
                  slt          a6, ra, s0
                  add          gp, s7, t4
                  slli         t3, a1, 21
                  slt          s5, s6, a3
201:              slli         a3, s8, 22
                  auipc        sp, 571931
                  beq          t3, s10, 215f
                  slti         a2, t4, -347
                  bltu         s0, s1, 210f
                  lui          t3, 87971
                  sra          t4, a1, t5
                  srli         s11, a2, 7
                  auipc        t6, 216886
210:              lui          a1, 421242
                  xor          ra, s7, t2
                  bne          s0, sp, 229f
                  slt          s7, a6, s1
                  nop
215:              slti         t5, t4, -1375
                  sltu         a7, t5, t6
                  slti         a3, zero, -1756
                  slti         s5, s9, -1769
                  andi         s9, s5, -776
                  andi         t2, zero, -893
                  auipc        tp, 12174
                  slt          s11, s7, s6
                  auipc        t5, 86706
                  slti         a1, a7, 925
                  ori          a7, ra, 179
                  and          s4, ra, s3
                  and          s10, s9, a3
                  slt          tp, s8, sp
229:              andi         t2, t3, 2010
                  nop
                  srli         t0, s6, 30
                  xor          a1, a7, s3
                  ori          gp, s5, -1853
                  xor          a2, s10, t1
                  lw           a7, 4(t1)
                  slt          t6, s2, tp
                  addi         t1, t1, 36
                  nop
                  ori          a5, s0, 845
367:              addi x26, x17, 0
367:              jalr x26, x26, 0
sub_3:            sll          a1, s9, s7
                  sltu         s7, t1, sp
                  addi         t1, t1, -16
                  slt          s9, zero, a7
                  srl          a1, t0, gp
                  addi         s10, a1, 683
                  addi         s2, t5, -864
                  nop
                  sw           a7, 4(t1)
                  xori         s3, t2, -1206
                  lui          tp, 905741
                  and          s9, s3, s10
                  xor          s0, a6, a5
                  bge          t5, t5, 15f
                  lui          t3, 559557
                  slli         s7, tp, 10
                  srl          a6, a5, a4
                  slli         a7, s4, 15
                  slti         zero, a0, -1377
                  srai         s8, s0, 28
                  beq          s3, s5, 17f
                  or           s6, a7, s11
                  sra          t3, t2, t2
                  slt          s5, t4, s3
                  auipc        t5, 567276
                  bne          a5, t4, 18f
15:               sltiu        zero, a2, 429
                  slt          a5, a7, gp
17:               bgeu         a4, t6, 18f
18:               sra          a2, a6, gp
                  sltu         s7, s8, t1
                  srli         sp, s7, 23
                  lw           a7, 4(t1)
                  sll          t6, s9, t2
                  sll          s11, a2, a4
                  sub          t6, a4, a7
                  addi         t1, t1, 16
                  xori         tp, t3, 823
38:               addi x11, x17, 0
38:               jalr x11, x11, 0
sub_2:            srai         gp, a1, 24
                  addi         t1, t1, -32
                  sra          s10, s2, s9
                  sw           a7, 4(t1)
                  srai         t0, s0, 2
                  slti         s9, a0, -1076
                  andi         s5, s4, 1122
                  sltiu        s6, t4, 437
                  slt          a6, gp, gp
                  xor          s11, sp, t2
                  srai         s7, t1, 17
                  slli         ra, s9, 15
                  sra          a6, t2, sp
                  xori         s7, a2, 1479
                  sra          tp, s10, s2
                  and          a6, a0, t2
                  xori         a1, a7, -964
sub_2_j4:         jal          a7, sub_4 #jump sub_2 -> sub_4
                  la           t3, sub_5
                  xori         s5, s0, -104
                  srli         t5, a6, 30
                  sll          s10, s11, ra
                  addi         t3, t3, 546
                  addi         sp, s4, 1451
                  beq          t5, a7, sub_2_j5 #branch to jump instr
                  slti         s5, a5, 1816
sub_2_j5:         jalr         a7, t3, -545 #jump sub_2 -> sub_5
                  la           s2, sub_3
                  add          s7, s0, t3
                  srli         s4, a7, 25
                  addi         s2, s2, -628
                  add          s5, s11, gp
                  bgeu         a7, t4, sub_2_j6 #branch to jump instr
                  auipc        s0, 114757
                  sltu         s9, s1, s4
                  xor          a7, s7, t1
sub_2_j6:         jalr         a7, s2, 628 #jump sub_2 -> sub_3
                  bne          a2, s2, 6f
                  slt          a1, a0, s6
                  sub          t5, t3, t1
                  andi         s8, s0, -1414
                  beq          a5, s11, 11f
                  andi         s3, a3, -1429
6:                srli         s6, s5, 22
                  slti         s1, s7, 1543
                  lui          tp, 729345
                  nop
                  sub          s1, s4, t6
11:               slti         tp, a2, -1469
                  sltiu        ra, a3, -688
                  sltiu        sp, a0, 941
                  andi         s3, sp, -1129
                  or           a3, gp, t4
                  xori         a1, a2, 1473
                  lw           a7, 4(t1)
                  srli         s10, s6, 21
                  nop
                  slti         a5, s0, -338
                  addi         t1, t1, 32
                  addi         s7, s2, 1163
                  and          t6, a5, s11
61:               addi x4, x17, 1
61:               jalr x4, x4, 0
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
mmode_intr_vector_1:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_2:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_3:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_4:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_5:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_6:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_7:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_8:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_9:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_10:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_11:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_12:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_13:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_14:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_15:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x14, x6, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x25, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x25, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x25, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x25, x12, ecall_handler
                  li x12, 0x1
                  beq x25, x12, instr_fault_handler
                  li x12, 0x5
                  beq x25, x12, load_fault_handler
                  li x12, 0x7
                  beq x25, x12, store_fault_handler
                  li x12, 0xc
                  beq x25, x12, pt_fault_handler
                  li x12, 0xd
                  beq x25, x12, pt_fault_handler
                  li x12, 0xf
                  beq x25, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x6, x14, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x14, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x14, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x6, x14, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x6, x14, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x6, x14, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
