.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
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
                  li x0, 0x8
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xbd00228e
                  li x4, 0xceeefe21
                  li x5, 0xf368c474
                  li x6, 0x6
                  li x7, 0x0
                  li x8, 0xf5add91c
                  li x9, 0xcbddc5db
                  li x10, 0x7e4cc965
                  li x11, 0x65012fab
                  li x12, 0x8304708f
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0xf573b7aa
                  li x16, 0x80000000
                  li x18, 0x3705ec99
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xfca01ae7
                  li x23, 0x9
                  li x24, 0xfe687ba4
                  li x25, 0x80000000
                  li x27, 0x105472eb
                  li x28, 0xff12151b
                  li x29, 0xafeb08ad
                  li x30, 0x80000000
                  li x31, 0x8
                  la x26, user_stack_end
main:             nop
                  la           s2, sub_1
                  slti         s1, s4, 1126
                  andi         s7, zero, -868
                  add          t6, a0, s6
                  add          s3, s6, s3
                  sltu         s7, t0, t5
                  slli         s4, a1, 31
                  andi         t2, s5, -1261
                  addi         s2, s2, 849
                  and          t0, ra, t3
                  sll          gp, a6, t0
main_j2:          jalr         t1, s2, -848 #jump main -> sub_1
                  auipc        a0, 591895
                  sltu         a6, s0, a7
                  la           t1, sub_1
                  nop
                  nop
                  sub          a4, zero, t1
                  addi         t1, t1, 368
                  sra          s0, t5, a5
                  sll          t3, t3, s1
main_j3:          jalr         t1, t1, -367 #jump main -> sub_1
main_0:           jal          t1, 7f
0:                jal          ra, 11f
1:                jal          sp, 3f
2:                jal          t6, 8f
3:                jal          ra, 13f
4:                jal          t1, 2b
5:                jal          s2, 10f
6:                jal          ra, 14f
7:                jal          t1, 5b
8:                jal          ra, 0b
9:                jal          ra, 12f
10:               jal          sp, 4b
11:               jal          t1, 9b
12:               jal          ra, 1b
13:               jal          ra, 6b
14:               sub          s5, zero, s11
                  sltiu        tp, a2, -749
                  slti         s1, t6, -141
                  sra          t6, gp, s10
                  srli         t2, s5, 31
                  or           a6, zero, t1
                  xor          s11, a5, a3
                  sub          a3, ra, a6
                  add          a1, s4, tp
                  bne          t1, s3, 12f
                  ori          s3, a6, 401
                  ori          s9, a4, 875
                  bltu         tp, sp, 29f
12:               slti         s7, a7, 920
                  auipc        t6, 16429
                  slt          t4, s7, gp
                  xori         t5, a2, -1291
                  xor          s11, s7, sp
                  andi         t4, s5, -207
                  addi         t5, a5, 448
                  ori          gp, s3, 363
                  slt          t3, s1, s4
                  xor          s6, s10, a7
                  auipc        t4, 140077
                  xor          s7, a1, sp
                  sub          t2, t2, s0
                  xori         t2, a0, 349
                  or           s3, s8, t6
                  sltu         a4, a0, t5
                  bne          s1, s5, 32f
29:               slli         s3, s7, 13
                  slti         gp, t1, -790
                  la           s6, sub_2
                  slli         t5, sp, 2
                  sra          s7, s11, gp
                  slti         a2, tp, 1831
                  addi         s6, s6, 567
                  auipc        s4, 653694
main_j1:          jalr         t1, s6, -566 #jump main -> sub_2
                  nop
                  blt          a7, a2, 36f
32:               sltiu        s0, a4, 1620
                  slli         t6, s10, 13
                  and          t3, sp, s10
                  bne          t2, s10, 47f
36:               sub          zero, t5, t4
                  sltu         tp, s3, s8
                  auipc        s5, 673232
                  bgeu         a4, t2, 41f
                  bgeu         s0, t0, 59f
41:               addi         s4, a7, -1867
                  srl          a3, sp, t1
                  slti         s4, a3, -1057
                  bne          sp, s3, 52f
                  bgeu         ra, t2, 60f
                  and          t5, t3, s6
47:               slli         s4, s8, 0
                  slt          t6, s9, gp
                  blt          s3, s5, 61f
                  addi         t3, tp, -868
                  bltu         s4, t4, 70f
52:               addi         ra, s10, 1590
                  beq          tp, s9, 62f
                  srl          s2, s8, s9
                  addi         zero, s1, 1718
                  bltu         a4, t5, 59f
                  slt          tp, s1, s1
                  srai         a2, a6, 5
59:               bltu         s3, tp, 75f
60:               add          s3, t4, sp
61:               xor          a4, a6, s1
62:               auipc        t0, 511340
                  and          gp, a5, t0
                  slti         sp, s5, 690
                  bgeu         a0, t1, 75f
                  sltu         zero, s5, a0
                  srl          s1, s2, a5
                  addi         ra, s11, -74
                  ori          t4, sp, 1085
70:               srli         sp, gp, 10
                  or           t3, s4, t6
                  nop
                  bge          s6, s3, 75f
                  addi         t1, s5, -1255
75:               xor          a0, s5, s3
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltu         s7, s4, s4
                  xor          gp, s1, s7
                  nop
                  addi         s10, s10, -52
                  slt          s4, a5, s2
                  xor          s9, t0, a7
                  sltu         s4, s4, a5
                  sll          a6, a3, a3
                  sltiu        s7, a6, -1725
                  sw           t1, 4(s10)
                  srl          a1, t2, s8
                  auipc        tp, 224998
                  xori         s11, s7, 1408
                  sltu         s0, ra, t3
                  lui          a6, 139777
                  slt          a3, s4, ra
                  sub          a4, t2, a1
                  addi         t0, sp, -686
                  srli         t6, gp, 28
                  srli         gp, a7, 12
                  la           t4, sub_3
                  srl          s8, s6, t2
                  addi         t4, t4, 913
                  andi         a4, a5, -1398
sub_2_j5:         jalr         t1, t4, -913 #jump sub_2 -> sub_3
sub_2_1:          jal          t1, 15f
0:                jal          t1, 5f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          s6, 16f
4:                jal          ra, 9f
5:                jal          ra, 11f
6:                jal          t0, 18f
7:                jal          t1, 13f
8:                jal          s8, 10f
9:                jal          s9, 7b
10:               jal          ra, 4b
11:               jal          sp, 14f
12:               jal          ra, 2b
13:               jal          t1, 12b
14:               jal          ra, 8b
15:               jal          t1, 17f
16:               jal          t3, 1b
17:               jal          ra, 3b
18:               srai         a6, a2, 25
sub_2_0:          jal          t1, 8f
0:                jal          s7, 27f
1:                jal          ra, 5f
2:                jal          t6, 17f
3:                jal          t1, 20f
4:                jal          ra, 30f
5:                jal          ra, 26f
6:                jal          ra, 16f
7:                jal          t1, 19f
8:                jal          ra, 15f
9:                jal          t5, 18f
10:               jal          a3, 6b
11:               jal          ra, 28f
12:               jal          s4, 4b
13:               jal          a3, 24f
14:               jal          ra, 11b
15:               jal          ra, 25f
16:               jal          t6, 14b
17:               jal          ra, 21f
18:               jal          t1, 29f
19:               jal          t1, 10b
20:               jal          ra, 22f
21:               jal          ra, 0b
22:               jal          ra, 7b
23:               jal          ra, 12b
24:               jal          t1, 3b
25:               jal          ra, 2b
26:               jal          ra, 9b
27:               jal          t1, 13b
28:               jal          sp, 1b
29:               jal          t1, 23b
30:               sub          t2, t5, a5
                  ori          s7, s9, -1481
                  add          t3, s6, s5
                  sltiu        a3, s5, -299
                  xori         t2, a2, -855
                  slti         tp, t6, -1701
                  xor          s0, a5, t0
                  srl          ra, a1, s3
                  xor          a6, s3, s8
                  srai         a4, t5, 5
                  addi         t2, a4, 557
                  xori         s0, t4, -536
                  bltu         t5, t6, 31f
                  bge          s3, a2, 28f
                  auipc        sp, 12980
                  nop
                  slti         a6, a1, 1119
                  srl          s5, s4, a7
                  xori         s2, s9, -978
                  srli         gp, ra, 13
                  sub          s11, t4, s4
                  slti         t4, sp, 797
                  slt          a1, s0, gp
                  sll          s6, zero, a7
                  bltu         s5, a4, 24f
24:               beq          a7, s6, 32f
                  bne          t1, t2, 45f
                  bge          s6, t5, 27f
27:               bltu         s7, a4, 46f
28:               beq          a3, tp, 42f
                  beq          a6, t6, 49f
                  bge          a3, a2, 31f
31:               beq          a4, s7, 39f
32:               andi         t4, ra, -1779
                  srai         t5, tp, 24
                  bgeu         ra, s9, 36f
                  andi         sp, s5, -994
36:               bltu         t6, t4, 56f
                  beq          a5, sp, 39f
                  beq          s7, s7, 54f
39:               srl          s4, t6, t3
                  sltiu        t0, t1, -1640
                  sltiu        t2, a7, 181
42:               blt          a4, a5, 54f
                  lui          s9, 169690
                  lui          t4, 742525
45:               sltiu        s3, a5, 1339
46:               sub          s2, a2, s8
                  xori         s0, s8, -13
                  xor          a2, sp, a4
49:               bge          s4, t2, 53f
                  srli         t3, s4, 13
                  slli         tp, a1, 7
                  addi         a0, t0, 325
53:               sltiu        s7, s9, -409
54:               blt          a6, s6, 62f
                  bgeu         s9, t3, 56f
56:               lui          s1, 571877
                  beq          a1, s8, 77f
                  blt          t5, a5, 62f
                  sltu         a6, zero, a5
                  bgeu         a3, s11, 70f
                  slli         t5, a5, 21
62:               auipc        ra, 789587
                  add          a3, s11, a3
                  bne          t5, s1, 75f
                  sltu         t3, s11, s4
                  slli         s9, s7, 6
                  sra          t1, a2, t6
                  sra          a1, s11, s0
                  slti         s9, s0, 156
70:               xor          s7, tp, t0
                  bne          sp, s5, 74f
                  and          t0, s3, s9
                  srai         a3, zero, 31
74:               xori         s4, a7, 732
75:               srl          ra, a5, t4
                  sll          s8, s11, s1
77:               beq          zero, s9, 78f
78:               sltiu        t3, s3, -1417
                  bgeu         tp, s2, 88f
                  addi         a6, s0, 1522
                  auipc        t0, 274727
                  lui          s1, 489297
                  blt          s9, s9, 84f
84:               blt          s4, t4, 92f
                  auipc        t3, 520699
                  bltu         s6, a6, 93f
                  or           s2, s9, t2
88:               add          s5, s7, t6
                  andi         sp, a1, -2033
                  bne          gp, s5, 99f
                  srli         zero, s5, 15
92:               addi         a0, t6, 1453
93:               bgeu         t5, sp, 113f
                  bgeu         a6, t4, 102f
                  or           ra, s11, s11
                  beq          s5, tp, 98f
                  srai         s8, tp, 2
98:               slti         s0, s2, -1971
99:               andi         a3, zero, 907
                  srl          s0, a6, t3
                  xor          a2, s8, a3
102:              bgeu         a0, s11, 115f
                  srl          s9, s5, t4
                  sltiu        s6, s11, -1100
                  addi         s0, a0, 661
                  srli         gp, s7, 7
                  bltu         tp, t2, 108f
108:              srl          s4, tp, t0
                  xori         t2, ra, 501
                  lui          a6, 68370
                  or           zero, s9, s2
                  andi         s5, a2, 1390
113:              slt          gp, s8, s6
                  bgeu         a2, a1, 115f
115:              sltu         a6, t2, ra
                  xori         s6, zero, -1066
                  lw           t1, 4(s10)
                  auipc        s11, 186648
                  sltu         s8, gp, tp
                  srli         s4, t3, 10
                  addi         s10, s10, 52
                  srli         t6, a5, 10
                  lui          s8, 765154
                  lui          a2, 129699
                  slti         a6, a5, -1373
                  addi         s6, a1, -1828
204:              addi x23, x6, 0
204:              jalr x23, x23, 0
sub_4:            sltu         s6, s9, s2
                  sub          t3, t5, t0
                  sltu         s4, s10, gp
                  sub          s9, ra, s10
                  bge          s2, s6, sub_4_stack_p
sub_4_stack_p:    addi         s10, s10, -8
                  sltiu        a6, sp, 865
                  sra          gp, s6, s3
                  andi         a0, a3, 1520
                  nop
                  sw           t1, 4(s10)
                  sub          s9, a4, tp
sub_4_2:          jal          t1, 13f
0:                jal          ra, 27f
1:                jal          ra, 29f
2:                jal          t6, 6f
3:                jal          ra, 25f
4:                jal          ra, 0b
5:                jal          t1, 21f
6:                jal          ra, 11f
7:                jal          s4, 4b
8:                jal          ra, 18f
9:                jal          ra, 2b
10:               jal          t1, 22f
11:               jal          s3, 20f
12:               jal          gp, 15f
13:               jal          t6, 9b
14:               jal          t1, 28f
15:               jal          t1, 23f
16:               jal          ra, 10b
17:               jal          s2, 5b
18:               jal          ra, 14b
19:               jal          ra, 1b
20:               jal          t6, 7b
21:               jal          ra, 19b
22:               jal          t1, 26f
23:               jal          sp, 3b
24:               jal          t1, 17b
25:               jal          ra, 30f
26:               jal          ra, 12b
27:               jal          tp, 8b
28:               jal          s9, 24b
29:               jal          t1, 16b
30:               srl          t5, a1, s4
sub_4_0:          jal          t1, 17f
0:                jal          t1, 10f
1:                jal          ra, 12f
2:                jal          a0, 14f
3:                jal          t1, 24f
4:                jal          s7, 8f
5:                jal          ra, 1b
6:                jal          ra, 11f
7:                jal          t5, 0b
8:                jal          ra, 28f
9:                jal          t1, 5b
10:               jal          t1, 2b
11:               jal          s4, 25f
12:               jal          ra, 18f
13:               jal          t1, 19f
14:               jal          ra, 15f
15:               jal          t1, 16f
16:               jal          ra, 22f
17:               jal          ra, 27f
18:               jal          t1, 13b
19:               jal          t1, 23f
20:               jal          t1, 3b
21:               jal          ra, 30f
22:               jal          t0, 29f
23:               jal          ra, 6b
24:               jal          ra, 7b
25:               jal          ra, 26f
26:               jal          s8, 4b
27:               jal          a6, 20b
28:               jal          t1, 21b
29:               jal          t1, 9b
30:               slt          ra, tp, s3
sub_4_5:          jal          t1, 7f
0:                jal          t1, 13f
1:                jal          s5, 9f
2:                jal          ra, 3f
3:                jal          t0, 12f
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          t1, 11f
7:                jal          ra, 10f
8:                jal          t1, 0b
9:                jal          t0, 6b
10:               jal          ra, 2b
11:               jal          tp, 5b
12:               jal          ra, 1b
13:               xori         t5, s7, 303
sub_4_3:          jal          t1, 2f
0:                jal          t0, 18f
1:                jal          tp, 6f
2:                jal          sp, 13f
3:                jal          s1, 19f
4:                jal          a6, 8f
5:                jal          s5, 3b
6:                jal          ra, 17f
7:                jal          s0, 12f
8:                jal          ra, 11f
9:                jal          ra, 15f
10:               jal          ra, 4b
11:               jal          ra, 9b
12:               jal          t6, 16f
13:               jal          ra, 14f
14:               jal          ra, 10b
15:               jal          s2, 0b
16:               jal          t4, 5b
17:               jal          t2, 7b
18:               jal          s3, 1b
19:               sra          a1, a0, s7
sub_4_6:          jal          t1, 9f
0:                jal          t1, 10f
1:                jal          ra, 8f
2:                jal          ra, 11f
3:                jal          t1, 0b
4:                jal          t1, 5f
5:                jal          s8, 2b
6:                jal          ra, 1b
7:                jal          ra, 3b
8:                jal          ra, 4b
9:                jal          s8, 7b
10:               jal          t6, 6b
11:               jal          ra, 12f
12:               add          t2, s8, s8
                  auipc        s6, 835505
                  slli         a1, tp, 4
                  slt          a1, a0, a0
                  blt          a6, s9, 21f
                  bne          t5, s8, 19f
                  srl          t6, s9, a4
                  bge          s5, t2, 11f
                  beq          a4, s2, 23f
                  lui          s2, 363104
                  blt          s1, t1, 16f
                  srai         a6, s5, 12
11:               srai         s4, s3, 29
                  sll          s5, t5, s8
                  ori          zero, s0, 417
                  nop
                  andi         s4, a6, 1982
16:               blt          a7, t2, 20f
                  lui          s7, 877514
                  bge          gp, s4, 20f
19:               xor          a2, s10, a3
20:               add          a0, s9, s4
21:               and          zero, s10, zero
                  add          s4, t6, t0
23:               and          t3, s7, tp
                  slti         a4, sp, 1843
                  lui          s8, 401055
                  slti         t1, t5, -1699
                  bltu         t4, s6, 29f
                  sltiu        t5, s3, 228
29:               srli         a1, s6, 19
                  slli         s11, a4, 31
                  bgeu         t1, t5, 32f
32:               addi         s5, a6, 1737
                  xor          t5, a6, a4
                  add          s8, s10, t4
                  bgeu         zero, zero, 41f
                  nop
                  bge          t6, s6, 57f
                  bge          t1, tp, 40f
                  bge          s5, t2, 53f
40:               sub          ra, t3, s1
41:               andi         a0, a7, -1860
                  ori          t1, a3, -543
                  add          a4, a7, a2
                  bne          t3, sp, 54f
                  srai         s3, t4, 22
                  nop
                  blt          s10, t3, 55f
                  bne          s10, a0, 58f
                  ori          a0, s3, 2009
                  lui          gp, 181324
sub_4_1:          jal          t1, 10f
0:                jal          t1, 6f
1:                jal          gp, 2f
2:                jal          ra, 19f
3:                jal          ra, 15f
4:                jal          gp, 13f
5:                jal          t1, 9f
6:                jal          ra, 12f
7:                jal          ra, 21f
8:                jal          ra, 4b
9:                jal          t0, 3b
10:               jal          t1, 8b
11:               jal          ra, 17f
12:               jal          t3, 1b
13:               jal          t1, 18f
14:               jal          ra, 22f
15:               jal          ra, 0b
16:               jal          ra, 14b
17:               jal          ra, 7b
18:               jal          a3, 16b
19:               jal          t1, 23f
20:               jal          t1, 11b
21:               jal          ra, 5b
22:               jal          t1, 20b
23:               srai         s1, t4, 7
                  ori          s5, gp, 816
                  bltu         a4, ra, 59f
53:               addi         s8, t1, -1650
54:               bgeu         s1, zero, 60f
55:               xor          a4, ra, s5
                  sra          s8, s7, s3
57:               nop
58:               andi         s8, s8, 351
59:               sltiu        t3, t3, 1128
60:               bge          t1, s3, 71f
                  srl          s4, s4, s4
                  blt          a5, ra, 66f
                  bgeu         s4, t3, 70f
                  srl          sp, t5, a5
                  and          zero, t1, t4
66:               slti         t3, a5, -472
                  xori         a2, s6, -470
                  xor          a3, s10, t4
                  sltu         s3, t0, a4
70:               nop
71:               slli         s11, a2, 12
                  ori          s7, s1, -1024
                  bge          s8, a4, 85f
                  lui          t2, 291769
                  xori         t3, gp, -1688
                  lui          a4, 389699
                  add          s6, zero, a4
                  bltu         s11, a2, 83f
                  blt          s4, s5, 82f
                  ori          s4, a6, 569
                  or           t0, s0, t6
82:               or           a6, a2, zero
83:               add          s0, t0, s6
                  bge          zero, t3, 87f
85:               bltu         a0, s9, 99f
                  sltu         a1, t2, a0
87:               sll          zero, t2, s10
                  bgeu         s11, gp, 101f
                  bgeu         s8, s9, 101f
                  andi         tp, tp, -404
                  addi         s7, t2, -371
                  ori          s2, t4, -202
                  slli         tp, tp, 31
                  bgeu         tp, s6, 105f
                  srl          s0, zero, a1
                  srl          t6, t2, ra
                  slli         s3, a0, 22
                  bge          ra, t2, 109f
99:               sra          t3, tp, t3
                  bltu         s2, s6, 107f
101:              auipc        a0, 660443
                  sll          sp, a0, a0
                  bne          a0, a7, 114f
                  beq          s6, s7, 111f
105:              slli         s8, a2, 11
                  auipc        t5, 452210
107:              addi         s0, s6, 838
                  sltu         t5, a3, a1
109:              and          zero, gp, s10
                  sub          s2, s5, a1
111:              or           a4, a7, a2
                  slt          t3, s8, s9
                  lui          s5, 755391
114:              bltu         a3, s1, 125f
                  xor          gp, s5, s10
                  xor          gp, t6, t6
                  bge          s8, s1, 129f
                  sltu         t1, t3, t5
                  bgeu         a0, s3, 133f
                  bltu         a1, s7, 131f
                  and          a0, t2, a0
                  bge          a6, t2, 124f
                  xori         s4, s1, -366
124:              slti         s4, sp, 867
125:              auipc        s0, 759368
                  srli         s3, a4, 3
                  sltu         t1, s1, s11
                  auipc        tp, 79443
129:              lui          sp, 232013
                  blt          s11, t6, 138f
131:              addi         ra, t2, -764
                  sll          a1, a6, t6
133:              or           t5, ra, t3
                  beq          ra, tp, 140f
                  or           s8, s7, t0
                  andi         s11, s3, 1895
                  slti         s4, s1, -1032
