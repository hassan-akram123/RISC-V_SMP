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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x1bba64b1
                  li x1, 0xfc9bffed
                  li x2, 0xf3e4edbb
                  li x3, 0x80000000
                  li x4, 0xd
                  li x5, 0xf2f79efa
                  li x6, 0xf028177f
                  li x7, 0x80000000
                  li x8, 0xf54e9511
                  li x9, 0x8
                  li x10, 0xd997dd03
                  li x11, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x6
                  li x16, 0x4c944060
                  li x17, 0x8
                  li x18, 0x92dc23f2
                  li x20, 0x5
                  li x21, 0xfb805b95
                  li x22, 0x0
                  li x23, 0xf83b016a
                  li x24, 0xb
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xfbe2d609
                  li x28, 0x80000000
                  li x29, 0xcae573e3
                  li x30, 0xc6856297
                  li x31, 0x6
                  la x19, user_stack_end
main:             jal          t1, 14f
0:                jal          t1, 8f
1:                jal          ra, 7f
2:                jal          s11, 10f
3:                jal          s5, 11f
4:                jal          ra, 16f
5:                jal          ra, 4b
6:                jal          ra, 0b
7:                jal          t4, 13f
8:                jal          ra, 17f
9:                jal          t1, 5b
10:               jal          t1, 12f
11:               jal          ra, 6b
12:               jal          ra, 18f
13:               jal          sp, 2b
14:               jal          ra, 3b
15:               jal          ra, 1b
16:               jal          ra, 15b
17:               jal          a1, 9b
18:               ori          a0, s4, -1190
main_16:          jal          t1, 24f
0:                jal          t1, 23f
1:                jal          ra, 26f
2:                jal          t1, 20f
3:                jal          t1, 28f
4:                jal          ra, 7f
5:                jal          t1, 25f
6:                jal          s10, 21f
7:                jal          ra, 3b
8:                jal          ra, 12f
9:                jal          t1, 8b
10:               jal          ra, 13f
11:               jal          ra, 18f
12:               jal          t1, 1b
13:               jal          ra, 22f
14:               jal          s0, 27f
15:               jal          ra, 14b
16:               jal          t1, 29f
17:               jal          sp, 10b
18:               jal          ra, 5b
19:               jal          ra, 17b
20:               jal          ra, 0b
21:               jal          ra, 4b
22:               jal          ra, 6b
23:               jal          ra, 15b
24:               jal          tp, 9b
25:               jal          ra, 19b
26:               jal          ra, 11b
27:               jal          t1, 16b
28:               jal          sp, 2b
29:               auipc        s7, 838941
main_0:           jal          t1, 12f
0:                jal          ra, 19f
1:                jal          ra, 9f
2:                jal          gp, 3f
3:                jal          a5, 6f
4:                jal          s7, 8f
5:                jal          ra, 11f
6:                jal          t0, 10f
7:                jal          ra, 14f
8:                jal          ra, 7b
9:                jal          s6, 0b
10:               jal          t2, 4b
11:               jal          ra, 2b
12:               jal          s10, 15f
13:               jal          t1, 16f
14:               jal          a6, 13b
15:               jal          ra, 5b
16:               jal          a1, 18f
17:               jal          t1, 1b
18:               jal          ra, 17b
19:               or           tp, t6, s2
main_5:           jal          t1, 11f
0:                jal          s5, 17f
1:                jal          ra, 0b
2:                jal          sp, 18f
3:                jal          ra, 13f
4:                jal          ra, 3b
5:                jal          ra, 19f
6:                jal          ra, 21f
7:                jal          s2, 16f
8:                jal          ra, 25f
9:                jal          gp, 20f
10:               jal          ra, 4b
11:               jal          ra, 24f
12:               jal          t1, 5b
13:               jal          t0, 8b
14:               jal          t1, 15f
15:               jal          t1, 27f
16:               jal          ra, 28f
17:               jal          ra, 10b
18:               jal          a3, 6b
19:               jal          ra, 2b
20:               jal          a0, 1b
21:               jal          t1, 26f
22:               jal          s0, 14b
23:               jal          ra, 29f
24:               jal          ra, 12b
25:               jal          s2, 22b
26:               jal          ra, 7b
27:               jal          ra, 23b
28:               jal          ra, 9b
29:               addi         t4, s9, -480
main_21:          jal          t1, 5f
0:                jal          ra, 25f
1:                jal          ra, 18f
2:                jal          a1, 28f
3:                jal          ra, 2b
4:                jal          ra, 0b
5:                jal          t1, 17f
6:                jal          gp, 4b
7:                jal          ra, 12f
8:                jal          ra, 21f
9:                jal          s7, 20f
10:               jal          t1, 16f
11:               jal          ra, 1b
12:               jal          ra, 9b
13:               jal          t1, 3b
14:               jal          ra, 22f
15:               jal          tp, 8b
16:               jal          ra, 7b
17:               jal          ra, 19f
18:               jal          t1, 6b
19:               jal          tp, 13b
20:               jal          t1, 11b
21:               jal          s0, 14b
22:               jal          s8, 29f
23:               jal          ra, 24f
24:               jal          ra, 26f
25:               jal          t2, 23b
26:               jal          t1, 27f
27:               jal          s8, 15b
28:               jal          ra, 10b
29:               lui          s2, 841326
main_18:          jal          t1, 3f
0:                jal          ra, 7f
1:                jal          a6, 5f
2:                jal          s8, 10f
3:                jal          t1, 0b
4:                jal          t1, 8f
5:                jal          t1, 11f
6:                jal          ra, 4b
7:                jal          a6, 6b
8:                jal          ra, 12f
9:                jal          s1, 13f
10:               jal          t1, 1b
11:               jal          t1, 9b
12:               jal          t1, 2b
13:               srl          t0, a3, s0
main_10:          jal          t1, 6f
0:                jal          ra, 4f
1:                jal          t0, 0b
2:                jal          a7, 5f
3:                jal          s8, 13f
4:                jal          ra, 20f
5:                jal          s5, 1b
6:                jal          gp, 15f
7:                jal          t1, 17f
8:                jal          ra, 10f
9:                jal          ra, 12f
10:               jal          ra, 18f
11:               jal          a1, 2b
12:               jal          tp, 3b
13:               jal          t1, 14f
14:               jal          gp, 19f
15:               jal          ra, 22f
16:               jal          ra, 8b
17:               jal          t1, 21f
18:               jal          ra, 23f
19:               jal          t1, 7b
20:               jal          ra, 9b
21:               jal          ra, 16b
22:               jal          ra, 11b
23:               sltiu        sp, t0, 75
main_24:          jal          t1, 10f
0:                jal          t1, 12f
1:                jal          t1, 0b
2:                jal          t1, 8f
3:                jal          ra, 11f
4:                jal          ra, 1b
5:                jal          ra, 9f
6:                jal          t3, 13f
7:                jal          ra, 3b
8:                jal          t1, 4b
9:                jal          t1, 7b
10:               jal          t0, 2b
11:               jal          ra, 6b
12:               jal          t1, 5b
13:               nop
main_20:          jal          t1, 3f
0:                jal          s0, 9f
1:                jal          t0, 18f
2:                jal          ra, 14f
3:                jal          ra, 25f
4:                jal          t1, 24f
5:                jal          tp, 1b
6:                jal          t4, 4b
7:                jal          ra, 17f
8:                jal          sp, 21f
9:                jal          ra, 29f
10:               jal          ra, 27f
11:               jal          s1, 13f
12:               jal          ra, 6b
13:               jal          t3, 16f
14:               jal          ra, 15f
15:               jal          ra, 11b
16:               jal          ra, 20f
17:               jal          t1, 0b
18:               jal          ra, 7b
19:               jal          a7, 10b
20:               jal          ra, 19b
21:               jal          gp, 2b
22:               jal          t1, 12b
23:               jal          ra, 22b
24:               jal          s10, 28f
25:               jal          ra, 26f
26:               jal          s2, 8b
27:               jal          ra, 23b
28:               jal          ra, 5b
29:               nop
main_14:          jal          t1, 16f
0:                jal          ra, 4f
1:                jal          ra, 18f
2:                jal          s10, 23f
3:                jal          t0, 24f
4:                jal          ra, 6f
5:                jal          ra, 13f
6:                jal          sp, 5b
7:                jal          ra, 21f
8:                jal          t1, 7b
9:                jal          ra, 19f
10:               jal          t1, 20f
11:               jal          ra, 10b
12:               jal          ra, 15f
13:               jal          t1, 3b
14:               jal          a1, 2b
15:               jal          t1, 9b
16:               jal          ra, 12b
17:               jal          t0, 11b
18:               jal          ra, 17b
19:               jal          ra, 1b
20:               jal          ra, 14b
21:               jal          ra, 22f
22:               jal          gp, 0b
23:               jal          a4, 8b
24:               sltiu        s8, s6, 618
main_23:          jal          t1, 5f
0:                jal          t1, 2f
1:                jal          s5, 3f
2:                jal          ra, 9f
3:                jal          ra, 0b
4:                jal          a3, 1b
5:                jal          t1, 7f
6:                jal          t1, 10f
7:                jal          ra, 4b
8:                jal          ra, 6b
9:                jal          t1, 8b
10:               add          s2, zero, s9
main_11:          jal          t1, 14f
0:                jal          a6, 6f
1:                jal          t1, 7f
2:                jal          s6, 15f
3:                jal          ra, 9f
4:                jal          s1, 5f
5:                jal          ra, 8f
6:                jal          t1, 12f
7:                jal          t1, 10f
8:                jal          sp, 0b
9:                jal          t1, 17f
10:               jal          ra, 13f
11:               jal          ra, 4b
12:               jal          t1, 2b
13:               jal          ra, 3b
14:               jal          t1, 16f
15:               jal          a6, 1b
16:               jal          t0, 11b
17:               add          sp, s11, s1
main_9:           jal          t1, 14f
0:                jal          t1, 17f
1:                jal          a5, 12f
2:                jal          ra, 8f
3:                jal          t1, 9f
4:                jal          ra, 13f
5:                jal          ra, 11f
6:                jal          s1, 19f
7:                jal          t1, 4b
8:                jal          sp, 16f
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          t1, 18f
12:               jal          t1, 10b
13:               jal          a5, 15f
14:               jal          ra, 1b
15:               jal          s8, 6b
16:               jal          t1, 5b
17:               jal          s9, 3b
18:               jal          t2, 7b
19:               sltiu        gp, s1, 858
main_6:           jal          t1, 2f
0:                jal          ra, 23f
1:                jal          t1, 5f
2:                jal          ra, 9f
3:                jal          ra, 18f
4:                jal          ra, 1b
5:                jal          t1, 19f
6:                jal          ra, 15f
7:                jal          t1, 12f
8:                jal          ra, 20f
9:                jal          ra, 21f
10:               jal          ra, 17f
11:               jal          s9, 16f
12:               jal          ra, 22f
13:               jal          t3, 25f
14:               jal          t0, 11b
15:               jal          ra, 3b
16:               jal          ra, 7b
17:               jal          ra, 6b
18:               jal          ra, 4b
19:               jal          ra, 13b
20:               jal          ra, 0b
21:               jal          ra, 14b
22:               jal          ra, 24f
23:               jal          t1, 10b
24:               jal          ra, 8b
25:               and          a0, s4, s8
main_1:           jal          t1, 10f
0:                jal          ra, 4f
1:                jal          ra, 9f
2:                jal          ra, 12f
3:                jal          t1, 0b
4:                jal          tp, 13f
5:                jal          t1, 15f
6:                jal          ra, 1b
7:                jal          s4, 3b
8:                jal          ra, 18f
9:                jal          ra, 5b
10:               jal          ra, 17f
11:               jal          t5, 14f
12:               jal          t1, 7b
13:               jal          t1, 11b
14:               jal          t0, 16f
15:               jal          ra, 2b
16:               jal          tp, 8b
17:               jal          ra, 6b
18:               srl          t2, ra, t6
main_3:           jal          t1, 20f
0:                jal          t1, 19f
1:                jal          t0, 13f
2:                jal          ra, 10f
3:                jal          s1, 17f
4:                jal          ra, 14f
5:                jal          ra, 6f
6:                jal          t1, 8f
7:                jal          t1, 11f
8:                jal          ra, 4b
9:                jal          ra, 15f
10:               jal          ra, 18f
11:               jal          a3, 5b
12:               jal          t1, 16f
13:               jal          ra, 0b
14:               jal          ra, 3b
15:               jal          ra, 21f
16:               jal          a5, 9b
17:               jal          ra, 1b
18:               jal          s4, 7b
19:               jal          ra, 12b
20:               jal          ra, 2b
21:               auipc        s2, 385238
main_2:           jal          t1, 11f
0:                jal          ra, 18f
1:                jal          a5, 16f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          t1, 13f
5:                jal          t1, 7f
6:                jal          ra, 5b
7:                jal          ra, 2b
8:                jal          ra, 9f
9:                jal          t1, 10f
10:               jal          ra, 14f
11:               jal          s4, 12f
12:               jal          t1, 1b
13:               jal          t1, 8b
14:               jal          t0, 15f
15:               jal          ra, 6b
16:               jal          ra, 17f
17:               jal          ra, 4b
18:               slli         sp, a2, 0
main_8:           jal          t1, 9f
0:                jal          ra, 1f
1:                jal          ra, 7f
2:                jal          tp, 10f
3:                jal          ra, 8f
4:                jal          a7, 3b
5:                jal          ra, 11f
6:                jal          ra, 0b
7:                jal          t1, 2b
8:                jal          ra, 5b
9:                jal          t5, 6b
10:               jal          ra, 4b
11:               auipc        s5, 885494
main_22:          jal          t1, 21f
0:                jal          ra, 11f
1:                jal          ra, 18f
2:                jal          ra, 26f
3:                jal          t1, 14f
4:                jal          a4, 1b
5:                jal          t1, 7f
6:                jal          ra, 13f
7:                jal          s2, 12f
8:                jal          t1, 19f
9:                jal          ra, 10f
10:               jal          a3, 8b
11:               jal          ra, 24f
12:               jal          s9, 15f
13:               jal          t5, 3b
14:               jal          ra, 22f
15:               jal          t1, 23f
16:               jal          ra, 5b
17:               jal          ra, 9b
18:               jal          ra, 27f
19:               jal          t4, 25f
20:               jal          ra, 6b
21:               jal          ra, 20b
22:               jal          t1, 16b
23:               jal          ra, 0b
24:               jal          s2, 2b
25:               jal          ra, 28f
26:               jal          t1, 4b
27:               jal          t1, 17b
28:               sll          t5, a1, tp
                  ori          tp, s4, -298
                  xori         s1, s4, -59
                  nop
                  sltiu        s11, t4, -870
                  bgeu         s2, t4, 11f
                  xori         a3, s8, 944
                  sltiu        a5, a5, -246
                  srai         sp, t4, 17
                  srl          s9, s3, a7
                  nop
                  sll          s10, t3, s5
11:               sll          zero, a0, a0
                  bge          gp, s11, 14f
                  nop
14:               ori          ra, s2, -1065
                  sltu         a5, a0, s0
                  blt          s9, a5, 27f
                  bne          t4, s4, 24f
                  xori         t2, s10, 842
                  ori          s2, t2, -1330
                  bltu         a1, s0, 28f
                  slti         gp, t2, -642
                  blt          s5, t4, 25f
                  bne          s2, s5, 38f
24:               or           t5, s8, s2
25:               add          t0, s8, a7
                  srl          tp, a1, s11
27:               blt          tp, t1, 39f
28:               add          a0, s2, zero
                  add          t1, t0, a3
                  addi         s5, sp, 984
                  sll          s5, s3, gp
                  add          t5, s5, a7
                  sltu         s4, t6, s10
                  xor          zero, s2, tp
                  nop
                  sra          t2, s8, s10
                  sltu         s2, t4, a7
38:               add          s10, s0, s2
39:               ori          zero, s5, -309
                  or           s5, s3, t6
                  and          gp, a2, s5
                  srli         t0, s4, 25
                  add          a4, s5, a2
                  xori         s10, a5, 831
                  srl          s0, s4, t5
                  add          sp, s11, s6
                  xor          gp, s2, t1
                  slli         tp, s5, 8
                  bne          s7, a5, 53f
                  beq          t2, s2, 66f
                  blt          s10, s3, 69f
                  xori         s2, s10, 529
53:               addi         t0, t3, -514
                  nop
                  bltu         s7, gp, 63f
                  auipc        t5, 995671
                  sll          a7, s4, t6
                  auipc        t1, 747671
                  bltu         s8, a2, 67f
                  sub          s9, s10, t0
                  xor          s6, a2, s1
                  xor          sp, tp, t3
63:               slt          s2, t3, a4
                  bltu         s6, s9, 74f
                  srl          s9, s11, t3
66:               slli         s9, t2, 16
67:               andi         a5, a6, -294
                  auipc        s7, 827474
69:               srli         a4, s0, 31
                  srli         s4, t0, 27
                  beq          t6, t1, 83f
                  slti         s6, s0, 1181
                  slt          a6, t3, t3
74:               blt          a0, zero, 89f
                  nop
                  addi         a5, t1, 1216
                  bgeu         s3, a7, 86f
                  addi         s6, s7, 355
                  lui          a1, 647563
                  ori          s5, s3, 1105
                  or           tp, s2, t4
                  bltu         zero, s8, 94f
83:               bltu         s10, s5, 86f
                  slti         t1, t1, -122
                  xori         s6, s9, 2045
86:               sub          s2, t2, a7
                  xor          a5, zero, t6
                  andi         s1, s7, -1698
89:               xor          a4, s1, t4
                  bne          a7, s10, 105f
                  nop
                  or           a1, s11, t6
                  add          t0, s9, t0
94:               blt          s10, tp, 106f
                  slli         a3, s0, 25
                  sub          s5, a4, s5
                  bgeu         s8, tp, 112f
                  sll          a4, a4, t2
                  add          s4, t5, s1
                  srli         a5, a0, 0
                  add          s6, s8, a3
                  srl          s9, s3, gp
                  xori         s9, t3, 2024
                  bne          a4, s0, 123f
105:              srai         s10, s10, 30
106:              bltu         t5, a6, 115f
                  slti         t1, s7, 1934
                  srl          sp, s9, t0
                  srai         s7, t5, 6
                  beq          s10, gp, 124f
                  sub          t2, s0, a1
112:              sra          s10, s3, s5
                  bltu         a5, s3, 119f
                  sltu         a4, t4, s2
115:              sll          a0, s3, s5
                  and          sp, t4, t1
                  srai         a0, s11, 21
                  sra          t1, a0, t6
119:              slli         sp, s3, 10
                  srli         ra, ra, 18
                  sltiu        t1, gp, 694
                  bgeu         s1, t0, 138f