138:              srai         sp, s3, 18
                  addi         s6, t6, -1009
140:              blt          a0, zero, 142f
                  blt          zero, s4, 154f
142:              sra          s1, ra, tp
                  andi         s9, sp, -146
sub_4_4:          jal          t1, 9f
0:                jal          ra, 16f
1:                jal          a6, 12f
2:                jal          s2, 19f
3:                jal          ra, 17f
4:                jal          t1, 1b
5:                jal          ra, 11f
6:                jal          ra, 13f
7:                jal          t2, 14f
8:                jal          ra, 2b
9:                jal          ra, 0b
10:               jal          ra, 15f
11:               jal          ra, 3b
12:               jal          t1, 10b
13:               jal          ra, 18f
14:               jal          t1, 4b
15:               jal          t1, 8b
16:               jal          ra, 6b
17:               jal          ra, 7b
18:               jal          t1, 5b
19:               srl          t2, s6, a4
                  bne          a7, s4, 148f
                  slti         s9, s6, -998
                  auipc        ra, 504133
                  nop
148:              add          s7, zero, s6
                  bltu         s5, a6, 159f
                  slti         s11, a1, 716
                  bgeu         gp, a3, 156f
                  andi         t6, s11, 578
                  sra          s4, a5, s6
154:              srl          zero, a0, s7
                  srli         s3, a2, 16
156:              slti         ra, a5, -1602
                  slli         s3, t4, 13
                  sltu         s5, t5, a2
159:              beq          sp, t0, 164f
                  nop
                  lui          s4, 373597
                  and          s2, a1, a6
                  lui          s0, 394822
164:              auipc        a3, 270467
                  slt          gp, s1, zero
                  auipc        tp, 1026002
                  srai         t4, t4, 28
                  auipc        s8, 248628
                  sll          a2, sp, a1
                  and          s0, a1, t3
                  addi         s6, zero, -1292
                  or           t2, s1, t0
                  or           sp, s0, s2
                  auipc        s8, 764474
                  sub          t3, sp, sp
                  slli         t1, s10, 18
                  beq          a1, t0, 197f
                  sub          s9, s6, tp
                  bltu         ra, t3, 182f
                  andi         s6, a4, -1136
                  lui          s3, 350813
182:              xori         a6, s1, -1607
                  bge          s5, t0, 195f
                  nop
                  or           s3, a2, t2
                  sltiu        zero, s7, 983
                  slti         a3, t1, 186
                  andi         a0, s0, 1244
                  xori         s0, s0, 1967
                  slli         s9, sp, 6
                  lui          ra, 843573
                  sub          s3, a6, a3
                  beq          a6, a6, 203f
                  slli         s3, s6, 18
195:              slli         s7, t5, 15
                  slti         s0, t6, -1789
197:              ori          a0, s7, 654
                  bltu         s0, a2, 214f
                  add          a1, gp, t2
                  lui          t0, 654569
                  bgeu         t5, a1, 215f
                  xor          ra, s0, s1
203:              slli         s8, s9, 3
                  bgeu         s2, s6, 208f
                  sltu         s1, t0, a4
                  bge          s6, s8, 207f
207:              beq          s2, t0, 214f
208:              addi         s9, s7, 1205
                  bltu         t5, t0, 211f
                  andi         s6, ra, 92
211:              bgeu         ra, s7, 214f
                  add          s3, s10, s4
                  xor          s11, t3, t3
214:              bltu         s4, a7, 220f
215:              xor          s3, s0, a3
                  sltu         s0, t3, s6
                  or           s6, tp, sp
                  sra          t3, t3, s7
                  bgeu         a7, s2, 237f
220:              slt          tp, t1, tp
                  sub          a2, t3, s10
                  ori          s7, s8, -1444
                  srli         s9, s8, 6
                  auipc        s9, 550030
                  add          t4, a0, sp
                  sll          t6, a1, s8
                  beq          s8, a5, 242f
                  sltu         sp, t1, s8
                  sll          s11, s8, sp
                  srli         t3, s1, 7
                  srli         a1, s10, 23
                  beq          t5, gp, 245f
                  srl          t5, a4, t3
                  sub          a1, tp, ra
                  slli         t4, s11, 1
                  or           a4, s2, s3
237:              auipc        t2, 165683
                  slli         a4, s1, 31
                  andi         s4, a2, 1060
                  sub          sp, a2, t4
                  bltu         a6, zero, 247f
242:              beq          t2, s2, 254f
                  andi         a2, t0, -1007
                  sll          s3, s1, ra
245:              xori         t5, s0, -1527
                  sll          gp, a5, s9
247:              sub          s7, t0, t4
                  sra          a3, a6, a2
                  sltu         s7, s5, s1
                  sub          s3, t6, s8
                  blt          s2, s1, 258f
                  slti         t4, zero, -1333
                  bne          s7, t0, 256f
254:              nop
                  lui          gp, 926320
256:              bne          a0, s0, 266f
                  srl          t5, ra, s3
258:              srai         s0, zero, 24
                  xori         s8, a5, 1663
                  ori          s4, a7, -1529
                  and          s7, s3, t0
                  bgeu         zero, s0, 264f
                  sltiu        a1, tp, 1810
264:              sltu         t4, s3, zero
                  slt          t3, t2, s1
266:              sltu         tp, a3, gp
                  sll          s4, a3, s1
                  bne          a4, s0, 272f
                  srai         t2, sp, 10
                  srl          a4, a6, ra
                  srai         t6, ra, 26
272:              and          t4, a2, a1
                  bgeu         a6, s8, 284f
                  and          s7, a1, tp
                  bltu         a2, t1, 282f
                  add          s3, a2, s5
                  auipc        s3, 108141
                  blt          s6, s8, 280f
                  slt          s9, zero, s6
280:              slli         s1, a3, 10
                  and          t5, s3, a7
282:              auipc        s9, 420806
                  andi         t0, s3, -986
284:              srl          t0, t2, s11
                  blt          t3, a4, 286f
286:              bge          t3, zero, 294f
                  beq          t0, t3, 298f
                  xori         s6, t1, -588
                  nop
                  sra          a0, t0, s7
                  bgeu         a0, s5, 296f
                  bgeu         t1, t6, 294f
                  bgeu         a7, tp, 308f
294:              xori         s2, t1, 1905
                  andi         s7, s1, -1658
296:              nop
                  xori         t1, s4, -2026
298:              xor          s11, tp, s3
                  and          tp, a7, a3
                  sra          t6, t6, ra
                  slli         a6, a5, 23
                  slt          t4, sp, a6
                  addi         a1, s3, -1238
                  bgeu         s5, s4, 311f
                  or           t0, s8, s10
                  auipc        s7, 953331
                  slt          gp, s5, s2
308:              sll          t3, zero, s7
                  or           s8, s7, a4
                  sub          gp, a3, ra
311:              srai         s9, s3, 13
                  xori         a1, s9, 1571
                  bltu         a6, s4, 327f
                  nop
                  slli         s1, s1, 28
                  andi         zero, s9, -253
                  slli         a2, t2, 8
                  srli         a6, t2, 13
                  and          s1, a3, s4
                  sltiu        gp, s3, -966
                  srai         t1, t3, 17
                  andi         s5, t5, -1249
                  addi         s11, s1, -740
                  or           t4, t2, a3
                  ori          s11, s4, 1375
                  bne          s10, ra, 332f
327:              srai         s11, a1, 2
                  xori         s11, a4, -1724
                  srai         s8, t1, 27
                  sra          s1, t2, a6
                  sltu         s0, s9, t2
332:              bne          a5, s5, 348f
                  sll          s6, t6, t0
                  lui          a2, 21570
                  sll          a6, gp, s1
                  addi         a4, a7, 1873
                  srli         s0, sp, 11
                  beq          gp, s11, 348f
                  srl          t0, s7, t5
                  slti         t2, s2, 535
                  sub          a3, a1, a5
                  xori         t3, s3, -1153
                  nop
                  bltu         s1, a6, 364f
                  beq          tp, a1, 356f
                  slt          a3, t6, gp
                  or           s6, t0, s6
348:              bge          s5, t0, 366f
                  lui          a0, 702234
                  xor          s9, t1, gp
                  bge          s3, s6, 363f
                  bge          s5, a7, 366f
                  lui          t4, 907218
                  sltiu        t1, t4, 129
                  sltu         zero, t4, ra
356:              bge          a2, s5, 361f
                  bne          s7, a4, 361f
                  addi         s1, t6, -667
                  sub          a2, s2, a0
                  sra          a4, t5, s1
361:              xori         a0, tp, -1281
                  sra          t0, sp, a5
363:              ori          t1, s6, -242
364:              srai         s4, a1, 30
                  auipc        s9, 913635
366:              blt          t5, s5, 369f
                  bltu         t2, s3, 370f
                  and          s8, s3, s2
369:              sltiu        s7, zero, 1820
370:              sltu         t6, s5, s6
                  andi         s0, t1, -1598
                  sll          s8, s6, tp
                  add          t2, sp, t6
                  blt          ra, s3, 388f
                  nop
                  beq          a5, zero, 387f
                  bltu         t1, a6, 393f
                  sub          t1, a1, s7
                  lui          t1, 355049
                  blt          s8, a6, 382f
                  lui          a1, 574661
382:              addi         t3, t1, 1525
                  beq          t0, a0, 394f
                  sltu         s8, a6, s11
                  add          t2, s0, sp
                  bge          s8, a0, 393f
387:              nop
388:              lui          ra, 444357
                  addi         s4, s1, -1163
                  ori          s0, s2, -1270
                  srl          s9, s9, s10
                  andi         t2, s9, 294
393:              add          t2, t3, a1
394:              add          s2, a7, t1
                  sltu         a3, s9, a7
                  bgeu         t5, t3, 397f
397:              add          gp, s6, a1
                  sll          tp, a2, a6
                  lw           t1, 4(s10)
                  xori         s5, a1, 50
                  addi         zero, s7, -499
                  addi         s10, s10, 8
                  or           t5, tp, s2
576:              addi x13, x6, 0
576:              jalr x13, x13, 0
sub_5:            addi         s10, s10, -48
                  ori          s2, s5, -1882
                  srli         t0, s0, 19
                  sw           t1, 4(s10)
                  xor          a4, a1, t3
sub_5_10:         jal          t1, 3f
0:                jal          t1, 4f
1:                jal          t1, 6f
2:                jal          s1, 9f
3:                jal          t1, 8f
4:                jal          t1, 1b
5:                jal          t0, 2b
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 5b
9:                jal          ra, 7b
10:               jal          sp, 11f
11:               sltu         t0, a7, tp
sub_5_17:         jal          t1, 26f
0:                jal          ra, 1f
1:                jal          t1, 7f
2:                jal          a1, 25f
3:                jal          ra, 17f
4:                jal          ra, 16f
5:                jal          t1, 27f
6:                jal          ra, 18f
7:                jal          t1, 24f
8:                jal          a4, 13f
9:                jal          t1, 14f
10:               jal          ra, 3b
11:               jal          a4, 5b
12:               jal          s6, 10b
13:               jal          ra, 9b
14:               jal          ra, 22f
15:               jal          ra, 12b
16:               jal          t1, 15b
17:               jal          t5, 23f
18:               jal          tp, 11b
19:               jal          t1, 2b
20:               jal          s7, 6b
21:               jal          ra, 20b
22:               jal          a3, 21b
23:               jal          t2, 0b
24:               jal          tp, 8b
25:               jal          t1, 4b
26:               jal          a2, 19b
27:               or           a3, s0, s6
sub_5_2:          jal          t1, 5f
0:                jal          tp, 2f
1:                jal          ra, 10f
2:                jal          ra, 4f
3:                jal          ra, 1b
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          ra, 0b
7:                jal          ra, 9f
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               addi         gp, a1, 1451
sub_5_0:          jal          t1, 5f
0:                jal          ra, 12f
1:                jal          ra, 16f
2:                jal          ra, 6f
3:                jal          ra, 2b
4:                jal          t1, 24f
5:                jal          ra, 23f
6:                jal          gp, 0b
7:                jal          ra, 1b
8:                jal          ra, 28f
9:                jal          ra, 15f
10:               jal          a1, 29f
11:               jal          t0, 19f
12:               jal          ra, 18f
13:               jal          s5, 26f
14:               jal          ra, 3b
15:               jal          ra, 30f
16:               jal          t1, 13b
17:               jal          ra, 21f
18:               jal          t1, 25f
19:               jal          ra, 14b
20:               jal          ra, 10b
21:               jal          ra, 9b
22:               jal          t1, 11b
23:               jal          tp, 22b
24:               jal          t3, 20b
25:               jal          ra, 7b
26:               jal          ra, 8b
27:               jal          s1, 17b
28:               jal          ra, 4b
29:               jal          ra, 27b
30:               addi         s11, ra, -177
sub_5_22:         jal          t1, 21f
0:                jal          t1, 5f
1:                jal          ra, 15f
2:                jal          t1, 3f
3:                jal          ra, 7f
4:                jal          ra, 19f
5:                jal          ra, 13f
6:                jal          ra, 2b
7:                jal          t1, 18f
8:                jal          s11, 17f
9:                jal          ra, 22f
10:               jal          tp, 12f
11:               jal          t6, 6b
12:               jal          a0, 1b
13:               jal          ra, 4b
14:               jal          ra, 9b
15:               jal          ra, 0b
16:               jal          ra, 14b
17:               jal          a2, 11b
18:               jal          s7, 10b
19:               jal          ra, 16b
20:               jal          ra, 8b
21:               jal          tp, 20b
22:               sra          gp, t0, t3
sub_5_19:         jal          t1, 7f
0:                jal          sp, 11f
1:                jal          t1, 13f
2:                jal          ra, 4f
3:                jal          ra, 19f
4:                jal          ra, 8f
5:                jal          t1, 2b
6:                jal          ra, 17f
7:                jal          ra, 26f
8:                jal          ra, 0b
9:                jal          t1, 27f
10:               jal          t1, 25f
11:               jal          ra, 16f
12:               jal          t1, 10b
13:               jal          ra, 18f
14:               jal          t1, 1b
15:               jal          ra, 3b
16:               jal          ra, 14b
17:               jal          sp, 21f
18:               jal          ra, 28f
19:               jal          ra, 12b
20:               jal          s0, 23f
21:               jal          ra, 15b
22:               jal          t1, 20b
23:               jal          ra, 6b
24:               jal          ra, 5b
25:               jal          t1, 24b
26:               jal          ra, 9b
27:               jal          t1, 22b
28:               sra          a2, tp, t1
sub_5_25:         jal          t1, 12f
0:                jal          t1, 13f
1:                jal          ra, 10f
2:                jal          ra, 14f
3:                jal          t1, 0b
4:                jal          t1, 7f
5:                jal          sp, 1b
6:                jal          ra, 3b
7:                jal          sp, 23f
8:                jal          ra, 4b
9:                jal          s7, 21f
10:               jal          t1, 9b
11:               jal          t1, 19f
12:               jal          ra, 15f
13:               jal          ra, 8b
14:               jal          t4, 18f
15:               jal          ra, 22f
16:               jal          t1, 11b
17:               jal          t2, 6b
18:               jal          a0, 20f
19:               jal          ra, 2b
20:               jal          ra, 17b
21:               jal          t1, 16b
22:               jal          ra, 5b
23:               nop
sub_5_26:         jal          t1, 16f
0:                jal          ra, 11f
1:                jal          ra, 4f
2:                jal          t5, 17f
3:                jal          t1, 1b
4:                jal          ra, 6f
5:                jal          gp, 21f
6:                jal          t1, 0b
7:                jal          t0, 10f
8:                jal          ra, 13f
9:                jal          a3, 8b
10:               jal          tp, 22f
11:               jal          t1, 15f
12:               jal          t6, 9b
13:               jal          ra, 19f
14:               jal          s5, 3b
15:               jal          ra, 20f
16:               jal          ra, 14b
17:               jal          ra, 18f
18:               jal          ra, 12b
19:               jal          t1, 7b
20:               jal          t1, 5b
21:               jal          ra, 2b
22:               sltu         t1, t6, a7
sub_5_11:         jal          t1, 10f
0:                jal          tp, 24f
1:                jal          t0, 28f
2:                jal          t1, 0b
3:                jal          sp, 11f
4:                jal          ra, 15f
5:                jal          ra, 4b
6:                jal          ra, 16f
7:                jal          t6, 1b
8:                jal          ra, 5b
9:                jal          ra, 23f
10:               jal          ra, 14f
11:               jal          ra, 17f
12:               jal          s7, 25f
13:               jal          a3, 2b
14:               jal          t6, 9b
15:               jal          ra, 7b
16:               jal          t1, 22f
17:               jal          ra, 20f
18:               jal          s2, 27f
19:               jal          ra, 21f
20:               jal          ra, 13b
21:               jal          t0, 12b
22:               jal          ra, 26f
23:               jal          sp, 3b
24:               jal          sp, 18b
25:               jal          sp, 8b
26:               jal          ra, 29f
27:               jal          ra, 19b
28:               jal          sp, 6b
29:               or           s0, a5, s8
sub_5_13:         jal          t1, 19f
0:                jal          s9, 14f
1:                jal          ra, 3f
2:                jal          ra, 12f
3:                jal          s11, 2b
4:                jal          ra, 20f
5:                jal          t0, 9f
6:                jal          ra, 13f
7:                jal          t3, 5b
8:                jal          gp, 15f
9:                jal          t1, 22f
10:               jal          t1, 17f
11:               jal          t1, 18f
12:               jal          ra, 4b
13:               jal          ra, 21f
14:               jal          ra, 6b
15:               jal          tp, 11b
16:               jal          a6, 0b
17:               jal          ra, 7b
18:               jal          ra, 16b
19:               jal          t0, 8b
20:               jal          t1, 10b
21:               jal          ra, 1b
22:               srli         t5, sp, 24
sub_5_4:          jal          t1, 12f
0:                jal          ra, 15f
1:                jal          t1, 0b
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          t4, 3b
5:                jal          ra, 4b
6:                jal          t1, 5b
7:                jal          t1, 9f
8:                jal          tp, 13f
9:                jal          s0, 2b
10:               jal          t2, 11f
11:               jal          ra, 14f
12:               jal          ra, 8b
13:               jal          t4, 10b
14:               jal          s2, 7b
15:               auipc        s9, 357080
sub_5_8:          jal          t1, 9f
0:                jal          t6, 12f
1:                jal          t1, 6f
2:                jal          a1, 13f
3:                jal          s8, 10f
4:                jal          ra, 1b
5:                jal          t1, 15f
6:                jal          t1, 5b
7:                jal          t1, 0b
8:                jal          ra, 3b
9:                jal          s1, 11f
10:               jal          t1, 4b
11:               jal          t1, 14f
12:               jal          t1, 2b
13:               jal          ra, 8b
14:               jal          t0, 7b
15:               nop
sub_5_18:         jal          t1, 21f
0:                jal          s9, 3f
1:                jal          ra, 8f
2:                jal          t1, 13f
3:                jal          ra, 2b
4:                jal          t0, 5f
5:                jal          ra, 0b
6:                jal          a1, 20f
7:                jal          t0, 9f
8:                jal          ra, 22f
9:                jal          ra, 18f
10:               jal          tp, 1b
11:               jal          ra, 15f
12:               jal          t1, 17f
13:               jal          ra, 14f
14:               jal          sp, 6b
15:               jal          s3, 16f
16:               jal          ra, 19f
17:               jal          sp, 10b
18:               jal          ra, 11b
19:               jal          t4, 4b
20:               jal          t1, 12b
21:               jal          a3, 7b
22:               sll          s4, tp, t2
sub_5_16:         jal          t1, 2f
0:                jal          ra, 6f
1:                jal          ra, 9f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          t1, 8f
5:                jal          ra, 0b
6:                jal          t1, 10f
7:                jal          a0, 11f
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          s2, 1b
11:               auipc        a0, 757115
sub_5_20:         jal          t1, 9f
0:                jal          t0, 8f
1:                jal          ra, 0b
2:                jal          a1, 5f
3:                jal          a3, 1b
4:                jal          a2, 6f
5:                jal          gp, 3b
6:                jal          ra, 7f
7:                jal          t1, 11f
8:                jal          t1, 4b
9:                jal          t4, 10f
10:               jal          a0, 2b
11:               xor          s6, a3, s5
sub_5_15:         jal          t1, 10f
0:                jal          t3, 5f
1:                jal          s0, 0b
2:                jal          sp, 13f
3:                jal          ra, 12f
4:                jal          ra, 14f
5:                jal          t1, 4b
6:                jal          s11, 2b
7:                jal          t1, 9f
8:                jal          t0, 7b
9:                jal          sp, 11f
10:               jal          t1, 8b
11:               jal          ra, 6b
12:               jal          t1, 1b
13:               jal          s6, 3b
14:               ori          t4, s8, 590
sub_5_3:          jal          t1, 10f
0:                jal          ra, 9f
1:                jal          t4, 2f
2:                jal          ra, 7f
3:                jal          a2, 4f
4:                jal          ra, 8f
5:                jal          t1, 0b
6:                jal          t6, 5b
7:                jal          ra, 11f
8:                jal          s3, 1b
9:                jal          ra, 3b
10:               jal          tp, 6b
11:               and          a4, t2, a5
sub_5_1:          jal          t1, 8f
0:                jal          ra, 11f
1:                jal          s11, 2f
2:                jal          s11, 3f
3:                jal          t1, 9f
4:                jal          ra, 13f
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          ra, 1b
8:                jal          t0, 6b
9:                jal          t2, 4b
10:               jal          ra, 7b
11:               jal          t0, 14f
12:               jal          ra, 10b
13:               jal          s8, 15f
14:               jal          ra, 12b
15:               slti         t5, t1, 1349
sub_5_14:         jal          t1, 1f
0:                jal          ra, 2f
1:                jal          gp, 7f
2:                jal          s0, 19f
3:                jal          sp, 23f
4:                jal          t1, 12f
5:                jal          a4, 14f
6:                jal          ra, 5b
7:                jal          s11, 25f
8:                jal          ra, 9f
9:                jal          a0, 4b
10:               jal          ra, 13f
11:               jal          t0, 21f
12:               jal          gp, 10b
13:               jal          t1, 22f
14:               jal          s4, 24f
15:               jal          t0, 0b
16:               jal          t0, 8b
17:               jal          s8, 26f
18:               jal          ra, 3b
19:               jal          t1, 11b
20:               jal          ra, 18b
21:               jal          t1, 17b
22:               jal          t1, 6b
23:               jal          ra, 15b
24:               jal          s3, 20b
25:               jal          ra, 16b
26:               slti         t2, a2, -1237
sub_5_6:          jal          t1, 8f
0:                jal          ra, 7f
1:                jal          s6, 6f
2:                jal          ra, 5f
3:                jal          t1, 13f
4:                jal          s11, 10f
5:                jal          ra, 11f
6:                jal          t1, 3b
7:                jal          sp, 1b
8:                jal          t0, 0b
9:                jal          t1, 15f
10:               jal          ra, 14f
11:               jal          gp, 9b
12:               jal          t0, 2b
13:               jal          ra, 4b
14:               jal          s6, 12b
15:               jal          s0, 16f
16:               sub          a3, t4, s1
                  bltu         gp, tp, 12f
                  sra          zero, s0, s0
                  sub          s1, s3, a2
                  sltiu        s5, s2, 405
                  addi         s4, tp, 1518
                  and          s6, s6, s3
                  srl          s6, t2, t1
                  slli         s7, a1, 1
                  srl          t1, gp, a2
                  sltiu        s8, s4, -1794
                  sltu         s11, s7, t5
                  add          t6, gp, t0
12:               add          zero, s0, a5
                  sll          t6, s10, a7
                  sltiu        t6, t0, -372
                  auipc        a2, 305082
                  xor          t6, s5, tp
                  sltiu        gp, s6, -494
                  sltiu        t1, t6, 179
                  srli         s2, a0, 17
                  sltiu        tp, s7, -717
                  auipc        a3, 316764
                  ori          s7, s11, 1216
                  bltu         t6, a2, 26f
                  andi         s5, t5, 2046
                  xor          s2, s6, gp
26:               auipc        s5, 207600
                  blt          s1, a0, 28f
28:               sltu         s1, s9, t2
                  slt          s7, s4, s10
                  and          t1, s5, sp
                  add          a1, s2, gp
                  add          s7, t4, tp
                  xori         a4, t6, 1955
                  xori         t2, t6, -1374
                  xor          t2, s1, a0
                  beq          t4, s0, 45f
                  lui          s7, 590316
                  bne          a0, zero, 46f
                  or           a1, gp, ra
                  beq          a2, t1, 57f
                  bgeu         sp, s0, 59f
                  bltu         t4, t4, 60f
                  addi         s3, t0, 8
                  ori          t2, s7, 1584
45:               srl          a6, a6, s8
46:               sll          a0, t3, t5
                  bge          gp, t2, 65f
                  sltiu        s9, s5, 780
                  srl          ra, t1, s6
                  slti         t6, s6, 1705
                  sub          t4, a4, a6
                  slt          s4, s3, t3
                  srl          t2, s3, a3
                  addi         t6, t6, 290
                  addi         s4, s8, -221
                  xor          t3, t1, s7
57:               auipc        ra, 928203
                  srai         a4, s6, 4
59:               srai         t0, s1, 2
60:               nop
                  srl          gp, s4, s9
                  srli         sp, a0, 12
                  nop
                  srli         s2, t4, 11
65:               andi         zero, t3, -510
                  or           s8, a5, t0
                  xori         s11, zero, 1681
                  sll          a0, s0, t3
                  xori         t6, s6, -670
                  srl          a6, s9, a2
                  bge          t3, t6, 85f
                  add          a2, a6, sp
                  or           t5, s5, s2
                  srli         s1, t6, 21
                  and          s1, s9, a1
                  bltu         t5, t5, 77f
77:               and          s4, t5, a7
                  sltu         a6, s5, gp
                  bge          t3, tp, 85f
                  lui          a0, 1035369
                  andi         s2, s10, -1116
                  srli         a4, a0, 21
                  bltu         t3, t2, 102f
                  slt          a0, s2, s7
85:               or           a3, a1, a6
                  xori         gp, s3, -1518
                  srli         t0, a0, 20
                  bltu         s11, a4, 93f
                  or           t5, t6, ra
                  srai         a3, t5, 6
                  addi         s6, t2, -1877
                  beq          t0, a4, 95f
93:               slti         s0, t4, -169
                  srli         gp, tp, 23
95:               auipc        ra, 24605
                  bge          s9, a0, 101f
                  add          s11, s5, ra
                  and          tp, s11, t2
                  sra          sp, a1, s3
                  srl          t3, a2, t3
101:              sltu         tp, a4, a4
102:              or           s1, s10, s11
                  slt          t3, a6, s4
                  or           s7, a6, a5
                  auipc        s6, 938420
                  lui          ra, 892143
                  bltu         sp, zero, 114f
                  srai         t1, a1, 14
                  lui          a2, 79711
                  sltiu        t3, a4, -1399
                  beq          s11, s8, 116f
                  beq          s8, s10, 115f
                  nop
114:              ori          s9, s0, -1957
115:              xori         s4, s10, 641
116:              bge          sp, s3, 128f
                  beq          t4, t1, 121f
                  bge          zero, s1, 129f
                  bltu         a0, a5, 125f
                  sltu         zero, a4, s7
121:              ori          a4, zero, 999
                  srli         a0, a0, 1
                  sll          s2, sp, t4
                  bge          t1, a7, 127f
125:              bgeu         a6, s7, 130f
                  addi         s11, s1, -1380
127:              sra          t1, a4, gp
128:              srli         a0, t4, 17
129:              andi         ra, t6, -1695
130:              xori         a2, s7, 1191
                  sra          ra, a2, s7
                  bge          s6, s0, 135f
                  bge          t5, a7, 153f
                  nop
135:              beq          a6, a2, 155f
                  auipc        a2, 736565
                  auipc        t0, 537886
                  blt          zero, t6, 157f
                  ori          s8, s2, -1680
                  nop
                  and          t2, s0, tp
                  ori          a1, s3, -61
                  sll          ra, a5, s4
                  andi         s1, a5, 926
                  beq          s4, t2, 160f
                  auipc        s0, 944072
                  sll          a0, s10, t2
                  srai         s8, s1, 30
                  bltu         a0, a2, 167f
                  xori         gp, t6, 1810
                  nop
                  sub          s7, sp, t4
153:              slt          t3, t6, a7
                  xor          tp, sp, ra
155:              sltu         ra, s8, s1
                  slli         ra, sp, 20
157:              add          s2, a4, s7
                  sub          s8, tp, s3
                  auipc        t6, 165340
160:              bltu         t3, a0, 163f
                  srl          t4, t2, t6
                  slti         zero, t4, -1993
163:              andi         a4, a0, -147
                  srli         a1, s8, 23
                  or           s7, s10, s0
                  add          s3, t0, s6
167:              sub          a1, sp, s10
                  bge          gp, t0, 169f
169:              srli         sp, s7, 21
                  sltu         s6, t4, t5
                  sltiu        s8, a0, 1886
                  bgeu         s7, s5, 175f
                  lui          tp, 799112
                  sub          gp, a7, s8
175:              lui          s11, 995700
                  bne          a5, tp, 184f
                  bge          s6, tp, 180f
                  sll          gp, s11, zero
                  add          s11, s2, s3
180:              andi         a6, t3, 1833
                  addi         a2, s10, 1933
                  and          t5, s7, a1
                  andi         t0, s0, -48
184:              sra          t0, sp, a0
                  slt          zero, sp, zero
                  andi         s5, ra, 289
                  srai         a0, t1, 24
                  slti         t0, s5, 299
                  nop
                  bne          t2, a6, 195f
                  srl          s5, ra, t5
                  auipc        s2, 302599
                  blt          tp, s0, 198f
                  nop
195:              xori         a2, t0, -251
                  sltiu        s1, a3, 2015
                  sra          sp, s5, t5
198:              sltu         t0, t3, s10
                  lui          s11, 700413
                  xori         s5, t3, -1288
                  slt          s7, a0, a2
                  sltu         tp, zero, ra
                  srai         a3, s2, 14
                  bltu         a7, s8, 219f
                  ori          t0, s5, 1363
                  andi         t4, a0, -949
                  srli         a2, s11, 17
                  sltu         s8, t1, t0
                  sltiu        a1, tp, -1443
                  andi         a2, gp, -241
                  andi         s6, s2, 1672
                  srl          s9, s4, gp
                  sra          t3, s11, t1
                  or           sp, a4, t0
                  and          ra, s10, ra
                  sltiu        a6, s1, 1790
                  addi         s2, t5, 517
                  lui          s3, 901232
219:              bgeu         s3, s3, 223f
                  srai         a3, s2, 12
                  bne          t4, s1, 224f
                  sra          s7, s0, s9
223:              sll          s0, s3, zero
224:              sltiu        t2, s10, -1953
                  beq          tp, tp, 243f
                  auipc        t4, 539245
                  sra          sp, t1, a7
                  nop
                  sltiu        a4, a0, -684
                  sltiu        s9, t6, -1241
                  bgeu         s1, s4, 232f
232:              srli         ra, s10, 0
                  slli         sp, s9, 2
                  beq          zero, a5, 246f
                  slti         a3, t4, 948
                  sub          t2, zero, a4
                  srli         ra, s2, 11
                  slli         sp, t4, 23
                  sltiu        a6, a6, -1033
                  slt          a2, t1, t5
                  lui          t5, 887619
                  slli         t2, t0, 31
243:              sltu         tp, t0, a4
                  nop
                  sub          t2, s0, tp
246:              beq          gp, a0, 265f
                  sltiu        s6, t4, -1600
                  beq          t4, t6, 260f
                  addi         s2, s0, -1149
                  bgeu         zero, t4, 257f
                  bge          a2, s10, 256f
                  slti         a2, a3, -1729
                  xor          sp, zero, s6
                  or           s6, s0, sp
                  addi         t1, t2, 1097
256:              add          s3, gp, ra
257:              xori         a1, s11, -1608
                  add          t1, t3, s5
                  bgeu         a4, s3, 264f
260:              srli         s6, s6, 2
                  slt          a0, a6, a4
                  slti         s7, tp, 1604
                  srli         sp, t3, 4
264:              srli         s1, t0, 2
265:              lui          s0, 412875
                  ori          s8, t5, 516
                  srai         s11, s2, 21
                  andi         s3, gp, 124
                  ori          t2, s11, -1180
                  beq          tp, a2, 289f
                  sll          tp, a1, t4
                  add          gp, a0, zero
                  andi         zero, s5, 861
                  xor          a1, ra, a3
                  addi         zero, t4, -1908
                  beq          a6, a4, 279f
                  lui          t4, 982893
                  nop
279:              slli         a4, s3, 6
                  srl          s3, a7, a1
                  bgeu         s11, s9, 295f
                  sltiu        a3, a0, 173
                  sll          s3, t3, a4
                  sltiu        a0, a2, 501
                  srai         a1, s7, 11
                  sra          zero, a2, a1
                  auipc        sp, 67342
                  andi         s6, s5, 185
289:              sll          t3, t3, gp
                  slli         a1, ra, 27
sub_5_24:         jal          t1, 20f
0:                jal          ra, 15f
1:                jal          t1, 6f
2:                jal          t6, 23f
3:                jal          t1, 18f
4:                jal          ra, 0b
5:                jal          ra, 2b
6:                jal          s11, 13f
7:                jal          ra, 3b
8:                jal          ra, 16f
9:                jal          ra, 7b
10:               jal          ra, 8b
11:               jal          ra, 10b
12:               jal          ra, 24f
13:               jal          ra, 17f
14:               jal          ra, 1b
15:               jal          gp, 11b
16:               jal          t1, 12b
17:               jal          t1, 4b
18:               jal          sp, 22f
19:               jal          ra, 5b
20:               jal          t1, 21f
21:               jal          s1, 9b
22:               jal          sp, 19b
23:               jal          t1, 14b
24:               andi         a0, s7, -234
                  xor          s6, s4, s11
                  sltu         s9, a0, s6
                  bgeu         a3, gp, 304f
                  slt          sp, s6, s3
295:              andi         gp, s6, -529
                  srai         t4, a7, 23
                  and          a3, a4, s3
                  nop
                  srl          t6, t1, s2
                  xori         s0, s7, -1350
                  srai         zero, a1, 12
                  sub          t5, t5, t1
                  and          gp, a7, s0
304:              andi         a2, s1, 967
                  sll          t4, a3, s3
                  srai         s6, t1, 7
                  ori          a4, s1, -955
                  auipc        t6, 840160
                  srl          s4, s0, s7
                  srli         t6, s10, 2
                  srl          sp, zero, a7
                  sll          t5, ra, gp
                  and          a3, s7, a3
                  addi         t4, ra, 162
                  xori         a6, zero, -26
                  andi         t6, s8, 1087
                  slti         tp, a6, 1204
                  blt          s0, s6, 324f
                  or           s2, t1, sp
                  and          s11, s7, a2
                  slt          tp, a0, s5
                  or           t3, s10, t4
                  beq          t0, s8, 343f
324:              sub          s7, s8, a7
                  sltiu        s0, a7, -1568
                  slti         t0, s2, -1033
                  andi         s1, gp, 555
                  srli         t5, t6, 13
                  or           zero, a3, sp
                  sub          s1, t1, s5
                  and          a2, s6, s7
                  sltu         s6, s2, s10
                  bge          a7, tp, 339f
                  bge          sp, s10, 354f
                  add          t3, sp, a5
                  bltu         t5, s7, 345f
                  sltiu        a1, s6, -1472
                  sub          t5, s5, a4
339:              sltu         s2, s7, s8
                  bge          t6, a3, 358f
                  beq          t3, s3, 358f
                  srai         a1, s8, 23
343:              xor          s5, s3, s6
                  slti         t5, s9, -719
345:              sra          t4, s3, t1
                  slti         s1, s1, -702
                  bge          t2, s4, 365f
                  sltiu        a4, a7, 329
                  auipc        a3, 1009038
                  sra          a4, s10, a3
                  blt          t5, t6, 371f
                  sltiu        t4, s10, 621
                  beq          s8, a6, 373f
354:              slli         a6, a2, 6
                  addi         a3, s0, 807
                  xor          s6, a7, a0
                  bge          s11, a3, 364f
358:              and          a3, s10, s10
                  sra          a6, a1, t5
                  bne          s1, s11, 361f
361:              andi         s7, s7, -354
                  slti         s1, s9, -631
                  srli         a1, a3, 27
364:              slli         tp, a1, 29
365:              blt          s1, a4, 384f
                  blt          s10, zero, 369f
                  andi         sp, a1, -542
                  srl          s3, a6, t0
369:              xor          zero, gp, a5
                  sub          s9, t2, a6
371:              srl          t2, sp, t1
                  sub          a4, zero, t1
373:              auipc        s6, 806305
                  sll          gp, t6, s6
                  bltu         a7, a1, 392f
                  lui          gp, 673589
                  bne          a4, s11, 395f
                  bne          a5, a7, 383f
                  sub          a3, s6, a1
                  xor          sp, s1, s7
                  bltu         t5, s11, 386f
                  xor          s6, a0, gp
383:              auipc        t4, 749777
384:              sltiu        s9, s7, -1860
                  sub          s7, a5, tp
386:              ori          gp, a1, 1218
                  bgeu         tp, s8, 393f
                  xori         s5, t2, 9
                  sltiu        t0, a1, 1167
                  slli         t3, a3, 24
                  srai         s9, a1, 10
392:              sub          s5, s2, a6
393:              sll          a6, s9, s9
                  bgeu         zero, s9, 412f
395:              srl          s5, t4, a1
                  sll          t6, sp, a4
                  nop
                  ori          t1, t1, -702
                  sltu         s11, a5, tp
                  sub          t5, ra, t3
                  sltiu        tp, s1, 1902
                  sltiu        t6, a1, 1762
                  add          s1, a1, s3
                  slli         a4, t6, 16
                  srli         s3, s9, 16
                  xor          ra, a0, t3
                  slt          s5, a5, s11
                  ori          t4, tp, -272
                  or           t6, a2, zero
                  bltu         t3, zero, 418f
                  beq          t4, s7, 414f
412:              xori         t1, s7, -1550
                  nop
414:              or           s4, s6, s4
                  or           a1, a1, a3
                  xori         t6, tp, -447
                  slli         a4, sp, 15
418:              srli         a1, a5, 30
                  xor          a2, s5, s7
                  beq          t1, s8, 425f
                  srli         a6, s10, 15
                  andi         zero, s11, 1172
                  srli         s5, a3, 17
                  auipc        s4, 126746
425:              or           s4, a2, s10
                  xor          t1, s11, zero
                  ori          gp, s5, -625
                  auipc        sp, 386096
                  sltu         t0, a5, s8
                  srli         s1, t5, 15
                  bne          a7, a5, 434f
                  bge          s3, s3, 437f
                  andi         t3, a4, -1265
434:              sub          s9, s2, t2
                  sltu         a0, tp, a4
                  auipc        tp, 132740
437:              xor          s5, a7, a6
                  srai         t0, s4, 1
                  or           a3, a0, a3
                  bge          gp, a1, 452f
                  ori          t0, a6, 746
                  slti         s11, t0, -1164
                  srli         a0, zero, 15
                  lui          t6, 920779
                  auipc        t5, 240763
                  sub          a6, t2, zero
                  sltiu        t6, a7, 1705
                  blt          a0, t0, 451f
                  add          gp, a7, t1
                  sra          s6, t2, a4
451:              blt          zero, zero, 466f
452:              andi         t0, s10, 848
                  slli         tp, s0, 6
                  ori          gp, s5, 1931
                  slt          s2, s9, s11
                  and          t0, a7, a5
                  sra          a2, t3, a1
                  lui          t4, 805266
                  sltiu        s7, t3, 1162
                  sltiu        s6, a6, -1695
                  srl          a1, t6, ra
                  bne          t4, a0, 473f
                  srl          s7, t1, s7
                  bne          a6, s9, 478f
                  nop
466:              addi         a6, s2, -1746
                  srai         t1, gp, 5
                  andi         s3, a0, -1672
                  bge          t1, a3, 473f
                  slt          s6, s4, s10
                  bgeu         s3, t6, 474f
                  srl          s5, s11, t6
473:              sub          a4, s7, a7
474:              bge          s6, s8, 480f
                  srli         s7, t3, 4
                  sra          t3, s4, a2
                  beq          s5, t5, 489f
478:              ori          t4, t1, -648
                  xori         a2, a4, -1579
480:              beq          a7, gp, 481f
481:              xor          s7, s2, a5
                  slli         ra, t4, 29
                  or           s3, t1, s0
                  auipc        sp, 199602
                  srai         t3, s5, 12
                  sub          gp, s8, t3
                  sub          s9, s1, s2
                  blt          s6, s10, 507f
489:              slti         a3, t6, 1512
                  slli         gp, a5, 7
                  ori          s11, a7, -1156
                  bltu         t3, s1, 501f
                  xori         a0, s2, -342
                  srli         s11, a1, 14
                  beq          a6, a2, 498f
sub_5_5:          jal          t1, 24f
0:                jal          t1, 7f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          t1, 29f
4:                jal          t1, 15f
5:                jal          t2, 14f
6:                jal          t1, 16f
7:                jal          ra, 5b
8:                jal          ra, 20f
9:                jal          t6, 6b
10:               jal          t1, 26f
11:               jal          ra, 13f
12:               jal          t1, 27f
13:               jal          t1, 22f
14:               jal          a3, 3b
15:               jal          ra, 19f
16:               jal          ra, 21f
17:               jal          s1, 0b
18:               jal          t1, 11b
19:               jal          ra, 10b
20:               jal          ra, 2b
21:               jal          a4, 25f
22:               jal          t1, 9b
23:               jal          ra, 18b
24:               jal          s11, 1b
25:               jal          ra, 17b
26:               jal          ra, 23b
27:               jal          a2, 28f
28:               jal          t1, 4b
29:               addi         s2, a7, 989
                  slli         a6, s4, 31
                  bne          s10, t2, 500f
498:              bltu         t1, t1, 516f
                  bne          ra, s10, 500f
500:              xor          zero, s1, t6
501:              beq          t5, t4, 504f
                  sltiu        a6, zero, 1801
                  slti         a6, s1, 203
504:              and          t6, t1, t5
                  xor          a0, a1, t5
                  add          ra, s6, t1
507:              bge          s6, a3, 518f
                  bltu         s7, t4, 527f
                  and          s4, t2, s10
                  slli         t1, a3, 26
                  blt          s0, s6, 530f
                  add          sp, s3, a7
                  beq          s8, t4, 518f
                  slli         gp, s3, 21
                  slti         t3, a4, -251
516:              slt          s11, s8, a3
                  andi         zero, zero, -755
518:              nop
                  srli         s9, s8, 29
                  srli         s11, s6, 18
                  nop
                  srai         a2, s9, 10
                  beq          s8, t2, 526f
                  srai         t4, a2, 8
                  bne          ra, s5, 534f
526:              addi         a4, a1, 552
527:              srli         s6, s11, 5
                  slt          t1, s10, tp
                  bne          t0, t5, 536f
530:              slt          t3, t0, a4
                  sra          s1, sp, a2
                  srl          s9, ra, a1
                  nop
534:              blt          gp, t4, 540f
                  nop
536:              or           t4, s3, s4
                  auipc        s11, 965055
                  srl          s1, a0, s3
                  slli         t1, sp, 13