123:              sll          a4, s3, t6
124:              bltu         s8, s6, 140f
                  lui          t1, 799044
                  sll          s6, s6, zero
                  xor          t2, t2, s5
                  beq          s7, a7, 138f
                  blt          s0, a6, 144f
                  xor          t2, a1, s1
                  sltiu        s9, sp, -1594
                  srl          s4, s3, s5
                  srai         a0, t6, 16
                  sub          t5, t5, t0
                  bltu         s10, s0, 150f
                  lui          t1, 436681
                  sub          a3, a4, a7
138:              addi         s6, s3, -902
                  blt          gp, a7, 154f
140:              bltu         s11, a7, 152f
                  srli         t5, s6, 24
                  lui          t4, 241032
                  add          a6, t5, s6
144:              bne          a4, gp, 153f
                  srai         a7, s2, 13
                  bge          ra, s4, 149f
                  srl          t4, s9, t1
                  slli         s0, s2, 21
149:              bltu         t2, s1, 163f
150:              slti         s6, ra, 1874
                  andi         s1, a4, -1666
152:              slti         a0, t1, -1935
153:              bne          zero, t4, 165f
154:              xori         zero, a2, -222
                  and          s4, zero, s6
                  bne          t2, t0, 171f
                  ori          a1, a4, -1798
                  srl          s2, a4, s0
                  bne          zero, s0, 166f
                  bne          ra, s2, 168f
                  andi         t4, s4, -52
                  bgeu         s10, s7, 172f
163:              xor          s10, s1, a4
                  slt          t2, s4, s10
165:              beq          tp, t1, 171f
166:              bne          a6, a0, 182f
                  and          t1, zero, a6
168:              ori          a3, a2, 1526
                  sltu         s9, s3, t3
                  or           s4, s2, a3
171:              bgeu         gp, tp, 174f
172:              add          a7, t3, a5
                  slti         s7, s3, 111
174:              srai         a5, a4, 22
                  bge          t0, s6, 184f
                  blt          ra, s0, 195f
                  sll          s6, s7, s4
                  auipc        s2, 98428
                  beq          s0, t3, 186f
                  slti         s0, ra, 144
                  slti         t2, t0, -1809
182:              or           s10, s5, s11
                  bgeu         t2, ra, 199f
184:              or           ra, s3, s6
                  srai         t2, s4, 8
186:              and          sp, s7, t3
                  bge          zero, s8, 202f
                  slli         s6, s0, 11
                  add          a7, a2, s2
                  add          t0, t4, a4
                  nop
                  lui          s1, 666377
                  add          t2, t1, gp
                  sltiu        s7, s1, 1180
195:              blt          tp, sp, 213f
                  sra          s6, s9, s4
                  or           s8, s9, s9
                  slli         t4, s3, 29
199:              bge          s3, tp, 214f
                  srai         a6, t5, 0
                  srai         s11, gp, 14
202:              xori         s0, ra, 1214
                  bgeu         zero, s5, 211f
                  addi         t0, a7, 663
                  srli         a4, a2, 15
                  srl          t4, a0, sp
                  bltu         ra, s0, 209f
                  addi         a4, s7, 685
209:              or           gp, a7, a0
                  bne          t4, a1, 218f
211:              sll          s8, zero, s0
                  or           t4, s0, t3
213:              lui          a3, 743683
214:              auipc        a4, 961432
                  nop
                  or           s2, s7, a1
                  bltu         s7, s2, 227f
218:              srli         s7, s0, 23
                  and          s0, s5, t0
                  auipc        a4, 152674
                  nop
                  bgeu         a7, s10, 234f
                  andi         a1, a0, -679
                  sltiu        t3, a6, -196
                  sltiu        s4, a0, 960
                  srl          tp, sp, s7
227:              nop
                  auipc        t3, 948236
                  slt          s9, a2, s3
                  sub          s9, s8, s1
                  ori          a5, tp, -399
                  srai         tp, s0, 11
                  sll          gp, t6, s8
234:              sll          a0, t5, s3
                  xori         a3, t2, -1430
                  slli         s7, zero, 12
                  lui          gp, 298470
                  sltiu        gp, a6, -740
                  bgeu         t6, t0, 243f
                  xor          tp, s1, t2
                  srl          s5, a4, t6
                  ori          s5, s3, -242
243:              addi         s4, a5, 1194
                  nop
                  and          a3, s7, t5
                  and          s4, s7, t3
                  nop
                  lui          sp, 932446
                  sra          a4, tp, a6
                  sltiu        s9, ra, -866
                  slt          t5, t1, zero
                  la           s7, sub_1
                  sra          s1, a5, s11
                  lui          a4, 982920
                  sub          s2, s8, s5
                  xori         s5, s7, -1904
                  or           a0, t1, t5
                  addi         s7, s7, 510
                  srai         a0, a0, 27
                  addi         a4, s9, -762
                  srai         t4, zero, 18
main_j2:          jalr         t1, s7, -509 #jump main -> sub_1
                  bgeu         s0, s10, 264f
                  sra          s9, gp, zero
                  lui          a6, 915436
                  xori         gp, t1, -1249
                  sltu         s1, s8, a7
                  bne          s7, s8, 268f
                  srai         s10, t3, 2
                  bne          t1, zero, 275f
                  lui          a5, 28711
                  beq          a4, s3, 273f
                  beq          sp, t1, 278f
                  nop
264:              slti         a5, s6, 837
                  slt          a7, tp, a5
                  srli         a1, t5, 16
                  slti         a6, a1, 1581
268:              sltiu        t2, t3, 720
                  srli         s2, s11, 23
                  sra          t4, s11, zero
                  bgeu         ra, s11, 274f
                  slli         t3, s11, 25
273:              sltiu        s9, sp, 959
274:              auipc        zero, 932353
275:              beq          s4, s6, 290f
                  beq          s8, sp, 291f
                  xor          a4, t5, t1
278:              sub          a6, s6, t2
                  addi         s10, a7, -346
                  blt          s7, tp, 299f
                  sra          tp, t1, a0
                  slli         s10, tp, 23
                  andi         sp, s11, -241
                  xori         gp, s2, 741
                  bltu         zero, a6, 292f
                  sub          a6, sp, s10
                  beq          s0, s11, 290f
                  srai         t4, ra, 31
                  bne          s4, a3, 293f
290:              sll          ra, gp, t0
291:              beq          sp, t2, 305f
292:              xor          t4, s1, s8
293:              sltiu        a7, t6, 801
                  lui          s7, 192073
                  bltu         s8, s11, 306f
                  blt          s4, a5, 302f
                  slli         s5, s7, 31
                  slti         t3, t2, 280
299:              ori          t3, t5, 1001
                  bne          s9, s6, 308f
                  or           s10, s6, zero
302:              bge          zero, t4, 310f
                  andi         s0, t5, -1084
                  andi         t2, a0, 1183
305:              lui          s9, 990990
306:              slli         t5, s4, 24
                  bge          a1, t1, 319f
308:              sll          s1, a2, t5
                  ori          s8, zero, 1022
310:              slt          a3, t4, s8
                  ori          zero, t5, -2024
                  sll          s1, s4, s0
                  sll          a6, a5, t4
                  auipc        t0, 80705
                  bge          s7, a5, 317f
                  and          a7, s0, gp
317:              or           s1, gp, s9
                  srl          t2, t0, s6
319:              bltu         ra, a1, 331f
                  beq          a7, tp, 336f
                  xor          t1, s4, tp
                  bgeu         s6, tp, 334f
                  bge          gp, sp, 338f
                  xor          a1, s4, t2
                  andi         ra, s3, 1816
                  sltiu        a4, a2, -1507
                  bgeu         s1, t6, 343f
                  srl          t2, t0, sp
                  sltiu        s7, ra, -1702
                  sub          s9, t3, s3
331:              sltiu        s2, a4, 1996
                  add          a6, s10, t4
                  sra          t0, s5, s9
334:              ori          t5, s2, 980
                  add          s10, a2, s0
336:              or           s1, t6, s1
                  andi         ra, t1, 1247
338:              bge          a6, t4, 356f
                  sra          t5, a1, s10
                  add          sp, s7, a4
                  slt          s5, ra, s8
                  bge          s1, a4, 357f
343:              xori         s11, s5, 1785
                  sll          zero, s0, a7
                  beq          sp, a0, 352f
                  bne          a3, a4, 361f
                  srai         a5, s8, 31
                  ori          a3, s6, 410
                  add          s1, s6, s3
                  or           t1, s3, s9
                  lui          s1, 318394
352:              auipc        s0, 154093
                  lui          ra, 278911
                  xor          t1, s4, s1
                  sltiu        s11, s3, -757
356:              slt          s8, t1, s8
357:              bne          a1, s10, 367f
                  beq          s10, s4, 367f
                  sll          zero, s7, s6
                  add          sp, s9, t3
361:              sltu         a1, t0, a3
                  ori          t1, t6, 1347
                  bltu         sp, s7, 373f
                  addi         a6, a6, 288
                  xor          s9, s1, tp
                  and          t3, t4, t2
367:              slti         t3, a3, -1944
                  srl          t3, t1, s3
                  bne          s3, s9, 378f
                  beq          a6, a7, 378f
                  lui          a6, 982088
                  and          s10, t5, a4
373:              bltu         s7, s1, 385f
                  bltu         a2, a5, 389f
                  sltiu        t3, t2, -1757
                  auipc        t2, 409945
                  and          t5, t5, s0
378:              lui          a5, 96358
                  and          s0, a3, s11
                  ori          t1, t6, -284
                  and          s9, a3, a7
                  andi         s10, s4, -612
                  ori          sp, a4, -490
                  and          zero, t4, s1
385:              bgeu         t6, s2, 391f
                  xor          a5, t6, t2
                  bltu         s2, s8, 395f
                  addi         s0, a3, 1477
389:              sub          a0, t6, a1
                  sra          a0, sp, s3
391:              andi         s6, s10, 267
                  and          a7, s11, t1
                  srai         a7, s8, 5
                  slli         t3, s8, 21
395:              srli         tp, s2, 7
                  srl          t5, a3, a4
                  or           s10, a6, a0
                  addi         s0, zero, -495
                  sltiu        s1, a5, 324
                  xor          s2, t6, s4
                  or           t0, a5, zero
                  srl          t4, t4, s11
                  slt          ra, tp, s4
                  srai         s10, a3, 16
                  bne          a3, gp, 423f
                  srai         a7, a2, 31
                  nop
                  slt          a3, t1, s4
                  blt          t2, s9, 412f
                  and          s4, s0, a3
                  xori         t2, ra, -1750
412:              or           t4, s6, t5
                  slti         s9, a2, 872
                  sll          s8, s2, a5
                  blt          tp, s7, 430f
                  srl          t3, a7, s1
                  sra          t3, a7, s11
                  bge          sp, a3, 427f
                  andi         s0, a2, -1539
                  srai         s10, t3, 29
                  addi         s11, a2, 1676
                  slti         t5, a5, -1888
423:              srli         s0, t2, 31
                  xori         sp, t1, -1474
                  addi         s9, s9, 50
                  srli         s7, sp, 21
427:              bge          t2, s4, 439f
                  lui          s4, 862887
                  slli         a3, t6, 0
430:              and          gp, s2, t2
                  sltu         t4, ra, t5
                  nop
                  andi         t1, tp, -299
                  srli         t2, t1, 20
                  ori          zero, a6, -633
                  srli         t1, t4, 5
                  xor          tp, zero, s2
                  srai         ra, zero, 7
439:              sltu         s11, s5, s2
                  bge          s5, a7, 442f
                  andi         s7, a0, -567
442:              sra          s10, s4, a2
                  slt          a5, sp, s7
                  and          gp, a2, tp
                  xor          s0, s4, zero
                  sub          sp, t6, s2
                  srl          s7, s4, a7
                  andi         s7, a5, -1332
                  or           zero, a4, s8
                  sltu         a6, s11, a6
                  auipc        s11, 990891
                  nop
                  xor          t5, s6, t3
                  srli         s0, a5, 13
                  xor          s1, a1, s5
                  add          a6, zero, gp
                  xori         a4, s1, -1336
                  xor          t1, s4, s7
                  bne          ra, s1, 462f
                  and          a0, sp, gp
                  beq          sp, a5, 476f
462:              bgeu         s11, a5, 469f
                  bne          a2, tp, 479f
                  bge          t2, s11, 478f
                  bgeu         s6, t5, 475f
                  and          s4, a6, s3
                  lui          a1, 712217
                  bge          a2, s3, 487f
469:              sltiu        s9, a5, 8
                  sltiu        a6, zero, 1971
                  srli         ra, s4, 9
                  bge          a1, s5, 488f
                  add          a6, s5, s8
                  sub          s1, a6, gp
475:              bne          a0, sp, 483f
476:              addi         a4, s5, -1823
                  xori         sp, t1, 1652
478:              sltiu        s1, s5, 612
479:              slt          t3, t4, s1
                  sub          s11, s9, s1
                  andi         a4, s10, 153
                  or           t5, s2, t3
483:              srli         ra, s8, 31
                  beq          s8, t0, 493f
                  bne          a4, a5, 500f
                  srl          s4, s9, t4
487:              srl          s4, a2, s1
488:              srai         s5, s3, 22
                  sll          s8, s2, s9
                  xor          s9, s7, s7
                  auipc        gp, 1001342
                  blt          a6, t0, 504f
493:              slti         a1, s7, -959
                  bge          s6, t1, 509f
                  slli         a5, a4, 29
                  srai         a3, t5, 5
                  blt          a5, s8, 507f
                  nop
                  sll          s7, gp, t4
500:              sra          gp, zero, a4
                  add          t0, t2, a7
                  and          t5, s9, t5
                  bne          a3, s4, 514f
504:              srl          s5, s6, t3
                  slti         t3, t2, 740
                  addi         a5, t5, -505
507:              beq          s10, t2, 519f
                  sub          zero, s0, zero
509:              srl          s6, gp, t1
                  slt          t3, s5, s7
                  slli         s5, s8, 2
                  xori         t5, a6, 1102
                  beq          a2, t1, 521f
514:              srai         gp, ra, 9
                  addi         s5, t4, 406
                  add          a0, s6, s3
                  slti         zero, a3, 338
                  beq          s8, a6, 525f
519:              nop
                  auipc        a6, 85159
521:              bltu         s10, t2, 537f
                  nop
                  xor          s1, s0, s5
                  slti         t2, s4, -1700
525:              sll          a1, a7, t2
                  xori         s9, a7, -480
                  srl          t5, s10, s0
                  bltu         s10, a4, 532f
                  sll          s9, s4, s7
                  xor          t3, t0, t3
main_4:           jal          t1, 20f
0:                jal          gp, 11f
1:                jal          ra, 4f
2:                jal          a5, 15f
3:                jal          t1, 19f
4:                jal          ra, 6f
5:                jal          t2, 14f
6:                jal          tp, 5b
7:                jal          tp, 21f
8:                jal          s11, 7b
9:                jal          sp, 2b
10:               jal          a3, 0b
11:               jal          t1, 12f
12:               jal          s7, 9b
13:               jal          t1, 17f
14:               jal          ra, 18f
15:               jal          a0, 8b
16:               jal          s10, 13b
17:               jal          ra, 10b
18:               jal          t1, 16b
19:               jal          s8, 1b
20:               jal          ra, 3b
21:               jal          t0, 22f
22:               xori         s8, t1, -931
                  andi         a5, t5, 999
532:              blt          s11, a2, 534f
                  sltiu        t0, s4, 801
534:              sub          sp, t3, s2
                  bgeu         zero, tp, 542f
                  lui          tp, 986214
537:              srl          ra, ra, s7
                  bge          s7, s7, 553f
                  bgeu         a0, sp, 558f
                  slti         t1, s10, 755
                  sltiu        s10, s2, 492
542:              sub          s2, s7, t3
                  srli         s0, s8, 0
                  sra          t1, s7, s6
                  srl          s11, t0, sp
                  bne          s5, a4, 555f
                  slt          sp, gp, t6
                  lui          tp, 629020
                  srl          t3, t1, a3
                  lui          a1, 346627
                  nop
                  sltu         a5, a4, s0
553:              sltu         zero, a4, zero
                  and          s5, a6, s0
555:              addi         s6, s3, -1210
                  sltu         a6, s2, s7
                  slt          t2, s11, s11
558:              beq          a3, s0, 573f
                  xor          a7, s2, t6
                  bne          a7, a3, 576f
                  bgeu         s9, a7, 576f
                  andi         t4, t4, -696
                  add          sp, s9, s5
                  addi         t2, gp, -1837
                  sra          a7, a6, s5
                  blt          s3, t6, 569f
                  xor          a4, s4, t5
                  bne          t6, a7, 580f
569:              slli         s10, s10, 26
                  sra          t2, t6, a1
                  slli         sp, ra, 1
                  xor          a0, a1, t2
573:              slli         s1, s2, 31
                  slti         a4, a1, -193
                  sub          t0, t4, s8
576:              addi         t5, s2, 1753
                  bgeu         tp, s10, 585f
                  xor          a4, gp, zero
                  blt          t6, s8, 593f
580:              bge          a1, t0, 584f
                  bne          t6, a7, 591f
                  sltiu        a7, s3, 1968
                  and          s0, a3, s10
584:              bne          sp, s11, 592f
585:              auipc        ra, 12226
                  slti         s10, s6, -1552
                  xor          t2, s0, a0
                  srl          s1, s0, gp
main_12:          jal          t1, 14f
0:                jal          t1, 19f
1:                jal          ra, 12f
2:                jal          ra, 23f
3:                jal          ra, 10f
4:                jal          s2, 22f
5:                jal          t2, 11f
6:                jal          s2, 18f
7:                jal          ra, 25f
8:                jal          s9, 2b
9:                jal          a5, 17f
10:               jal          gp, 13f
11:               jal          gp, 8b
12:               jal          ra, 6b
13:               jal          ra, 20f
14:               jal          sp, 24f
15:               jal          ra, 1b
16:               jal          ra, 7b
17:               jal          tp, 16b
18:               jal          ra, 4b
19:               jal          a5, 15b
20:               jal          s5, 9b
21:               jal          s9, 0b
22:               jal          ra, 5b
23:               jal          ra, 3b
24:               jal          t1, 21b
25:               nop
                  xori         sp, t1, -196
                  ori          a7, s11, -500
591:              slti         a0, t3, 466
592:              srai         t2, gp, 24
593:              srl          a5, a3, sp
                  andi         ra, a2, -1349
                  bne          s3, s2, 606f
                  addi         s7, s2, 1623
                  srl          sp, a6, s7
                  or           a4, ra, s6
                  bge          t1, t0, 611f
                  sltiu        a1, a1, 1806
                  sltiu        s2, tp, 1981
                  or           s5, s4, s2
                  sll          a4, s8, s1
                  auipc        t4, 606435
                  or           a6, t4, s9
606:              slli         s1, s9, 22
                  lui          s2, 804258
                  blt          s11, t4, 611f
                  sll          t3, t6, t0
                  andi         s4, a2, -855