540:              slt          a6, s9, a5
                  lui          a3, 797306
                  lui          s9, 541648
                  srl          a0, s9, ra
                  lui          t2, 257680
                  slti         a2, a2, 103
                  andi         t0, zero, 1152
                  blt          a7, zero, 567f
                  bgeu         s10, a2, 549f
549:              slt          ra, t3, a2
                  beq          t0, s11, 558f
                  sra          s4, s11, t3
                  blt          a1, ra, 569f
                  andi         s11, a3, 382
                  xori         a2, a3, 1232
                  srl          s0, s11, s11
                  and          a0, t6, a5
                  bge          a1, a6, 577f
558:              srl          t1, t4, zero
                  bltu         a5, t4, 573f
                  beq          s11, s1, 575f
                  slli         tp, s0, 11
                  srai         s4, s5, 15
                  sub          s4, a7, s7
                  addi         a3, s4, -878
                  andi         t0, t1, -451
                  blt          zero, s6, 571f
567:              addi         a1, t3, -1215
                  or           t3, t1, t6
569:              blt          a2, s11, 572f
                  addi         s11, t3, 270
571:              or           t5, s4, gp
572:              xori         zero, a6, 560
573:              add          s9, a7, sp
                  bltu         s6, t0, 578f
575:              srl          t5, t3, zero
                  auipc        gp, 99296
577:              slli         s11, t6, 7
578:              sll          s9, a7, s3
                  ori          sp, a6, -222
                  addi         a4, a0, 1132
                  sra          s2, s11, t0
                  and          zero, s1, s1
                  slti         t6, tp, 1639
                  lui          s8, 1011796
                  add          t6, t4, t2
                  beq          s5, s3, 598f
                  xori         a2, s1, -1324
                  xor          s4, a1, t3
                  srai         s0, s7, 15
                  xori         s11, t2, -1392
                  andi         tp, s10, 1912
                  lui          s11, 420656
                  srli         s11, a7, 23
                  add          s8, s5, t4
                  bltu         s6, s9, 613f
                  sub          a4, a3, gp
                  addi         zero, sp, 113
598:              or           ra, ra, s4
                  or           s9, a3, gp
                  sub          a4, a4, t5
                  xor          t1, a4, a1
                  srai         s11, s1, 7
                  slt          t0, s1, a7
sub_5_23:         jal          t1, 1f
0:                jal          s0, 21f
1:                jal          a1, 20f
2:                jal          ra, 5f
3:                jal          t6, 8f
4:                jal          ra, 16f
5:                jal          t1, 3b
6:                jal          ra, 17f
7:                jal          t1, 9f
8:                jal          gp, 7b
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          ra, 6b
12:               jal          s6, 15f
13:               jal          ra, 19f
14:               jal          ra, 2b
15:               jal          t1, 0b
16:               jal          t1, 10b
17:               jal          ra, 18f
18:               jal          t1, 14b
19:               jal          gp, 11b
20:               jal          ra, 4b
21:               addi         a0, s0, 1223
                  or           s11, sp, a4
                  ori          s9, t3, -558
                  andi         a3, a0, 35
                  bgeu         ra, s2, 613f
                  sltu         s8, s0, s1
                  lui          s4, 34515
                  bne          a5, s8, 615f
                  slti         s11, s6, 501
                  srai         s0, t6, 23
613:              sll          a4, a3, gp
                  blt          s1, s8, 632f
615:              andi         s6, gp, -1757
                  slti         s6, s5, 1227
                  srai         t2, s4, 27
                  srai         tp, zero, 17
                  bgeu         t0, a0, 631f
                  addi         a0, a4, 1791
                  bltu         t2, a4, 626f
                  bne          s0, tp, 634f
                  srl          t1, zero, s4
                  addi         s1, a4, 1570
                  nop
626:              srli         t2, a6, 24
                  slt          zero, s2, s2
                  andi         s2, a4, -37
                  bge          a3, zero, 637f
                  beq          s0, s1, 635f
631:              slt          s7, s11, t0
632:              bgeu         s4, s1, 647f
                  sll          s3, s2, t6
634:              auipc        t0, 494546
635:              nop
                  sltiu        t1, tp, -248
637:              slli         gp, s7, 7
                  slt          s9, s4, a0
                  srai         a2, zero, 29
                  sra          gp, a2, s10
                  lui          ra, 571175
                  xori         a4, a7, -701
                  beq          a7, a2, 646f
                  or           zero, t5, a0
                  sll          a2, t0, t5
646:              auipc        t6, 627357
647:              andi         t0, t5, -1197
                  addi         t1, t5, -1129
                  bltu         s4, s6, 654f
                  beq          s7, s11, 651f
651:              bne          a1, a5, 657f
                  slt          s4, a4, s5
                  bltu         s9, a6, 656f
654:              bne          s3, s1, 672f
                  blt          t6, s6, 669f
656:              srli         s4, gp, 11
657:              ori          t3, s9, 1439
                  ori          zero, a5, 1657
                  sltiu        s9, a2, -172
                  add          s4, a2, ra
                  srl          t6, a2, t2
                  nop
                  bgeu         sp, a1, 682f
                  sub          ra, s1, t1
                  nop
                  sll          a2, t1, t2
                  slt          s6, t3, a6
                  bgeu         a6, s5, 669f
669:              sll          s4, a3, ra
                  slti         a1, a5, -1353
                  nop
672:              srl          s8, a4, gp
                  srai         t2, t2, 26
                  and          t0, gp, sp
                  auipc        a2, 321497
                  sll          tp, s0, s9
                  slti         t0, s3, 469
                  and          sp, gp, s5
                  sltiu        a1, t3, -1201
                  sll          a4, a5, a7
                  sub          s4, t1, a2
682:              addi         ra, a1, -454
                  add          s8, a3, t3
                  bgeu         a1, t6, 687f
                  sltu         a6, a3, s8
                  bge          s3, t3, 691f
687:              blt          a6, s7, 690f
                  srai         zero, sp, 29
                  slti         a1, s1, 1000
690:              ori          ra, a6, 1147
691:              beq          a6, s9, 702f
                  auipc        s11, 372119
                  slti         s3, t5, -909
                  sub          t5, s0, s3
                  xor          t3, s7, s9
                  beq          s9, a5, 703f
                  blt          t4, t6, 706f
                  sll          a6, sp, t0
                  ori          s8, t4, -71
                  xori         a3, t0, -1141
                  auipc        zero, 698342
702:              slli         s3, a1, 7
703:              sub          a6, s6, s7
                  sra          a1, t2, s6
                  auipc        zero, 133842
706:              blt          t4, s0, 709f
                  srli         zero, s4, 6
                  sll          s8, a5, zero
709:              srl          s2, t3, s9
                  bge          a4, a6, 728f
                  ori          sp, a3, 1770
                  lui          t3, 490649
                  bne          s1, t3, 732f
                  slti         s9, a4, -138
                  or           s8, ra, gp
                  beq          gp, gp, 721f
                  bne          a7, sp, 729f
                  sll          a3, s9, s6
                  addi         a2, t5, 1292
                  sll          a0, s11, zero
721:              bne          t2, t3, 738f
                  andi         s3, ra, -1661
                  addi         t3, a4, -1461
                  bne          s0, s0, 742f
                  xor          sp, a0, s0
                  slti         s11, s8, -1396
                  beq          s4, s4, 747f
728:              andi         s11, t0, -1569
729:              nop
                  sltu         s8, a1, t2
                  andi         t4, a2, 384
732:              and          t4, s11, tp
                  srl          a1, s9, s3
                  and          s6, s0, s6
                  srai         t0, s4, 5
                  sll          t2, s0, gp
                  xor          a6, a5, s2
738:              srai         t3, a3, 15
                  slti         s0, zero, 1838
                  lui          s6, 191588
                  sub          t5, tp, a2
742:              bne          t1, gp, 748f
                  bgeu         a5, s6, 763f
                  sra          a0, t2, t2
                  sll          s1, a3, s5
                  sll          gp, s5, t2
747:              slli         s2, t6, 8
748:              slli         zero, zero, 24
                  srai         tp, t1, 9
                  xor          t3, ra, t4
                  or           a0, a5, s0
                  srli         s1, sp, 8
                  and          a3, t0, ra
                  slti         s1, a7, 436
                  auipc        s11, 583971
                  beq          t2, s0, 760f
                  xor          a0, s9, t1
                  auipc        s8, 360875
                  bltu         s3, t0, 762f
760:              auipc        gp, 363840
                  or           s6, s2, a2
762:              lui          t1, 581654
763:              or           s6, a7, s2
                  xor          zero, a1, a0
                  and          gp, a7, s7
                  sra          zero, a6, zero
                  auipc        t5, 880822
                  xori         s7, a3, 1884
                  slti         a1, t0, 1697
                  and          tp, ra, s6
                  sra          t6, t5, s1
                  blt          s10, s9, 775f
                  sub          t1, t1, a2
                  sll          t4, t6, t6
775:              beq          s3, t3, 793f
                  blt          t3, t5, 794f
                  xor          s1, a5, a7
                  lui          a1, 496347
                  xor          zero, a4, gp
                  sltu         s0, t0, a7
                  sra          t4, a3, s6
                  nop
                  bltu         t5, a6, 786f
                  addi         ra, t5, -344
                  xor          tp, a0, a6
786:              or           s0, s1, a7
                  and          a0, a6, s5
                  sra          t0, s5, a7
                  add          s5, a3, s11
                  andi         a0, tp, -866
                  srai         a0, a6, 5
                  sltu         s9, s1, a6
793:              beq          a6, s2, 797f
794:              bne          t4, s10, 809f
                  xor          s7, s6, a4
                  addi         a0, a4, 1788
797:              srai         s1, s4, 11
                  xor          t5, tp, a7
                  srai         a1, a5, 26
                  srl          a6, t4, t6
                  lui          t4, 611778
                  lui          s6, 120819
                  addi         s7, s1, 1460
                  bgeu         sp, a1, 805f
805:              sltiu        ra, t2, 616
                  auipc        s7, 816333
                  xor          t5, t6, s2
                  srl          a0, zero, t5
809:              sra          t4, a3, t4
                  xori         s7, s8, -1889
                  add          s7, gp, s10
                  sra          s1, zero, a7
                  slti         s2, t4, 1365
                  sltu         a4, a6, s3
                  blt          a1, a6, 827f
                  xori         s1, s7, 224
                  xori         s8, a6, 1087
                  bne          a5, s5, 823f
                  ori          s7, s0, -1137
                  beq          s11, t0, 840f
                  nop
                  addi         a6, a7, 624
823:              and          t6, s1, a4
                  slli         a4, s5, 12
                  lui          s0, 873801
                  add          s5, s10, a2
827:              auipc        t1, 649780
                  blt          ra, t4, 831f
                  addi         a1, a2, -1065
                  srl          a2, s2, t6
831:              and          gp, s0, gp
                  ori          s9, t4, 1648
                  sltu         ra, t1, t4
                  sub          t5, s8, s3
                  blt          a0, a1, 846f
                  lui          t0, 477847
                  slt          s3, t2, t5
                  xor          t0, t6, t4
                  bltu         s6, s1, 845f
840:              srli         t1, tp, 4
                  sltiu        a4, t4, 749
                  sra          s2, s0, s1
                  slli         a1, s2, 20
                  lui          s11, 963829
845:              slti         s9, s4, 566
846:              or           s3, t1, s4
                  and          s6, s10, a7
                  bgeu         t0, a4, 856f
                  xor          zero, ra, sp
                  slti         t4, gp, 1414
                  bne          s1, t5, 871f
                  sra          a4, s9, t5
                  sll          t5, a7, s7
                  nop
                  beq          sp, s2, 874f
856:              blt          a4, gp, 861f
                  blt          s2, t6, 874f
                  andi         s5, a0, 115
                  xori         t1, s10, -328
                  bgeu         a2, t2, 865f
861:              blt          s10, s2, 879f
                  sltu         ra, a3, tp
                  srai         t4, a0, 7
                  sra          a1, s10, a3
865:              andi         gp, t4, -1717
                  or           a4, s7, s5
                  xori         s9, gp, 468
                  ori          t5, a3, -1099
                  sltu         t3, t5, a4
                  srli         t5, t3, 13
871:              or           s5, t4, t6
                  xor          s2, s9, t5
                  srai         t4, s2, 31
874:              ori          tp, a0, 474
                  bltu         a3, a5, 882f
                  addi         a2, s3, -133
                  srli         a6, s0, 3
                  slt          t6, s5, s9
879:              ori          t0, s4, -697
                  bgeu         a4, t0, 889f
                  xor          s3, a6, a1
882:              blt          s4, t3, 883f
883:              add          s9, a5, s3
                  bltu         a1, zero, 898f
                  srai         s9, s9, 3
                  srli         s3, s7, 29
                  sub          s2, gp, s2
                  and          s7, sp, a1
889:              sltu         s6, zero, a2
                  bltu         t2, t0, 895f
                  sltu         a3, t6, t4
                  bge          s2, t6, 911f
                  sll          a2, zero, a4
                  slli         t0, a6, 7
895:              xori         s11, s6, 382
                  beq          s3, s8, 902f
                  sub          s4, s9, ra
898:              slli         s11, s9, 19
                  bltu         s7, t3, 911f
                  bgeu         s2, s3, 903f
                  andi         s5, t3, 989
902:              beq          tp, s5, 906f
903:              sub          s7, t4, s0
                  sltiu        a3, t6, -1071
                  slt          s2, s0, s9
906:              sub          s3, t2, a5
                  or           t1, ra, t6
                  ori          s2, a2, -1893
                  lui          ra, 703374
                  xor          s9, t5, a3
911:              sub          s6, t6, s11
                  ori          s8, a4, 321
                  auipc        tp, 935642
                  slt          t1, t3, a7
                  slli         s9, a2, 28
                  addi         tp, t0, -1719
                  bltu         s0, s9, 920f
                  bltu         t3, a4, 937f
                  nop
920:              srl          t0, s10, zero
                  ori          s5, sp, -1716
                  sra          a0, t3, t5
                  slt          a3, t0, s11
                  bne          s4, a3, 929f
                  bge          s5, a4, 926f
926:              addi         s3, s7, -1743
                  addi         s4, t5, -687
                  sll          t6, t6, s2
929:              srl          a0, t6, a0
                  ori          t4, t4, -715
                  nop
                  andi         s11, s4, -414
                  nop
                  srl          t3, s5, s0
                  xor          a1, a7, t3
                  and          s4, t0, s5
937:              add          zero, s2, tp
                  addi         s2, a2, 1494
                  sra          s6, ra, s6
                  or           s0, a3, t5
                  addi         s1, t0, 283
                  slti         s8, t4, -219
                  bne          t1, t4, 946f
                  bgeu         t1, tp, 963f
                  bgeu         t6, t1, 963f
946:              slli         sp, s9, 14
                  or           sp, t2, a3
                  addi         s4, t3, 816
                  xori         ra, a3, -834
                  bgeu         t3, gp, 959f
                  slti         t1, a3, 656
                  srli         t4, ra, 16
                  blt          a2, a0, 954f
954:              add          t0, tp, s7
                  beq          s4, s5, 961f
                  xori         t5, t4, -403
                  slt          t3, a5, ra
                  bltu         a2, s0, 978f
959:              and          s6, a2, gp
                  sub          s1, s10, a3
961:              sltu         a4, zero, s8
                  or           s5, a6, sp
963:              or           a0, s8, t6
                  bge          sp, sp, 967f
                  srai         gp, t6, 6
                  bge          a6, s0, 971f
967:              lui          s1, 411410
                  addi         s1, t5, 589
                  srli         t2, a2, 23
                  slti         a3, s0, -969
971:              bge          t6, ra, 983f
                  bltu         a6, t2, 977f
                  bne          t4, t2, 979f
                  or           a4, a0, t4
                  srli         a2, gp, 24
                  bgeu         a7, t3, 987f
977:              blt          s4, s9, 980f
978:              srai         ra, s6, 5
979:              auipc        s4, 616433
980:              xori         zero, t6, 1372
                  ori          s5, a6, -926
                  bltu         s9, t2, 997f
983:              lui          t0, 135013
                  bne          tp, s5, 991f
                  slli         t6, sp, 22
                  blt          t6, a7, 1004f
987:              bge          s11, a6, 992f
                  nop
                  nop
                  ori          a2, s8, -1689
991:              sra          a6, a6, a5
992:              nop
                  bge          sp, a2, 1005f
                  bne          s10, gp, 1014f
                  sll          s7, a5, t0
                  addi         s11, a4, -1775
997:              bne          t1, s7, 1000f
                  sub          zero, s4, s8
                  lui          t1, 261789
1000:             sltu         a4, t1, a1
                  bltu         ra, t6, 1018f
                  bltu         a0, a7, 1010f
                  lui          s5, 824823
1004:             xor          s11, s9, s10
1005:             slli         a4, s0, 22
                  srai         s7, s2, 25
                  bge          a7, tp, 1025f
                  add          t0, t1, s11
                  srl          a4, s0, a2
1010:             sltiu        s0, s1, -1644
                  bgeu         s2, t3, 1025f
                  sra          tp, a0, sp
                  and          t3, t4, s9
1014:             auipc        a2, 876699
                  bge          a3, t0, 1020f
                  slt          s3, t4, a2
                  auipc        ra, 765394
1018:             add          t6, zero, sp
                  sltu         s1, s4, t6
1020:             xor          ra, a6, gp
                  slti         s3, s8, -899
                  ori          t1, a1, -1103
                  sub          a4, t3, a1
                  srl          s0, s8, gp
1025:             xor          a1, t3, ra
                  beq          a2, a0, 1038f
                  auipc        t6, 884238
                  xori         a2, s10, 1054
                  bne          s0, t2, 1032f
                  xor          s9, a6, a2
                  bgeu         s11, t3, 1045f
1032:             srli         t2, t2, 24
                  slti         s8, s8, 1125
                  sltu         a4, a3, a3
                  beq          zero, s9, 1044f
                  slli         s0, ra, 26
                  xor          t1, a4, s0
1038:             and          s3, ra, t2
                  blt          zero, ra, 1054f
                  addi         gp, t2, 753
                  auipc        ra, 310589
                  ori          gp, t1, -190
                  srai         tp, s7, 23
1044:             ori          t2, t4, -869
1045:             sltiu        t6, a1, -1679
                  sra          tp, sp, s4
                  sltiu        ra, s4, -485
                  sub          s8, s0, s6
                  xor          zero, a4, gp
                  slti         zero, s3, -692
                  bgeu         t4, a5, 1068f
                  xori         a4, s6, -294
                  bltu         s0, zero, 1072f
1054:             bltu         s3, s0, 1055f
1055:             ori          s7, a5, 999
                  srai         a2, s1, 13
                  beq          t3, s4, 1062f
                  slti         ra, s6, -1526
                  beq          ra, s3, 1064f
                  sltiu        a6, gp, 494
                  lui          a0, 391452
1062:             srli         tp, a0, 10
                  bge          s6, a5, 1069f
1064:             addi         zero, sp, 517
                  blt          gp, a1, 1066f
1066:             xor          sp, s10, s1
                  and          s9, tp, s2
1068:             bne          s4, a2, 1088f
1069:             add          tp, t1, s0
                  sra          a4, s11, a5
                  bge          s6, sp, 1074f
1072:             lui          s3, 658593
                  xor          s2, s8, t2
1074:             xori         s9, s3, -876
                  ori          sp, a7, -311
                  addi         t1, a1, -428
                  bgeu         s9, sp, 1097f
                  bne          sp, a5, 1083f
                  sub          a3, s11, a7
                  auipc        a6, 863796
                  andi         a4, zero, -1158
                  slt          a0, sp, s0
1083:             addi         s9, tp, -1287
                  or           s3, sp, s11
                  xor          tp, tp, a5
                  srl          s0, s11, t3
                  lui          s3, 433933
1088:             slt          s11, a6, s1
                  auipc        gp, 566170
                  or           a0, s1, a1
                  sub          zero, s4, s0
                  sub          s2, a4, a4
                  sra          t5, s3, s6
                  addi         ra, a4, 1759
                  beq          gp, t1, 1113f
                  srai         t2, s2, 17
1097:             sltiu        ra, ra, -1638
                  bgeu         a5, gp, 1116f
                  lui          a3, 398059
                  blt          s1, s8, 1107f
                  srl          s6, t4, zero
                  ori          s11, t4, -1109
                  bltu         s7, gp, 1107f
                  slt          a6, t0, gp
                  sra          s6, gp, a1
                  andi         s7, s4, 271
1107:             slti         tp, s11, 1930
                  blt          zero, a6, 1116f
                  ori          zero, t0, -496
                  xori         s8, ra, -838
                  sltiu        t0, s4, 1448
                  sra          t4, s3, gp
1113:             sltiu        gp, t1, -731
                  srai         t5, s1, 21
                  blt          s4, s2, 1118f
1116:             sltiu        a6, a4, 1312
                  xori         s6, s11, -1982
1118:             slt          a1, zero, s11
                  sll          t1, a2, gp
                  slti         a0, s5, -704
                  ori          a6, t6, -1430
                  bgeu         s4, t4, 1140f
                  add          a4, s1, t2
                  nop
                  addi         t0, ra, 1836
sub_5_7:          jal          t1, 3f
0:                jal          ra, 9f
1:                jal          t0, 5f
2:                jal          ra, 0b
3:                jal          ra, 8f
4:                jal          ra, 6f
5:                jal          s1, 7f
6:                jal          ra, 2b
7:                jal          ra, 10f
8:                jal          t4, 4b
9:                jal          t2, 1b
10:               or           s9, s8, t0
                  srai         t0, t2, 26
                  sltiu        t2, s9, 2015
                  srli         t3, s5, 12
                  beq          s7, a6, 1132f
                  srl          t0, a7, t3
                  auipc        tp, 467023
1132:             ori          t0, a5, -715
                  sltu         s6, s1, a1
                  bgeu         s11, a5, 1145f
                  andi         s8, s5, -820
                  addi         t4, s8, -1860
                  nop
                  bge          a4, a4, 1144f
                  bltu         t6, s8, 1142f
1140:             bne          t1, s9, 1152f
                  sra          ra, s0, s5
1142:             sll          ra, s9, s2
                  slt          s1, a6, s11
1144:             addi         tp, t0, -1394
1145:             lui          s11, 625150
                  nop
                  slli         t2, t2, 10
                  and          s3, sp, s11
                  beq          zero, a4, 1168f
                  auipc        a1, 936147
                  andi         a1, s10, 1861
1152:             or           zero, s7, s8
                  slti         s11, t2, -1662
                  ori          s2, s1, 1391
                  sra          s6, ra, a2
                  srli         t5, a6, 8
                  bltu         t1, s6, 1175f
                  or           t3, s8, s11
                  bge          zero, t0, 1162f
                  slt          s5, t6, a2
                  srli         s3, sp, 17
1162:             bgeu         a0, s1, 1168f
                  bge          a2, t5, 1168f
                  srl          t6, s11, s11
                  slt          s2, s10, s0
                  blt          a7, t4, 1167f
1167:             sll          t1, t1, t1
1168:             or           s0, zero, s9
                  auipc        a3, 565627
                  sub          a1, s0, s10
                  or           gp, a5, t4
                  andi         s3, t6, 1501
                  beq          t1, a3, 1178f
                  add          s0, t4, a3
1175:             bltu         gp, a6, 1192f
                  bge          a5, s7, 1182f
                  xor          s7, s1, sp
1178:             bltu         s10, t5, 1189f
                  srai         s2, s11, 13
                  add          a2, s5, gp
                  srli         t6, s6, 29
1182:             slti         t6, t0, -601
                  beq          a0, a4, 1202f
                  nop
                  sltu         sp, a7, t3
                  bne          ra, s6, 1204f
                  nop
                  addi         s3, a7, -1965
1189:             sltiu        s7, s4, -1079
                  sra          ra, t1, s8
                  beq          a5, gp, 1199f
1192:             sll          gp, a1, s6
                  or           s4, s5, t1
                  beq          t1, s7, 1199f
                  xor          a6, s0, a5
                  auipc        a2, 963216
                  xor          gp, s0, a0
                  sll          a0, a3, s3
1199:             sltu         s3, t5, t5
                  srai         s11, a3, 27
                  or           a2, s7, s11
1202:             bge          ra, a6, 1217f
                  andi         s7, a0, -1809
1204:             and          a4, s4, tp
                  sra          s3, s7, s0
                  auipc        s5, 195745
                  sltu         ra, a4, a4
                  sra          s4, ra, s2
                  andi         s8, t6, -1142
                  addi         t4, t3, -1323
                  srl          a3, a5, t2
                  bgeu         ra, t6, 1213f
1213:             slt          a0, s6, s8
                  lui          s9, 598996
                  xori         s6, zero, 1080
                  beq          s6, a4, 1223f
1217:             slti         s7, s7, -451
                  lui          t0, 1007119
                  slt          s7, zero, zero
                  sltiu        s11, t4, 347
                  bne          ra, t2, 1239f
                  andi         s0, t5, 761
1223:             sll          s0, s7, s11
                  ori          s7, sp, 1452
                  xori         a3, a3, -447
                  lui          a6, 484938
                  add          a2, s8, t5
                  sra          a1, sp, s10
                  blt          s2, sp, 1249f
                  bne          s8, gp, 1244f
                  nop
                  srai         t5, a4, 11
                  sra          t1, gp, a4
                  bgeu         s10, s4, 1237f
                  bne          a3, t1, 1254f
                  xor          s9, t4, s7
1237:             xori         a1, s7, -690
                  srai         sp, s8, 18
1239:             sltiu        a4, s10, 594
                  and          t3, t2, t3
                  beq          t5, a7, 1261f
                  xori         a4, a6, 1674
                  sltu         a2, a6, s1
1244:             nop
                  or           t0, a4, t5
                  xor          t4, a2, s7
                  slt          a2, t1, t1
                  beq          a6, a3, 1257f
1249:             add          a2, a2, s3
                  sra          a2, a4, a3
                  sltu         s5, t2, zero
                  sltu         a6, s2, t0
                  bgeu         s5, s0, 1257f
1254:             lui          zero, 660185
                  xori         s6, a2, 355
                  add          zero, a1, ra
1257:             lui          a4, 400764
                  add          sp, ra, a3
                  ori          a1, a4, -151
                  srl          s3, t0, t1
1261:             xori         a6, a6, 457
                  xori         s9, t5, -1198
                  nop
                  or           t4, a3, s0
                  sub          s6, sp, s10
sub_5_12:         jal          t1, 12f
0:                jal          tp, 9f
1:                jal          s5, 2f
2:                jal          ra, 14f
3:                jal          s6, 8f
4:                jal          a4, 20f
5:                jal          ra, 1b
6:                jal          ra, 16f
7:                jal          ra, 19f
8:                jal          ra, 0b
9:                jal          t0, 23f
10:               jal          ra, 21f
11:               jal          ra, 7b
12:               jal          ra, 3b
13:               jal          ra, 4b
14:               jal          ra, 15f
15:               jal          ra, 17f
16:               jal          s1, 5b
17:               jal          ra, 10b
18:               jal          s8, 22f
19:               jal          ra, 18b
20:               jal          s11, 11b
21:               jal          t1, 24f
22:               jal          t1, 6b
23:               jal          ra, 13b
24:               srai         s7, s5, 19
                  bne          s7, s6, 1269f
                  addi         s4, s8, -944
                  andi         a2, s4, -784
sub_5_21:         jal          t1, 2f
0:                jal          t5, 6f
1:                jal          t1, 14f
2:                jal          ra, 12f
3:                jal          t3, 21f
4:                jal          ra, 18f
5:                jal          t1, 1b
6:                jal          t1, 7f
7:                jal          ra, 4b
8:                jal          t4, 20f
9:                jal          t4, 11f
10:               jal          ra, 8b
11:               jal          ra, 0b
12:               jal          t1, 19f
13:               jal          ra, 3b
14:               jal          t1, 10b
15:               jal          ra, 16f
16:               jal          ra, 9b
17:               jal          ra, 15b
18:               jal          ra, 5b
19:               jal          s11, 17b
20:               jal          ra, 13b
21:               andi         gp, s4, 180
1269:             beq          s1, tp, 1281f
                  xori         s1, t5, -1938
                  add          a0, s8, t6
                  beq          a2, a3, 1275f
                  srai         s5, a0, 9
                  xor          t2, a2, s1
1275:             xori         a2, s8, -454
                  bne          t5, s6, 1281f
                  bge          s0, s11, 1289f
                  bne          ra, a4, 1281f
                  bgeu         s11, a4, 1285f
                  xor          t5, t1, a1
1281:             bge          s3, t1, 1284f
                  lui          s6, 512057
                  bgeu         s7, s10, 1303f
1284:             sltiu        t1, s6, -954
1285:             add          a3, zero, t5
                  srli         s9, s11, 23
                  sltiu        t2, s10, -54
                  slti         t2, s3, -588
1289:             srl          s5, a2, t4
                  ori          t4, a1, 550
                  srai         s1, ra, 17
                  xor          t0, ra, a7
                  andi         t3, t4, 188
                  and          t0, t5, s11
                  andi         s6, s1, -560
                  sll          s0, t0, a1
                  add          s5, s11, s0
                  slt          sp, t6, s0
                  or           t0, a4, s2
                  sra          s5, gp, a4
                  slti         s3, s8, -1250
                  sltu         a6, s8, sp
1303:             addi         a6, tp, 460
                  or           s9, a0, t1
                  nop
                  bltu         s10, ra, 1312f
                  sub          s5, s2, a6
                  srli         t4, a3, 29
                  slt          a4, s5, t4
                  bge          s10, a5, 1329f
                  nop
1312:             bge          a4, gp, 1324f
                  ori          a0, a6, 467
                  lui          t4, 816922
                  bltu         t4, a7, 1326f
                  blt          t0, t6, 1319f
                  bgeu         tp, a0, 1321f
                  nop
1319:             sll          s6, s8, a3
                  bne          t1, tp, 1325f
1321:             srl          s11, s9, s9
                  beq          t2, s5, 1327f
                  andi         a6, s7, -1322
1324:             srai         s5, s11, 1
1325:             bltu         t1, t2, 1344f
1326:             srai         a0, t4, 24
1327:             blt          s0, zero, 1332f
                  xor          t1, a5, s2
sub_5_9:          jal          t1, 9f
0:                jal          t4, 11f
1:                jal          s8, 7f
2:                jal          t4, 5f
3:                jal          ra, 4f
4:                jal          ra, 6f
5:                jal          ra, 10f
6:                jal          ra, 13f
7:                jal          ra, 3b
8:                jal          t1, 1b
9:                jal          tp, 2b
10:               jal          ra, 12f
11:               jal          gp, 8b
12:               jal          t1, 0b
13:               auipc        s3, 229792
1329:             or           s4, t4, s0
                  bge          a3, s3, 1345f
                  beq          a1, s2, 1349f
1332:             bge          ra, a1, 1333f
1333:             bltu         s3, a7, 1336f
                  srai         t1, tp, 0
                  xor          sp, a0, t5
1336:             slt          s8, a1, s6
                  xor          t2, t4, s7
                  beq          t4, s9, 1358f
                  sra          s11, s1, s2
                  bltu         a2, s11, 1348f
                  sra          a1, s4, s0
                  bge          t5, s9, 1359f
                  sltiu        a3, s9, 1327
1344:             addi         a6, t1, 385
1345:             addi         a3, t3, -1720
                  or           a2, t1, t4
                  nop
1348:             sll          sp, s1, a0
1349:             srai         s8, s0, 4
                  sra          tp, s8, t2
                  blt          a1, a3, 1369f
                  bgeu         s10, a7, 1355f
                  xor          a2, s3, a4
                  bge          gp, s2, 1368f
1355:             blt          a3, t6, 1360f
                  beq          t3, gp, 1365f
                  bne          s7, t0, 1369f
1358:             bne          a4, t0, 1361f
1359:             slti         t1, s10, 1827
1360:             sll          a6, a7, t2
1361:             lui          t6, 126214
                  beq          s11, ra, 1363f
1363:             add          s0, a4, s6
                  nop
1365:             sltiu        a0, s10, -1915
                  sll          a1, s7, t4
                  sra          s3, t5, s2
1368:             blt          s2, s1, 1374f
1369:             sub          s11, a4, s4
                  lui          a6, 21622
                  blt          t4, t6, 1374f
                  bgeu         s10, sp, 1374f
                  beq          sp, a0, 1374f
1374:             or           s6, s10, a0
                  xor          tp, t6, t3
                  srli         t4, a4, 1
                  lw           t1, 4(s10)
                  lui          a1, 853349
                  nop
                  addi         s10, s10, 48
                  andi         t0, a2, -701
1963:             addi x7, x6, 1
1963:             jalr x7, x7, 0
sub_3:            blt          s10, a0, sub_3_stack_p
sub_3_stack_p:    addi         s10, s10, -28
                  ori          tp, t1, 1622
                  addi         a2, s8, -1785
                  and          zero, a5, t6
                  lui          t5, 301175
                  sw           t1, 4(s10)
                  sltiu        sp, s10, 1069
                  srli         s7, t5, 19
                  xori         s0, a0, 330
                  srl          t2, s6, s5
                  sltiu        t1, a1, 759
                  or           a3, s6, a5
                  add          s1, gp, a4
                  blt          a1, a3, sub_3_j7 #branch to jump instr
                  sra          a2, ra, s3
                  srai         s4, s0, 7
                  srai         a4, s1, 16
sub_3_j7:         jal          t1, sub_5 #jump sub_3 -> sub_5
sub_3_0:          jal          t1, 1f
0:                jal          ra, 14f
1:                jal          ra, 21f
2:                jal          t5, 3f
3:                jal          sp, 10f
4:                jal          ra, 23f
5:                jal          t1, 13f
6:                jal          a6, 8f
7:                jal          ra, 20f
8:                jal          ra, 2b
9:                jal          ra, 18f
10:               jal          ra, 4b
11:               jal          t0, 0b
12:               jal          t1, 5b
13:               jal          s4, 24f
14:               jal          sp, 19f
15:               jal          ra, 16f
16:               jal          t1, 11b
17:               jal          ra, 9b
18:               jal          t6, 22f
19:               jal          ra, 6b
20:               jal          t1, 25f
21:               jal          tp, 17b
22:               jal          ra, 12b
23:               jal          ra, 7b
24:               jal          ra, 15b
25:               or           t6, s2, a6
sub_3_6:          jal          t1, 19f
0:                jal          t0, 10f
1:                jal          ra, 4f
2:                jal          ra, 5f
3:                jal          t1, 12f
4:                jal          s5, 2b
5:                jal          ra, 9f
6:                jal          t1, 11f
7:                jal          ra, 15f
8:                jal          t0, 6b
9:                jal          s8, 13f
10:               jal          ra, 16f
11:               jal          t1, 7b
12:               jal          t5, 1b
13:               jal          a1, 20f
14:               jal          t0, 8b
15:               jal          tp, 21f
16:               jal          gp, 3b
17:               jal          gp, 14b
18:               jal          t1, 17b
19:               jal          s4, 0b
20:               jal          t0, 18b
21:               ori          t4, s1, -1636
sub_3_3:          jal          t1, 14f
0:                jal          ra, 19f
1:                jal          t1, 10f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          s5, 17f
5:                jal          sp, 8f
6:                jal          ra, 2b
7:                jal          s8, 5b
8:                jal          ra, 1b
9:                jal          s8, 18f
10:               jal          s4, 6b
11:               jal          ra, 4b
12:               jal          ra, 20f
13:               jal          s2, 9b
14:               jal          tp, 11b
15:               jal          ra, 13b
16:               jal          a6, 7b
17:               jal          t1, 16b
18:               jal          ra, 12b
19:               jal          t1, 15b
20:               auipc        a1, 305808
sub_3_1:          jal          t1, 12f
0:                jal          a2, 16f
1:                jal          ra, 15f
2:                jal          ra, 23f
3:                jal          t0, 22f
4:                jal          ra, 5f
5:                jal          ra, 19f
6:                jal          s2, 25f
7:                jal          t1, 20f
8:                jal          ra, 10f
9:                jal          t4, 2b
10:               jal          ra, 21f
11:               jal          t0, 24f
12:               jal          ra, 1b
13:               jal          ra, 9b
14:               jal          ra, 7b
15:               jal          s6, 13b
16:               jal          ra, 14b
17:               jal          s8, 18f
18:               jal          ra, 11b
19:               jal          ra, 3b
20:               jal          ra, 6b
21:               jal          ra, 0b
22:               jal          ra, 8b
23:               jal          ra, 17b
24:               jal          t5, 4b
25:               and          gp, s2, t3
sub_3_14:         jal          t1, 12f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          t1, 0b
3:                jal          t0, 24f
4:                jal          ra, 17f
5:                jal          ra, 2b
6:                jal          s2, 3b
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          s2, 7b
10:               jal          a0, 20f
11:               jal          ra, 25f
12:               jal          ra, 22f
13:               jal          ra, 9b
14:               jal          a6, 15f
15:               jal          t1, 13b
16:               jal          a0, 21f
17:               jal          ra, 19f
18:               jal          t4, 23f
19:               jal          t1, 14b
20:               jal          ra, 16b
21:               jal          ra, 18b
22:               jal          ra, 6b
23:               jal          ra, 4b
24:               jal          ra, 5b
25:               srli         tp, s7, 29
sub_3_7:          jal          t1, 14f
0:                jal          t5, 2f
1:                jal          ra, 19f
2:                jal          tp, 5f
3:                jal          s1, 15f
4:                jal          ra, 13f
5:                jal          ra, 8f
6:                jal          t2, 0b
7:                jal          ra, 10f
8:                jal          t1, 11f
9:                jal          ra, 4b
10:               jal          ra, 9b
11:               jal          t1, 17f
12:               jal          t1, 6b
13:               jal          a2, 18f
14:               jal          s1, 16f
15:               jal          ra, 7b
16:               jal          s8, 12b
17:               jal          ra, 3b
18:               jal          ra, 1b
19:               lui          a0, 937485
sub_3_2:          jal          t1, 5f
0:                jal          ra, 12f
1:                jal          ra, 20f
2:                jal          ra, 3f
3:                jal          t1, 17f
4:                jal          a0, 15f
5:                jal          t1, 2b
6:                jal          ra, 9f
7:                jal          ra, 19f
8:                jal          t1, 13f
9:                jal          t3, 11f
10:               jal          t1, 1b
11:               jal          ra, 0b
12:               jal          t6, 7b
13:               jal          t0, 14f
14:               jal          t1, 16f
15:               jal          ra, 8b
16:               jal          ra, 6b
17:               jal          sp, 18f
18:               jal          t6, 4b
19:               jal          a0, 10b
20:               xori         s11, a1, -1782
sub_3_12:         jal          t1, 3f
0:                jal          ra, 5f
1:                jal          t1, 14f
2:                jal          a3, 11f
3:                jal          ra, 1b
4:                jal          t1, 7f
5:                jal          a2, 9f
6:                jal          ra, 17f
7:                jal          t1, 10f
8:                jal          ra, 16f
9:                jal          ra, 2b
10:               jal          ra, 8b
11:               jal          ra, 15f
12:               jal          ra, 4b
13:               jal          gp, 18f
14:               jal          t1, 0b
15:               jal          t1, 6b
16:               jal          ra, 13b
17:               jal          t1, 12b
18:               xor          t1, ra, s1
sub_3_4:          jal          t1, 22f
0:                jal          ra, 12f
1:                jal          a2, 5f
2:                jal          ra, 6f
3:                jal          s5, 15f
4:                jal          ra, 16f
5:                jal          ra, 10f
6:                jal          ra, 17f
7:                jal          s6, 8f
8:                jal          s9, 11f
9:                jal          t1, 18f
10:               jal          s8, 7b
11:               jal          ra, 21f
12:               jal          tp, 4b
13:               jal          t1, 20f
14:               jal          s0, 23f
15:               jal          t1, 2b
16:               jal          t1, 13b
17:               jal          ra, 19f
18:               jal          ra, 1b
19:               jal          ra, 9b
20:               jal          ra, 3b
21:               jal          a3, 14b
22:               jal          ra, 0b
23:               slti         t0, a3, 2000
sub_3_10:         jal          t1, 2f
0:                jal          t1, 3f
1:                jal          t0, 4f
2:                jal          sp, 17f
3:                jal          gp, 7f
4:                jal          s9, 16f
5:                jal          a4, 15f
6:                jal          s9, 18f
7:                jal          t1, 8f
8:                jal          t1, 13f
9:                jal          a2, 11f
10:               jal          s0, 12f
11:               jal          ra, 14f
12:               jal          ra, 1b
13:               jal          ra, 9b
14:               jal          s3, 10b
15:               jal          ra, 6b
16:               jal          ra, 5b
17:               jal          t1, 0b
18:               slt          tp, s11, s6
sub_3_9:          jal          t1, 5f
0:                jal          ra, 13f
1:                jal          ra, 8f
2:                jal          s7, 22f
3:                jal          ra, 23f
4:                jal          s5, 20f
5:                jal          t1, 0b
6:                jal          ra, 21f
7:                jal          s1, 3b
8:                jal          ra, 15f
9:                jal          gp, 1b
10:               jal          ra, 2b
11:               jal          ra, 4b
12:               jal          ra, 10b
13:               jal          ra, 16f
14:               jal          t1, 12b
15:               jal          ra, 6b
16:               jal          s2, 14b
17:               jal          s8, 11b
18:               jal          ra, 9b
19:               jal          a0, 7b
20:               jal          s4, 18b
21:               jal          s4, 19b
22:               jal          ra, 17b
23:               srai         s5, s2, 19
sub_3_11:         jal          t1, 6f
0:                jal          ra, 19f
1:                jal          sp, 14f
2:                jal          ra, 16f
3:                jal          a4, 15f
4:                jal          ra, 24f
5:                jal          a3, 17f
6:                jal          a6, 4b
7:                jal          ra, 2b
8:                jal          a4, 1b
9:                jal          t1, 23f
10:               jal          t4, 8b
11:               jal          ra, 12f
12:               jal          s8, 9b
13:               jal          t1, 10b
14:               jal          ra, 11b
15:               jal          t0, 0b
16:               jal          t2, 22f
17:               jal          a1, 20f
18:               jal          ra, 21f
19:               jal          tp, 25f
20:               jal          t3, 18b
21:               jal          ra, 13b
22:               jal          t4, 3b
23:               jal          t5, 7b
24:               jal          sp, 5b
25:               andi         zero, a2, -1953
sub_3_8:          jal          t1, 13f
0:                jal          sp, 2f
1:                jal          tp, 25f
2:                jal          s0, 4f
3:                jal          ra, 14f
4:                jal          a0, 6f
5:                jal          t0, 18f
6:                jal          ra, 24f
7:                jal          t1, 17f
8:                jal          ra, 5b
9:                jal          ra, 12f
10:               jal          a2, 7b
11:               jal          t1, 1b
12:               jal          ra, 15f
13:               jal          sp, 0b
14:               jal          ra, 19f
15:               jal          ra, 22f
16:               jal          gp, 11b
17:               jal          ra, 21f
18:               jal          t1, 23f
19:               jal          t1, 10b
20:               jal          ra, 8b
21:               jal          a0, 20b
22:               jal          ra, 16b
23:               jal          sp, 9b
24:               jal          tp, 3b
25:               nop
                  slli         s1, s10, 23
                  slt          a6, ra, a2
                  srli         t5, s2, 23
                  sll          s7, a2, s0
                  nop
                  xori         s8, s10, -1920
                  srli         s1, tp, 8
                  sltu         a2, s11, a5
                  srai         a3, t3, 30
                  beq          tp, s9, 15f
                  or           a2, a0, gp
                  xori         sp, a6, -1467
                  sub          s8, s7, a6
                  xori         s6, t3, 2024
                  sub          gp, s10, s0