611:              xor          t4, s3, s7
                  sra          a0, s4, t1
                  add          s7, s0, s6
                  sll          s1, a3, a5
                  slti         s2, a0, 109
                  ori          gp, s9, 759
                  nop
                  sll          a1, s8, zero
                  slt          a0, a7, t3
                  sub          t1, tp, s6
                  xor          zero, a5, a3
                  nop
                  srai         zero, a2, 0
                  srai         ra, t5, 10
                  bgeu         s2, a7, 643f
                  and          a0, a5, a2
                  bltu         ra, a4, 636f
                  blt          s8, s4, 644f
                  and          a3, s4, gp
                  slti         t3, t6, 822
                  auipc        s5, 405739
                  nop
                  addi         s9, zero, 689
                  addi         s4, s2, 1837
                  slt          t0, s10, a5
636:              and          s1, s6, ra
                  sra          t1, t5, s3
                  bne          t5, a3, 645f
                  sltu         s0, a1, a3
                  beq          ra, s4, 646f
                  ori          zero, a0, -575
                  bne          s6, t2, 657f
643:              xori         s11, t6, -908
644:              add          s0, a1, tp
645:              slt          tp, t3, t1
646:              sll          ra, s11, t2
                  and          a1, a3, tp
                  addi         t3, s4, -220
                  sltu         a0, gp, s1
                  bgeu         a2, ra, 662f
                  slt          s4, sp, s4
                  sra          t4, t6, zero
                  bge          s4, a3, 661f
                  bltu         zero, a7, 666f
                  or           a7, t6, zero
                  sltu         s11, a1, a6
657:              slt          a4, tp, a2
                  sltu         a0, a6, s0
                  srli         a4, s10, 8
                  bgeu         tp, s8, 676f
661:              bgeu         t6, a2, 676f
662:              sltiu        gp, t4, -824
                  beq          s0, s4, 673f
                  bge          s7, s8, 676f
                  srl          s5, t1, s3
666:              addi         s7, s8, 955
                  lui          s6, 545870
                  auipc        s1, 689371
                  or           tp, s7, a0
                  sra          s10, t4, zero
                  slli         a1, zero, 10
                  bltu         s5, a1, 679f
673:              nop
                  beq          s4, s11, 684f
                  sll          t0, tp, t5
676:              sub          t2, s1, a5
                  ori          s9, s1, 1174
                  and          t4, a1, t1
679:              xori         s7, s4, -1389
                  sra          s10, t4, a0
                  andi         s2, sp, -1163
                  slli         a5, tp, 21
                  slti         s8, s5, -679
684:              sll          tp, zero, s8
                  bgeu         gp, a6, 693f
                  bne          t5, s1, 693f
                  sll          t5, t0, ra
                  slli         a5, s4, 30
                  sll          t2, a5, gp
                  slli         a3, a2, 19
                  slt          a0, s1, s9
                  beq          t5, t2, 704f
693:              sra          a7, a4, a4
                  lui          s7, 76800
                  ori          a0, a6, -1384
                  nop
                  sltiu        t0, a7, -96
                  sll          gp, s11, a5
                  srli         s4, t4, 22
                  xori         t5, t0, 614
                  slti         s2, a2, -131
                  sll          s6, a5, a0
                  slt          a4, a1, t1
704:              bltu         t3, s11, 710f
                  bne          s10, t2, 713f
                  auipc        t4, 539141
                  srli         a1, t2, 24
                  sll          a4, s1, a2
                  blt          a2, t6, 724f
710:              sll          s10, t5, a0
                  slti         s10, s5, 416
                  srli         zero, s10, 2
713:              xor          ra, s2, a5
                  nop
                  srai         t5, sp, 2
                  addi         a5, gp, -1616
                  auipc        s11, 921930
                  nop
                  andi         s2, a7, 77
                  nop
                  blt          a3, s4, 723f
                  xor          a7, a0, s8
723:              xori         ra, s5, 1954
724:              ori          gp, a4, 175
                  slli         a6, tp, 13
                  andi         a1, t4, -784
                  auipc        t5, 224794
                  xori         s0, a0, -249
                  xor          a7, ra, s9
                  slli         ra, s9, 19
                  xor          s7, a0, s8
                  addi         s5, s5, -1941
                  sltu         s10, s10, s1
                  xori         s7, a6, -1718
                  beq          s11, s8, 739f
                  srl          a1, s5, t5
                  blt          t2, s0, 749f
                  sltiu        s10, s4, 1178
739:              beq          sp, s8, 748f
                  or           s6, a1, s8
                  slt          t5, s3, s4
                  sra          a6, t6, a5
                  nop
                  add          zero, s10, t1
                  blt          ra, s9, 760f
                  xori         a3, a2, -1073
                  blt          s2, s7, 762f
748:              bgeu         t2, s7, 764f
749:              ori          t1, s9, 620
                  beq          a2, s1, 766f
                  xori         a5, s0, -510
                  addi         s2, s2, -1525
                  bge          tp, a3, 768f
                  lui          tp, 808778
                  slli         t3, t4, 25
                  add          a3, s11, t6
                  sub          t5, tp, a7
                  srl          t5, a7, s10
                  srai         sp, s8, 16
760:              blt          ra, s7, 768f
                  bgeu         s6, a3, 772f
762:              slti         sp, s7, 228
                  ori          s6, s8, 149
764:              addi         s4, a7, -1487
                  addi         s1, s4, 390
766:              ori          a3, t5, 180
                  srli         t4, a6, 12
768:              bne          t4, tp, 782f
                  sll          a4, a7, s1
                  slti         s6, a7, -115
                  addi         s4, s8, 206
772:              slti         s5, t5, -1400
                  srli         t4, t3, 25
                  sltu         s8, s2, t1
                  sltiu        a6, sp, -1785
                  or           a0, a2, s3
                  sltu         a7, s1, s6
                  beq          s8, gp, 794f
                  bltu         a1, t0, 782f
                  srl          a4, s2, zero
                  bne          sp, t4, 800f
782:              sub          a6, s3, t6
                  or           tp, a5, t5
                  bge          a6, ra, 793f
                  srai         s5, a2, 31
                  sltu         a4, a7, a3
                  xori         s5, t2, 2021
                  bltu         a0, a1, 806f
                  sll          s4, s3, s0
                  bgeu         t3, s8, 793f
                  xori         s4, a4, 1731
                  sll          t2, a1, sp
793:              add          t1, t1, s2
794:              add          a0, a3, gp
                  andi         s0, s6, 353
                  sltiu        a5, t6, -1735
                  srli         s8, t4, 9
                  xori         t2, a5, -1088
                  bne          s5, t6, 809f
800:              srai         a7, t1, 25
                  bgeu         a3, gp, 816f
                  blt          t3, a0, 814f
                  bge          t1, s8, 812f
                  sub          gp, gp, s7
                  or           s4, a7, s0
806:              bge          a7, s11, 820f
                  auipc        a5, 331162
                  or           s11, a7, s3
809:              bgeu         a7, s1, 827f
                  sra          s2, s6, s5
                  blt          s5, zero, 826f
812:              slt          t0, s9, t5
                  and          s7, gp, s11
814:              srli         gp, ra, 0
                  sub          a5, a5, a3
816:              or           t0, a7, a3
                  sra          a5, s0, s8
                  bge          s9, tp, 821f
                  auipc        s0, 624106
820:              or           tp, ra, t6
821:              srli         s8, sp, 13
                  srl          a4, t0, s8
                  xori         ra, s11, 938
                  beq          a1, s10, 835f
                  xori         sp, t3, -45
826:              addi         a1, s10, 927
827:              xor          a3, s2, s10
                  auipc        a6, 178313
                  add          t5, s10, a0
                  bge          t4, t4, 832f
                  addi         s10, a2, -212
832:              slt          s2, a1, s3
                  sll          t4, t4, t1
                  ori          a0, gp, -508
835:              xori         sp, s11, 1713
                  slt          t4, sp, zero
                  xori         s2, t4, 1399
                  add          t2, a1, a4
                  srl          s5, s3, s4
                  srai         a3, t6, 9
                  bltu         s5, ra, 851f
                  bge          s10, s6, 857f
                  bge          t1, ra, 852f
                  auipc        a1, 147151
                  sra          tp, a6, tp
                  slt          t3, s10, a7
                  bltu         gp, s2, 859f
                  srli         s5, s3, 31
                  sra          s8, t2, tp
                  slt          t5, t6, ra
851:              blt          a4, sp, 867f
852:              slt          tp, t3, t4
                  sra          t5, a2, a7
                  slti         zero, s11, -87
                  bne          a4, tp, 870f
                  lui          a5, 71582
857:              sub          a4, a7, s9
                  srl          t2, s2, s3
859:              bgeu         t2, zero, 863f
                  and          t3, a6, s4
                  bgeu         a6, a4, 869f
                  srli         t2, a1, 2
863:              xor          s1, s3, a6
                  lui          t0, 255227
                  sltiu        gp, s4, -111
                  beq          tp, t1, 869f
867:              or           t2, a7, t4
                  xor          t4, s6, s1
869:              ori          sp, s0, -1909
870:              blt          t1, t5, 876f
                  srai         a5, t6, 10
                  sub          t0, t6, t5
                  lui          s0, 132763
                  slt          t0, s7, t2
                  lui          t0, 903914
876:              beq          t3, a0, 891f
                  xor          s8, t6, t3
                  sltiu        a6, s5, 1052
                  srai         t1, a4, 20
                  nop
                  sra          a0, zero, s5
                  add          a5, a4, a3
                  lui          s1, 418454
                  xori         t0, s3, -978
                  add          t1, s2, t0
                  andi         a7, s7, -1868
                  or           s2, ra, a2
                  xori         a1, t2, -663
                  addi         tp, s4, 1165
                  bltu         s3, s2, 906f
891:              beq          a3, a0, 903f
                  bge          s2, a2, 900f
                  nop
                  sll          sp, s0, s9
                  andi         t2, s3, 8
                  addi         a4, t2, -228
                  sltu         s4, s7, t4
                  srli         t5, s6, 24
main_15:          jal          t1, 9f
0:                jal          ra, 10f
1:                jal          ra, 4f
2:                jal          s11, 6f
3:                jal          t1, 7f
4:                jal          ra, 3b
5:                jal          t1, 0b
6:                jal          t1, 5b
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          t0, 1b
10:               add          zero, s7, a5
                  slti         a1, t2, 1337
900:              sltu         zero, ra, zero
                  lui          ra, 88418
                  srai         tp, s0, 7
903:              bne          t6, ra, 910f
                  sll          t4, t0, s8
                  xori         s8, s11, -142
906:              slti         t1, s8, -1402
                  sltiu        gp, t3, 1006
                  bgeu         gp, s3, 923f
                  bltu         s0, a1, 916f
910:              sra          t0, t3, a0
                  sub          s8, a6, t2
                  lui          s8, 237625
                  addi         a1, s8, 875
                  bge          s6, s6, 926f
                  sltu         s1, a7, gp
916:              add          a1, s1, gp
                  srl          ra, s9, a6
                  xor          t4, t1, t4
                  blt          gp, sp, 931f
                  xori         t0, s9, -980
                  blt          tp, s1, 931f
                  srai         s5, s9, 28
923:              or           s1, s2, t2
                  bltu         a2, t1, 940f
                  addi         a3, t6, 475
926:              srli         t0, s6, 7
                  xori         s4, t3, 1390
                  and          a1, a5, ra
                  auipc        t5, 522157
                  xor          s1, t4, gp
931:              or           s2, zero, a1
                  ori          t4, a0, -1710
                  sll          tp, s5, ra
                  or           s4, gp, a6
                  beq          s1, a1, 943f
                  slli         t4, s5, 7
                  slt          a3, tp, s3
                  lui          a7, 832077
                  add          s8, s9, s6
940:              bne          s6, t3, 959f
                  addi         tp, a1, -1478
                  and          s5, s1, t5
943:              slli         zero, gp, 24
                  andi         a3, a6, -706
                  or           ra, a3, s1
                  xor          t1, sp, sp
                  bge          t0, s7, 958f
                  xori         s2, s8, -575
                  sll          a1, a5, s6
                  beq          a4, a0, 965f
                  srai         t2, s10, 29
                  srl          t4, zero, t2
                  addi         sp, s3, 1473
                  andi         s6, a7, -336
                  auipc        sp, 792909
                  bltu         sp, sp, 964f
                  or           s11, t0, s1
958:              slti         s8, s9, -35
959:              bltu         s6, s0, 974f
                  sltu         a0, s1, a3
                  bne          t3, a2, 980f
                  andi         s10, s4, -830
                  addi         s8, t0, -178
964:              srai         s0, a6, 10
965:              slli         a7, s4, 3
                  blt          t3, a2, 969f
                  nop
                  slli         a0, gp, 13
969:              nop
                  srai         a7, s3, 19
                  sra          s6, s10, t1
                  lui          s7, 706843
                  slt          s9, s6, s4
974:              sltu         t3, a5, a2
                  srli         a1, s6, 3
                  sltu         zero, a6, s5
                  sltiu        s5, s0, 707
                  xor          s11, a5, s7
                  srai         gp, a2, 9
                  la           a7, sub_2
                  sra          a5, s1, s0
                  addi         a7, a7, -399
                  xori         a1, gp, 1054
                  slti         s1, tp, -2039
                  bgeu         t5, t6, main_j1 #branch to jump instr
                  auipc        sp, 50196
                  addi         t3, zero, -1895
main_j1:          jalr         t1, a7, 399 #jump main -> sub_2
                  beq          t4, ra, 986f
                  slli         t0, t5, 8
980:              blt          t3, s9, 992f
                  bltu         s11, s2, 997f
                  srai         zero, a1, 24
                  sra          t3, tp, a7
                  and          s2, a2, a2
                  slli         ra, zero, 22
986:              andi         s5, a2, -234
                  addi         t5, sp, 235
                  bge          t6, t2, 997f
                  slt          s2, gp, s3
                  sltu         t5, a7, s1
                  sra          a6, t6, t6
992:              sra          a4, a1, t2
                  andi         t1, s3, -242
                  nop
                  add          s1, a3, s9
                  xori         a0, a5, -799
997:              auipc        zero, 1015660
                  and          a1, a1, s5
                  sltu         s5, gp, s8
                  auipc        s8, 942996
                  sltu         s6, t2, s2
                  lui          s2, 713998
                  srai         t2, a2, 14
                  beq          s6, a5, 1016f
                  andi         a6, a1, 936
                  sltiu        s6, a5, 99
                  xor          t2, s11, s6
                  bltu         s7, t0, 1012f
                  sltiu        zero, s2, 845
                  nop
                  and          t5, a3, zero
1012:             xori         s1, a0, -1239
                  andi         a0, s1, 1259
                  blt          t6, t4, 1021f
                  or           a1, t4, t6
1016:             and          s0, tp, a1
                  add          a3, s11, a2
                  ori          gp, tp, -1752
                  srai         s6, s6, 27
                  bgeu         a5, s2, 1034f
1021:             sra          s5, s6, a7
                  addi         t3, zero, 1035
                  andi         a0, t6, 1750
                  auipc        a6, 16752
                  xori         a5, zero, 500
                  sltu         t5, t5, s8
                  add          t5, a2, t6
                  addi         a7, t5, 1505
                  or           a0, s6, a6
                  lui          s10, 272171
                  srai         a5, t5, 14
                  sltu         t2, t3, t3
                  or           s0, t5, ra
1034:             or           s7, t2, a6
                  andi         s11, s2, 1525
                  srl          ra, s1, t1
                  srli         a6, a7, 3
                  nop
                  sra          tp, s6, t3
                  sltu         a4, a3, ra
                  bge          a3, t1, 1053f
                  or           tp, a3, t3
                  or           s8, t2, a1
                  ori          s0, s10, -1236
                  bgeu         s3, s3, 1047f
                  auipc        t4, 360613
1047:             bne          s7, zero, 1063f
                  beq          a7, t4, 1055f
                  sltu         zero, t0, zero
                  slti         s11, s9, 1591
                  bltu         s11, t0, 1057f
                  sltu         s0, a0, s4
1053:             sltiu        sp, t2, -1453
                  ori          a1, s11, -1131
1055:             nop
                  sltu         sp, s11, a6
1057:             bne          ra, s2, 1060f
                  slt          s11, s3, t3
                  sltiu        a0, s7, 1405
1060:             slti         s10, t5, -1225
                  srl          tp, s6, s4
                  beq          ra, s4, 1077f
1063:             blt          gp, a4, 1078f
                  bgeu         s0, a7, 1076f
                  add          ra, t2, a0
                  srli         s0, s11, 6
                  xor          zero, tp, tp
                  bne          a1, a0, 1076f
                  beq          a3, ra, 1085f
main_7:           jal          t1, 22f
0:                jal          ra, 26f
1:                jal          t4, 16f
2:                jal          ra, 1b
3:                jal          ra, 24f
4:                jal          ra, 17f
5:                jal          t1, 6f
6:                jal          t1, 13f
7:                jal          ra, 27f
8:                jal          ra, 20f
9:                jal          t1, 7b
10:               jal          ra, 4b
11:               jal          ra, 0b
12:               jal          t1, 21f
13:               jal          ra, 10b
14:               jal          ra, 28f
15:               jal          t1, 14b
16:               jal          a0, 25f
17:               jal          t0, 9b
18:               jal          ra, 23f
19:               jal          ra, 2b
20:               jal          ra, 3b
21:               jal          ra, 15b
22:               jal          ra, 18b
23:               jal          s2, 5b
24:               jal          ra, 11b
25:               jal          t4, 12b
26:               jal          t1, 19b
27:               jal          ra, 8b
28:               srai         a1, t5, 31
                  add          a1, sp, t3
                  sra          t5, s11, s8
                  sra          ra, a1, a6
                  bge          t4, s8, 1091f
                  lui          s4, 876121
                  sra          a1, s1, sp
1076:             srli         t5, a2, 22
1077:             sltu         a7, s10, s4
1078:             bltu         a3, t6, 1093f
                  srai         s5, a6, 27
                  auipc        t2, 267246
                  beq          s5, s7, 1091f
                  bge          s7, a4, 1091f
                  and          t2, sp, t6
                  nop
1085:             add          s8, t5, ra
                  beq          a5, a0, 1096f
                  srl          t2, gp, t5
                  ori          s5, s2, 1908
                  slli         t1, s3, 28
                  xori         t2, tp, 1824
1091:             and          t0, sp, s5
                  xori         s4, t5, -1396
1093:             beq          t4, a2, 1104f
                  xor          s5, a0, a7
                  sltiu        t5, gp, 302
1096:             xor          s5, s2, s5
                  srl          s4, s5, t2
                  addi         t0, s9, 672
                  slli         a0, s2, 29
                  srai         gp, s3, 17
                  sltu         s0, s0, s0
                  add          t4, s10, a6
                  sra          s10, gp, a3
1104:             lui          s5, 484301
                  sltu         ra, a5, t3
                  beq          s3, s3, 1121f
                  or           a6, s11, a5
                  sub          s7, a5, t5
                  sra          gp, a2, s10
                  slti         t1, t5, -847
                  ori          s11, t0, 592
                  slti         s5, t4, -1657
                  beq          s5, a3, 1122f
                  sltiu        s11, s7, 1817
                  sltu         t3, s7, t4
                  slt          t4, a0, s10
                  sll          s2, t5, s2
                  xori         t4, a5, -323
                  sltu         ra, a4, sp
                  sltiu        a7, s7, -1256
1121:             slt          s7, s2, s2
1122:             srl          s5, a3, s3
                  slti         s10, a0, 1692
                  beq          s3, a2, 1134f
                  srl          s11, sp, t4
                  srli         a4, t0, 7
                  nop
                  bltu         t2, a7, 1131f
                  bne          a1, s4, 1141f
                  add          a6, t3, t5
1131:             sltiu        a0, a0, 587
                  or           s4, t0, t2
                  xor          a4, s10, zero
1134:             xori         s5, s6, 953
                  srli         a4, a1, 3
                  srli         gp, zero, 26
                  nop
                  sll          s4, s10, a2
                  and          a3, t2, s4
                  sltiu        tp, a4, 910
1141:             add          a6, s3, s1
                  xori         s11, t4, 187
                  andi         a0, s6, 1698
                  sub          a6, s1, t1
                  slt          sp, t0, t4
                  slti         s11, t0, 770
                  sltiu        s7, s9, -1748
                  blt          a6, sp, 1155f
                  add          a7, t1, a2
                  slt          a5, s6, a6
                  addi         a1, s5, 822
                  auipc        s1, 170828
                  bne          t1, s8, 1159f
                  slt          a6, t6, zero
1155:             sll          t0, tp, tp
                  slti         t3, t5, 152
                  srai         tp, a2, 4
                  bltu         s0, t6, 1173f
1159:             add          s11, t1, zero
                  sltu         t4, a3, s11
                  nop
                  slt          t5, sp, s10
                  ori          s0, t3, 850
                  sltu         a4, t4, a4
                  sltiu        t3, s9, 373
                  bne          t4, a1, 1174f
                  addi         s0, ra, 1431
                  auipc        a6, 570556
                  slli         a1, t1, 19
                  ori          sp, zero, -1305
                  srl          s7, s7, t6
                  sll          t4, s3, a3
1173:             ori          t2, zero, -948
1174:             or           a1, s2, s2
                  sltu         s7, a4, s3
                  auipc        s1, 217300
                  and          gp, s8, s1
                  ori          t1, s1, -1484
                  sll          t2, a4, s1
                  bne          t0, s2, 1189f
                  bne          gp, s5, 1185f
                  slt          gp, s10, s7
                  slt          a1, sp, s10
                  beq          s4, t2, 1196f
1185:             bge          a2, sp, 1192f
                  bgeu         s5, tp, 1202f
                  srl          t2, t4, tp
                  add          t2, tp, t0
1189:             lui          zero, 619116
                  lui          a6, 285580
                  add          t5, s4, a1
1192:             sltu         zero, a3, t4
                  slt          a1, s11, t5
                  xor          s9, s2, s3
                  slt          gp, a6, ra
1196:             xor          sp, a7, a0
                  slt          t1, a2, s2
                  bgeu         s10, s10, 1213f
                  xori         s9, a3, -2041
                  or           a0, s9, s0
                  slli         s4, zero, 30
1202:             bge          s6, s1, 1221f
                  ori          s6, a4, 1655
                  sra          a6, tp, s4
                  sll          t2, s6, s10
                  sll          t3, s8, t5
                  slt          t0, a6, t2
                  bne          t2, s4, 1223f
                  bgeu         a5, gp, 1211f
                  slt          s9, t1, a7
1211:             auipc        t1, 327483
                  auipc        s2, 988308
1213:             bne          s2, s2, 1221f
                  blt          s1, a0, 1226f
                  xor          gp, t5, s9
                  blt          a7, t1, 1228f
                  or           tp, sp, a0
                  bge          s9, ra, 1232f
                  srl          a5, s5, s8
                  nop
1221:             sltiu        t2, a0, -1481
                  xor          a6, s8, a4
1223:             srai         a1, gp, 17
                  slt          s6, a7, a7
                  and          zero, t3, s5
1226:             sltu         a0, s6, s2
                  and          zero, t2, s4
1228:             srl          s2, s4, s11
main_19:          jal          t1, 7f
0:                jal          ra, 18f
1:                jal          a3, 12f
2:                jal          t1, 11f
3:                jal          ra, 8f
4:                jal          ra, 3b
5:                jal          t1, 0b
6:                jal          t5, 1b
7:                jal          ra, 17f
8:                jal          t1, 10f
9:                jal          tp, 6b
10:               jal          ra, 15f
11:               jal          ra, 4b
12:               jal          ra, 2b
13:               jal          ra, 9b
14:               jal          t1, 5b
15:               jal          tp, 16f
16:               jal          ra, 19f
17:               jal          ra, 14b
18:               jal          a7, 13b
19:               srl          zero, zero, t6
                  srai         s8, s0, 21
                  sltiu        a0, s0, -1910
                  sltu         zero, a6, gp
1232:             auipc        sp, 749900
                  bgeu         s1, t4, 1248f
                  andi         a4, t4, -766
                  srli         t3, zero, 19
                  slt          s2, s2, a4
                  xori         zero, t5, 794
                  slt          sp, s10, t0
                  bge          s3, s4, 1249f
                  ori          s2, s6, 1401
                  srai         t0, s7, 25
                  andi         t4, a0, 1327
                  sltiu        s2, a1, -500
                  bge          a6, t2, 1260f
                  bltu         a7, a7, 1248f
                  or           s0, s6, s9
                  bgeu         s2, zero, 1255f
1248:             ori          a0, s6, 259
1249:             slt          t3, s1, s9
                  nop
                  sll          s10, s9, s7
                  addi         gp, a3, -861
                  bne          tp, t2, 1269f
                  bge          t6, ra, 1272f
1255:             blt          s9, s4, 1267f
                  ori          a3, s5, 1206
                  ori          a7, t4, -862
                  srl          t4, t1, s4
                  xori         a1, t6, -330
1260:             sltiu        a7, t2, 1236
                  slt          t0, s1, a0
                  sub          t2, s0, t1
                  blt          t3, a3, 1278f
main_13:          jal          t1, 8f
0:                jal          s2, 11f
1:                jal          ra, 12f
2:                jal          ra, 9f
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          s6, 4b
7:                jal          s11, 1b
8:                jal          ra, 0b
9:                jal          t1, 10f
10:               jal          ra, 7b
11:               jal          t1, 5b
12:               auipc        gp, 600191
                  sltu         a5, s3, t1
                  srl          t5, t2, sp
                  lui          t3, 14611
1267:             and          s4, a2, zero
                  add          a3, s4, a2
1269:             srai         s10, a4, 3
                  xor          gp, t6, t0
                  srl          gp, s4, s5
1272:             bge          a4, t1, 1275f
                  slli         a1, s7, 16
                  srai         t5, s2, 16
1275:             sltiu        s2, s8, 0
                  sltiu        t3, s0, -1013
                  sltu         t4, t4, t1
1278:             slli         a3, t4, 23
                  add          s6, t2, s0
                  slli         tp, a3, 29
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s3, s3, -48
                  slli         s0, s6, 13
                  sra          s0, s8, s9
                  ori          a4, s10, -1629
                  sltiu        s4, s4, -1410
                  sw           t1, 4(s3)
                  and          a6, s1, s1
                  lui          a7, 392197
                  andi         t0, s3, -1718
                  slti         s6, s11, -712
                  srai         a6, ra, 30
                  sll          s0, a7, zero
                  andi         s4, s9, -1765
                  addi         s8, s1, 838
                  sra          s9, t1, t3
sub_1_j3:         jal          t1, sub_5 #jump sub_1 -> sub_5
                  andi         sp, s11, 181
                  auipc        t0, 678674
                  and          t4, a1, s6
                  ori          sp, a6, -515
                  beq          s1, t0, sub_1_j4 #branch to jump instr
                  sub          zero, s9, s6
sub_1_j4:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  sltu         s5, gp, s4
                  sltiu        zero, a6, 684
                  auipc        s9, 547192
                  slli         s8, s2, 23
                  slli         t3, t0, 22
                  bne          zero, s0, sub_1_j5 #branch to jump instr
                  lui          s8, 88564
                  ori          t4, s5, 1750
                  xor          t5, s9, a1
                  lui          a0, 441605
sub_1_j5:         jal          t1, sub_5 #jump sub_1 -> sub_5
                  sltu         s7, s5, a3
                  nop
                  nop
                  srli         s10, t1, 9
                  slti         tp, t1, 1956
sub_1_j6:         jal          t1, sub_3 #jump sub_1 -> sub_3
sub_1_0:          jal          t1, 14f
0:                jal          t1, 9f
1:                jal          sp, 8f
2:                jal          ra, 12f
3:                jal          t1, 0b
4:                jal          ra, 10f
5:                jal          t1, 1b
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          t1, 16f
9:                jal          a7, 17f
10:               jal          ra, 19f
11:               jal          t1, 6b
12:               jal          t0, 18f
13:               jal          ra, 2b
14:               jal          t1, 3b
15:               jal          ra, 11b
16:               jal          ra, 13b
17:               jal          tp, 15b
18:               jal          t1, 4b
19:               srli         a3, t0, 24
                  bge          s5, s10, 18f
                  sub          s2, s9, s3
                  addi         s11, t6, 390
                  sltiu        sp, t4, -589
                  lui          a5, 174419
                  bge          t0, s6, 6f
6:                beq          s0, a0, 17f
                  xori         s6, t1, 1662
                  srli         a7, t0, 20
                  or           t1, t6, sp
                  bltu         s11, t5, 20f
                  srai         sp, s5, 20
                  beq          s1, ra, 31f
                  or           sp, t5, a5
                  slli         a6, a3, 17
                  auipc        t2, 701836
                  lui          s7, 737245
17:               bltu         gp, sp, 25f
18:               srai         a1, s0, 28
                  lui          s4, 999707
20:               and          s7, sp, s6
                  sub          s5, s4, sp
                  andi         a1, t0, -1964
                  add          t0, s0, ra
                  beq          t5, a5, 35f
25:               blt          t5, a5, 37f
                  or           s0, s9, t2
                  auipc        t2, 1018515
                  blt          s7, s6, 31f
                  sub          s6, gp, zero
                  xor          s5, s6, s4
31:               blt          s2, a2, 40f
                  xor          s10, t2, a4
                  auipc        a7, 428836
                  auipc        sp, 2112
35:               bltu         t6, tp, 40f
                  or           t5, a1, a0
37:               lui          s10, 13050
                  add          a5, t1, a3
                  auipc        a3, 967540
40:               bgeu         t3, s9, 44f
                  bge          s8, t5, 49f
                  bne          a5, s7, 49f
                  srl          a1, t0, s5
44:               slli         s7, s10, 1
                  beq          t0, a4, 49f
                  sltu         t4, zero, s5
                  srl          ra, sp, t3
                  andi         s1, t0, 1959
49:               sltiu        t4, a3, 753
                  lui          t4, 544568
                  lw           t1, 4(s3)
                  addi         s3, s3, 48
                  sub          a5, a4, a5
                  slli         a3, t6, 16
116:              addi x21, x6, 1
116:              jalr x21, x21, 0
sub_2:            bgeu         s2, zero, sub_2_stack_p
                  lui          s1, 707352
sub_2_stack_p:    addi         s3, s3, -36
                  andi         s8, s10, -1904
                  sw           t1, 4(s3)
                  srai         tp, ra, 4
sub_2_2:          jal          t1, 10f
0:                jal          ra, 3f
1:                jal          t1, 23f
2:                jal          t1, 9f
3:                jal          t1, 20f
4:                jal          ra, 17f
5:                jal          ra, 14f
6:                jal          t1, 21f
7:                jal          s8, 1b
8:                jal          ra, 11f
9:                jal          ra, 18f
10:               jal          ra, 7b
11:               jal          t1, 2b
12:               jal          ra, 8b
13:               jal          ra, 4b
14:               jal          ra, 12b
15:               jal          ra, 0b
16:               jal          ra, 13b
17:               jal          t1, 19f
18:               jal          tp, 6b
19:               jal          ra, 22f
20:               jal          ra, 24f
21:               jal          sp, 16b
22:               jal          ra, 15b
23:               jal          ra, 5b
24:               sltiu        a1, s1, 159
sub_2_1:          jal          t1, 9f
0:                jal          a1, 8f
1:                jal          s7, 11f
2:                jal          a0, 10f
3:                jal          t1, 13f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          a5, 17f
7:                jal          ra, 18f
8:                jal          ra, 3b
9:                jal          ra, 1b
10:               jal          ra, 15f
11:               jal          s0, 12f
12:               jal          tp, 0b
13:               jal          t1, 2b
14:               jal          t2, 5b
15:               jal          ra, 4b
16:               jal          ra, 14b
17:               jal          ra, 16b
18:               nop
sub_2_3:          jal          t1, 8f
0:                jal          ra, 3f
1:                jal          ra, 10f
2:                jal          t5, 6f
3:                jal          ra, 1b
4:                jal          a4, 5f
5:                jal          tp, 0b
6:                jal          a7, 9f
7:                jal          ra, 4b
8:                jal          ra, 2b
9:                jal          t1, 7b
10:               xori         s11, sp, -1125
                  bltu         t4, t6, 16f
                  ori          a7, sp, -1374
                  blt          s6, s11, 19f
                  bne          t6, a7, 11f
                  srai         s2, tp, 24
                  sll          s10, s4, t2
                  sub          s4, tp, t6
                  and          s9, s9, s8
                  sll          s1, t1, t5
                  bltu         a6, s7, 28f
                  add          s6, t6, s2
11:               xori         t5, a4, 1690
                  sra          s5, t3, s1
                  sltiu        a0, ra, 455
                  bne          a3, gp, 33f
                  auipc        a4, 753020
16:               bge          tp, a7, 20f
                  bge          s0, a2, 24f
                  sltu         s7, gp, t4
19:               srl          a4, tp, a5
20:               srl          a3, s7, s1
                  xor          zero, s9, s7
                  xori         s0, a3, 1799
                  bgeu         s5, s3, 31f
24:               lui          gp, 605925
                  sltu         s9, s4, t0
                  srai         ra, zero, 21
                  addi         a7, a7, 1721
28:               srl          a5, s4, s9
                  xori         a1, tp, -1523
                  nop
31:               bge          a0, t5, 43f
                  and          s10, a0, gp
33:               ori          t2, a3, 974
                  blt          zero, s1, 46f
                  auipc        t2, 374840
                  lui          t3, 814482
                  ori          ra, s10, 778
                  slli         t5, t3, 11
                  srl          a1, s8, a4
                  bne          a6, s9, 41f
41:               sub          a7, s3, a7
                  sltiu        gp, s3, -1748
43:               sub          a4, s6, a6
                  xor          t3, t5, s8
                  beq          zero, t6, 58f
46:               blt          s7, s3, 50f
                  bne          t1, s8, 58f
                  bltu         s8, s4, 58f
                  lui          s5, 32724
50:               sll          s1, a4, s4
                  bge          ra, a4, 67f
                  add          t2, s2, s3
                  srai         s5, s3, 0
                  blt          sp, s3, 66f
                  slt          s2, s0, s4
                  srai         s11, t0, 25
                  sltu         s2, s3, gp
58:               or           sp, s7, zero
                  sll          t5, s3, a2
                  blt          a4, t1, 71f
                  ori          t5, s11, 355
                  blt          s0, t5, 81f
                  xori         t5, a7, 1601
                  or           t2, t4, s5
                  sltiu        s10, a3, -1589
66:               bltu         sp, t3, 72f
67:               beq          t0, s6, 81f
                  sltiu        a1, s10, -484
                  srl          t1, a5, zero
                  blt          a6, s11, 88f
71:               sra          a6, s5, s5
72:               beq          a6, t0, 82f
                  andi         t5, s7, 300
                  sll          a0, s10, a0
                  ori          s11, t6, 1361
                  andi         s6, s1, -597
                  slli         t5, a0, 31
                  lui          a0, 311500
                  beq          s7, ra, 97f
                  andi         s1, a7, 774
81:               ori          a5, a2, 1057
82:               add          zero, s9, t3
                  slli         t2, a1, 22
                  beq          a7, s9, 103f
                  srai         a0, a7, 15
                  or           a5, t0, a5
                  sub          s1, t2, a4
88:               sll          a0, s9, s4
                  xor          a7, t0, t5
                  slli         s4, t2, 29
                  auipc        t2, 107956
                  bne          s3, a7, 105f
                  ori          a5, a5, -1283
                  beq          s1, tp, 100f
                  blt          zero, t5, 99f
                  sltu         s6, s4, a5
97:               sub          t4, a5, s10
                  xori         gp, t3, -793
99:               sra          a1, a3, s0
100:              sra          gp, zero, t5
                  auipc        s7, 516300
                  andi         t5, t3, -1036
103:              sub          a3, s6, s10
                  slt          t3, tp, t3
105:              srli         s9, s0, 6
                  auipc        s1, 534187
                  andi         s7, a6, 1888
                  sra          t4, s8, t3
                  slli         s7, t6, 10
                  slti         s0, s2, 805
                  sra          s1, s11, tp
                  slli         s9, t1, 19
                  ori          t0, gp, 191
                  sll          a3, zero, sp
                  bgeu         ra, zero, 127f
                  xor          t4, t6, t4
                  bgeu         s11, t1, 129f
                  sltiu        t4, a1, -1508
                  bge          s11, s3, 125f
sub_2_0:          jal          t1, 19f
0:                jal          ra, 29f
1:                jal          ra, 26f
2:                jal          gp, 22f
3:                jal          gp, 18f
4:                jal          ra, 13f
5:                jal          t5, 12f
6:                jal          t1, 3b
7:                jal          ra, 15f
8:                jal          t1, 21f
9:                jal          a4, 11f
10:               jal          ra, 7b
11:               jal          tp, 28f
12:               jal          ra, 14f
13:               jal          ra, 17f
14:               jal          t1, 4b
15:               jal          t1, 20f
16:               jal          tp, 5b
17:               jal          ra, 25f
18:               jal          ra, 30f
19:               jal          ra, 9b
20:               jal          t1, 0b
21:               jal          ra, 2b
22:               jal          t1, 16b
23:               jal          ra, 6b
24:               jal          a0, 8b
25:               jal          ra, 10b
26:               jal          a4, 27f
27:               jal          a3, 24b
28:               jal          ra, 1b
29:               jal          ra, 23b
30:               slli         s0, a5, 30
                  and          a5, a0, ra
                  bgeu         t2, a3, 129f
                  beq          a3, s0, 140f
                  slti         s7, s4, 871
                  beq          t3, zero, 137f
125:              xori         a0, s7, -808
                  blt          s1, a3, 145f
127:              sltu         t5, s0, sp
                  ori          t5, a6, 1443