15:               sltu         gp, s1, s11
                  srai         s0, t2, 4
                  sra          s7, a3, t6
                  lui          s8, 544199
                  blt          s11, s10, 23f
                  andi         s7, s1, 83
                  bne          t0, s9, 26f
                  add          ra, s10, s8
23:               slti         a4, a2, 1529
                  lui          t5, 247870
                  andi         s1, a4, 1629
26:               auipc        a2, 421151
                  slt          a3, s4, a4
                  srl          a0, zero, s4
                  add          t2, a0, s5
                  srli         s5, t5, 16
                  xor          t6, gp, s10
                  sltiu        t6, a7, 1854
                  add          s2, a1, s8
                  bge          s4, s9, 46f
                  addi         t2, gp, 1332
                  sll          s7, s2, a1
                  sra          a2, s11, s1
                  blt          t6, t4, 43f
                  blt          s9, sp, 58f
                  and          a3, s0, s2
                  sra          a3, ra, tp
                  and          s6, s7, t1
43:               xori         a6, a3, 1782
                  sltiu        gp, a4, -845
                  slli         t1, a5, 7
46:               slli         s0, sp, 9
                  sub          a3, s4, zero
                  bne          t5, sp, 64f
                  sltu         s6, gp, t0
                  sll          a3, t6, a5
                  beq          t5, t2, 62f
                  slt          s9, s7, s8
                  andi         s0, tp, 1649
                  sra          tp, t3, s2
                  and          tp, s8, a0
                  sub          zero, s2, s0
                  sra          s11, ra, t5
58:               srai         s0, a6, 23
                  nop
                  xor          s7, a1, t5
                  sltu         s0, a2, sp
62:               and          sp, a0, s2
                  addi         sp, t4, -114
64:               srl          t3, s1, s6
                  sltiu        t6, zero, -1009
                  addi         t2, a5, 1845
                  add          s4, ra, tp
                  xor          tp, s8, sp
                  add          s0, s2, tp
                  sltiu        t6, ra, -555
                  nop
                  andi         t0, tp, 1850
                  xori         gp, zero, -1333
                  srai         a4, a0, 22
                  sltiu        t5, s2, -374
                  sltiu        gp, a0, 75
                  nop
                  srli         t4, t2, 22
                  nop
                  slli         s3, t2, 24
                  add          t5, s0, t3
                  slti         s5, s10, 164
                  bge          a3, a0, 89f
                  or           s6, a3, s2
                  auipc        sp, 52271
                  srli         ra, a4, 4
                  nop
                  addi         s3, s8, -1365
89:               auipc        tp, 967159
                  nop
                  xori         gp, a2, 1146
                  beq          a1, a2, 109f
                  srai         s4, tp, 14
                  beq          t0, t3, 106f
                  sub          s1, s8, s6
                  sltiu        s4, s9, 1425
                  sltu         a6, sp, t4
                  beq          s2, s2, 105f
                  srl          ra, s8, t6
                  srl          t6, a4, a3
                  lui          a3, 254403
                  srl          s9, t1, a6
                  sra          s4, s9, a4
                  or           s1, t5, a5
105:              beq          a0, s11, 115f
106:              bne          s11, t4, 122f
                  sll          s2, a2, gp
                  sra          s2, s10, t6
109:              bne          sp, s11, 117f
                  slt          t3, t5, a2
                  slli         s0, t4, 10
                  srli         t4, a4, 21
                  slt          a4, a2, a5
                  sub          s0, t2, a6
115:              sltu         t0, s11, a6
                  srai         a6, ra, 26
117:              sra          zero, a0, s2
                  slt          a4, t2, s3
                  sub          s5, t1, s2
                  beq          s6, a4, 133f
                  lui          a2, 984801
122:              blt          t1, t1, 130f
                  slti         s8, s7, -1228
                  srli         zero, tp, 5
                  sra          t5, t1, s0
                  addi         t3, ra, -923
                  beq          a4, t5, 144f
                  xor          a0, t4, gp
                  xori         t5, a7, -1839
130:              sltu         s9, s1, s0
                  bne          s7, s4, 133f
                  or           s11, s5, t2
133:              auipc        s3, 912270
                  slli         gp, t6, 5
                  bgeu         zero, s6, 143f
                  andi         t1, t6, 1924
                  auipc        s1, 430961
                  srli         zero, t0, 22
                  bltu         s10, t0, 157f
                  add          a6, a2, s6
                  slti         s8, s8, -1645
                  bge          t3, a0, 153f
143:              lui          a0, 663442
144:              nop
                  and          t3, s0, a2
                  sll          a1, t5, t1
                  blt          s0, t4, 166f
                  bne          ra, tp, 154f
                  xor          a6, sp, ra
                  srli         s1, s6, 7
                  beq          t5, a7, 170f
                  srli         a2, t5, 14
153:              add          s5, t2, s9
154:              auipc        s1, 40022
                  add          gp, t3, ra
                  sltu         s9, ra, t0
157:              bgeu         a7, gp, 173f
                  xori         a6, t0, 1083
                  addi         sp, t0, -1496
                  nop
                  srl          a1, sp, a2
                  lui          sp, 937284
                  slt          zero, s4, a2
                  add          zero, s0, s0
                  nop
166:              srai         t5, t3, 2
                  beq          a5, a7, 182f
sub_3_13:         jal          t1, 8f
0:                jal          ra, 12f
1:                jal          s11, 5f
2:                jal          ra, 21f
3:                jal          t1, 15f
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          t1, 16f
7:                jal          s2, 3b
8:                jal          a2, 2b
9:                jal          ra, 17f
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          ra, 4b
13:               jal          t6, 7b
14:               jal          t1, 19f
15:               jal          a3, 0b
16:               jal          tp, 20f
17:               jal          ra, 1b
18:               jal          t1, 13b
19:               jal          t2, 22f
20:               jal          ra, 18b
21:               jal          ra, 6b
22:               slti         gp, s0, 27
                  sub          s6, a7, t0
                  xor          ra, s4, s3
170:              sra          t5, t1, s10
                  sub          s9, s0, ra
                  sll          t6, a2, a2
173:              sltu         t4, s7, t6
                  nop
                  ori          s7, s1, 1856
                  bltu         t3, gp, 184f
                  and          a4, tp, t0
                  lui          s7, 548239
                  xor          s7, t3, t6
                  and          a3, s11, s9
                  sll          gp, s0, s6
182:              xori         t4, s11, 1079
                  or           s8, s4, s2
184:              sll          a6, s4, s2
                  ori          s7, ra, -1130
                  and          a0, ra, s9
                  xor          s1, s2, s1
                  bltu         s3, ra, 200f
                  sub          s3, t4, t2
                  srli         s8, a5, 6
                  slt          a6, s6, a4
                  sltu         s6, s2, s6
                  slli         a6, s7, 29
                  blt          s5, s8, 202f
                  and          a3, a3, t3
                  sltu         s3, t2, zero
                  and          t4, a5, s2
                  srai         t0, a1, 0
                  sra          a4, s6, s10
200:              nop
                  beq          zero, t3, 206f
202:              sub          s0, a3, a2
                  nop
                  addi         s0, a3, 1900
                  bltu         zero, s3, 213f
206:              blt          s10, t1, 222f
                  slti         a0, t4, -1783
                  blt          a6, t5, 220f
                  ori          ra, s5, 1881
                  slli         t1, t0, 0
                  bgeu         s7, s7, 217f
                  bge          ra, zero, 231f
213:              nop
                  bge          s1, a6, 230f
                  add          t5, s10, s10
                  sub          ra, a4, a7
217:              slt          a1, s6, s9
                  addi         a2, s1, -1958
                  srl          s1, t4, gp
220:              srli         a2, t2, 18
                  xor          t4, t5, t6
222:              ori          t1, s8, -1003
                  and          s1, ra, t1
                  andi         s7, a2, -467
                  bge          t2, ra, 232f
                  sra          a1, s11, a1
                  xor          sp, s11, s0
                  slti         t0, s10, 1603
                  bgeu         a3, t3, 240f
230:              nop
231:              add          s7, t0, s1
232:              xori         t2, t1, 573
                  srai         t1, gp, 16
                  bltu         t2, s7, 245f
                  bgeu         a7, s2, 250f
                  xor          t3, a3, a5
                  sub          t6, s2, s2
                  and          ra, s10, s5
                  addi         tp, gp, -290
240:              lui          s7, 59051
                  blt          s8, s5, 243f
                  blt          t4, gp, 259f
243:              xori         a6, t2, 1614
                  bge          ra, a1, 250f
245:              or           gp, s5, zero
                  srl          t1, a2, s8
                  bne          s2, s8, 255f
                  slli         s0, ra, 24
                  bge          s5, a3, 262f
250:              andi         t5, s5, 1167
                  sra          s3, a0, t5
                  bge          s4, s8, 258f
                  xor          gp, a6, t0
                  bltu         s5, a6, 262f
255:              blt          s7, s10, 274f
                  andi         gp, t2, -1188
                  sltiu        s0, s4, 1269
258:              slli         sp, a7, 4
259:              sub          a0, t5, t0
                  slti         s6, t2, -1013
                  xor          t3, s4, a5
262:              andi         s2, t2, -601
                  xori         a4, s10, 1085
                  auipc        s2, 246443
                  and          tp, a4, gp
                  sltiu        s8, s11, -333
                  bne          a3, s2, 277f
                  xori         a2, s7, -912
                  addi         sp, s10, -381
                  ori          s0, t6, -1596
                  sltu         a1, t2, gp
                  slt          zero, s5, a0
                  sra          a0, t3, s2
274:              sltu         t1, s6, s9
                  srl          zero, zero, zero
                  blt          s11, a7, 284f
277:              bne          s5, t5, 289f
                  lui          a2, 551075
                  bge          s9, s9, 291f
                  xor          s8, ra, t6
                  add          t5, tp, s1
                  srli         zero, s10, 24
                  bltu         s6, s2, 288f
284:              sltu         t3, s4, a0
                  slti         s8, a6, -274
                  xori         s2, a1, 1348
                  srli         t0, a2, 11
288:              bgeu         s10, t5, 296f
289:              and          sp, t5, s1
                  srl          t2, s10, a7
291:              andi         t1, s8, 746
                  xor          t6, s3, s6
                  blt          a3, a6, 310f
                  and          s5, a3, a7
                  nop
296:              xor          t4, tp, a2
                  add          a1, ra, gp
                  sltu         t6, a1, a4
                  srl          s5, s6, s2
                  slt          zero, s2, a2
                  addi         t4, t5, 833
                  blt          ra, t5, 306f
                  addi         s11, s11, 1741
                  xor          t5, ra, sp
                  add          s8, t1, t4
306:              bge          s7, s5, 325f
                  xor          t6, a1, t2
                  srli         ra, t5, 17
                  bge          t4, t6, 327f
310:              lui          s1, 36911
                  addi         s7, t1, 1818
                  srl          zero, s2, s11
                  or           s6, s11, a7
                  srai         a2, a2, 1
                  bne          sp, s11, 331f
                  and          a2, s5, s4
                  slti         s5, s11, -20
                  bne          s9, s3, 326f
                  bne          a4, s3, 325f
                  and          s0, a5, s0
                  slti         gp, a7, -1097
                  lui          t0, 353406
                  slli         t6, s11, 8
                  srai         a1, zero, 0
325:              addi         s3, gp, -1248
326:              add          s3, s6, t4
327:              srai         a0, t6, 3
                  nop
                  bge          a0, s2, 345f
                  srai         t4, t4, 29
331:              srli         s6, a2, 6
                  sub          t4, t4, s7
                  srl          s11, t6, t4
                  blt          t3, s5, 342f
                  slli         t0, a2, 14
                  xori         t1, s0, 651
                  srl          s11, t6, s8
                  sll          t2, s5, s10
                  bne          s6, s1, 354f
                  bne          gp, a5, 352f
                  sltiu        s4, s0, 1274
342:              bge          a6, s0, 358f
                  lui          sp, 467495
                  sltiu        s0, s10, 719
345:              bgeu         s2, t0, 361f
                  sub          s3, a2, a0
                  sltiu        s1, s6, -917
                  bltu         s8, ra, 359f
                  sra          t2, a6, t2
                  srai         t3, sp, 29
                  slti         a0, a3, 648
352:              sra          zero, sp, s1
                  ori          a2, s11, -524
354:              bltu         a6, s5, 367f
                  lui          s6, 751550
                  sltiu        s5, t4, 1945
                  addi         t2, t0, -1492
358:              or           s8, a6, a2
359:              and          t0, a4, s6
                  slt          s3, a0, t2
361:              bge          a4, a1, 373f
                  nop
                  ori          a1, gp, -3
                  bge          s5, a6, 381f
                  srl          t3, t4, a7
                  blt          t2, s2, 376f
367:              or           a1, t5, t5
                  bge          s10, a7, 380f
                  sll          s0, a7, tp
                  andi         a4, a6, 1092
                  nop
                  bge          s2, ra, 391f
373:              xori         s3, s2, -1717
                  addi         s4, gp, 1752
                  sltu         s3, s9, a4
376:              bltu         s7, s11, 384f
                  xor          s3, sp, a4
                  ori          t0, s9, -438
                  xori         s9, sp, -1050
380:              srl          t2, t6, s3
381:              auipc        t1, 684591
                  srl          sp, t6, a1
                  auipc        s11, 965225
384:              nop
                  sll          tp, t4, a6
                  bgeu         s2, s0, 405f
                  sub          a4, a4, zero
                  xor          s5, s10, gp
                  or           gp, s2, s11
                  ori          a6, s4, 749
391:              bne          s11, a4, 410f
                  blt          s0, a5, 396f
                  slti         s4, t0, -407
                  bge          s8, ra, 402f
                  blt          a3, s2, 401f
396:              auipc        s9, 568895
                  sub          a2, a5, a0
                  slti         s7, s3, -362
                  sltu         a2, t1, t3
                  slt          t6, gp, a5
401:              add          ra, t5, zero
402:              blt          ra, ra, 419f
                  and          s2, s7, t1
                  lui          s2, 37731
405:              or           s5, sp, s3
                  and          s0, s5, t6
                  sltu         s7, ra, t4
                  sltu         zero, a7, tp
                  xori         a3, a0, 1458
410:              bgeu         s2, s9, 417f
                  xor          a1, s5, t0
                  ori          t3, s7, -1795
                  nop
                  xor          a2, a6, s2
                  blt          a4, t5, 421f
                  sll          s3, t1, t2
417:              xori         a1, a0, 1382
                  sltiu        t1, s10, -790
419:              xor          gp, s2, t4
                  lui          a3, 610196
421:              srli         t4, t6, 16
                  beq          a1, a7, 427f
                  addi         t6, s6, -636
                  andi         s9, s4, -287
                  bne          s10, s7, 433f
                  bge          s1, t4, 431f
427:              bgeu         t6, a7, 445f
                  andi         s6, s5, 181
                  srai         s6, a7, 7
                  beq          zero, t2, 432f
431:              xor          gp, a1, s6
432:              slt          s2, t0, s6
433:              srl          s6, a7, s7
                  slt          a4, s1, a6
                  sltu         s1, s9, a0
                  bne          tp, s0, 447f
                  slt          t6, s9, a1
                  slti         s6, t6, 1397
                  andi         s7, t3, 683
                  bne          a3, a1, 447f
                  or           t0, t0, s7
                  slti         t6, t3, -776
                  slti         zero, s10, -542
                  bne          sp, t0, 456f
445:              sra          tp, t4, s6
                  lui          t3, 606680
447:              bne          ra, t3, 452f
                  lui          a2, 743212
                  nop
                  xor          s2, t1, t5
                  sub          t3, s7, s5
452:              xor          a0, s9, ra
                  bge          s0, a2, 455f
                  beq          a0, t1, 473f
455:              slt          s0, s2, s8
456:              auipc        t3, 1041830
                  ori          tp, a0, 1710
                  blt          a4, a2, 476f
                  srli         t2, a7, 28
                  sltu         t4, t6, zero
                  slti         s6, a1, -1163
                  xori         s7, zero, 2039
                  and          s11, a6, a7
                  slli         a2, t3, 27
                  beq          t1, gp, 478f
                  slli         t3, t2, 20
                  slti         a2, t6, -1621
                  bgeu         a2, a3, 474f
                  sltu         s6, s9, s1
                  srli         t4, a7, 16
                  add          s9, s1, a3
                  slti         t5, s0, -38
473:              bgeu         a6, s1, 492f
474:              bne          gp, a6, 478f
                  lui          a0, 227657
476:              bgeu         t4, s9, 488f
                  srai         s6, t1, 8
478:              or           a3, t4, s4
                  or           t0, t4, t0
                  beq          a1, t6, 496f
                  slti         s7, zero, 1140
                  xori         s8, a7, 1565
                  bgeu         s11, s0, 489f
                  slti         t5, s1, 154
                  bne          s2, t4, 501f
                  srl          t5, a0, zero
                  sltiu        t0, a4, 1179
488:              and          s5, t5, s7
489:              slti         a0, t3, -220
                  or           t2, a4, s0
                  bge          ra, a6, 503f
492:              bge          s0, s0, 497f
                  nop
                  sll          a6, a7, t4
                  slli         s1, s0, 5
496:              lui          t4, 823180
497:              sltiu        s4, a7, 1027
                  srl          t0, a6, a6
                  sltu         s6, a6, a2
                  sll          a6, a0, s1
501:              andi         a6, s4, -1519
                  ori          a0, zero, -542
503:              sltiu        tp, s0, 536
                  addi         s0, a4, -168
                  sub          t5, a1, t5
                  srai         s0, s6, 3
                  addi         s7, a3, 591
                  slti         ra, s11, -687
                  bltu         s9, a2, 520f
                  bltu         s10, gp, 516f
                  andi         s7, t1, -539
                  srai         s1, s10, 13
                  slt          a4, s3, zero
                  addi         sp, t3, -74
sub_3_5:          jal          t1, 3f
0:                jal          s9, 7f
1:                jal          t2, 9f
2:                jal          ra, 11f
3:                jal          ra, 10f
4:                jal          t1, 1b
5:                jal          s0, 4b
6:                jal          ra, 12f
7:                jal          ra, 5b
8:                jal          ra, 0b
9:                jal          ra, 6b
10:               jal          ra, 2b
11:               jal          ra, 8b
12:               sra          a3, s6, sp
                  bge          a5, s10, 523f
516:              addi         a3, t1, 195
                  srai         ra, a7, 11
                  ori          a3, s0, -621
                  sltiu        s2, a1, 1960
520:              srl          a1, t0, s9
                  addi         s3, sp, -859
                  auipc        s9, 593701
523:              sltiu        a1, sp, 1309
                  slli         s3, a4, 27
                  sltiu        gp, s6, -1904
                  add          sp, s7, s5
                  sltu         s3, a2, tp
                  sll          t2, t2, t0
                  addi         tp, t0, -1255
                  sltu         a2, t3, a6
                  addi         s1, t0, 686
                  beq          t3, s7, 540f
                  or           sp, s8, s2
                  addi         a6, s4, -1078
                  slti         t6, t2, -1858
                  slli         gp, t0, 29
                  and          a4, s7, t3
                  srai         t3, t5, 0
                  xor          s0, s0, s11
540:              andi         s7, a7, -1615
                  bne          a0, s10, 551f
                  slli         s1, t0, 2
                  sll          s3, s6, t1
                  sub          s2, s6, s2
                  srl          a6, a1, a7
                  blt          sp, a3, 565f
                  or           gp, s10, tp
                  nop
                  xori         zero, t4, -826
                  sub          sp, s11, s3
551:              blt          t1, t4, 562f
                  bltu         zero, a5, 569f
                  sub          s5, s11, s4
                  addi         s2, gp, 700
                  slt          s2, s1, s7
                  addi         a0, sp, -819
                  add          t2, t6, a5
                  sub          a6, a5, s4
                  slli         a2, s3, 17
                  and          a3, t6, s6
                  xori         s2, a4, -1802
562:              sub          t1, s5, t0
                  sll          s11, a5, gp
                  andi         s0, a2, 1784
565:              andi         s5, a5, 2035
                  sub          s4, a2, ra
                  slti         tp, s8, -892
                  andi         t4, t0, 1211
569:              auipc        s6, 316839
                  auipc        a2, 930683
                  sll          s4, zero, gp
                  sll          s8, s0, a5
                  sra          s2, s8, t2
                  sub          s4, t0, s6
                  slli         t3, s8, 7
                  bltu         s7, s7, 584f
                  sub          s3, s3, s3
                  bgeu         a4, s10, 586f
                  beq          s6, t3, 594f
                  xori         s4, s4, -1623
                  addi         s1, s1, 1493
                  slti         t3, a3, 206
                  or           t1, s0, a4
584:              nop
                  bgeu         sp, a1, 593f
586:              or           s5, s7, sp
                  sltiu        s4, t1, 760
                  bge          s3, a7, 605f
                  sltiu        s5, s5, -1719
                  beq          a3, s5, 606f
                  sll          s2, a5, a6
                  srai         s1, t4, 27
593:              or           gp, sp, t0
594:              sltu         s7, s5, a2
                  xori         t5, s5, -1872
                  andi         s6, s5, -60
                  blt          s9, a1, 614f
                  sub          a4, ra, s7
                  addi         s4, s10, 350
                  auipc        s3, 922731
                  sll          a4, zero, ra
                  bge          sp, s11, 606f
                  sltiu        a1, t2, 1101
                  sltiu        t0, t3, -1524