129:              bge          t4, zero, 139f
                  auipc        s5, 523671
                  srai         s9, t1, 14
                  ori          s6, s11, 118
                  sltiu        s7, s1, 1759
                  or           gp, a2, s2
                  srli         a0, a6, 9
                  xor          t3, s0, tp
137:              bgeu         s1, s5, 156f
                  auipc        t0, 684071
139:              sra          a4, s1, s6
140:              sltu         a5, s7, s1
                  nop
                  xor          s4, a2, tp
                  addi         s8, s2, 239
                  srli         s0, a7, 29
145:              beq          t0, tp, 159f
                  bgeu         a2, t6, 152f
                  andi         t3, s1, 168
                  beq          gp, s7, 167f
                  slli         a4, s11, 25
                  sltu         a5, s7, s1
                  add          s5, s1, t4
152:              sll          t1, s0, t1
                  slti         a1, a5, 549
                  or           gp, s8, s4
                  addi         t4, a5, 442
156:              sub          t2, a3, t3
                  ori          s2, s9, 1715
                  xor          s8, a0, a5
159:              andi         a0, s2, -1347
                  sra          gp, a1, t1
                  bne          tp, tp, 168f
                  bne          s6, t4, 179f
                  slti         t3, a3, 253
                  bne          s11, sp, 180f
                  xor          a5, t0, t5
                  sra          t4, a6, t3
167:              srl          t2, t4, zero
168:              and          s1, a4, t3
                  and          a1, s10, ra
                  slt          zero, t2, s2
                  blt          a3, s7, 183f
                  auipc        s6, 170097
                  bge          a1, a1, 185f
                  bgeu         s9, a7, 185f
                  bgeu         a7, sp, 191f
                  ori          a3, t3, -951
                  ori          s10, gp, 739
                  sltiu        s2, t5, 1879
179:              and          t5, s10, sp
180:              sra          a0, ra, ra
                  srai         s10, t3, 27
                  xori         s7, t6, 137
183:              and          a0, zero, s0
                  ori          a3, gp, -1166
185:              addi         s11, s9, -429
                  nop
                  srli         s7, s0, 14
                  slti         a7, s4, -473
                  sra          a0, t0, s2
                  and          s5, sp, s1
191:              slt          zero, a1, a5
                  andi         t3, s6, -1432
                  xori         s7, t4, 1370
                  srli         s9, a0, 19
                  sub          a5, gp, a6
                  bge          a3, s10, 204f
                  lui          s11, 281499
                  slti         s10, tp, 1498
                  and          t4, s8, a0
                  and          s11, s3, s5
                  xor          s10, a3, s5
                  blt          sp, a5, 206f
                  or           a4, s1, t0
204:              slli         s6, a1, 27
                  blt          s6, t6, 217f
206:              addi         s11, a2, -1039
                  slti         a1, s0, -986
                  slti         a1, s3, -1151
                  sltiu        a4, s10, 639
                  and          gp, s1, t2
                  lui          t5, 518003
                  srl          s9, t2, a5
                  bge          t0, s3, 223f
                  addi         s8, s7, -993
                  xor          zero, s4, t2
                  bge          a3, s4, 230f
217:              beq          s7, s5, 230f
                  xori         a7, a2, -1093
                  slti         s11, t4, -1712
                  srai         a0, s5, 7
                  slti         s9, t2, -386
                  sub          s8, a2, a7
223:              or           tp, s4, t0
                  xor          a5, a6, t3
                  or           t0, s3, t3
                  sub          t5, s5, a6
                  bne          s5, a5, 230f
                  sub          s0, a0, t2
                  bne          t5, gp, 230f
230:              ori          t4, a3, 1600
                  ori          a7, a6, -162
                  srli         a6, s7, 13
                  sltiu        s8, a7, 1557
                  slti         s4, a4, 1138
                  sltiu        t2, zero, 1777
                  and          a5, a1, s0
                  nop
                  lw           t1, 4(s3)
                  addi         s3, s3, 36
                  sra          t3, a0, sp
                  srai         gp, t6, 1
338:              addi x13, x6, 0
338:              jalr x13, x13, 0
sub_3:            slt          ra, a3, s8
                  bltu         gp, t1, sub_3_stack_p
                  sltu         a6, t5, s9
                  auipc        s2, 313105
                  add          s11, t5, tp
sub_3_stack_p:    addi         s3, s3, -28
                  sw           t1, 4(s3)
                  sra          t2, a2, s0
sub_3_1:          jal          t1, 8f
0:                jal          s9, 20f
1:                jal          t1, 0b
2:                jal          s8, 1b
3:                jal          t1, 22f
4:                jal          t4, 14f
5:                jal          a7, 10f
6:                jal          ra, 12f
7:                jal          ra, 13f
8:                jal          ra, 6b
9:                jal          t1, 19f
10:               jal          ra, 18f
11:               jal          ra, 5b
12:               jal          ra, 16f
13:               jal          ra, 3b
14:               jal          ra, 2b
15:               jal          t1, 7b
16:               jal          ra, 17f
17:               jal          s6, 21f
18:               jal          ra, 15b
19:               jal          ra, 11b
20:               jal          a1, 23f
21:               jal          t1, 9b
22:               jal          t1, 4b
23:               ori          s10, s4, -1977
sub_3_3:          jal          t1, 19f
0:                jal          t1, 23f
1:                jal          ra, 18f
2:                jal          ra, 22f
3:                jal          ra, 10f
4:                jal          ra, 12f
5:                jal          ra, 24f
6:                jal          s11, 11f
7:                jal          t1, 6b
8:                jal          ra, 3b
9:                jal          ra, 17f
10:               jal          t1, 4b
11:               jal          a0, 5b
12:               jal          s10, 0b
13:               jal          ra, 20f
14:               jal          s6, 21f
15:               jal          ra, 13b
16:               jal          t1, 14b
17:               jal          ra, 15b
18:               jal          ra, 8b
19:               jal          a0, 9b
20:               jal          sp, 1b
21:               jal          ra, 7b
22:               jal          t1, 16b
23:               jal          ra, 2b
24:               sll          s1, s1, tp
sub_3_2:          jal          t1, 6f
0:                jal          ra, 15f
1:                jal          ra, 12f
2:                jal          tp, 3f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          ra, 14f
6:                jal          t1, 7f
7:                jal          ra, 4b
8:                jal          ra, 17f
9:                jal          sp, 1b
10:               jal          ra, 0b
11:               jal          ra, 10b
12:               jal          a1, 8b
13:               jal          tp, 2b
14:               jal          t1, 9b
15:               jal          t1, 13b
16:               jal          ra, 11b
17:               auipc        t5, 553744
                  xor          zero, a6, a1
                  slli         zero, t2, 30
                  blt          a2, s3, 20f
                  nop
                  slli         s9, s11, 5
                  ori          ra, s4, -367
                  beq          s4, s2, 19f
                  addi         s0, t0, 1545
                  addi         t4, t6, -1904
                  sll          s1, s11, t6
                  blt          a2, s5, 23f
                  or           a0, t2, a5
                  or           a6, s5, gp
                  bgeu         s0, s1, 22f
                  slti         t5, s3, 1858
                  slli         gp, a7, 3
                  bltu         zero, a4, 27f
                  addi         zero, s0, 1359
                  slt          a7, zero, a0
19:               bne          s1, a1, 31f
20:               sub          a6, a0, a7
                  auipc        gp, 27439
22:               add          a7, s7, t2
23:               auipc        a0, 323970
                  lui          a0, 969881
                  addi         s7, t0, -177
                  srai         t0, s2, 0
27:               or           a1, s10, a3
                  bge          t2, t6, 34f
                  bgeu         s2, s4, 38f
                  add          t0, t2, gp
31:               beq          zero, sp, 48f
                  or           s4, a3, t5
                  lui          ra, 143032
34:               beq          a4, sp, 40f
                  bltu         a7, s3, 45f
                  and          tp, t1, sp
                  xor          a7, s10, a2
38:               ori          a3, t2, 1552
                  sll          a4, a1, tp
40:               add          s1, t3, a1
                  sltu         gp, a3, s7
                  sltiu        s0, s0, 883
                  slti         s6, s3, -1498
                  slli         s4, a1, 11
45:               sra          sp, a3, t4
                  nop
                  xori         s4, a4, -1879
48:               bne          t1, s10, 68f
                  and          t5, s7, s3
                  bge          tp, a6, 56f
                  add          a1, s1, s11
                  nop
                  or           s6, t3, sp
                  lui          s0, 416191
                  bne          a7, a1, 62f
56:               slli         s2, s4, 29
                  srai         s10, sp, 21
                  bgeu         t1, t0, 66f
                  add          t0, s4, s8
                  lui          s7, 182281
                  srl          a7, sp, tp
62:               srli         s2, a5, 23
                  lui          s10, 26268
                  slti         a3, t1, 942
                  srai         s2, s4, 14
66:               bgeu         s4, t1, 85f
                  addi         t3, s9, -1960
68:               slt          s5, t6, s7
                  or           s9, sp, s2
                  sra          ra, gp, s11
                  or           a0, tp, t4
                  xori         t1, a5, 1607
                  bgeu         s7, a0, 84f
                  sltiu        a1, t5, -1615
                  ori          t4, a7, 204
                  srli         ra, s10, 30
                  srl          t3, a5, a5
                  beq          sp, a5, 87f
                  srl          a6, s1, s10
                  bge          a3, s5, 86f
                  blt          sp, s5, 92f
                  blt          s4, a0, 102f
                  sra          tp, a4, t4
84:               nop
85:               ori          ra, s5, -1674
86:               beq          s6, gp, 99f
87:               or           s4, s11, a3
                  srl          tp, s1, s6
                  lui          ra, 997235
                  and          t5, a4, t5
                  xori         zero, t2, -1711
92:               bgeu         a5, s9, 94f
                  srai         t5, a5, 10
94:               sltu         s10, s1, t6
                  nop
                  xori         t3, a4, 971
                  srl          s1, a7, a2
                  bne          zero, s2, 118f
99:               nop
                  sltu         s10, s7, s10
                  bltu         s5, zero, 105f
102:              sltiu        s11, t4, 2037
                  lui          a5, 573183
                  sltu         t3, gp, s8
105:              sltu         s5, sp, gp
                  bge          t6, s11, 109f
                  and          a6, t4, t2
                  sll          s11, a0, a5
109:              bne          t4, s9, 118f
                  srai         s7, t1, 25
                  lui          a5, 174917
                  and          s1, t5, a7
                  addi         s10, t1, 1787
                  sll          t2, tp, s1
                  andi         s5, t1, 373
                  sll          a5, s7, s10
                  sra          ra, tp, a7
118:              slt          sp, s11, s7
                  sltu         t0, tp, gp
                  beq          t0, s10, 127f
                  slli         zero, t1, 9
                  sltu         s7, a1, t2
                  sltu         s11, s11, s10
                  or           a7, t2, a1
                  bltu         s4, s8, 144f
                  bge          a2, s5, 146f
127:              blt          s9, s9, 140f
                  auipc        s11, 334815
                  addi         s8, ra, 928
                  addi         a7, sp, -357
                  beq          s1, ra, 150f
                  slli         s2, s4, 6
                  sra          tp, a4, a2
                  slt          t3, s9, ra
                  addi         a6, t1, 1018
                  bne          s2, t3, 155f
                  nop
                  slt          t0, s1, s3
                  andi         a6, s9, 1685
140:              bgeu         a0, t2, 157f
                  auipc        zero, 45119
                  bgeu         zero, t5, 162f
                  xori         t0, s5, -1048
144:              auipc        s10, 235517
                  bgeu         t3, s8, 152f
146:              lui          gp, 182043
                  and          sp, s8, a0
                  slti         t3, s0, -489
                  srl          s2, s11, s11
150:              srai         s2, tp, 14
                  and          s0, a3, s10
152:              bne          zero, s0, 165f
                  auipc        s11, 378388
                  bgeu         t2, s6, 158f
155:              bgeu         t1, s3, 157f
                  sltu         s4, s7, a1
157:              sll          s0, t3, s0
158:              slt          s1, s1, s3
                  sltiu        s11, ra, -1896
                  bgeu         s8, a1, 171f
                  srli         s6, a4, 30
162:              lui          a0, 531102
                  or           a5, a1, a6
                  auipc        t1, 529360
165:              bltu         s7, sp, 185f
                  xori         a6, s5, 1328
                  sub          s2, t3, s5
                  sra          s4, s9, s4
                  srl          t5, s9, t1
                  slli         sp, s1, 21
171:              xori         s6, t2, 556
                  bne          s0, t1, 178f
                  bne          s5, s10, 184f
                  srai         gp, t0, 20
                  add          s5, s1, t1
                  srl          s6, t2, s1
                  xor          s8, tp, gp
178:              nop
                  slti         s1, s10, -1625
                  xori         s4, zero, 322
                  ori          a1, a6, 665
                  blt          t0, a0, 191f
                  srl          a1, a3, a0
184:              slt          a0, s0, s11
185:              sll          t4, s9, s11
                  xor          a7, t6, a2
                  beq          a5, a0, 207f
                  andi         t5, a2, 431
                  srl          t0, t6, a7
                  addi         a5, t6, 383
191:              or           a7, a7, gp
                  srli         tp, s0, 23
                  xori         a3, a7, 1019
                  addi         a6, t6, -600
                  sub          s9, s10, s4
                  sll          zero, t4, a0
                  add          t2, a4, s8
                  bne          s1, s8, 208f
                  srl          s5, a7, t4
sub_3_0:          jal          t1, 6f
0:                jal          ra, 5f
1:                jal          t0, 0b
2:                jal          t3, 7f
3:                jal          t2, 1b
4:                jal          t1, 10f
5:                jal          ra, 9f
6:                jal          ra, 3b
7:                jal          ra, 8f
8:                jal          ra, 4b
9:                jal          s7, 2b
10:               jal          ra, 11f
11:               addi         s8, s4, -1616
                  blt          s6, sp, 220f
                  ori          s4, zero, 808
                  ori          s8, t5, 1455
                  lui          a4, 77949
                  nop
                  auipc        a5, 309146
                  and          s6, a6, tp
207:              blt          s9, s10, 213f
208:              add          zero, s4, t6
                  slli         a5, tp, 0
                  or           zero, s1, tp
                  slti         a3, a2, 634
                  sub          s1, a1, a4
213:              bne          t0, t3, 220f
                  sub          t1, t3, t4
                  beq          t1, s0, 220f
                  bgeu         t0, s3, 220f
                  srl          a3, t3, s3
                  bne          a5, a4, 220f
                  srai         sp, s1, 28
220:              ori          s2, s9, -1856
                  xor          s8, s10, s9
                  ori          s10, t5, -783
                  lui          a3, 520728
                  and          zero, s6, s5
                  and          a1, gp, s0
                  lw           t1, 4(s3)
                  xor          a0, s9, a0
                  addi         s3, s3, 28
                  srli         s10, s11, 7
321:              addi x3, x6, 0
321:              jalr x3, x3, 0
sub_5:            bge          s10, gp, sub_5_stack_p
sub_5_stack_p:    addi         s3, s3, -32
                  srl          a6, zero, s2
                  sw           t1, 4(s3)
                  auipc        a3, 453333
                  auipc        s4, 1029695
sub_5_21:         jal          t1, 10f
0:                jal          s11, 9f
1:                jal          sp, 13f
2:                jal          t1, 4f
3:                jal          ra, 14f
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          s0, 0b
7:                jal          s10, 1b
8:                jal          t1, 11f
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          ra, 2b
12:               jal          t1, 8b
13:               jal          t1, 12b
14:               jal          t1, 15f
15:               slti         s2, s11, -1223
sub_5_10:         jal          t1, 6f
0:                jal          s6, 13f
1:                jal          t2, 2f
2:                jal          sp, 11f
3:                jal          t1, 12f
4:                jal          ra, 16f
5:                jal          t1, 19f
6:                jal          ra, 5b
7:                jal          ra, 18f
8:                jal          s11, 3b
9:                jal          a3, 15f
10:               jal          ra, 7b
11:               jal          t1, 4b
12:               jal          s2, 0b
13:               jal          t0, 17f
14:               jal          gp, 1b
15:               jal          ra, 10b
16:               jal          s10, 8b
17:               jal          t4, 9b
18:               jal          ra, 20f
19:               jal          s4, 14b
20:               xori         a1, s1, 124
sub_5_19:         jal          t1, 20f
0:                jal          ra, 5f
1:                jal          s6, 9f
2:                jal          a4, 7f
3:                jal          s6, 13f
4:                jal          t1, 3b
5:                jal          ra, 17f
6:                jal          ra, 2b
7:                jal          a7, 26f
8:                jal          t1, 19f
9:                jal          s2, 16f
10:               jal          ra, 11f
11:               jal          t1, 15f
12:               jal          t1, 23f
13:               jal          s10, 10b
14:               jal          ra, 0b
15:               jal          ra, 24f
16:               jal          t2, 18f
17:               jal          ra, 27f
18:               jal          ra, 28f
19:               jal          s9, 1b
20:               jal          sp, 21f
21:               jal          t1, 14b
22:               jal          ra, 6b
23:               jal          ra, 25f
24:               jal          t1, 22b
25:               jal          t0, 8b
26:               jal          ra, 12b
27:               jal          ra, 4b
28:               and          a7, t4, ra
sub_5_12:         jal          t1, 7f
0:                jal          ra, 6f
1:                jal          ra, 4f
2:                jal          a0, 8f
3:                jal          t1, 11f
4:                jal          s1, 3b
5:                jal          ra, 1b
6:                jal          tp, 5b
7:                jal          ra, 9f
8:                jal          t1, 0b
9:                jal          s1, 10f
10:               jal          s2, 2b
11:               srai         a7, s8, 3
sub_5_2:          jal          t1, 15f
0:                jal          t0, 20f
1:                jal          t1, 8f
2:                jal          ra, 6f
3:                jal          ra, 5f
4:                jal          ra, 11f
5:                jal          ra, 1b
6:                jal          s2, 9f
7:                jal          t1, 13f
8:                jal          ra, 17f
9:                jal          gp, 19f
10:               jal          a0, 3b
11:               jal          ra, 12f
12:               jal          ra, 23f
13:               jal          ra, 14f
14:               jal          ra, 2b
15:               jal          ra, 21f
16:               jal          ra, 4b
17:               jal          t0, 0b
18:               jal          tp, 22f
19:               jal          ra, 18b
20:               jal          ra, 7b
21:               jal          t4, 10b
22:               jal          ra, 16b
23:               sltu         t5, sp, a4
sub_5_9:          jal          t1, 7f
0:                jal          ra, 26f
1:                jal          ra, 17f
2:                jal          t1, 25f
3:                jal          t1, 24f
4:                jal          t1, 5f
5:                jal          ra, 2b
6:                jal          ra, 14f
7:                jal          t0, 22f
8:                jal          ra, 13f
9:                jal          ra, 27f
10:               jal          ra, 20f
11:               jal          t1, 15f
12:               jal          t1, 23f
13:               jal          ra, 12b
14:               jal          t1, 19f
15:               jal          ra, 0b
16:               jal          t4, 18f
17:               jal          tp, 9b
18:               jal          s0, 11b
19:               jal          ra, 16b
20:               jal          ra, 6b
21:               jal          t1, 3b
22:               jal          ra, 21b
23:               jal          t1, 4b
24:               jal          s5, 10b
25:               jal          ra, 1b
26:               jal          t1, 8b
27:               sltu         t1, s6, s0
sub_5_7:          jal          t1, 3f
0:                jal          t5, 6f
1:                jal          t1, 20f
2:                jal          ra, 8f
3:                jal          ra, 18f
4:                jal          ra, 17f
5:                jal          ra, 15f
6:                jal          t1, 13f
7:                jal          ra, 12f
8:                jal          s4, 1b
9:                jal          ra, 4b
10:               jal          ra, 21f
11:               jal          t1, 22f
12:               jal          t1, 11b
13:               jal          a3, 10b
14:               jal          t3, 16f
15:               jal          ra, 7b
16:               jal          t0, 5b
17:               jal          t1, 19f
18:               jal          ra, 9b
19:               jal          s1, 2b
20:               jal          t1, 0b
21:               jal          ra, 14b
22:               sra          zero, a4, a4
sub_5_22:         jal          t1, 5f
0:                jal          ra, 16f
1:                jal          ra, 13f
2:                jal          ra, 3f
3:                jal          t1, 10f
4:                jal          a1, 17f
5:                jal          t1, 8f
6:                jal          t1, 2b
7:                jal          t1, 15f
8:                jal          t1, 0b
9:                jal          s7, 12f
10:               jal          ra, 18f
11:               jal          t1, 1b
12:               jal          ra, 4b
13:               jal          t1, 14f
14:               jal          a7, 9b
15:               jal          ra, 11b
16:               jal          gp, 7b
17:               jal          t5, 6b
18:               srai         s1, s11, 5
sub_5_13:         jal          t1, 5f
0:                jal          t1, 18f
1:                jal          ra, 14f
2:                jal          t3, 6f
3:                jal          t2, 9f
4:                jal          ra, 13f
5:                jal          s7, 2b
6:                jal          a5, 3b
7:                jal          ra, 16f
8:                jal          t1, 4b
9:                jal          tp, 7b
10:               jal          ra, 15f
11:               jal          s11, 10b
12:               jal          t1, 0b
13:               jal          ra, 17f
14:               jal          ra, 11b
15:               jal          ra, 12b
16:               jal          t1, 8b
17:               jal          t5, 1b
18:               sra          t0, s0, s11
sub_5_8:          jal          t1, 17f
0:                jal          t1, 7f
1:                jal          ra, 21f
2:                jal          t1, 19f
3:                jal          t1, 10f
4:                jal          t1, 3b
5:                jal          t1, 11f
6:                jal          t1, 14f
7:                jal          t5, 1b
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          t1, 12f
11:               jal          t1, 16f
12:               jal          ra, 8b
13:               jal          ra, 18f
14:               jal          ra, 13b
15:               jal          t1, 9b
16:               jal          s8, 15b
17:               jal          ra, 5b
18:               jal          ra, 4b
19:               jal          ra, 20f
20:               jal          t0, 0b
21:               slti         zero, s2, 335
sub_5_11:         jal          t1, 6f
0:                jal          ra, 13f
1:                jal          ra, 27f
2:                jal          s0, 19f
3:                jal          ra, 7f
4:                jal          ra, 12f
5:                jal          s4, 14f
6:                jal          ra, 8f
7:                jal          t1, 5b
8:                jal          ra, 26f
9:                jal          s7, 15f
10:               jal          t1, 20f
11:               jal          t1, 18f
12:               jal          t3, 2b
13:               jal          ra, 11b
14:               jal          ra, 23f
15:               jal          ra, 17f
16:               jal          ra, 22f
17:               jal          s8, 3b
18:               jal          a1, 24f
19:               jal          t1, 16b
20:               jal          ra, 9b
21:               jal          t1, 0b
22:               jal          t1, 25f
23:               jal          ra, 1b
24:               jal          t0, 4b
25:               jal          ra, 10b
26:               jal          ra, 21b
27:               nop
sub_5_16:         jal          t1, 9f
0:                jal          t1, 10f
1:                jal          t1, 6f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          ra, 12f
5:                jal          gp, 8f
6:                jal          ra, 15f
7:                jal          sp, 13f
8:                jal          t1, 3b
9:                jal          gp, 5b
10:               jal          ra, 14f
11:               jal          ra, 0b
12:               jal          ra, 7b
13:               jal          ra, 16f
14:               jal          s7, 1b
15:               jal          tp, 17f
16:               jal          ra, 2b
17:               sltiu        s1, zero, 1153
sub_5_1:          jal          t1, 4f
0:                jal          ra, 18f
1:                jal          a4, 28f
2:                jal          ra, 23f
3:                jal          ra, 14f
4:                jal          t1, 19f
5:                jal          ra, 26f
6:                jal          ra, 9f
7:                jal          ra, 8f
8:                jal          t1, 27f
9:                jal          ra, 24f
10:               jal          ra, 20f
11:               jal          t0, 17f
12:               jal          t1, 22f
13:               jal          sp, 11b
14:               jal          tp, 0b
15:               jal          t1, 13b
16:               jal          t1, 3b
17:               jal          s11, 5b
18:               jal          t1, 15b
19:               jal          t1, 2b
20:               jal          t0, 16b
21:               jal          ra, 1b
22:               jal          ra, 25f
23:               jal          t1, 10b
24:               jal          ra, 12b
25:               jal          sp, 21b
26:               jal          ra, 7b
27:               jal          a7, 6b
28:               xor          s1, a5, s8
sub_5_3:          jal          t1, 10f
0:                jal          ra, 8f
1:                jal          ra, 7f
2:                jal          s5, 5f
3:                jal          t1, 0b
4:                jal          ra, 12f
5:                jal          ra, 1b
6:                jal          ra, 11f
7:                jal          ra, 9f
8:                jal          t1, 4b
9:                jal          s1, 13f
10:               jal          sp, 6b
11:               jal          ra, 3b
12:               jal          ra, 2b
13:               andi         t4, s11, -1862
sub_5_6:          jal          t1, 1f
0:                jal          a7, 7f
1:                jal          ra, 10f
2:                jal          t1, 6f
3:                jal          sp, 18f
4:                jal          a5, 3b
5:                jal          gp, 0b
6:                jal          ra, 21f
7:                jal          a7, 14f
8:                jal          t1, 5b
9:                jal          s1, 15f
10:               jal          a1, 17f
11:               jal          ra, 22f
12:               jal          ra, 20f
13:               jal          gp, 16f
14:               jal          ra, 9b
15:               jal          t1, 13b
16:               jal          t5, 4b
17:               jal          ra, 12b
18:               jal          t1, 11b
19:               jal          ra, 8b
20:               jal          ra, 2b
21:               jal          t1, 19b
22:               ori          t4, ra, -1013
                  xor          s2, t5, s0
                  blt          t0, t0, 3f
                  sltu         a7, s2, a7
3:                addi         zero, s7, -1632
                  beq          s7, a1, 7f
                  sll          s4, s6, a3
                  and          s2, a5, s9
7:                sltu         t4, s4, t3
                  lui          s10, 964725
                  lui          a3, 712140
                  srl          s2, s10, tp
                  sltu         s0, gp, s0
                  sll          s5, t0, a7
                  ori          s6, a2, -1419
                  sll          s6, s3, s0
                  xor          zero, t2, s6
                  slti         t3, t0, 1180
                  bne          s10, s7, 22f
                  sub          a3, s10, t6
                  or           a7, s10, t1
                  xor          s8, s1, a4
                  sra          s1, s0, gp
22:               sub          s4, s0, s11
                  sltu         s7, a3, s2
                  srl          zero, s7, a0
                  and          s7, tp, a1
                  slti         t0, t6, -1415
                  bne          s8, a0, 40f
                  blt          s2, ra, 30f
                  sra          s6, a5, zero
30:               blt          a7, s3, 49f
                  bne          s8, t1, 41f
                  srai         s9, s9, 1
                  and          s1, s4, t1
                  blt          s4, t1, 52f
                  bge          sp, s1, 38f
                  bge          a1, t3, 42f
                  nop
38:               add          gp, a6, a6
                  sltiu        sp, a1, 1062
40:               or           s1, a3, s0
41:               xor          t1, zero, a7
42:               add          s2, zero, s6
                  slt          zero, s7, s4
                  sra          s11, t3, a2
                  sltiu        tp, s5, -1538
                  beq          t2, s2, 66f
                  add          s2, s8, s3
                  ori          a1, s9, -1810
49:               slli         a7, a2, 1
                  add          a7, a1, sp
                  andi         a3, a0, 461
52:               slti         s10, t4, -1938
                  beq          s8, a3, 72f
                  sltu         s10, a3, gp
                  ori          t0, s9, -1466
                  lui          s2, 638477
                  and          s8, s8, gp
                  slt          s9, s8, t2
                  blt          s7, gp, 71f
                  nop
                  bge          ra, a1, 76f
                  ori          t5, a7, -423
                  ori          s9, ra, -539
                  nop
                  sub          t1, a3, a3
66:               sltiu        s4, s1, 53
                  add          tp, zero, s4
                  sltu         t3, s10, s7
                  xori         t1, a3, -1989
                  lui          a5, 656049
71:               or           s11, a0, s0
72:               auipc        a0, 715483
                  bne          s2, t0, 91f
                  auipc        s9, 906613
                  srai         t4, s0, 18
76:               slt          t4, t5, a5
                  bge          t4, s5, 93f
                  nop
                  bge          tp, a3, 90f
                  ori          s8, zero, 1194
                  slli         t5, gp, 16
                  srl          s0, t6, ra
                  sltu         t3, t6, a2
                  srli         a3, t3, 31
                  sll          s8, s0, a7
                  sra          s5, a0, s10
                  or           s2, a4, s7
                  sra          s7, t3, a4
                  auipc        a4, 786818
90:               sub          a6, t3, t0
91:               bgeu         t6, s6, 105f
                  beq          s7, gp, 112f
93:               srli         s9, s9, 19
                  bgeu         a6, s0, 108f
                  slt          a5, gp, t3
                  bge          s7, s2, 110f
                  slli         t2, s1, 3
                  or           s6, tp, t6
                  or           s4, a0, tp
                  add          sp, gp, tp
                  bge          s4, sp, 115f
                  bltu         s3, s2, 108f
                  sltu         s9, s7, s7
                  sll          a7, t6, s6
105:              sub          s2, a2, zero
                  slt          s0, s3, s0
                  beq          s5, s6, 117f
108:              ori          a7, t4, 834
                  bge          t5, s8, 116f
110:              sltu         s8, s3, t6
                  sra          a7, zero, tp
112:              bge          a1, a0, 113f
113:              and          s7, a3, t0
                  auipc        t4, 625727
115:              ori          t5, a2, 980
116:              slt          a6, t4, t6
117:              or           s2, s5, s9
                  slt          s2, tp, a1
                  auipc        t2, 864016
                  nop
                  ori          a1, t5, 1354
                  slti         s8, sp, 1842
                  srl          a7, t2, a4
                  or           s8, gp, gp
                  sltiu        t5, a5, 1828
                  xori         s9, tp, -849
                  sll          s5, s2, a1
                  andi         s7, a4, -1432
                  xor          s2, s5, gp
                  bne          sp, s2, 134f
                  slti         a5, a6, 1266
                  nop
                  slti         s2, s8, 1868
134:              sll          a4, s2, s9
                  sll          gp, ra, t1
                  auipc        s7, 660610
                  andi         s0, s0, 1486
                  beq          t4, t6, 141f
                  sltiu        s0, s4, 1268
                  bge          s8, s4, 145f
141:              bne          s7, s6, 160f
                  bne          s9, t2, 156f
                  sltu         s6, t6, t4
sub_5_17:         jal          t1, 10f
0:                jal          ra, 16f
1:                jal          t4, 15f
2:                jal          ra, 12f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          ra, 14f
6:                jal          ra, 1b
7:                jal          s11, 4b
8:                jal          ra, 2b
9:                jal          t1, 17f
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          ra, 3b
15:               jal          t0, 0b
16:               jal          s1, 9b
17:               slt          a4, s11, s9
sub_5_18:         jal          t1, 12f
0:                jal          t1, 9f
1:                jal          ra, 7f
2:                jal          t1, 11f
3:                jal          a7, 1b
4:                jal          t1, 14f
5:                jal          gp, 0b
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          sp, 16f
9:                jal          s5, 8b
10:               jal          s0, 15f
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               jal          t1, 2b
14:               jal          ra, 3b
15:               jal          t1, 13b
16:               sltu         s2, gp, a1
                  slt          a7, sp, s0
145:              add          a6, zero, s2
                  xor          s6, t5, s7
                  slti         t3, s10, -1491
                  nop
                  srli         s6, s2, 3
                  bne          s5, t4, 157f
                  sltiu        s1, t4, 1561
                  sll          s4, t1, a6
                  or           s0, t4, s1
                  slti         a4, s2, -1461
                  slti         a5, s6, -1156
156:              or           t3, s4, s4
157:              and          a0, a3, s6
                  srli         gp, a2, 21
                  blt          s3, a0, 178f
160:              xor          s8, t6, a4
                  and          s4, a1, a4
                  blt          tp, zero, 177f
                  srai         s7, t4, 4
                  xor          t5, s7, t6
                  srli         s4, s7, 26
                  and          gp, s3, tp
                  sll          t0, s7, a3
                  sll          s5, a1, s7
                  xor          t1, s0, s5
                  slli         s6, s3, 21
                  bltu         a2, s2, 172f
172:              bltu         t2, t5, 175f
                  sltu         s11, s0, a3
                  sll          s5, s11, a0
175:              srl          t3, t2, s7
                  sltu         t3, s10, t6
177:              bgeu         s8, ra, 189f
178:              xori         t1, s10, -402
                  lui          a6, 922454
                  andi         t3, zero, -994
                  xori         s11, a7, 764
                  sll          zero, t2, tp
                  bne          s10, t6, 197f
                  srli         s0, a3, 2
                  srai         s11, sp, 2
                  beq          ra, zero, 191f
                  sll          a1, s5, a5
                  add          t3, a1, s7
189:              andi         t0, s9, -480
                  sltiu        ra, s3, -934
191:              srai         a0, s6, 30
                  or           a1, s0, a4
                  nop
                  blt          s7, t2, 204f
                  bltu         a5, gp, 214f
                  slli         ra, s0, 6
197:              add          a7, ra, a6
                  sll          s8, t6, s11
                  blt          tp, t6, 202f
                  bgeu         s0, s3, 218f
                  srai         tp, a6, 12
202:              sra          s4, s5, s6
                  andi         a4, s11, 512
204:              sltu         tp, a1, s5
                  nop
                  slti         s10, s0, 99
                  xor          s0, s6, a2
                  auipc        s7, 538831
                  slli         s0, tp, 2
                  ori          gp, sp, -358
                  and          s7, sp, tp
                  sra          s2, t1, a4
                  srai         t1, t4, 21
214:              slt          s0, s11, a6
                  sra          zero, a3, t5
                  bge          s5, gp, 227f
                  ori          a3, gp, -597
218:              nop
                  srli         gp, tp, 7
                  slt          a1, ra, t0
                  sra          s7, sp, t6
                  slt          a6, gp, s5
                  andi         s2, a1, 1209
                  and          a4, s2, sp
                  slli         s5, s6, 2
                  srai         s4, a6, 2
227:              ori          t3, ra, 770
                  auipc        a0, 961123
                  bge          t5, s8, 233f
                  or           sp, a7, a5
                  srl          a1, zero, a2
                  ori          t0, a1, -1456
233:              bge          s1, tp, 243f
                  or           s8, t5, s8
                  bgeu         a7, sp, 248f
                  and          s6, s9, sp
                  slt          s6, tp, s5
                  and          a7, a5, s3
                  xor          t5, t6, t6
                  bge          t2, s8, 242f
                  and          a0, zero, a5
242:              nop
243:              sltiu        s6, a5, -1306
                  bne          s9, t2, 258f
                  srl          s0, t3, a5
                  xor          a0, s5, sp
                  bne          s2, a7, 250f
248:              sltu         a6, s2, tp
                  auipc        s1, 542211
250:              bne          a4, s4, 252f
                  ori          s7, s0, 946
252:              sltu         t3, a4, zero
                  sll          s8, s5, a4
                  sltu         a6, ra, a6
                  auipc        a3, 694663
                  ori          s11, a7, -83
                  nop
258:              and          a1, t1, s3
                  srai         s6, s10, 15
                  slti         a3, s7, 876
                  xori         s1, s0, -1088
                  beq          a4, t0, 268f
                  bgeu         a2, s0, 279f
                  srl          t5, sp, a5
                  add          a3, t6, sp
                  and          t0, s7, s7
                  slli         t0, ra, 26
268:              slti         a1, s0, 760
                  xor          a6, s0, gp
                  sra          t3, s10, s9
                  srli         gp, t0, 8
                  srl          s7, s2, s9
                  beq          t1, t4, 278f
                  srl          s7, a6, ra
                  bltu         s7, s3, 281f
                  auipc        t2, 790180
                  andi         s10, tp, 1173
278:              slti         a3, ra, -229
279:              ori          s2, t5, -1695
                  andi         s9, s1, 1515
281:              and          t4, t5, t2
                  srai         s10, s2, 27
                  bgeu         s2, t0, 303f
                  bge          a4, s9, 303f
sub_5_0:          jal          t1, 15f
0:                jal          ra, 18f
1:                jal          ra, 21f
2:                jal          s7, 13f
3:                jal          t1, 1b
4:                jal          ra, 12f
5:                jal          ra, 11f
6:                jal          ra, 3b
7:                jal          ra, 10f
8:                jal          t1, 9f
9:                jal          t1, 25f
10:               jal          s2, 23f
11:               jal          ra, 0b
12:               jal          s0, 5b
13:               jal          a3, 14f
14:               jal          a7, 20f
15:               jal          a0, 24f
16:               jal          ra, 26f
17:               jal          t3, 8b
18:               jal          t1, 6b
19:               jal          s9, 16b
20:               jal          t1, 22f
21:               jal          a1, 19b
22:               jal          ra, 4b
23:               jal          ra, 17b
24:               jal          t1, 7b
25:               jal          s8, 2b
26:               addi         s7, t6, 356
                  srli         a1, s9, 18
                  bgeu         s10, s7, 300f
                  srai         s5, t0, 31
                  srl          s5, tp, s4
                  and          s11, tp, t6
                  bge          t4, s0, 308f
                  slli         t3, a4, 11
                  addi         s1, a4, -327
                  lui          s6, 448979
                  nop
                  slt          a6, ra, a2
                  and          tp, t6, t1
                  auipc        s11, 65054
                  sltiu        a0, tp, 486
                  xori         s1, tp, -1092