605:              xori         gp, a4, -971
606:              srli         a3, a5, 28
                  srli         t1, t4, 2
                  blt          s9, a0, 616f
                  blt          a0, s0, 614f
                  addi         t5, t0, -280
                  nop
                  srli         t4, t5, 17
                  lui          s8, 1025957
614:              srai         s3, t5, 24
                  sltu         a6, s10, t4
616:              slli         t5, s8, 25
                  bgeu         s2, a6, 629f
                  lui          t1, 1023576
                  srl          s1, s1, a1
                  sub          s4, s8, a4
                  sll          s8, s6, t2
                  xor          s1, a2, t6
                  srai         ra, a4, 26
                  beq          s6, s1, 635f
                  and          a4, a7, s3
                  slt          t5, t6, s2
                  sub          s0, zero, t0
                  sra          a6, s0, s7
629:              srl          s7, a1, a1
                  andi         a6, s9, -1869
                  beq          t1, sp, 641f
                  bge          a6, s6, 644f
                  auipc        s4, 471079
                  srai         t2, t6, 7
635:              auipc        t5, 952458
                  srli         t1, tp, 26
                  addi         s9, s10, -424
                  ori          s9, s5, 1258
                  add          tp, t1, t1
                  or           s11, zero, a7
641:              ori          a1, s8, 956
                  slli         t1, s9, 14
                  slli         ra, s5, 24
644:              lui          gp, 353151
                  auipc        t0, 748890
                  nop
                  sub          s4, t3, tp
                  slti         t3, ra, 439
                  add          s7, s7, t6
                  addi         ra, ra, -247
                  sltu         t5, a3, s10
                  beq          s0, a2, 659f
                  bltu         s10, ra, 671f
                  bge          s10, s8, 660f
                  sub          t6, s0, s9
                  sltiu        a3, t0, -619
                  or           s8, s3, a0
                  sra          t4, s5, s5
                  addi         s7, s6, 570
                  xori         s3, s8, 80
                  slti         a4, ra, -1313
sub_3_j6:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  srai         a2, s10, 7
                  sll          s5, a4, ra
659:              and          t3, zero, s10
660:              bltu         gp, s2, 666f
                  slti         s3, sp, -1005
                  slti         t4, tp, -418
                  sll          ra, s7, s10
                  srl          s3, s5, t3
                  srai         s3, s9, 16
666:              sltu         gp, a0, t0
                  xori         a2, s5, 632
                  and          s3, a6, a5
                  sra          gp, t6, a0
                  srai         a1, tp, 1
671:              auipc        t2, 8326
                  ori          a2, zero, 1652
                  nop
                  xori         tp, t4, -341
                  bne          s5, a5, 686f
                  or           s5, zero, t1
                  srli         t3, sp, 28
                  lui          s9, 19631
                  bgeu         s0, a5, 696f
                  add          gp, s0, s11
                  or           zero, t4, s7
                  andi         s0, a1, 107
                  and          a4, s11, s8
                  sra          a6, s3, a7
                  nop
686:              srl          t3, s1, ra
                  slt          t2, tp, s11
                  sra          t5, s8, t4
                  bgeu         a5, tp, 697f
                  srl          zero, zero, gp
                  blt          s1, a5, 693f
                  bne          a0, a6, 711f
693:              xori         sp, zero, -762
                  blt          a6, a4, 700f
                  bgeu         a6, sp, 708f
696:              xor          a3, a4, s7
697:              srai         zero, s0, 1
                  blt          t0, s0, 710f
                  srl          s6, s4, a0
700:              nop
                  beq          t2, t2, 706f
                  sll          ra, a1, s8
                  ori          a1, a3, 938
                  add          s8, gp, a4
                  srai         sp, t6, 16
706:              andi         s11, s5, 1310
                  slti         s1, t5, -630
708:              slt          ra, t2, s5
                  srai         a3, tp, 28
710:              add          gp, s7, a1
711:              srl          t1, s6, a2
                  srli         t1, zero, 2
                  slt          t1, s5, t1
                  and          tp, s2, a2
                  sra          s8, s7, t6
                  beq          a0, a0, 735f
                  slti         s3, t2, -1420
                  addi         s11, s11, 721
                  addi         a2, a4, -1845
                  sll          s5, t3, s4
                  srli         t4, s5, 23
                  auipc        s6, 777309
                  sub          a2, t2, s5
                  sll          s4, a0, a3
                  add          s8, s7, s0
                  slt          s3, t2, t2
                  add          t1, s3, s0
                  addi         a1, sp, -1857
                  or           s9, a2, s9
                  andi         t5, t5, 839
                  andi         s1, t3, 702
                  beq          s9, t1, 747f
                  srli         zero, t3, 29
                  bgeu         s9, t0, 742f
735:              bne          s0, t0, 754f
                  xor          s1, t0, a1
                  sll          t3, t6, a5
                  slli         s4, a2, 13
                  sra          t3, s8, s8
                  nop
                  auipc        sp, 992174
742:              bltu         s8, t4, 758f
                  andi         s6, t3, -1324
                  sltu         t2, s11, a7
                  andi         sp, ra, -420
                  or           t5, t4, a7
747:              slt          ra, t3, s3
                  sub          a0, s5, s0
                  slt          s1, s11, t4
                  srai         a4, sp, 26
                  srli         sp, a6, 2
                  xori         t4, gp, 633
                  beq          a7, ra, 769f
754:              slt          s8, t5, t2
                  sra          t0, s4, t0
                  slli         s5, t3, 30
                  srai         zero, t4, 21
758:              and          s8, t2, t1
                  andi         s11, t0, 1850
                  ori          s7, s11, -520
                  bge          tp, t1, 769f
                  and          s7, ra, t6
                  sub          t3, s0, t2
                  srli         s0, t6, 13
                  srli         t3, t0, 2
                  slt          s7, s11, s11
                  andi         s8, t2, -820
                  sub          s7, a3, t4
769:              add          tp, zero, a2
                  blt          s7, t3, 778f
                  slli         t1, a2, 29
                  srai         s8, tp, 4
                  bne          a6, s4, 789f
                  auipc        t6, 430037
                  ori          t3, a4, 149
                  add          a1, s6, t6
                  slt          s3, a1, t6
778:              xor          tp, a7, s5
                  xori         t1, s3, -1238
                  add          s8, t4, s2
                  xori         s0, a5, -1694
                  sltiu        a3, s6, -1282
                  sltu         s11, t6, sp
                  slt          a3, s10, sp
                  ori          s3, t3, 59
                  sra          s5, a6, a1
                  addi         gp, s7, -1656
                  srli         a6, a6, 28
789:              or           s11, zero, a0
                  slt          s4, t2, s2
                  sltu         a4, s7, a6
                  lw           t1, 4(s10)
                  srli         a6, t5, 11
                  slti         t6, t4, -837
                  srai         a0, a6, 13
                  sra          a4, t3, a3
                  xor          s11, s11, t6
                  addi         s10, s10, 28
                  sll          s1, s8, t6
                  sltu         a3, t0, t4
                  sltu         a2, a7, ra
1178:             addi x18, x6, 1
1178:             jalr x18, x18, 0
sub_1:            xor          a6, s11, sp
                  bge          s3, t2, sub_1_stack_p
                  slli         sp, a7, 22
sub_1_stack_p:    addi         s10, s10, -12
                  sw           t1, 4(s10)
                  add          gp, a4, s7
                  slt          a2, s8, a0
                  sra          s6, s4, s7
                  sub          s2, s1, a0
                  la           s7, sub_3
                  xor          s11, t6, s4
                  andi         t2, a6, -1620
                  srli         a0, a0, 7
                  addi         s7, s7, 86
                  nop
                  addi         zero, s1, -274
                  beq          s2, a1, sub_1_j4 #branch to jump instr
                  and          s9, gp, s8
sub_1_j4:         jalr         t1, s7, -85 #jump sub_1 -> sub_3
sub_1_0:          jal          t1, 5f
0:                jal          t1, 18f
1:                jal          ra, 21f
2:                jal          a6, 10f
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          s9, 22f
6:                jal          t1, 14f
7:                jal          a6, 8f
8:                jal          ra, 3b
9:                jal          s1, 23f
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               jal          t0, 20f
13:               jal          ra, 1b
14:               jal          t1, 13b
15:               jal          ra, 16f
16:               jal          s0, 19f
17:               jal          ra, 15b
18:               jal          t1, 12b
19:               jal          t5, 24f
20:               jal          a1, 7b
21:               jal          t1, 11b
22:               jal          ra, 4b
23:               jal          t1, 17b
24:               or           sp, a6, tp
sub_1_3:          jal          t1, 18f
0:                jal          tp, 21f
1:                jal          ra, 7f
2:                jal          tp, 12f
3:                jal          ra, 15f
4:                jal          ra, 11f
5:                jal          t3, 23f
6:                jal          ra, 16f
7:                jal          t2, 17f
8:                jal          ra, 2b
9:                jal          ra, 5b
10:               jal          ra, 0b
11:               jal          s9, 3b
12:               jal          ra, 4b
13:               jal          t1, 10b
14:               jal          ra, 1b
15:               jal          ra, 14b
16:               jal          ra, 20f
17:               jal          ra, 22f
18:               jal          t1, 19f
19:               jal          ra, 6b
20:               jal          ra, 13b
21:               jal          t1, 8b
22:               jal          t1, 9b
23:               slti         s4, a1, 519
sub_1_2:          jal          t1, 3f
0:                jal          t1, 11f
1:                jal          ra, 4f
2:                jal          t4, 13f
3:                jal          ra, 12f
4:                jal          ra, 14f
5:                jal          t1, 7f
6:                jal          t1, 1b
7:                jal          t1, 15f
8:                jal          ra, 2b
9:                jal          t4, 0b
10:               jal          ra, 6b
11:               jal          ra, 10b
12:               jal          t1, 8b
13:               jal          sp, 9b
14:               jal          ra, 5b
15:               andi         sp, a1, 215
                  bne          s5, a7, 14f
                  srai         a2, a4, 14
                  andi         t3, t1, 76
                  bltu         s0, t2, 18f
                  slt          s11, s2, a2
                  beq          t1, s7, 15f
                  srli         a4, t1, 7
                  slli         a6, s5, 27
                  addi         tp, a7, 1243
                  nop
                  or           a6, s10, t6
                  srl          a3, t5, gp
                  slli         t0, s3, 27
                  srli         s8, t4, 16
14:               bne          s5, t4, 26f
sub_1_1:          jal          t1, 23f
0:                jal          t1, 7f
1:                jal          t3, 16f
2:                jal          ra, 22f
3:                jal          ra, 14f
4:                jal          ra, 13f
5:                jal          ra, 28f
6:                jal          a6, 3b
7:                jal          ra, 6b
8:                jal          gp, 20f
9:                jal          sp, 17f
10:               jal          ra, 12f
11:               jal          t1, 21f
12:               jal          ra, 9b
13:               jal          ra, 19f
14:               jal          ra, 11b
15:               jal          a4, 4b
16:               jal          sp, 0b
17:               jal          gp, 2b
18:               jal          ra, 15b
19:               jal          ra, 24f
20:               jal          ra, 10b
21:               jal          t1, 27f
22:               jal          ra, 1b
23:               jal          ra, 25f
24:               jal          ra, 26f
25:               jal          sp, 18b
26:               jal          a1, 8b
27:               jal          s2, 5b
28:               andi         ra, gp, 220
15:               auipc        a4, 73325
                  slti         t6, zero, 1674
                  srai         t6, sp, 5
18:               srai         zero, a2, 17
                  bge          sp, s3, 30f
                  sll          a6, a2, s4
                  ori          t0, s8, -1581
                  bne          t5, s4, 42f
                  sub          t6, a3, s9
                  blt          a2, s11, 28f
                  blt          t1, s7, 32f
26:               slli         s4, zero, 18
                  sll          s1, sp, a4
28:               xori         t3, t1, -1557
                  blt          ra, a6, 40f
30:               srai         a1, t5, 27
                  srl          t5, zero, zero
32:               slt          s7, t0, a0
                  blt          a7, t5, 39f
                  ori          s2, t2, 1139
                  or           s11, t0, s3
                  bgeu         s3, t0, 40f
                  add          s11, tp, a6
                  xor          s0, a1, t6
39:               bltu         s1, a4, 48f
40:               sra          a2, s8, s1
                  beq          a7, s4, 46f
42:               nop
                  sra          s8, a6, t5
                  sltiu        s11, s8, -871
                  slli         s3, s0, 25
46:               srl          s3, a4, s2
                  andi         a4, t3, 451
48:               sll          zero, s1, gp
                  srai         gp, sp, 8
                  addi         t1, a1, -1485
                  xori         s2, a3, 102
                  lui          s6, 974646
                  bne          s11, s9, 71f
                  slt          a0, gp, t4
                  sra          s6, s0, t3
                  addi         s9, t0, -1167
                  slli         a6, s4, 0
                  bge          t1, a7, 65f
                  slti         a1, a2, -1460
                  blt          a0, a0, 61f
61:               srli         sp, ra, 29
                  sra          a6, a6, s9
                  blt          a6, s10, 66f
                  lui          t4, 600413
65:               slli         t6, s2, 21
66:               sra          t3, ra, s5
                  ori          a4, s8, 167
                  bgeu         t2, ra, 74f
                  slli         t3, a7, 9
                  beq          s8, a6, 77f
71:               nop
                  bne          t4, t1, 74f
                  sltiu        s8, t3, -947
74:               srai         t2, a4, 14
                  lui          ra, 680595
                  sll          a6, a0, t2
77:               nop
                  xori         s11, sp, -712
                  ori          t6, a6, 2034
                  addi         s8, t0, 970
                  srai         t6, zero, 18
                  blt          s3, t6, 91f
                  ori          a3, s11, 231
                  sll          a4, t2, gp
                  bge          s0, s10, 105f
                  sltu         sp, a4, sp
                  slti         a6, a2, -183
                  xor          t5, s6, a0
                  srai         t2, s7, 2
                  sltu         s5, tp, s2
91:               sll          a2, s8, t4
                  blt          t3, s4, 95f
                  bge          a0, a3, 99f
                  andi         a2, tp, -963
95:               bge          a5, a6, 113f
                  ori          a1, s7, 902
                  sub          t2, s4, t0
                  auipc        t0, 595433
99:               ori          s3, t6, 1092
                  srl          t4, s10, zero
                  bltu         s9, t0, 110f
                  xor          t3, s10, s10
                  sll          a1, a0, t3
                  sub          sp, a3, t4
105:              bgeu         s6, s10, 110f
                  srl          s6, s0, t6
                  add          t0, a3, t1
                  bltu         a2, a5, 121f
                  or           s9, a5, t2
110:              andi         s7, t2, 528
                  xor          s3, s3, zero
                  nop
113:              sub          a0, a7, s3
                  blt          s7, a3, 127f
                  xori         s1, s0, 1083
                  sltu         s4, s8, s8
                  add          s4, s11, s4
                  xori         t6, s4, 27
                  beq          s0, a6, 122f
                  srl          sp, s6, s8
121:              or           ra, a0, t3
122:              bne          a6, s10, 123f
123:              sltiu        t5, s6, 1659
                  slli         s7, s8, 19
                  bltu         s8, sp, 128f
                  bltu         a5, a4, 135f
127:              beq          t2, s4, 138f
128:              ori          a3, s2, 907
                  srli         gp, s4, 25
                  srl          s2, a1, sp
                  bltu         t4, s2, 143f
                  lui          zero, 405761
                  beq          a7, s5, 136f
                  sra          a1, gp, s0
135:              xor          t5, s5, tp
136:              xori         t6, s9, 1728
                  sltiu        a1, s0, -889
138:              blt          a2, s1, 145f
                  bltu         s5, a5, 144f
                  lui          t5, 511114
                  bge          s0, s2, 147f
                  srli         s8, t0, 4
143:              auipc        a1, 835879
144:              srai         s9, zero, 23
145:              slt          s11, gp, zero
                  ori          s9, a0, 1011
147:              auipc        t5, 305348
                  and          s7, gp, gp
                  sra          zero, a5, gp
                  sra          t5, a0, tp
                  bne          s5, gp, 162f
                  beq          s0, t5, 165f
                  slti         sp, s4, -268
                  slti         a3, t3, -777
                  slli         a3, s5, 23
                  xor          gp, zero, a4
                  sub          s1, s3, a2
                  sll          a3, t0, t4
                  or           t5, s10, t1
                  bltu         s0, s3, 169f
                  slli         tp, s4, 2
162:              add          t2, s1, gp
                  nop
                  xor          zero, s6, t4
165:              bgeu         t0, t3, 169f
                  sltu         a1, s6, t1
                  xor          gp, t0, s6
                  bge          a5, tp, 174f
169:              auipc        a6, 718900
                  slti         s8, s5, 493
                  nop
                  bge          a7, s1, 176f
                  xori         t3, s0, 1879
174:              srl          t3, a4, s3
                  sub          s9, t0, s10
176:              sltu         t6, a5, a5
                  blt          t3, t2, 195f
                  sltiu        gp, t4, 616
                  srai         tp, zero, 13
                  sub          t5, a5, a2
                  nop
                  bltu         a3, a1, 200f
                  and          t1, s7, s0
                  beq          gp, s10, 197f
                  blt          s3, s8, 200f
                  srl          s2, gp, t6
                  sltu         s4, gp, a7
                  auipc        t0, 559089
                  sltu         tp, a6, s7
                  add          zero, s2, t3
                  srai         a4, sp, 8
                  srli         s0, tp, 22
                  andi         a0, gp, 210
                  xori         s7, s9, 1561
195:              slli         s11, s3, 28
                  sltiu        s1, a5, -940
197:              srai         s7, ra, 17
                  srl          s2, a4, t1
                  sltiu        ra, t6, 261
200:              bltu         t3, sp, 206f
                  slli         gp, a4, 13
                  sub          ra, sp, s5
                  beq          a0, t1, 210f
                  add          t3, s7, s0
                  sra          sp, s2, t1
206:              srli         t4, t1, 27
                  blt          a4, a5, 221f
                  addi         s5, s1, 52
                  or           s5, s1, a4
210:              sub          s7, s8, gp
                  sll          s0, a7, a0
                  srai         s6, t4, 5
                  srl          t3, s2, gp
                  ori          s7, t2, 803
                  add          t4, a2, t3
                  add          s6, t1, t1
                  bltu         t2, s7, 237f
                  nop
                  add          s11, s7, a4
                  srli         zero, t2, 2
221:              add          s8, a2, t3
                  sub          a6, s9, a4
                  srai         s2, s6, 11
                  bltu         a1, t0, 226f
                  ori          a6, s10, 712
226:              sub          s1, s2, t0
                  beq          sp, a7, 237f
                  srai         t5, a1, 28
                  and          t0, tp, a5
                  slt          s7, t6, s0
                  blt          s3, t0, 236f
                  auipc        a4, 500116
                  slli         a3, s1, 8
                  sra          a6, gp, a0
                  lui          ra, 299257
236:              sltiu        s0, s5, -404
237:              ori          sp, t6, 1451
                  srli         s2, s0, 13
                  addi         t1, s1, -2019
                  or           s6, s7, s8
                  sltu         s3, s11, s9
                  sltu         zero, s4, s0
                  sub          a6, a7, s4
                  lw           t1, 4(s10)
                  ori          zero, t5, -1678
                  srai         zero, tp, 26
                  addi         s10, s10, 12
                  srai         s3, t5, 5