300:              bgeu         t2, t3, 320f
                  bltu         t0, s11, 306f
                  slt          a6, s6, tp
303:              sra          s5, tp, t0
                  sltiu        a4, t5, -287
                  and          a3, sp, s10
306:              slli         s7, a2, 22
                  blt          a5, zero, 310f
308:              bne          tp, tp, 311f
                  and          s6, t6, s3
310:              srai         a7, s2, 15
311:              slt          t0, a1, s9
                  sltu         s11, a7, s7
                  srli         t2, s11, 14
                  ori          t4, s3, -1893
                  sltiu        gp, s0, 1495
                  sra          s1, s10, a5
                  sra          gp, a5, s9
                  sltiu        s1, t4, 747
                  srai         t4, a1, 12
320:              nop
                  slt          a7, a5, a7
                  xor          gp, s0, a5
                  sub          s1, t5, s5
                  and          ra, t1, s3
                  or           t4, s8, s8
                  nop
                  srli         sp, t4, 0
                  slti         t4, a6, 1088
                  sub          t4, ra, a1
                  sltiu        tp, zero, -1988
                  ori          t1, s0, 492
                  ori          gp, t3, 229
                  sub          gp, t3, a1
                  or           a0, t4, s1
                  slti         t1, s8, 571
                  xor          a6, a5, s2
                  sll          s2, t2, sp
                  sltiu        a7, s9, -1055
                  bltu         s3, s11, 359f
                  bltu         zero, s4, 351f
                  auipc        a6, 306599
                  slti         gp, t3, 1232
                  addi         a3, t4, -831
                  and          t4, a6, sp
                  sub          a0, a5, a5
                  auipc        ra, 983569
                  sub          s9, t2, a5
                  sll          ra, t3, s1
                  and          a6, t5, s2
                  sll          gp, a4, s0
351:              sub          a4, gp, a5
                  sll          s2, sp, t4
                  addi         a1, s8, 1347
                  andi         s6, s5, 858
                  xor          sp, a3, t6
                  xor          s0, s2, t2
                  sltiu        s1, a7, 1174
                  andi         a0, a1, -1988
359:              or           s9, sp, gp
                  sltiu        a6, t3, 1697
                  sltu         s11, t5, tp
                  xori         a3, tp, 1329
                  sra          t0, a7, s3
                  sltu         s1, zero, a1
                  andi         s6, s9, -386
                  beq          s4, s10, 368f
                  ori          a7, gp, -796
368:              nop
                  bltu         t4, t0, 387f
                  sll          ra, t1, a1
                  auipc        a3, 79714
                  sub          s9, ra, s11
                  sltiu        ra, sp, 1727
                  bge          a0, s11, 388f
                  srai         a5, s3, 15
                  srli         zero, t3, 4
                  slt          t0, s3, a5
                  beq          tp, s9, 394f
                  srai         t0, a3, 7
                  bge          gp, s7, 382f
                  sll          s4, a1, a3
382:              blt          s10, t1, 397f
                  xor          s11, a5, t6
                  slt          t0, s7, a4
                  sll          t5, t4, s6
                  bne          gp, a5, 405f
387:              slli         tp, t5, 15
388:              slli         s9, t4, 13
                  ori          t4, s6, 367
                  sub          sp, a0, a3
                  sltiu        s8, t3, -360
                  and          s0, a4, s5
                  and          s7, t5, s0
394:              lui          s10, 106267
                  ori          s9, ra, -884
                  slt          a6, zero, s1
397:              beq          s10, a0, 402f
                  auipc        zero, 769711
                  bgeu         ra, s0, 405f
                  bltu         t4, sp, 412f
                  addi         a4, t0, -1202
402:              blt          s9, s1, 406f
                  or           zero, ra, t4
                  bge          t5, a2, 423f
405:              sll          s5, s8, s4
406:              blt          gp, t4, 425f
                  bgeu         t2, t3, 420f
                  and          t5, t4, zero
                  sub          a1, s7, a1
                  srli         t3, a5, 22
                  blt          s0, sp, 425f
412:              addi         ra, s7, -1410
                  sub          s9, s0, s10
                  srli         zero, s0, 2
                  sra          a7, s3, s7
                  sub          t4, s11, sp
                  bne          t4, a1, 431f
                  add          sp, t5, a2
                  srli         gp, s8, 9
420:              srli         s5, a6, 31
                  bge          s5, s6, 427f
                  slli         tp, ra, 29
423:              bgeu         t6, s7, 426f
                  nop
425:              ori          s9, tp, 605
426:              or           a1, s11, a1
427:              slt          s2, s11, gp
                  srli         a3, s10, 5
                  sub          tp, t5, s11
                  sll          a5, s1, a1
431:              slti         a7, a3, -1563
                  sltiu        s8, gp, -834
                  blt          t0, s4, 451f
                  xori         a4, a6, -1386
                  sra          ra, a4, ra
                  bge          a1, sp, 450f
                  xori         a0, s10, -599
                  sub          s5, s9, s4
                  add          s1, s7, a1
                  sll          s4, s11, a2
                  beq          t6, t2, 451f
                  andi         s2, s8, 2039
                  srli         a6, gp, 31
                  bge          s6, t1, 464f
                  xori         s9, t1, -411
                  addi         a4, s4, -1809
                  srai         sp, a3, 7
                  andi         a4, a5, 234
                  blt          a6, s3, 459f
450:              andi         sp, t1, 477
451:              auipc        a4, 784210
                  or           s2, s11, a5
                  bne          s9, t1, 460f
                  sra          s0, s6, zero
                  and          ra, s11, s6
                  slt          tp, a6, ra
                  sltu         gp, s3, zero
                  srl          t4, s5, tp
459:              andi         s5, a0, 1398
460:              addi         s10, t1, -1549
                  sll          gp, t1, s3
                  bne          t4, t4, 463f
463:              nop
464:              bltu         t2, zero, 484f
                  xor          s9, s5, t2
                  ori          t0, a4, 618
                  slli         t1, ra, 3
                  sltiu        t4, s7, 294
                  andi         ra, s4, 813
                  or           t3, t1, a0
                  beq          s1, t0, 474f
                  sub          t4, tp, a0
                  lui          t2, 564143
474:              bgeu         s11, a3, 480f
                  srli         sp, s3, 5
                  srl          t0, a6, t3
                  srl          t0, s1, s2
                  auipc        s1, 866217
                  bgeu         s11, s3, 498f
480:              or           t4, t4, t2
                  ori          a4, t2, -1372
                  srl          s2, s6, t4
                  sll          s6, s3, a4
484:              bltu         a2, s4, 499f
                  xori         a5, s2, -556
                  ori          sp, a5, 1245
                  srl          t2, zero, s6
                  sub          s0, zero, ra
                  sub          s7, s8, s8
                  sra          a1, s7, s2
                  bgeu         s2, ra, 510f
                  srai         s2, gp, 14
                  sltu         t2, s9, gp
                  bne          ra, ra, 514f
                  beq          s3, a6, 508f
                  and          a5, s8, t1
                  xori         t5, zero, 296
498:              bltu         gp, t1, 512f
499:              xor          s9, s3, s7
                  xori         zero, t2, -1726
                  sra          zero, t3, a5
                  and          t0, t6, s4
                  sub          gp, s8, a7
                  sra          a0, s4, a2
                  slt          s10, zero, s11
                  ori          t0, t0, -1620
                  addi         t3, tp, -1655
508:              xor          t0, a6, a4
                  bgeu         t4, s2, 523f
510:              xori         t4, ra, 1580
                  xori         zero, s2, -685
512:              bltu         a2, gp, 528f
                  sub          s9, a6, a4
514:              xor          s8, t1, a7
                  bge          s10, a0, 533f
                  srli         a3, t2, 3
                  ori          s11, t0, 2027
                  srai         t3, a6, 16
                  lui          gp, 938326
                  beq          zero, s11, 525f
                  sub          a3, a7, t4
                  nop
523:              slt          zero, a2, t3
                  beq          t3, tp, 529f
525:              bgeu         t0, a7, 531f
                  add          s4, t4, a3
                  auipc        s1, 187434
528:              slti         a0, a6, 985
529:              auipc        a4, 767661
                  xor          a1, a1, a6
531:              ori          s8, s4, -1003
                  auipc        s6, 312588
533:              and          ra, s1, t6
                  slli         ra, s3, 13
                  and          s9, zero, t6
                  sub          a4, gp, s1
                  slti         s11, s4, -830
                  addi         s5, a2, 1255
                  slt          a6, s6, s1
                  slti         t3, s6, -1850
                  slt          t2, a7, a1
                  bge          s7, t5, 552f
                  andi         a4, a2, 399
                  sub          s10, zero, t2
                  xor          s10, s0, a4
                  nop
                  bgeu         s6, s9, 561f
                  sltu         s4, a6, t5
                  bge          a2, a7, 559f
                  slt          t4, s1, sp
                  beq          t1, a3, 552f
552:              andi         s2, zero, -253
                  lui          t0, 162421
                  sltu         a3, a0, t6
                  bgeu         s0, t4, 557f
                  beq          s10, s1, 563f
557:              sra          ra, a4, a2
                  sub          ra, a5, t5
559:              add          gp, gp, a7
                  bltu         ra, s4, 579f
561:              addi         sp, gp, 182
                  addi         tp, s7, 866
563:              xori         a3, gp, -1158
                  bgeu         t3, s7, 568f
                  srai         t1, s5, 12
                  bltu         t6, a5, 584f
                  bgeu         s9, a0, 570f
568:              auipc        a5, 474957
                  slt          zero, s5, gp
570:              andi         t3, a1, -778
                  bne          s2, a5, 574f
                  sltu         t5, a7, a0
                  slt          s0, a0, t2
574:              nop
                  srl          a0, s3, t1
                  addi         t1, s5, -1745
                  add          s5, a1, s11
                  srli         s7, s1, 28
579:              and          a3, zero, t4
                  xor          s7, s6, a3
                  xor          t2, t3, t3
                  ori          s4, a1, -1616
                  sltiu        a3, t2, 212
584:              slt          t2, s2, s0
                  or           a5, t3, t3
                  bge          s3, s4, 598f
                  slt          t2, s9, s2
                  sltu         s11, s5, t6
                  or           s2, a6, s7
sub_5_4:          jal          t1, 6f
0:                jal          ra, 3f
1:                jal          a5, 14f
2:                jal          ra, 15f
3:                jal          ra, 7f
4:                jal          a1, 8f
5:                jal          ra, 1b
6:                jal          ra, 5b
7:                jal          t1, 4b
8:                jal          t1, 9f
9:                jal          ra, 12f
10:               jal          a7, 2b
11:               jal          t1, 0b
12:               jal          gp, 10b
13:               jal          t1, 11b
14:               jal          ra, 13b
15:               sra          t2, t0, s8
                  or           a5, s0, a0
                  addi         a3, t2, 2010
                  lui          a3, 524170
                  sll          s4, t1, a6
                  bge          t4, s9, 608f
                  blt          s0, a4, 597f
                  xor          a5, t3, sp
597:              bne          s3, t2, 608f
598:              bltu         a5, ra, 612f
                  srl          t0, s7, a1
                  and          sp, sp, s11
                  beq          s1, a7, 620f
                  xori         a4, a0, -1353
                  ori          a1, s3, -1480
                  bne          t2, t2, 609f
                  srl          tp, gp, s9
                  xor          tp, s10, gp
                  slli         s10, a5, 18
608:              and          t1, t4, a5
609:              ori          t1, a2, 1067
                  bge          s5, a1, 620f
                  srl          t3, a1, s1
612:              bge          t2, s4, 622f
                  srli         t5, t1, 1
                  xori         gp, s2, -201
                  sra          s11, a2, s9
                  sltiu        t5, t5, -1790
                  srai         t4, t4, 28
                  xor          t4, t4, a5
                  bgeu         a1, a3, 639f
620:              slli         a6, s8, 24
                  or           a7, zero, a2
622:              sll          s9, t0, a4
                  auipc        t0, 940365
                  bne          t5, s2, 642f
                  bltu         t1, ra, 629f
                  srl          s8, s3, a3
                  andi         s8, s4, 1090
                  slti         s10, s0, -1975
629:              bltu         t3, zero, 635f
                  andi         s10, a1, -298
                  addi         gp, s5, 1681
                  lui          s8, 319164
                  nop
                  slli         t0, a0, 22
635:              slti         s8, s1, 2
                  xor          s4, sp, s11
                  or           a0, s4, a6
                  nop
639:              nop
                  sll          t3, s2, t3
                  sltu         t2, a5, s1
642:              add          a3, t0, s4
                  andi         a3, sp, -1711
                  andi         t1, s11, -1777
                  or           a0, s8, a0
                  srai         sp, s0, 1
                  andi         s1, s0, 1488
                  srl          t5, ra, s6
                  bne          t4, a7, 652f
                  beq          a1, a2, 663f
                  nop
652:              srai         a0, a3, 25
                  bne          gp, a6, 671f
                  add          a5, tp, s1
                  sltiu        t2, s5, 1306
                  slli         t4, s6, 25
                  bge          zero, s8, 660f
                  or           a3, s8, s3
                  slli         s5, a3, 10
660:              slti         s7, sp, 399
                  addi         a7, a7, 331
                  andi         a3, s0, -2042
663:              nop
                  andi         s1, zero, -939
                  add          s1, t4, t1
                  bne          s2, t4, 678f
                  slli         s5, t6, 13
                  slti         ra, s8, -212
                  and          a0, s4, a1
                  sltiu        s1, t1, -392
671:              sub          s6, a5, a5
                  sltiu        a6, s1, 1735
                  or           gp, t1, t5
                  add          a7, t1, t6
                  or           s9, s10, sp
                  blt          s10, a3, 690f
                  srl          s7, tp, s11
678:              bgeu         s10, s1, 683f
                  srai         t2, t6, 19
                  slt          zero, s1, s7
                  slti         s7, s10, 2016
                  bltu         s11, t4, 689f
683:              beq          s4, t1, 702f
                  sll          s1, a0, a5
                  slti         a7, a6, 708
                  ori          a6, t0, 1895
                  nop
                  xori         s10, tp, -469
689:              auipc        a7, 575984
690:              sra          s9, a0, a3
                  slli         tp, s1, 19
                  sltiu        tp, sp, -427
                  nop
                  addi         t1, a7, -933
                  ori          s4, s6, -686
                  bne          s5, a7, 716f
                  slt          a7, ra, a6
                  ori          ra, tp, 850
                  bltu         t2, a4, 714f
                  addi         a6, a2, 983
                  xori         t0, s6, 63
702:              nop
                  srai         a1, s0, 11
                  xor          t4, sp, s8
                  bge          tp, s0, 719f
                  bge          a4, s4, 722f
                  nop
                  bgeu         s0, t0, 722f
                  and          s6, s3, a4
                  sltu         t2, s9, s3
                  slti         sp, a3, -1891
                  add          a4, a0, s9
                  srai         a7, s6, 14
714:              sra          a3, a5, t2
                  xor          a0, ra, a1
716:              slli         s4, tp, 20
                  slt          a0, s3, tp
sub_5_15:         jal          t1, 6f
0:                jal          a5, 8f
1:                jal          tp, 9f
2:                jal          t1, 22f
3:                jal          ra, 0b
4:                jal          sp, 1b
5:                jal          s0, 20f
6:                jal          a7, 25f
7:                jal          ra, 10f
8:                jal          ra, 11f
9:                jal          ra, 17f
10:               jal          ra, 27f
11:               jal          ra, 19f
12:               jal          gp, 7b
13:               jal          s11, 2b
14:               jal          ra, 4b
15:               jal          ra, 18f
16:               jal          t1, 23f
17:               jal          ra, 3b
18:               jal          t1, 28f
19:               jal          t1, 13b
20:               jal          ra, 15b
21:               jal          t1, 14b
22:               jal          ra, 12b
23:               jal          a7, 29f
24:               jal          ra, 5b
25:               jal          ra, 26f
26:               jal          t0, 21b
27:               jal          t1, 24b
28:               jal          ra, 16b
29:               xor          a3, a7, t0
                  sll          t5, s1, s7
719:              or           s2, t5, t4
                  auipc        s11, 102750
                  sltu         a7, s7, s3
722:              srli         s2, t6, 20
                  sub          s6, a5, t5
                  xor          s5, s0, t2
                  xori         tp, s7, -1202
                  blt          t3, s2, 728f
                  add          s0, s0, gp
728:              slli         s5, tp, 8
                  xori         sp, tp, -1433
                  slti         t0, t3, 552
                  or           s0, a7, s11
                  sltu         s5, s5, t6
                  slli         t3, s5, 28
                  bne          t5, tp, 736f
                  auipc        t2, 13831
736:              srai         a7, zero, 5
                  srai         t1, ra, 16
                  sltiu        t2, s11, 1063
                  sub          zero, s1, t0
                  sra          s2, a3, a3
                  xori         a3, t2, 1225
                  sltu         a7, s6, tp
                  slli         s5, s1, 25
                  andi         s1, a2, 909
                  andi         t3, t6, 1234
                  blt          a5, sp, 747f
747:              ori          t5, s8, -1291
                  add          zero, a1, s7
                  andi         a6, s9, 1637
                  auipc        t0, 342845
                  sll          t3, s3, a6
                  and          s6, sp, s8
                  blt          a3, s11, 764f
                  add          s1, t1, s11
                  bgeu         s4, tp, 761f
                  bne          t2, t6, 759f
                  slli         s1, sp, 24
                  ori          a3, s3, -652
759:              beq          s8, s9, 778f
                  addi         t5, s11, 2025
761:              bltu         s10, s7, 771f
                  andi         t1, t4, -851
                  sra          t3, s6, s5
764:              srli         t0, ra, 8
                  sltiu        zero, s0, -258
                  auipc        s2, 836157
                  srl          s9, t2, s0
                  sub          s10, t5, s10
                  slt          s9, s10, s2
                  slt          t1, t0, s4
771:              bltu         zero, gp, 776f
sub_5_14:         jal          t1, 13f
0:                jal          t4, 24f
1:                jal          t1, 22f
2:                jal          t1, 26f
3:                jal          ra, 2b
4:                jal          ra, 25f
5:                jal          ra, 29f
6:                jal          t0, 16f
7:                jal          tp, 10f
8:                jal          ra, 5b
9:                jal          a0, 28f
10:               jal          gp, 21f
11:               jal          t1, 1b
12:               jal          ra, 8b
13:               jal          s11, 18f
14:               jal          s0, 0b
15:               jal          ra, 3b
16:               jal          ra, 11b
17:               jal          t2, 4b
18:               jal          t5, 27f
19:               jal          ra, 12b
20:               jal          ra, 6b
21:               jal          ra, 17b
22:               jal          t1, 19b
23:               jal          ra, 15b
24:               jal          s1, 9b
25:               jal          t1, 20b
26:               jal          s6, 14b
27:               jal          ra, 23b
28:               jal          a0, 7b
29:               addi         a6, a6, 629
                  xori         a7, t0, 739
                  and          t2, s1, gp
                  bne          a2, s7, 784f
                  bgeu         a7, s1, 788f