366:              addi x21, x6, 1
366:              jalr x21, x21, 0
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
.word 0x65d09a8c, 0xddf5837c, 0xaea56d67, 0x6eb0b423, 0xbd7e720e, 0xc2f69695, 0x4e2f58b3, 0x865d0ed1
.word 0xf232c9b5, 0x4f65c77f, 0xc568447d, 0x755fc56f, 0xa2147c50, 0xf70e7e92, 0xa486e233, 0xcce95a45
.word 0x48f900b5, 0x1c2505a5, 0xf3576059, 0xb3ef4c0d, 0x10ee5481, 0x936569df, 0x0cad154d, 0xe83efaa8
.word 0x6a1913c9, 0x03365f67, 0xf3664010, 0x991fadaa, 0x5a1f9f0d, 0x288d0576, 0x12076f65, 0xbc3b371f
.word 0x12c61bce, 0xfcdcc22d, 0xc6ed3f74, 0xfe03f7d4, 0x5a22f527, 0xd5b6e31e, 0xe3fda189, 0x55d671ac
.word 0x42255dff, 0x851539ff, 0x61148f07, 0x301480e6, 0xff1baa04, 0xfde2ba93, 0xc42772b1, 0xcf46709c
.word 0x55891f39, 0xc0707ea6, 0xf8836b51, 0xa9cb7589, 0xa1adb227, 0x9d2d76ba, 0x304aa9ae, 0xff05bf2f
.word 0x3a6d7c8b, 0x595de226, 0x48954df0, 0x42eb1afe, 0x7a638ef7, 0xdb1d2cce, 0x79ecd22e, 0x0b732de4
.word 0x087d8eab, 0x06a6a3cc, 0xde23bd5f, 0x34b40570, 0xe6739905, 0x0b0071a5, 0xe7e9d9c7, 0x4b74fded
.word 0x29216d51, 0x9f6788fb, 0xa8f80f01, 0x12ac9c72, 0x267751d8, 0xfe5c03b6, 0x6dd1dd15, 0x730d69df
.word 0x90fb33ee, 0xec94b142, 0x9df8eda2, 0x4a5065c0, 0xc87a4853, 0xfd38308e, 0xa88181d9, 0x13b87950
.word 0x869256e4, 0x60de857f, 0xbf6fa4c8, 0xfd694c4b, 0xe6e7dc0e, 0x4ef6f840, 0x1e76eb76, 0xba5461d1
.word 0xd1e8669b, 0xcd3a2930, 0x7b458693, 0xd786ff80, 0xe4db4e26, 0x1445e2d6, 0x425e4974, 0x02ca55e7
.word 0xcfa516d0, 0x7c2ef67b, 0x60bf2768, 0x5171b2a3, 0xa0076bda, 0x3320ce66, 0xd4081f57, 0x974cdc8c
.word 0x7f65156f, 0xc30be1b4, 0x6e65c65d, 0xb4e50166, 0xa34968b6, 0x00b09b24, 0xa4d48b9b, 0x6ccdd505
.word 0xabb74dd7, 0xecdc6460, 0xcb4ef76d, 0xf0adc654, 0x57072207, 0xd130d72b, 0x5491be40, 0x87e7b4ca
.word 0xf4dc883a, 0xaf327f93, 0x239d7d44, 0xd63c24f5, 0xd851a6b5, 0x4f52c250, 0x1169be04, 0x93fa29d7
.word 0x1d583889, 0x6dbafa98, 0xc94a17ca, 0xf9ee1bbd, 0x02694670, 0x6e066489, 0xa0141cb8, 0xf28d5ee2
.word 0x7188e874, 0x37342fde, 0x9809ea53, 0x99529820, 0x1fd74697, 0x6d33101c, 0xc27e79ea, 0xf3f151f4
.word 0x5afe18dc, 0x96b2b38c, 0x97e5083c, 0xb6120169, 0xee348b8d, 0x81082faf, 0xdb59dbb4, 0xff7ad629
.word 0x10aad819, 0xe5cb2498, 0x32bc99fe, 0x4c6d0f1f, 0x123c5aa1, 0x37ea4edb, 0x1355cb36, 0x6f617823
.word 0x40b7528e, 0x84c1b990, 0xcbc3ad74, 0x5854488f, 0xa7bb8aac, 0xcdf5dd11, 0x376c081a, 0x49899d35
.word 0x5ee0dcae, 0xa54412e2, 0x4dea08bc, 0xcae23295, 0x3ce65c81, 0xd0fbbd0a, 0x8021f451, 0x0b4ff32d
.word 0x3b38fa50, 0xef58b611, 0x7c33e366, 0xb81f9c61, 0x35c96839, 0x2b57f8aa, 0x590e2ef0, 0x436fdf08
.word 0x696baa8c, 0xd5f9f990, 0xa5eb0227, 0xb0a4a3b4, 0x6bcfe37f, 0x8c5c3f1c, 0xc994fee8, 0x8e1fcc5d
.word 0x6e791fb2, 0x8cc7c6a6, 0xb63a7a5f, 0x23770ab8, 0x98164ff4, 0xa3c550f6, 0xd9cbff55, 0x143d588b
.word 0xfb396a77, 0x70578d3e, 0x3e1d3b9c, 0xe82c1ea0, 0x0dfec1ae, 0x09fb40c7, 0x7664c466, 0xb10020d6
.word 0xff81865d, 0xa0583601, 0xcbcb6a6b, 0x98f30c8e, 0x3928bfca, 0xe67d3aca, 0x07cad23b, 0x86f11b88
.word 0x4484f832, 0x7c7cac7d, 0x7e2ee059, 0xc613b7f4, 0x012e1c48, 0xd9f68be0, 0x92c21e6c, 0x1ab70c1f
.word 0x9341a29b, 0xf34856ed, 0x53a51086, 0x54b83a3c, 0x8db03424, 0x8dd8f789, 0x7ddf317f, 0xa0075ce8
.word 0x1be51e0d, 0x445f86b0, 0x73c09dbc, 0xe77640da, 0x196cbd03, 0x55c39e12, 0x84ab1003, 0xfbee7e2c
.word 0x75f4cd87, 0x917fa1d2, 0xa2714e92, 0x4d0cd6ab, 0x649ff55f, 0x0038b946, 0x60707f46, 0xcf17e45c
.word 0xbc0e61d1, 0xe49e79dd, 0x59e9223a, 0x27c1f916, 0xdcb227a9, 0xc5921154, 0x3ed20c7a, 0x8c07534a
.word 0x7254a4fe, 0x3ee9ecff, 0xd3822a46, 0xdac27f59, 0xa172d6ca, 0x57a168ff, 0xcc4111bb, 0x4b625e60
.word 0x26534c26, 0xf7894606, 0x61a87090, 0xe5f511f3, 0x6e4d36b3, 0x26ed398d, 0x9ffac119, 0x60a03a94
.word 0x97c3bb19, 0xbbb3064c, 0x08979144, 0xd55e31f2, 0xfcc515b0, 0x7c1779bb, 0xdbd570b5, 0xf8570ae1
.word 0xf5c8b77d, 0xd9c38e27, 0x455fa7a8, 0x361f2684, 0x3fbf720f, 0x249c62cc, 0x1db78851, 0xe496f264
.word 0x56d04463, 0xc07576fb, 0xe3198d16, 0x7d1d52c3, 0x24cc8c9e, 0x9fe5c045, 0x35f22cc2, 0x4400121d
.word 0x847afe78, 0x887d3a16, 0xb31cb796, 0xb5a56d21, 0xb952963d, 0x29777181, 0x80292bad, 0x556ad3b7
.word 0x0506c94e, 0x0a43b3a2, 0xeeac0597, 0xb6ec898a, 0x2c9c85d4, 0x6eb8606a, 0xd7b3ce0f, 0xe4bb3e6c
.word 0x9aff45fc, 0xc6443897, 0x98024e1d, 0x6417cd14, 0x9db2f054, 0x80e8dfc0, 0xb0aecf0d, 0xafc23bdd
.word 0xcaf31c66, 0xa3f62607, 0x5317b392, 0x749d23fc, 0x6e377c6d, 0xc38e3b80, 0x11cf90ee, 0xbea581bb
.word 0x52eccb25, 0x56e0e078, 0x9b2153f9, 0x1bfaeb64, 0x7dfe2ada, 0x83a45627, 0x37067edd, 0x7b2d6e0b
.word 0x3cf54ab2, 0xef805f55, 0x0913e186, 0x70baf6d8, 0x516a7824, 0x0413f20c, 0xdda55585, 0xf086cd34
.word 0x48808615, 0xd73ed08f, 0xac3cf3ee, 0x1602d0b5, 0x4e4a61f2, 0xdabc7a65, 0xafcde4c1, 0x76706889
.word 0x1cb4ba9c, 0x7bb3adc2, 0x5c0dfd1e, 0x35b08070, 0x811534b8, 0x8965e729, 0xd0372c7c, 0xc16ef12e
.word 0x4a2c20e8, 0xb25b1937, 0x5b5e1ca2, 0x99c30f6b, 0xaaa30c89, 0xac7c02d0, 0x3bfac153, 0x3d0be01a
.word 0xa9b67917, 0xe6865418, 0xc4627ed8, 0x256a892f, 0xd1ac6619, 0xa39a3808, 0x9051ec21, 0x6fab8cf9
.word 0x29df8c18, 0x37dd8c7e, 0xacf58dd8, 0xd4dd1422, 0x8e1fc007, 0x4fc26e6f, 0x686adf4d, 0x5803dbdb
.word 0xe81b53f3, 0xc73c93bd, 0xbd9f77f8, 0x2c0ad68e, 0xb6190c01, 0x465b226c, 0x897e8083, 0x5bc7b710
.word 0x3fe79777, 0x3af69919, 0xbe2616f3, 0xd4b56527, 0xf1615adc, 0xb64c8fde, 0x13eddfab, 0xb99608f4
.word 0xdbce0d0b, 0x57289990, 0x0a131b28, 0x7a5d4129, 0x00eaf571, 0x72d271ff, 0x6f7903fb, 0x1b0816cd
.word 0x1931cffa, 0xd3aa59ff, 0x953b678b, 0x0e712e33, 0x15ab8b7a, 0x74a8f100, 0x20845295, 0x28439b77
.word 0x774c4030, 0x663ce4f8, 0xe182eb0f, 0x39d2ce70, 0xa4e047a2, 0x2cf1b234, 0x7f02b99d, 0x5b691304
.word 0xdb5d08b1, 0x782e9531, 0x9f06f400, 0x402c0362, 0x31875b8e, 0x3178ec84, 0x7850f8a8, 0x6a7f342b
.word 0x95ff06ce, 0x453ea227, 0x2a210827, 0x4d5c7945, 0xe0bf5b07, 0xbd8a9986, 0xc9cd2119, 0x3a17eed5
.word 0xe5e69c4f, 0x426f13f9, 0x22d25510, 0xa2b6a88b, 0xb2e084f7, 0x7d4cd582, 0x73b103fb, 0xe063741a
.word 0x5bf598ab, 0x40f2ea9d, 0x323326ea, 0x4d4c91fe, 0x97256061, 0x44b2b21c, 0xe8caa774, 0xcabc74a1
.word 0xeba42829, 0x750579a6, 0xbd2d46c7, 0xfffe1b99, 0x448ca22f, 0x30110314, 0x84dbce40, 0x6218f216
.word 0x5ab6c391, 0x4aaec5e2, 0x7bc47e03, 0xa0fd8c01, 0x9157c105, 0x07e7b793, 0xdb8bb685, 0x154cb96f
.word 0xa22c5a19, 0xa6caa593, 0xf3a088a7, 0xd983abb8, 0x3362a539, 0x3b44ae59, 0x70dc35b0, 0xe33514f3
.word 0x57b72705, 0xfa520bee, 0x06ffb054, 0xa84bc5f0, 0xb1c62a9c, 0xb4d8bdb1, 0x9b2b03c9, 0x12fc86e9
.word 0x801fd7d8, 0xd4dc7c69, 0x90256fc7, 0x47d59617
.section .region_1,"aw",@progbits;
region_1:
.word 0x03449bea, 0x8e60977d, 0xe2627807, 0xe1cb93c9, 0xccef03da, 0xbc8d4cc5, 0xfd191281, 0xe18455a2
.word 0x41347739, 0xe295b0d4, 0x61792c6a, 0x355347a1, 0x6b8e37c9, 0x0984ef68, 0xa2ce3a34, 0x50c8955f
.word 0x1176bd5e, 0x06bb76a5, 0xeaad1d42, 0xe3cbfabc, 0x74592bae, 0x8c61a0ed, 0x16e84ef7, 0x19bf630d
.word 0x1b088692, 0x2c873992, 0x9b086cb5, 0x233fd84a, 0xe3dadcf1, 0xa0392e0b, 0xcad4654d, 0x5b3c0de2
.word 0xd4fdc382, 0x95c5405f, 0x535f3593, 0x52ea996b, 0xbb785ca0, 0x094aa611, 0xc7395b20, 0x5b801578
.word 0x106fb3ee, 0x292406b8, 0xa76c271f, 0xc4fbfb24, 0x100a412e, 0x7af3167c, 0x68747aa0, 0xb4d30833
.word 0x0256c9b6, 0x1e42651a, 0x1e785e9a, 0x186158de, 0x45fa51ce, 0x0c51e564, 0x05154a78, 0x3d47d456
.word 0x6d7f5664, 0x281a9abe, 0x4b00b193, 0xf5439b66, 0x872ae9a4, 0xdded61da, 0xf6b896d0, 0x80a9756e
.word 0xab5e264e, 0x8509874b, 0x4bebb933, 0x438b4dc5, 0x402480da, 0x844b36cc, 0xe5c068ba, 0xa33743ce
.word 0xaef3562f, 0xfc565dbb, 0xba8d5097, 0x5e147524, 0x8840b794, 0x91e02327, 0x84330bef, 0x270bb64f
.word 0xf94bd8ed, 0xc883d40b, 0xc1590b48, 0x3731523d, 0x09706d53, 0xad904f0b, 0xe9e3b7e6, 0xab9875d7
.word 0x3e477dbd, 0x55c96dc8, 0xef8d0467, 0x8418ccb2, 0x6d06add3, 0x1242934b, 0x85ab1a71, 0x5dbc7379
.word 0x120efdf2, 0xa91c0aa1, 0x36353f16, 0xf2d95a93, 0x2d841ad7, 0xe0e4c8f0, 0xf8a2a533, 0x41a28069
.word 0xdb612b4d, 0xbd0dfa8e, 0xa801b6e4, 0x29c61d45, 0x2adb76f3, 0x555dca88, 0x54c207cd, 0xe479427d
.word 0xfa0b759e, 0xf0f83139, 0xb56d446c, 0x9d6fe9ce, 0x70a9315b, 0x282faf30, 0x0701fc16, 0x6c06d4bb
.word 0x0677f8e0, 0x47a36b20, 0x1e994227, 0x21109ad0, 0x93caa501, 0x5abdcab7, 0x1e586b97, 0xe548d210
.word 0x739db3f2, 0x09bcff00, 0x34265424, 0x7763beff, 0xdba8d01e, 0xcef7a10d, 0xe53b9d4d, 0x53c6edb4
.word 0x6f9aa889, 0xdb5a06f8, 0xffc27928, 0xaa46d34c, 0x8f9ba9c6, 0xd493be94, 0x9928d118, 0x80e1bd0d
.word 0x8d2567a6, 0xb92cb666, 0x5a1955d4, 0x04b2f72a, 0x38a0801e, 0xb4ef8007, 0xfb07d271, 0xcce9ac92
.word 0x29d2846c, 0x39a13839, 0x294dd164, 0xf0283b68, 0x0fb267ff, 0x08639a3c, 0x252dce7e, 0xf6bd71c1
.word 0x7c14fcdb, 0x03c520ff, 0x0c5736eb, 0x42308558, 0x04a7a291, 0x6f0f1c5b, 0xafde2518, 0x2a39875c
.word 0x5d8f060f, 0xe53a0428, 0xd689db8a, 0x2cfff3f2, 0xe03b4d33, 0x68db2a0f, 0xdda5130f, 0xcafab4de
.word 0xdd67c8de, 0xab54a835, 0x38230324, 0xcff52673, 0xf3e3a0ed, 0xb3f85f1f, 0xf3e2d4b7, 0x3230c9c1
.word 0x3f5be959, 0x8554d45f, 0xc775e189, 0x558840c7, 0x6c2a9c46, 0x2179e526, 0x9c5e938b, 0x2fac6b79
.word 0x1ae3c5d0, 0xfa078943, 0xb45c9b24, 0x357963dc, 0x2a2e0e26, 0x20e4adfb, 0x1df50b06, 0xae9f60ff
.word 0xb793f283, 0x129bdee4, 0x2bb4a604, 0x6aae1faa, 0x0501f516, 0xe3f75394, 0x22632d21, 0xcac2b676
.word 0x0345e770, 0x2dcf7c72, 0x62559438, 0x51597661, 0xea87277f, 0xe7ff3b74, 0x2acb4900, 0xe72f4f73
.word 0x0682cd53, 0x811a162e, 0x0f08c5db, 0x3767ae02, 0xefe2a6c4, 0x3214fbc4, 0x9d060b22, 0x7b52694d
.word 0xb087cd10, 0xc555c76e, 0xaefbfcaf, 0x61bc2294, 0x456be8be, 0x77124ac9, 0x6a5187a6, 0x14e7c937
.word 0xab4b60a7, 0x9433541b, 0x7fae3b15, 0xa4903188, 0x4ec5b00d, 0x201311ac, 0xaeaa915b, 0x5191ba5c
.word 0xe2bdec6f, 0xa7d6452b, 0x781825a1, 0x3861a4cd, 0xed1871ec, 0x1d57cab4, 0x02984984, 0xb1220577
.word 0x9ecd887c, 0x735fb00c, 0x4e3a0868, 0xb0026a32, 0x4ee43594, 0xccdc46e2, 0x2f50d436, 0x8b326669
.word 0x6208073b, 0xef9e0bd2, 0xc8c89665, 0xf9f0ff23, 0x80ca92a7, 0x8e45fe0c, 0x49c942c2, 0x1fc229c1
.word 0xfd31ed14, 0xeb466d27, 0x220ac436, 0x2c0b5af8, 0x6cd0664a, 0x22196656, 0x3b5c828a, 0x75ca822f
.word 0xdb9c9ac4, 0x0728b21e, 0xdc55a75c, 0xd6faba67, 0xf84ab403, 0x60a32d8d, 0x1735be7a, 0xdd7d7e5a
.word 0xd775f117, 0xf2134df4, 0x4e7cd406, 0x6dff845c, 0xedce114b, 0xad431ee3, 0xc4fdd539, 0xa29f6f79
.word 0x9a40aa7d, 0x2f2518e2, 0x5d7b68c7, 0x71de968c, 0x30c5102e, 0x2d659da3, 0xf89561fd, 0x4dca277f
.word 0x67c79bcb, 0x889f3399, 0xdf2cfd24, 0x9d8b98d0, 0x33e94404, 0x49da25b2, 0xa39d98f5, 0xfdee217a
.word 0x31f84bb8, 0x9198ea54, 0xdd44d8ad, 0x413fd8d0, 0x36ad9346, 0x5c6cc0ff, 0x2a6bae43, 0xcec27ffb
.word 0xc91c067b, 0x736078d3, 0xe215d977, 0xbcab1f7e, 0xa6a1f0ad, 0xa6eaab66, 0x7eaa8dcc, 0x1af4b32e
.word 0xfa771043, 0xd11bee2c, 0x4fbc9b3c, 0x2d7fe42f, 0x5dbe8184, 0xb47f8e74, 0x2daeebba, 0x44802743
.word 0xc042157b, 0x99b53be4, 0x1a772710, 0x49a14a78, 0xe559b315, 0x18e69519, 0x18abf4b1, 0x4ecf38ff
.word 0x90e762ad, 0x69dec867, 0x68c9ae2f, 0x1296ee23, 0x429c6db5, 0xeda33bad, 0xaf04a4d6, 0x97e86650
.word 0x86a97435, 0x0d8356fd, 0xd5c90e39, 0x1397e886, 0xe2ab17b5, 0xdf43001e, 0xf37d0890, 0xef3d983c
.word 0xc1a50ec7, 0x1b906d9c, 0xc305515d, 0xa8645d6f, 0xa353bf9d, 0xee84bb95, 0x42da5d15, 0x78fc4223
.word 0xd9333c1d, 0x9ea025d2, 0x15444793, 0x9ff26a8e, 0xbb876063, 0xd92dacb3, 0xda407de5, 0xa225776a
.word 0xb3247392, 0x815a1c63, 0x8d2e8a0d, 0xc818d436, 0xf6ac163b, 0x47062f49, 0xe3e88fb4, 0x326578f0
.word 0x064663a3, 0x4a3f6c89, 0xf85a6301, 0xda6daef2, 0xf26b9ec1, 0xdbaf1b4d, 0x30ec58b3, 0x322aed96
.word 0x9df39f31, 0x83c49ba3, 0xadf72302, 0xb3cbce3b, 0xcdf266c0, 0xcf9db42a, 0xaf0fc24b, 0xbd5033b9
.word 0x8a852a50, 0xf7a82f77, 0xab3c000d, 0xcc39bdb6, 0xe345e5e6, 0x7f08522b, 0x461367c0, 0xdc25b6b7
.word 0x1c2a9054, 0xec6c8c51, 0x2a28e20b, 0xa9376250, 0x12d74a03, 0xcbb73989, 0xe2005267, 0xa16603fd
.word 0x21031d74, 0x5f88d904, 0xf58fb4fa, 0x4d416c13, 0x4768147f, 0xc763257d, 0xa3cef913, 0x836cbc76
.word 0x6e67c3dd, 0x88a2aa92, 0x32069449, 0xb9fdc5df, 0xd3fe39c7, 0x2398e991, 0x5cbd5b24, 0xe2df43e7
.word 0x23d702c7, 0x76675ea0, 0x63072ad5, 0xb8edbf6e, 0xe1a39222, 0xa51529fe, 0x7d781fc2, 0x461a564b
.word 0x757e608a, 0xdc908ba2, 0xa146aa51, 0xa0d00c18, 0x35917ff0, 0xdf9c1168, 0x57df4f87, 0x208e1239
.word 0xd029913f, 0xe349c9d8, 0x24d0f6e1, 0xb7c14700, 0x5568ce67, 0x8943f405, 0x6ce282ef, 0x7fb290af
.word 0x5707ea97, 0xec8fc1bd, 0xe02e639c, 0xf84e841e, 0xa074f04e, 0x6751df89, 0x95acdf0e, 0x1ac1c055
.word 0x6d040406, 0x2b926a37, 0x88ac185a, 0xc35e8adc, 0xd21f5ff8, 0xbcb3510f, 0xdccae791, 0xc2a57402
.word 0x754c73a4, 0x898196d5, 0x8e51e314, 0x32bd6d6a, 0xb492da57, 0xf4c470fa, 0x0d0cad75, 0x1b847b67
.word 0xf27fcab5, 0x550483ce, 0x413db5bb, 0x7c0ef8ae, 0xa0ed25f6, 0x6d0bf9bf, 0xa99b08b2, 0x252f6eae
.word 0xb99829cc, 0xfe7b0209, 0x4bc1eed0, 0x2d223673, 0x203a8876, 0x7aef51d9, 0x69f12db9, 0x618eb65d
.word 0x996a11f6, 0x1657158c, 0x96c94fa4, 0xf1950c72, 0x6bca5321, 0xca74e0ab, 0x247addd2, 0x78d06a24
.word 0x46e15409, 0x4bd9ef30, 0x141ebfa4, 0x4379e678
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x17, x26, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x7, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x7, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x7, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x7, x19, ecall_handler
                  li x19, 0x1
                  beq x7, x19, instr_fault_handler
                  li x19, 0x5
                  beq x7, x19, load_fault_handler
                  li x19, 0x7
                  beq x7, x19, store_fault_handler
                  li x19, 0xc
                  beq x7, x19, pt_fault_handler
                  li x19, 0xd
                  beq x7, x19, pt_fault_handler
                  li x19, 0xf
                  beq x7, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

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
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x26, x17, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x17, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x17, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x26, x17, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x26, x17, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x26, x17, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