776:              blt          a4, tp, 778f
                  slli         s7, tp, 3
778:              srli         t5, t3, 17
                  bgeu         a1, s11, 793f
                  sra          s10, t3, s3
                  slli         s11, t3, 9
                  and          s11, s3, s4
                  or           t0, s10, s5
784:              add          a3, t5, a5
                  xor          ra, a5, a0
                  sra          a1, t4, s10
                  andi         s0, tp, 1280
788:              ori          s11, a5, -1114
                  ori          s7, a3, -1903
                  blt          s11, s0, 793f
                  blt          t6, a2, 811f
                  slt          s5, t5, a6
793:              lui          s1, 807198
                  addi         s6, sp, -1626
                  slt          s1, s2, s6
                  addi         t1, t4, 1920
                  ori          a0, s7, -227
                  sltu         t2, t3, t1
                  bne          t0, s9, 818f
                  bge          s5, tp, 819f
                  or           a0, s11, s5
                  xor          gp, t2, s11
                  slt          s10, a1, s10
                  sltu         a6, s3, tp
                  beq          t1, a7, 819f
                  bgeu         s0, s4, 813f
                  blt          t5, s9, 825f
                  bge          zero, t6, 822f
                  and          sp, s4, s7
                  andi         t0, t2, 1102
sub_5_20:         jal          t1, 14f
0:                jal          ra, 3f
1:                jal          t1, 12f
2:                jal          t2, 9f
3:                jal          ra, 5f
4:                jal          a0, 2b
5:                jal          s9, 10f
6:                jal          ra, 19f
7:                jal          s7, 0b
8:                jal          t1, 16f
9:                jal          ra, 8b
10:               jal          t1, 17f
11:               jal          t1, 18f
12:               jal          ra, 4b
13:               jal          ra, 15f
14:               jal          ra, 7b
15:               jal          ra, 1b
16:               jal          t0, 11b
17:               jal          ra, 6b
18:               jal          t3, 20f
19:               jal          ra, 13b
20:               jal          t1, 21f
21:               andi         a6, zero, 1422
811:              nop
                  sra          gp, a7, s5
813:              srai         a0, a3, 15
                  sll          s6, a5, t4
                  bltu         s2, s5, 819f
                  and          zero, s0, ra
                  addi         a0, gp, 1550
818:              add          s2, s7, t2
819:              sll          tp, s2, t5
                  srl          s8, t6, s5
                  bne          s5, s2, 826f
822:              blt          sp, a7, 823f
823:              or           t4, s11, t1
                  bgeu         gp, t5, 827f
825:              addi         a4, s2, 193
826:              srli         gp, s11, 18
827:              bne          sp, t3, 838f
                  xori         tp, t1, 313
                  sltiu        a3, s11, -1330
                  and          tp, t1, zero
                  bge          t3, a6, 851f
                  slti         t2, s1, 1391
                  add          a0, gp, s2
                  nop
                  or           tp, gp, a2
                  ori          s0, s2, 1140
                  bltu         s5, a4, 839f
838:              sub          t4, t5, s6
839:              xor          s5, s5, a7
                  xor          s7, t1, s0
                  blt          s7, s3, 857f
                  xor          s7, s8, s3
                  srl          s8, s7, tp
                  ori          a3, s0, -1856
                  add          a5, s7, s7
                  or           s6, sp, s7
                  add          s11, s6, t4
                  slt          s6, zero, a3
                  bne          a0, t3, 852f
                  nop
851:              sub          s2, t2, t4
852:              beq          t0, tp, 866f
                  add          t5, s3, s3
                  srli         s5, t5, 6
                  bltu         s3, ra, 867f
                  or           s2, a7, t0
857:              beq          gp, zero, 863f
                  blt          a6, t6, 876f
                  blt          gp, s2, 865f
                  beq          a2, a4, 875f
                  lui          s1, 881202
                  slti         s0, s11, 1436
863:              or           a6, s8, t2
                  add          a4, tp, t2
865:              srai         t5, a7, 16
866:              bgeu         s3, ra, 885f
867:              beq          s1, a0, 870f
                  bgeu         s10, s4, 882f
                  andi         s1, a5, -1147
870:              andi         t3, s3, -1426
                  sra          s0, s11, s1
                  or           s11, a4, t3
                  addi         zero, a4, 1070
                  beq          s9, t3, 876f
875:              bge          a7, s4, 878f
876:              slt          s11, zero, a6
                  bgeu         t0, s3, 888f
878:              lui          s0, 164127
                  bltu         a0, a6, 893f
                  xor          a5, a1, t5
                  andi         a6, t4, -566
882:              slt          s7, zero, t4
                  sra          a6, t2, a0
                  sra          s9, s9, s4
885:              nop
                  blt          zero, a4, 905f
                  ori          s10, a2, -1490
888:              slti         s10, a6, -1752
                  xor          s9, s7, s3
                  bge          s5, t0, 895f
                  sltiu        s11, a0, 1862
                  bltu         t3, s3, 898f
893:              or           tp, t6, s4
                  bltu         zero, t3, 897f
895:              slli         s1, s10, 5
                  xor          t5, a7, s5
897:              sub          tp, t6, s11
898:              beq          s1, sp, 913f
sub_5_5:          jal          t1, 12f
0:                jal          ra, 2f
1:                jal          ra, 16f
2:                jal          tp, 14f
3:                jal          t1, 0b
4:                jal          t1, 5f
5:                jal          sp, 6f
6:                jal          ra, 1b
7:                jal          t1, 10f
8:                jal          s6, 15f
9:                jal          ra, 13f
10:               jal          a3, 8b
11:               jal          ra, 17f
12:               jal          ra, 7b
13:               jal          ra, 18f
14:               jal          ra, 11b
15:               jal          ra, 4b
16:               jal          ra, 3b
17:               jal          s7, 9b
18:               srli         s2, a6, 29
                  srai         s1, s3, 28
                  lui          a7, 711506
                  srli         s2, a0, 23
                  add          s7, a3, a7
                  bgeu         a3, sp, 909f
                  auipc        a1, 404017
905:              auipc        s1, 272533
                  slli         s5, tp, 26
                  slt          gp, s10, a0
                  andi         s0, t4, -738
909:              sltu         s1, a4, t1
                  bgeu         sp, ra, 926f
                  bne          a7, a1, 912f
912:              bgeu         s9, zero, 931f
913:              auipc        s8, 68494
                  lui          t1, 122661
                  addi         t1, a0, -691
                  add          s11, s6, a7
                  slli         s0, s3, 22
                  bgeu         t1, s1, 923f
                  xori         a4, a6, -1051
                  auipc        s2, 399489
                  andi         zero, s10, -1612
                  bne          a4, zero, 926f
923:              beq          a3, t5, 933f
                  srai         t0, s11, 22
                  xori         ra, s8, 369
926:              nop
                  andi         sp, s3, -383
                  srai         t4, t0, 12
                  srli         t5, s10, 9
                  or           t2, a0, a1
931:              bge          t2, t3, 951f
                  sltiu        s0, a7, -1818
933:              srli         s4, s1, 25
                  bne          sp, s4, 947f
                  srai         s10, s10, 16
                  or           a7, sp, ra
                  sltu         tp, s11, t0
                  auipc        t1, 181445
                  sub          t4, tp, s1
                  bltu         ra, a1, 942f
                  ori          t2, a1, 1822
942:              addi         t2, s10, -788
                  lui          sp, 644235
                  addi         t1, a7, 1455
                  lui          a1, 775834
                  nop
947:              xori         t0, s3, -126
                  andi         gp, s2, 1927
                  bgeu         t5, s5, 956f
                  slli         zero, sp, 27
951:              srli         s7, t6, 16
                  nop
                  or           s7, t2, s5
                  sub          s6, t3, t2
                  bltu         a3, sp, 975f
956:              or           s11, s1, a0
                  lui          zero, 131171
                  bne          tp, a0, 977f
                  beq          ra, tp, 971f
                  slli         tp, a1, 29
                  and          a1, t0, gp
                  auipc        zero, 795756
                  slti         s9, t0, -1191
                  xori         a4, s11, -986
                  xori         t3, gp, 432
                  lui          a0, 910789
                  bgeu         t6, s10, 985f
                  addi         s7, t6, 994
                  srl          a4, sp, zero
                  slt          gp, gp, zero
971:              sll          ra, ra, t0
                  slli         t2, a3, 6
                  slt          a4, ra, gp
                  sub          t1, s5, s4
975:              slti         zero, s7, -581
                  sltu         s2, s11, t4
977:              and          s5, a6, t4
                  nop
                  andi         ra, a7, 1111
                  xori         s7, s11, 1695
                  bne          s7, s11, 999f
                  srai         s2, s3, 6
                  addi         gp, gp, 1432
                  sltu         a0, s2, s3
985:              bne          s3, a0, 999f
                  lui          sp, 438156
                  ori          s8, t0, -142
                  srl          a5, s7, t6
                  sub          ra, s0, s2
                  sub          tp, t4, a0
                  xori         t1, a7, 226
                  bge          s9, a5, 1002f
                  sltu         a4, s7, s3
                  lui          s0, 1008308
                  ori          a4, sp, -218
                  addi         zero, a4, -394
                  beq          a0, s9, 1011f
                  lui          t5, 1047992
999:              sltu         gp, t4, t5
                  srai         s6, s3, 28
                  lui          t0, 497955
1002:             bne          zero, a3, 1006f
                  sra          t2, a3, a1
                  addi         s7, ra, 1453
                  xori         s5, zero, -923
1006:             nop
                  srli         t2, zero, 7
                  bge          a0, s4, 1014f
                  slti         sp, a1, -583
                  and          a5, s0, tp
1011:             srai         t5, s2, 24
                  or           t2, t3, tp
                  xor          t1, s6, a5
1014:             sra          a1, s2, s8
                  bge          a1, s10, 1029f
                  add          s5, a4, t0
                  xor          s1, zero, s8
                  bge          s10, s8, 1020f
                  slti         sp, a3, -442
1020:             addi         gp, t6, -1246
                  bgeu         t4, s0, 1041f
                  nop
                  blt          t4, a7, 1025f
                  ori          s0, s9, 452
1025:             slt          a6, ra, s5
                  bge          a5, a3, 1036f
                  and          t1, a0, t1
                  srl          s5, ra, s7
1029:             xor          t3, s0, t3
                  nop
                  bge          t1, t4, 1042f
                  srli         t4, s0, 7
                  sub          gp, s9, t4
                  auipc        ra, 276772
                  xor          tp, s5, s8
1036:             slli         a3, a4, 8
                  srl          ra, t0, t5
                  bne          s5, s4, 1052f
                  blt          s6, s10, 1058f
                  bne          s10, ra, 1046f
1041:             and          s0, t2, a3
1042:             sub          s1, s10, gp
                  sub          s0, s9, a6
                  xor          a0, s5, s11
                  bge          s7, s2, 1050f
1046:             bne          t5, s4, 1060f
                  beq          t3, tp, 1063f
                  bltu         tp, t2, 1049f
1049:             add          s0, s6, s11
1050:             sll          t4, t5, t0
                  bgeu         zero, s0, 1056f
1052:             bgeu         a6, t2, 1070f
                  ori          s9, s11, -906
                  beq          t3, t6, 1057f
                  sltu         s5, t1, s4
1056:             auipc        a3, 87484
1057:             slli         s9, t0, 30
1058:             sltu         a0, s6, s2
                  bge          s11, s9, 1077f
1060:             srl          a3, s5, a0
                  xori         a5, s6, -1934
                  srl          sp, t1, s0
1063:             sll          s2, a7, gp
                  lui          s7, 626620
                  lui          sp, 998016
                  slt          sp, t0, ra
                  beq          s5, sp, 1079f
                  sltu         s10, a7, s11
                  addi         s2, s3, 2002
1070:             srl          s0, s2, a3
                  srai         a7, t6, 8
                  lui          t4, 487200
                  auipc        t2, 292277
                  srl          s7, s3, s5
                  and          s7, s4, t2
                  blt          a2, a6, 1083f
1077:             auipc        a4, 326899
                  andi         t5, s9, 1890
1079:             bne          tp, s7, 1082f
                  add          s7, zero, s11
                  slli         s11, a6, 7
1082:             lui          s1, 235777
1083:             sub          ra, gp, s7
                  xori         s11, tp, -1297
                  sra          sp, zero, t1
                  slt          a0, s7, sp
                  slti         t5, t2, -1221
                  bge          a3, s6, 1107f
                  srl          t5, a2, a2
                  addi         s6, s2, -1775
                  beq          s5, ra, 1111f
                  slti         s1, a2, -1076
                  bgeu         a5, a2, 1107f
                  sll          ra, t4, s11
                  bne          s7, a5, 1108f
                  slli         s0, zero, 5
                  sll          t1, t5, t0
                  and          s10, t5, s3
                  xori         gp, a2, -1698
                  beq          t5, a2, 1110f
                  sltu         sp, s1, s9
                  sll          t4, sp, a0
                  bgeu         a0, a6, 1122f
                  beq          t4, s4, 1107f
                  bge          a4, s3, 1120f
                  addi         s4, s4, -1214
1107:             xori         s1, a3, -365
1108:             slli         s9, t1, 21
                  sltiu        a0, s1, -378
1110:             xor          a4, ra, s9
1111:             or           t1, t4, t1
                  add          a3, t3, tp
                  srl          t0, t5, a3
                  sub          a5, t2, zero
                  lui          ra, 493636
                  slti         a6, s10, 1079
                  srai         t5, s7, 28
                  addi         t4, s5, -1078
                  bltu         s10, tp, 1124f
1120:             and          s9, s2, s7
                  add          s10, s2, t3
1122:             add          ra, a7, s9
                  srl          s8, a0, t2
1124:             sltu         t0, ra, s4
                  auipc        a7, 593270
                  slli         s9, t3, 23
                  andi         t3, t5, 1662
                  sra          a6, s1, s6
                  slti         t0, s10, 637
                  add          s8, t1, a4
                  bge          s8, t0, 1143f
                  add          s2, a5, t3
                  slt          s9, tp, a5
                  andi         s0, t5, 106
                  bgeu         a0, t4, 1153f
                  slt          a4, s8, a0
                  or           tp, tp, t1
                  nop
                  lui          s7, 587742
                  bne          a3, sp, 1141f
1141:             add          t5, s2, s8
                  bltu         t5, a7, 1155f
1143:             nop
                  sub          a6, s6, t0
                  bgeu         a4, t5, 1155f
                  add          t4, t6, zero
                  andi         t1, a6, -79
                  bgeu         gp, a6, 1154f
                  addi         sp, a2, 2011
                  nop
                  srai         s11, ra, 20
                  addi         t2, t3, -1607
1153:             bne          s5, a0, 1169f
1154:             sll          t2, a1, s5
1155:             add          gp, t0, a6
                  bge          s3, a0, 1161f
                  sub          s8, gp, s10
                  sltu         s9, s3, s10
                  sltu         a0, s2, s4
                  add          t1, t6, a6
1161:             blt          s1, a2, 1176f
                  xor          t3, t6, s1
                  beq          a5, a6, 1166f
                  slti         a4, t3, 575
                  beq          t6, s8, 1185f
1166:             lui          a3, 732161
                  bge          s9, s8, 1181f
                  and          s11, a5, s1
1169:             bgeu         t6, a1, 1173f
                  andi         s5, tp, 1911
                  bge          s9, s6, 1174f
                  auipc        t3, 793325
1173:             sltiu        s7, a3, 101
1174:             slt          gp, s3, t0
                  blt          ra, gp, 1189f
1176:             slt          t1, a7, s3
                  sub          s8, s4, ra
                  bge          s3, s9, 1196f
                  add          a0, s4, t3
                  bne          t6, s0, 1190f
1181:             auipc        s11, 37726
                  lui          a5, 576886
                  srli         t2, s0, 19
                  slt          a1, a0, t0
1185:             and          s0, ra, s4
                  auipc        a1, 736702
                  bgeu         s4, t5, 1194f
                  or           sp, t4, t1
1189:             srli         t0, s4, 28
1190:             sra          s10, s11, gp
                  addi         s11, tp, -1966
                  bltu         a2, t3, 1196f
                  ori          t3, s6, 24
1194:             sub          t4, t4, a3
                  beq          ra, a0, 1196f
1196:             addi         t3, s9, -814
                  sltu         s9, gp, t3
                  lw           t1, 4(s3)
                  sra          t5, s5, s3
                  lui          s10, 624402
                  addi         s3, s3, 32
                  or           s10, s4, a7
                  and          t2, s9, t2
                  slt          s8, s6, a1
1738:             addi x20, x6, 1
1738:             jalr x20, x20, 0
sub_4:            xor          s2, a1, a2
                  bgeu         zero, a2, sub_4_stack_p
                  srl          a1, s5, s0
                  slti         a6, t5, 1871
                  sra          s1, s1, s3
sub_4_stack_p:    addi         s3, s3, -24
                  sw           t1, 4(s3)
                  addi         s2, s7, 256
                  sll          s10, s6, t4
                  ori          t1, a0, 520
                  and          s6, s3, s11
                  xor          s2, a0, t4
                  bgeu         t5, t5, 10f
                  sra          s7, s10, zero
                  beq          sp, t5, 11f
                  ori          a7, s0, 734
                  srai         t0, zero, 24
                  addi         s2, s1, -1520
10:               bne          t5, tp, 18f
11:               srai         s8, s2, 26
                  slt          a4, s2, s2
                  slti         s4, a5, -401
                  beq          t2, s11, 18f
                  ori          ra, a6, -1659
                  sll          t2, sp, s3
                  slli         tp, a5, 8
18:               ori          sp, s3, -1570
                  addi         a6, a0, 913
                  auipc        s6, 257870
                  lw           t1, 4(s3)
                  xori         s8, gp, -113
                  auipc        tp, 869632
                  andi         tp, t6, -824
                  xori         t0, s2, -310
                  sll          t3, s10, a2
                  xor          a3, t1, a7
                  and          zero, a1, a5
                  addi         s3, s3, 24
                  ori          t4, zero, 1524
39:               addi x2, x6, 0
39:               jalr x2, x2, 0
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
                  add x12, x19, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x6, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x6, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x6, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x6, x24, ecall_handler
                  li x24, 0x1
                  beq x6, x24, instr_fault_handler
                  li x24, 0x5
                  beq x6, x24, load_fault_handler
                  li x24, 0x7
                  beq x6, x24, store_fault_handler
                  li x24, 0xc
                  beq x6, x24, pt_fault_handler
                  li x24, 0xd
                  beq x6, x24, pt_fault_handler
                  li x24, 0xf
                  beq x6, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x19, x12, zero
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
                  add x19, x12, zero
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
                  add x19, x12, zero
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x19, x12, zero
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x19, x12, zero
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
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x19, x12, zero
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
